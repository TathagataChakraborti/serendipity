import os, sys, copy, globalVAR
import numpy

def read_input(domainFile, problemFile, flag, discount):
    f_domain  = open(domainFile)
    varList = []
    operatorList = []
    while True:
        line = f_domain.readline().split('\n')[0]
        if not line: break

        if '(:predicates' in line:
            while line.strip() != ')':
                line   = f_domain.readline().split('\n')[0]
		newVar = line[line.find("(")+1:line.find(")")].strip()
                if newVar != '':
                    varList.append(str(newVar))

        if '(:action' in line:
            newOperator = []
            name = line.split (" ")[1]
            newOperator.append(name)
            
            line = f_domain.readline()
            line = f_domain.readline()
            line = f_domain.readline()
            line = f_domain.readline()
            precond = []
            while line.strip() != ')':
                precond.append(line[line.find("(")+1:line.find(")")].strip())
                line = f_domain.readline()
            newOperator.append(precond)

            line = f_domain.readline()
            line = f_domain.readline()
            line = f_domain.readline()
            cost = float(line.split('(increase (total-cost) ')[1].split(')')[0]) 
            if 'ROBOT' in name and 'COMMX' not in name:
                cost = discount*cost
            line = f_domain.readline()
            add_effects = []
            del_effects = []
            while line.strip() != ')':
                line = line[line.find("(")+1:line.find(")")].strip()
                if 'not' in line:
                    line = line.split('(')[1].strip()
                    del_effects.append(line)
                else:
                    add_effects.append(line)
                line = f_domain.readline()

            newOperator.append(add_effects)
            newOperator.append(del_effects)
            newOperator.append(cost)
            operatorList.append(newOperator)
            line = f_domain.readline()
            
    f_domain.close()

    f_problem = open(problemFile)
    initState = []
    goalState = []
    while True:
        line = f_problem.readline().split('\n')[0]
        if not line: break

        if '(:init' in line:
            initState = numpy.zeros((len(varList),), dtype=numpy.int)
            line = f_problem.readline()
            line = f_problem.readline()
            while line.strip() != ')' and line != '':
		line = str(line[line.find("(")+1:line.find(")")]).strip()
                initState[varList.index(line)] = 1
                line = f_problem.readline().split('\n')[0]
                
        if '(:goal' in line:
            goalState = -1*numpy.ones((len(varList),), dtype=numpy.int)
            line = f_problem.readline()
            line = f_problem.readline()
            while line.strip() != ')' and line != '':
		line = str(line[line.find("(")+1:line.find(")")]).strip()
                if 'not' in line:
                    line = line.replace("not (","").strip()
                    goalState[varList.index(line)] = 0
                else:
                    goalState[varList.index(line)] = 1
                line = f_problem.readline().split('\n')[0]

    f_problem.close()
        
    globalVAR.listOfPredicates[flag] = copy.deepcopy(varList)
    globalVAR.listOfActions[flag]    = copy.deepcopy(operatorList)
    globalVAR.initState[flag]        = copy.deepcopy(initState)
    globalVAR.goalState[flag]        = copy.deepcopy(goalState)
       


