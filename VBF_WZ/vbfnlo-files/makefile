FC = gfortran
#FC = ifort
INCLUDE1=$(PWD)
INCLUDE2=$(PWD)/..
INCLUDE3=$(PWD)/../../include

ifeq ("$(FC)","gfortran")	
FFLAGS = -g -fno-automatic -ffixed-line-length-none -O2 -I$(INCLUDE1) -I$(INCLUDE2) -I$(INCLUDE3) 	
endif
ifeq ("$(FC)","ifort")	
FFLAGS = -save -extend_source -O3 -I$(INCLUDE1) -I$(INCLUDE2)  -I$(INCLUDE3) 
endif

# ----------------------------------------------------------------------------

# object files for qq->qqWZ with leptonic decays and first drafts of semileptonic decays

OBJECTS =  ./amp_aux.o \
	  ./help.o \
	  ./braket_vbf.o \
	  ./init_tensors_wz.o \
	  ./provide_tensors_wz.o \
          ./qqwpzqq_channel.o \
          ./qqwpzqqj-new.o \
          ./bqqwpzqq.o \
          ./buucs.o \
          ./bddcs.o \
          ./budcc.o \
          ./budss.o \
          ./bqqwpzqqj.o \
          ./buucsg.o \
          ./bddcsg.o \
          ./dhelas/ixxxxx.o \
          ./dhelas/oxxxxx.o \
          ./dhelas/fvixxx.o \
          ./dhelas/fvoxxx.o \
          ./dhelas/jvvxxx.o \
          ./dhelas/vvvxxx.o \
          ./dhelas/jioxxx.o \
          ./dhelas/iovxxx.o \
          ./dhelas/hvvxxx.o \
          ./dhelas/jvsxxx.o \
          ./dhelas/w3w3xx.o \
          ./dhelas/wwwwxx.o \
          ./dhelas/vvsxxx.o \
          ./dhelas/vxxxxx.o \
          ./dhelas/jwwwxx.o \
          ./dhelas/jw3wxx.o \
          ./dhelas/hioxxx.o \
          ./dhelas/fsixxx.o \
          ./dhelas/fsoxxx.o \
          ./towz.o \
          ./jvirt5.o \
	  ./jvirt5-isig.o \
          ./tensor_redux/tri_box_penta_tens_red.o \
	  ./tensor_redux/bra_ket_subroutines_vbf.o\
	  ./tensor_redux/B0C0D0fin.o \
          ./tensor_redux/tensor_redux_Cij.o \
          ./tensor_redux/tensor_redux_Dij.o \
          ./tensor_redux/tensor_redux_Eij.o \
	  ./tensor_redux/dilog.o \
          ./tensor_redux/virtual1.o \
	  ./tensor_redux/virtual2.o  

TARGETS = libvbfnlo.a


# ----------------------------------------------------------------------------
# ----------------------------------------------------------------------------
# rules for vbfnlo_lib:
#
 libvbfnlo.a:  $(OBJECTS)
	$(AR) r libvbfnlo.a $(OBJECTS) 

# ----------------------------------------------------------------------------
# ----------------------------------------------------------------------------

# for g77 or gfortran: 
.f.o:
	$(FC) -c -o $*.o  $(FFLAGS) $*.f

# ----------------------------------------------------------------------------

clean:
	rm -f *.o core *~ *.x libvbfnlo.a



