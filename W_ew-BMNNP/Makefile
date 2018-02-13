#-*- Makefile -*-
# Choose Fortran compiler: gfortran,g77,ifort (use recent version, for example 5.4.0)
#COMPILER=gfortran
COMPILER=gfortran
# Choose C++ compiler: g++
#CXX=g++
CXX=g++
# Choose PDF: native,lhapdf
# LHAPDF package has to be installed separately
#PDF = lhapdf
PDF = native
# Choose Analysis: none, default
# default analysis may require FASTJET package, that has to be installed separately (see below)
ANALYSIS=default
# For static linking uncomment the following
#STATIC= -static
ifeq ("$(COMPILER)","gfortran")
F77= $(COMPILER) -fno-automatic  -ffixed-line-length-none
## -fbounds-check sometimes causes a weird error due to non-lazy evaluation
## of boolean in gfortran.
#FFLAGS= -Wall -Wimplicit-interface -fbounds-check
## For floating point exception trapping  uncomment the following 
#FPE=-ffpe-trap=invalid,zero,overflow,underflow 
## gfortran 4.4.1 optimized with -O3 yields erroneous results
## Use -O2 to be on the safe side
OPT=-O2
# For debugging uncomment the following
ifdef DEBUG
DEBUG= -ggdb -pg -finit-real=nan
# FPE=-ffpe-trap=invalid,zero,overflow,underflow
OPT=
#FPE=-ffpe-trap=invalid,zero,overflow,underflow
endif
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


# Folder where object files are stored
OBJ = obj

# User defined location of HEPMC (needed by PHOTOS)
# HEPMCLOCATION=/usr/local
# LIBSHEPMC+=-L$(HEPMCLOCATION)/lib -lHepMC

PWD=$(shell pwd)
WDNAME=$(shell basename $(PWD))
VPATH= ./:../:$(OBJ)/

#user defined location of PHOTOS (C++ version)
# PHOTOS needs to be compiled using the same version of the g++ compiler used to compile the .cc files needed by the POWHEG-PYTHIA interface
#After compiling, there will be .a and .so files in the PHOTOS/lib folder. In order to force the linking to the .a libraries when producing
# the full executable, move the files outside that folder (this way, you don't need to specify the location of the .so file when running).
#PHOTOSCC_CONFIG=photoscc-config
#PHOTOSCC_LOCATION=$(shell $(PHOTOSCC_CONFIG) --prefix)
PHOTOSCC_LOCATION=$(PWD)/PHOTOS/
PHOTOSFLAGS+=-I$(PHOTOSCC_LOCATION)/include
LIBSPHOTOSCC=-L$(PHOTOSCC_LOCATION)/lib -lPhotosCxxInterface -lPhotosFortran -lstdc++ -ldl

# the line below is for PHOTOS 3.61
# LIBSPHOTOSCC=-L$(PHOTOSCC_LOCATION)/lib -lPhotospp -lPhotosppHEPEVT -lstdc++ -ldl


#user defined location of PYTHIA8

# Pythia 8.1xx
# PYTHIA8_CONFIG=pythia8-config
# PYTHIA8_CONFIG=
# PYTHIA8LOCATION=$(shell $(PYTHIA8_CONFIG) --prefix)
# FJCXXFLAGS+=-I$(PYTHIA8LOCATION)/include
# LIBPYTHIA8=-L$(PYTHIA8LOCATION)/lib/archive -lpythia8 -llhapdfdummy -lstdc++ -ldl

# Pythia 8.2xx
PYTHIA8_CONFIG=pythia8-config
#PYTHIA8_CONFIG=
PYTHIA8LOCATION=$(shell $(PYTHIA8_CONFIG) --prefix)
FJCXXFLAGS+=-I$(PYTHIA8LOCATION)/include
LIBPYTHIA8=-L$(PYTHIA8LOCATION)/lib/ -lpythia8 -lstdc++ -ldl


INCLUDE0=$(PWD)
INCLUDE1=$(shell dirname $(PWD))/include
FF=$(F77) $(FFLAGS) $(FPE) $(OPT) $(DEBUG) -I$(INCLUDE0) -I$(INCLUDE1)


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
 LIBSLHAPDF+= -L$(LIBGFORTRANPATH)  -lgfortranbegin -lgfortran -L$(LIBSTDCPP) -lstdc++
endif
LIBS+=$(LIBSLHAPDF)
else
PDFPACK=mlmpdfif.o hvqpdfpho.o
endif


PWHGANAL=pwhg_analysis-dummy.o

ifeq ("$(ANALYSIS)","default")
##To include Fastjet configuration uncomment the following lines. 
#FASTJET_CONFIG=$(shell which fastjet-config)
#LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
#FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis.o pwhg_bookhist-multi.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
#PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetCDFMidPointwrap.o fastjetD0RunIIConewrap.o fastjetfortran.o
#PWHGANAL+= fastjetfortran.o
endif

%.o: %.f $(INCLUDE)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.c
	$(CC) $(DEBUG) -c -o $(OBJ)/$@ $^ 

%.o: %.cc
	$(CXX) $(DEBUG) -c -o $(OBJ)/$@ $^ $(FJCXXFLAGS) $(PHOTOSFLAGS)


$(shell ../svnversion/svnversion.sh>/dev/null)

