#-*- Makefile -*-
## Choose compiler: gfortran,ifort (g77 not supported, F90 constructs in use!)
COMPILER=gfortran
FC=$(COMPILER)
## Choose PDF: native,lhapdf
## LHAPDF package has to be installed separately
PDF=lhapdf
#Choose Analysis: dummy, process specific
## default analysis may require FASTJET package, that has to be installed separately (see below)
ANALYSIS=dummy
## For static linking uncomment the following
#STATIC= -static
#

OBJ=obj-$(COMPILER)
OBJDIR:=$(OBJ)

ifeq ("$(COMPILER)","gfortran")	
F77=gfortran -fno-automatic -ffixed-line-length-none -J$(OBJ) -I$(OBJ)
## -fbounds-check sometimes causes a weird error due to non-lazy evaluation
## of boolean in gfortran.
#FFLAGS= -Wall -Wimplicit-interface -fbounds-check
## For floating point exception trapping  uncomment the following 
#FPE=-ffpe-trap=invalid,zero,overflow,underflow 
## gfortran 4.4.1 optimized with -O3 yields erroneous results
## Use -O2 to be on the safe side
OPT=-O2
## For debugging uncomment the following
#DEBUG= -ggdb 
ifdef DEBUG
OPT=-O0
FPE=-ffpe-trap=invalid,zero,overflow,underflow
endif
endif

ifeq ("$(COMPILER)","ifort")
F77 = ifort -save  -extend_source  -module $(OBJ)
#CXX = g++
#LIBS = -limf
#FFLAGS =  -checkm
## For floating point exception trapping  uncomment the following 
#FPE = -fpe0
OPT = -O3 #-fast
## For debugging uncomment the following
#DEBUG= -debug -g
ifdef DEBUG
OPT=-O0 
FPE = -fpe0
endif
endif

PWD=$(shell pwd)
WDNAME=$(shell basename $(PWD))
VPATH= ./:../:$(OBJDIR)

INCLUDE0=$(PWD)
INCLUDE1=$(PWD)/include
INCLUDE2=$(shell dirname $(PWD))/include
FF=$(F77) $(FFLAGS) $(FPE) $(OPT) $(DEBUG) -I$(INCLUDE0) -I$(INCLUDE1) -I$(INCLUDE2)

