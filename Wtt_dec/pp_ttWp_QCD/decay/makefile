FFLAGS        = $(XFFLAGS) -ISource/MODEL
LIBDIR        = ../$(OBJ)
LIBRARY       = $(LIBDIR)/libdecay.a
CODE          = matrix1.o matrix2.o matrix3.o matrix4.o matrix5.o matrix6.o matrix7.o matrix8.o born_decay.o real_decay.o utils.o set_params.o 
TEST          = test_lib.o check_mg5.o
LIBS          = libdhelas.a libmodel.a

:%.o: %.f $(CODE) 
	$(F77) $(FFLAGS) -c -o $(CODE)/$@ $<

all: $(LIBDIR)libdecay.a $(TEST)

test: $(LIBDIR)libdecay.a $(TEST)
	$(F77) test_lib.o check_mg5.o $(LIBDIR)/libdecay.a  -o test

libdhelas.a:
	cd Source && make

libmodel.a:
	cd Source && make

$(LIBDIR)libdecay.a: $(LIBS) $(CODE)
	ar cru libmg5.a $(CODE) 
	mv libmg5.a lib/
	ar -M < libdecay.mri	
	ranlib libdecay.a
	mv libdecay.a  $(LIBDIR)

clean:
	rm -rf *.o lib/*.a Source/DHELAS/*.o Source/MODEL/*.o test

