#!/bin/python3

#Generate job for specified level combination
import sys

def usage(name):
    print("Usage: %s L1 L2 [SECS]")
    print("  L1, L2: Levels being merged")
    print("  SECS: Time limit in seconds")
    

def root(level1, level2):
    if level1 < level2:
        level1, level2 = level2, level1
    return "m%.2d+%.2d" % (level1, level2)

def generate(level1, level2, seconds):
    rname = root(level1, level2)
    jname = "run-%s.job" % rname
    outf = open(jname, 'w')
    outf.write('#/bin/bash\n')
    outf.write('#SBATCH -N 1\n')
    outf.write('#SBATCH -p RM\n')
    hours = seconds // 3600
    seconds -= hours * 3600
    minutes = seconds // 60
    seconds -= minutes * 60
    outf.write('#SBATCH -t %d:%.2d:%.2d\n' % (hours, minutes, seconds))
    outf.write('#SBATCH --ntasks-per-node=28\n')
    outf.write('cd /pylon5/cc5piip/rebryant/mm-run/solve\n')

    froot = 'run-smirnov-%s-mode2' % rname
    outf.write('/home/rebryant/Cloud-BDD/runbdd -v 1 -f %s.cmd -L %s.log\n' % (froot, froot))
    outf.close()


def run(name, args):
    seconds = 1800
    if len(args) < 2 or len(args) > 3:
        usage(name)
        return
    level1 = int(args[0])
    level2 = int(args[1])
    if len(args) == 3:
        seconds = int(args[2])
    generate(level1, level2, seconds)

if __name__ == "__main__":
    run(sys.argv[0], sys.argv[1:])

    

