CUDD_DIR=Chain-CUDD-3.0.0
NCUDD_DIR=cudd-3.1.0
RUNBDD_DIR=Cloud-BDD
CUDD_REPO=https://github.com/rebryant/$(CUDD_DIR)
NCUDD_REPO=https://github.com/rebryant/$(NCUDD_DIR)
RUNBDD_REPO=https://github.com/rebryant/$(RUNBDD_DIR)
RUN=../Cloud-BDD/matrix/mm_run.py
# CUDD files to touch after cloning
CUDD_FILES = Doxyfile.in Makefile.am Makefile.in aclocal.m4 config.h.in config.ac groups.dox

all:
	-make install
	-make update
	make run

install: install_cudd install_ncudd install_runbdd

install_cudd:
	echo "Retrieving modified version of CUDD BDD package"
	-git clone $(CUDD_REPO)
	echo "Installing Chained CUDD"
	pushd $(CUDD_DIR); touch $(CUDD_FILES); ./configure --prefix=`pwd`; make; make install; popd

install_ncudd:
	echo "Retrieving updated version of CUDD BDD package"
	-git clone $(NCUDD_REPO)
	echo "Installing CUDD 3.1.0"
	pushd $(NCUDD_DIR); touch $(CUDD_FILES); ./configure --prefix=`pwd`; make; make install; popd

install_runbdd:
	echo "Retrieving command interpreter"
	-git clone $(RUNBDD_REPO)
	echo "Installing command interpreter"
	pushd $(RUNBDD_DIR); rm -f runbdd cudd-symlink;  ln -s ../$(CUDD_DIR) cudd-symlink; make runbdd; popd
	pushd $(RUNBDD_DIR); rm -f runbdd-cudd cudd-symlink-original;  ln -s ../$(NCUDD_DIR) cudd-symlink-original; make runbdd-cudd; popd

update: update_cudd update_ncudd update_runbdd

update_cudd:
	echo "Updating modified version of CUDD BDD package"
	pushd $(CUDD_DIR); git pull; make ; make install; popd

update_ncudd:
	echo "Updating updated version of CUDD BDD package"
	pushd $(NCUDD_DIR); git pull; make ; make install; popd

update_runbdd:
	echo "Updating command interpreter"
	pushd $(RUNBDD_DIR); git pull; rm -f runbdd ; make runbdd ; popd
	pushd $(RUNBDD_DIR); rm -f runbdd-cudd ; make runbdd-cudd ; popd

tar:
	pushd ..; tar cvf mm-bdd/runbdd.tar mm-bdd/Makefile mm-bdd/README.txt mm-bdd/solve/*.cmd; popd

run:
	echo "Running solver with Chained BDDs"
	pushd solve; $(RUN) -v 1 -I . ;	popd

crun:
	echo "Running solver with CUDD 3.1.0"
	pushd solve; $(RUN) -C -v 1 -I . ; popd

clean:
	rm -f *~
	pushd solve; rm *.log; popd

# Only do this to wipe out CUDD and command interpreter
superclean: clean
	rm -rf $(CUDD_DIR)
	rm -rf $(NCUDD_DIR)
	rm -rf $(RUNBDD_DIR)

