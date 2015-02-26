      subroutine init_processes
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_flg.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
      include 'pwhg_st.h'
      include 'pwhg_par.h'
      include 'LesHouches.h'
      include 'onshellmap.h'
c      include 'PhysPars.h'
      logical debug,iseven
      parameter (debug=.false.)
      integer i,k,kres,lwp,lwm,awp,awm,nlight
      integer ii1,ii2,ii3,ii4,ii5,ii6,ii7,ii8,ii9,ii10,ii11,ii12,ii13
      common/inputprocind/ii1,ii2,ii3,ii4,ii5,ii6,ii7,ii8,
     1     ii9,ii10,ii11,ii12,ii13
      real * 8 powheginput
      integer jnlowhich,allrad,fladec,fltdec
      common/cjnlowhich/jnlowhich,allrad,fladec,fltdec

      offshelltop = .true.
      reweightbymg = .true.
      mockoffshelltop = .false.
      doubleresonant = .false.

      if(powheginput("#offshelltop").eq.0) then
         offshelltop = .false.
         reweightbymg = .false.
      endif

      if(powheginput("#mockoffshelltop").eq.1) then
         if(.not.offshelltop) then
            write(*,*)
     1 ' offshelltop 0 and mockoffshelltop 1: not allowed'
            call exit(-1)
         endif
         reweightbymg = .false.
         offshelltop = .true.
         mockoffshelltop = .true.
      endif

      
      if(powheginput("#doubleresonant").eq.1) then
         if(mockoffshelltop) then
            write(*,*)
     1' doubleresonant 1 and mockoffshelltop 1: not allowed'
            call exit(-1)
         endif
         doubleresonant = .true.
      endif

c--- virtuals are in DR scheme
      flg_drscheme=.true.
c This flag is set if any resonances in the event can decay in coloured parton,
c and POWHEG is suppose to handle emissions in the decay.

      par_isrtinycsi = 1d-5
      par_isrtinyy = 1d-5
      par_fsrtinycsi = 1d-5
      par_fsrtinyy = 1d-5
c      par_isrtinycsi = 0
c      par_isrtinyy = 0
c      par_fsrtinycsi = 0
c      par_fsrtinyy = 0
      rad_iupperfsr=powheginput("#iupperfsr")
      if(rad_iupperfsr.lt.0) rad_iupperfsr=1
c flag to do importance sampling in x variable in collinear remnants
      flg_collremnsamp=.true.      
c     number of light flavors
      st_nlight = 5

      nlight=5
      if(powheginput('#arXiv:1207.5018').ge.0) then
         nlight=4
         write(*,*) ' >>> Denner comparison: no b-initiated processes'
      endif
c We adopt the following flavour sequence
c 1   2   3   4   5   6    7    8    9   10   11   12    13
c in  in  t   t~  W+  W-   l+   nu   l-  nu~  b    b~    parton
c 0   0   0   0   3   4    5    5    6   6    3    4     (0|3|4|5|7)
c where 5 and 7 for the emitted parton are allowed if either W decays
c hadronically.


      fltdec=abs(powheginput("#topdec"))
c should be a flavour for t decay: 11,13,15 or 1,3
      if(fltdec.lt.1.or.(fltdec.gt.3.and.fltdec.lt.11)
     1     .or.fltdec.gt.15) then
         write(*,*) 'topdec should be between 1 and 3 or 11 and 15'
         call exit(-1)
      endif
         
      if(iseven(fltdec)) then
         write(*,*) 'topdec should be odd: 11, 13, 15, or 1,3'
         call exit(-1)
      endif
      if(fltdec.eq.3) fltdec = 1

      lwp=fltdec+1
      awp=-fltdec

      fladec=abs(powheginput("#tbardec"))
      if(fladec.lt.1.or.(fltdec.gt.3.and.fltdec.lt.11)
     1     .or.fltdec.gt.15) then
         write(*,*) 'tbardec should be between 1 and 3 or 11 and 15'
         call exit(-1)
      endif
      if(iseven(fladec)) then
         write(*,*) 'tbardec should be odd: 11, 13, 15, or 1,3'
         call exit(-1)
      endif
      if(fladec.eq.3) fladec = 1
      lwm=fladec
      awm=-fladec-1

c For example
c      lwp=12
c      awp=-11
c      lwm=13
c      awm=-14
c

