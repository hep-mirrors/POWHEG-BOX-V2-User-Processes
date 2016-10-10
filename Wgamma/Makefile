#-*- Makefile -*-
## Choose compiler: gfortran,g77,ifort
COMPILER=gfortran
## Choose PDF: native,lhapdf
## LHAPDF package has to be installed separately
PDF = lhapdf
#Choose Analysis: none, default, atlas
## default analysis may require FASTJET package, that has to be installed separately (see below)
ANALYSIS=default
## For static linking uncomment the following
#STATIC= -static
#
ifeq ("$(COMPILER)","gfortran")	
F77= gfortran -fno-automatic -ffixed-line-length-none
# -fbounds-check
#-fno-whole-file
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
#FPE=-ffpe-trap=invalid,zero,overflow,underflow
endif
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
F77 = ifort -save  -extend_source
CXX = icpc
LIBS = -limf
#FFLAGS =  -check
## For floating point exception trapping  uncomment the following 
#FPE = -fpe0
OPT = -O3 #-fast
## For debugging uncomment the following
#DEBUG= -debug -g
endif

#necessary staff for PHOTOS++ and PYTHIA8
HEPMC_CONFIG= hepmc-config
HEPMCLOCATION = $(shell $(HEPMC_CONFIG) --prefix)
LIBSHEPMC += -L$(HEPMCLOCATION)/lib -lHepMC
PHOTOSCC_CONFIG=photoscc-config
PHOTOSCC_LOCATION= $(shell $(PHOTOSCC_CONFIG) --prefix)
LIBSPHOTOSCC=-L$(PHOTOSCC_LOCATION)/lib -lPhotosCxxInterface -lPhotosFortran
PYTHIA8_CONFIG=pythia8-config
PYTHIA8LOCATION=$(shell $(PYTHIA8_CONFIG) --prefix)
FJCXXFLAGS+=-I$(PYTHIA8LOCATION)/include -I$(PHOTOSCC_LOCATION)/include
LIBPYTHIA8=-L$(PYTHIA8LOCATION)/lib/archive -lpythia8 -llhapdfdummy -lstdc++

PWD=$(shell pwd)
OBJ=$(PWD)/obj-$(COMPILER)
WDNAME=$(shell basename $(PWD))
VPATH= ./:../:$(OBJ)

INCLUDE0=$(PWD)
INCLUDE1=$(PWD)/include
INCLUDE2=$(shell dirname $(PWD))/include
FF=$(F77) $(FFLAGS) $(FPE) $(OPT) $(DEBUG) -I$(INCLUDE0) -I$(INCLUDE1) -I$(INCLUDE2)