INCLUDE =$(wildcard ../include/*.h *.h include/*.h)

ifeq ("$(PDF)","lhapdf")
LHAPDF_CONFIG=lhapdf-config
PDFPACK=lhapdfif.o
LIBSLHAPDF= -Wl,-rpath,$(shell $(LHAPDF_CONFIG) --libdir)  -L$(shell $(LHAPDF_CONFIG) --libdir) -lLHAPDF
ifeq  ("$(STATIC)","-static") 
## If LHAPDF has been compiled with gfortran and you want to link it statically, you have to include
## libgfortran as well. The same holds for libstdc++. 
## One possible solution is to use fastjet, since $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
LIBSLHAPDF+=  -L$(LIBGFORTRANPATH)  -lgfortranbegin -lgfortran -L$(LIBSTDCPP) -lstdc++
endif
LIBS+=$(LIBSLHAPDF)
else
PDFPACK=mlmpdfif.o hvqpdfpho.o
endif

PWHGANAL=pwhg_bookhist-multi.o pwhg_analysis-dummy.o

ifeq ("$(ANALYSIS)","default")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
#LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lc++
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_bookhist-multi.o pwhg_analysis.o
PWHGANAL+=  fastjetfortran.o
endif

%.o: %.f $(INCLUDE)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.f90 $(INCLUDE)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.c | $(OBJDIR)
	$(CC) $(DEBUG) -std=c99 -c -o $(OBJ)/$@ $^ 

%.o: %.cc | $(OBJDIR)
	$(CXX) $(DEBUG) -c -o $(OBJ)/$@ $^ $(FJCXXFLAGS) -std=c++11

LIBS+=-lz

USER=init_couplings.o init_processes.o Born_phsp.o Born.o matchcolour.o	\
	virtual.o real.o  $(PWHGANAL)


PWHG=pwhg_main.o pwhg_init.o bbinit.o btilde.o lhefwrite.o lhefread.o \
	LesHouches.o LesHouchesreg.o gen_Born_phsp.o find_regions.o	\
	test_Sudakov.o pt2maxreg.o sigborn.o gen_real_phsp.o maxrat.o	\
	gen_index.o gen_radiation.o Bornzerodamp.o sigremnants.o	\
	random.o boostrot.o bra_ket_subroutines.o cernroutines.o	\
	init_phys.o powheginput.o pdfcalls.o sigreal.o sigcollremn.o	\
	pwhg_analysis_driver.o checkmomzero.o		                \
	setstrongcoupl.o integrator.o newunit.o mwarn.o sigsoftvirt.o	\
	reshufflemoms.o                                                 \
	sigcollsoft.o sigvirtual.o  ubprojections.o                     \
	pwhgreweight.o setlocalscales.o mint_upb.o opencount.o          \
	pwhg_io_interface.o rwl_weightlists.o \
	rwl_setup_param_weights.o auxiliary.o \
	validflav.o $(PDFPACK) $(USER) $(FPEOBJ)

LIBDIRMG=$(OBJ)
LINKMGLIBS =  -L$(LIBDIRMG)  -lmadgraph -lmodel -ldhelas3 

MADLIBS=libdhelas3.a libmadgraph.a libmodel.a

MADLOOPDIR=virtual/lib/
LINKMADLOOP= -L$(MADLOOPDIR) -lMadLoop -lcts -ldhelas -liregi -lmodelML
#MADLOOPLIBS= libMadLoop.a libcts.a libdhelas.a libiregi.a libmodelML.a

# Get SVN info for SVN version stamping code
# $(shell ../svnversion/svnversion.sh>/dev/null)

# target to generate LHEF output
pwhg_main: prerequisites $(PWHG) $(MADLIBS)
	$(FF) $(patsubst %,$(OBJ)/%,$(PWHG)) $(LINKMGLIBS) $(LINKMADLOOP) $(LIBS) $(LIBSFASTJET) $(STATIC) -o $@

# perform the virtual path replacement
do_script:
	./setup.sh

# precompile virtual packages
prerequisites: do_script
	$(MAKE) -C virtual/Source;
	$(MAKE) -j2 -C virtual/SubProcesses OLP_static;

RW_ANALYSIS=pwhg_bookhist-multi.o rw_analysis.o rw_code/reweight.o rw_code/model_W1.o rw_code/model_W2.o rw_code/model_W3.o rw_code/model_W4.o rw_code/model_W5.o rw_code/model_W6.o rw_code/model_W7.o rw_code/model_stb_W1.o rw_code/model_stb_W2.o rw_code/model_stb_W3.o rw_code/model_stb_W4.o rw_code/model_stb_W5.o rw_code/model_stb_W6.o rw_code/model_stb_W7.o rw_code/model_4_W1.o rw_code/model_2_W1.o rw_code/model_0.5_W1.o rw_code/model_0.25_W1.o

RW_USER=init_couplings.o init_processes.o Born_phsp.o Born.o matchcolour.o \
	virtual.o real.o  $(RW_ANALYSIS)

RW=rw.o pwhg_init.o bbinit.o btilde.o lhefwrite.o lhefread.o \
	LesHouches.o LesHouchesreg.o gen_Born_phsp.o find_regions.o	\
	test_Sudakov.o pt2maxreg.o sigborn.o gen_real_phsp.o maxrat.o	\
	gen_index.o gen_radiation.o Bornzerodamp.o sigremnants.o	\
	random.o boostrot.o bra_ket_subroutines.o cernroutines.o	\
	init_phys.o powheginput.o pdfcalls.o sigreal.o sigcollremn.o	\
	pwhg_analysis_driver.o checkmomzero.o		                \
	setstrongcoupl.o integrator.o newunit.o mwarn.o sigsoftvirt.o	\
	reshufflemoms.o                                                 \
	sigcollsoft.o sigvirtual.o  ubprojections.o                     \
	pwhgreweight.o setlocalscales.o mint_upb.o opencount.o          \
	pwhg_io_interface.o rwl_weightlists.o \
	rwl_setup_param_weights.o auxiliary.o rw_opencountunit.o \
	validflav.o $(PDFPACK) $(RW_USER) $(FPEOBJ)

# target to reweight using minlo-prime "tunes"
rw:$(RW) $(MADLIBS)
	$(FF) $(patsubst %,$(OBJ)/%,$(RW)) $(LINKMGLIBS) $(LINKMADLOOP) $(LIBS)  -lstdc++ $(STATIC)  -o $@ 


# target to cleanup
.PHONY: clean libdhelas3.a libmadgraph.a libmodel.a do_script

XFFLAGS=$(DEBUG) $(OPT)
libdhelas3.a:
	cd DHELAS ; make FC="$(F77)" F77="$(F77)" XFFLAGS="$(XFFLAGS)" OBJ="$(OBJ)"

libmadgraph.a:
	cd Madlib ; make FC="$(F77)" F77="$(F77)" XFFLAGS"=$(XFFLAGS)" OBJ="$(OBJ)"

ifeq ("$(COMPILER)","gfortran")
XFFLAGS +=-ffixed-line-length-132
else
XFFLAGS +=-extend-source
endif

libmodel.a:
	cd MODEL ; make FC="$(F77)" F77="$(F77)" XFFLAGS="$(XFFLAGS)" OBJ="$(OBJ)"


clean:
	rm -f $(patsubst %,$(OBJ)/%,$(USER) $(PWHG) $(RW)) 		\
	pwhg_main rw


veryclean:
	rm -f $(OBJ)/*.o $(OBJ)/*.mod $(OBJ)/*.a pwhg_main		\
	rw *.a								\
	DHELAS/*.o Madlib/*.o MODEL/*.o virtual/SubProcesses/*.o	\
	virtual/SubProcesses/*.mod virtual/SubProcesses/P*/*.o		\
	virtual/lib/libMadLoop.a virtual/lib/libcts.a virtual/lib/libiregi.a
	cd virtual/Source ; make clean ; cd ../..

##########################################################################

rw_analysis.o: auxiliary.o 
setlocalscales.o: auxiliary.o 

