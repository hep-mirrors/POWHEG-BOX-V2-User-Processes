########################################################################
#                          -*- Makefile -*-                            #
########################################################################
# Adapted from the Makefile found in weakino-jet POWHEG-BOX project    #
# made by Matthias Kesenheimer (2017)                                  #
# version 1.0, Julien Baglio (2018)                                    #
########################################################################
#
# General Conventions for Makefiles
SHELL = /bin/sh
.SUFFIXES:
.SUFFIXES: .c .f .F .cc .cpp .h .hh .inc .o .a
.DEFAULT_GOAL := all

########################################################################
## Flags

## Compiler and additional compiler Flags
# use "./configure ifort" first
#FC  = ifort
# use "./configure gfortran" first
FC  = gfortran
CXX = g++
CC  = gcc

# p-flag to enable code profiling with gprof: gprof ./pwhg_main* gmon.out > analysis.txt
FCFLAGS  = -pg
CXXFLAGS = -g
CFLAGS   = -g

# recommended compiler flags
ifeq ($(FC), ifort)
  LDFLAGS  = -pg
  REC_FCFLAGS   = -fpp -extend-source
  REC_FCFLAGS  += $(FCFLAGS)
else ifeq ($(FC), gfortran)
  LDFLAGS  = -ff2c -pg
  REC_FCFLAGS   = -fno-automatic -fno-range-check
  REC_FCFLAGS  += -ffixed-line-length-none -lgfortran -DU77EXT=0 -DQuad=0
  REC_FCFLAGS  += -ff2c -fno-second-underscore
  REC_FCFLAGS  += $(FCFLAGS)
  #$(error $(REC_FCFLAGS))
endif
REC_CXXFLAGS  = -fomit-frame-pointer -ffast-math -Wall -m64
REC_CXXFLAGS += $(CXXFLAGS)
REC_CFLAGS    = -fomit-frame-pointer -ffast-math -Wall -m64
REC_CFLAGS   += -DNOUNDERSCORE=0 -DBIGENDIAN=0
REC_CFLAGS   += $(CFLAGS)

UNAME = $(shell uname)
ifeq ($(UNAME), Darwin)
  #Mac OSX
  REC_CFLAGS   += -stdlib=libstdc++ -mmacosx-version-min=10.6 -Qunused-arguments
  REC_CXXFLAGS += -stdlib=libstdc++ -mmacosx-version-min=10.6 -Qunused-arguments
  #Collier modules folder
  COLLIERMOD = modules/MacOSX_$(FC)
endif
ifeq ($(UNAME), Linux)
  #Linux
  #Collier modules folder
  COLLIERMOD = modules/Linux_$(FC)
endif

## warning for type-conversions -> basically useless, as those occur in
## too many places
#WARN  = -Wconversion -Wall -Wtabs -Wall -Wimplicit-interface
## -fbounds-check sometimes causes a weird error due to non-lazy
## evaluation of boolean in gfortran.
#WARN += -fbounds-check
## gfortran 4.4.1 optimized with -O3 yields erroneous results
## Use -O2 to be on the safe side
OPT = -O2

########################################################################
## Paths

WORKINGDIR = $(shell pwd)

# directories
TOOLS   = $(WORKINGDIR)/Libraries
DHELAS  = $(TOOLS)/DHELAS
#COLLIER = $(TOOLS)/COLLIER-1.1
COLLIER = $(TOOLS)/COLLIER-1.2.2
LT      = $(TOOLS)/LoopTools-2.12
COLLIERINTERFACE = $(TOOLS)/collier

ALL_FCFLAGS  = $(REC_FCFLAGS) $(OPT) $(WARN)

libs: libdhelas3.a libcollier.a libooptools.a

all: libs pastegnudata

libdhelas3.a:
	cd $(DHELAS) && $(MAKE) FC="$(FC)" F77="$(FC)" XFFLAGS="$(ALL_FCFLAGS)"

libooptools.a:
	cd $(LT) && $(MAKE) && $(MAKE) install

libcollier.a:
	cd $(COLLIER)/build && $(MAKE)
	mkdir -p $(COLLIERINTERFACE)/$(COLLIERMOD)
	cp $(COLLIER)/modules/*.mod $(COLLIERINTERFACE)/$(COLLIERMOD)

pastegnudata:
	cd ./plot-aux && $(FC) pastegnudata.f -o $@

mergedata:
	cd ./plot-aux && $(FC) mergedata.f -o $@

clean-libs:
	rm -f $(TOOLS)/*.a
	rm -f $(TOOLS)/*.so
	cd $(DHELAS) && $(MAKE) clean
	cd $(COLLIER) && rm -rf build/* && rm -f collierConfig*
	cd $(LT) && $(MAKE) clean

clean clean-all: clean-libs
	cd ./HWW && $(MAKE) clean-all
	cd ./HWZ && $(MAKE) clean-all
	cd ./HZZ && $(MAKE) clean-all
	cd ./HWW-bb && $(MAKE) clean-all
	cd ./HWW-gg && $(MAKE) clean-all
	cd ./HZZ-bb && $(MAKE) clean-all
	cd ./HZZ-gg && $(MAKE) clean-all
	rm -f ./plot-aux/pastegnudata
	rm -f ./plot-aux/mergedata

print-info:
	$(info )
	$(info --> Now change into directory HWW, HWZ, HZZ, HWW-bb, HWW-gg, HZZ-bb, or HZZ-gg)
	$(info     and type "$(MAKE) clean-results && $(MAKE) -j4 do" to run the program)

########################################################################
#                       -*- End of Makefile -*-                        #
########################################################################
