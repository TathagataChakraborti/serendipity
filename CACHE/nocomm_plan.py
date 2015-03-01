#!/usr/bin/python
from gurobipy import *
import math, sys, os, copy
import readFiles, globalVAR
import time

current_plan = []
agents       = ['COMMX', 'ROBOT']

def print_actions():
    
    for a in agents:
        print "\n*** ACTION DESCRIPTIONS for ", a, " ***"
        for action in globalVAR.listOfActions[a]:
            print "\nAction Name: " + action[0]
            print "preconditions: " + str(action[1])
            print "add effects: " + str(action[2])
            print "delete effects: " + str(action[3])
            print "cost: " + str(action[4]) + '\n'

def print_predicates():
    print "*** DOMAIN PREDICATES ***\n"
    for predicate in globalVAR.listOfPredicates['SUPER']:
        print predicate

    for a in agents:
        print
        print "*** GOAL STATE for ", a, " ***\n"
        print globalVAR.goalState[a]
        print
        print "*** INITIAL STATE for ", a, " ***\n"
        print globalVAR.initState[a]
        print


def print_plan(m, T):

    solnList = m.getVars()
    print "\n*** FINAL PLAN  ***"
    cost = 0
    for t in range(1,T):
        print
        for v in solnList:
            for a in agents:
                actList = [aa[0] for aa in globalVAR.listOfActions[a]]
                actName = v.VarName.split('_'+str(t))[0]
                if v.X > 0.5 and v.VarName.split('_'+str(t))[0] in actList and v.VarName.split('_')[-1] == str(t) and a in actName:
                    print('%g - %s' % (t, actName))
                    if 'NOOP' not in v.VarName:
                        cost += 1

    return cost


def objective_function(act, var, T):
    expr = quicksum(quicksum(quicksum(aa[4]*act[aa[0],a,t] for aa in globalVAR.listOfActions[a]) for a in agents) for t in range(1,T))
    return expr


def run_ip(T):

    #print_actions()
    #print_predicates()

    start = time.time()
    print 'Building model...'
    # Model #
    m = Model("nocomm")
    
    # Optimization criterion  #
    m.modelSense = GRB.MINIMIZE

    print 'Adding variables...'
    # define variables - y_a_t  #
    var = {}
    for vv in globalVAR.listOfPredicates['SUPER']:
        for t in range(T):
            var[vv,t] = m.addVar(vtype=GRB.BINARY, name=str(vv) + '_%s' % (str(t)))

    # define variables - x_a_t  #
    act = {}  
    for action in globalVAR.listOfActions['SUPER']:
        for t in range(1,T):
            act[action[0], a, t] = m.addVar(vtype=GRB.BINARY, name=str(action[0]) + '_%s' % (str(t)))

    stops = {}
    stops['begin'] = m.addVar(vtype=GRB.INTEGER, lb=1, ub=T, name='begin')
    stops['end']   = m.addVar(vtype=GRB.INTEGER, lb=1, ub=T, name='end')
    
    # Update model with variables #
    m.update()
    
    print 'Adding constraints...'
    # define constraints - initial state #
    for a in agents:
        for vv in globalVAR.listOfPredicates['SUPER']:
            if vv in globalVAR.listOfPredicates[a]:
                m.addConstr(var[vv, 0] == globalVAR.initState[a][globalVAR.listOfPredicates[a].index(vv)])
                #print var[vv, 0] == globalVAR.initState[a][globalVAR.listOfPredicates[a].index(vv)]
                #need to check for consistency - for now assumed consistent

    # define constraints - goal state #
    for a in agents:
        for vv in globalVAR.listOfPredicates['SUPER']:
            if vv in globalVAR.listOfPredicates[a]:
                if globalVAR.goalState[a][globalVAR.listOfPredicates[a].index(vv)] != -1:
                    m.addConstr(var[vv,T-1] == globalVAR.goalState[a][globalVAR.listOfPredicates[a].index(vv)])
                    #print var[vv,T-1] == globalVAR.goalState[a][globalVAR.listOfPredicates[a].index(vv)]
                    #need to check for consistency - for now assumed consistent

    # define constraints - preconditions #
    for a in agents:
        for t in range(1,T):
            for action in globalVAR.listOfActions[a]:
                for precondition in action[1]:
                    m.addConstr(act[action[0], a, t] <= var[precondition,t-1])                    

    # define constraints - add effects #
    for t in range(1,T):
        for vv in globalVAR.listOfPredicates['SUPER']:
            for a in agents:
                if vv in globalVAR.listOfPredicates[a]:
                    tempList1 = []
                    tempList2 = []
                    for action in globalVAR.listOfActions[a]:
                        if vv in action[2]:
                            tempList1.append(action[0])
                        if vv in action[3]:
                            tempList2.append(action[0])
                    #m.addConstr(var[vv,t] == quicksum(act[aa,a,t] for aa in tempList1) + (1-quicksum(act[aa,a,t] for aa in tempList1)-quicksum(act[aa,a,t] for aa in tempList2))*var[vv,t-1])
                    m.addConstr(var[vv,t] <= quicksum(act[aa,a,t] for aa in tempList1) + (1-quicksum(act[aa,a,t] for aa in tempList1))*var[vv,t-1])
                    m.addConstr(var[vv,t] <= 1-quicksum(act[aa,a,t] for aa in tempList2))

    # define constraints - no concurrency #
    for a in agents:
        for t in range(1,T):
            m.addConstr(quicksum(act[aa[0],a,t] for aa in globalVAR.listOfActions[a]) == 1)

    # set optimization objective function #
    m.setObjective(objective_function(act, var, T))

    # optimize #
    print "Optimizing..."
    m.params.OutputFlag = 0
    m.optimize()
    end = time.time()
    
    # print solution #
    status = m.status
    if status == GRB.OPTIMAL:
        ret = print_plan(m, T)
        print 'Time: ', (end-start), 'Cost: ', ret
        print('Obj: %g' % m.ObjVal)
    else:
        print 'Optimization was stopped with status %d' %status
    

