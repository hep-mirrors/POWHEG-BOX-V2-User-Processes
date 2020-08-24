#-*- Makefile -*-


########################################################
#  SET HERE the POWHEG-BOX-V2 path
########################################################
BOX=/**************/POWHEG-BOX-V2


# this sources the MG5_aMC make_opts, which includes also the virtual libraries
# (madloop=True is needed)
madloop=True
include Source/make_opts

## Choose compiler: gfortran,ifort (g77 not supported, F90 constructs in use!)
COMPILER=gfortran
FC=$(COMPILER)
## Choose PDF: native,lhapdf
## LHAPDF package has to be installed separately
PDF=lhapdf
#Choose Analysis: dummy, process specific
## default analysis may require FASTJET package, that has to be installed separately (see below)
#ANALYSIS=HnJ
#ANALYSIS=X0nJ
ANALYSIS=DMMPZ
## For static linking uncomment the following
#STATIC= -static
#

OBJ=obj-$(COMPILER)
OBJDIR:=$(OBJ)

ifeq ("$(COMPILER)","gfortran")	
F77=gfortran -fno-automatic -ffixed-line-length-none -J$(OBJ) -I$(OBJ)
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
#,underflow
endif
export XFFLAGS= $(OPT) $(FPE) $(DEBUG)
endif

ifeq ("$(COMPILER)","ifort")
F77 = ifort -save  -extend_source  -module $(OBJ)
#CXX = g++
#LIBS = -limf
#FFLAGS =  -checkm
## For floating point exception trapping  uncomment the following 
#FPE = -fpe0
OPT = -O3 #-fast
## For debugging uncomment the following
#DEBUG= -debug -g
ifdef DEBUG
OPT=-O0 
FPE = -fpe0
endif
endif


PWD=$(shell pwd)
MG5PROCESS=$(PWD)
WDNAME=$(shell basename $(PWD))
VPATH= ./:../:$(OBJDIR):$(BOX)
INCLUDE0=$(PWD)
INCLUDE1=$(PWD)/include
INCLUDE2=$(BOX)/include
INCLUDE3=SubProcesses/
FF=$(F77) $(FFLAGS) $(FPE) $(OPT) $(DEBUG) -I$(INCLUDE0) -I$(INCLUDE1) -I$(INCLUDE2) -I$(INCLUDE3)

