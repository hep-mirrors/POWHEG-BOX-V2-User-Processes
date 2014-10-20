# ----------------------------------------------------------------------------
#
# Makefile for MODEL directory
# Jan 25 2006
#
# ----------------------------------------------------------------------------


F77=gfortran -fno-automatic -ffixed-line-length-none	

FFLAGS        = $(XFFLAGS) 
LIBRARY	      = ../libmodel.a
LIBDIR = ../
MODEL         = printout.o couplings.o read_slha.o hardstop.o 

.f.o: ; $(F77) $(FFLAGS) -c $*.f

all: $(LIBDIR)libmodel.a

$(LIBDIR)libmodel.a: $(MODEL)
	ar cru libmodel.a $(MODEL)
	ranlib libmodel.a
	mv libmodel.a  $(LIBDIR)

smcalc: 
	$(F77) $(FFLAGS) SMCalc.f -o smcalc 
