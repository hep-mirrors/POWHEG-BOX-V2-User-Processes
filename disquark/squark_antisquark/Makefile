 #-*- Makefile -*-
COMPILER=gfortran
## PDF: native, lhapdf
## For "lhapdf", the LAHPDF package has to be installed separately
PDF=lhapdf
# PDF=native
## ANALYSIS: none, default
## "default" analysis may require FASTJET package, that has to be 
##           installed separately (see below)
ANALYSIS=default
# catch fpes:
# FPE= -ffpe-trap=invalid,zero,overflow

FCO= $(COMPILER) -fno-automatic -fno-range-check -ffixed-line-length-none -lgfortran -ff2c -DU77EXT=0 -DQuad=0 $(FPE)

# for Looptools:
CCOMP = gcc
CFLAGS = -O3 -g -fomit-frame-pointer -ffast-math -Wall -m64 -DNOUNDERSCORE=0 -DBIGENDIAN=0 

## warning for type-conversions-> basically useless, as those occur in too many places
#WARN= -Wconversion
## -fbounds-check sometimes causes a weird error due to non-lazy evaluation
## of boolean in gfortran.
#FFLAGS=  -fbounds-check
# FFLAGS=-Wall -Wtabs -Wall -Wimplicit-interface
## gfortran 4.4.1 optimized with -O3 yields erroneous results
## Use -O2 to be on the safe side
OPT=-O2
## For debugging uncomment the following
#DEBUG= -ggdb -pg 
# endif
PREPRO= -cpp

### generate directory obj, if not yet existing
$(shell mkdir -p obj)

#pwd: print working directory
PSD=$(shell pwd)
HDIR=$(PSD)/..
PWGDIR=$(PSD)/../..

TOOLS=$(HDIR)/Tools
VIRT=$(PSD)/FormCalc_Virtual
REALS=$(PSD)/Reals
LT=$(TOOLS)/Looptools_27

UINCLUDE=$(HDIR)/include
PINCLUDE=$(PWGDIR)/include
VINCLUDE=$(VIRT)/include
LTINCLUDE=$(LT)/include

vpath %.f $(HDIR) $(PWGDIR) $(TOOLS)/FormCalcTools $(TOOLS)/MGstuff $(TOOLS)/functions $(TOOLS)/Procindependent $(TOOLS)/Decays $(TOOLS)/HELAS $(REALS) $(REALS)/gg_MadGraph $(REALS)/qg_routines
vpath %.F $(TOOLS)/HELAS $(TOOLS)/FormCalcTools/kin $(TOOLS)/FormCalcTools/system $(LT)/A $(LT)/B $(LT)/C $(LT)/D $(LT)/E $(LT)/util 
vpath %.F $(VIRT)/RenConsts $(VIRT)/LLsf_squaredme $(VIRT)/LLdf_squaredme $(VIRT)/uLdL_squaredme  $(VIRT)/LLgg_squaredme $(VIRT)/uLdR_squaredme

vpath %.c $(LT)/util
          
vpath %.o obj

vpath %.cc $(TOOLS)/Fastjetwrapper

FF=$(FCO) $(FFLAGS) $(FPE) $(OPT) $(WARN) $(DEBUG) $(PREPRO) -I$(UINCLUDE) -I$(PINCLUDE) -I$(LTINCLUDE) -I$(PSD) -I$(VINCLUDE)

CC=$(CCOMP) $(CFLAGS) -I$(LTINCLUDE)