#INCLUDE =$(wildcard ../include/*.h *.h include/*.h)
INCLUDE =$(wildcard $(INCLUDE2)/*.h *.h $(INCLUDE1)/*.h $(INCLUDE1)/*.f)

ifeq ("$(PDF)","lhapdf")
LHAPDF_CONFIG=lhapdf-config
FJCXXFLAGS+= $(shell $(LHAPDF_CONFIG) --cxxflags)
PDFPACK=lhapdf6if.o lhapdf6ifcc.o
LIBSLHAPDF= -Wl,-rpath,$(shell $(LHAPDF_CONFIG) --libdir)  -L$(shell $(LHAPDF_CONFIG) --libdir) -lLHAPDF -lstdc++
ifeq  ("$(STATIC)","-static") 
## If LHAPDF has been compiled with gfortran and you want to link it statically, you have to include
## libgfortran as well. The same holds for libstdc++. 
## One possible solution is to use fastjet, since $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
## does perform this inclusion. The path has to be set by the user. 
# LIBGFORTRANPATH= #/usr/lib/gcc/x86_64-redhat-linux/4.1.2
# LIBSTDCPP=/lib64
LIBSLHAPDF+=  -L$(LIBGFORTRANPATH)  -lgfortranbegin -lgfortran -L$(LIBSTDCPP) -lstdc++
endif
LIBS+=$(LIBSLHAPDF)
else
PDFPACK=mlmpdfif.o hvqpdfpho.o
endif


ifeq ("$(ANALYSIS)","HnJ")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_bookhist-multi.o pwhg_analysis-HnJ.o multi_plot.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
#PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetCDFMidPointwrap.o fastjetD0RunIIConewrap.o fastjetfortran.o
#PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetfortran.o
PWHGANAL+=  fastjetfortran.o
else
PWHGANAL=pwhg_bookhist-multi.o pwhg_analysis-dummy.o
endif

ifeq ("$(ANALYSIS)","X0nJ")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_bookhist-multi.o pwhg_analysis-X0nJ.o observables.o multi_plot.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
#PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetCDFMidPointwrap.o fastjetD0RunIIConewrap.o fastjetfortran.o
#PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetfortran.o
PWHGANAL+=  fastjetfortran.o
endif


ifeq ("$(ANALYSIS)","DMMPZ")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_bookhist-multi.o pwhg_analysis-X0nJ_DMMPZ.o  observables.o multi_plot.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
#PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetCDFMidPointwrap.o fastjetD0RunIIConewrap.o fastjetfortran.o
#PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetfortran.o
PWHGANAL+=  fastjetfortran.o
endif

ifeq ("$(ANALYSIS)","alt")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
#FASTJET_CONFIG=~/lib/fastjet242/bin/fastjet-config
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_bookhist-multi.o pwhg_analysis-alt-H2J.o fastjetfortran.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)#PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetCDFMidPointwrap.o fastjetD0RunIIConewrap.o fastjetfortran.o
endif

%.o: %.f $(INCLUDE) | $(OBJDIR)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.f90 $(INCLUDE) | $(OBJDIR)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.F90 $(INCLUDE) | $(OBJDIR)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.c | $(OBJDIR)
	$(CC) $(DEBUG) -c -o $(OBJ)/$@ $^ 

%.o: %.cc | $(OBJDIR)
	$(CXX) $(DEBUG) -c -o $(OBJ)/$@ $^ $(FJCXXFLAGS)
LIBS+=-lz


USER=init_couplings.o init_processes.o Born_phsp.o Born.o virtual.o	\
     real.o matchcolour.o $(PWHGANAL)


PWHG=   pwhg_main.o pwhg_init.o bbinit.o btilde.o lhefwrite.o		\
	LesHouches.o LesHouchesreg.o gen_Born_phsp.o find_regions.o	\
	test_Sudakov.o pt2maxreg.o sigborn.o gen_real_phsp.o maxrat.o	\
	gen_index.o gen_radiation.o Bornzerodamp.o sigremnants.o	\
	random.o boostrot.o bra_ket_subroutines.o cernroutines.o	\
	init_phys.o powheginput.o pdfcalls.o sigreal.o sigcollremn.o	\
	pwhg_analysis_driver.o checkmomzero.o		                \
	setstrongcoupl.o integrator.o newunit.o mwarn.o sigsoftvirt.o	\
	reshufflemoms.o minlo_checks.o                                   \
	sigcollsoft.o sigvirtual.o  ubprojections.o                     \
	pwhgreweight.o setlocalscales.o mint_upb.o opencount.o          \
	validflav.o $(PDFPACK) $(USER) $(FPEOBJ) lhefread.o pwhg_io_interface.o rwl_weightlists.o rwl_setup_param_weights.o




# Get SVN info for SVN version stamping code
#$(shell ../svnversion/svnversion.sh>/dev/null)

# target to generate LHEF output
#

MADLIB=$(patsubst $(MG5PROCESS)/lib/lib%.a, -l%, $(MG5PROCESS)/lib/libmadgraph.a $(wildcard $(MG5PROCESS)/lib/libMadLoop*.a)  -L$(MG5PROCESS)/lib/ -ldhelas -lmodel $(libcuttools) )

pwhg_main:  $(PWHG) lib/libdhelas.a lib/libmodel.a lib/libmadgraph.a
	echo $(MG5PROCESS)
	echo $(MADLIB)
	$(FF) $(patsubst %,$(OBJ)/%,$(PWHG)) -L$(MG5PROCESS)/lib $(MADLIB)  $(LIBS) $(LIBSFASTJET) $(STATIC)  -o $@ -lstdc++

lib/libdhelas.a:
	cd $(MG5PROCESS)/Source/DHELAS ; make;

lib/libmodel.a: Cards/param_card.dat
	cd $(MG5PROCESS)/Source/MODEL ; make;

lib/libmadgraph.a:
	cd $(MG5PROCESS)/SubProcesses ; make;


LHEF=lhef_analysis.o boostrot.o random.o cernroutines.o		\
     opencount.o powheginput.o $(PWHGANAL)	\
     lhefread.o pwhg_io_interface.o rwl_weightlists.o newunit.o pwhg_analysis_driver.o $(FPEOBJ)

# target to analyze LHEF output
lhef_analysis:$(LHEF)
	$(FF) $(patsubst %,$(OBJ)/%,$(LHEF)) $(LIBS) $(LIBSFASTJET) $(STATIC)  -o $@ 

NORM=normalize.o pwhg_bookhist-multi-extra-new.o newunit.o pwhg_bookhist-multi-new.o

normalize:$(NORM)
	$(FF) $(patsubst %,$(OBJ)/%,$(NORM)) $(LIBS)  $(STATIC)  -o $@ 


# target to read event file, shower events with HERWIG + analysis
HERWIG=main-HERWIG.o setup-HERWIG-lhef.o herwig.o boostrot.o	\
	powheginput.o $(PWHGANAL) lhefread.o pwhg_io_interface.o rwl_weightlists.o	\
	pdfdummies.o opencount.o $(FPEOBJ) 

main-HERWIG-lhef: $(HERWIG)
	$(FF) $(patsubst %,$(OBJ)/%,$(HERWIG))  $(LIBSFASTJET)  $(STATIC) -o $@

# target to read event file, shower events with PYTHIA + analysis
PYTHIA=main-PYTHIA.o setup-PYTHIA-lhef.o pythia.o boostrot.o powheginput.o \
	$(PWHGANAL) lhefread.o pwhg_io_interface.o rwl_weightlists.o newunit.o 	\
	pwhg_analysis_driver.o random.o cernroutines.o opencount.o	\
	$(FPEOBJ)

main-PYTHIA-lhef: $(PYTHIA)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA)) $(LIBS) $(LIBSFASTJET)  $(STATIC) -o $@


ifeq ("$(COMPILER)","gfortran")
XFFLAGS +=-ffixed-line-length-132
else
XFFLAGS +=-extend-source
endif


clean:
	-rm   $(MG5PROCESS)/SubProcesses/*.o $(MG5PROCESS)/Source/DHELAS/*.o $(MG5PROCESS)/Source/MODEL/*.o \
	    $(MG5PROCESS)/lib/libdhelas.a $(MG5PROCESS)/lib/libmodel.a $(MG5PROCESS)/lib/libmadgraph.a $(MG5PROCESS)/lib/libMadLoop*.a
	rm -f $(patsubst %,$(OBJ)/%,$(USER) $(PWHG) $(LHEF) $(HERWIG) $(PYTHIA)) pwhg_main lhef_analysis main-HERWIG-lhef	\
	main-PYTHIA-lhef


veryclean:
	rm -f $(OBJ)/*.o $(OBJ)/*.mod $(OBJ)/*.a pwhg_main lhef_analysis main-HERWIG-lhef	\
	main-PYTHIA-lhef *.a DHELAS/*.o Madlib/*.o MODEL/*.o GoSamlib.lst

# target to generate object directory if it does not exist
$(OBJDIR):
	mkdir -p $(OBJDIR)

##########################################################################


# Dependencies of SVN version stamp code
#pwhg_main.o: svn.version
#lhefwrite.o: svn.version




