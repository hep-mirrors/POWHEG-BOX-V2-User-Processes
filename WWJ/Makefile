#-*- Makefile -*-
## Choose compiler: gfortran,ifort (g77 not supported, F90 constructs in use!)
COMPILER=gfortran
#COMPILER=ifort
FC=$(COMPILER)
## Choose PDF: native,lhapdf
## LHAPDF package has to be installed separately
PDF=lhapdf
#Choose Analysis: dummy, process specific
## default analysis may require FASTJET package, that has to be installed separately (see below)
#ANALYSIS=WW-NNLOPS-3D
ANALYSIS=WW-NNLOPS-1D-pheno
# For static linking uncomment the following
#STATIC= -static
#

OBJ=obj-$(COMPILER)
OBJDIR:=$(OBJ)

# use this directory to include also all fermion loops 
GOSAMDIR = GoSamlib
# use this to exclude fermion loop contributions (makes the calculation faster, 
# and the claim is that results are practically unchanged) 
#GOSAMDIR = GoSamlib_nofboxes 

ifeq ("$(COMPILER)","gfortran")	
F77=gfortran -fno-automatic -fno-align-commons -ffixed-line-length-none -J$(OBJ) -I$(OBJ) -mcmodel=large 
OPT=-O2
## For debugging uncomment the following
#DEBUG= -ggdb 
ifdef DEBUG
OPT=-O0
FPE=-ffpe-trap=invalid,zero,overflow,underflow
endif
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

GOSAMLIBS=$(shell cd $(GOSAMDIR) ; echo *.f *.f90 ' ' | sed 's/qlonshellcutoff.f// ; s/qlconstants.f// ; s/.f /.o /g ; s/.f90 /.o /g ; ' | tee GoSamlib.txt)
GOSAMLIBS+=$(shell cd $(GOSAMDIR) ; echo *.cc *.F90 ' ' | sed 's/.cc /.o /g ; s/.F90 /.o /g ; ' | tee GoSamlib.txt)

PWD=$(shell pwd)
WDNAME=$(shell basename $(PWD))
VPATH= rwgt-patches/:NNLOPS/pwhg-patches/:NNLOPS/common:./:../:$(OBJDIR):./$(GOSAMDIR)/

INCLUDE1=$(PWD)
INCLUDE2=$(shell dirname $(PWD))/include
INCLUDE3=NNLOPS/common
FF=$(F77) $(FFLAGS) $(FPE) $(OPT) $(DEBUG) -I$(INCLUDE1) -I$(INCLUDE2) -I$(INCLUDE3)

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
LIBGFORTRANPATH=/usr/lib/gcc/x86_64-redhat-linux/4.4.4
LIBSTDCPP=/usr/lib/gcc/x86_64-redhat-linux/4.4.4 #/lib64
LIBSLHAPDF+=  -L$(LIBGFORTRANPATH)  -lgfortranbegin -lgfortran -L$(LIBSTDCPP) -lstdc++
endif
LIBS+=$(LIBSLHAPDF)
else
PDFPACK=mlmpdfif.o hvqpdfpho.o
endif

ifeq ("$(ANALYSIS)","WW-NNLOPS-1D")
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_bookhist-1d.o pwhg_bookhist-3d.o observables.o pwhg_analysis-wrapper-WW.o analysis-WW-1D.o cs_angles.o  rebinning_routines.o 
PWHGANAL+=  fastjetfortran.o
endif

ifeq ("$(ANALYSIS)","WW-NNLOPS-1D-pheno")
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_bookhist-1d.o pwhg_bookhist-3d.o observables.o pwhg_analysis-wrapper-WW.o analysis-WW-1D-pheno.o cs_angles.o  rebinning_routines.o 
PWHGANAL+=  fastjetfortran.o
else
PWHGANAL=pwhg_bookhist-multi.o pwhg_analysis-dummy.o
WHGANAL=pwhg_bookhist-new.o pwhg_analysis-dummy.o
endif

ifeq ("$(ANALYSIS)","WWJ-refined")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_bookhist-multi.o pwhg_analysis-WWall-refined.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
#PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetCDFMidPointwrap.o fastjetD0RunIIConewrap.o fastjetfortran.o
#PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetfortran.o
PWHGANAL+=  fastjetfortran.o
endif


ifeq ("$(ANALYSIS)","WW-NNLOPS-3D")
##To include Fastjet configuration uncomment the following lines.                                                   FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_bookhist-1d.o pwhg_bookhist-3d.o observables.o pwhg_analysis-wrapper-WW.o analysis-WW-3D.o cs_angles.o rebinning_routines.o 
## Also add required Fastjet drivers to PWHGANAL (examples are reported)                                            #PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetCDFMidPointwrap.o fastjetD0RunIIConewrap.o fastjetfortran.o #PWHGANAL+= fastjetsisconewrap.o fastjetktwrap.o fastjetfortran.o                                                   PWHGANAL+=  fastjetfortran.o
endif