c this is useful for reodrering the particles, if needed
      ii1=1
      ii2=2
      ii3=3     ! t
      ii4=4     ! tbar
      ii5=5     ! wp
      ii6=6     ! Wm
      ii7=7     ! l+  (awp)
      ii8=8    ! nu  (lwp)
      ii9=9    ! l-  (lwm)
      ii10=10   ! nu~ (awm)
      ii11=11    ! b
      ii12=12    ! b~
      ii13=13   ! parton


c semileptonic decays
      if(fltdec.ge.11.and.fladec.ge.11) then
c     index of the first light coloured particle in the final state
c     (all subsequent particles are coloured)
         flst_lightpart=11
      elseif(fltdec.ge.11.and.fladec.lt.11) then
         flst_lightpart=9
      elseif(fltdec.lt.11.and.fladec.ge.11) then
c must switch t and tbar decay products
c         ii7=9
c         ii8=10
c         ii9=7
c         ii10=8
c         flst_lightpart=9
cc The above should not be necessary. rad_kinreg_on should select
cc only coloured emitters
         flst_lightpart=7
      else
         flst_lightpart=7
      endif

c counters for born and real graphs
      flst_nborn=0
      flst_nreal=0

c nlowhich:
c 0    All radiation included
c 1    Only initial radiation in production
c 2    Only radiation in t or tbar decay
c 3    Only radiation in W decays
c 4    Only radiation in t decay (no tbar)
c
c flst_nreson = number of resonances that decay into coloured
c               particles that can radiate.
c               Radiation from the production process is counted
c               as a fictitious resonance with index 0
c
c flst_reslist: list of resonances. It contains the index of the resonance
c (its position in the flavour list of the subprocess), or 0 for the
c fictitious production process resonance
c
      jnlowhich = powheginput("#nlowhich")
      allrad = powheginput("#allrad")
      if(allrad.eq.1.and.jnlowhich.ne.0) then
         write(*,*) ' allrad requires all regions to radiate'
         write(*,*) ' but jnlowhich is not 0; exiting ...'
         call exit(-1)
      endif
c for now default to include only NLO corrections in production.
c nlowhich = 0 does all corrections.
      if(jnlowhich.lt.0) jnlowhich = 1

      if(jnlowhich.eq.1) then
         flst_nreson=1
         flst_reslist(1)=0
      elseif(jnlowhich.eq.2) then
         flst_nreson=2
         flst_reslist(1)=ii3
         flst_reslist(2)=ii4
      elseif(jnlowhich.eq.4) then
         flst_nreson=1
         flst_reslist(1)=ii3
      elseif(jnlowhich.eq.3) then
         flst_nreson=0
         if(abs(lwp).lt.11) then
            flst_nreson=flst_nreson+1
            flst_reslist(flst_nreson)=ii5
         endif
         if(abs(lwm).lt.11) then
            flst_nreson=flst_nreson+1
            flst_reslist(flst_nreson)=ii6
         endif
      else
         flst_nreson=3
         flst_reslist(1)=0
         flst_reslist(2)=ii3
         flst_reslist(3)=ii4
         if(abs(lwp).lt.11) then
            flst_nreson=flst_nreson+1
            flst_reslist(flst_nreson)=ii5
         endif
         if(abs(lwm).lt.11) then
            flst_nreson=flst_nreson+1
            flst_reslist(flst_nreson)=ii6
         endif
      endif


      do i=-nlight,nlight
c construct Born graph one by one, increasing the counter as
c we go on
         flst_nborn=flst_nborn+1
         flst_born(ii1,flst_nborn) = i
         flst_born(ii2,flst_nborn) = -i
         flst_born(ii3,flst_nborn) = 6
         flst_born(ii4,flst_nborn) = -6
         flst_born(ii5,flst_nborn) = 24
         flst_born(ii6,flst_nborn) = -24
         flst_born(ii7,flst_nborn) = awp
         flst_born(ii8,flst_nborn) = lwp
         flst_born(ii9,flst_nborn) = lwm
         flst_born(ii10,flst_nborn)= awm
         flst_born(ii11,flst_nborn)= 5
         flst_born(ii12,flst_nborn)= -5

