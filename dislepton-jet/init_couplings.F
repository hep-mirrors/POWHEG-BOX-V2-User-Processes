c
c physical parameters are set by MADGRAPH
c (based on SLHA input file MODEL/param_card.dat);
c
c especially set of EW parameters according to MADGRAPH
c
c use common blocks / variables from MADGRAPH
c up to few exceptions
c
      subroutine init_couplings
      implicit none
      include 'PhysPars.h'
c      include 'coupl.inc'

      include 'LesHouches.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'nlegborn.h'

      ! set in MODEL/couplings.f subroutine INIT_SUSY
      double precision  sw, sw2, cw, tw, s2w, c2w, e, gx, gz,
     &                  qe, qu, qd, t3e, t3v, t3u, t3d, rt2, Ppi,
     &                  r_lc(2,2), r_bc(2,2), r_tc(2,2)
      common /ewparam/  sw, sw2, cw, tw, s2w, c2w, e, gx, gz,
     &                  qe, qu, qd, t3e, t3v, t3u, t3d, rt2, Ppi,
     &                  r_lc, r_bc, r_tc

      logical verbose
      parameter (verbose=.true.)
      ! IDs
      integer id_sla, id_slb

      real * 8 powheginput
      external powheginput
c Avoid multiple calls to this subroutine. The parameter file is opened
c but never closed ...
      logical called
      data called/.false./
      save called

      ! for reading parameters from SHLA file
      integer error
      character *23 slhafilename
      data slhafilename/"../MODEL/param_card.dat"/  ! file used by MadGraph

      if(called) then
         return
      else
         called=.true.
      endif



c parameters are read/computed from SLHA-type file MODEL/param_card.dat,
c except the strong coupling constant, which is defined
c somewhere else:

      call setpara("param_card.dat",.true.)

c identify slepton masses:
      ! extract slepton types from process id
      call decode_sfermion_pair(lprup(1),id_sla,id_slb)
      write(*,*) 'in init_couplings'
      write(*,*) 'extracted from process ID: ', lprup(1)
      write(*,*) 'the sfermion pair: ', id_sla, ', ', id_slb
      ! set slepton masses and mixing parameters in own common block
      call set_slepton_params(id_sla,ph_slepton3mass,ph_c_U3l,ph_c_U3r)
      call set_slepton_params(id_slb,ph_slepton4mass,ph_c_U4l,ph_c_U4r)
      
c check that limitations of this implementation are not violated
      call checklimitations()

      if(verbose) then
      write(*,*) '****************************************************'
      write(*,*) 'parameters set in init_couplings:'
      write(*,*) 'U3l = ', ph_c_U3l
      write(*,*) 'U3r = ', ph_c_U3r
      write(*,*) 'U4l = ', ph_c_U4l
      write(*,*) 'U4r = ', ph_c_U4r
      write(*,*) 'slepton 3 mass = ', ph_slepton3mass
      write(*,*) 'slepton 4 mass = ', ph_slepton4mass
      write(*,*) '****************************************************'
      ! print MADGRAPH parameters
      call printout()
      write(*,*) '****************************************************'
      write(*,*) 'further parameters in MADGRAPH:'
      write(*,*) 'sin(theta_W)^2 = ',sw2
      write(*,*) 'calculation of sin(theta_W)^2 in MODEL/couplings.f'
      write(*,*) 'ignores value of W mass extracted from SLHA file'
      write(*,*) '****************************************************'
      endif

      end


ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

      subroutine set_ebe_couplings
      implicit none
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include "coupl.inc"

c QCD coupling constant
      G=sqrt(st_alpha*4d0*pi)
      GG(1)=-G
      GG(2)=-G
      ! update SQCD couplings depending on alpha_s
      call INIT_SUSY_QCD(G)

      return
      end




CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC


c     extracts mass and mixing matrix row
c     from MADGRAPH parameters according to particle id,
      subroutine set_slepton_params(id,mass,Uxl,Uxr)
      implicit none
      include 'coupl.inc'
      ! set in MODEL/couplings.f subroutine INIT_SUSY
      double precision  sw, sw2, cw, tw, s2w, c2w, e, gx, gz,
     &                  qe, qu, qd, t3e, t3v, t3u, t3d, rt2, Ppi,
     &                  r_lc(2,2), r_bc(2,2), r_tc(2,2)
      common /ewparam/  sw, sw2, cw, tw, s2w, c2w, e, gx, gz,
     &                  qe, qu, qd, t3e, t3v, t3u, t3d, rt2, Ppi,
     &                  r_lc, r_bc, r_tc
      integer id, invalid
      real *8 mass, norm
      complex *16 Uxl, Uxr

      ! invalid default values
      invalid=-999
      mass = invalid
      Uxl = DCMPLX(invalid, invalid)
      Uxr = DCMPLX(invalid, invalid)

      ! extract parameters from slhadata
      select case(abs(id))
      case (1000011) ! selectron left
        mass = mel
        Uxl = 1d0
        Uxr = 0d0
      case (1000013) ! smuon left
        mass = mml
        Uxl = 1d0
        Uxr = 0d0
      case (1000015) ! stau 1
        mass = ml1
        Uxl = r_lc(1,1)
        Uxr = r_lc(1,2)
      case (2000011) ! selectron right
        mass = mer
        Uxl = 0d0
        Uxr = 1d0
      case (2000013) ! smuon right
        mass = mmr
        Uxl = 0d0
        Uxr = 1d0
      case (2000015) ! stau 2
        mass = ml2
        Uxl = r_lc(2,1)
        Uxr = r_lc(2,2)
      case default
        write(*,*) 'encountered unknown slepton ID ', id
        stop
      end select

      ! check that parameters are set correctly
      if ((mass.eq.invalid).or.
     &    (dreal(Uxl).eq.invalid).or.
     &    (aimag(Uxl).eq.invalid).or.
     &    (dreal(Uxr).eq.invalid).or.
     &    (aimag(Uxr).eq.invalid)) then
        stop "mass or mixing parameters are not set"
      endif
      ! check that mixing matrix row has norm 1
      norm = sqrt( abs(Uxl)**2 + abs(Uxr)**2 )
      if ((norm.lt.0.999d0).or.(norm.gt.1.001d0)) then
         write(*,*) 'slepton mixing matrix not unitary'
         write(*,*) 'check input values'
         stop
      endif

      end

      
c check that limitations of this implementation are not violated
      subroutine checklimitations()
      implicit none
      include 'PhysPars.h'
      ! contains:
      ! + masses of the slepton pair under consideration
      !   ph_slepton3mass, ph_slepton4mass
      ! + and the mixing matrix of this slepton pair with entries
      !   ph_c_U3l, ph_c_U3r, ph_c_U4l, ph_c_U4r
      include 'coupl.inc'
      ! contains:
      ! + masses of SM particles read from MODEL/param_card.dat
      !   wmass (from SLHA file)
      !   zmass (Z-Boson pole mass)
      !   bmass (bottom quark mass mb(mb)^MSbar)
      !   tmass (top quark pole mass)
      ! + masses of SUSY particles read from MODEL/param_card.dat in the form
      !   m* with the particle name * specified in MODEL/particles.dat
      !   slightly different names for slepton masses
      !   mel/mer left-/right-handed selectron mass
      !   mml/mmr left-/right-handed smuon mass
      !   ml1/ml2 stau 1/2 mass
      !   but the masses and the mixing matrix of the sleptons under consideration
      !   can be found in PhysPars.h
      ! + ...
      
      real *8 smallnumber
      smallnumber=1d-5
      
      ! left-handed sleptons
      if ((abs(ph_c_U3l-dcmplx(1,0)).gt.smallnumber).or.
     &    (abs(ph_c_U3r-dcmplx(0,0)).gt.smallnumber).or.
     &    (abs(ph_c_U4l-dcmplx(1,0)).gt.smallnumber).or.
     &    (abs(ph_c_U4r-dcmplx(0,0)).gt.smallnumber)) then
        stop "this implementation is limited to left-handed sleptons"
      endif

      ! degenerate squarks
      if ((dabs(mdl-mdr).gt.smallnumber).or.
     &    (dabs(mdl-mul).gt.smallnumber).or.
     &    (dabs(mdl-mur).gt.smallnumber).or.
     &    (dabs(mdl-msl).gt.smallnumber).or.
     &    (dabs(mdl-msr).gt.smallnumber).or.
     &    (dabs(mdl-mcl).gt.smallnumber).or.
     &    (dabs(mdl-mcr).gt.smallnumber).or.
     &    (dabs(mdl-mb1).gt.smallnumber).or.
     &    (dabs(mdl-mb2).gt.smallnumber).or.
     &    (dabs(mdl-mt1).gt.smallnumber).or.
     &    (dabs(mdl-mt2).gt.smallnumber)) then
        stop "this implementation is limited to degenerate squarks"
      endif
      
      end