INCLUDE =$(wildcard *.h $(UINCLUDE)/*.h  $(PINCLUDE)/*.h $(VINCLUDE)/*.h  $(UINCLUDE)/*.inc  $(LT)/include)
########################################################
ifeq ("$(PDF)","lhapdf")
LHAPDF_CONFIG=lhapdf-config
PDFPACK=lhapdfif.o
LIBSLHAPDF= -Wl,-rpath,$(shell $(LHAPDF_CONFIG) --libdir)  -L$(shell $(LHAPDF_CONFIG) --libdir) -lLHAPDF
ifeq  ("$(STATIC)","-static")
## If LHAPDF has been compiled with gfortran and you want to link it statically, you have to include
## libgfortran as well. The same holds for libstdc++. 
## One possible solution is to use fastjet, since $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
## does perform this inclusion. The path has to be set by the user. 
# LIBGFORTRANPATH=/usr/lib/gcc/x86_64-redhat-linux/4.4
# LIBSTDCPP=/usr/lib/gcc/i386-redhat-linux/4.3.0/
# LIBSLHAPDF +=  -L$(LIBGFORTRANPATH)  -lgfortranbegin -lgfortran -L$(LIBSTDCPP) -lstdc++
endif
LIBS +=  $(LIBSLHAPDF) 
else
PDFPACK=mlmpdfif.o hvqpdfpho.o
endif

### for QCDLOOP:
# LIBS += -L$(QLDIR) -L$(FFDIR)

ifeq ("$(ANALYSIS)","default")
##To include Fastjet configuration uncomment the following lines. 
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)
PWHGANAL=pwhg_analysis-sqantisq.o pwhg_bookhist-multi.o \
         fastjetfortran.o analysisroutines.o
else
PWHGANAL=pwhg_analysis-dummy.o  pwhg_bookhist-multi.o
endif

%.o: %.f $(INCLUDE)
	$(FF) -c -o obj/$@ $<

%.o: %.F $(INCLUDE)
	$(FF) -c -o obj/$@ $<

%.o: %.cc
	$(CXX) $(DEBUG) -c -o obj/$@ $^ $(FJCXXFLAGS)

%.o: %.c $(INCLUDE)
	$(CC) -c -o obj/$@ $<

###########################################################
USER=init_couplings.o Born_phsp.o Born.o Virtual.o $(PWHGANAL)  \
Real.o init_processes.o CS_reshuffling_SA.o Real_phsp.o sigsplit.o Born_color.o 1to2_phasespace.o

REAL = gg_sqsqbarg.o compreal.o M42.o M6M11.o M4M11.o M6M8.o M6M9.o  \
   M1M9.o M1M8.o M1M3.o M1M4.o M1M7.o M1M6.o M7M9.o M7M8.o M3M7.o \
   M3M6.o M3M4.o M3M9.o M3M8.o M8M9.o M92.o M12.o M72.o M4M8.o M4M9.o \
   M82.o M4M6.o M4M7.o M112.o M1M11.o M62.o M3M11.o M7M11.o M2M7.o \
   M5M9.o M7M10.o M2M4.o M1M2.o M5M8.o M2M5.o M5M10.o M1M5.o M3M5.o \
   M5M11.o M6M10.o M4M5.o M4M10.o M2M3.o M9M10.o M3M10.o M52.o M8M10.o \
   M10M11.o M22.o M102.o M5M7.o M2M11.o M2M8.o M2M9.o M2M6.o M1M10.o \
   M5M6.o M2M10.o M8M11.o M6M7.o M32.o M9M11.o real_split.o 


REALCOFL= comprealCF.o comprealCFsplit.o Real_color.o

HELAS=sxxxxx.o vxxxxx.o jvvxxx.o jssxxx.o vvvxxx.o hvsxxx.o  \
  vssxxx.o vvssxx.o hvvsxx.o jgggxx.o jvssxx.o

### LT
LTOBJ = A0.o A00.o  \
  ffxa0.o  \
  Bget.o Bcoeff.o  \
  Bcoeffa.o  Bcoeffb.o \
  ffxb0.o  ffxb1.o \
  ffxb2p.o  \
  ffxdb0.o ffxdb1.o \
  ffdel2.o ffcel2.o \
  C0.o  Cget.o \
  ffxc0.o ffcc0.o ffxc0i.o ffxc0p0.o \
  ffxc0p.o ffcc0p.o ffdxc0.o ffdcc0.o \
  ffdel3.o ffcel3.o \
  D0.o  Dget.o  \
  ffxd0.o ffxd0h.o ffxd0i.o ffxd0p.o \
  ffxd0m0.o ffxd0tra.o ffxdbd.o ffdel4.o ffd0c.o \
  ffTn.o ffT13.o ffS2.o ffS3n.o ffRn.o \
  E0.o Eget.o \
  Ecoeffa.o Ecoeffb.o \
  ffxe0.o ffdel5.o \
  ini.o auxCD.o solve.o  \
  Dump.o  Li2.o  Li2omx.o  \
  cache.o ffinit.o \
  ffxli2.o ffcli2.o ffxxyz.o ffcxyz.o \
  ffcrr.o ffcxr.o fftran.o ffabcd.o ff2dl2.o \
  ffcxs3.o ffcxs4.o ffdcxs.o ffbndc.o 

MG=couplings.o read_slha.o hardstop.o

FUNCTIONS=assignPDG.o  hep2pwg.o getmass.o \
	readcuts.o readbornflst.o  switchmom.o assignCF.o 

DECAY=sqdecay_setflst.o sqdecay_born.o sqdecay_virtual.o\
       sqdecay_real.o sqdecay_color.o sdecay_gammatot.o

FORMCALC=  Error.o fortranflush.o ThreeMom.o VecSet.o \
           Split.o SInvariant.o TInvariant.o Pair.o Eps.o SxS.o SeS.o VxS.o \
           VeS.o BxS.o BeS.o IndexEps.o comphelroutines.o

VIRTUALS= sqantisq_RenConsts.o LLsf_abbr1_angle.o LLsf_abbr1_s.o\
   LLsf_triuLuLqqbarsf.o LLsf_abbr0_hel.o LLsf_SquaredME.o\
   LLsf_abbr0_s.o LLsf_bornuLuLqqbarsf.o LLsf_boxuLuLqqbarsf.o\
   LLsf_selfuLuLqqbarsf.o LLsf_abbr1_hel.o LLdf_triuLuLqqbardf.o\
   LLdf_abbr1_s.o LLdf_SquaredME.o LLdf_boxuLuLqqbardf.o\
   LLdf_abbr1_angle.o LLdf_abbr0_hel.o LLdf_selfuLuLqqbardf.o\
   LLdf_bornuLuLqqbardf.o LLdf_abbr0_s.o uLdL_abbr1_angle.o\
   uLdL_abbr1_s.o uLdL_selfuLdL.o uLdL_abbr0_hel.o\
   uLdL_boxuLdL.o uLdL_triuLdL.o uLdL_abbr1_hel.o\
   uLdL_abbr0_s.o uLdL_SquaredME.o uLdL_bornuLdL.o\
   LLgg_bornuLuLgg.o LLgg_abbr0_s.o\
   LLgg_abbr1_s.o LLgg_selfuLuLgg.o LLgg_SquaredME.o\
   LLgg_abbr1_angle.o LLgg_triuLuLgg.o LLgg_abbr0_hel.o\
   LLgg_boxuLuLgg.o LLgg_abbr1_hel.o uLdR_abbr0_s.o\
   uLdR_abbr0_hel.o uLdR_bornuLdR.o uLdR_abbr1_hel.o\
   uLdR_abbr1_s.o uLdR_triuLdR.o uLdR_SquaredME.o\
   uLdR_boxuLdR.o uLdR_selfuLdR.o uLdR_abbr1_angle.o

PWHG=  LesHouchesreg.o bra_ket_subroutines.o sigreal.o utils.o newunit.o \
       pt2maxreg.o pwhg_analysis_driver.o sigsoftvirt.o validflav.o \
       test_Sudakov.o LesHouches.o bbinit.o boostrot.o btilde.o cernroutines.o \
       checkmomzero.o decidemerging.o find_regions.o gen_Born_phsp.o \
       gen_radiation.o lhefread.o loadstorenlo.o random.o \
       setlocalscales.o ubprojections.o gen_index.o mwarn.o opencount.o \
       powheginput.o setstrongcoupl.o  gen_real_phsp.o init_phys.o integrator.o \
       lhefwrite.o maxrat.o mint_upb.o pdfcalls.o pwhg_init.o pwhgreweight.o \
       sigborn.o sigcollremn.o sigcollsoft.o sigremnants.o Bornzerodamp.o  \
       pwhg_main.o reshufflemoms.o sigvirtual.o $(PDFPACK)\
        $(USER) $(VIRTUALS) $(REAL) $(REALCOFL) $(MG) $(FUNCTIONS) $(FORMCALC) $(LTOBJ)  $(HELAS) $(DECAY)

pwhg_main_sqantisq: $(PWHG) 
	$(FF) $(patsubst %,obj/%,$(PWHG)) $(LIBS) $(LIBSFASTJET) -o $@ 

clean:
	rm -f obj/*.o pwhg_main_sqantisq 
