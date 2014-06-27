 #-*- Makefile -*-
COMPILER=gfortran
## PDF: native, lhapdf
## For "lhapdf", the LAHPDF package has to be installed separately
PDF=lhapdf
## ANALYSIS: none, default
## "default" analysis may require FASTJET package, that has to be 
##           installed separately (see below)
ANALYSIS=default
# catch fpes:
#FPE= -ffpe-trap=invalid,zero,overflow,underflow 

# include Looptools flags!
FCO= $(COMPILER) -fno-automatic -fno-range-check -ffixed-line-length-none -lgfortran -ff2c -DQuad=0 -DU77EXT=0 $(FPE)


# for Looptools:
CCOMP = gcc
CFLAGS = -O3 -g -fomit-frame-pointer -ffast-math -Wall   -m64 -DNOUNDERSCORE=0 -DBIGENDIAN=0
## warning for type-conversions-> basically useless, as those occur in too many places
#WARN= -Wconversion
## -fbounds-check sometimes causes a weird error due to non-lazy evaluation
## of boolean in gfortran.
# FFLAGS=  -fbounds-check
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

PSD=$(shell pwd)
HDIR=$(PSD)/..
PWGDIR=$(PSD)/../..
PROCFILES=$(PSD)

TOOLS=$(HDIR)/Tools
VIRT=$(PSD)/FormCalc_Virtual
REALS=$(PSD)/Reals
LT=$(TOOLS)/Looptools_27

UINCLUDE=$(HDIR)/include
PINCLUDE=$(PWGDIR)/include
VINCLUDE=$(VIRT)/include
LTINCLUDE=$(LT)/include

vpath %.f $(PROCFILES) $(HDIR) $(PWGDIR) $(TOOLS)/MGstuff $(TOOLS)/functions $(TOOLS)/Procindependent $(TOOLS)/Decays $(TOOLS)/HELAS $(REALS) $(REALS)/qg_routines
vpath %.F $(TOOLS)/HELAS $(TOOLS)/FormCalcTools/kin $(TOOLS)/FormCalcTools/system  $(VIRT)/LL_squaredme $(VIRT)/LR_squaredme $(VIRT)/ud_LL_squaredme $(VIRT)/ud_LR_squaredme $(LT)/A $(LT)/B $(LT)/C $(LT)/D $(LT)/E $(LT)/util 

vpath %.c $(LT)/util
          
vpath %.o obj

vpath %.cc $(TOOLS)/Fastjetwrapper

FF=$(FCO) $(FFLAGS) $(FPE) $(OPT) $(WARN) $(DEBUG) $(PREPRO) -I$(UINCLUDE) -I$(PINCLUDE) -I$(VINCLUDE) -I$(LTINCLUDE) -I$(PSD)

CC=$(CCOMP) $(CFLAGS) -I$(LTINCLUDE)

INCLUDE =$(wildcard *.h $(UINCLUDE)/*.h  $(PINCLUDE)/*.h $(VINLCLUDE)/*.h $(UINCLUDE)/*.inc)
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


ifeq ("$(ANALYSIS)","default")
FASTJET_CONFIG=$(shell which fastjet-config)
LIBSFASTJET += $(shell $(FASTJET_CONFIG) --libs --plugins ) -lstdc++
FJCXXFLAGS+= $(shell $(FASTJET_CONFIG) --cxxflags)

PWHGANAL=pwhg_analysis-sqsq.o pwhg_bookhist-multi.o \
         fastjetfortran.o analysisroutines.o 
# pwhg_bookhist-new.o
else
PWHGANAL=pwhg_analysis-dummy.o  pwhg_bookhist-multi.o
#pwhg_bookhist-new.o
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
USER= init_couplings.o Born_phsp.o Real_phsp.o Born.o Virtual.o $(PWHGANAL)  \
Real.o init_processes.o sigsplit.o real_split.o Real_color.o Born_color.o 1to2_phasespace.o

REAL=M12.o M22.o M32.o M42.o M52.o M1M2.o M1M3.o M1M4.o M1M5.o M2M3.o M2M4.o M2M5.o \
      M3M4.o M3M5.o M4M5.o M1M1u.o M2M2u.o M3M3u.o M4M4u.o M5M5u.o M1M2u.o M1M3u.o \
      M1M4u.o M1M5u.o M2M3u.o M2M4u.o M2M5u.o M3M4u.o M3M5u.o M4M5u.o M2M1u.o  M3M1u.o  \
      M4M1u.o  M5M1u.o M3M2u.o  M4M2u.o  M5M2u.o  M4M3u.o  M5M3u.o  M5M4u.o  compreal.o \
      comprealCF.o comprealCFsplit.o CS_reshuffling_SA.o


VIRTUAL=LL_SquaredME.o LL_abbr1_hel.o LL_abbr0_hel.o LL_abbr1_angle.o \
        LL_abbr1_s.o LL_abbr0_s.o LL_box.o LL_tri.o LL_self.o LL_born.o \
        LL_CalcRenConst.o LR_SquaredME.o LR_abbr1_hel.o LR_abbr0_hel.o \
        LR_abbr1_angle.o LR_abbr1_s.o LR_abbr0_s.o LR_box.o LR_tri.o \
        LR_self.o LR_born.o LR_CalcRenConst.o ud_LL_SquaredME.o \
       ud_LL_abbr1_hel.o ud_LL_abbr0_hel.o ud_LL_abbr1_angle.o ud_LL_abbr1_s.o \
        ud_LL_abbr0_s.o ud_LL_box.o ud_LL_tri.o ud_LL_self.o ud_LL_born.o \
       ud_LL_CalcRenConst.o ud_LR_SquaredME.o ud_LR_abbr1_hel.o ud_LR_abbr0_hel.o \
       ud_LR_abbr1_angle.o ud_LR_abbr1_s.o ud_LR_abbr0_s.o ud_LR_box.o \
       ud_LR_tri.o ud_LR_self.o ud_LR_born.o ud_LR_CalcRenConst.o 

### LT
LTOBJ =  A0.o A00.o  \
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

FUNCTIONS=assignPDG.o  getmass.o hep2pwg.o  \
	readcuts.o readbornflst.o switchmom.o assignCF.o 

DECAY=sqdecay_setflst.o sqdecay_born.o sqdecay_virtual.o\
       sqdecay_real.o sqdecay_color.o sdecay_gammatot.o

FORMCALC=  Error.o fortranflush.o ThreeMom.o VecSet.o \
           Split.o SInvariant.o TInvariant.o Pair.o Eps.o SxS.o SeS.o VxS.o \
           VeS.o BxS.o BeS.o IndexEps.o 

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
        $(USER) $(VIRTUAL) $(REAL) $(REALCOFL) $(MG) $(FUNCTIONS) $(FORMCALC) $(LTOBJ) $(DECAY)


pwhg_main_sqsq: $(PWHG) 
	$(FF) $(patsubst %,obj/%,$(PWHG)) $(LIBS) $(LIBSFASTJET) -o $@ 

clean:
	rm -f obj/*.o pwhg_main_sqsq 

