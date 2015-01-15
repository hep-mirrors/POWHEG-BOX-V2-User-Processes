FFLAGS        = $(XFFLAGS)
LIBDIR        = ../$(OBJ)
LIBRARY	      = $(LIBDIR)/libdecay.a
CODE          = born_decay.o $(patsubst %.f,%.o,$(wildcard born_*_tth_dec.f)) real_decay.o $(patsubst %.f,%.o,$(wildcard real_*_tth_dec.f)) 

.f.o: ; $(F77) $(FFLAGS) -c $*.f

all: $(LIBDIR)libdecay.a

$(LIBDIR)libdecay.a: $(CODE)
	ar cru libdecay.a $(CODE)
	ranlib libdecay.a
	mv libdecay.a  $(LIBDIR)

