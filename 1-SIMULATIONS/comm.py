#!/usr/bin/python
from gurobipy import *
import math, sys, os, copy
import readFiles, globalVAR
import time

current_plan = []
agents       = ['COMMX', 'ROBOT', 'SUPER']

def print_plan(m, T):

    solnList = m.getVars()
    for v in solnList:
        if v.VarName == 'begin':
            xx = v.X
        if v.VarName == 'end':
            yy = v.X

    return (yy - xx)


def objective_function(act, var, T, stops):
    K = 1000
    expr = quicksum(quicksum(aa[4]*act[aa[0],t] for aa in globalVAR.listOfActions['SUPER']) for t in range(1,T))
    expr += K*(stops['end'] - stops['begin'])
    return expr


def run_ip(T):

    # Model #
    m = Model("comm")
    
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

    stops = {}
    stops['begin'] = m.addVar(vtype=GRB.INTEGER, lb=0, ub=T, name='begin')
    stops['end']   = m.addVar(vtype=GRB.INTEGER, lb=0, ub=T, name='end')
    
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
            m.addConstr(var[vv,t] <= quicksum(act[aa,t] for aa in tempList1) + (1-quicksum(act[aa,t] for aa in tempList1))*var[vv,t-1])
            m.addConstr(var[vv,t] <= 1-quicksum(act[aa,t] for aa in tempList2))

    # define interrupts #
    act_commx = []
    for action in globalVAR.listOfActions['SUPER']:
        if 'COMMX' in action[0]:
            act_commx.append(action)

    TT = float(T)-1
    for action in act_commx:
        m.addConstr(stops['begin'] <= TT*(1-(TT-1)*quicksum(t*act[action[0],t] for t in range(1,T))*(1-sum([int(aa == action[0]) for aa in current_plan]))/pow(TT,2)))    
    
    m.addConstr(stops['end'] >= stops['begin'] + 1)

    act_robot = []
    for action in globalVAR.listOfActions['SUPER']:
        if 'ROBOT' in action[0]:
            act_robot.append(action)

    for action in act_robot:
        for t in range(1,T):
            m.addConstr(act[action[0],t] <= 1+(stops['end']-1-t)/T)
            
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
    m.setObjective(objective_function(act, var, T, stops))

    # optimize #
    m.params.OutputFlag = 0
    m.optimize()
    
    # print solution #
    status = m.status
    if status == GRB.OPTIMAL:
        ret = print_plan(m, T)
        return m.ObjVal - 1000*ret
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

if __name__ == '__main__':

    dd = [0, 10, 30, 50, 70, 90]

    for d in dd:
        discount = float(d)
        discount = 1-discount/100
        num_tests = 100
        output_file = open('results3_'+str(d)+'.dat','w')
        output_file.close()
        output_file = open('results3_'+str(d)+'.dat','a')
        
        for tt in range(1, num_tests+1):
            start = time.time()
            domainFile = 'benchmarks/test' + str(tt) + '/commx/domain_o.pddl'
            problemFile = 'benchmarks/test' + str(tt) + '/commx/problem.pddl'
            generate_indv_plan(domainFile, problemFile)
            domainFile = 'benchmarks/test' + str(tt) + '/commx/domain.pddl'
            problemFile = 'benchmarks/test' + str(tt) + '/commx/problem.pddl'
            readFiles.read_input(domainFile, problemFile, 'COMMX') 
            domainFile = 'benchmarks/test' + str(tt) + '/robot/domain.pddl'
            problemFile = 'benchmarks/test' + str(tt) + '/robot/problem.pddl'
            readFiles.read_input(domainFile, problemFile, 'ROBOT') 
            domainFile = 'benchmarks/test' + str(tt) + '/superagent/domain.pddl'
            problemFile = 'benchmarks/test' + str(tt) + '/superagent/problem.pddl'
            readFiles.read_input(domainFile, problemFile, 'SUPER', discount) 
            T = len(current_plan)+1
            try:
                cost = run_ip(T)
                end = time.time()
                output = 'discount ' + str(discount) + ':: test' + str(tt) + ' - Time: ' + str(end-start) + ' Cost: ' + str(cost)
                print output
                output_file.write(output+'\n')
            except: 
                pass
                
        output_file.close()
        
