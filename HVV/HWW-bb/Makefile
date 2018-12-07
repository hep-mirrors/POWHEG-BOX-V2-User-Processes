########################################################################
#                          -*- Makefile -*-                            #
########################################################################
## Flags

## Compiler and Compiler Flags
#  use this convention:
#  CC          C compiler command
#  CFLAGS      C compiler flags
#  LDFLAGS     linker flags, e.g. -L<lib dir> if you have libraries in a
#              nonstandard directory <lib dir>
#  LIBS        libraries to pass to the linker, e.g. -l<library>
#  CPPFLAGS    C/C++/Objective C preprocessor flags, e.g. -I<include dir> if
#              you have headers in a nonstandard directory <include dir>
#  CPP         C preprocessor
#  CXX         C++ compiler command
#  CXXFLAGS    C++ compiler flags
#  CXXCPP      C++ preprocessor
#  FC          Fortran compiler command
#  FCFLAGS     Fortran compiler flags

SHELL = /bin/sh
.SUFFIXES:
.SUFFIXES: .c .f .F .cc .cpp .h .hh .inc .o .a
.DEFAULT_GOAL := pwhg_main_bbhww


# Fortran compiler
# use "./configure ifort" first
#FC  = ifort
# use "./configure gfortran" first
FC       = gfortran
# check gfortran compiler version
ifeq ($(FC), gfortran)
  VERSIONGTEQ5 = $(shell expr `gfortran -dumpversion | cut -f1 -d.` \>= 5)
  #$(error $(shell expr `gfortran -dumpversion | cut -f1 -d.`))
  ifeq ($(VERSIONGTEQ5), 0)
    $(error gfortran compiler version >=5 required) 
  endif
endif
# C and C++ compilers
CCCOMP   = gcc
CXXCOMP  = g++

# Fortran compiler flags
ifeq ($(FC), ifort)
  FFLAGS   = -fpp -extend-source
else
  FFLAGS   = -fno-automatic -fno-range-check
  FFLAGS  += -ffixed-line-length-none -lgfortran -ff2c -DU77EXT=0 -DQuad=0
endif
# C and C++ compiler flags
CFLAGS   = -g -fomit-frame-pointer -ffast-math -Wall -m64
UNAME    = $(shell uname)
ifeq ($(UNAME), Darwin)
  # only for Mac OS X
  CFLAGS  += -stdlib=libstdc++ -mmacosx-version-min=10.6 -Qunused-arguments
endif
CXXFLAGS = $(CFLAGS)

## PDF
## choose PDF: native,lhapdf
## LHAPDF package has to be installed separately
## The user should provide below the path to their lhapdf-config
PDF = lhapdf
ifeq ("$(PDF)","lhapdf")
  LHAPDF_CONFIG = /work/ws/nemo/tu_ptiju01-hh_bbWW-0/lhapdf6/bin/lhapdf-config
endif
## static linking? yes, no
STATIC_LHAPDF = no

# choose analysis: none, default
# default: requires FASTJET package, has to be installed separately
ANALYSIS = default

## FASTJET
## path or name of fastjet config executable
#  FASTJET_CONFIG=$(shell which fastjet-config)
  FASTJET_CONFIG=/work/ws/nemo/tu_ptiju01-hh_bbWW-0/fastjet3/bin/fastjet-config
## static linking? yes, no
STATIC_FJ = no

## warning for type-conversions-> basically useless, as those occur in too many places
#WARN = -Wconversion
## -fbounds-check sometimes causes a weird error due to non-lazy evaluation
## of boolean in gfortran.
#FFLAGS = -fbounds-check
#FFLAGS = -Wall -Wtabs -Wall -Wimplicit-interface
## gfortran 4.4.1 optimized with -O3 yields erroneous results
## Use -O2 to be on the safe side
OPT = -O2

## For debugging uncomment the following
#DEBUG = -ggdb -pg -D DEBUG
## For more verbose debugging uncomment the following
#DEBUG = -ggdb -pg -D DEBUG -D DEBUGV
#DEBUG = -ggdb -pg -D DEBUGV
## If you wish to show all possible debug output
#DEBUG = -ggdb -pg -D DEBUG -D DEBUGV -D DEBUGQ -D CHECK
# Preprocessor
PREPRO = -cpp

## Additional Flags,
#Add Higgs coupling to bottom induced processes in MadGraph: -D MAD_HIGGS
#Check UV finiteness in FormCalc Virtuals: -D CHECKUV
#FLAGS = -D CHECKUV


### generate directory obj, if not yet existing
$(shell mkdir -p build)
$(shell mkdir -p run)



########################################################################
#           -*- no editing is required below this line -*-             #
########################################################################



########################################################################
## Paths

WORKINGDIR = $(shell pwd)
DISTRIBDIR = $(shell pwd)/..
PWHGDIR    = $(DISTRIBDIR)/..

# main directories
TOOLS   = $(DISTRIBDIR)/tools
LIBDIR  = $(DISTRIBDIR)/Libraries
VIRT    = $(WORKINGDIR)/virtuals
REAL    = $(WORKINGDIR)/reals

