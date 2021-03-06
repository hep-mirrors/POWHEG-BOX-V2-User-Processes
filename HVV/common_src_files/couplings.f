c----------------------------------------------------------------------
C  couplings.f 
c----------------------------------------------------------------------
c  This files takes the inputs of the standard model from a Les Houches 
c  file (param_card.dat) and calculates all the couplings that end up
c  in the Feynman rules, i.e., in the HELAS routines.
c   
c  With the convention of the New Web Generation MadEvent in this
c  part no non-trivial computation is made. The SM model secondary
c  parameters have been all calculated by the SM calculator, SMCalc
c  which produced param_card.dat.
c
c  The only exception to the above rule is for alpha_S. In the case
c  where a pdf is used in the initial state, then the values as(MZ)
c  set in the les houches card is superseeded.
c  Scales and pdf's are set in the run_card.dat.
c
c This file contains the following routines:
c 
c- madgraph original call to set the parameters
c- lh_readin is called from here.
c  It talks to the lh_readin through the common block values.
c      subroutine setpara
c
c-routine to read the LH parameters in
c      subroutine lh_readin
c
c-modified to overcome the reading of a param card
c---------------------------------------------------------------------- 


      subroutine setpara
c***********************************************************************
c This subroutine sets up the HELAS couplings of the STANDARD MODEL.
c***********************************************************************
      implicit none
c
c local
c
      logical readlha
      parameter (readlha=.true.)
      integer i
      real*8 dum
c
c     common file with the couplings
c
      include 'coupl.inc'
c
c     local
c
      double precision  ee, ee2, ez, ey, sw, cw, sc2, sin2w, wm
      double precision  gwne, gwud, lambda, lam4, xt, rew, rqcd
      double precision  alfa, alfaw, mfrun
      external          alfa, alfaw, mfrun
c
c constants
c
      double complex  ci
      parameter( ci = ( 0.0d0, 1.0d0 ) )
      double precision  Zero, One, Two, Three, Four, Half, Rt2
      parameter( Zero = 0.0d0, One = 1.0d0, Two = 2.0d0 )
      parameter( Three = 3.0d0, Four = 4.0d0, Half = 0.5d0 )
      parameter( Rt2   = 1.414213562d0 )
      double precision  Pi, Fourpi
      parameter( Pi = 3.14159265358979323846d0 )
      parameter( Fourpi = Four * Pi )
c
c------------------------------------------
c Start calculating the couplings for HELAS
c------------------------------------------
c
      if(readlha) then 
         call lh_readin
         G = DSQRT(4d0*PI*ALPHAS) ! use setting of the param_card.dat @ NLO
c
c auxiliary local values
c
cc      wm = sqrt(zmass**2/Two+
cc     $     sqrt(zmass**4/Four-Pi/Rt2*alpha/gfermi*zmass**2))
         wm = wmass ! used everywhere else, so do not recalculate wm again

#ifdef DEBUGQ
      print*, "[DEBUG] alpha  = ", alpha  
      print*, "[DEBUG] zmass  = ", zmass
      print*, "[DEBUG] wmass  = ", wmass
      print*, "[DEBUG] hmass  = ", hmass
      print*, "[DEBUG] zwidth = ", zwidth
      print*, "[DEBUG] wwidth = ", wwidth
      print*, "[DEBUG] hwidth = ", hwidth
#endif

      sin2w  = One-(wm/zmass)**2
      cw  = sqrt( One - sin2w )
      ee2 = alpha * Fourpi
      sw  = sqrt( sin2w )
      ee  = sqrt( ee2 )
      ez  = ee/(sw*cw)
      ey  = ee*(sw/cw)
      sc2 = sin2w*( One - sin2w )
      v   = Two*wm*sw/ee   ! the wmass is used to calculate v
      lambda = hmass**2 / (Two * v**2)
c
c vector boson couplings
c
      gw   = ee/sw
      gwwa = ee
      gwwz = ee*cw/sw
c
c gauge & higgs boson coupling constants
c
      gwwh  = dcmplx( ee2/sin2w*Half*v, Zero )
      gzzh  = dcmplx( ee2/sc2*Half*v, Zero )
      ghhh  = dcmplx( -hmass**2/v*Three, Zero )
      gwwhh = dcmplx( ee2/sin2w*Half, Zero )
      gzzhh = dcmplx( ee2/sc2*Half, Zero)
      ghhhh = ghhh/v
c
c fermion-fermion-vector couplings
c
      gal(1) = dcmplx(  ee          , Zero )
      gal(2) = dcmplx(  ee          , Zero )
      gau(1) = dcmplx( -ee*Two/Three, Zero )
      gau(2) = dcmplx( -ee*Two/Three, Zero )
      gad(1) = dcmplx(  ee/Three    , Zero )
      gad(2) = dcmplx(  ee/Three    , Zero )

      gwf(1) = dcmplx( -ee/sqrt(Two*sin2w), Zero )
      gwf(2) = dcmplx(  Zero              , Zero )

      gzn(1) = dcmplx( -ez*Half                     , Zero )
      gzn(2) = dcmplx(  Zero                        , Zero )
      gzl(1) = dcmplx( -ez*(-Half + sin2w)          , Zero )
      gzl(2) = dcmplx( -ey                          , Zero )
      gzu(1) = dcmplx( -ez*( Half - sin2w*Two/Three), Zero )
      gzu(2) = dcmplx(  ey*Two/Three                , Zero )
      gzd(1) = dcmplx( -ez*(-Half + sin2w/Three)    , Zero )
      gzd(2) = dcmplx( -ey/Three                    , Zero )
c
c fermion-fermion-Higgs couplings (complex) hff(2)
c
c NOTE: the running mass is evaluated @ the same order 
c nloop of alpha_s set by the PDF choice
c 

      if(mtMS.gt.1d0) then
         ghtop(1) = dcmplx( -mtMS/v, Zero )
      else
         ghtop(1) = dcmplx( Zero,Zero)
      endif
      ghtop(2) = ghtop(1)

      if(mbMS.gt.1d0) then
         ghbot(1) = dcmplx( -mbMS/v, Zero )
      else
         ghbot(1) = dcmplx( Zero, Zero )
      endif
      ghbot(2) = ghbot(1)
      
      if(mcMS.gt.1d0) then
         ghcha(1) = dcmplx( -mcMS/v, Zero )
      else
         ghcha(1) = dcmplx( Zero, Zero )
      endif
      ghcha(2) = ghcha(1)

      ghtau(1) = dcmplx( -mtaMS/v, Zero )
      ghtau(2) = ghtau(1)

c---------------------------------------------------------
c Set Photon Width to Zero, used by symmetry optimization
c---------------------------------------------------------

      awidth = 0d0
            
      endif
c     
c     Strong coupling
c
c     As a rule we first check if a pdf has been chosen in the    
c     run_card.dat (which has been already read at this stage).
c     If there pdfs in the initial state, then the alpha_s(MZ) used
c     is set to the corresponding value.  

      GG(1) = -G
      GG(2) = -G     

c----------------------------
c end subroutine coupsm
c----------------------------


      return
      end
