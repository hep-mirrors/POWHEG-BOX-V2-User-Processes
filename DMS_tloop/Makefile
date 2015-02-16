#-*- Makefile -*-

## Choose compiler: gfortran,ifort (g77 not supported, F90 constructs in use!)
COMPILER=gfortran
FC=$(COMPILER)

## Choose PDF: native,lhapdf
## LHAPDF package has to be installed separately
PDF=lhapdf
#PDF=native

## Choose Analysis:
## default analysis may require FASTJET package, that has to be installed separately (see below)

############
# tt+met paper: monojet analysis
#ANALYSIS=paperttmet_mul
#pwhg_analysis_DM_paperttmet_mul.f
############
# tt+met paper: tt+met analysis (amt2)
#ANALYSIS=paperttmet_ttptmiss
#pwhg_analysis_DM_paperttmet_TTPTMISS_mul.f
############


#ANALYSIS=none
ANALYSIS=template
#ANALYSIS=mcfm
#ANALYSIS=mcfm_fromV
########### to be used to check 
#ANALYSIS=paper_mul
#ANALYSIS=paperttmet_mul
#ANALYSIS=ttmet
#ANALYSIS=paper_mul_jj
#ANALYSIS=paper_mul_jj_2
########### to be used to check azimuthal correlation
#ANALYSIS=paper_mul_jj_3

#ANALYSIS=DM_jjpaper




## For static linking uncomment the following
#STATIC= -static

ifeq ("$(COMPILER)","gfortran")	
F77= gfortran -fno-automatic -ffixed-line-length-132
## -fbounds-check sometimes causes a weird error due to non-lazy evaluation
## of boolean in gfortran.
FFLAGS= -Wall -fbounds-check # -Wimplicit-interface 
## For floating point exception trapping  uncomment the following 
#FPE=-ffpe-trap=invalid,zero,overflow,underflow 
## gfortran 4.4.1 optimized with -O3 yields erroneous results
## Use -O2 to be on the safe side
OPT=-O2
## For debugging uncomment the following
#DEBUG= -ggdb
ifdef DEBUG
FPE=-ffpe-trap=invalid,zero,overflow
#,underflow
OPT=-O0
endif
endif

PWD=$(shell pwd)
WDNAME=$(shell basename $(PWD))
VPATH= ./:../:obj/

INCLUDE0=$(PWD)
INCLUDE1=$(PWD)/include
INCLUDE2=$(shell dirname $(PWD))/include
FF=$(F77) $(FFLAGS) $(FPE) $(OPT) $(DEBUG) -I$(INCLUDE0) -I$(INCLUDE1) -I$(INCLUDE2)


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
# LIBGFORTRANPATH= #/usr/lib/gcc/x86_64-redhat-linux/4.1.2
# LIBSTDCPP=/lib64
# LIBSLHAPDF+=  -L$(LIBGFORTRANPATH)  -lgfortranbegin -lgfortran -L$(LIBSTDCPP) -lstdc++
endif
LIBS+=$(LIBSLHAPDF)
else
PDFPACK=mlmpdfif.o hvqpdfpho.o
endif


ifeq ("$(ANALYSIS)","none")
PWHGANAL=pwhg_analysis-dummy.o
endif

ifeq ("$(ANALYSIS)","template")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis_DM_template.o pwhg_bookhist-multi.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetfortran.o
endif

ifeq ("$(ANALYSIS)","mcfm")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis_DM_mcfm.o pwhg_bookhist.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetfortran.o
endif

ifeq ("$(ANALYSIS)","mcfm_fromV")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis_DM_mcfm_fromV.o pwhg_bookhist.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetfortran.o
endif

ifeq ("$(ANALYSIS)","paper_mul")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis_DM_paper_mul.o pwhg_bookhist-multi.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetfortran.o
endif

ifeq ("$(ANALYSIS)","paperttmet_mul")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis_DM_paperttmet_mul.o pwhg_bookhist-multi.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetfortran.o
endif

# ifeq ("$(ANALYSIS)","ttmet")
# ##To include Fastjet configuration uncomment the following lines. 
# FASTJET_CONFIG=$(shell which fastjet-config)
# LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
# FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
# PWHGANAL=pwhg_analysis_DM_ttmet.o pwhg_bookhist-multi.o
# ## Also add required Fastjet drivers to PWHGANAL (examples are reported)
# PWHGANAL+= fastjetfortran.o mt2.o mt2bl_bisect.o mt2w_bisect.o
# endif


ifeq ("$(ANALYSIS)","paperttmet_ttptmiss")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis_DM_paperttmet_TTPTMISS_mul.o pwhg_bookhist-multi.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetfortran.o mt2.o mt2bl_bisect.o mt2w_bisect.o
endif

ifeq ("$(ANALYSIS)","paper_mul_jj")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis_DM_paper_mul_jj.o pwhg_bookhist-multi.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetfortran.o
endif

ifeq ("$(ANALYSIS)","paper_mul_jj_2")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis_DM_paper_mul_jj_2.o pwhg_bookhist-multi.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetfortran.o
endif

ifeq ("$(ANALYSIS)","paper_mul_jj_3")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis_DM_paper_mul_jj_3.o pwhg_bookhist-multi.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetfortran.o
endif

ifeq ("$(ANALYSIS)","DM_jjpaper")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis_DM_jjpaper.o pwhg_bookhist-multi.o
## Also add required Fastjet drivers to PWHGANAL (examples are reported)
PWHGANAL+= fastjetfortran.o
endif


#PYTHIA8LOCATION=/home/re/C_Cpp/pythia8180
#FJCXXFLAGS+=-I$(PYTHIA8LOCATION)/include
#LIBPYTHIA8=-L$(PYTHIA8LOCATION)/lib/archive -lpythia8 -llhapdfdummy -lstdc++


