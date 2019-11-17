#-*- Makefile -*-
## Choose compiler: gfortran,ifort (g77 not supported, F90 constructs in use!)
COMPILER=gfortran
FC=$(COMPILER)

## Choose PDF: native,lhapdf
## LHAPDF package has to be installed separately
PDF=lhapdf

#Choose Analysis: none, WZ
## WZ analysis may require FASTJET package, that has to be installed separately (see below)
ANALYSIS=WZ

## For static linking uncomment the following
STATIC= #-static
#
ifeq ("$(COMPILER)","gfortran")	
OBJ=obj-gfortran
F77=gfortran -fno-automatic 	
## -fbounds-check sometimes causes a weird error due to non-lazy evaluation
## of boolean in gfortran.
#FFLAGS= -Wall -Wimplicit-interface -fbounds-check
## For floating point exception trapping  uncomment the following 
#FPE=-ffpe-trap=invalid,zero,overflow,underflow 
## gfortran 4.4.1 optimized with -O3 yields erroneous results
## Use -O2 to be on the safe side
OPT=-O2
## For debugging uncomment the following
#DEBUG= -ggdb -pg
ifdef DEBUG
OPT=-O0
endif
endif

ifeq ("$(COMPILER)","ifort")
OBJ=obj-ifort
F77 = ifort -save  -extend_source
CXX = icpc
LIBS = -limf
#FFLAGS =  -check
## For floating point exception trapping  uncomment the following 
#FPE = -fpe0
OPT = -O3 #-fast
## For debugging uncomment the following
#DEBUG= -debug -g
ifdef DEBUG
OPT=-O0
endif
endif

PWD=$(shell pwd)
WDNAME=$(shell basename $(PWD))
VPATH= ./:../:$(OBJ)/
#included by julien
vpath %.F $(PWD)
#

INCLUDE0=$(PWD)
INCLUDE1=$(PWD)/include
INCLUDE2=$(shell dirname $(PWD))/include
FF=$(F77) $(FFLAGS) $(FPE) $(OPT) $(DEBUG) -I$(INCLUDE0) -I$(INCLUDE1) -I$(INCLUDE2)


