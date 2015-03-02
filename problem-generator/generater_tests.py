import os, sys, random

rooms = ['room1', 'room2', 'room3', 'room4', 'room5', 'room6', 'room7', 'room8', 'room9', 'room10', 'room11', 'room12', 'room13']
halls = ['hall1', 'hall2', 'hall3', 'hall4', 'hall5', 'hall6', 'hall7']
locs  = list(set(rooms)|set(halls))

agents    = ['commx', 'robot', 'superagent']
curr_dir  = 'iros/'
dom_dir   = 'DOMAINS/'
suite_dir = 'benchmarks/'
num_tests = 100

def groundfilesday():
    for agent in agents:
        path        = curr_dir + agent
        domainFile  = path + '/domain.pddl'
        problemFile = path + '/problem.pddl'
        obsFile     = path + '/obs.dat'
        cmd = './pr2plan -d ' + domainFile + ' -i ' + problemFile + ' -o ' + obsFile + '> log.txt'
        os.system(cmd)
        
        with open('pr-domain.pddl', 'r') as input_file, open('domain.pddl', 'w') as output_file:
            for line in input_file:
                if 'EXPLAINED' not in line:
                    output_file.write(line)
                    
        cmd = 'cp domain.pddl ' + dom_dir + agent
        os.system(cmd)
        
        with open('pr-problem.pddl', 'r') as input_file, open('problem.pddl', 'w') as output_file:
            for line in input_file:
                if 'EXPLAINED' not in line:
                    output_file.write(line)
                    
        cmd = 'cp problem.pddl ' + dom_dir + agent
        os.system(cmd)


def write_noop_action(agent, output_file):
    noopFile = open('noop.dat')
    for line in noopFile:
        if 'NOOP' in line:
            output_file.write('\t' + line.strip()+agent.upper()+'\n')
        else:
            output_file.write('\t' + line)
    noopFile.close()


def preprocess():
    cmd = 'cp DOMAINS/commx/domain.pddl DOMAINS/commx/domain_o.pddl'
    os.system(cmd)
    for agent in agents:
        cmd = 'touch ' + dom_dir + agent + '/temp.pddl'
        os.system(cmd)
        with open(dom_dir + agent + '/domain.pddl', 'r') as input_file, open(dom_dir + agent + '/temp.pddl', 'w') as output_file:
            for line in input_file:
                if '(:functions (total-cost))' in line:
                    output_file.write(line)
                    if agent == 'superagent':
                        write_noop_action('commx', output_file)
                        write_noop_action('robot', output_file)
                    else:
                        write_noop_action(agent, output_file)
                else:
                    output_file.write(line)
        cmd = 'cp ' + dom_dir + agent + '/temp.pddl ' + dom_dir + agent + '/domain.pddl'
        os.system(cmd)
        cmd = 'rm ' + dom_dir + agent + '/temp.pddl'
        os.system(cmd)

    for agent in agents:
        cmd = 'touch ' + dom_dir + agent + '/temp.pddl'
        os.system(cmd)
        with open(dom_dir + agent + '/problem.pddl', 'r') as input_file, open(dom_dir + agent + '/temp.pddl', 'w') as output_file:
            flag = True
            for line in input_file:
                if '(= (total-cost) 0)' in line:
                    output_file.write(line)
                    flag = False
                if line.strip() == ')':
                    flag = True
                if '(and' in line:
                    output_file.write(line)
                    flag = False
                if flag:
                    output_file.write(line)

        cmd = 'cp ' + dom_dir + agent + '/temp.pddl ' + dom_dir + agent + '/problem.pddl'
        os.system(cmd)
        cmd = 'rm ' + dom_dir + agent + '/temp.pddl'
        os.system(cmd)


def generate_problems():
    for idx in range(num_tests):
        print 'Generating Problem #', idx + 1
        folderName = 'test' + str(idx+1)
        cmd = 'mkdir -p ' + suite_dir + folderName
        os.system(cmd)
        cmd = 'cp -r ' + dom_dir + '/* ' + suite_dir + folderName 
        os.system(cmd)
        goal = '\t\tCONDUCTED_TRIAGE_COMMX_' + random.choice(rooms).upper() + ' )\n' 
        mk1_pos = '\t\t( AT_MK1_' + random.choice(rooms).upper() + ' )\n'
        mk2_pos = '\t\t( AT_MK2_' + random.choice(rooms).upper() + ' )\n'
        commx_pos = '\t\t( AT_COMMX_' + random.choice(locs).upper() + ' )\n'
        robot_pos = '\t\t( AT_ROBOT_' + random.choice(locs).upper() + ' )\n'
        for agent in agents:
            cmd = 'touch ' + suite_dir + folderName + '/' + agent + '/temp.pddl'
            os.system(cmd)
            with open(suite_dir + folderName + '/' + agent + '/problem.pddl', 'r') as input_file, open(suite_dir + folderName + '/' + agent + '/temp.pddl', 'w') as output_file:
                flag = True
                for line in input_file:
                    if '(= (total-cost) 0)' in line:
                        output_file.write(line)
                        output_file.write(mk1_pos)                    
                        output_file.write(mk2_pos)
                        if agent != 'robot':
                            output_file.write(commx_pos)
                        if agent != 'commx':
                            output_file.write(robot_pos)
                    elif '(and' in line:
                        output_file.write(line)
                        if agent != 'robot':
                            output_file.write(goal)                    
                    else:
                        output_file.write(line)
            cmd = 'cp ' + suite_dir + folderName + '/' + agent + '/temp.pddl ' + suite_dir + folderName + '/' + agent + '/problem.pddl'
            os.system(cmd)
            cmd = 'rm ' + suite_dir + folderName + '/' + agent + '/temp.pddl'
            os.system(cmd)

if __name__ == '__main__':
    groundfilesday()
    preprocess()
    generate_problems()


