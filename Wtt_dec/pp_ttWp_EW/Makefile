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
F77local=gfortran -fno-automatic -ffixed-line-length-none 
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
FPE=-ffpe-trap=invalid,zero,overflow
#,underflow
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


# --- NLOX start -----
## Absolute path to the NLOX installation directory. E.g. $(HOME)/NLOX_beta
#NLOX_DIR=$(HOME)/NLOX
## Absolute path to the NLOX_util installation directory. E.g. $(HOME)/NLOX_util_beta/built/NLOX_util
#NLOX_UTIL_DIR=$(HOME)/NLOX/UTIL/
## Absolute path to that process folder, which contains the subprocess code and 
## folders for the particular process in question. E.g. $(Home)/pp_ttbar/, etc.
## If you type "make print-PROCPATH -f Makefile_process" or simply "pwd" in the 
## process folder in question you can copy-and-paste the resulting line. 
## Note: The value of PROCPATH needs to be appended by a slash.
PROCPATH=$(NLOX_DIR)/pp_Wpttbar/

ifndef NLOX_DIR
$(error Please set NLOX_DIR variable!)
endif
ifndef NLOX_UTIL_DIR
$(error Please set NLOX_UTIL_DIR variable!)
endif
ifeq ($(wildcard $(PROCPATH)/.*),)
$(error PROCPATH seems to point to the wrong folder!)
endif

TREDDIR=$(NLOX_DIR)/src/tred

ONELOOPDIR=$(NLOX_UTIL_DIR)/lib/NLOX_util/
QCDLOOPDIR=$(ONELOOPDIR)

COMMON_INC=-I$(TREDDIR) -I$(PROCPATH)/code
COMMON_LIB_DIRS=-L$(TREDDIR) -L$(PROCPATH)
COMMON_LIBS=-Wl,-rpath,$(TREDDIR) -ltred -lquadmath -lgcc -lstdc++ -lm

ifdef QCDLOOPDIR
COMMON_LIB_DIRS+=-L$(QCDLOOPDIR)/lib64
COMMON_LIB_DIRS+=-L$(QCDLOOPDIR)
COMMON_LIBS+=-lqcdloop -lff
endif

ifdef ONELOOPDIR
COMMON_LIB_DIRS+=-L$(ONELOOPDIR)
COMMON_LIBS+=-lavh_olo
endif

COMMON_LIBS+=-lgfortran

TEST_INC=$(COMMON_INC)
TEST_LIB_DIRS=$(COMMON_LIB_DIRS)
TEST_LIBS=$(COMMON_LIBS)

# ------ NLOX end --------


PWD=$(shell pwd)
WDNAME=$(shell basename $(PWD))
VPATH= ./:../../:./DHELAS:./Madlib/:$(OBJDIR)

INCLUDE0=$(PWD)
INCLUDE1=../../include
FF=$(F77) $(FFLAGS) $(FPE) $(OPT) $(DEBUG) -I$(INCLUDE0) -I$(INCLUDE1) $(TEST_INC) 

LIBFILES=$(shell  for dir in ./Madlib ./MODEL ./DHELAS ; do cd $$dir ; echo *.[fF] ' ' | sed 's/[fF] /o /g' ; cd .. ; done  )