# libraries directories
LT        = $(LIBDIR)/LoopTools-2.12
FJ        = $(TOOLS)/fastjet
PY        = $(TOOLS)/pythia

# include directories
UINCLUDE  = $(WORKINGDIR)/include
PINCLUDE  = $(PWHGDIR)/include
VINCLUDE  = $(VIRT)/include
MDINCLUDE = $(REAL)/include
LTINCLUDE = $(LT)/src/include



########################################################################
## search for the files and set paths

vpath %.f $(PWHGDIR)
vpath %.f $(DISTRIBDIR)
vpath %.f $(WORKINGDIR)
vpath %.f $(DISTRIBDIR)/common_src_files
vpath %.f $(TOOLS)/functions
vpath %.f $(PY)
vpath %.f $(REAL)/SubProcesses
vpath %.F $(DISTRIBDIR)
vpath %.F $(WORKINGDIR)
vpath %.F $(TOOLS)/FormCalcTools
vpath %.F $(VIRT)/RenConsts
vpath %.F $(VIRT)/bbbar_squaredme
vpath %.cc $(FJ)
vpath %.o $(WORKINGDIR)/build

########################################################################
## Includes

FF  = $(FC) $(FFLAGS) $(OPT) $(WARN) $(DEBUG) $(FLAGS) $(PREPRO) 
FF += -I$(UINCLUDE) -I$(PINCLUDE) -I$(LTINCLUDE)
FF += -I$(VINCLUDE) -I$(MDINCLUDE)

CC  = $(CCOMP) $(CFLAGS) $(OPT) -I$(LTINCLUDE)
CXX = $(CXXCOMP) $(CXXFLAGS) $(OPT)

