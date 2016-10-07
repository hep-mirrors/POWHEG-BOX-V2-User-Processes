#-*- Makefile -*-
## Choose compiler: gfortran,ifort
COMPILER=gfortran
## Choose PDF: native,lhapdf
## LHAPDF package has to be installed separately
PDF=lhapdf
#Choose Analysis: none, top
## default analysis may require FASTJET package, that has to be installed separately (see below)
# ANALYSIS=top

#ANALYSIS=top-reconstruction
#ANALYSIS=denner
#ANALYSIS=denner-2
ANALYSIS=top-reconstruction-2
## For static linking uncomment the following
#STATIC= -static
#
ifeq ("$(COMPILER)","gfortran")	
F77= gfortran -fno-automatic -ffixed-line-length-132
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
# DEBUG= -ggdb
ifdef DEBUG
OPT=-O0
FPE=-ffpe-trap=invalid,zero,overflow
endif
endif

ifeq ("$(COMPILER)","ifort")
F77 = ifort -save  -extend_source
#CXX = icpc
#LIBS = -limf
#FFLAGS =  -check all -g -traceback -fp-stack-check # -warn -debug extended
## For floating point exception trapping  uncomment the following 
#FPE = -fpe0
OPT = -O3 #-fast
## For debugging uncomment the following
#DEBUG= -debug -g
endif



PWD=$(shell pwd)
WDNAME=$(shell basename $(PWD))

DEPDIRS=./MCFM/QCDLoop/ql/ ./MCFM/QCDLoop/ff/ ./MCFM/src/TopdkBSY/  ./MCFM/src/Newtpair/  ./MCFM/src/Need/ ./MCFM/src/Phase/ ./MCFM/src/Topdecay/ ./MCFM/src/Topdk/

OBJ=obj-$(COMPILER)

VPATH= ./:../progress:../:$(OBJ)/:./MCFMinterface:./MCFM/QCDLoop/ql:./MCFM/QCDLoop/ff:../KN/MCFM/src/pwgplots/:./MCFM/src/TopdkBSY/:./MCFM/src/Newtpair/:./MCFM/src/Need/:./MCFM/src/Phase/:./MCFM/src/Topdecay/:./MCFM/src/Topdk/

INCLUDE0=$(PWD)
INCLUDE2=$(shell dirname $(PWD))/include
INCLUDE3=$(PWD)/MCFM/src/Inc/
INCLUDE4=$(PWD)/interfaceinclude
FF=$(F77) $(FFLAGS) $(FPE) $(OPT) $(DEBUG) -I$(INCLUDE0) -I$(INCLUDE2) -I$(INCLUDE3) -I$(INCLUDE4)



LIBFILES=$(shell  for dir in $(DEPDIRS) ; do if cd $$dir ; then echo *.[fF] ' ' | sed 's/qlconstants.f//g ; s/qlonshellcutoff.f//g ; s/dipoles_mass_old.f//g ; s/initialize3.f//g ; s/alfacut.f//g ; s/redconstants.f//g ; s/ eq.f//g ; s/[fF] /o /g' ; fi ; cd $(PWD) ; done  )


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
 LIBGFORTRANPATH=/usr/lib/gcc/x86_64-redhat-linux/4.1.2
 LIBSTDCPP=/lib64
 LIBSLHAPDF+=  -L$(LIBGFORTRANPATH)  -lgfortranbegin -lgfortran -L$(LIBSTDCPP) 
# -lstdc++
endif
LIBS+=$(LIBSLHAPDF)
else
PDFPACK=mlmpdfif.o hvqpdfpho.o
endif


PWHGANAL=pwhg_analysis-dummy.o

ifeq ("$(ANALYSIS)","top")
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis-top.o pwhg_bookhist-multi.o 
PWHGANAL+= fastjetfortran.o
endif

ifeq ("$(ANALYSIS)","top-reconstruction")
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis-top-reconstruction.o pwhg_bookhist-multi.o 
PWHGANAL+= fastjetfortran.o
endif

ifeq ("$(ANALYSIS)","denner")
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis-top-denner.o pwhg_bookhist-multi.o 
PWHGANAL+= fastjetfortran.o
endif

ifeq ("$(ANALYSIS)","sanity")
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis-sanity.o 
PWHGANAL+= fastjetfortran.o
endif

ifeq ("$(ANALYSIS)","topasy")
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis-topasy.o 
PWHGANAL+= fastjetfortran.o
endif


ifeq ("$(ANALYSIS)","denner-2")
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis-top-denner-2.o pwhg_bookhist-multi.o 
PWHGANAL+= fastjetfortran.o
endif

ifeq ("$(ANALYSIS)","top-reconstruction-2")
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis-top-reconstruction-2.o pwhg_bookhist-multi.o 
PWHGANAL+= fastjetfortran.o
endif



# PYTHIA 8

PYTHIA8LOCATION=/home/nason/Pheno/pythia8185-inst
FJCXXFLAGS+=-I$(PYTHIA8LOCATION)/include -I$(PYTHIA8LOCATION)/include/Pythia8
LIBPYTHIA8=-L$(PYTHIA8LOCATION)/lib/archive -lpythia8  -lstdc++ #-llhapdfdummy

MG5DIR=madgraph5all

