c############### init_couplings.f ######################################
c last modified by Julien Baglio, 10/03/2015

c############### init_couplings subroutine #############################
c setup SM parameters in PhysPars.h

      subroutine init_couplings
      implicit none

#include "PhysPars.h"
#include "pwhg_st.h"
#include "pwhg_math.h"
#include "nlegborn.h"

      double precision powheginput
      external powheginput
      double precision masswindow
      logical verbose
      parameter (verbose=.true.)
      integer invalid
      parameter (invalid=-999)

      par_alpha    = invalid
      par_Zmass    = invalid
      par_Wmass    = invalid
      par_Zmass2   = invalid
      par_Wmass2   = invalid
      par_Wwidth   = invalid
      par_Zwidth   = invalid
      par_Hmass    = invalid
      par_Hmass2   = invalid
        
      print*
      print*, "###############################"
      print*, "###  set POWHEG parameters  ###"
      print*, "###############################"
      print*
       
      print*, "checking for parameters in powheg.input"
      if(powheginput("#inv_alpha").gt.0) then
         par_alpha = 1d0/powheginput("inv_alpha")
      endif
      if(powheginput("#Zmass").gt.0) then
         par_Zmass = powheginput("Zmass")
         par_Zmass2  = par_Zmass**2
      else
         stop "Z mass is missing, program terminated!!"
      endif
      if(powheginput("#Wmass").gt.0) then
         par_Wmass = powheginput("Wmass")
         par_Wmass2  = par_Wmass**2
      else
         stop "W mass is missing, program terminated!!"
      endif
      if(powheginput("#Zwidth").gt.0) then
         par_Zwidth = powheginput("Zwidth")
         par_Zwidth = 0.d0
      else
         stop "Z width is missing, program terminated!!"
      endif
      if(powheginput("#Wwidth").gt.0) then
         par_Wwidth = powheginput("Wwidth")
         par_Wwidth = 0.d0
      else
         stop "W width is missing, program terminated!!"
      endif
      if(powheginput("#Hmass").gt.0) then
         par_Hmass = powheginput("Hmass")
         par_Hmass2 = par_Hmass**2
      else
         stop "H mass is missing, program terminated!!"
      endif
      if(powheginput("#Hmass").gt.0) then
         par_Hwidth = powheginput("Hwidth")
c         par_Hwidth = 0.d0
      else
         stop "H width is missing, program terminated!!"
      endif

c     set mass windows around the resonance peak 
c     It is used in the generation of the Born phase space
      par_HmHw = par_Hmass * par_Hwidth
      masswindow = 1000
      par_Hmass2low=max(0d0,par_Hmass-masswindow*par_Hwidth)
      par_Hmass2low=par_Hmass2low**2
      par_Hmass2high=(par_Hmass+masswindow*par_Hwidth)**2
        
      ! set remaining FormCalc parameters
      call set_formcalc_params        
        
      ! Print all par_alpha
      if(verbose) then
         print*
         print*, "###############################"
         print*, "### printout all parameters ###"
         print*, "###############################"
         print*
         print*, "=== PhysPars.h parameters ==="
         print*
         print*, "Z mass          = ",par_Zmass
         print*, "W mass          = ",par_Wmass
         print*, "Z width         = ",par_Zwidth
         print*, "W width         = ",par_Wwidth
         print*, "H mass          = ",par_Hmass
         print*, "H width         = ",par_Hwidth
         print*, "1/alpha         = ",1d0/par_alpha
         print*
         print*
#ifdef DEBUG
         print*, "=== formcalc parameters ==="
         print*
         call printFormcalcModelParameters
         print*
#endif
         print*, "###############################"
         print*

      endif

      ! init Collier
      print*, "=== Init Collier... ==="
      call init_collier(5,5)
      print*
      
      end

c############### end subroutine init_couplings #########################


c############### subroutine set_ebe_couplings ##########################
c set the formcalc couplings event by event

      subroutine set_ebe_couplings
        implicit none

