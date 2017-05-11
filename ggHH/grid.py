from argparse import ArgumentParser
import os
import creategrid

parser = ArgumentParser()

parser.add_argument("-s", "--seed", dest="seed",
                    action="store", type=str, required=True,
                    help='seed for FIFOs',
                    metavar="SEED")

parser.add_argument("-v", "--verbose", dest="verbose",
                    action="store", type=bool, required=False,
                    help='print i/o messages', default=False,
                    metavar="VERBOSE")


args = parser.parse_args()

intseed = int(args.seed)
verbose = bool(args.verbose)

# FIFO pipes created with 'mkfifo' command
pyFuncCallPipe   = "pyInputPipe-"  + str(intseed).zfill(4)
pyFuncReturnPipe = "pyOutputPipe-" + str(intseed).zfill(4)

# File to create to signal bash to continue processing
pyReadySignalFile = "pyReadySignal-" + str(intseed).zfill(4)

# Delete FIFO pipes if they exist and recreate them
try:
    os.remove(pyFuncCallPipe)
except OSError:
    pass
try:
    os.remove(pyFuncReturnPipe)
except OSError:
    pass
os.mkfifo(pyFuncCallPipe)
os.mkfifo(pyFuncReturnPipe)

# Python function that we want to call via pyFuncCallPipe
def func(arg):
    s,t=map(lambda e: float(e),arg.split(','))
    return str(creategrid.GetAmplitude(s,t))

# Initialise stuff here
# ...
# ...
# ...
# ...
# ...

print '== Ready to evaluate function =='
print 'Input Pipe: ', pyFuncCallPipe
print 'Output Pipe: ', pyFuncReturnPipe
print 'Ready Signal: ', pyReadySignalFile

# Signal to bash that we are ready
open(pyReadySignalFile, 'a').close()

# Read from pyFuncCallPipe
# Write result to pyFuncReturnPipe
# If sent:
#   - 'exit' then exit script
while True:
    with open(pyFuncCallPipe, 'r') as callPipe:
        line = callPipe.readline().strip()

    if verbose:
        print '(' + str(intseed) + ') Received: ' + line
    if line == 'exit':
        break

    res = str(func(line)).strip()

    if verbose:
        print '(' + str(intseed) + ') Sending: ' + res
    with open(pyFuncReturnPipe, 'w') as returnPipe:
        returnPipe.write(res)

print '== Exiting =='