NINJAFLAGS=-DHAVE_CONFIG_H -I./$(GOSAMDIR) -I./$(GOSAMDIR)/ninja -O2 #-fcx-limited-range


# PYTHIA 8
PYTHIA_CONFIG=$(shell which pythia8-config)

FJCXXFLAGS+=-I$(shell $(PYTHIA_CONFIG) --includedir)
FJCXXFLAGS+=-I$(shell $(PYTHIA_CONFIG) --includedir)/Pythia8
FJCXXFLAGS+=-I$(shell $(PYTHIA_CONFIG) --includedir)/Pythia8Plugins

LIBPYTHIA8= -L$(shell $(PYTHIA_CONFIG) --libdir) -L$(shell $(PYTHIA_CONFIG) --libdir)/archive -lpythia8 -ldl -lstdc++ # -lHepMC #-llhapdfdummy


%.o: %.f $(INCLUDE) | $(OBJDIR)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.f90 $(INCLUDE) | $(OBJDIR)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.F90 $(INCLUDE) | $(OBJDIR)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.c | $(OBJDIR)
	$(CC) $(DEBUG) -c -o $(OBJ)/$@ $^ 

%.o: %.cc | $(OBJDIR)
	$(CXX) $(DEBUG) -c -o $(OBJ)/$@ $^ $(NINJAFLAGS) $(FJCXXFLAGS)

USER=init_couplings.o init_processes.o Born_phsp.o Born.o virtual.o	\
     real.o boost.o breit.o phi1_2.o phi1_2m_nobw_ktmin.o phi3m0.o randomizeckm.o  Check_LesHouches.o \
	ww_BigT.o ww_a6loop.o ww_a6tree.o \
	ww_couplzw.o ww_amps_anom.o \
	ww_fa.o ww_i3m.o ww_init_couplings.o \
	ww_qqb_ww.o ww_qqb_ww_v.o ww_setanomcoup.o \
	ww_spinoru.o ww_t.o ww_virtual.o ww_smcouplings.o ww_cpropfac.o \
	ww_dclaus.o ww_vpole.o ww_lnrat.o ww_lfunctions.o ww_L34_12.o \
	ww_isquark.o ww_smcouplings_test.o lhefread.o $(PWHGANAL)


PWHG=pwhg_main.o pwhg_init.o bbinit.o btilde.o lhefwrite.o		\
	LesHouches.o LesHouchesreg.o gen_Born_phsp.o find_regions.o	\
	test_Sudakov.o pt2maxreg.o sigborn.o gen_real_phsp.o maxrat.o	\
	gen_index.o gen_radiation.o Bornzerodamp.o sigremnants.o	\
	random.o boostrot.o bra_ket_subroutines.o cernroutines.o	\
	init_phys.o powheginput.o pdfcalls.o sigreal.o sigcollremn.o	\
	pwhg_analysis_driver.o checkmomzero.o		                \
	setstrongcoupl.o integrator.o newunit.o mwarn.o sigsoftvirt.o	\
	reshufflemoms.o pwhg_gosam.o                                    \
	sigcollsoft.o sigvirtual.o  ubprojections.o                     \
	pwhgreweight.o setlocalscales.o mint_upb.o opencount.o          \
	validflav.o minlo_checks.o \
	$(PDFPACK) $(USER) $(FPEOBJ) \
	pwhg_io_interface.o rwl_weightlists.o rwl_setup_param_weights.o \
	rwl_procdep.o nnlopsreweight.o 

LIBDIRMG=$(OBJ)
LINKMGLIBS =  -L$(LIBDIRMG)  -lmadgraph -lmodel -ldhelas3 

MADLIBS=libdhelas3.a libmadgraph.a libmodel.a

# Get SVN info for SVN version stamping code
#$(shell ../svnversion/svnversion.sh>/dev/null)

LIBS+=-lz

# target to generate LHEF output
pwhg_main:gosamlib.a $(PWHG) $(MADLIBS)
	$(FF) $(patsubst %,$(OBJ)/%,$(PWHG)) $(LINKMGLIBS) $(LIBS) $(LIBSFASTJET) $(STATIC)  $(OBJ)/gosamlib.a -o $@ -lstdc++

gosamlib.a: $(GOSAMLIBS)
	\rm $(OBJ)/gosamlib.a ; $(PWD)/$(GOSAMDIR)/compile_gosamlib.sh $(PWD)/$(OBJ)

#LHEF=lhef_analysis.o boostrot.o random.o cernroutines.o		\
#     opencount.o powheginput.o $(PWHGANAL)	\
     lhefread.o newunit.o pwhg_analysis_driver.o $(FPEOBJ) \
     pwhg_io_interface.o utils.o 

