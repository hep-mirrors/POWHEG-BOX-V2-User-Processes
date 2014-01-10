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

# object files for qq->qqZZ with leptonic decays

OBJECTS =  ./amp_aux.o \
	  ./help.o \
	  ./braket_vbf.o \
	  ./init_tensors_zz.o \
	  ./provide_tensors_zz.o \
          ./qqzzqq.o \
          ./qqzzqqj.o \
          ./dhelas/aloha_functions.o \
          ./dhelas/FFV1_0.o \
          ./dhelas/FFV1_1.o \
          ./dhelas/FFV1_2.o \
          ./dhelas/FFV1P0_3.o \
          ./dhelas/FFV2_0.o \
          ./dhelas/FFV2_1.o \
          ./dhelas/FFV2_2.o \
          ./dhelas/FFV2_3.o \
          ./dhelas/FFV3_0.o \
          ./dhelas/FFV3_1.o \
          ./dhelas/FFV3_2.o \
          ./dhelas/FFV3_3.o \
          ./dhelas/FFV4_0.o \
          ./dhelas/FFV4_1.o \
          ./dhelas/FFV4_2.o \
          ./dhelas/FFV4_3.o \
          ./dhelas/FFV5_0.o \
          ./dhelas/FFV5_1.o \
          ./dhelas/FFV5_2.o \
          ./dhelas/FFV5_3.o \
          ./dhelas/VVS1_0.o \
          ./dhelas/VVS1_3.o \
          ./dhelas/VVV1_0.o \
          ./dhelas/VVV1P0_1.o \
          ./dhelas/VVV1_2.o \
          ./dhelas/VVV1_3.o \
          ./dhelas/VVVV2_0.o \
          ./dhelas/VVVV5_0.o \
          ./dhelas/bosons.o \
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
          ./tozz.o \
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



