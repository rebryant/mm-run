#!/bin/python3

#Generate job for specified level combination
import sys
import getopt

def usage(name):
    print("Usage: %s [-h] [-t SECS] [-g GBYTES] L1 L2 ")
    print("  L1, L2:   Levels being merged")
    print(" -h:        This message")
    print(" -t SECS:   Time limit in seconds")
    print(" -g GBYTES: Max gigabytes")

def root(level1, level2):
    if level1 < level2:
        level1, level2 = level2, level1
    return "m%.2d+%.2d" % (level1, level2)

def generate(level1, level2, seconds, gigabytes):
    rname = root(level1, level2)
    jname = "run-%s.job" % rname
    outf = open(jname, 'w')
    outf.write('#!/bin/bash\n')
    outf.write('#SBATCH -N 1\n')
    outf.write('#SBATCH -p RM\n')
    hours = seconds // 3600
    seconds -= hours * 3600
    minutes = seconds // 60
    seconds -= minutes * 60
    outf.write('#SBATCH -t %d:%.2d:%.2d\n' % (hours, minutes, seconds))
    outf.write('#SBATCH --ntasks-per-node=28\n')
#    outf.write('cd /pylon5/cc5piip/rebryant/mm-run/solve\n')
    megabytes = gigabytes * 1024
    froot = 'run-smirnov-%s-mode2' % rname
    outf.write('/home/rebryant/mm-run/Cloud-BDD/runbdd -v 1 -M %d -f %s.cmd -L %s-G%d.log\n' % (megabytes, froot, froot, gigabytes))
    outf.close()


def run(name, args):
    seconds = 1800
    gigabytes = 32
    optlist, args = getopt.getopt(args, 'ht:g:')
    for (opt, val) in optlist:
        if opt == '-h':
            usage(name)
            return
        elif opt == '-t':
            seconds = int(val)
        elif opt == '-g':
            gigabytes = int(val)
        else:
            usage(name)
            return
    if len(args) != 2:
        usage(name)
        return
    level1 = int(args[0])
    level2 = int(args[1])
    generate(level1, level2, seconds, gigabytes)

if __name__ == "__main__":
    run(sys.argv[0], sys.argv[1:])

    

