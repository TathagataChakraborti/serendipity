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
    
    return len(current_plan)

if __name__ == '__main__':

    num_tests = 200
    output_file = open('results1.dat','a')

    for tt in range(1, num_tests+1):
        start = time.time()
        domainFile = 'benchmarks/test' + str(tt) + '/commx/domain_o.pddl'
        problemFile = 'benchmarks/test' + str(tt) + '/commx/problem.pddl'
        cost = generate_indv_plan(domainFile, problemFile)
        end = time.time()
        output = 'test' + str(tt) + ' - Time: ' + str( (end-start) ) + ' Cost: ' + str(cost)
        print output
        output_file.write(output+'\n')

    output_file.close()