%.o: %.f $(INCLUDE)
	$(FF) -c -o obj/$@ $<

pythia.o: pythia.f
	gfortran -fno-automatic -ffixed-line-length-132 -Wall -c -o obj/pythia.o $<

%.o: %.c
	$(CC) $(DEBUG) -c -o obj/$@ $^ $(FJCXXFLAGS)

%.o: %.cc
	$(CXX) $(DEBUG) -c -o obj/$@ $^ $(FJCXXFLAGS)

%.o: %.cpp
	$(CXX) $(DEBUG) -c -o obj/$@ $^ $(FJCXXFLAGS)

USER=init_couplings.o init_processes.o Born_phsp.o Born.o virtual.o	\
     real.o $(PWHGANAL)

MCFMFILES=i2mcfm_2_POWHEG.o set_interface_MCFM.o i2mcfm_fill.o coupling.o 
# \
# 	gg_hg_vi.o gg_hg_eval_v.o hjetfill.o dotem.o set_epinv.o 

# MADLIBS=libmadgraph.a libmodel.a libdhelas3.a

PWHG=pwhg_main.o pwhg_init.o bbinit.o btilde.o lhefwrite.o		\
	LesHouches.o LesHouchesreg.o gen_Born_phsp.o find_regions.o	\
	test_Sudakov.o pt2maxreg.o sigborn.o gen_real_phsp.o maxrat.o	\
	gen_index.o gen_radiation.o Bornzerodamp.o sigremnants.o	\
	random.o boostrot.o bra_ket_subroutines.o cernroutines.o	\
	init_phys.o powheginput.o pdfcalls.o sigreal.o sigcollremn.o	\
	pwhg_analysis_driver.o checkmomzero.o		\
	setstrongcoupl.o integrator.o newunit.o mwarn.o sigsoftvirt.o	\
	sigcollsoft.o sigvirtual.o setlocalscales.o validflav.o mint_upb.o  \
	pwhgreweight.o opencount.o ubprojections.o  \
	reshufflemoms.o                                                 \
	$(PDFPACK) $(USER) $(FPEOBJ) $(MCFMFILES)

LIBDIRMG=.
LINKMGLIBS =  -L$(LIBDIRMG)  # -lmadgraph -lmodel -ldhelas3 

# target to generate LHEF output
pwhg_main:$(PWHG)   $(MADLIBS)
	$(FF) $(patsubst %,obj/%,$(PWHG)) $(LINKMGLIBS) $(LIBS) $(LIBSFASTJET) $(STATIC) -o $@

LHEF=lhef_analysis.o boostrot.o random.o cernroutines.o		\
     opencount.o powheginput.o $(PWHGANAL)	\
     lhefread.o newunit.o pwhg_analysis_driver.o bra_ket_subroutines.o $(FPEOBJ)

# target to analyze LHEF output
lhef_analysis:$(LHEF)
	$(FF) $(patsubst %,obj/%,$(LHEF)) $(LIBS) $(LIBSFASTJET) $(STATIC)  -o $@ 



# target to read event file, shower events with HERWIG + analysis
HERWIG=main-HERWIG.o setup-HERWIG-lhef.o herwig.o boostrot.o	\
	powheginput.o $(PWHGANAL) lhefread.o	\
	pdfdummies.o opencount.o $(FPEOBJ) 

main-HERWIG-lhef: $(HERWIG)
	$(FF) $(patsubst %,obj/%,$(HERWIG))  $(LIBSFASTJET)  $(STATIC) -o $@

# target to read event file, shower events with PYTHIA + analysis
PYTHIA=main-PYTHIA.o setup-PYTHIA-lhef.o pythia.o boostrot.o powheginput.o		\
	$(PWHGANAL) lhefread.o newunit.o pdfdummies.o bra_ket_subroutines.o	\
	pwhg_analysis_driver.o random.o cernroutines.o opencount.o	\
	$(FPEOBJ)

main-PYTHIA-lhef: $(PYTHIA)
	$(FF) $(patsubst %,obj/%,$(PYTHIA)) $(LIBSFASTJET)  $(STATIC) -o $@


PYTHIA8=main-PYTHIA8.o pythia8F77.o boostrot.o powheginput.o \
	$(PWHGANAL) lhefread.o newunit.o pdfdummies.o		\
	pwhg_analysis_driver.o random.o cernroutines.o opencount.o	\
	$(FPEOBJ)

main-PYTHIA8-lhef: $(PYTHIA8)
	$(FF) $(patsubst %,obj/%,$(PYTHIA8)) $(LIBSFASTJET) $(LIBPYTHIA8) $(STATIC) -o $@









# target to cleanup
.PHONY: clean
clean:
	rm -f obj/*.o pwhg_main lhef_analysis main-HERWIG-lhef	\
	main-PYTHIA-lhef

# XFFLAGS=$(DEBUG) $(OPT)
# libdhelas3.a:
# 	cd DHELAS ; make FC="$(F77)" F77="$(F77)" XFFLAGS="$(XFFLAGS)"

# libmadgraph.a:
# 	cd Madlib ; make FC="$(F77)" F77="$(F77)" XFFLAGS"=$(XFFLAGS)"


# ifeq ("$(COMPILER)","gfortran")
# XFFLAGS +=-ffixed-line-length-132
# else
# XFFLAGS +=-extend-source
# endif

# libmodel.a:
# 	cd MODEL ; make FC="$(F77)" F77="$(F77)" XFFLAGS="$(XFFLAGS)"

# clean also the MadGraph libraries
veryclean:
	rm -f obj/*.o pwhg_main lhef_analysis main-HERWIG-lhef	\
	main-PYTHIA-lhef *.a DHELAS/*.o Madlib/*.o MODEL/*.o