INCLUDE =$(wildcard ../include/*.h *.h include/*.h)


ifeq ("$(PDF)","lhapdf")
# insert your local path to lhapdf-config here:
#LHAPDF_CONFIG=$(HOME)/local/bin/lhapdf-config

ifndef LHAPDF_CONFIG
$(error Please set LHAPDF_CONFIG variable!)
endif

PDFPACK=lhapdf6if.o lhapdf6ifcc.o
FJCXXFLAGS+= $(shell $(LHAPDF_CONFIG) --cxxflags)
LIBSLHAPDF=-Wl,-rpath,$(shell $(LHAPDF_CONFIG) --libdir)  -L$(shell $(LHAPDF_CONFIG) --libdir) -lLHAPDF -lstdc++
ifeq  ("$(STATIC)","-static") 
## If LHAPDF has been compiled with gfortran and you want to link it statically, you have to include
## libgfortran as well. The same holds for libstdc++. 
## One possible solution is to use fastjet, since $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
## does perform this inclusion. The path has to be set by the user. 
# LIBGFORTRANPATH= #/usr/lib/gcc/x86_64-redhat-linux/4.1.2
# LIBSTDCPP=/lib64
LIBSLHAPDF+=-L$(LIBGFORTRANPATH) -lgfortranbegin -lgfortran -L$(LIBSTDCPP) -lstdc++
endif
LIBS+=$(LIBSLHAPDF)
else
PDFPACK=mlmpdfif.o hvqpdfpho.o
endif


ifeq ("$(ANALYSIS)","default")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_bookhist-multi.o pwhg_analysis.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
#PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetCDFMidPointwrap.o fastjetD0RunIIConewrap.o fastjetfortran.o
#PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetfortran.o
#PWHGANAL+=  fastjetfortran.o
else
PWHGANAL=pwhg_bookhist-multi.o pwhg_analysis-dummy.o
endif


%.o: %.f $(INCLUDE) | $(OBJDIR)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.f90 $(INCLUDE) | $(OBJDIR)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.F90 $(INCLUDE) | $(OBJDIR)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.c | $(OBJDIR)
	$(CC) $(DEBUG) -c -o $(OBJ)/$@ $^ 

%.o: %.cc | $(OBJDIR)
	$(CXX) $(DEBUG) -c -o $(OBJ)/$@ $^ $(FJCXXFLAGS)
LIBS+=-lz
USER=init_couplings.o init_processes.o Born_phsp.o Born.o virtual.o \
     ttW_interface.o real.o ttW_decay.o $(PWHGANAL)


PWHG=pwhg_main.o pwhg_init.o bbinit.o btilde.o lhefwrite.o		\
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
	validflav.o $(PDFPACK) $(USER) $(FPEOBJ) lhefread.o pwhg_io_interface.o rwl_weightlists.o rwl_setup_param_weights.o

LIBDIRMG=$(OBJ)
LINKMGLIBS=-L$(LIBDIRMG) -lmadgraph -lmodel -ldhelas3 -ldecay
LINKNLOXLIBS=$(TEST_LIB_DIRS) -lfprocess $(TEST_LIBS)

MADLIBS=libmadgraph.a libmodel.a libdhelas3.a  libdecay.a
NLOXLIBS=libfprocess.a libtred.a libqcdloops.a libff.a liblavh_olo.a

# target to generate LHEF output
pwhg_main: $(PWHG) $(MADLIBS) 
	$(FF) $(patsubst %,$(OBJ)/%,$(PWHG)) $(LINKMGLIBS) $(LINKNLOXLIBS) $(LIBS) $(LIBSFASTJET) $(STATIC) -o $@


LHEF=lhef_analysis.o boostrot.o random.o cernroutines.o		\
     opencount.o powheginput.o $(PWHGANAL)	\
     lhefread.o pwhg_io_interface.o rwl_weightlists.o newunit.o pwhg_analysis_driver.o $(FPEOBJ)

# target to analyze LHEF output
lhef_analysis:$(LHEF)
	$(FF) $(patsubst %,$(OBJ)/%,$(LHEF)) $(LIBS) $(LIBSFASTJET) $(STATIC)  -o $@ 


# target to read event file, shower events with HERWIG + analysis
HERWIG=main-HERWIG.o setup-HERWIG-lhef.o herwig.o boostrot.o	\
	powheginput.o $(PWHGANAL) lhefread.o pwhg_io_interface.o rwl_weightlists.o	\
	pdfdummies.o opencount.o $(FPEOBJ) 

main-HERWIG-lhef: $(HERWIG)
	$(FF) $(patsubst %,$(OBJ)/%,$(HERWIG))  $(LIBSFASTJET)  $(STATIC) -o $@

# target to read event file, shower events with PYTHIA + analysis
PYTHIA=main-PYTHIA.o setup-PYTHIA-lhef.o pythia.o boostrot.o powheginput.o \
	$(PWHGANAL) lhefread.o pwhg_io_interface.o rwl_weightlists.o newunit.o 	\
	pwhg_analysis_driver.o random.o cernroutines.o opencount.o	\
	$(FPEOBJ)

main-PYTHIA-lhef: $(PYTHIA)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA)) $(LIBS) $(LIBSFASTJET)  $(STATIC) -o $@

# target to cleanup
.PHONY: clean libdhelas3.a libmadgraph.a libmodel.a libdecay.a

XFFLAGS=$(DEBUG) $(OPT)

libdhelas3.a:
	cd DHELAS ; make FC="$(F77local)" F77="$(F77local)" XFFLAGS="$(XFFLAGS)" OBJ="$(OBJ)"

libmadgraph.a:
	cd Madlib ; make FC="$(F77local)" F77="$(F77local)" XFFLAGS"=$(XFFLAGS)" OBJ="$(OBJ)"

libdecay.a:
	cd decay ; make FC="$(F77local)" F77="$(F77local)" XFFLAGS"=$(XFFLAGS)" OBJ="$(OBJ)"

libmodel.a:
	cd MODEL ; make -j FC="$(F77local)" F77="$(F77local)" XFFLAGS="$(XFFLAGS)" OBJ="$(OBJ)"


clean:
	rm -f $(OBJ)/*.o $(OBJ)/*.mod $(OBJ)/*.a pwhg_main lhef_analysis main-HERWIG-lhef	\
	main-PYTHIA-lhef *.a DHELAS/*.o Madlib/*.o MODEL/*.o decay/*.o decay/lib/*.a            \
	decay/SOURCE/DHELAS/*.o decay/SOURCE/MODEL/*.o 

# target to generate object directory if it does not exist
$(OBJDIR):
	mkdir -p $(OBJDIR)

##########################################################################

