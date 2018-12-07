c#####################Print Model Parameters############################
c prints all model paramters from madgraph and formcalc
c adapted from private routine written by Matthias Kesenheimer
c last modified by Julien Baglio, 11/03/2015

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

c############### subroutine printMadgraphModelParameters ###############

      subroutine printMadgraphModelParameters

#include "types.h"
#include "PhysPars.h"

        print*,"== SM Parameters == "
        print*
        print*,"CKM matrix"
        print*,"Note: intrinsic diagonal CKM matrix is used"
        print*,"      by MadGraph for model MSSM"
        print*
        print*,"Strong and e.m. couplings"
        print*,"Alpha^-1    = ", 1/Alpha
        print*,"AlphaS^-1   = ", 1/AlphaS
        print*
        print*,"EL = ", dreal(gal(1))
        print*,"GS = ", dreal(-gg(1))
        print*
        print*,"Mixing angles"
        print*,"CW  = ", gwwz/gw
        print*,"CW2 = ", (gwwz/gw)**2
        print*,"SW  = ", gwwa/gw
        print*,"SW2 = ", (gwwa/gw)**2
        print*
        print*,"Quark masses"
        print*,"MU = ", 0d0 ! Note: umass, dmass and smass do not occur in madgraph
        print*,"MC = ", cmass
        print*,"MT = ", tmass
        print*,"MD = ", 0d0
        print*,"MS = ", 0d0
        print*,"MB = ", bmass
        print*
        print*,"Z/W/H mass and Z/W width"
        print*,"MZ = ", zmass
        print*,"MW = ", wmass
        print*,"MH = ", hmass
        print*,"GZ = ", zwidth
        print*,"GW = ", wwidth
        print*
        print*

      end

c############### end subroutine printMadgraphModelParameters ###########