VPATH+=$(MG5DIR):$(MG5DIR)/DHELAS:$(MG5DIR)/born
DHELAS=$(shell echo $(MG5DIR)/DHELAS/*.f | sed -e 's/\.f/\.o/g;s/$(MG5DIR)\/DHELAS\///g')
MG5=$(shell echo $(MG5DIR)/*.f | sed -e 's/\.f/\.o/g;s/$(MG5DIR)\///g')
MG5+=$(shell echo $(MG5DIR)/born/*.f | sed -e 's/\.f/\.o/g;s/$(MG5DIR)\/born\///g')


%.o: %.f $(INCLUDE)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.c
	$(CC) $(DEBUG) -c -o $(OBJ)/$@ $^ 

%.o: %.cc
	$(CXX) $(DEBUG) -c -o $(OBJ)/$@ $^ $(FJCXXFLAGS)

$(shell ../svnversion/svnversion.sh>/dev/null)

USER=init_couplings.o init_processes.o Born_phsp.o PhaseSpaceUtils.o \
     onshellmap.o Born.o virtual.o gen_radiation_hook.o \
     real.o setupBmunu.o isodd.o iseven.o $(PWHGANAL)

USER+=$(DHELAS) $(MG5) setparam.o


PWHG=pwhg_main.o pwhg_init.o bbinit.o btilde.o lhefwrite.o Check_LesHouches.o\
	LesHouches.o LesHouchesreg.o gen_Born_phsp.o find_regions.o	\
	test_Sudakov.o pt2maxreg.o sigborn.o gen_real_phsp.o maxrat.o	\
	gen_index.o gen_radiation.o Bornzerodamp.o sigremnants.o	\
	random.o boostrot.o bra_ket_subroutines.o cernroutines.o	\
	init_phys.o powheginput.o pdfcalls.o sigreal.o sigcollremn.o	\
	pwhg_analysis_driver_offshellmap.o checkmomzero.o		\
	setstrongcoupl.o integrator.o newunit.o mwarn.o sigsoftvirt.o	\
	sigcollsoft.o sigvirtual.o setlocalscales.o validflav.o mint_upb.o  \
	pwhgreweight.o opencount.o ubprojections.o reshufflemoms.o \
	$(PDFPACK) $(USER) $(FPEOBJ)



# target to generate LHEF output
#pwhg_main: libfiles.a $(PWHG)
pwhg_main: libfiles.a $(PWHG)
	$(FF) $(patsubst %,$(OBJ)/%,$(PWHG)) $(LIBS) $(LIBSFASTJET) $(STATIC) $(OBJ)/libfiles.a  $(OBJ)/libfiles.a  -o $@ $(USEDLIBFILES)

libfiles.a: $(LIBFILES)
	cd $(OBJ) ; \rm libfiles.a ; ar cru libfiles.a $(LIBFILES)

LHEF=lhef_analysis.o boostrot.o random.o cernroutines.o		\
     opencount.o powheginput.o $(PWHGANAL)	\
     lhefread.o newunit.o pwhg_analysis_driver.o $(FPEOBJ)

# target to analyze LHEF output
lhef_analysis:$(LHEF)
	$(FF) $(patsubst %,$(OBJ)/%,$(LHEF)) $(LIBS) $(LIBSFASTJET) $(STATIC)  -o $@ 



# target to read event file, shower events with HERWIG + analysis
# HERWIG=main-HERWIG.o setup-HERWIG-lhef.o herwig.o boostrot.o powheginput.o \
#        reshufflemoms.o\
#	$(PWHGANAL) lhefread.o newunit.o pdfdummies.o		\
#	random.o opencount.o cernroutines.o $(FPEOBJ)
#
# main-HERWIG-lhef: $(HERWIG)
#	$(FF) $(patsubst %,$(OBJ)/%,$(HERWIG))  $(LIBSFASTJET)  $(STATIC) -o $@

# PYTHIA6 target is at the moment not usable.
# target to read event file, shower events with PYTHIA + analysis
# PYTHIA=main-PYTHIA.o setup-PYTHIA-lhef.o pythia.o boostrot.o powheginput.o \
#        reshufflemoms.o\
#	$(PWHGANAL) lhefread.o newunit.o pdfdummies.o		\
#	random.o cernroutines.o opencount.o	\
#	$(FPEOBJ)

# main-PYTHIA-lhef: $(PYTHIA)
#	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA)) $(LIBSFASTJET)  $(STATIC) -o $@


# target to read event file, shower events with PYTHIA8 + analysis
PYTHIA8=main-PYTHIA8.o pythia8F77.o boostrot.o powheginput.o \
	$(PWHGANAL) opencount.o lhefread.o newunit.o pdfdummies.o \
	random.o cernroutines.o bra_ket_subroutines.o \
	$(FPEOBJ)

main-PYTHIA8-lhef: $(PYTHIA8)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA8)) $(LIBSFASTJET) $(LIBPYTHIA8) $(STATIC) $(LIBS) -o $@






# target to cleanup
.PHONY: clean
clean:
	rm -f $(OBJ)/*.o pwhg_main lhef_analysis main-HERWIG-lhef	\
	main-PYTHIA-lhef


pwhg_main.o: svn.version
lhefwrite.o: svn.version
