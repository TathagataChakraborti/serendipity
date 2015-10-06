#!/usr/bin/python
import math, sys, os
import time

def generate_indv_plan(domainFile, problemFile): 
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

    return len(current_plan)

if __name__ == '__main__':

    start = time.time()
    domainFile = 'test/commx/domain.pddl'
    problemFile = 'test/commx/problem.pddl'
    cost = generate_indv_plan(domainFile, problemFile)
    end = time.time()
    output = 'Time: ' + str( (end-start) ) + ' Cost: ' + str(cost)
    print output
