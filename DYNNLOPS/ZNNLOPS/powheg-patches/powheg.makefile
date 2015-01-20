#-*- Makefile -*-
## COMPILER: gfortran, g77, ifort
COMPILER=gfortran
## PDF: native, lhapdf
## For "lhapdf", the LAHPDF package has to be installed separately
PDF=lhapdf
## ANALYSIS: none, default
## "default" analysis may require FASTJET package, that has to be 
##           installed separately (see below)
ANALYSIS=minlo
## For static linking uncomment the following
#STATIC=-static
#
ifeq ("$(COMPILER)","gfortran")	
F77= gfortran -fno-automatic  -ffixed-line-length-132	
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
endif

ifeq ("$(COMPILER)","g77")
F77= g77 -fno-automatic 
#FFLAGS= -Wall -ffortran-bounds-check
## For floating point exception trapping  uncomment the following 
#FPEOBJ=trapfpe.o
OPT=-O3
## For debugging uncomment the following
#DEBUG= -ggdb -pg
endif


ifeq ("$(COMPILER)","ifort")
F77 = ifort -extend_source
OBJ=obj-ifort
#FFLAGS =  -check
## For floating point exception trapping  uncomment the following 
#FPE = -fpe0
OPT = -O3 #-fast
## For debugging uncomment the following
#DEBUG= -debug -g
endif


OBJ=obj-$(COMPILER)



PWD=$(shell pwd)
WDNAME=$(shell basename $(PWD))
VPATH= DYNNLOPS/ZNNLOPS/powheg-patches/:./:../:$(OBJ)/

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
## does perform this inclusion. The path has to be set by the user. 
# LIBGFORTRANPATH=/usr/lib/gcc/x86_64-redhat-linux/4.4
# LIBSTDCPP=/usr/lib/gcc/i386-redhat-linux/4.3.0/
# LIBSLHAPDF +=  -L$(LIBGFORTRANPATH)  -lgfortranbegin -lgfortran -L$(LIBSTDCPP) -lstdc++
endif
LIBS +=  $(LIBSLHAPDF) 
else
PDFPACK=mlmpdfif.o hvqpdfpho.o
endif



PWHGANAL=pwhg_analysis-dummy.o pwhg_bookhist-multi.o

ifeq ("$(ANALYSIS)","default")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis.o pwhg_bookhist.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetCDFMidPointwrap.o fastjetD0RunIIConewrap.o 
endif

ifeq ("$(ANALYSIS)","BnJ")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis-BnJ.o pwhg_bookhist-multi.o 
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetfortran2.o
endif

ifeq ("$(ANALYSIS)","minlo")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis-minlo.o pwhg_bookhist-multi.o 
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetfortran2.o
endif

PYTHIA8LOCATION=/lscrx/karlberg/pythia8185
FJCXXFLAGS+=-I$(PYTHIA8LOCATION)/include
FJCXXFLAGS+=-I$(PYTHIA8LOCATION)/include/Pythia8
LIBPYTHIA8=-L$(PYTHIA8LOCATION)/lib/archive -lpythia8 -lstdc++



%.o: %.f $(INCLUDE)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.c
	$(CC) $(DEBUG) -c -o $(OBJ)/$@ $^ 

%.o: %.cc
	$(CXX) $(DEBUG) -c -o $(OBJ)/$@ $^ $(FJCXXFLAGS)

USER=init_couplings.o init_processes.o Born_phsp.o Born.o virtual.o \
		      real.o $(PWHGANAL)

PWHG=pwhg_main.o pwhg_init.o bbinit.o btilde.o lhefwrite.o		\
	LesHouches.o LesHouchesreg.o gen_Born_phsp.o find_regions.o	\
	test_Sudakov.o pt2maxreg.o sigborn.o gen_real_phsp.o maxrat.o	\
	gen_index.o gen_radiation.o Bornzerodamp.o sigremnants.o	\
	random.o boostrot.o bra_ket_subroutines.o cernroutines.o	\
	init_phys.o powheginput.o pdfcalls.o sigreal.o sigcollremn.o	\
        pwhg_analysis_driver.o checkmomzero.o		\
	setstrongcoupl.o integrator.o newunit.o mwarn.o sigsoftvirt.o	\
	reshufflemoms.o auxiliary.o boost.o                                                \
	sigcollsoft.o sigvirtual.o setlocalscales2.o validflav.o mint_upb.o  \
	pwhgreweight.o opencount.o ubprojections.o minlo_checks.o \
        $(PDFPACK) $(USER) $(FPEOBJ)

