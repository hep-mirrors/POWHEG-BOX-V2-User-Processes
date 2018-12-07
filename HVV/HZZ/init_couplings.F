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
         alpha = par_alpha
      endif
      if(powheginput("#Zmass").gt.0) then
         par_Zmass = powheginput("Zmass")
         par_Zmass2  = par_Zmass**2
         zmass = par_Zmass
      else
         stop "Z mass is missing, program terminated!!"
      endif
      if(powheginput("#Wmass").gt.0) then
         par_Wmass = powheginput("Wmass")
         par_Wmass2  = par_Wmass**2
         wmass = par_Wmass
      else
         stop "W mass is missing, program terminated!!"
      endif
      if(powheginput("#Zwidth").gt.0) then
         par_Zwidth = powheginput("Zwidth")
         par_Zwidth=0.d0
         zwidth = par_Zwidth    ! madgraph
      else
         stop "Z width is missing, program terminated!!"
      endif
      if(powheginput("#Wwidth").gt.0) then
         par_Wwidth = powheginput("Wwidth")
         par_Wwidth=0.d0
         wwidth = par_Wwidth    ! madgraph
      else
         stop "W width is missing, program terminated!!"
      endif
      if(powheginput("#Hmass").gt.0) then
         par_Hmass = powheginput("Hmass")
         par_Hmass2 = par_Hmass**2
         hmass = par_Hmass    ! madgraph
      else
         stop "H mass is missing, program terminated!!"
      endif
      if(powheginput("#Hmass").gt.0) then
         par_Hwidth = powheginput("Hwidth")
         hwidth = par_Hwidth    ! madgraph
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
        
      ! set remaining madgraph parameters
      call set_madgraph_params

      ! set remaining FormCalc parameters
      call set_formcalc_params
        
      ! check if the madgraph parameters are the same as in PhysPars.h
      ! and the same as defined for formcalc
      ! TODO: diese Abfrage erweitern und überprüfen ob alles in Ordnung
      ! ist, wenn man in powheg.input manuell die Werte von alpha, wmass, zmass... ändert!
      if( (par_Zmass    .ne. zmass  ) .or.
     &     (par_Wmass    .ne. wmass  ) .or.
     &     (par_Hmass    .ne. hmass  ) .or.
     &     (par_Hwidth   .ne. hwidth ) .or.
     &     (par_Zwidth   .ne. zwidth ) .or.
     &     (par_Wwidth   .ne. wwidth ) .or.
     &     (par_alpha    .ne. alpha  ) .or.
     &     (EL .ne. dreal(gal(1))    )) then
         print*, "Error: Madgraph uses parameters different to "
     &        //"PhysPars.h or formcalc"
         stop
      endif
        
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
         print*, "=== madgraph parameters ==="
         print*
         call printMadgraphModelParameters
         print*
#endif
         print*, "###############################"
         print*

      endif
        
      ! init LoopTools
      print*, "=== Init Looptools... ==="
      call ltini
      print*
      
      end

c############### end subroutine init_couplings #########################

c############### subroutine init_madgraph_params #######################
c sets the Madgraph parameters

      subroutine set_madgraph_params
      implicit none
        
#include "PhysPars.h"
        
      print*
      print*, "###############################"
      print*, "### set madgraph parameters ###"
      print*, "###############################"
      print*
          
      call setpara
      
      end

c############### end subroutine init_madgraph_params ###################

c############### subroutine set_ebe_couplings ##########################
c set the madgraph and formcalc couplings event by event

      subroutine set_ebe_couplings
        implicit none

#include "PhysPars.h"
#include "pwhg_st.h"
#include "pwhg_math.h"

        ! MadGraph
        ! QCD coupling constant
        alphaS = st_alpha
        G      = dsqrt(alphaS*4d0*pi)
        GG(1)  = -G
        GG(2)  = -G
        ! e.m. coupling
        alpha  = par_alpha
        Gal(1)      = dcmplx(dsqrt(alpha*4d0*pi))
        Gal(2)      = dcmplx(dsqrt(alpha*4d0*pi))

        ! FormCalc
        ! QCD coupling
        AlfaS  = 1