LHEF=lhef_analysis.o boostrot.o random.o cernroutines.o	utils.o	\
     opencount.o powheginput.o $(PWHGANAL) 	\
     lhefread.o pwhg_io_interface.o newunit.o pwhg_analysis_driver.o $(FPEOBJ) rwl_weightlists.o rwl_procdep.o nnlopsreweight.o


# target to analyze LHEF output
lhef_analysis:$(LHEF)
	$(FF) $(patsubst %,$(OBJ)/%,$(LHEF)) $(LIBS) $(LIBSFASTJET) $(STATIC)  -o $@ 
####	@echo "Analysis is" $(ANALYSIS)


# target to read event file, shower events with HERWIG + analysis
HERWIG=main-HERWIG.o setup-HERWIG-lhef.o herwig.o boostrot.o	\
	powheginput.o $(PWHGANAL) lhefread.o	\
	pdfdummies.o opencount.o $(FPEOBJ) 

main-HERWIG-lhef: $(HERWIG)
	$(FF) $(patsubst %,$(OBJ)/%,$(HERWIG))  $(LIBSFASTJET)  $(STATIC) -o $@

# target to read event file, shower events with PYTHIA + analysis
PYTHIA=main-PYTHIA.o setup-PYTHIA-lhef.o pythia.o boostrot.o powheginput.o \
	$(PWHGANAL) lhefread.o newunit.o 	\
	pwhg_analysis_driver.o random.o cernroutines.o opencount.o	\
	pwhg_io_interface.o rwl_weightlists.o utils.o \
	$(FPEOBJ)

main-PYTHIA-lhef: $(PYTHIA)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA)) $(LIBS) $(LIBSFASTJET)  $(STATIC) -o $@


# target to read event file, shower events with PYTHIA8 + analysis
PYTHIA8=main-PYTHIA8.o pythia8F77.o boostrot.o powheginput.o \
	$(PWHGANAL) opencount.o lhefread.o pwhg_io_interface.o newunit.o pdfdummies.o \
	random.o cernroutines.o bra_ket_subroutines.o utils.o \
	$(FPEOBJ) $(LIBZDUMMY) \
	rwl_weightlists.o rwl_procdep.o nnlopsreweight.o


main-PYTHIA8-lhef: $(PYTHIA8)
	@echo "compiling pythia8"
	@echo $(PYTHIA_CONFIG)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA8)) $(LIBSFASTJET) $(LIBPYTHIA8) $(STATIC) $(LIBS) -o $@


# extra dependencies 
rwl_weightlists.o: rwl_write_rwgt_extra_info.f rwl_write_weights_extra.f  
pwhg_bookhist-3d.o: pwhg_bookhist-common.h  
pwhg_bookhist-1d.o: pwhg_bookhist-common.h


# Target to cleanup
.PHONY: clean libdhelas3.a libmadgraph.a libmodel.a

XFFLAGS=$(DEBUG) $(OPT)
libdhelas3.a:
	cd DHELAS ; make -j FC="$(F77)" F77="$(F77)" XFFLAGS="$(XFFLAGS)" OBJ="$(OBJ)"

libmadgraph.a:
	cd Madlib ; make -j FC="$(F77)" F77="$(F77)" XFFLAGS"=$(XFFLAGS)" OBJ="$(OBJ)"

ifeq ("$(COMPILER)","gfortran")
XFFLAGS +=-ffixed-line-length-132
else
XFFLAGS +=-extend-source
endif

libmodel.a:
	cd MODEL ; make -j FC="$(F77)" F77="$(F77)" XFFLAGS="$(XFFLAGS)" OBJ="$(OBJ)"


clean:
	rm -f $(patsubst %,$(OBJ)/%,$(USER) $(PWHG) $(LHEF) $(HERWIG) $(PYTHIA)) pwhg_main lhef_analysis main-HERWIG-lhef	\
	main-PYTHIA-lhef


veryclean:
	rm -f $(OBJ)/*.o $(OBJ)/*.mod $(OBJ)/*.a pwhg_main lhef_analysis main-HERWIG-lhef	\
	main-PYTHIA-lhef *.a DHELAS/*.o Madlib/*.o MODEL/*.o GoSamlib.lst

# target to generate object directory if it does not exist
$(OBJDIR):
	mkdir -p $(OBJDIR)


# target to test compilation quickly
pwhg_main_nogosam:$(PWHG) $(MADLIBS)
	$(FF) $(patsubst %,$(OBJ)/%,$(PWHG)) $(LINKMGLIBS) $(LIBS) $(LIBSFASTJET) $(STATIC) -o $@ -lstdc++

##########################################################################

include $(GOSAMDIR)/Makefile.virt.dep

# Dependencies of SVN version stamp code
#pwhg_main.o: svn.version
#lhefwrite.o: svn.version

