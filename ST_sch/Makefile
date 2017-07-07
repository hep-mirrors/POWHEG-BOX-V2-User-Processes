#-*- Makefile -*-
## Choose compiler: gfortran,ifort
COMPILER=gfortran
## Choose PDF: native,lhapdf
## LHAPDF package has to be installed separately
PDF=lhapdf
#lhapdf
#Choose Analysis: none, default
## default analysis may require FASTJET package, that has to be installed separately (see below)
ANALYSIS=default
## For static linking uncomment the following
#STATIC= -static
#
ifeq ("$(COMPILER)","gfortran")	
F77= gfortran -fno-automatic 	
## -fbounds-check sometimes causes a weird error due to non-lazy evaluation
## of boolean in gfortran.
##FFLAGS= -Wall -Wimplicit-interface
FFLAGS=	-ffixed-line-length-132
## For floating point exception trapping  uncomment the following 
#FPE=-ffpe-trap=invalid,zero,overflow,underflow 
## gfortran 4.4.1 optimized with -O3 yields erroneous results
## Use -O2 to be on the safe side
OPT=-O2
## For debugging uncomment the following
#DEBUG= -ggdb -pg
endif

ifeq ("$(COMPILER)","ifort")
F77 = ifort -save  -extend_source
CXX = icpc
LIBS = -limf
FFLAGS =  -check
## For floating point exception trapping  uncomment the following 
#FPE = -fpe0
OPT = -O3 #-fast
## For debugging uncomment the following
#DEBUG= -debug -g
endif

OBJ=obj-$(COMPILER)

PWD=$(shell pwd)
WDNAME=$(shell basename $(PWD))
VPATH= ./:../:$(OBJ)/

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
# LIBGFORTRANPATH=/usr/lib/gcc/x86_64-redhat-linux/4.1.2
# LIBSTDCPP=/lib64
# LIBSLHAPDF+=  -L$(LIBGFORTRANPATH)  -lgfortranbegin -lgfortran -L$(LIBSTDCPP) -lstdc++
endif
LIBS+=$(LIBSLHAPDF)
else
PDFPACK=mlmpdfif.o hvqpdfpho.o
endif

PWHGANAL=pwhg_analysis-dummy.o  pwhg_bookhist-multi.o 

ifeq ("$(ANALYSIS)","default")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis.o  pwhg_bookhist-multi.o 
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetktwrap.o # fastjetCDFMidPointwrap.o fastjetD0RunIIConewrap.o fastjetfortran.o
endif

########## 
# This section is needed to compile and link routines relevant for madgraph:
# add libdhelas3.2a to the list of linked libraries:

# clear and reassign VPATH (needs also directories relevant to link madgraph):
vpath
VPATH=./:../:$(OBJ)/:madgraph/:madgraph/ME_undecayed/:madgraph/ME_decayed
# list of madgraph routines:
LIBMADGRAPH=madgraph/dhelas3.2/libdhelas3.2.a
MADGRAPH=my_setpara.o switchmom.o printout.o \
	bdx_tux.o bu_td.o dxb_tux.o dxu_tbx.o ub_td.o udx_tbx.o \
	udx_tbxg.o ub_tdg.o  gb_tuxd_T.o \
	dxu_tbxg.o  dxb_tuxg.o bu_tdg.o bg_tuxd_T.o \
	bdx_tuxg.o \
	gdx_tuxbx_S.o gdx_tuxbx_T.o gu_tdbx_S.o gu_tdbx_T.o \
	dxg_tuxbx_S.o dxg_tuxbx_T.o ug_tdbx_S.o ug_tdbx_T.o \
	bdx_epvebux.o dxb_epvebux.o ub_epvebd.o \
	bu_epvebd.o dxu_epvebbx.o udx_epvebbx.o \
	bdx_epvebuxg.o dxb_epvebuxg.o gb_epvebuxd_T.o udx_epvebbxg.o \
	bg_epvebuxd_T.o dxu_epvebbxg.o      \
	bu_epvebdg.o  ub_epvebdg.o \
	gdx_epvebuxbx_S.o gu_epvebdbx_S.o dxg_epvebuxbx_S.o ug_epvebdbx_S.o \
	gdx_epvebuxbx_T.o gu_epvebdbx_T.o dxg_epvebuxbx_T.o ug_epvebdbx_T.o
##########


%.o: %.f $(INCLUDE)
	$(FF) -c -o $(OBJ)/$@ $<

%.o: %.c
	$(CC) $(DEBUG) -c -o $(OBJ)/$@ $^ 

