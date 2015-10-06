#!/usr/bin/python
from gurobipy import *
import math, sys, os, copy
import readFiles, globalVAR
import time

current_plan = []
agents       = ['COMMX', 'ROBOT', 'SUPER']


def print_plan(m, T):

    actList = [aa[0] for aa in globalVAR.listOfActions['SUPER']]
    solnList = m.getVars()
    print "*** SUPER PLAN  ***"
    cost = 0
    for t in range(1,T):
        for v in solnList:
            for a in agents:
                actName = v.VarName.split('_'+str(t))[0]
                if v.X > 0.5 and v.VarName.split('_'+str(t))[0] in actList and v.VarName.split('_')[-1] == str(t) and a in actName:
                    print('%g - %s' % (t, actName))
                    if 'NOOP' not in v.VarName:
                        cost += 1


def objective_function(act, var, T):
    expr = quicksum(quicksum(aa[4]*act[aa[0],t] for aa in globalVAR.listOfActions['SUPER']) for t in range(1,T))
    return expr


def run_ip(T):

    # Model #
    m = Model("joint")
    
    # Optimization criterion  #
    m.modelSense = GRB.MINIMIZE

    # define variables - y_a_t  #
    var = {}
    for vv in globalVAR.listOfPredicates['SUPER']:
        for t in range(T):
            var[vv,t] = m.addVar(vtype=GRB.BINARY, name=str(vv) + '_%s' % (str(t)))

    # define variables - x_a_t  #
    act = {}  
    for action in globalVAR.listOfActions['SUPER']:
        for t in range(1,T):
            act[action[0], t] = m.addVar(vtype=GRB.BINARY, name=str(action[0]) + '_%s' % (str(t)))

    # Update model with variables #
    m.update()
    
    # define constraints - initial state #
    for vv in globalVAR.listOfPredicates['SUPER']:
        m.addConstr(var[vv, 0] == globalVAR.initState['SUPER'][globalVAR.listOfPredicates['SUPER'].index(vv)])
        #need to check for consistency - for now assumed consistent

    # define constraints - goal state #
    for vv in globalVAR.listOfPredicates['SUPER']:
        if globalVAR.goalState['SUPER'][globalVAR.listOfPredicates['SUPER'].index(vv)] != -1:
            m.addConstr(var[vv,T-1] == globalVAR.goalState['SUPER'][globalVAR.listOfPredicates['SUPER'].index(vv)])
            #need to check for consistency - for now assumed consistent
                
    # define constraints - preconditions #
    for t in range(1,T):
        for action in globalVAR.listOfActions['SUPER']:
            for precondition in action[1]:
                m.addConstr(act[action[0], t] <= var[precondition,t-1])                    

    # define constraints - add effects #
    for t in range(1,T):
        for vv in globalVAR.listOfPredicates['SUPER']:
            tempList1 = []
            tempList2 = []
            for action in globalVAR.listOfActions['SUPER']:
                if vv in action[2]:
                    tempList1.append(action[0])
                if vv in action[3]:
                    tempList2.append(action[0])
            m.addConstr(var[vv,t] <= quicksum(act[aa,t] for aa in tempList1) + var[vv,t-1])
            m.addConstr(var[vv,t] <= 1-quicksum(act[aa,t] for aa in tempList2))

    # define constraints - no concurrency #
    act_robot = []
    act_commx = []
    act_joint = []
    for action in globalVAR.listOfActions['SUPER']:
        if True in [aa[0] in action for aa in globalVAR.listOfActions['ROBOT']]:
            act_robot.append(action[0])
        elif True in [aa[0] in action for aa in globalVAR.listOfActions['COMMX']]:
            act_commx.append(action[0])
        elif True not in [aa[0] in action for aa in globalVAR.listOfActions['ROBOT']] and True not in [aa[0] in action for aa in globalVAR.listOfActions['COMMX']]:
            act_joint.append(action[0])

    for t in range(1,T):
        m.addConstr(quicksum(act[action,t] for action in act_robot) + quicksum(act[action,t] for action in act_joint) <= 1)
        m.addConstr(quicksum(act[action,t] for action in act_commx) + quicksum(act[action,t] for action in act_joint) <= 1)
        
    # set optimization objective function #
    m.setObjective(objective_function(act, var, T))

    # optimize #
    m.params.OutputFlag = 0
    m.optimize()
    
    # print solution #
    status = m.status
    if status == GRB.OPTIMAL:
        print_plan(m, T)
        return m.ObjVal
    else:
        return 0
    

def generate_indv_plan(domainFile, problemFile):
    global current_plan
    current_plan = []
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
    
    print '*** CommX Plan ***'
    for action in current_plan:
        print action


if __name__ == '__main__':

    discount = 0.1
    start = time.time()

    domainFile = 'test/commx/domain.pddl'
    problemFile = 'test/commx/problem.pddl'
    generate_indv_plan(domainFile, problemFile)
    readFiles.read_input(domainFile, problemFile, 'COMMX') 

    domainFile = 'test/robot/domain.pddl'
    problemFile = 'test/robot/problem.pddl'
    readFiles.read_input(domainFile, problemFile, 'ROBOT') 

    domainFile = 'test/superagent/domain.pddl'
    problemFile = 'test/superagent/problem.pddl'
    readFiles.read_input(domainFile, problemFile, 'SUPER', discount) 

    T = len(current_plan) + 1
    cost = run_ip(T)
    end = time.time()
    output = 'discount ' + str(discount) + '- Time: ' + str(end-start) + ' Cost: ' + str(cost)
    print output
    sys.exit(0)
    try:
        cost = run_ip(T)
        end = time.time()
        output = 'discount ' + str(discount) + '- Time: ' + str(end-start) + ' Cost: ' + str(cost)
        print output
    except: 
        raise Exception("Oops! Something went wrong.")