c if a particle belongs to a resonance, indicate which
         flst_bornres(ii1,flst_nborn)=0
         flst_bornres(ii2,flst_nborn)=0
         flst_bornres(ii3,flst_nborn)=0
         flst_bornres(ii4,flst_nborn)=0
         flst_bornres(ii5,flst_nborn)=ii3
         flst_bornres(ii6,flst_nborn)=ii4
         flst_bornres(ii7,flst_nborn)=ii5
         flst_bornres(ii8,flst_nborn)=ii5
         flst_bornres(ii9,flst_nborn)=ii6
         flst_bornres(ii10,flst_nborn)=ii6
         flst_bornres(ii11,flst_nborn)=ii3
         flst_bornres(ii12,flst_nborn)=ii4
      enddo
      do k=1,flst_nreson
c build the real; the radiated parton (index ii13) can belong
c to any resonance that can radiate; loop first over the
c resonances that can radiate
         kres=flst_reslist(k)
         do i=-nlight,nlight
            flst_nreal=flst_nreal+1

            flst_real(ii1,flst_nreal)=  i  
            flst_real(ii2,flst_nreal)=  -i 
            flst_real(ii3,flst_nreal)=  6  
            flst_real(ii4,flst_nreal)=  -6 
            flst_real(ii5,flst_nreal)=  24 
            flst_real(ii6,flst_nreal)=  -24
            flst_real(ii7,flst_nreal)=  awp
            flst_real(ii8,flst_nreal)=  lwp
            flst_real(ii9,flst_nreal)=  lwm
            flst_real(ii10,flst_nreal)= awm
            flst_real(ii11,flst_nreal)= 5  
            flst_real(ii12,flst_nreal)= -5 
            flst_real(ii13,flst_nreal)= 0

            flst_realres(ii1,flst_nreal)=0
            flst_realres(ii2,flst_nreal)=0
            flst_realres(ii3,flst_nreal)=0
            flst_realres(ii4,flst_nreal)=0
            flst_realres(ii5,flst_nreal)=ii3
            flst_realres(ii6,flst_nreal)=ii4
            flst_realres(ii7,flst_nreal)=ii5
            flst_realres(ii8,flst_nreal)=ii5
            flst_realres(ii9,flst_nreal)=ii6
            flst_realres(ii10,flst_nreal)=ii6
            flst_realres(ii11,flst_nreal)=ii3
            flst_realres(ii12,flst_nreal)=ii4
c set to the current resonance that we are considering
            flst_realres(ii13,flst_nreal)=kres
         enddo
      enddo
c for the fictitious zero resonance, include also off
c diagonal initial state
      if(flst_nreson.gt.0.and.flst_reslist(1).eq.0) then
         do i=-nlight,nlight
            if(i.ne.0) then
c i is the incoming (and radiated) quark
               flst_nreal=flst_nreal+1
               flst_real(ii1,flst_nreal)=  0       
               flst_real(ii2,flst_nreal)=  i       
               flst_real(ii3,flst_nreal)=  6  
               flst_real(ii4,flst_nreal)=  -6 
               flst_real(ii5,flst_nreal)=  24 
               flst_real(ii6,flst_nreal)=  -24
               flst_real(ii7,flst_nreal)=  awp
               flst_real(ii8,flst_nreal)=  lwp
               flst_real(ii9,flst_nreal)=  lwm
               flst_real(ii10,flst_nreal)= awm
               flst_real(ii11,flst_nreal)= 5  
               flst_real(ii12,flst_nreal)= -5 
               flst_real(ii13,flst_nreal)= i
               flst_realres(ii1,flst_nreal)=0
               flst_realres(ii2,flst_nreal)=0
               flst_realres(ii3,flst_nreal)=0
               flst_realres(ii4,flst_nreal)=0
               flst_realres(ii5,flst_nreal)=ii3
               flst_realres(ii6,flst_nreal)=ii4
               flst_realres(ii7,flst_nreal)=ii5
               flst_realres(ii8,flst_nreal)=ii5
               flst_realres(ii9,flst_nreal)=ii6
               flst_realres(ii10,flst_nreal)=ii6
               flst_realres(ii11,flst_nreal)=ii3
               flst_realres(ii12,flst_nreal)=ii4
               flst_realres(ii13,flst_nreal)=0
            endif
         enddo
         do i=-nlight,nlight         
            if(i.ne.0) then
               flst_nreal=flst_nreal+1
               flst_real(ii1,flst_nreal)=   i  
               flst_real(ii2,flst_nreal)=   0 
               flst_real(ii3,flst_nreal)=   6  
               flst_real(ii4,flst_nreal)=   -6 
               flst_real(ii5,flst_nreal)=   24 
               flst_real(ii6,flst_nreal)=   -24
               flst_real(ii7,flst_nreal)=   awp
               flst_real(ii8,flst_nreal)=   lwp
               flst_real(ii9,flst_nreal)=   lwm
               flst_real(ii10,flst_nreal)=  awm
               flst_real(ii11,flst_nreal)=  5  
               flst_real(ii12,flst_nreal)=  -5 
               flst_real(ii13,flst_nreal)=  i
               
               flst_realres(ii1,flst_nreal)=0
               flst_realres(ii2,flst_nreal)=0
               flst_realres(ii3,flst_nreal)=0
               flst_realres(ii4,flst_nreal)=0
               flst_realres(ii5,flst_nreal)=ii3
               flst_realres(ii6,flst_nreal)=ii4
               flst_realres(ii7,flst_nreal)=ii5
               flst_realres(ii8,flst_nreal)=ii5
               flst_realres(ii9,flst_nreal)=ii6
               flst_realres(ii10,flst_nreal)=ii6
               flst_realres(ii11,flst_nreal)=ii3
               flst_realres(ii12,flst_nreal)=ii4
               flst_realres(ii13,flst_nreal)=0
            endif
         enddo
      endif

      write(*,*) ' n-born ',flst_nborn,',  n-real ',flst_nreal


      end


      function brcorrect(p)
      implicit none
