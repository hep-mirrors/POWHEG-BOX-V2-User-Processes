COMPILER=gfortran
ANALYSIS=pwhg_analysis.o

#-----------------------------------------------------------------------------------------
ifeq ("$(COMPILER)","gfortran")
	FCOMP= gfortran
	FFLAGS= -fno-automatic -ffixed-line-length-none #-Wall
	OPT=-O2
endif

#-----------------------------------------------------------------------------------------
SRC=src
OBJ=obj-$(COMPILER)
MOD=$(OBJ)
PWD=$(shell pwd)

VPATH= ./:./$(SRC)/:./$(SRC)/f77/:./$(SRC)/f90/:../
INCLUDE= -I$(PWD)/$(SRC)/include -I$(PWD)/../include
MODULES= -J$(MOD)

FF=$(FCOMP) $(FFLAGS) $(OPT) $(INCLUDE) $(MODULES)
CC=gcc
CXX=g++

#---> libraries
LIBS=-lz

#-----------------------------------------------------------------------------------------
#---> analysis
PWHGANAL=$(ANALYSIS) pwhg_bookhist-multi.o

#-----------------------------------------------------------------------------------------
#---> PYTHIA8
PYTHIA_CONFIG=$(shell which pythia8-config)
LIBPYTHIA8= -L$(shell $(PYTHIA_CONFIG) --libdir) -lpythia8 -ldl -lstdc++
CFLAGSPYTHIA8= $(shell $(PYTHIA_CONFIG) --cflags)

#DEBUG=-ggdb -O0

#-----------------------------------------------------------------------------------------
#---> instructions
%.o: %.f
	$(FF) $(DEBUG) -c -o $(OBJ)/$@ $<

%.o: %.f90
	$(FF) $(DEBUG) -c -o $(OBJ)/$@ $<

%.o: %.c
	$(CC) $(DEBUG) -c -o $(OBJ)/$@ $^

%.o: %.cc
	$(CXX) $(DEBUG) -c -o $(OBJ)/$@ $^ $(CFLAGSPYTHIA8)


#-----------------------------------------------------------------------------------------
#---> object files
USER=\
	init_couplings.o \
	init_processes.o \
	bmunu_calc.o \
	born_phsp.o \
	born.o \
	real.o \
	virtual.o \
	matrix_elements.o \
	gamma.o \
	auxiliary.o \
	cluster.o \
	mod_types.o \
	$(PWHGANAL)


PWHG=\
	pwhg_main.o \
	pwhg_init.o \
	bbinit.o \
	btilde.o \
	lhefwrite.o \
	LesHouches.o \
	LesHouchesreg.o \
	gen_Born_phsp.o \
	find_regions.o \
	test_Sudakov.o \
	pt2maxreg.o \
	sigborn.o \
	gen_real_phsp.o \
	maxrat.o \
	gen_index.o \
	gen_radiation.o \
	Bornzerodamp.o \
	sigremnants.o \
	random.o \
	boostrot.o \
	bra_ket_subroutines.o \
	cernroutines.o \
	init_phys.o \
	powheginput.o \
	pdfcalls.o \
	fakepdfif.o \
	sigreal.o \
	sigcollremn.o \
	pwhg_analysis_driver.o \
	checkmomzero.o \
	setstrongcoupl.o \
	integrator.o \
	newunit.o \
	mwarn.o \
	sigsoftvirt.o \
	reshufflemoms.o \
	sigcollsoft.o \
	sigvirtual.o \
	validflav.o \
	mint_upb.o \
	pwhgreweight.o \
	opencount.o \
	ubprojections.o \
	minlo_checks.o \
	$(USER) \
	lhefread.o \
	pwhg_io_interface.o \
	rwl_weightlists.o \
	rwl_setup_param_weights.o \
	setlocalscales.o \
	sudakov.o

PYTH=main-PYTHIA8.o pythia8F77.o boostrot.o powheginput.o		\
	lhefread.o pwhg_io_interface.o rwl_weightlists.o newunit.o pdfdummies.o	\
	pwhg_analysis_driver.o random.o cernroutines.o opencount.o	\
	$(PWHGANAL) reshuffle.o scalup_dec.o boost2reson4.o

LHEF_ANALYSIS=lhef_analysis.o boostrot.o random.o cernroutines.o		     \
     opencount.o powheginput.o $(PWHGANAL) \
     lhefread.o newunit.o pwhg_analysis_driver.o                     \
     pwhg_io_interface.o rwl_weightlists.o

#-----------------------------------------------------------------------------------------
#---> targets
pwhg_main: directories $(PWHG)
	$(FF) $(patsubst %,$(OBJ)/%,$(PWHG)) $(LIBS) -o $@

lhef_analysis: directories $(LHEF_ANALYSIS)
	$(FF) $(patsubst %,$(OBJ)/%,$(LHEF_ANALYSIS)) $(LIBS) -o $@

main-PYTHIA-lhef: directories $(PYTH)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTH)) $(LIBS) $(LIBPYTHIA8) -o $@

#-----------------------------------------------------------------------------------------
#---> supplementary targets
.PHONY: clean directories

directories:
	mkdir -p $(OBJ)

clean:
	rm -rf $(OBJ) $(MOD) \
	pwhg_main \
	lhef_analysis main-HERWIG-lhef \
	main-PYTHIA-lhef