#include "PhysPars.h"
#include "pwhg_st.h"
#include "pwhg_math.h"

        ! QCD coupling
        AlfaS= st_alpha
        AlfaS2 = AlfaS**2
        GS = dsqrt(AlfaS*4d0*pi)
        ! e.m. coupling
        Alfa = par_alpha
        Alfa2   = Alfa**2
        EL = dsqrt(Alfa*4d0*pi)
        
#ifdef DEBUGQ
        print*, "[DEBUG] in set_ebe_couplings: st_alpha = ", st_alpha
#endif
        return
      end

c############### end subroutine set_ebe_couplings ######################

c############### set_formcalc_params subroutine ########################
c sets the FormCalc parameters

      subroutine set_formcalc_params
      implicit none

#include "PhysPars.h"
#include "pwhg_math.h"
        
      double precision powheginput
      external powheginput
      integer invalid
      parameter (invalid=-999)

      integer i,j
      double precision epsMass  ! common light quark mass
      double precision gfermi,g2

      ! Avoid multiple calls to this subroutine.
      logical called
      data called/.false./
      save called
      if(called) then
         return
      else
         called=.true.
      endif
        
      print*
      print*, "###############################"
      print*, "### set formcalc parameters ###"
      print*, "###############################"
      print*

#define NO_CKM_MIXING
#ifdef NO_CKM_MIXING
      print*, "PAY ATTENTION: no CKM mixing"
      do i=1,3
         do j=1,3
            if(i.eq.j)  CKM(i,j) = 1.d0
            if(i.ne.j)  CKM(i,j) = 0.d0
         enddo
      enddo
#else
      CKM(1,1) = 0.97427d0
      CKM(1,2) = 0.22534d0
      CKM(1,3) = 0.00351d0
      CKM(2,1) = 0.22520d0
      CKM(2,2) = 0.97344d0
      CKM(2,3) = 0.04120d0
      CKM(3,1) = 0.00867d0
      CKM(3,2) = 0.04040d0
      CKM(3,3) = 0.99915d0
#endif
                       
      ! Z/W mass and H mass
      MZ  = par_Zmass
      MZ2 = MZ**2
      MW  = par_Wmass
      MW2 = MW**2
      MH  = par_Hmass
      MH2 = MH**2
        
      ! Quark Masses
      epsMass = 0.D0
      MU   = epsMass
      MC   = epsMass      
      MU2  = MU**2
      MC2  = MC**2
      
      MD   = epsMass
      MS   = epsMass
      MD2  = MD**2
      MS2  = MS**2

      MB   = 4.75d0
      MB2  = MB**2
      MT = 172.5d0
      MT2 = MT**2
        
      ! Z/W Widths (used for the s-channel propagators in FormCalc)
      Zwdth  = par_Zwidth ! formcalc
      Wwdth  = par_Wwidth ! formcalc

      WH = par_Hwidth
      
      ! weak angle
      CW  = MW/MZ
      CW2 = CW**2
      SW2 = 1 - CW2
      SW  = dsqrt(SW2)

      ! couplings
      ! set Formcalc couplings equal to the ones provided by POWHEG
      if(par_alpha.eq.invalid) then
         gfermi = 0.1166390d-4
         g2 = sqrt(8.d0*gfermi/sqrt(2.d0))*par_Zmass*CW
         par_alpha = g2**2*SW2/(4.d0*pi)
      endif
      Alfa    = par_alpha
      Alfa2   = Alfa**2
      AlfaS   = 0.119d0 ! dummy value, gets overwritten by set_ebe_couplings
      AlfaS2  = AlfaS**2
      AlfaMZ  = 1D0/1.27934000D2
      AlfaSMZ = 0.119d0
      EL = sqrt(4*pi*Alfa)
      GS = sqrt(4*pi*AlfaS)

      end

c############### end set_formcalc_params subroutine ########################
