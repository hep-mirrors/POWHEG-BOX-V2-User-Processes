#-*- Makefile -*-

# choose compiler: gfortran,ifort
COMPILER=gfortran
#
# choose PDF: native,lhapdf
# LHAPDF package has to be installed separately
PDF = lhapdf
#
# choose analysis: none, default
# default: requires FASTJET package, has to be installed separately (see below)
ANALYSIS=default
#
# for static linking uncomment the following
#STATIC=-static
#
# paths to libraries and header directories
PWD=$(shell pwd)
# please modify if you prefer to use your own version of QCDLoop:
LIBQCDLOOP = $(PWD)/QCDLoop-1.9/ql/libqcdloop.a
LIBFF =      $(PWD)/QCDLoop-1.9/ff/libff.a
# comment out to avoid autobuild:
BUILDQCDLOOP = $(PWD)/QCDLoop-1.9


ifeq ("$(COMPILER)","gfortran")	
F77 = gfortran -fno-automatic -ffixed-line-length-none	
CXX = g++
# -fbounds-check sometimes causes a weird error due to non-lazy evaluation
# of boolean in gfortran.
#FFLAGS= -Wall -Wno-implicit-interface -Wtabs -fbounds-check
# for floating point exception trapping  uncomment the following 
#FPE=-ffpe-trap=invalid,zero,overflow,underflow 
# gfortran 4.4.1 with -O3 yields erroneous results, use -O2 to be on safe side
OPT=-O2
# for debugging uncomment the following
#DEBUG= -ggdb -pg
endif
ifeq ("$(COMPILER)","ifort")
F77 = ifort -save -extend_source
#CXX = icpc
CXX = g++
LIBS = -limf
#FFLAGS =  -check
# for floating point exception trapping  uncomment the following 
#FPE = -fpe0
OPT = -O3 #-fast
# for debugging uncomment the following
#DEBUG= -debug -g
endif


ifeq ("$(PDF)","lhapdf")
LHAPDF_CONFIG=lhapdf-config
PDFPACK=lhapdfif.o
LIBSLHAPDF= -Wl,-rpath,$(shell $(LHAPDF_CONFIG) --libdir)  -L$(shell $(LHAPDF_CONFIG) --libdir) -lLHAPDF
ifeq  ("$(STATIC)","-static") 
# if LHAPDF has been compiled with gfortran and you want to link it statically, you have to include
# libgfortran as well. The same holds for libstdc++. 
# One possible solution is to use fastjet, since $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
# does perform this inclusion. The path has to be set by the user. 
 LIBGFORTRANPATH=/usr/lib/gcc/x86_64-redhat-linux/4.1.2
 LIBSTDCPP=/lib64
 LIBSLHAPDF+= -L$(LIBGFORTRANPATH) -lgfortranbegin -lgfortran -L$(LIBSTDCPP) -lstdc++
endif
LIBS+=$(LIBSLHAPDF)
else
PDFPACK=mlmpdfif.o hvqpdfpho.o
endif


ifeq ("$(ANALYSIS)","default")
USE_FASTJET=yes
PWHGANAL=pwhg_analysis.o
endif
ifeq ("$(ANALYSIS)","none")
PWHGANAL=pwhg_analysis-dummy.o
endif

ifdef USE_FASTJET
FASTJET_CONFIG=$(shell which fastjet-config)
ifeq ($(FASTJET_CONFIG),)
$(error cannot find fastjet-config (did you install fastjet ?))
endif
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL+= fastjetfortran.o fastjetsisconewrap.o fastjetktwrap.o
endif


VPATH=./:../Version-pre2-1/progress/:../Version-pre2-1/include/:../Version-pre2-1/:../:./Madlib/:./MODEL/:./DHELAS/:obj/:virtualDY/:

HEADERS =$(wildcard ../Version-pre2-1/include/*.h ../include/*.h *.h include/*.h)

INCLUDE0=./
INCLUDE0.1=../Version-pre2-1/progress/include
INCLUDE0.2=../Version-pre2-1/include
INCLUDE2=$(shell dirname $(PWD))/include
INCLUDE3=./MODEL
INCLUDES+=-I$(PWD) -I$(INCLUDE0.1)  -I$(INCLUDE0.2) -I$(INCLUDE2) -I$(INCLUDE3)

FF=$(F77) $(FFLAGS) $(FPE) $(OPT) $(DEBUG) $(INCLUDES)


# build these targets by default
all: pwhg_main lhef_analysis main-PYTHIA-lhef


LIBDIRMG=.
LINKMGLIBS=-L$(LIBDIRMG) -lmadgraph -lmodel -ldhelas3
MADLIBS=libdhelas3.a libmadgraph.a libmodel.a

libdhelas3.a:
	cd DHELAS ; make FC="$(F77)" F77="$(F77)" XFFLAGS="$(XFFLAGS)"

libmadgraph.a:
	cd Madlib ; make FC="$(F77) -I../MODEL" F77="$(F77) -I../MODEL" XFFLAGS"=$(XFFLAGS)"

libmodel.a:
	cd MODEL ; make FC="$(F77)" F77="$(F77)" XFFLAGS="$(XFFLAGS)"

XFFLAGS=$(DEBUG) $(OPT)
ifeq ("$(COMPILER)","gfortran")
XFFLAGS +=-ffixed-line-length-132
else
XFFLAGS +=-extend-source
endif


USER=init_couplings.o init_processes.o                             \
     Born_phsp.o Born.o                                            \
     crossing_virtual.o                                            \
     virtual.o virtualNDY.o virtualNDYddbar.o virtualNDYuubar.o    \
     virtualHiggs.o virtualHiggsddbar.o virtualHiggsuubar.o        \
     coeff.o coeff_ct.o coeff_nh.o coeff_nl.o mi.o                 \
     coeff_epm1.o coeff_epm2.o coeff_sdyb.o coeff_sdyct.o misdy.o  \
     virt_main_ssg.o virt_ssg.o virtualDY.o                        \
     real.o funcprocess.o funcbasic.o                              \
     $(PWHGANAL) 

PWHG=pwhg_main.o pwhg_init.o bbinit.o btilde.o lhefwrite.o		\
	LesHouches.o LesHouchesreg.o gen_Born_phsp.o find_regions_ssj.o	\
	test_Sudakov.o pt2maxreg.o sigborn.o gen_real_phsp.o maxrat.o	\
	gen_index.o gen_radiation.o Bornzerodamp.o sigremnants.o	\
	random.o boostrot.o bra_ket_subroutines.o cernroutines.o	\
	init_phys.o powheginput.o pdfcalls.o sigreal.o sigcollremn.o	\
	pwhg_analysis_driver.o checkmomzero.o pwhgreweight.o            \
	setstrongcoupl.o integrator.o newunit.o mwarn.o sigsoftvirt.o	\
	reshufflemoms.o setlocalscales.o validflav.o mint_upb.o         \
	sigcollsoft.o sigvirtual.o opencount.o ubprojections_ssj.o      \
	printout.o pwhg_bookhist-multi.o         \
        $(USER)  $(PDFPACK)

PWHGEXTRA=$(LIBQCDLOOP) $(LIBFF)

# target to generate LHEF output
pwhg_main:$(PWHG) $(PWHGEXTRA) Makefile $(MADLIBS)
	$(FF) $(patsubst %,obj/%,$(PWHG)) $(PWHGEXTRA) $(LIBS) $(LINKMGLIBS) $(LIBSFASTJET) $(STATIC) -o $@


LHEF=lhef_analysis.o boostrot.o random.o cernroutines.o	\
     opencount.o powheginput.o pwhg_bookhist-multi.o \
     lhefread.o newunit.o pwhg_analysis_driver.o \
     funcprocess.o init_couplings.o printout.o \
     $(PWHGANAL)

# target to analyze LHEF output
lhef_analysis:$(LHEF) libmodel.a
	$(FF) $(patsubst %,obj/%,$(LHEF)) $(LIBS) -L$(LIBDIRMG) -lmodel $(LIBSFASTJET) $(STATIC)  -o $@ 


PYTHIA=main-PYTHIA.o setup-PYTHIA-lhef.o pythia-6.4.25-decay.o \
	boostrot.o powheginput.o init_couplings.o funcprocess.o \
	pwhg_bookhist-multi.o lhefread.o newunit.o pdfdummies.o printout.o \
	pwhg_analysis_driver.o random.o cernroutines.o opencount.o	\
	$(PWHGANAL)

# target to read event file, shower events with PYTHIA + analysis
# NOTE: pythia-6.4.25-decay.f is based on POWHEG-BOX/pythia-6.4.25.f,
# to which we applied a simple patch to enable slepton decays
# (for clarity a separate patch file is included which is not needed otherwise)
main-PYTHIA-lhef: $(PYTHIA) libmodel.a
	$(FF) $(patsubst %,obj/%,$(PYTHIA)) -L$(LIBDIRMG) -lmodel $(LIBSFASTJET)  $(STATIC) -o $@


# autobuild targets for scalar loop integral libraries FF and QCDLoop
ifdef BUILDQCDLOOP
$(LIBFF):
	cd $(BUILDQCDLOOP)/ff && $(MAKE) FC=$(COMPILER)
$(LIBQCDLOOP): $(LIBFF)
	cd $(BUILDQCDLOOP)/ql && $(MAKE) FC=$(COMPILER)
endif


# project specific Fortran files
%.o: %.f $(HEADERS)
	$(FF) -c -o obj/$@ $<

# project specific Fortran files which need the preprocessor (.F instead of .f)
%.o: %.F $(HEADERS)
	$(FF) -c -o obj/$@ $<

# project specific C++ files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o obj/$@ $^

# shared Fortran files
%.o: ../%.f $(HEADERS)
	$(FF) -c -o obj/$@ $<

# shared C files
%.o: ../%.c
	$(CC) $(DEBUG) -c -o obj/$@ $^ 

# shared C++ files
%.o: ../%.cc
	$(CXX) $(DEBUG) -c -o obj/$@ $^ $(FJCXXFLAGS)

# some shared Fortran files from MADGRAPH
%.o: ./MODEL/%.f $(HEADERS)
	$(FF) -c -o obj/$@ $<


# target to cleanup everything except for external libraries
.PHONY: mostlyclean
mostlyclean:
	rm -f obj/*.o \
	      pwhg_main lhef_analysis main-PYTHIA-lhef

# target to cleanup everything
.PHONY: clean
clean: mostlyclean
ifdef BUILDQCDLOOP
	cd $(BUILDQCDLOOP) && make clean && cd ql && make clean && cd ../ff/ && make clean
endif
	rm -f *.a DHELAS/*.o Madlib/*.o MODEL/*.o