def generate_indv_plan(domainFile, problemFile):
    global current_plan
    print "Generating individual human plan..."
    cmd = '~/Desktop/FAST-DOWNWARD/src/translate/translate.py ' + str(domainFile) + ' ' + str(problemFile) + '> stdout.txt'
    os.system(cmd) 
    cmd = '~/Desktop/FAST-DOWNWARD/src/preprocess/preprocess < output.sas > stdout.txt'
    os.system(cmd) 
    cmd = '~/Desktop/FAST-DOWNWARD/src/fast-downward.py output --search "astar(lmcut())" > stdout.txt'
    os.system(cmd) 
    planFile = 'sas_plan'
    instream = open(planFile, 'r')
    while True:
        line = instream.readline().strip()
        if 'cost' in line:
            break
        current_plan.append(line[line.find('(')+1:line.find(')')].strip().replace(' ','_').upper())
    
    for action in current_plan:
        print action


if __name__ == '__main__':

    domainFile = 'DOMAINS/commx/domain_o.pddl'
    problemFile = 'DOMAINS/commx/problem.pddl'
    #generate_indv_plan(domainFile, problemFile)

    print '\nReading domain and problem files...'
    discount = 1.0
    domainFile = 'DOMAINS/commx/domain.pddl'
    problemFile = 'DOMAINS/commx/problem.pddl'
    readFiles.read_input(domainFile, problemFile, 'COMMX', discount) 
    
    discount = 1.0
    domainFile = 'DOMAINS/robot/domain.pddl'
    problemFile = 'DOMAINS/robot/problem.pddl'
    readFiles.read_input(domainFile, problemFile, 'ROBOT', discount) 

    discount = 1.0
    domainFile = 'DOMAINS/superagent/domain.pddl'
    problemFile = 'DOMAINS/superagent/problem.pddl'
    readFiles.read_input(domainFile, problemFile, 'SUPER', discount) 
    #globalVAR.listOfPredicates['SUPER'] = list(set(globalVAR.listOfPredicates['ROBOT']) | set(globalVAR.listOfPredicates['COMMX']))
    
    # run IP #
    T = 18
    run_ip(T)


