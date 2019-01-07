#-- Makefile to be used for VBF pp->WZjj (adapted from ZZjj)
## Choose compiler: gfortran,g77,ifort
#COMPILER=ifort
COMPILER=gfortran
## Choose PDF: native,lhapdf
## LHAPDF package has to be installed separately
PDF=lhapdf
#PDF=native

# Choose Analysis: none, default
# default analysis requires FASTJET package, that has to be installed 
# separately (see below)
#ANALYSIS=none
ANALYSIS=default
## For static linking uncomment the following
#STATIC= -static

ifeq ("$(COMPILER)","gfortran")	
F77= gfortran -fno-automatic -ffixed-line-length-none 
USEDLIBFILES=-Wl,--print-map | grep '^obj-gfortran/libfiles.a' | sed 's/obj-gfortran\/libfiles\.a(// ; s/)//' > libfileslist.txt
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
endif
endif

ifeq ("$(COMPILER)","ifort")
F77 = ifort -save  -extend_source
LIBS = -limf
FFLAGS = #-check
## For floating point exception trapping  uncomment the following 
#FPE = -fpe0
OPT = -O3 #-fast
## For debugging uncomment the following
#DEBUG= -debug -g
ifdef DEBUG
OPT=-O0
endif
endif

OBJ=obj-$(COMPILER)

PWD=$(shell pwd)
WDNAME=$(shell basename $(PWD))

VPATH= :./:../:$(OBJ)/:


INCLUDE0=$(PWD)
INCLUDE1=$(PWD)/include
INCLUDE2=$(shell dirname $(PWD))/include
INCLUDEZ=vbfnlo-files
FF=$(F77) $(FFLAGS) $(FPE) $(OPT) $(DEBUG) -I$(INCLUDE0) -I$(INCLUDE1) -I$(INCLUDE2) -I $(INCLUDEZ) 

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
# LIBSTDCPP=/lib64
# LIBSLHAPDF+= -lgfortranbegin -lgfortran -L$(LIBSTDCPP) 
# -lstdc++
endif
LIBS+=$(LIBSLHAPDF)
else
PDFPACK=mlmpdfif.o hvqpdfpho.o
endif

ifeq ("$(ANALYSIS)","default")
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_bookhist-multi.o pwhg_analysis_all.o pwhg_analysis_lep.o \
	utils.o 

# Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetfortran.o #fastjetCDFMidPointwrap.o fastjetD0RunIIConewrap.o fastjetfortran.o
else
PWHGANAL=pwhg_bookhist-multi.o pwhg_analysis-dummy.o
endif

LIBS+=$(LHAPDFLIB) -Lvbfnlo-files -lvbfnlo 

%.o: %.f $(INCLUDE)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.c
	$(CC) $(DEBUG) -c -o $(OBJ)/$@ $^ 

%.o: %.cc
	$(CC) $(DEBUG) -c -o $(OBJ)/$@ $^ $(FJCXXFLAGS)

LIBS+=-lz

USER=init_couplings.o init_processes.o Born_phsp.o Born.o virtual.o \
	calc_invariants.o compute_tensors.o compute_tensors_real.o \
	convert_coup.o real.o  \
	boost.o phi1_2.o phi3m0.o breit.o $(PWHGANAL)


PWHG=pwhg_main.o pwhg_init.o bbinit.o btilde.o lhefwrite.o \
	LesHouches.o LesHouchesreg.o gen_Born_phsp.o find_regions.o   \
        test_Sudakov.o pt2maxreg.o sigborn.o gen_real_phsp.o maxrat.o \
	gen_index.o gen_radiation.o Bornzerodamp.o sigremnants.o      \
	random.o boostrot.o bra_ket_subroutines.o cernroutines.o      \
	init_phys.o powheginput.o pdfcalls.o sigreal.o sigcollremn.o  \
	pwhg_analysis_driver.o checkmomzero.o         \
	reshufflemoms.o setstrongcoupl.o integrator.o newunit.o       \
	mwarn.o sigsoftvirt.o sigcollsoft.o sigvirtual.o              \
	phi1_2m_nobw.o phi1_2m_bw.o mint_upb.o \
	opencount.o pwhgreweight.o setlocalscales.o validflav.o       \
	ubprojections.o lhefread.o pwhg_io_interface.o rwl_weightlists.o rwl_setup_param_weights.o \
	$(PDFPACK) $(USER) $(SYSOBJ) 
#PYTHIA8 stuff
HEPMCLOCATION=/usr/local
PYTHIA8LOCATION=/usr/local

FJCXXFLAGS+=-I$(HEPMCLOCATION)/include/HepMC
FJCXXFLAGS+=-I$(PYTHIA8LOCATION)/include
FJCXXFLAGS+=-I$(PYTHIA8LOCATION)/include/Pythia8
FJCXXFLAGS+=-I$(PYTHIA8LOCATION)/include/Pythia8Plugins
LIBPYTHIA8=-L$(PYTHIA8LOCATION)/lib/archive -lpythia8 -ldl -lstdc++   -L$(HEPMCLOCATION)/lib -lHepMC #-lpythia8tohepmc
# target to generate LHEF output
pwhg_main:$(PWHG) vbfnlo-files/libvbfnlo.a 
	(cd vbfnlo-files; make;)
	$(FF) $(patsubst %,$(OBJ)/%, $(PWHG)) $(LIBS) $(LIBSFASTJET) -o $@


vbfnlo-files/libvbfnlo.a: vbfnlo-files/*f 
	cd vbfnlo-files ; make

LHEFANAL=lhef_analysis.o boostrot.o random.o cernroutines.o  \
	opencount.o powheginput.o lhefread.o newunit.o pwhg_analysis_driver.o \
	$(PWHGANAL) $(SYSOBJ)\
	pwhg_io_interface.o rwl_weightlists.o

# target to analyze LHEF output
lhef_analysis:$(LHEFANAL)
	$(FF) $(patsubst %,$(OBJ)/%,$(LHEFANAL)) -o $@ $(LIBS) $(LIBSFASTJET)

# target to read event file, shower events with PYTHIA + analysis
PYTHIA=main-PYTHIA.o setup-PYTHIA-lhef.o pythia.o bra_ket_subroutines.o\
	boostrot.o powheginput.o  \
	lhefread.o newunit.o \
	pwhg_analysis_driver.o \
	random.o cernroutines.o opencount.o  $(PWHGANAL) $(SYSOBJ)\
	pwhg_io_interface.o rwl_weightlists.o


main-PYTHIA-lhef: $(PYTHIA)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA)) -o $@ $(LIBS) $(LIBSFASTJET) $(LIBS)

PYTHIA8=main-PYTHIA8.o boostrot.o powheginput.o \
	$(PWHGANAL) opencount.o  lhefread.o  newunit.o pdfdummies.o \
	random.o cernroutines.o bra_ket_subroutines.o\
	$(FPEOBJ)\
 pwhg_io_interface.o rwl_weightlists.o

main-PYTHIA82-lhef: $(PYTHIA8) pythia82F77.o vbfnlo-files/libvbfnlo.a
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA8) pythia82F77.o ) $(LIBSFASTJET) $(RIVETLIBS) $(LIBPYTHIA8) $(STATIC) $(LIBS) -o $@

clean:
	rm -f *.o *~ obj_ew/*.o $(OBJ)/*.o \
        vbfnlo-files/*.o vbfnlo-files/libvbfnlo.a \
        vbfnlo-files/*/*.o \
        pwhg_main lhef_analysis \
	main-PYTHIA-lhef