# target to generate LHEF output
pwhg_main:$(PWHG)
	$(FF) $(patsubst %,$(OBJ)/%,$(PWHG)) $(LIBS) $(LIBSFASTJET) $(STATIC) -o $@

LHEF=lhef_analysis.o boostrot.o random.o cernroutines.o		\
     opencount.o powheginput.o auxiliary.o boost.o $(PWHGANAL)	\
     lhefread.o newunit.o pwhg_analysis_driver.o $(FPEOBJ)

# target to analyze LHEF output
lhef_analysis:$(LHEF)
	$(FF) $(patsubst %,$(OBJ)/%,$(LHEF)) $(LIBS) $(LIBSFASTJET) $(STATIC)  -o $@ 



# target to read event file, shower events with HERWIG + analysis
HERWIG=main-HERWIG.o setup-HERWIG-lhef.o herwig.o boostrot.o	\
	powheginput.o $(PWHGANAL) lhefread.o auxiliary.o boost.o bra_ket_subroutines.o	\
	pdfdummies.o opencount.o pwhg_analysis_driver.o newunit.o cernroutines.o random.o $(FPEOBJ) 

main-HERWIG-lhef: $(HERWIG)
	$(FF) $(patsubst %,$(OBJ)/%,$(HERWIG))  $(LIBSFASTJET)  $(STATIC) -o $@

# target to read event file, shower events with PYTHIA + analysis
PYTHIA=main-PYTHIA.o setup-PYTHIA-lhef2.o pythia.o boostrot.o powheginput.o		\
	$(PWHGANAL) lhefread.o newunit.o auxiliary.o boost.o	\
	pwhg_analysis_driver.o random.o cernroutines.o opencount.o bra_ket_subroutines.o	\
	$(FPEOBJ)

main-PYTHIA-lhef: $(PYTHIA)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA)) $(LIBSFASTJET)  $(STATIC) $(LIBS) -o $@

# target to read event file, shower events with PYTHIA8 + analysis
PYTHIA8=main-PYTHIA8.o pythia8F77.o boostrot.o powheginput.o		\
	$(PWHGANAL) lhefread.o newunit.o auxiliary.o boost.o	\
	pwhg_analysis_driver.o random.o cernroutines.o opencount.o bra_ket_subroutines.o	\
	$(FPEOBJ)

main-PYTHIA8-lhef: $(PYTHIA8)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA8)) $(LIBSFASTJET) $(LIBPYTHIA8) $(LIBS) $(STATIC) -o $@

# target to read event file, shower events with PYTHIA8 + analysis
PYTHIA8_31=main-PYTHIA8_31.o pythia8F77_31.o boostrot.o powheginput.o           \
	$(PWHGANAL) lhefread.o newunit.o auxiliary.o boost.o    \
	pwhg_analysis_driver.o random.o cernroutines.o opencount.o bra_ket_subroutines.o        \
	$(FPEOBJ)

main-PYTHIA8_31-lhef: $(PYTHIA8_31)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA8_31)) $(LIBSFASTJET) $(LIBPYTHIA8) $(LIBS) $(STATIC) -o $@



# target to cleanup
.PHONY: clean
clean:
	rm -f `echo $(OBJ)/*.o | sed "s!$(OBJ)/pythia.o!! ; s!$(OBJ)/herwig.o!!"` \
        pwhg_main lhef_analysis main-HERWIG-lhef	\
	main-PYTHIA-lhef

veryclean:
	rm -f $(OBJ)/*.o pwhg_main lhef_analysis main-HERWIG-lhef	\
	main-PYTHIA-lhef