c Setup correction factor for hadronic/leptonic decay
c in case the NLO corrections to W decays are not included
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'pwhg_flg.h'
      include 'PhysPars.h' 
      real * 8 brcorrect,p(0:3,*)
      integer jnlowhich,allrad,fltdec,fladec
      common/cjnlowhich/jnlowhich,allrad,fltdec,fladec
      real * 8 asopi,mw2,hfrac,pwhg_alphas,gwsq,wwidth_lo
c The rest of the program is such that the leptonic branching of the top is correct.
c In fact, MCFM is setup in such a way that no strong corrations are included in the
c W hadronic decay (in virtual.f, the alpha/pi term is subtracted from the virtual),
c so that the MCFM branchings are equal to the partonic result.
c The MadGraph reweighting uses an externally assigned top and W width. In the semileptonic decays
c this yields the correct leptonic branching fraction.
c As far as the top width is concerned, a correction factor computed in the init_coupling routine
c corrects the cross section for the difference in the top width used in the progator, and the one
c that the program computes using the matrix elements.
c Here we include a similar rescaling factor due to the mismatch of the W widths that are computed
c in the numerator (i.e. the width at leading order) and the one in the denominator.
c Thus, at the end, the leptonic branching ratio is the correct one.
c Thus, here we correct for the NLO corrections the hadronic branching relative to the
c leptonnic one.
      brcorrect = 1
      gwsq=8d0*ph_wmass**2*ph_gfermi/sqrt(2d0)
      wwidth_lo = 9 * (1d0/48d0/pi*gwsq*ph_wmass)
      brcorrect=brcorrect * (ph_Wwidth/wwidth_lo)**2
      if(flg_bornonly) then
         return
      endif
c W+
      mw2=p(0,5)**2-p(1,5)**2-p(2,5)**2-p(3,5)**2
      asopi=pwhg_alphas(mw2,st_lambda5MSB,5)/pi
c full hadronic over single lepton width
      hfrac=6*(1+asopi+1.409*asopi**2-12.77*asopi**3-80*asopi**4)

c Now the total is correct; correct the leptonic case
C      brlep = 3/(3+hfrac)
C      brhad = hfrac/(3+hfrac)

      brcorrect = brcorrect * (3d0/(3d0+hfrac)) / (3d0/(3d0+6d0))

c Correct the hadronic branching only to yield the correct
c hadron/lepton ratio = hfrac/lfrac

      if(fltdec.lt.5) then
c if hadronic, correct with the lepton-to-hadron ratio
         brcorrect=brcorrect*hfrac/6
      endif
c W-
      mw2=p(0,6)**2-p(1,6)**2-p(2,6)**2-p(3,6)**2
      asopi=pwhg_alphas(mw2,st_lambda5MSB,5)/pi
      hfrac=6*(1+asopi+1.409*asopi**2-12.77*asopi**3-80*asopi**4)
c correct to the leptonic branchng
      brcorrect = brcorrect * (3d0/(3d0+hfrac)) / (3d0/(3d0+6d0))
      if(fladec.lt.5) then
c if hadronic, correct with the lepton-to-hadron ratio
         brcorrect=brcorrect*hfrac/6
      endif

      end
