c#####################Print Model Parameters############################
c prints all model paramters from formcalc only
c adapted from private routine written by Matthias Kesenheimer
c last modified by Julien Baglio, 06/12/2018

c############### subroutine printFormcalcModelParameters ###############

      subroutine printFormcalcModelParameters

#include "types.h"
#include "PhysPars.h"

        print*,"== SM Parameters == "
        print*
        print*,"CKM matrix"
        print*,"CKM(1,1) = ",CKM(1,1)
        print*,"CKM(1,2) = ",CKM(1,2)
        print*,"CKM(1,3) = ",CKM(1,3)
        print*,"CKM(2,1) = ",CKM(2,1)
        print*,"CKM(2,2) = ",CKM(2,2)
        print*,"CKM(2,3) = ",CKM(2,3)
        print*,"CKM(3,1) = ",CKM(3,1)
        print*,"CKM(3,2) = ",CKM(3,2)
        print*,"CKM(3,3) = ",CKM(3,3)
        print*
        print*,"Strong and e.m. couplings"
        print*,"Alfa^-1    = ", 1/Alfa
        print*,"AlfaS^-1   = ", 1/AlfaS
        print*,"AlfaMZ^-1  = ", 1/AlfaMZ
        print*,"AlfaSMZ^-1 = ", 1/AlfaSMZ
        print*
        print*,"EL = ", EL
        print*,"GS = ", GS
        print*
        print*,"Mixing angles"
        print*,"CW  = ", CW
        print*,"CW2 = ", CW2
        print*,"SW  = ", SW
        print*,"SW2 = ", SW2
        print*
        print*,"Quark masses"
        print*,"MU = ", MU
        print*,"MC = ", MC
        print*,"MT = ", MT
        print*,"MD = ", MD
        print*,"MS = ", MS
        print*,"MB = ", MB
        print*
        print*,"Z/W mass and H mass"
        print*,"MZ = ", MZ
        print*,"MW = ", MW
        print*,"MH = ", MH
        print*
        print*
        
      end

c############### end subroutine printFormcalcModelParameters ###########