%.o: %.cc
	$(CXX) $(DEBUG) -c -o $(OBJ)/$@ $^ $(FJCXXFLAGS)
LIBS+=-lz

USER=init_couplings.o init_processes.o Born_phsp.o Born.o virtual.o	\
     real.o $(PWHGANAL) boost.o $(MADGRAPH)

PWHG=pwhg_main.o pwhg_init.o bbinit.o btilde.o lhefwrite.o		\
	LesHouches.o LesHouchesreg.o gen_Born_phsp.o find_regions.o	\
	test_Sudakov.o pt2maxreg.o sigborn.o gen_real_phsp.o maxrat.o	\
	gen_index.o gen_radiation.o Bornzerodamp.o sigremnants.o	\
	random.o boostrot.o bra_ket_subroutines.o cernroutines.o	\
	init_phys.o powheginput.o pdfcalls.o sigreal.o sigcollremn.o	\
	pwhg_analysis_driver.o checkmomzero.o		\
	setstrongcoupl.o integrator.o newunit.o mwarn.o sigsoftvirt.o	\
	reshufflemoms.o setlocalscales.o validflav.o mint_upb.o  \
	minlo_checks.o  pwhgreweight.o opencount.o ubprojections.o \
	sigcollsoft.o sigvirtual.o  $(PDFPACK) $(USER) $(FPEOBJ) lhefread.o pwhg_io_interface.o rwl_weightlists.o rwl_setup_param_weights.o

# target to generate LHEF output

$(shell ../svnversion/svnversion.sh>/dev/null)

pwhg_main: $(PWHG) $(LIBMADGRAPH)
	$(FF) $(patsubst %,$(OBJ)/%,$(PWHG)) $(LIBS) $(LIBMADGRAPH) $(LIBSFASTJET) $(STATIC) -o $@

# target to analyze LHEF output
LHEF=lhef_analysis.o boostrot.o random.o cernroutines.o	      \
	opencount.o powheginput.o lhefread.o pwhg_io_interface.o rwl_weightlists.o  \
	newunit.o pwhg_analysis_driver.o $(FPEOBJ)            \
	$(PWHGANAL) boost.o

lhef_analysis: $(LHEF)
	$(FF) $(patsubst %,$(OBJ)/%,$(LHEF)) $(LIBS) $(LIBSFASTJET) $(STATIC)  -o $@ 

# target to read event file, shower events with HERWIG + analysis
HERWIG=main-HERWIG.o setup-HERWIG-lhef.o herwig.o boostrot.o powheginput.o \
	pwhg_bookhist-multi.o lhefread.o pwhg_io_interface.o rwl_weightlists.o opencount.o pdfdummies.o $(FPEOBJ)      \
	$(PWHGANAL) boost.o

main-HERWIG-lhef: $(HERWIG)
	$(FF) $(patsubst %,$(OBJ)/%,$(HERWIG)) $(LIBSFASTJET) $(STATIC) -o $@

# target to read event file, shower events with PYTHIA + analysis
PYTHIA=main-PYTHIA.o setup-PYTHIA-lhef.o pythia.o boostrot.o powheginput.o \
	pwhg_bookhist-multi.o lhefread.o pwhg_io_interface.o rwl_weightlists.o opencount.o pdfdummies.o $(FPEOBJ)      \
	$(PWHGANAL) boost.o

main-PYTHIA-lhef: $(PYTHIA)
	$(FF) $(patsubst %,$(OBJ)/%,$(PYTHIA)) $(LIBSFASTJET) $(STATIC) -o $@

# target to cleanup
.PHONY: clean
clean:
	rm -f $(OBJ)/*.o pwhg_main lhef_analysis main-HERWIG-lhef	\
	main-PYTHIA-lhef \
	madgraph/dhelas3.2/*.o madgraph/dhelas3.2/*.a \
	merge_t_tb

###################################################################
# From here on there are targets specific to the ST implementation
##################################################################

##########
# command to compile dhelas3.2 library:
$(LIBMADGRAPH): force_look
	@echo looking into subdir madgraph/dhelas3.2
	$(MAKE) FC='$(F77) -ffixed-line-length-132' --directory=madgraph/dhelas3.2 
force_look :
	true
##########

##########
# to build executable that merge t and tbar events
# according to relative cross sections:

MERGE_t_tb=merge_t_tb.o newunit.o random.o cernroutines.o

#  target to merge t and tbar samples
merge_t_tb: $(MERGE_t_tb)
	$(FF) $(patsubst %,$(OBJ)/%,$(MERGE_t_tb)) -o $@
##########