cc        AlfaS= st_alpha
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

      integer i,j
      double precision epsMass  ! small mass to regularize LoopTools integrals

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
      epsMass = powheginput("epsMass")
      MU   = epsMass
      MU2  = MU**2
      MD   = epsMass
      MD2  = MD**2
c      if(powheginput("neglectBMass").eq.1) then
c         print*,"Note (FormCalc): neglecting b quark mass"
c         MB = epsMass
c      else
      MB   = 4.75d0             ! TODO: put this option into the input file later on
c      endif
      MB2  = MB**2

      MT = 173.2d0
      MT2 = MT**2


      do i=1,4
         Mf(i,1) =  epsMass
         Mf(i,2) =  epsMass
         Mf2(i,1) = epsMass
         Mf2(i,2) = epsMass
         if(i.le.2) then
            Mf(i,3) =  epsMass
            Mf2(i,3) = epsMass
         endif
      enddo
      Mf(3,3) = MT
      Mf(4,3) = MB
      Mf2(3,3) = MT2
      Mf2(4,3) = MB2
        
      ! Z/W Widths (used for the s-channel propagators in FormCalc)
      Zwdth  = par_Zwidth ! formcalc
      Wwdth  = par_Wwidth ! formcalc

      ! weak angle
      CW  = MW/MZ
      CW2 = CW**2
      SW2 = 1 - CW2
      SW  = dsqrt(SW2)

      ! couplings
      ! set Formcalc couplings equal to the ones provided by POWHEG
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

      subroutine lh_readin
c overrides the lh_readin subroutine in MODEL/couplings.f;
c to make it work, rename or delete
c the lh_readin routine in MODEL/couplings.f
      implicit none
#include "PhysPars.h"
      double precision  Two, Four, Rt2, Pi
      parameter( Two = 2.0d0, Four = 4.0d0 )
      parameter( Rt2   = 1.414213562d0 )
      parameter( Pi = 3.14159265358979323846d0 )

      real*8 sthw,cthw,g2
      real*8 sthw2
c
      real * 8 powheginput
      external powheginput
      integer invalid
      parameter (invalid=-999)
c the only parameters relevant for this process are set
c via powheginput. All others are needed for the
c madgraph routines not to blow.
      alphas = 0.119d0
      tmass = 172.5d0
      lmass = 0d0
      mcMS = 0d0
      mbMS = 0d0
      mtMS = 172.5d0
      mtaMS = 1.777d0
      cmass = 0d0
c      if(powheginput("neglectBMass").eq.1) then
c         print*,"Note (MadGraph): neglecting b quark mass"
c         bmass = 0d0
c      else
      bmass = 4.75d0            ! TODO: read this in input file
c      endif
      lmass = 0d0

c      zwidth=2.441d0
c      wwidth=2.0476d0

c      zmass = 91.187d0
c      wmass = 80.385d0
      gfermi = 0.1166390d-4

cc      par_sthw2 = 1d0 - (par_Wmass/par_Zmass)**2
cc      sthw = SQRT(par_sthw2)
cc      cthw = SQRT(1.d0 -par_sthw2 )
      sthw2 = 1d0 - (par_Wmass/par_Zmass)**2
      sthw = SQRT(sthw2)
      cthw = SQRT(1.d0 -sthw2 )
      G2 = SQRT(8.d0*GFERMI/SQRT(2.d0))*par_Zmass*cthw
cc      alpha = g2**2*par_sthw2/(4.d0*PI)
      if(par_alpha.eq.invalid) then
         alpha = g2**2*sthw2/(4.d0*PI) ! use input value from powheg input
         par_alpha = alpha
      endif
c
c default: set top width to zero 
c (this value is used in matrix elements)
      twidth = 0d0

c      hmass = powheginput('hmass')
c      hwidth = powheginput('hwidth')

c in current code version CKM elements have no effect
c
c     POWHEG CKM matrix
c
c        d     s     b
c    u
c    c
c    t

      Vud=0.97428d0 
      Vus=0.2253d0  
      Vub=0.00347d0 
      Vcd=0.2252d0  
      Vcs=0.97345d0 
      Vcb=0.0410d0  
      Vtd=0.00862d0 
      Vts=0.0403d0  
      Vtb=0.999152d0

      end
