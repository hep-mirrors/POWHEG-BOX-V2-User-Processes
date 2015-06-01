#-----------------------------------------------------------------------------
# Replace this with the location of the dynnlo-patches directory 
PATCHESDIR = $(PWD)/dynnlo-patches

# The following 3 lines allow the program to compile and run without
# the need to set explicitly the LD_LIBRARY_PATH variable to the LHAPDF location
LHAPDF_CONFIG=lhapdf-config
PDFPACK=lhapdfif.o
LIBSLHAPDF= -Wl,-rpath,$(shell $(LHAPDF_CONFIG) --libdir)  -L$(shell $(LHAPDF_CONFIG) --libdir) -lLHAPDF

LHAPDFLIB   = $(shell lhapdf-config --libdir)

DYNNLOHOME      = $(PWD)
SOURCEDIR       = $(PWD)/src
VPATH		= dynnlo-patches:$(DIRS)
BIN		= $(DYNNLOHOME)/bin
INCPATH  	= $(SOURCEDIR)/Inc
OUTPUT_OPTION	= -o $(DYNNLOHOME)/obj/$@

#   NATIVE -- DYNNLO internal routines
#   LHAPDF -- Les Houches library
PDFROUTINES = LHAPDF

FC = gfortran -O -I$(INCPATH) -I$(PATCHESDIR) -mcmodel=medium -fno-automatic -ffixed-line-length-none
#FC = ifort -O3 -I$(INCPATH) -I$(PATCHESDIR) -align all -extend_source -mcmodel=large -shared-intel
#-fno-align-commons !This flag doesn't for all versions of gfortran
#FC = g77 -fno-automatic -fno-f2c -O1 -I$(INCPATH)


DIRS	=	$(PATCHESDIR):\
		$(DYNNLOHOME):\
		$(DYNNLOHOME)/obj:\
		$(SOURCEDIR)/User:$(SOURCEDIR)/Matrix:\
		$(SOURCEDIR)/Need:$(SOURCEDIR)/Phase:\
		$(SOURCEDIR)/Integrate:\

# -----------------------------------------------------------------------------
# Specify the object files. 
#Uncomment the plotterfile which corresponds to the right vector boson
PATCHES = \
pwhg_bookhist-multi.o \
pwhg_bookhist-new.o \
auxiliary.o \
plotter.o \

MATRIXFILES = \
hjetfill.o \
qqb_w.o \
qqb_w_g.o \
qqb_z.o \
qqb_z_g.o \
qqb_w2jet.o \
qqb_w1jet_gs.o \
qqb_w_gvec.o \
qqb_z2jet.o \
qqb_z1jet_gs.o \
qqb_z1jet.o \
qqb_z_gvec.o \
aqqb_zbb.o \
ampqqb_qqb.o \
w2jetsq.o \
z2jetsq.o \
subqcd.o \
storecsz.o \
qqb_w1jet_v.o \
qqb_z1jet_z.o \
qqb_z1jet_v.o \
qqb_w1jet_z.o \
virt5.o \
A5NLO.o \
A51.o \
A52.o \
i3m.o \



INTEGRATEFILES = \
vegas.o \
mbook.o \
ran0.o \
ran1.o \




NEEDFILES = \
boost.o \
branch.o \
ckmfill.o \
coupling.o \
couplz.o \
dipoles.o \
dipoles_fac.o \
dipolesub.o \
dot.o \
dotem.o \
getptildejet.o \
gtperp.o \
higgsp.o \
higgsw.o \
histofinLH.o \
includedipole.o \
lowintHst.o \
lowint_incldip.o \
masscuts.o \
dynnlo.o \
dyinit.o \
hexit.o \
integrate.o \
ptyrap.o \
r.o \
setup.o \
realint.o \
realvirt2.o \
countDYnew.o \
myli2.o \
myli3new.o \
sethparams.o \
smalls.o \
spinork.o \
spinoru.o \
storedip.o \
storeptilde.o \
strcat.o \
swapjet.o \
transform.o \
virtint.o \
writeinfo.o \
zeromsq.o \
besselkfast.o \
integration.o \
isolation.o \
ddilog.o \
alfamz.o \
newton1.o \
lnrat.o \
lfunctions.o \
dclaus.o \
a06.o \
a09.o \
scaleset.o \
# lowintHstnew.o \

PHASEFILES = \
gen2.o \
gen3.o \
gen4MIO.o \
gen4h.o \
genBORN2.o \
genBORN4.o \
phase3.o \
phase4.o \
phi1_2new.o \
phi1_2m.o \
phi3m0.o \
breitw.o \
gen6hp.o \
phase6h.o \
phi1_2h.o \



USERFILES = \
deltarj.o \
genclust2.o \
genclust_kt.o \
genclust_cone.o \
cuts.o \
getet.o \
mdata.o \
miscclust.o \
#plotter.o \

LIBDIR=.
LIBFLAGS=

ifeq ($(PDFROUTINES),LHAPDF)
   PDFFILES += \
   pdf_lhapdf.o \
   pdfset_lhapdf.o
   LIBDIR += -L$(LHAPDFLIB)
   LIBFLAGS += -lLHAPDF
   PDFMSG='   ----> DYNNLO compiled with LHAPDF routines <----'
else
ifeq ($(PDFROUTINES),NATIVE)
   PDFFILES += \
   pdf.o \
   pdfset.o
   PDFMSG='   ----> DYNNLO compiled with its own PDFs <----'
endif
endif

CODE = $(PATCHES) $(NEEDFILES) $(PHASEFILES) \
          $(USERFILES) $(MATRIXFILES) $(INTEGRATEFILES) $(PDFFILES) \

dynnlo: $(CODE)
	$(FC) $(FFLAGS) $(LIBSLHAPDF) -L$(LIBDIR) -o $@ \
	$(patsubst %,obj/%,$(CODE)) $(LIBFLAGS)
	mv dynnlo bin/
	@echo $(PDFMSG)

clean: 
	rm -f obj/*o bin/dynnlo 
# -----------------------------------------------------------------------------


