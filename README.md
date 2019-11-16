# mm-run

This repository sets up an environment for running a BDD-based SAT
solver to find solutions to matrix multiplication problems.

Running "make all" should be all that it takes.

Files:

	Makefile: 
            Performs installation of two packages:
	       Modified version of CUDD
	       Command interpreter
	     Also runs solver on command files in subdirectory solve
	
	solve/*.cmd: Command files to be executed

	solve/*.log: Results for executing command files

