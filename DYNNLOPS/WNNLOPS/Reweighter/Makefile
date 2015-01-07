#-*- Makefile -*-
## Choose compiler: gfortran,ifort (g77 not supported, F90 constructs in use!)
COMPILER=gfortran
FC=$(COMPILER)
## Choose analysis
# NNLO, pheno, pheno_2, release
ANALYSIS=release
## For static linking uncomment the following
#STATIC= -static
#
ifeq ("$(COMPILER)","gfortran")	
F77=gfortran
## -fbounds-check sometimes causes a weird error due to non-lazy evaluation
## of boolean in gfortran.
#FFLAGS= -Wall -fbounds-check #-Wimplicit-interface 
## For floating point exception trapping  uncomment the following 
#FPE=-ffpe-trap=invalid,zero,overflow #,underflow 
## gfortran 4.4.1 optimized with -O3 yields erroneous results
## Use -O2 to be on the safe side
OPT=-O3 -fno-align-commons -mcmodel=large -fno-automatic -ffixed-line-length-none
## For debugging uncomment the following
#DEBUG= -ggdb 
endif

ifeq ("$(COMPILER)","ifort")
F77 = ifort
#CXX = icpc
#LIBS = -limf
#FFLAGS =  -check
## For floating point exception trapping  uncomment the following 
#FPE = -fpe0
OPT = -O3  -align all -extend_source -mcmodel=medium -shared-intel #-fast
## For debugging uncomment the following
#DEBUG= -debug -g
endif

ifdef DEBUG
#FPE=-ffpe-trap=invalid,zero,overflow #,underflow
OPT=-O0
endif

#ifeq ("$(COMPILER)","gfortran")
#FFLAGS +=-ffixed-line-length-132
#else
#FFLAGS +=-extend-source
#endif


PWD=$(shell pwd)
OBJ=$(PWD)/obj-$(COMPILER)

# The following assumed that NNLOPS is a subdirectory of HJ 
# if it is not then this ath needs to be adjusted 
#BOXmaindir=$(PWD)/../../../
#BOXmaindir=$(PWD)/../../POWHEG-BOX-V2
BOXmaindir=$(PWD)/../../../../
WJdir=$(PWD)/../../../

VPATH=$(PWD):$(BOXmaindir)/progress/:$(BOXmaindir)/:$(BOXmaindir):$(WJdir):$(OBJ)


INCLUDE1=$(WJdir)
INCLUDE2=$(BOXmaindir)/include
INCLUDE3=$(PWD)/../dynnlo-patches/
INCLUDE4=$(PWD)/../powheg-patches/

FF=$(F77) $(FFLAGS) $(FPE) $(OPT) $(DEBUG) -I$(INCLUDE4) -I$(INCLUDE3) -I$(INCLUDE1) -I$(INCLUDE2)  

#INCLUDE= $(INCLUDE4) $(INCLUDE3) $(INCLUDE1) $(INCLUDE2) 

INCLUDE =$(wildcard $(INCLUDE1)/*.h $(INCLUDE2)/*.h $(INCLUDE3)/*.h $(INCLUDE4)/*.h)

ifeq ("$(ANALYSIS)","release")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
#FASTJET_CONFIG=~/lib/fastjet242/bin/fastjet-config
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_bookhist-multi.o pwhg_analysis-release.o jet_finder-release.o fastjetfortran.o boostrot.o 
endif

%.o: %.f $(INCLUDE)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.F $(INCLUDE)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.c
	$(CC) $(DEBUG) -c -o $(OBJ)/$@ $^ 

%.o: %.cc
	$(CXX) $(DEBUG) -c -o $(OBJ)/$@ $^ $(FJCXXFLAGS)


MINNLO=minnlo.o cernroutines.o auxiliary.o opencount.o powheginput.o \
	lhefread.o lhef_readwrite.o newunit.o \
	get_wdamp.o boost.o\
	genclust_kt.o swapjet.o miscclust.o ptyrap.o r.o

# cernroutines: contains pwhg_exit, needed by pwhg_bookhist-multi.f
# auxiliary: needed by minnlo.f
# opencount: needed by minnlo.f
# powheginput: needed by cernroutines.f and pwhg_analysis_driver.o
# lhefread / lhef_readwrite: needed by minnlo.f
# newunit: needed by cernroutines.f and pwhg_bookhist-multi.f
# jet_finder / get_hdamp: needed by minnlo.f and by analysis
# genclust_kt: needed by jet_finder.f
# swapjet / miscclust: needed by genclust_kt.f
# ptyrap: needed in several places
# r: needed by miscclust.f

MINNLO+=$(PWHGANAL)

minnlo: $(MINNLO) 
	$(FF) $(patsubst %.o,$(OBJ)/%.o,$(MINNLO)) $(LIBS) $(LIBSFASTJET) $(STATIC) -o $@


# target to cleanup
.PHONY: clean veryclean $(OBJ)

$(OBJ):
	if ! [ -d $(OBJ) ] ; then mkdir $(OBJ) ; fi

clean:
	rm -f minnlo ; \
        cd $(OBJ) ; rm -f *.o 


veryclean:
	cd $(OBJ) ; \rm *


