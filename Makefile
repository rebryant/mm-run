CUDD_DIR=Chain-CUDD-3.0.0
RUNBDD_DIR=Cloud-BDD
CUDD_REPO=https://github.com/rebryant/$(CUDD_DIR)
RUNBDD_REPO=https://github.com/rebryant/$(RUNBDD_DIR)
RUN=../Cloud-BDD/matrix/mm_run.py


all:
	-make install
	-make update
	make run

install: install_cudd install_runbdd

install_cudd:
	echo "Retrieving modified version of CUDD BDD package"
	git clone $(CUDD_REPO)
	echo "Installing CUDD"
	pushd $(CUDD_DIR); touch Makefile.am Makefile.in aclocal.m4; ./configure --prefix=`pwd`; make; make install; popd

install_runbdd:
	echo "Retrieving command interpreter"
	git clone $(RUNBDD_REPO)
	echo "Installing command interpreter"
	pushd $(RUNBDD_DIR); ln -s ../$(CUDD_DIR) cudd-symlink; make; popd

update: update_cudd update_runbdd

update_cudd:
	echo "Updating modified version of CUDD BDD package"
	pushd $(CUDD_DIR); git pull; make ; make install; popd

update_runbdd:
	echo "Updating command interpreter"
	pushd $(RUNBDD_DIR); git pull; make ; popd

tar:
	pushd ..; tar cvf mm-bdd/runbdd.tar mm-bdd/Makefile mm-bdd/README.txt mm-bdd/solve/*.cmd; popd

run:
	echo "Running solver"
	pushd solve; $(RUN) -v 3 -I . ;	popd

clean:
	rm -f *~
	pushd solve; rm *.log; popd

# Only do this to wipe out CUDD and command interpreter
superclean: clean
	rm -rf $(CUDD_DIR)
	rm -rf $(RUNBDD_DIR)
	rm -f *~
	pushd solve; rm *.log; popd