INCLUDE =$(wildcard *.h ../include/*.h  include/*.h)

ifeq ("$(PDF)","lhapdf")
LHAPDF_CONFIG=/work/ws/nemo/tu_ptiju01-hh_bbWW-0/lhapdf6/bin/lhapdf-config
PDFPACK=lhapdf6if.o lhapdf6ifcc.o
FJCXXFLAGS+= $(shell $(LHAPDF_CONFIG) --cxxflags)
LIBSLHAPDF= -Wl,-rpath,$(shell $(LHAPDF_CONFIG) --libdir)  -L$(shell $(LHAPDF_CONFIG) --libdir) -lLHAPDF
ifeq  ("$(STATIC)","-static") 
## If LHAPDF has been compiled with gfortran and you want to link it statically, you have to include
## libgfortran as well. The same holds for libstdc++. 
## One possible solution is to use fastjet, since $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
## does perform this inclusion. The path has to be set by the user. 
# LIBGFORTRANPATH= #/usr/lib/gcc/x86_64-redhat-linux/4.1.2
# LIBSTDCPP=/lib64
# LIBSLHAPDF+=  -L$(LIBGFORTRANPATH)  -lgfortranbegin -lgfortran -L$(LIBSTDCPP) -lstdc++
endif
LIBS+=$(LIBSLHAPDF)
else
PDFPACK=mlmpdfif.o hvqpdfpho.o
endif


ifeq ("$(ANALYSIS)","WZ")
##To include Fastjet configuration uncomment the following lines. 
#FASTJET_CONFIG=$(shell which fastjet-config)
FASTJET_CONFIG=/work/ws/nemo/tu_ptiju01-hh_bbWW-0/fastjet3/bin/fastjet-config
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_bookhist-multi.o pwhg_analysis-WZ.o fastjetfortran.o setcuts.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
#PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetCDFMidPointwrap.o fastjetD0RunIIConewrap.o fastjetfortran.o
else
# no dummy analysis implemented, only the full analysis is present in the repository
PWHGANAL=pwhg_analysis-dummy.o
endif

%.o: %.f $(INCLUDE)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.F $(INCLUDE)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.c
	$(CC) $(DEBUG) -c -o $(OBJ)/$@ $^ 

%.o: %.cc
	$(CXX) $(DEBUG) -c -o $(OBJ)/$@ $^ $(FJCXXFLAGS)

LIBS+=-lz
USER= setanomcoup.o smcouplings.o init_couplings.o init_processes.o  \
      Born_phsp.o Born.o suppfact2e.o virtual.o cpropfac.o real.o    \
      phi1_2.o phi3m0.o boost.o breit.o breitplusgam.o couplz.o      \
      spinoru.o qqb_wz.o amps_anom.o t.o a6tree.o vpole.o qqb_wz_v.o \
      a6loop.o lnrat.o fa.o lfunctions.o L34_12.o i3m.o dclaus.o     \
      BigT.o qqb_wz_g.o wzamps.o a7tree.o b7tree.o thetastar_routines.o $(PWHGANAL)


PWHG=pwhg_main.o pwhg_init.o bbinit.o btilde.o lhefwrite.o		\
	LesHouches.o LesHouchesreg.o gen_Born_phsp.o find_regions.o	\
	test_Sudakov.o pt2maxreg.o sigborn.o gen_real_phsp.o maxrat.o	\
	gen_index.o gen_radiation.o Bornzerodamp.o sigremnants.o	\
	random.o boostrot.o bra_ket_subroutines.o cernroutines.o	\
	init_phys.o powheginput.o pdfcalls.o sigreal.o sigcollremn.o	\
	pwhg_analysis_driver.o checkmomzero.o reshufflemoms.o           \
	setstrongcoupl.o integrator.o newunit.o mwarn.o sigsoftvirt.o	\
	sigcollsoft.o sigvirtual.o  setlocalscales.o validflav.o mint_upb.o  \
	pwhgreweight.o opencount.o ubprojections.o utils.o                   \
	randomizeckm.o $(PDFPACK) $(USER) $(FPEOBJ)                          \
	lhefread.o pwhg_io_interface.o rwl_weightlists.o rwl_setup_param_weights.o

# target to generate LHEF output
pwhg_main:$(PWHG)
	$(FF) $(patsubst %,$(OBJ)/%,$(PWHG)) $(LIBS) $(LIBSFASTJET) $(STATIC) -o $@

LHEF=lhef_analysis.o boostrot.o random.o cernroutines.o		\
     opencount.o powheginput.o $(PWHGANAL)	\
      lhefread.o pwhg_io_interface.o rwl_weightlists.o newunit.o pwhg_analysis_driver.o utils.o $(FPEOBJ)

# target to analyze LHEF output
lhef_analysis:$(LHEF)
	$(FF) $(patsubst %,$(OBJ)/%,$(LHEF)) $(LIBS) $(LIBSFASTJET) $(STATIC)  -o $@ 



# target to read event file, shower events with HERWIG + analysis
HERWIG=main-HERWIG.o setup-HERWIG-lhef.o herwig.o boostrot.o	\
	powheginput.o $(PWHGANAL) lhefread.o pwhg_io_interface.o rwl_weightlists.o utils.o	\
	pdfdummies.o opencount.o random.o newunit.o cernroutines.o $(FPEOBJ)


main-HERWIG-lhef: $(HERWIG)
	$(FF) $(patsubst %,$(OBJ)/%,$(HERWIG))  $(LIBSFASTJET)  $(STATIC) -o $@

# target to read event file, shower events with PYTHIA + analysis
PYTHIA=main-PYTHIA.o setup-PYTHIA-lhef.o pythia.o boostrot.o powheginput.o		\
	$(PWHGANAL) lhefread.o pwhg_io_interface.o rwl_weightlists.o newunit.o pdfdummies.o utils.o	\
	pwhg_analysis_driver.o random.o cernroutines.o opencount.o zlibdummy.o	\
	$(FPEOBJ)

main-PYTHIA-lhef: $(PYTHIA)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA)) $(LIBSFASTJET)  $(STATIC) -o $@

# target to cleanup
.PHONY: clean
clean:
	rm -f $(OBJ)/*.o pwhg_main lhef_analysis main-HERWIG-lhef	\
	main-PYTHIA-lhef

