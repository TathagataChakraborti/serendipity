#!/usr/bin/python
from gurobipy import *
import math, sys, os, copy
import readFiles, globalVAR
import time

def print_actions():
    print "\n*** ACTION DESCRIPTIONS ***"
    for action in globalVAR.listOfActions_super:
        print "\nAction Name: " + action[0]
        print "preconditions: " + str(action[1])
        print "add effects: " + str(action[2])
        print "delete effects: " + str(action[3])
        print "cost: " + str(action[4]) + '\n'

def print_predicates():
    print "*** DOMAIN PREDICATES ***\n"
    for predicate in globalVAR.listOfPredicates:
        print predicate

    print
    print "*** GOAL STATE ***\n"
    print globalVAR.goalState_super
    print
    print "*** INITIAL STATE ***\n"
    print globalVAR.initState_super
    print


def print_plan(m, T):

    solnList = m.getVars()
    actList = [aa[0] for aa in globalVAR.listOfActions_super]

    print "\n*** FINAL PLAN  ***"
    cost = 0
    for t in range(1,T):
        for v in solnList:
            if v.X > 0.5 and v.VarName.split('_'+str(t))[0] in actList and v.VarName.split('_')[-1] == str(t):
                print('%g - %s' % (t, v.VarName.split('_'+str(t))[0]))
                if 'NOOP' not in v.VarName:
                    cost += 1

    return cost


def objective_function(act, var, T):
    expr = quicksum(quicksum(aa[4]*act[aa[0],t] for aa in globalVAR.listOfActions_super) for t in range(1,T))
    return expr

def run_ip(domainFile, problemFile, T, discount):
    
    print '\nReading domain and problem files...'
    readFiles.read_input(domainFile, problemFile, 'super', discount) 

    print_actions()
    #print_predicates()

    start = time.time()
    print 'Building model...'
    # Model #
    m = Model("resourceplan")
    
    # Optimization criterion  #
    m.modelSense = GRB.MINIMIZE

    print 'Adding variables...'
    # define variables - y_a_t  #
    var = {}
    for vv in globalVAR.listOfPredicates_super:
        for t in range(T):
            var[vv,t] = m.addVar(vtype=GRB.BINARY, name=str(vv) + '_%s' % (str(t)))

    # define variables - x_a_t  #
    act = {}  
    for aa in globalVAR.listOfActions_super:
        for t in range(1,T):
            act[aa[0],t] = m.addVar(vtype=GRB.BINARY, name=str(aa[0]) + '_%s' % (str(t)))
    
    # Update model with variables #
    m.update()
    
    print 'Adding constraints...'
    # define constraints - initial state #
    for vv in globalVAR.listOfPredicates_super:
        m.addConstr(var[vv,0] == globalVAR.initState_super[globalVAR.listOfPredicates_super.index(vv)])
        
    # define constraints - goal state #
    for vv in globalVAR.listOfPredicates_super:
        if globalVAR.goalState_super[globalVAR.listOfPredicates_super.index(vv)] != -1:
            m.addConstr(var[vv,T-1] == globalVAR.goalState_super[globalVAR.listOfPredicates_super.index(vv)])

    # define constraints - preconditions #
    for t in range(1,T):
        for aa in globalVAR.listOfActions_super:
            for precondition in aa[1]:
                m.addConstr(act[aa[0],t] <= var[precondition,t-1])                    
                
    # define constraints - add effects #
    for t in range(1,T):
        for vv in globalVAR.listOfPredicates_super:
            tempList1 = []
            tempList2 = []
            for aa in globalVAR.listOfActions_super:
                if vv in aa[2]:
                    tempList1.append(aa[0])
                if vv in aa[3]:
                    tempList2.append(aa[0])
            #m.addConstr(var[vv,t] == quicksum(act[aa,t] for aa in tempList1) + (1-quicksum(act[aa,t] for aa in tempList1)-quicksum(act[aa,t] for aa in tempList2))*var[vv,t-1])
            m.addConstr(var[vv,t] <= quicksum(act[aa,t] for aa in tempList1) + (1-quicksum(act[aa,t] for aa in tempList1))*var[vv,t-1])
            m.addConstr(var[vv,t] <= 1-quicksum(act[aa,t] for aa in tempList2))

    # define constraints - no concurrency #
    for t in range(1,T):
        m.addConstr(quicksum(act[aa[0],t] for aa in globalVAR.listOfActions_super) == 1)

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
    

def generate_indv_plan():
    print "Generating individual human plan..."
    domainFile = 'DOMAINS/commx/domain.pddl'
    problemFile = 'DOMAINS/commx/problem.pddl'
    cmd = '~/Desktop/FAST-DOWNWARD/src/translate/translate.py ' + str(domainFile) + ' ' + str(problemFile) + '> stdout.txt'
    os.system(cmd) 
    cmd = '~/Desktop/FAST-DOWNWARD/src/preprocess/preprocess < output.sas > stdout.txt'
    os.system(cmd) 
    cmd = '~/Desktop/FAST-DOWNWARD/src/fast-downward.py output --search "astar(lmcut())" > stdout.txt'
    os.system(cmd) 
    planFile = 'sas_plan'
    instream = open(planFile, 'r')
    current_plan = []
    while True:
        line = instream.readline().strip()
        if 'cost' in line:
            break
        current_plan.append(line[line.find('(')+1:line.find(')')].strip().replace(' ','_').upper())
    
    for action in current_plan:
        print action


if __name__ == '__main__':

    #generate_indv_plan()

    # run IP #
    domainFile = 'DOMAINS/superagent/domain.pddl'
    problemFile = 'DOMAINS/superagent/problem.pddl'
    T = 18
    discount = 0.1
    run_ip(domainFile, problemFile, T, discount)


