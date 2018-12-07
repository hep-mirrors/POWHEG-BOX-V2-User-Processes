c############### model_sm.h ############################################
* model_sm.h
* common blocks for the model parameters
* this file is part of FormCalc
* last modified 11/03/2015 by Julien Baglio

#include "types.h"

        !Hmass, Z mass, W mass, cos(theta_w), sin(theta_w)
	RealType MH, MH2, MZ, MZ2, MW, MW2, CW, CW2, SW, SW2
	RealType Zwdth, Wwdth
        ! Fermi constant, fine structure, fine structure constant at MZ, strong coupling
	RealType GF, Alfa, Alfa2, AlfaMZ, AlfasMZ, Alfas, Alfas2
        ! Quark masses
	RealType MU, MU2
	RealType MD, MD2, MB, MB2
        ! CKM matrix (here: identity)
	RealType CKM(3,3)
        ! strong and e.m. coupling constants
	RealType EL, GS

        common /smpara/ MH, MH2, MZ, MZ2, MW, MW2, CW, CW2, SW, SW2
        common /smpara/ Zwdth, Wwdth
        common /smpara/ GF, Alfa, Alfa2, AlfaMZ, AlfasMZ, Alfas, Alfas2
        common /smpara/ MU, MU2
        common /smpara/ MD, MD2, MB, MB2
	common /smpara/ CKM, EL, GS

c############### end model_sm.h ########################################
