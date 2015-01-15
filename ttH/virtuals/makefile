FFLAGS        = $(XFFLAGS)
LIBDIR        = ../$(OBJ)
LIBRARY	      = $(LIBDIR)/libvirt.a

CODE          = tth_virt.o lib.o intlib.o libqq.o libglu.o matri.o boxlib.o boxlib_qq.o penta_qq.o  p1new.o p2new.o p3new.o p4new.o p5new.o p6new.o 


.f.o: ; $(F77) $(FFLAGS) -c $*.f

all: $(LIBDIR)libvirt.a

$(LIBDIR)libvirt.a: $(CODE)
	ar cru libvirt.a $(CODE)
	ranlib libvirt.a
	mv libvirt.a  $(LIBDIR)