# Extra system libraries
LIBS+=-lz

# Main POWHEG target

USER=init_couplings.o init_processes.o Born_phsp.o Born.o virtual.o	\
     real.o real16.o $(PWHGANAL)

PWHG=pwhg_main.o pwhg_init.o bbinit.o btilde.o lhefwrite.o		\
	LesHouches.o LesHouchesreg.o gen_Born_phsp.o find_regions.o	\
	test_Sudakov.o pt2maxreg.o sigborn.o gen_real_phsp.o maxrat.o	\
	gen_index.o gen_radiation.o Bornzerodamp.o sigremnants.o	\
	random.o boostrot.o bra_ket_subroutines.o cernroutines.o	\
	init_phys.o powheginput.o pdfcalls.o sigreal.o sigcollremn.o	\
	pwhg_analysis_driver.o checkmomzero.o		\
	setstrongcoupl.o integrator.o newunit.o mwarn.o sigsoftvirt.o	\
	sigcollsoft.o sigvirtual.o reshufflemoms.o \
        setlocalscales.o validflav.o mint_upb.o scalupveto.o \
	pwhgreweight.o opencount.o ubprojections.o lhefread.o pwhg_io_interface.o \
	rwl_weightlists.o rwl_setup_param_weights.o $(PDFPACK) $(USER) $(FPEOBJ) 

pwhg_main:$(PWHG)
	$(FF) $(patsubst %,$(OBJ)/%,$(PWHG)) $(LIBS) $(LIBSFASTJET) $(STATIC) -o $@


# Target to analyze LHEF events
LHEF=lhef_analysis.o boostrot.o random.o cernroutines.o		\
     opencount.o powheginput.o $(PWHGANAL)	\
     lhefread.o pwhg_io_interface.o rwl_weightlists.o newunit.o pwhg_analysis_driver.o bra_ket_subroutines.o  $(FPEOBJ)
lhef_analysis:$(LHEF)
	$(FF) $(patsubst %,$(OBJ)/%,$(LHEF)) $(LIBS) $(LIBSFASTJET) $(STATIC)  -o $@ 


# Target to read event file, shower events with PYTHIA8.1xx (and PHOTOS) + analysis
PYTHIA81=main-PYTHIA8.o scalupveto.o scalupvetoqpy8.o pythia81F77.o boostrot.o powheginput.o rwl_weightlists.o \
        $(PWHGANAL) lhefread.o pwhg_analysis_driver.o pwhg_io_interface.o cernroutines.o newunit.o bra_ket_subroutines.o $(FPEOBJ)

main-PYTHIA81-lhef: $(PYTHIA81)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA81)) $(LIBPYTHIA8) $(LIBSPHOTOSCC) $(LIBS) $(STATIC) -o $@


# Target to read event file, shower events with PYTHIA8.2xx (and PHOTOS) + analysis
PYTHIA82=main-PYTHIA8.o scalupveto.o scalupvetoqpy8.o pythia82F77.o boostrot.o powheginput.o rwl_weightlists.o \
        $(PWHGANAL) lhefread.o pwhg_analysis_driver.o pwhg_io_interface.o cernroutines.o newunit.o bra_ket_subroutines.o $(FPEOBJ)

main-PYTHIA82-lhef: $(PYTHIA82)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA82)) $(LIBPYTHIA8) $(LIBSPHOTOSCC) $(LIBS) $(STATIC) -o $@


# Target to add QED Photos shower to LHEF events, produce updated LHEF file
INT_PHOTOS=main-PHOTOS-lhef.o scalupveto.o photosCCF.o boostrot.o powheginput.o rwl_weightlists.o lhefread.o \
pwhg_io_interface.o cernroutines.o newunit.o $(FPE OBJ)

main-PHOTOS-lhef: $(INT_PHOTOS)
	$(FF) $(patsubst %,$(OBJ)/%,$(INT_PHOTOS)) $(LIBSPHOTOSCC) $(LIBS) $(STATIC) -o $@


# Target to read event file, shower events with PYTHIA6 (and PHOTOS) + analysis
PYTHIA6=main-PYTHIA6.o scalupveto.o scalupvetoqpy6.o setup-PYTHIA6-lhef.o pythia.o boostrot.o \
	powheginput.o $(PWHGANAL) lhefread.o pwhg_io_interface.o rwl_weightlists.o newunit.o pdfdummies.o	\
	pwhg_analysis_driver.o random.o cernroutines.o opencount.o photos.o \
	$(FPEOBJ)

main-PYTHIA6-lhef: $(PYTHIA6)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA6)) $(LIBS) $(STATIC) -o $@


#  target to merge wp and wm samples
MERGE_wp_wm=merge_wp_wm.o newunit.o random.o cernroutines.o

merge_wp_wm: $(MERGE_wp_wm)
	$(FF) $(patsubst %.o,$(OBJ)/%.o,$(MERGE_wp_wm)) -o $@



# target to cleanup
.PHONY: clean
clean:
	rm -f $(OBJ)/*.o pwhg_main lhef_analysis main-PYTHIA81-lhef main-PYTHIA82-lhef main-PHOTOS-lhef main-PYTHIA6-lhef merge_wp_wm


# pwhg_main.o: svn.version
# lhefwrite.o: svn.version