INCLUDE  = $(wildcard *.h $(UINCLUDE)/*.h  $(PINCLUDE)/*.h $(VINCLUDE)/*.h)
INCLUDE += $(wildcard *.h $(LTINCLUDE))
INCLUDE += $(wildcard *.h $(MDINCLUDE)/*.h)
INCLUDE += $(wildcard *.inc $(MDINCLUDE)/*.inc)


########################################################################
## Libraries

### LoopTools in ../Libraries/Looptools-2.12 ###
LIBS  = $(LIBDIR)/libooptools.a
### DHELAS in ../Libraries/DHELAS ###
LIBS += $(LIBDIR)/libdhelas3.a
### Libraries for linking c++ code
LIBS += -ldl -lstdc++
### for compressing lhe files
LIBS += -lz

########################################################################
## Source files

### PDFs ###
ifeq ("$(PDF)","lhapdf")
  ifeq ($(LHAPDF_CONFIG),)
    $(error cannot find lhapdf-config (did you install lhapdf?))
  endif
  PDFPACK-LO    = lhapdfif-LO.o
  PDFPACK       = lhapdfif.o
  ifeq  ("$(STATIC_LHAPDF)","yes")
    LHAPATH = $(shell $(LHAPDF_CONFIG) --libdir)
    LIBS += $(LHAPATH)/libLHAPDF.a
  else
    LIBSLHAPDF    = -Wl,-rpath,$(shell $(LHAPDF_CONFIG) --libdir)  \
                  -L$(shell $(LHAPDF_CONFIG) --libdir) -lLHAPDF
    LIBS += $(LIBSLHAPDF) 
  endif
else
  PDFPACK = mlmpdfif.o hvqpdfpho.o
endif

### ANALYSIS ###
ifeq ("$(ANALYSIS)","default")
  USE_FASTJET=yes
  PWHGANALYSIS = Analysis.o pwhg_bookhist-multi.o
endif
ifeq ("$(ANALYSIS)","none")
  PWHGANALYSIS = Analysis-dummy.o pwhg_bookhist.o 
endif

### Fastjet ###
ifdef USE_FASTJET
  ifeq ($(FASTJET_CONFIG),)
    $(error cannot find fastjet-config (did you install fastjet?))
  endif
  ifeq  ("$(STATIC_FJ)","yes")
    LIBS += $(shell $(FASTJET_CONFIG) --shared=no --libs --plugins)
  else
    LIBS += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
  endif
  FJCXXFLAGS  += $(shell $(FASTJET_CONFIG) --cxxflags)
  PWHGANALYSIS+= fastjetfortran.o
endif

### USER Files ###
USER = Born.o Born_phsp.o Reals.o Virtuals.o \
       init_processes.o init_couplings.o pdfcalls_mod.o

### Functions in tools/functions/
FUNC = funcbasic.o funcprocess.o Print.o

### Formcalc Files in tools/FormcalcTools/###
FORMCALC = VecSet_HVV.o

### HELAS mandatory files
MADMODELOBJ = couplings.o printout.o

### PWHG FILES in ../../ ###
PWHG1 = pwhg_main.o pwhg_init.o bbinit.o btilde.o lhefwrite.o utils.o	\
	LesHouches.o LesHouchesreg.o gen_Born_phsp.o find_regions.o	\
	test_Sudakov.o pt2maxreg.o sigborn.o gen_real_phsp.o maxrat.o	\
	gen_index.o gen_radiation.o Bornzerodamp.o sigremnants.o	\
	random.o boostrot.o bra_ket_subroutines.o cernroutines.o	\
	init_phys.o powheginput.o sigreal.o sigcollremn.o		\
	pwhg_analysis_driver.o checkmomzero.o  reshufflemoms.o		\
	integrator.o newunit.o mwarn.o sigsoftvirt.o			\
	sigcollsoft.o sigvirtual.o setlocalscales.o validflav.o		\
	mint_upb.o pwhgreweight.o opencount.o ubprojections.o		\
	decidemerging.o loadstorenlo.o 					\
	lhefread.o  pwhg_io_interface.o rwl_weightlists.o rwl_setup_param_weights.o

PWHG-LO = $(PWHG1) setstrongcoupl-LO.o
PWHG = $(PWHG1) setstrongcoupl.o

### LHEF ###
# analyze LHEF output
LHEF = lhef_analysis.o boostrot.o random.o cernroutines.o		\
     opencount.o powheginput.o lhefread.o newunit.o init_couplings.o	\
     pwhg_analysis_driver.o pwhg_io_interface.o rwl_weightlists.o utils.o 

### PYTHIA ###
# target to read event file, shower events with PYTHIA + analysis
PYTHIA = main-PYTHIA.o setup-PYTHIA-lhef.o pythia6428.o	                \
	boostrot.o powheginput.o lhefread.o init_couplings.o		\
	pwhg_io_interface.o rwl_weightlists.o newunit.o pdfdummies.o	\
	pwhg_analysis_driver.o random.o cernroutines.o opencount.o

### MadGraph_POWHEG for born and real amplitudes
MADSUBOBJ_F := $(wildcard $(REAL)/SubProcesses/*.f)
MADSUBOBJ := $(notdir $(MADSUBOBJ_F:.f=.o))
MADOBJ = $(MADSUBOBJ) $(MADMODELOBJ)

## Virtual Amplitudes in virtuals/ ###
VIRTUALS_F := $(wildcard $(VIRT)/bbbar_squaredme/*.F)
VIRTUALS := $(notdir $(VIRTUALS_F:.F=.o))

RENCONST_F := $(wildcard $(VIRT)/RenConsts/*.F)
RENCONST := $(notdir $(RENCONST_F:.F=.o))
VIRTUALS += $(RENCONST)


########################################################################
## Generate objects
./build/%.o: %.f $(INCLUDE)
	$(FF) -c -o $@ $<

./build/%.o: %.F $(INCLUDE)
	$(FF) -c -o $@ $<

./build/%.o: %.cc
	$(CXX) -c -o $@ $^ $(FJCXXFLAGS)

./build/%.o: %.c $(INCLUDE)
	$(CC) -c -o $@ $<

########################################################################
## Rules
## type make -j4 [rule] to speed up the compilation

BUILD = $(PWHG) $(PDFPACK) $(USER) $(PWHGANALYSIS) $(FUNC) $(VIRTUALS) \
	$(FORMCALC) $(MADOBJ)

BUILD-LO = $(PWHG-LO) $(PDFPACK-LO) $(USER) $(PWHGANALYSIS) $(FUNC) \
	$(VIRTUALS) $(FORMCALC) $(MADOBJ)

BUILDLHEF = $(LHEF) $(PWHGANALYSIS) $(MADOBJ)

BUILDPYTHIA = $(PYTHIA) $(PWHGANALYSIS) $(MADOBJ)

pwhg_main_bbhww: $(addprefix ./build/, $(BUILD))
	$(FF) $(patsubst %,build/%,$(BUILD)) $(LDFLAGS) $(LIBS) -o $@

pwhg_main_bbhww-lo: $(addprefix ./build/, $(BUILD-LO))
	$(FF) $(patsubst %,build/%,$(BUILD-LO)) $(LDFLAGS) $(LIBS) -o $@

lhef_analysis: $(addprefix ./build/, $(BUILDLHEF))
	$(FF) $(patsubst %,build/%,$(BUILDLHEF)) $(LIBS) -o $@ 

main-PYTHIA-lhef: $(addprefix ./build/, $(BUILDPYTHIA))
	$(FF) $(patsubst %,build/%,$(BUILDPYTHIA)) $(LIBS) -o $@


all: pwhg_main_bbhww lhef_analysis main-PYTHIA-lhef

clean:
	rm -f build/*.o pwhg_main_bbhww pwhg_main_bbhww-lo lhef_analysis main-PYTHIA-lhef

clean-results:
	cd run && rm -f *.out *.dat *.top *.lhe *.eps FlavRegList \
	bornequiv realequiv realequivregions pwhg_checklimits virtequiv

clean-all: clean clean-results

do-pwhg do: pwhg_main_bbhww
	cd run && ../pwhg_main_bbhww && cd ..

do-pwhg-lo: pwhg_main_bbhww-lo
	cd run && ../pwhg_main_bbhww-lo && cd ..

do-lhef: lhef_analysis
	cd run && ../lhef_analysis && cd ..

do-pythia: main-PYTHIA-lhef
	cd run && ../main-PYTHIA-lhef && cd ..

########################################################################
#                       -*- End of Makefile -*-                        #
########################################################################
