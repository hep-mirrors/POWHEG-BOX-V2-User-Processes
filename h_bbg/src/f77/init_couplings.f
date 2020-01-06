      subroutine init_couplings
      implicit none
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'pwhg_par.h'
      include 'pwhg_pdf.h'
      include 'pwhg_physpar.h' 
      real *8 powheginput
      external powheginput
      real*8 mb_msbar,mur

      !-----------------------------------------------------------------------
      !>> TECHNICAL PARAMETERS
      if(powheginput("#par_isrtinycsi").gt.0)
     $     par_isrtinycsi = powheginput("#par_isrtinycsi")
      
      if(powheginput("#par_fsrtinycsi").gt.0)
     $     par_fsrtinycsi = powheginput("#par_fsrtinycsi")
      
      if(powheginput("#par_isrtinyy").gt.0)
     $     par_isrtinyy = powheginput("#par_isrtinyy")

      if(powheginput("#par_fsrtinyy").gt.0)
     $     par_fsrtinyy = powheginput("#par_fsrtinyy")
      
      !-----------------------------------------------------------------------
      !>> ELECTROWEAK PARAMETERS
      ph_gfermi = powheginput("#GFermi")
      if( ph_gfermi.le.0d0 ) ph_gfermi = 1.1663787d-5

      !-----------------------------------------------------------------------
      !>> HIGGS & B-QUARKS PARAMETERS
      ph_bmass = powheginput('#bmass')
      if( ph_bmass.lt.0d0 ) ph_bmass = 4.92d0
      ph_yb2 = sqrt(2d0) * ph_gfermi * ph_bmass**2

      ph_running_mass= .true.
      if( powheginput('#mb_running')==0 ) ph_running_mass=.false.

      ph_hmass = powheginput('#hmass')
      if( ph_hmass.lt.0d0 ) ph_hmass = 125d0

      ph_hwidth = powheginput('#hwidth')
      if( ph_hwidth.lt.0d0 ) ph_hwidth = 4.088d-3

      !-----------------------------------------------------------------------
      !>> PDFs are not needed in here 
      pdf_ih1= 0
      pdf_ih2= 0
      pdf_ndns1= -100
      pdf_ndns2= -100
      pdf_nparton= 15 ! overwrite to allow also e+e-, mu+mu-, ...
      

      !-----------------------------------------------------------------------
      !>> We know all physical parameters now, we can set the collider
      !>> energy.  In this case: Ecm = MH
      kn_beams(0,1)=ph_hmass/2d0
      kn_beams(0,2)=ph_hmass/2d0
      kn_beams(1,1)=0
      kn_beams(1,2)=0
      kn_beams(2,1)=0
      kn_beams(2,2)=0
      kn_beams(3,1)=kn_beams(0,1)
      kn_beams(3,2)=-kn_beams(0,2)
      kn_sbeams=4*kn_beams(0,1)*kn_beams(0,2)

      !-----------------------------------------------------------------------
      !>> print out parameters
      write(*,*)'******************************************************'
      write(*,*)'>> PHYSICAL PARAMETERS'
      write(*,*)'  GFermi  = ',ph_gfermi
      write(*,*)'  H-mass  = ',ph_hmass
      write(*,*)'  H-width = ',ph_hwidth
      write(*,*)'  b-mass  = ',ph_bmass,' [for Yukawa coupling]'
      if( ph_running_mass )then
        write(*,*)'>> using running Yukawa coupling for b-quark'
        mur= ph_hmass*st_renfact
        write(*,*)'   mb(mur) = ',mb_msbar(mur),' [MSbar]'
      else
        write(*,*)'>> using fixed Yukawa coupling for b-quark'
      endif
      write(*,*)'******************************************************'

C     set the b-mass
      if( powheginput('#massive_b_lhe')==1 )then
         physpar_mq(5) = ph_bmass
      else
         physpar_mq(5) = 0d0
      endif
      write(*,*)'******************************************************'
      write(*,*)'>> b-quark mass for LesHouches events = ',physpar_mq(5)
      write(*,*)'******************************************************'
      
      return
      end
