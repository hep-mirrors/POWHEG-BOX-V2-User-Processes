#-*- Makefile -*-
## Choose compiler: gfortran,ifort ( g77 no longer compatible )
COMPILER=gfortran
## Choose PDF: native,lhapdf
## LHAPDF package has to be installed separately
PDF = lhapdf
#Choose Analysis: none, default
## default analysis may require FASTJET package, that has to be installed separately (see below)
ANALYSIS = default
## For static linking uncomment the following
#STATIC= -static
#
ifeq ("$(COMPILER)","gfortran")
FF= gfortran -fno-automatic -ffixed-line-length-132
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
MOD= -J mod
endif

ifeq ("$(COMPILER)","ifort")
FF = ifort -save  -extend_source -assume bscc
CXX = icpc
LIBS = -limf
#FFLAGS =  -check
## For floating point exception trapping  uncomment the following
#FPE = -fpe0
OPT = -O3 #-fast
## For debugging uncomment the following
#DEBUG= -debug -g
MOD = -module mod
endif



PWD=$(shell pwd)
WDNAME=$(shell basename $(PWD))
VPATH= ./:../:obj/

INCLUDE0=$(PWD)
INCLUDE1=$(shell dirname $(PWD))/include
FF+= $(FFLAGS) $(FPE) $(OPT) $(DEBUG) -I$(INCLUDE0) -I$(INCLUDE1) 

INCLUDE =$(wildcard ../include/*.h *.h include/*.h)

ifeq ("$(PDF)","lhapdf")
LHAPDF_CONFIG=lhapdf-config
LHAPDF_VERSION=$(shell $(LHAPDF_CONFIG) --version | cut -d'.' -f1)
ifeq ("$(LHAPDF_VERSION)","6")
   PDFPACK=lhapdf6if.o lhapdf6ifcc.o
else
   PDFPACK=lhapdfif.o
endif
LIBSLHAPDF= -Wl,-rpath,$(shell $(LHAPDF_CONFIG) --libdir)  -L$(shell $(LHAPDF_CONFIG) --libdir) -lLHAPDF
ifeq  ("$(STATIC)","-static")
## If LHAPDF has been compiled with gfortran and you want to link it statically, you have to include
## libgfortran as well. The same holds for libstdc++.
## One possible solution is to use fastjet, since $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
## does perform this inclusion. The path has to be set by the user.
 LIBGFORTRANPATH=/usr/lib/gcc/x86_64-redhat-linux/4.1.2
 LIBSTDCPP=/lib64
 LIBSLHAPDF+=  -L$(LIBGFORTRANPATH)  -lgfortranbegin -lgfortran -L$(LIBSTDCPP) -lstdc++
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
PWHGANAL=pwhg_analysis.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o
else
PWHGANAL=pwhg_analysis-dummy.o
endif

all: pwhg_main

# target to build the modified btilde local version (btilde_ggH)
# in process subdirectory
btilde.o: ../btilde.f $(INCLUDE)
	sh make_btilde.sh
	$(FF) -c -o obj/$@ btilde_ggH.f

# target to build the modified sigremnants local version (sigremnants_ggH)
# in process subdirectory
sigremnants.o: ../sigremnants.f $(INCLUDE)
	sh make_sigremnants.sh
	$(FF) -c -o obj/$@ sigremnants_ggH.f

pwhg_cpHTO_reweight.o: pwhg_cpHTO_reweight.f $(INCLUDE)
	$(FF) -c $(MOD) -o obj/$@ $<

%.o: %.f $(INCLUDE)
	$(FF) -c -o obj/$@ $<

%.o: %.c
	$(CC) $(DEBUG) -c -o obj/$@ $^

%.o: %.cc
	$(CXX) $(DEBUG) -c -o obj/$@ $^ $(FJCXXFLAGS)

LIBS+=-lz

USER=init_couplings.o init_processes.o Born_phsp.o Born.o virtual.o \
        real.o btilde.o pt2maxreg.o LesHouchesreg.o pwhg_cpHTO_reweight.o \
	$(PWHGANAL)

PWHG=pwhg_main.o pwhg_init.o bbinit.o lhefwrite.o LesHouches.o		\
	gen_Born_phsp.o find_regions.o test_Sudakov.o sigborn.o		\
	gen_real_phsp.o maxrat.o gen_index.o gen_radiation.o		\
	Bornzerodamp.o sigremnants.o random.o boostrot.o		\
	bra_ket_subroutines.o cernroutines.o init_phys.o		\
	powheginput.o pdfcalls.o sigreal.o sigcollremn.o		\
	pwhg_bookhist-multi-new.o pwhg_analysis_driver.o		\
	checkmomzero.o setstrongcoupl.o integrator.o newunit.o		\
	mwarn.o sigsoftvirt.o sigcollsoft.o sigvirtual.o		\
	setlocalscales.o validflav.o pwhgreweight.o			\
	pwhg_io_interface.o rwl_weightlists.o lhefread.o		\
	rwl_setup_param_weights.o opencount.o ubprojections.o utils.o	\
	mint_upb.o $(PDFPACK) $(USER) $(FPEOBJ)

# target to generate LHEF output
pwhg_main:$(PWHG)
	$(FF) $(patsubst %,obj/%,$(PWHG)) $(LIBS) $(LIBSFASTJET) $(STATIC) -o $@

LHEF=lhef_analysis.o boostrot.o random.o cernroutines.o opencount.o	\
     powheginput.o pwhg_bookhist-multi-new.o $(PWHGANAL) lhefread.o	\
     pwhg_io_interface.o rwl_weightlists.o newunit.o			\
     pwhg_analysis_driver.o $(FPEOBJ)

# target to analyze LHEF output
lhef_analysis:$(LHEF)
	$(FF) $(patsubst %,obj/%,$(LHEF)) $(LIBS) $(LIBSFASTJET) $(STATIC)  -o $@

# target to read event file, shower events with HERWIG + analysis
HERWIG=main-HERWIG.o setup-HERWIG-lhef.o herwig.o boostrot.o		\
	powheginput.o pwhg_bookhist-multi-new.o $(PWHGANAL) newunit.o	\
	lhefread.o pwhg_io_interface.o rwl_weightlists.o pdfdummies.o	\
	opencount.o $(FPEOBJ)

main-HERWIG-lhef: $(HERWIG)
	$(FF) $(patsubst %,obj/%,$(HERWIG)) $(LIBS) $(LIBSFASTJET)  $(STATIC) -o $@

# target to read event file, shower events with PYTHIA + analysis
PYTHIA=main-PYTHIA.o setup-PYTHIA-lhef.o pythia.o boostrot.o		\
	powheginput.o pwhg_bookhist-multi-new.o $(PWHGANAL)		\
	lhefread.o pwhg_io_interface.o rwl_weightlists.o newunit.o	\
	pdfdummies.o pwhg_analysis_driver.o random.o cernroutines.o	\
	opencount.o $(FPEOBJ)

main-PYTHIA-lhef: $(PYTHIA)
	$(FF) $(patsubst %,obj/%,$(PYTHIA)) $(LIBS) $(LIBSFASTJET)  $(STATIC) -o $@

##########################################################################

lhapdf6ifcc.o: lhapdf6ifcc.cc
	$(CXX) $(DEBUG) -c -o obj/$@ $^ $(shell $(LHAPDF_CONFIG) --cxxflags)

# target to cleanup
.PHONY: clean
clean:
	rm -f obj/*.o mod/*.* pwhg_main lhef_analysis main-HERWIG-lhef	\
	main-PYTHIA-lhef