INCLUDE =$(wildcard ../include/*.h *.h include/*.h)

ifeq ("$(PDF)","lhapdf")
LHAPDF_CONFIG=lhapdf-config
PDFPACK=lhapdf6if.o lhapdf6ifcc.o
FJCXXFLAGS+= $(shell $(LHAPDF_CONFIG) --cxxflags)
LIBSLHAPDF= -Wl,-rpath,$(shell $(LHAPDF_CONFIG) --libdir)  -L$(shell $(LHAPDF_CONFIG) --libdir) -lLHAPDF -lstdc++
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


PWHGANAL=pwhg_analysis-dummy.o pwhg_bookhist-multi.o uti.o


ifeq ("$(ANALYSIS)","default")
##To include Fastjet configuration uncomment the following lines. 
#FASTJET_CONFIG=$(shell which fastjet-config)
#LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
#FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis.o pwhg_bookhist-multi.o uti.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
#PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetCDFMidPointwrap.o fastjetD0RunIIConewrap.o fastjetfortran.o
#PWHGANAL+= fastjetfortran.o buildjets.o
endif

ifeq ("$(ANALYSIS)","atlas")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis-atlas.o pwhg_bookhist-multi.o uti.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
#PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetCDFMidPointwrap.o fastjetD0RunIIConewrap.o fastjetfortran.o
PWHGANAL+= fastjetfortran.o buildjets.o
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
USER=init_couplings.o init_processes.o Born_phsp.o Born.o virtual.o	\
     real.o MCFM/spinoru.o MCFM/qqb_wgam.o MCFM/lfunctions.o \
     MCFM/fagamma.o MCFM/fbgamma.o MCFM/qqb_wgam_v.o MCFM/qqb_wgam_g.o $(PWHGANAL)

PWHG=pwhg_main.o pwhg_init.o bbinit.o btilde.o lhefwrite.o		\
	LesHouches.o LesHouchesreg.o gen_Born_phsp.o find_regions.o	\
	test_Sudakov.o pt2maxreg.o sigborn.o gen_real_phsp.o maxrat.o	\
	gen_index.o gen_radiation.o Bornzerodamp.o sigremnants.o	\
	random.o boostrot.o bra_ket_subroutines.o cernroutines.o	\
	init_phys.o powheginput.o pdfcalls.o sigreal.o sigcollremn.o	\
	pwhg_analysis_driver.o checkmomzero.o		        \
	setstrongcoupl.o integrator.o newunit.o mwarn.o sigsoftvirt.o	\
	sigcollsoft.o sigvirtual.o reshufflemoms.o setlocalscales.o \
	validflav.o mint_upb.o pwhgreweight.o opencount.o ubprojections.o \
        $(PDFPACK) $(USER) $(FPEOBJ) lhefread.o pwhg_io_interface.o rwl_weightlists.o rwl_setup_param_weights.o

# Get SVN info for SVN version stamping code
$(shell ../svnversion/svnversion.sh>/dev/null)

# target to generate LHEF output
pwhg_main:$(PWHG)
	$(FF) $(patsubst %,$(OBJ)/%,$(PWHG)) $(LIBS) $(LIBSFASTJET) $(STATIC) -o $@

LHEF=lhef_analysis.o boostrot.o random.o cernroutines.o		\
     opencount.o powheginput.o $(PWHGANAL)	\
     lhefread.o pwhg_io_interface.o rwl_weightlists.o newunit.o pwhg_analysis_driver.o $(FPEOBJ)

# target to analyze LHEF output
lhef_analysis:$(LHEF)
	$(FF) $(patsubst %,$(OBJ)/%,$(LHEF)) $(LIBS) $(LIBSFASTJET) $(STATIC)  -o $@ 



# target to read event file, shower events with PYTHIA + analysis
PYTHIA=main-PYTHIA.o setup-PYTHIA-lhef.o pythia.o boostrot.o powheginput.o		\
	$(PWHGANAL) lhefread.o pwhg_io_interface.o rwl_weightlists.o newunit.o pdfdummies.o	\
	pwhg_analysis_driver.o random.o cernroutines.o opencount.o	 \
	reshufflemoms.o scalupveto.o scalupvetoqpy6.o photos.o $(FPEOBJ)

main-PYTHIA-lhef: $(PYTHIA)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA)) $(LIBSFASTJET)  $(STATIC) -o $@

PYTHIA8=main-PYTHIA8.o pythia8F77.o boostrot.o powheginput.o \
	$(PWHGANAL) lhefread.o pwhg_io_interface.o rwl_weightlists.o newunit.o pdfdummies.o \
	pwhg_analysis_driver.o random.o cernroutines.o opencount.o scalupveto.o 	\
	$(FPEOBJ)

main-PYTHIA8-lhef: $(PYTHIA8)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA8)) $(LIBSFASTJET) $(LIBPYTHIA8) $(LIBSHEPMC) $(LIBSPHOTOSCC) -L/usr/local/lib $(STATIC)$(LIBSLHAPDF) -o $@

# target to cleanup
.PHONY: clean
clean:
	rm -f $(OBJ)/*.o $(OBJ)/MCFM/*.o pwhg_main lhef_analysis main-HERWIG-lhef	\
	main-PYTHIA-lhef main-PYTHIA8-lhef

# target to cleanup
.PHONY: veryclean
veryclean:
	rm -f $(OBJ)/*.o $(OBJ)/MCFM/*.o pwhg_main lhef_analysis main-HERWIG-lhef	\
	main-PYTHIA-lhef main-PYTHIA8-lhef

###################################################################
# From here on there are targets specific to the W implementation
##################################################################



# Dependencies of SVN version stamp code
pwhg_main.o: svn.version
lhefwrite.o: svn.version


