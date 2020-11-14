      subroutine pwhgevent
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_flg.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
      include 'pwhg_rwl.h'
      include 'LesHouches.h'
      integer iret,iun
      real * 8 suppfact
      real * 8 random,powheginput
      external random,powheginput
      integer mcalls,icalls
      data mcalls,icalls/0,0/
      save mcalls,icalls
      integer mcallsrmn,icallsrmn
      data mcallsrmn,icallsrmn/0,0/
      save mcallsrmn,icallsrmn
      real * 8 pwhg_pt2,pt2max_regular
      external pwhg_pt2,pt2max_regular
      real * 8 weight
      integer i
      real * 8 seconds
      integer lh_seed,lh_n1,lh_n2
      common/lhseeds/lh_seed,lh_n1,lh_n2
      logical notfinite_kin
      real *8 kt2minqed
      common/showerqed/kt2minqed
c.....the double rad variables should be set here otherwise
c.....they are wrong in remnant events
      real*8 mc_tmaxisr,mc_tmaxfsr
      real*8 mc_csiisr,mc_yisr,mc_aziisr
      real*8 mc_csifsr,mc_yfsr,mc_azifsr
      real*8 mc_isr_scale,mc_fsr_scale
      common/mc_scale_lhe/mc_isr_scale,mc_fsr_scale
      logical mc_dlberad
      common/dblerad/mc_tmaxisr,mc_tmaxfsr,
     +     mc_csiisr,mc_yisr,mc_aziisr,
     +     mc_csifsr,mc_yfsr,mc_azifsr,
     +     mc_dlberad
c
      mc_isr_scale=0d0
      mc_fsr_scale=0d0
c
      mc_tmaxisr=0d0
      mc_tmaxfsr=0d0
      mc_csiisr =0d0
      mc_yisr   =0d0
      mc_aziisr =0d0
      mc_dlberad=.false.
c.....mauro
      flg_monitorubound = .true.
c If at the end the event is not generated for some reason (nup=0)
c restart from here
 1    continue
      if(idwtup.eq.3) then
         weight=1
      elseif(idwtup.eq.-4) then
         weight=rad_totgen * rad_branching
      else
         write(*,*) ' only 3 and -4 are allowed for idwtup'
         call exit(-1)
      endif
c     store current random seeds. To be used to restart at problematic events
      call readcurrentrandom(lh_seed,lh_n1,lh_n2)
      if(random().gt.rad_totrm/rad_totgen) then
c     generate underlying Born kinematics
         call reset_timer
         call gen_btilde(mcalls,icalls)
         if(notfinite_kin('Born')) goto 1
         call get_timer(seconds)
         call addtocnt('btilde time (sec)',seconds)
c     generate underlying Born flavour
         call gen_uborn_idx
c
         if(powheginput('#testsuda').eq.1) then
            call testsuda
         endif
         if(.not.flg_LOevents) then
c generate radiation
            call reset_timer
            call gen_radiation
            if(notfinite_kin('Real')) goto 1
            call get_timer(seconds)
            call addtocnt('radiation time (sec)',seconds)
            rad_pt2max=pwhg_pt2()
         else
            kn_csi = 0
         endif
c add a random azimuthal rotation around beam axis
         call add_azimuth
c --- set up les houches interface
         call gen_leshouches
c if negative weight, flip the sign of weight
         if(rad_btilde_sign(rad_ubornidx).eq.-1) then
            weight=-weight
         endif
c rad_type=1 for btilde events (used only for debugging purposes)
         rad_type=1
         call increasecnt("btilde event")
         rwl_type = rad_type
         rwl_index = rad_ubornidx
         rwl_weight = rad_btilde_arr(rad_ubornidx)
     $        *rad_btilde_sign(rad_ubornidx)
      else
c generate remnant n+1 body cross section
         call reset_timer
         call gen_sigremnant(mcallsrmn,icallsrmn)
         if(notfinite_kin('Real')) goto 1
         call get_timer(seconds)
         call addtocnt("remnant time (sec)",seconds)
c pick a configuration according to its cross section
c iret=1: rem contribution (leftover from damping factor on R)
c iret=2: reg contribution (real graphs without singular regions)
c and regenerate real phase space accordingly
         call gen_remnant(iret)
         include 'post_gen_remnant_hook.h'
         if(notfinite_kin('Real')) goto 1
c         if (pwhg_pt2().lt.rad_ptsqmin) then
c            write(*,*) '****************************************'
c            write(*,*) 'WARNING in gen_remnant'
c            write(*,*) 'pwhg_pt2 < rad_ptsqmin ',
c     #           pwhg_pt2(),' < ',rad_ptsqmin
c            write(*,*) (flst_alr(i,rad_realalr),i=1,nlegreal)
c            write(*,*) 'To generate this event, use the following seeds'
c            call printcurrentrandom
c            write(*,*) '****************************************'
c         endif
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
         call add_azimuth
         if(iret.eq.1) then
c     set st_muren2 equal to pt2 for scalup value
c.....mauro-fixed-for DY
            if(flst_emitter(rad_realalr).le.2) then ! use the qcd/isr ptmin
               rad_pt2max=max(rad_ptsqmin,pwhg_pt2())
            else
               rad_pt2max=max(kt2minqed,pwhg_pt2()) ! in DY this is only QED
            endif
c.....mauro-fixed-for DY                        
            call set_rad_scales(rad_pt2max)
            call gen_leshouches
c     rad_type=2 for remnants
            rad_type=2
            call increasecnt("remnant event")
            rwl_type = rad_type
            rwl_index = rad_realalr
            rwl_weight = rad_damp_rem_arr(rad_realalr)
         else
c     set st_muren2 for scalup value for regular contributions
            rad_pt2max=max(rad_ptsqmin,pt2max_regular())
            call set_rad_scales(rad_pt2max)
            call gen_leshouches_reg
c rad_type=3 for regular contributions
            rad_type=3
            call increasecnt("regular event")
            rwl_type = rad_type
            rwl_index = rad_realreg
            rwl_weight = rad_reg_arr(rad_realreg)
         endif
         mc_isr_scale= sqrt(rad_pt2max)
         mc_fsr_scale= sqrt(rad_pt2max)
      endif
      if(flg_weightedev) then
         call born_suppression(suppfact)
         if(suppfact.eq.0) then
            write(*,*) ' 0 suppression factor in event generation'
            write(*,*) ' aborting'
            call exit(-1)
         endif
         weight=weight/suppfact
      endif
c     correct for bound violations
      if(flg_ubexcess_correct) then
         weight = weight * rad_genubexceeded
      endif
c If at the end the event is not generated for some reason (nup=0)
c restart from here
      if(nup.eq.0) goto 1
      xwgtup = weight
      end

      logical function notfinite_kin(BornOrReal)
      implicit none
      character * 4 BornOrReal
      logical pwhg_isfinite
      integer j,mu
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      if(BornOrReal.eq.'Born') then
         do j=1,nlegborn
            do mu=0,3
               if(.not.pwhg_isfinite(kn_pborn(mu,j))) then
                  call increasecnt("not_finite_kin in Born")
                  notfinite_kin = .true.
                  return
               endif
            enddo
         enddo
      elseif(BornOrReal.eq.'Real') then
         do j=1,nlegreal
            do mu=0,3
               if(.not.pwhg_isfinite(kn_preal(mu,j))) then
                  call increasecnt("not_finite_kin in Real")
                  notfinite_kin = .true.
                  return
               endif
            enddo
         enddo
      else
         write(*,*) 'not_finite_kin: error, argument should be'
     1        //'either Born or Real, got ',BornOrReal
         call exit(-1)
      endif
      notfinite_kin = .false.
      end




      subroutine gen_radiation
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flg.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
      real * 8 t,csi,y,azi,sig,born
      real * 8 tmax
      common/ctmax/tmax
      integer kinreg,jkinreg,firstreg,lastreg,fl1,fl2,flemitter
      logical ini
      data ini/.true./
      real * 8 pwhg_pt2,powheginput
      external pwhg_pt2,powheginput
      save ini,firstreg,lastreg
      logical is_charged,is_coloured
      external is_charged,is_coloured
c.....mauro-kine
      real*8 out
      real*8 mc_isr_scale,mc_fsr_scale
      common/mc_scale_lhe/mc_isr_scale,mc_fsr_scale
      real *8 kt2minqed
      common/showerqed/kt2minqed
      real*8 dbleradmom
      common/mc_dbleradmom/dbleradmom(0:3,nlegreal+1)
      real*8 mc_tmaxisr,mc_tmaxfsr
      real*8 mc_csiisr,mc_yisr,mc_aziisr
      real*8 mc_csifsr,mc_yfsr,mc_azifsr
      logical mc_dlberad
      common/dblerad/mc_tmaxisr,mc_tmaxfsr,
     +     mc_csiisr,mc_yisr,mc_aziisr,
     +     mc_csifsr,mc_yfsr,mc_azifsr,
     +     mc_dlberad
c
      mc_isr_scale=0d0
      mc_fsr_scale=0d0
c
      mc_tmaxisr=0d0
      mc_tmaxfsr=0d0
      mc_csiisr =0d0
      mc_yisr   =0d0
      mc_aziisr =0d0
      mc_dlberad=.false.
c.....mauro-kine
      if(ini) then
         firstreg=powheginput("#radregion")
         if(firstreg.le.0) then
            firstreg=1
            lastreg=rad_nkinreg
         else
            lastreg=firstreg
         endif
         ini=.false.
      endif
c Use highest bid procedure (see appendix B of FNO2006)
      tmax=0
      kinreg=0
      do jkinreg=firstreg,lastreg
         rad_kinreg = jkinreg
         if(rad_kinreg_on(rad_kinreg)) then
            if(rad_kinreg.eq.1) then
c     initial state radiation
c kn_emitter may be 0,1,2 depending upon the flavour
c of the process, which is undefined here.
c Set it to a value less than 2, to avoid problems later.
               kn_emitter = 0
               fl1=flst_born(1,rad_ubornidx)
               fl2=flst_born(2,rad_ubornidx)
               if((.not.is_coloured(fl1).and..not.is_coloured(fl2))
     1          .and.(is_charged(fl1).or.is_charged(fl2))) then
                  flg_em_rad = .true.
               else
                  flg_em_rad = .false.
               endif
               call gen_rad_isr(t)
            else
c     final state radiation
               kn_emitter=flst_lightpart+rad_kinreg-2
               flemitter=flst_born(kn_emitter,rad_ubornidx)
               if(.not.is_coloured(flemitter).and.is_charged(flemitter))
     1              then
                  flg_em_rad = .true.
               else
                  flg_em_rad = .false.
               endif
               call gen_rad_fsr(t)
            endif
            include 'pwhg_gen_radiation_hook.h'
            if(t.gt.tmax) then
               tmax=t
               kinreg=rad_kinreg
               csi=kn_csi
               y=kn_y
               azi=kn_azi
            endif
         endif
      enddo
c.....mauro-kine
      if(mc_tmaxisr.lt.0d0.or.mc_tmaxfsr.lt.0d0) then
         write(*,*)'FAILED INITIALIZATION OF DBLE RAD TEST'
         stop
      endif
      if(mc_tmaxisr.gt.1d-10.and.mc_tmaxfsr.gt.1d-10)then
         mc_dlberad=.true.
      endif
c.....mauro-kine
c Set up radiation kinematics
c.....mauro-kine
c      if(kinreg.eq.0) then
c change the if statement : I may have changed the kinreg definition
      if(mc_tmaxisr.lt.1d-10.and.mc_tmaxfsr.lt.1d-10)then
c.....mauro-kine
c Generate a Born like event
         kn_csi=0
         rad_kinreg=0
c.....mauro-kine
         y=0d0
         azi=0d0
         kn_y=y
         kn_azi=azi
c
         mc_isr_scale= sqrt(rad_ptsqmin)
         mc_fsr_scale= sqrt(kt2minqed)
c.....mauro-kine
         return
      else     ! at least on radiation
c.....mauro-kine   
         if(.not.mc_dlberad) then ! below STD generation
c            rad_kinreg=kinreg
c            kn_csi=csi
c            kn_y=y
c            kn_azi=azi
            if(    mc_tmaxisr.lt.1d-10) then
               rad_kinreg=2!kinreg
               kn_csi=mc_csifsr
               kn_y  =mc_yfsr
               kn_azi=mc_azifsr
            elseif(mc_tmaxfsr.lt.1d-10) then
               rad_kinreg=1!kinreg
               kn_csi=mc_csiisr
               kn_y  =mc_yisr
               kn_azi=mc_aziisr
            else
               write(*,*)'ERROR IN GEN RADIATION ??? '
               stop
            endif
            if(rad_kinreg.eq.1) then
               call gen_real_phsp_isr_rad
            else
               call gen_real_phsp_fsr_rad
            endif
            t=pwhg_pt2()
            if(    mc_tmaxisr.lt.1d-10) then
               mc_isr_scale= sqrt(rad_ptsqmin)
               mc_fsr_scale= sqrt(t)
            elseif(mc_tmaxfsr.lt.1d-10) then
               mc_isr_scale= sqrt(t)
               mc_fsr_scale= sqrt(kt2minqed)
            endif
            call set_rad_scales(t)         
c     We call sigborn_rad now, becayse the real may depend
c     upon the Born throught the soft and collinear terms,
c     that are used in the real if bornzerodamp is used.
c     Failing to do so may cause problems in picking the
c     flavour
            call sigborn_rad(born)
            call sigreal_rad(sig)
            call gen_real_idx
         else ! NEW GENERATION FOR DBLE RADIATION
c.....mauro-kine
c the idea is to use ISR to set the UB flavour and 
c the isr scale AND a dummy kinematics with nlegreal particles
c then the actual momenta (nlegreal+1)/flavour are stored in 
c the array dbleradmom(0:3,nlegreal+1) that will be used afterwards to 
c rewrite the LHE events keeping all the v2 infos (col/moth) 
c and adding anothe gamma coming from the W 
c NOTE that the FSR scale will be set as an extrainfo computed 
c with a new pt2 function
            rad_kinreg=1        !kinreg
            kn_csi=mc_csiisr
            kn_y  =mc_yisr
            kn_azi=mc_aziisr
            if(rad_kinreg.eq.1) then
               call gen_real_phsp_isr_rad
            else
               call gen_real_phsp_fsr_rad
            endif
            t=pwhg_pt2()
            call set_rad_scales(t)
            call sigborn_rad(born)
            call sigreal_rad(sig)
            call gen_real_idx
c kn_variables (preal and cmpreal) and fsr variables as common
            call setupdbleradmom(dbleradmom)
            call mc_fsr_pwhg_pt2(out)
            mc_isr_scale=sqrt(t)
            mc_fsr_scale=sqrt(out)
c.....mauro-kine
         endif
      endif
      end
c.....mauro-kine ADDED
      subroutine setupdbleradmom(dbleradmom)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      include 'pwhg_flst.h'
      include 'PhysPars.h'
      real*8 dbleradmom(0:3,nlegreal+1)
      real*8 tmpdbleradmom(0:3,nlegreal+2),
     +     tmpdbleradcmpmom(0:3,nlegreal+2),jj
      real*8 mc_tmaxisr,mc_tmaxfsr
      real*8 mc_csiisr,mc_yisr,mc_aziisr
      real*8 mc_csifsr,mc_yfsr,mc_azifsr
      logical mc_dlberad
      common/dblerad/mc_tmaxisr,mc_tmaxfsr,
     +     mc_csiisr,mc_yisr,mc_aziisr,
     +     mc_csifsr,mc_yfsr,mc_azifsr,
     +     mc_dlberad
      integer i1,i2,loc_nlegborn,loc_em
      integer loc_fl(nlegreal+1)
      real*8 loc_pborn(0:3,nlegreal+1),loc_cmpborn(0:3,nlegreal+1)
      real*8 loc_xb1,loc_xb2,loc_csi,loc_y,loc_azi,loc_mass(nlegreal+1)
      real * 8 powheginput
      integer ini
      data ini /0/
      save ini
      logical flg_mvemquadprec
      common/flagprec/flg_mvemquadprec
      save /flagprec/
      if(ini.eq.0) then
         if(powheginput("#quadrupleprec").ne.0) then
            flg_mvemquadprec=.true.
         else
            flg_mvemquadprec=.false.
         endif
         ini=1
         write(*,*)'-------------------------------------------'
         write(*,*)'------THE-FLAG-flg_mvemquadprec-IS-SET-TO-,',flg_mvemquadprec
         write(*,*)'-------------------------------------------'
      endif
c first setup the pseudoborn
      loc_nlegborn=nlegreal+1
      do i1=1,2!loc_nlegborn
         loc_mass(i1)=kn_masses(i1)
         loc_fl(i1)=0
c         loc_fl=flst_real(i1,rad_realidx)      ! set before by gen_real_idx
         do i2=0,3
            loc_pborn(i2,i1)=kn_preal(i2,i1)
            loc_cmpborn(i2,i1)=kn_cmpreal(i2,i1)
         enddo
      enddo
      loc_fl(3)  =0
      loc_mass(3)=ph_Wmass
      do i2=0,3
         loc_pborn(i2,3)  =kn_preal(i2,3)  +kn_preal(i2,4)
         loc_cmpborn(i2,3)=kn_cmpreal(i2,3)+kn_cmpreal(i2,4)
      enddo
      do i1=4,loc_nlegborn
         loc_mass(i1)=kn_masses(i1-1)
         loc_fl(i1)=3
c         loc_fl=flst_real(i1,rad_realidx)      ! set before by gen_real_idx
         do i2=0,3
            loc_pborn(i2,i1)  =kn_preal(i2,i1-1)
            loc_cmpborn(i2,i1)=kn_cmpreal(i2,i1-1)
         enddo
      enddo
      loc_fl(loc_nlegborn) = 0 ! isr gluon/quark

      loc_xb1=kn_x1
      loc_xb2=kn_x2
      loc_em =4 ! should be the electron :: CHECK
      loc_csi=mc_csifsr
      loc_y  =mc_yfsr
      loc_azi=mc_azifsr
c x1 = xb1 in RES LesHouches.f
c jj and the cmp shold be immaterial
      call gen_real_phsp_fsr_rad_g0(
     1     loc_nlegborn,loc_fl,loc_em,loc_csi,loc_y,loc_azi,
     2     loc_xb1,loc_xb2,loc_mass,loc_pborn,
     3     loc_cmpborn,loc_xb1,loc_xb2,
     +     tmpdbleradmom,tmpdbleradcmpmom,jj)
c now I remove again the resonance from the block
      do i1=1,2
         do i2=0,3
            dbleradmom(i2,i1)=tmpdbleradmom(i2,i1)
         enddo
      enddo
      do i1=4,loc_nlegborn+1
         do i2=0,3
            dbleradmom(i2,i1-1)=tmpdbleradmom(i2,i1)
         enddo
      enddo
      end subroutine setupdbleradmom
c      subroutine     setupdbleradmom(dbleradmom)
c routines taken from RES

      subroutine gen_real_phsp_fsr_rad_g0(
     1     argnlegb,argreslist,argemitter,argcsi,argy,argazi,
     2     argxb1,argxb2,argmasses,argpborn,
     3     argcmpborn,argx1,argx2,argpreal,argcmpreal,argjacreal)
      implicit none
      include 'pwhg_math.h'
      include 'pwhg_flg.h'
      integer argnlegb,argreslist(argnlegb),argemitter
      real * 8 argcsi,argy,argazi,argxb1,argxb2,argmasses(argnlegb),
     1         argpborn(0:3,argnlegb),argcmpborn(0:3,argnlegb),argx1,argx2,
     2         argcmpreal(0:3,argnlegb+1),argpreal(0:3,argnlegb+1),argjacreal
      real * 8 vec(3),beta,pres(0:3),
     1     moms(0:3,argnlegb),momso(0:3,argnlegb+1),betares,argcsimax
c     local common block
      real * 8 q0,q2,e0em
      common/gen_real_phspc/q0,q2,e0em
      integer i,j,ires,resemitter,lres,nlegr
      data vec/0d0,0d0,1d0/
      save vec

      nlegr = argnlegb + 1
      if(argreslist(argemitter).ne.0) then
c Find four momentum of resonance
         ires=argreslist(argemitter)
         pres=argcmpborn(:,ires)
         lres=0
         do j=3,argnlegb
            if(phsp_sonof(ires,j)) then
               lres=lres+1
               moms(:,lres)=argcmpborn(:,j)
               if(j.eq.argemitter) resemitter=lres
            endif
         enddo
c Find beta of resonance for boost
         betares=sqrt(pres(1)**2+pres(2)**2+pres(3)**2)/pres(0)
         if(betares > 1d-30) then
            vec(1)=pres(1)/(betares*pres(0))
            vec(2)=pres(2)/(betares*pres(0))
            vec(3)=pres(3)/(betares*pres(0))
            call mboost(lres,vec,-betares,moms,moms)
         endif
         e0em=moms(0,resemitter)
         q0=pres(0)*sqrt(1-betares**2)
         q2=q0**2
         if(argmasses(argemitter).eq.0) then
            call xbarradmap(lres,resemitter,q0,moms,
     1           argcsi,argy,argazi,momso,argjacreal)
         else
c massive case; here argy will assume a different meaning!
            call xcompcsimaxfsr_g(argnlegb,argemitter,argreslist,
     1     argy,argmasses,argcmpborn,argcsimax)
            if(argcsi.gt.argcsimax) then
c if this message never appears, remove the compcsimaxfsr_g call and all
c this check
               write(*,*) ' gen_real_phsp_fsr_rad_g0: bound violation'
     1         //': argcsi=',argcsi,'> argcsimax=', argcsimax 
               argjacreal=0
               return
            endif
            call xbarradmapmv(lres,resemitter,argmasses(argemitter)**2,
     1           q0,moms,argcsi,argy,argazi,momso,argjacreal)
         endif
         if(betares > 1d-30) then
            call mboost(lres+1,vec,betares,momso,momso)
         endif
c build real momenta out of momso
         lres=0
         do j=3,argnlegb
            if(phsp_sonof(ires,j)) then
               lres=lres+1
               argpreal(:,j)=momso(:,lres)
            else
               argpreal(:,j)=argcmpborn(:,j)
            endif
         enddo
         argpreal(:,nlegr)=momso(:,lres+1)
      else
         write(*,*)'in gen_real_phsp_fsr_rad_g0'//
     +        ' should never be in this branch'
         stop
         q0=2*argcmpborn(0,1)
         q2=q0**2
         e0em=argcmpborn(0,argemitter)
         if(argmasses(argemitter).eq.0) then
            call xbarradmap(argnlegb-2,argemitter-2,q0,argcmpborn(0,3),
     1           argcsi,argy,argazi,argpreal(0,3),argjacreal)
         else
c massive case; here argy will assume a different meaning!
            call xcompcsimaxfsr_g(argnlegb,argemitter,argreslist,
     1     argy,argmasses,argcmpborn,argcsimax)
            if(argcsi.gt.argcsimax) then
c if this message never appears, remove the compcsimaxfsr_g call and all
c this check
               write(*,*) ' gen_real_phsp_fsr_rad_g0: bound violation'
     1         //': argcsi=',argcsi,'> argcsimax=', argcsimax 
               argjacreal=0
               return
            endif
            call xbarradmapmv(argnlegb-2,argemitter-2,
     1           argmasses(argemitter)**2,q0,argcmpborn(0,3),
     2           argcsi,argy,argazi,argpreal(0,3),argjacreal)
         endif
c remember: no csimax factor, we are integrating in csitilde 
c         call barradmap(argnlegb-2,argemitter-2,q0,argcmpborn(0,3),
c     1        argcsi,argy,argazi,argpreal(0,3),argjacreal)
      endif
      vec(1)=0
      vec(2)=0
      vec(3)=1
      beta=(argxb1-argxb2)/(argxb1+argxb2)
      call mboost(nlegr-2,vec,beta,argpreal(0,3),argpreal(0,3))
      do i=0,3
         argpreal(i,1)=argpborn(i,1)
         argpreal(i,2)=argpborn(i,2)
      enddo
      argx1=argxb1
      argx2=argxb2
c      call checkmomzero(nlegr,argpreal)
      call xcompcmkin_g(nlegr,argpreal,argcmpreal)
c The dij are now computed in "ubprojections.f"
c      call compdij
cc The following does no longer belong here. Check that
c  these routines are called (if needed) after this soubroutine is called
c      if(argmasses(argemitter).eq.0) then
c         call setsoftvecfsr
c      else
c         call setsoftvecfsrmv
c      endif
c The dij are now computed in "ubprojections.f"
c      call compdijsoft
      contains

      logical function phsp_sonof(i,j)
      integer i,j,jcur,mo
      jcur=j
 1    mo=argreslist(jcur)
      if(mo.eq.i) then
         phsp_sonof=.true.
      elseif(mo.ne.0) then
        jcur=mo
        goto 1
      else
         phsp_sonof=.false.
      endif
      end function


      end
c call begin

      subroutine xcompcmkin_g(n,p,cmp)
      implicit none
      integer n
      real * 8 p(0:3,n),cmp(0:3,n)
      real * 8 vecl(3),betal
      data vecl/0d0,0d0,1d0/
      save vecl
      betal=-(p(3,1)+p(3,2))/(p(0,1)+p(0,2))
      call mboost(n,vecl,betal,p,cmp)
      end


c This routine performs the inverse mapping from barred and radiation
c variables to the n+1 momenta, as in Sec. 5.2.1 in fno2006.
c All particle can have masses, except for the n+1-th and j-th.
c conventions: vector(4)=(x,y,z,t)
c Input:
c n           : number of final state barred momenta
c j           : the emitter
c q0          : CM energy
c barredk(4,n): the n barred-k 4-vectors
c csi,y,phi   : the radiation variables
c Output:
c xk(4,n+1)   : the n+1 real final state momenta
c jac         : jacobian factor on phirad
      subroutine xbarradmap(n,j,q0,barredk,csi,y,phi,xk,jac)
      implicit none
c parameters
      include 'pwhg_math.h'
      integer n,j
      real * 8 q0,barredk(0:3,n),csi,y,phi,xk(0:3,n+1),jac
C Local variables
      real * 8 q2,mrec2,k0np1,uknp1,ukj,uk,cpsi,cpsi1,ubkj,vec(3),
     #     norm,k0rec,ukrec,beta,k2
      integer i
c     according to fno2006: by k0 we mean the 0 component in the CM, by
c     uk (underlined k) we mean the modulus of its 3-momentum n and np1
c     in a variable name suggests n and n+1, etc.
      q2=q0**2
c (5.42) of fnw2006
      k0np1=csi*q0/2
      uknp1=k0np1
c compute Mrec^2 (5.45)
      mrec2=(q0-barredk(0,j))**2
     #     -barredk(1,j)**2-barredk(2,j)**2-barredk(3,j)**2
      ukj=(q2-mrec2-2*q0*uknp1)/(2*(q0-uknp1*(1-y)))
c compute the length of k (5.44)
      uk=sqrt(ukj**2+uknp1**2+2*ukj*uknp1*y)
c compute cos psi (angle between knp1 and k)
      cpsi=(uk**2+uknp1**2-ukj**2)/(2*uk*uknp1)
c get the cosine of the angle between kn and k
      cpsi1=(uk**2+ukj**2-uknp1**2)/(2*uk*ukj)
c Set k_j and k_n+1 parallel to kbar_n
      ubkj=barredk(0,j)
      do i=0,3
         xk(i,j)=ukj*barredk(i,j)/ubkj
         xk(i,n+1)=uknp1*barredk(i,j)/ubkj
      enddo
c Set up a unit vector orthogonal to kbar_n and to the z axis
      vec(3)=0
      norm=sqrt(barredk(1,j)**2+barredk(2,j)**2)
      vec(1)=barredk(2,j)/norm
      vec(2)=-barredk(1,j)/norm
c Rotate k_n+1 around vec of an amount psi
      call mrotate(vec,sqrt(abs(1-cpsi**2)),cpsi,xk(1,n+1))
c Rotate k_j around vec of an amount psi1 in opposite direction
      call mrotate(vec,-sqrt(abs(1-cpsi1**2)),cpsi1,xk(1,j))
c set up a unit vector parallel to kbar_j
      do i=1,3
         vec(i)=barredk(i,j)/ubkj
      enddo
c Rotate k_j and k_n+1 around this vector of an amount phi
      call mrotate(vec,sin(phi),cos(phi),xk(1,n+1))
      call mrotate(vec,sin(phi),cos(phi),xk(1,j))
c compute the boost velocity
      k0rec=q0-ukj-uknp1
c use abs to fix tiny negative root FPE
      ukrec=sqrt(abs(k0rec**2-mrec2))
      beta=(q2-(k0rec+ukrec)**2)/(q2+(k0rec+ukrec)**2)
c     Boost all other barred k (i.e. 1 to j-1,j+1 to n) along vec with velocity
c     beta in the k direction (same as barred k_j)
      do i=1,3
         vec(i)=barredk(i,j)/ubkj
      enddo
      if(j-1 > 0) call mboost(j-1,vec,beta,barredk(0,1),xk(0,1))
      if(n-j > 0) call mboost(n-j,vec,beta,barredk(0,j+1),xk(0,j+1))
      k2=2*ukj*uknp1*(1-y)
c returns jacobian of FNO 5.40 (i.e. jac*d csi * d y * d phi is phase space)
      jac=q2*csi/(4*pi)**3*ukj**2/ubkj/(ukj-k2/(2*q0))
      end

c This routine is as the previous one,
c in case the emitter is massive.
      subroutine barradmapmv8(n,j,m2,q0,barredk,csi,y,phi,xk,jac)
      implicit none
c parameters
      include 'pwhg_math.h'
      integer n,j
      real * 8 q0,barredk(0:3,n),csi,y,phi,xk(0:3,n+1),jac
C Local variables
      real * 8 m2,q2,mrec2,k0np1,uknp1,ukj,k0j,uk,cpsi,cpsi1,vec(3),
     1     norm,k0rec,ukrec,beta,ukj0,alpha,
     2     ubkj,bk0j,bk0rec,ubkrec,k0jmax,k0recmax,z,z1,z2
      integer i
      real * 8 cosjnp1soft,sinjnp1soft
      common/ccosjnp1soft/cosjnp1soft,sinjnp1soft
      jac=1
c     according to fno2006: by k0 we mean the 0 component in the CM, by
c     uk (underlined k) we mean the modulus of its 3-momentum n and np1
c     in a variable name suggests n and n+1, etc.
      q2=q0**2
c (5.42) of fnw2006
      k0np1=csi*q0/2
c our reference is the Dalitz phase space d k0jp1 dk0j
      jac=jac*q0/2
      uknp1=k0np1
c compute Mrec^2 (5.45)
      mrec2=(q0-barredk(0,j))**2
     #     -barredk(1,j)**2-barredk(2,j)**2-barredk(3,j)**2
      k0recmax = (q2-m2+mrec2)/(2*q0)
      k0jmax   = (q2+m2-mrec2)/(2*q0)
      z1=(k0recmax+sqrt(k0recmax**2-mrec2))/q0
      z2=(k0recmax-sqrt(k0recmax**2-mrec2))/q0
      z=z2-(z2-z1)*(1+y)/2
      jac=jac*(z1-z2)/2
      k0j=k0jmax-k0np1*z
      jac=jac*k0np1
      ukj=sqrt(k0j**2-m2)
      k0rec=q0-k0np1-k0j
      ukrec=sqrt(k0rec**2-mrec2)
      uk=ukrec
c compute cos psi (angle between knp1 and k)
      cpsi=(uk**2+uknp1**2-ukj**2)/(2*uk*uknp1)
c get the cosine of the angle between kj and k
      cpsi1=(uk**2+ukj**2-uknp1**2)/(2*uk*ukj)
c Set k_j and k_n+1 parallel to kbar_j
      ubkj=sqrt(barredk(1,j)**2+barredk(2,j)**2+barredk(3,j)**2)
      bk0j=barredk(0,j)
      do i=0,3
         xk(i,n+1)=uknp1*barredk(i,j)/ubkj
      enddo
      xk(0,n+1)= k0np1
      do i=1,3
         xk(i,j)=ukj*barredk(i,j)/ubkj
      enddo
      xk(0,j)=k0j
c Set up a unit vector orthogonal to kbar_n and to the z axis
      vec(3)=0
      norm=sqrt(barredk(1,j)**2+barredk(2,j)**2)
      vec(1)=barredk(2,j)/norm
      vec(2)=-barredk(1,j)/norm
c Rotate k_n+1 around vec of an amount psi
      call mrotate(vec,sqrt(abs(1-cpsi**2)),cpsi,xk(1,n+1))
c Rotate k_j around vec of an amount psi1 in opposite direction
      call mrotate(vec,-sqrt(abs(1-cpsi1**2)),cpsi1,xk(1,j))
c set up a unit vector parallel to kbar_j
      do i=1,3
         vec(i)=barredk(i,j)/ubkj
      enddo
c Rotate k_j and k_n+1 around this vector of an amount phi
      call mrotate(vec,sin(phi),cos(phi),xk(1,n+1))
      call mrotate(vec,sin(phi),cos(phi),xk(1,j))
c find boost of recoil system
      bk0rec=q0-bk0j
      ubkrec=ubkj
      alpha=(k0rec+ukrec)/(bk0rec+ubkrec)
      beta=(1-alpha**2)/(1+alpha**2)
c massless limit is
c     beta=(q2-(k0rec+ukrec)**2)/(q2+(k0rec+ukrec)**2)
c     Boost all other barred k (i.e. 1 to j-1,j+1 to n) along vec with velocity
c     beta in the k direction (same as barred k_j)
      do i=1,3
         vec(i)=barredk(i,j)/ubkj
      enddo
      if(j-1 > 0) call mboost(j-1,vec,beta,barredk(0,1),xk(0,1))
      if(n-j > 0) call mboost(n-j,vec,beta,barredk(0,j+1),xk(0,j+1))
c 
      jac=jac*q0/((2*pi)**3*2*ubkj)
c compute the cosine of the angle between kj and kn+1 IN THE SOFT LIMIT.
c this must replace kn_y when computing the soft limit vector
c since kn_y has a different meaning here
      cosjnp1soft=(2*q2*z-q2-mrec2+m2)/(sqrt(k0jmax**2-m2)*q0)/2
      end

c This routine is as the previous one,
c in case the emitter is massive.
      subroutine barradmapmv16(n,j,mm2,qq0,barredk,csi,y,phi,xk,jac)
      implicit none
c parameters
      include 'pwhg_math.h'
      integer n,j
      real * 8 mm2,qq0,barredk(0:3,n),csi,y,phi,xk(0:3,n+1),jac
C Local variables
      real * 16 m2,q0,q2,mrec2,k0np1,uknp1,ukj,k0j,uk,cpsi,cpsi1,
     1     norm,k0rec,ukrec,ukj0,alpha,
     2     ubkj,bk0j,bk0rec,ubkrec,k0jmax,k0recmax,z,z1,z2,
     3     qa,qb,qc,qq
      real * 8 vec(3),beta,cpsi8,spsi8,cpsi18,spsi18,dk0recmax
      integer i
      real * 8 cosjnp1soft,sinjnp1soft
      common/ccosjnp1soft/cosjnp1soft,sinjnp1soft
      jac=1
c     according to fno2006: by k0 we mean the 0 component in the CM, by
c     uk (underlined k) we mean the modulus of its 3-momentum n and np1
c     in a variable name suggests n and n+1, etc.
      q0=qq0
      m2=mm2
      q2=q0**2
c (5.42) of fnw2006
      k0np1=csi*q0/2
c our reference is the Dalitz phase space d k0jp1 dk0j
      jac=jac*q0/2
      uknp1=k0np1
c compute Mrec^2 (5.45)
      mrec2=(q0*1.q0-barredk(0,j)*1.q0)**2*1.q0
     #     -barredk(1,j)**2*1.q0
     #     -barredk(2,j)**2*1.q0
     #     -barredk(3,j)**2*1.q0
      k0recmax = (q2-m2+mrec2)/(2*q0)
      k0jmax   = (q2+m2-mrec2)/(2*q0)

      dk0recmax= k0recmax*1.d0
c solutions of the quadratic equation
c      z1=(k0recmax+sqrt(k0recmax**2-mrec2))/q0
c      z2=(k0recmax-sqrt(k0recmax**2-mrec2))/q0
      qa= q0/2.q0
      qb= -k0recmax
      qc= mrec2/2.q0/q0
      qq= -0.5q0*(qb-dsign(1.d0,dk0recmax)*sqrt(k0recmax**2-mrec2))
      z1= qq/qa
      z2= qc/qq
      z1=(k0recmax+sqrt(k0recmax**2-mrec2))/q0
      z2=(k0recmax-sqrt(k0recmax**2-mrec2))/q0
      z=z2-(z2-z1)*(1+y)/2
      jac=jac*(z1-z2)/2
      k0j=k0jmax-k0np1*z
      jac=jac*k0np1
      ukj=sqrt(k0j**2-m2)
      k0rec=q0-k0np1-k0j
      ukrec=sqrt(k0rec**2-mrec2)
      uk=ukrec
c compute cos psi (angle between knp1 and k)
      cpsi=(uk**2+uknp1**2-ukj**2)/(2*uk*uknp1)
      cpsi8=cpsi
      spsi8=sqrt(abs(1-cpsi**2))
c get the cosine of the angle between kj and k
      cpsi1=(uk**2+ukj**2-uknp1**2)/(2*uk*ukj)
      cpsi18=cpsi1
      spsi18 = sqrt(abs(1-cpsi1**2))
c Set k_j and k_n+1 parallel to kbar_j
      ubkj=sqrt(barredk(1,j)**2+barredk(2,j)**2+barredk(3,j)**2)
      bk0j=barredk(0,j)
      do i=0,3
         xk(i,n+1)=uknp1*barredk(i,j)/ubkj
      enddo
      xk(0,n+1)= k0np1
      do i=1,3
         xk(i,j)=ukj*barredk(i,j)/ubkj
      enddo
      xk(0,j)=k0j
c Set up a unit vector orthogonal to kbar_n and to the z axis
      vec(3)=0
      norm=sqrt(barredk(1,j)**2+barredk(2,j)**2)
      vec(1)=barredk(2,j)/norm
      vec(2)=-barredk(1,j)/norm
c Rotate k_n+1 around vec of an amount psi
      call mrotate(vec,spsi8,cpsi8,xk(1,n+1))
c Rotate k_j around vec of an amount psi1 in opposite direction
      call mrotate(vec,-spsi18,cpsi18,xk(1,j))
c set up a unit vector parallel to kbar_j
      do i=1,3
         vec(i)=barredk(i,j)/ubkj
      enddo
c Rotate k_j and k_n+1 around this vector of an amount phi
      call mrotate(vec,sin(phi),cos(phi),xk(1,n+1))
      call mrotate(vec,sin(phi),cos(phi),xk(1,j))
c find boost of recoil system
      bk0rec=q0-bk0j
      ubkrec=ubkj
      alpha=(k0rec+ukrec)/(bk0rec+ubkrec)
      beta=(1-alpha**2)/(1+alpha**2)
c massless limit is
c     beta=(q2-(k0rec+ukrec)**2)/(q2+(k0rec+ukrec)**2)
c     Boost all other barred k (i.e. 1 to j-1,j+1 to n) along vec with velocity
c     beta in the k direction (same as barred k_j)
      do i=1,3
         vec(i)=barredk(i,j)/ubkj
      enddo
      if(j-1 > 0) call mboost(j-1,vec,beta,barredk(0,1),xk(0,1))
      if(n-j > 0) call mboost(n-j,vec,beta,barredk(0,j+1),xk(0,j+1))
c 
      jac=jac*q0/((2*pi)**3*2*ubkj)
c compute the cosine of the angle between kj and kn+1 IN THE SOFT LIMIT.
c this must replace kn_y when computing the soft limit vector
c since kn_y has a different meaning here
      cpsi=(2*q2*z-q2-mrec2+m2)/(sqrt(k0jmax**2-m2)*q0)/2
      cosjnp1soft=cpsi
      sinjnp1soft=sqrt(1-cpsi**2)
      end

      subroutine xbarradmapmv(n,j,m2,q0,barredk,csi,y,phi,xk,jac)
      implicit none
c parameters
      include 'pwhg_math.h'
      include 'pwhg_flg.h'
      integer n,j
      real * 8 m2,q0,barredk(0:3,n),csi,y,phi,xk(0:3,n+1),jac
      logical flg_mvemquadprec
      common/flagprec/flg_mvemquadprec
      save /flagprec/
      if(flg_mvemquadprec) then
         call barradmapmv16(n,j,m2,q0,barredk,csi,y,phi,xk,jac)
      else
         call barradmapmv8(n,j,m2,q0,barredk,csi,y,phi,xk,jac)
      endif
      end

      subroutine xcompcsimaxfsr_g(argnlegb,argemitter,argreslist,
     1     argy,argmasses,argcmpborn,argcsimax)
      implicit none
      include 'pwhg_flg.h'
      integer argnlegb,argemitter,argreslist(argnlegb)
      real * 8 argy,argmasses(argnlegb),argcmpborn(0:3,argnlegb),argcsimax
      logical flg_mvemquadprec
      common/flagprec/flg_mvemquadprec
      save /flagprec/
      if(flg_mvemquadprec) then
         call compcsimaxfsr_g16(argnlegb,argemitter,argreslist,
     1     argy,argmasses,argcmpborn,argcsimax)
      else
         call compcsimaxfsr_g8(argnlegb,argemitter,argreslist,
     1     argy,argmasses,argcmpborn,argcsimax)
      endif
      end

      subroutine compcsimaxfsr_g8(argnlegb,argemitter,argreslist,
     1     argy,argmasses,argcmpborn,argcsimax)
      implicit none
      include 'pwhg_flg.h'
      integer argnlegb,argemitter,argreslist(argnlegb)
      real * 8 argy,argmasses(argnlegb),argcmpborn(0:3,argnlegb),argcsimax
      real * 8 q0,m2,mrec2,k0recmax,knp1max,z1,z2,z,pj(0:3)
      integer j,kres
      real * 8 dotp
      external dotp
      j=argemitter
      kres=argreslist(j)
      if(kres.gt.0) then
         call boost2reson(argcmpborn(:,kres),1,
     1        argcmpborn(:,j),pj)
         q0=sqrt(dotp(argcmpborn(:,kres),argcmpborn(:,kres)))
      else
         pj=argcmpborn(:,j)
         q0=2*argcmpborn(0,1)
      endif
      mrec2=(q0-pj(0))**2-pj(1)**2-pj(2)**2-pj(3)**2
      m2=argmasses(j)**2
      if(m2.eq.0) then
         argcsimax=1-mrec2/q0**2
      else
         k0recmax = (q0**2-m2+mrec2)/(2*q0)
         z1=(k0recmax+sqrt(k0recmax**2-mrec2))/q0
c         z2=(k0recmax-sqrt(k0recmax**2-mrec2))/q0
         z2 = mrec2/(q0**2*z1)
         z=z2-(z2-z1)*(1+argy)/2
         knp1max=-(q0**2*z**2-2*q0*k0recmax*z+mrec2)/(2*q0*z*(1-z))
         argcsimax=2*knp1max/q0
      endif
      end


      subroutine compcsimaxfsr_g16(argnlegb,argemitter,argreslist,
     1     argy,argmasses,argcmpborn,argcsimax)
      implicit none
      include 'pwhg_flg.h'
      integer argnlegb,argemitter,argreslist(argnlegb)
      real * 8 argy,argmasses(argnlegb),argcmpborn(0:3,argnlegb),argcsimax
      real * 8 q0,m2,mrec2,k0recmax,knp1max,z1,z2,z,pj(0:3)
      integer j,kres
      real * 8 dotp
      external dotp
      real*16 qa,qb,qc,qq
      real*16 qk0recmax,qmrec2,qz1,qz2,qz,qknp1max,qkn_csimax
      j=argemitter
      kres=argreslist(j)
      if(kres.gt.0) then
         call boost2reson(argcmpborn(:,kres),1,
     1        argcmpborn(:,j),pj)
         q0=sqrt(dotp(argcmpborn(:,kres),argcmpborn(:,kres)))
      else
         pj=argcmpborn(:,j)
         q0=2*argcmpborn(0,1)
      endif
c calculation of mrec2 in quadruple precision 
      qmrec2= (q0*1.q0-pj(0)*1.q0)**2
     +       -        (pj(1)*1.q0)**2
     +       -        (pj(2)*1.q0)**2
     +       -        (pj(3)*1.q0)**2
      mrec2=(q0-pj(0))**2-pj(1)**2-pj(2)**2-pj(3)**2
      m2=argmasses(j)**2
      if(m2.eq.0) then
         argcsimax=1-mrec2/q0**2
      else
c calculation of kn_csimax in double precision
c         k0recmax = (q0**2-m2+mrec2)/(2*q0)
c         z1=(k0recmax+sqrt(k0recmax**2-mrec2))/q0
c         z2=(k0recmax-sqrt(k0recmax**2-mrec2))/q0
c         z=z2-(z2-z1)*(1+kn_y)/2
c         knp1max=-(q0**2*z**2-2*q0*k0recmax*z+mrec2)/(2*q0*z*(1-z))
c         kn_csimax=2*knp1max/q0
c calculation of kn_csimax in quadruple precision
         qk0recmax = (q0**2*1q0-m2*1q0+qmrec2)/(2*q0)
         qa= q0/2.q0
         qb= -qk0recmax
         qc= qmrec2/2.q0/q0
         qq= -0.5q0*(qb-dsign(1.d0,k0recmax)*sqrt(qk0recmax**2-qmrec2))
c         qz1=(qk0recmax+sqrt(qk0recmax**2-qmrec2))/q0
c         qz2=(qk0recmax-sqrt(qk0recmax**2-qmrec2))/q0
         qz1= qq/qa
         qz2= qc/qq
         qz=qz2-(qz2-qz1)*(1+argy)/2
         qknp1max=-(q0**2*qz**2-2*q0*qk0recmax*qz+qmrec2)/(2*q0*qz*(1-qz))
         qkn_csimax=2*qknp1max/q0
      endif
      argcsimax=qkn_csimax
      end




c call end
      subroutine mc_fsr_pwhg_pt2(out)
      implicit none
      real * 8 out
      integer em,ires
      real*8 mc_tmaxisr,mc_tmaxfsr
      real*8 mc_csiisr,mc_yisr,mc_aziisr
      real*8 mc_csifsr,mc_yfsr,mc_azifsr
      logical mc_dlberad
      common/dblerad/mc_tmaxisr,mc_tmaxfsr,
     +     mc_csiisr,mc_yisr,mc_aziisr,
     +     mc_csifsr,mc_yfsr,mc_azifsr,
     +     mc_dlberad
      em=3
      call xcomppt2fsrmv(mc_yfsr,mc_csifsr,out)
      end

      subroutine xcomppt2fsrmv(y,csi,pt2)
c this subroutine computes the scale of the coupling in case
c of a massive final state emitter
      implicit none
      real * 8 y,csi,pt2
      real * 8 z
      real*8 z1,z2,p0max,q
      call xsetupmvemitter(z1,z2,p0max,q)
      z=z2-(z2-z1)*(1+y)/2
      pt2=csi**2*q**3*(1-z)/(2*p0max-z*csi*q)
      end

      subroutine xsetupmvemitter(z1,z2,p0max,q)
c setup all quantities depending only upon the underlying born
c configuration for the massive emitter
      implicit none
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      integer em
      real * 8 pres(0:3),pem(0:3)
      real*8 q,mrec2,csimax,k0recmax,p0max,z1,z2,kt2max,m2
c      em=flst_lightpart+rad_kinreg-2
      em=3
      kn_emitter = em
c only from resonance
c      if(flst_bornres(em,1).ne.0) then
c Find four momentum of resonance
c         ires=flst_bornres(em,1)
c         pres=kn_cmpborn(:,ires)
c         pem=kn_cmpborn(:,em)
c         ires=flst_bornres(em,1)
      pres=kn_cmpreal(:,3)+kn_cmpreal(:,4)
      pem =kn_cmpreal(:,em)
      q=sqrt(pres(0)**2-pres(1)**2-pres(2)**2-pres(3)**2)
      mrec2=(pres(0)-pem(0))**2-(pres(1)-pem(1))**2
     1     -(pres(2)-pem(2))**2-(pres(3)-pem(3))**2
c     else
c     q=kn_cmpborn(0,1)+kn_cmpborn(0,2)
c     mrec2=(q-kn_cmpborn(0,em))**2
c     1     -kn_cmpborn(1,em)**2-kn_cmpborn(2,em)**2-kn_cmpborn(3,em)**2
c     endif
      mrec2=abs(mrec2)
      if(mrec2.lt.1d-10) mrec2=0
      m2=kn_masses(em)**2
      if(m2.gt.0) then
         csimax=1-(sqrt(m2)+sqrt(mrec2))**2/q**2
         k0recmax = (q**2-m2+mrec2)/(2*q)
         p0max   = (q**2+m2-mrec2)/(2*q)
         z1=(k0recmax+sqrt(k0recmax**2-mrec2))/q
         z2=(k0recmax-sqrt(k0recmax**2-mrec2))/q
         kt2max=csimax**2*q**3*(1-z2)/(2*p0max-z2*csimax*q)
      else
         write(*,*)'should nover be here xsetupmvemitter'
         stop
         csimax=1-mrec2/q**2
         kn_csimax=csimax
         k0recmax = (q**2+mrec2)/(2*q)
         p0max   = (q**2-mrec2)/(2*q)
         z1=1
         z2=1-csimax
         kt2max=(csimax*q)**2
      endif
      end

c.....mauro-kine

      function pwhg_pt2()
      implicit none
      real * 8 pwhg_pt2
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_flg.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
      real * 8 pres(0:3),q2
      integer em,ires
      if(rad_kinreg.eq.1) then
         pwhg_pt2=(kn_sreal/4)*(1-kn_y**2)*kn_csi**2
      else
         em=flst_lightpart+rad_kinreg-2
         if(kn_masses(em).eq.0) then
            if(flst_bornres(em,1).ne.0) then
               ires=flst_bornres(em,1)
               pres=kn_cmpborn(:,ires)
               q2=pres(0)**2-pres(1)**2-pres(2)**2-pres(3)**2
            else
               q2=kn_sreal
            endif
            pwhg_pt2=(q2/2)*(1-kn_y)*kn_csi**2
         else
            call comppt2fsrmv(kn_y,kn_csi,pwhg_pt2)
         endif
      endif
      end

      function pwhg_upperb_rad()
      implicit none
      real * 8 pwhg_upperb_rad
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_flg.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
      include 'pwhg_st.h'
      include 'pwhg_em.h'
      real * 8 x,y,csi
      integer em
      csi=kn_csi
      x=1-csi
      y=kn_y
      if(rad_kinreg.eq.1) then
         if(rad_iupperisr.eq.1) then
            pwhg_upperb_rad = 1/((1-x)*(1-y**2))
c Possible alternatives:
c rad_iupper=2   pwhg_upperb_rad = 1/(x*(1-x)*(1-y**2))
c 
c rad_iupper=3:  pwhg_upperb_rad = 1/(x**2*(1-x)*(1-y**2))
         else
            write(*,*) ' rad_iupper=',rad_iupperisr,
     1        'alternative not implemented'
            call exit(1)
         endif
      else
c Final state radiation
         em=flst_lightpart+rad_kinreg-2
         if(kn_masses(em).eq.0) then
c for now use the same
            if(rad_iupperfsr.eq.1) then
               pwhg_upperb_rad = 1/(csi*(1-y))
            elseif(rad_iupperfsr.eq.2) then
               pwhg_upperb_rad = 1/(csi**2*(1-y)*(1-csi/2*(1-y))**2)
     2              *csi
            elseif(rad_iupperfsr.eq.3) then
               pwhg_upperb_rad = 1/(csi*(1-y)*
     2              (1-csi/2*(1-y)))
            else
               write(*,*) ' rad_iupper=',rad_iupperfsr,
     1              'alternative not implemented'
               call exit(1)
            endif
         else
c     massive emitter
            call compubradmv(y,csi,pwhg_upperb_rad)
         endif
      endif
      if(flg_em_rad) then
         pwhg_upperb_rad = pwhg_upperb_rad * em_alpha
      else
         pwhg_upperb_rad = pwhg_upperb_rad * st_alpha
      endif

      end



      function pt2solve(pt2,i)
c Returns  xlr - log(Delta^{(tilde{V})}) , see eq. D14, D15 in ZZ paper
c We use it to find its zero in pt2.
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_flg.h'
      include 'pwhg_kn.h'
      include 'pwhg_em.h'
      include 'pwhg_rad.h'
      include 'pwhg_math.h'
      real * 8 pt2solve,pt2
c i set by dzero: 1 for first call, 2 for subsequent calls, 3 for last call
c before a normal exit; not used here
      integer i,em
      real * 8 xlr,q2,xlam2c,kt2max,unorm,cunorm,sborn
      integer nlc
      common/cpt2solve/xlr,q2,kt2max,xlam2c,unorm,sborn,nlc
      real * 8 b0,xm,p,tmp
c.....mauro-pair b
      real*8 saveaem0
      common/csaveaem0/saveaem0
      integer paircorr
      common/cpaircorr/paircorr
c     this is constant, as it was in the original code
c     em_alpha=saveaem0 for ISR, it will change in FSR but
c     if rad_iupperfsr=2 the boound is pt2 does not depend
c     on the coupling:
c     unorm is not function of alpha
c     the constant saveaem0
c     will be replaced with the running one
c     for the vetoed generation, as it is done for st_alphas
c     in the standard algorithm
c.....mauro-pair e      


      
      b0=(11*CA-4*TF*nlc)/(12*pi)
      if(flg_em_rad) then
         cunorm=unorm*saveaem0
      else
         cunorm=unorm
      endif
      if(rad_kinreg.eq.1) then
         if(rad_iupperisr.eq.1) then
c see Notes/upperbounding-isr.pdf
            if(pt2.lt.sborn) then
               if(sborn.lt.kt2max) then
                  pt2solve=cunorm*pi/b0*(
     #      (log(2*sborn/xlam2c)*log(log(sborn/xlam2c)/log(pt2/xlam2c))
     #        - log(sborn/pt2)) +
     #           log(2d0)*log(log(kt2max/xlam2c)/log(sborn/xlam2c)))
     #           + xlr
               else
                  pt2solve=cunorm*pi/b0*(
     #     (log(2*sborn/xlam2c)*log(log(kt2max/xlam2c)/log(pt2/xlam2c))
     #        - log(kt2max/pt2)) )
     #           + xlr
               endif
            else
               pt2solve=cunorm*pi/b0*(log(2d0)
     #           *log(log(kt2max/xlam2c)/log(pt2/xlam2c)))
     #           + xlr
            endif
         else
            write(*,*) ' rad_iupper=',rad_iupperisr,' not implemented'
            call exit(1)
c Alternatives: rad_iupper=2
c         pt2solve=cunorm*pi/b0/2
c     #        *(log(q2/xlam2c)*log(log(kt2max/xlam2c)/log(pt2/xlam2c))
c     #        - log(kt2max/pt2)) + xlr
         endif
      else
         em = flst_lightpart+rad_kinreg-2
         if(kn_masses(em).ne.0) then
            call compintub(pt2,pt2solve)
            if(flg_em_rad) then
               if(paircorr.eq.1)then
                  cunorm=2d0*saveaem0*unorm ! trick to improve the statistics
               endif
            else
               write(*,*)'cannot be here in Drell-Yan'
               stop
            endif
c The following lines are used to test the analytic integration
c versus a vegas one; uncomment to test
c            call compintubveg(pt2,tmp)
c            write(*,'(a,3(1x,d10.4))') ' testintub:',pt2,pt2solve,tmp
            pt2solve=cunorm*pt2solve+xlr
         else
            if(rad_iupperfsr.eq.1) then
c final state radiation
               pt2solve=cunorm*pi/b0*(
     1       (log(kt2max/xlam2c)*log(log(kt2max/xlam2c)/log(pt2/xlam2c))
     2              - log(kt2max/pt2)) )
     3              + xlr
            elseif(rad_iupperfsr.eq.2) then
               xm=kn_csimax
               p=sqrt(pt2/sborn)
               pt2solve=cunorm*2*pi*2*(
     3        (log(xm-xm**2)+(2*xm-2)*log(xm)-2*log(1-xm)*xm-2)/xm/2.d+0
     1     -(p*log(xm-p**2)+(2*p*log(p)-2*log(1-p)*p-2)*xm-2*p*log(p))
     2    /(p*xm)/2.d+0) + xlr
            elseif(rad_iupperfsr.eq.3) then
               xm=kn_csimax
               p=sqrt(pt2/sborn)
               pt2solve=cunorm*2*pi*2*(
     3     (log(xm-xm**2)+(2*xm-2)*log(xm)-2*log(1-xm)*xm-2)/xm/2.d+0
     1   -(p*log(xm-p**2)+(2*p*log(p)-2*log(1-p)*p-2)*xm-2*p*log(p))
     2   /(p*xm)/2.d+0) + xlr
            else
               write(*,*)
     1 ' rad_iupper=',rad_iupperfsr,' not implemented'
               call exit(1)
            endif            
         endif
      endif
      end

      subroutine gen_rad_isr(t)
c Generates hard radiation kinematics according to
c appendix D in ZZ paper.
c
c  common/cptmin/ptminsq: minimum pt^2 accepted
c 
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
      include 'pwhg_st.h'
      real * 8 t
      real * 8 x,y,x1b,x2b
      real * 8 xlr,q2,xlam2c,kt2max,unorm,sborn
      integer nlc
      common/cpt2solve/xlr,q2,kt2max,xlam2c,unorm,sborn,nlc
      real * 8 xmin,rv,xp,xm,chi,tk,uk,ubound,ufct,
     #   value,err,tmp1,tmp2,tmp,rvalue,born,sig
      common/cdfxmin/xmin
      real * 8 tmax
      common/ctmax/tmax
      real * 8 random,pt2solve,dfxmin,pwhg_alphas0,pwhg_upperb_rad
      external random,pt2solve,dfxmin,pwhg_alphas0,pwhg_upperb_rad
c.....mauro-kine
      real*8 mc_tmaxisr,mc_tmaxfsr
      real*8 mc_csiisr,mc_yisr,mc_aziisr
      real*8 mc_csifsr,mc_yfsr,mc_azifsr
      logical mc_dlberad
      common/dblerad/mc_tmaxisr,mc_tmaxfsr,
     +     mc_csiisr,mc_yisr,mc_aziisr,
     +     mc_csifsr,mc_yfsr,mc_azifsr,
     +     mc_dlberad
c.....mauro-kine
      unorm=rad_norms(rad_kinreg,rad_ubornidx)
      sborn=kn_sborn
      x1b=kn_xb1
      x2b=kn_xb2
c See Notes/kt2max.pdf
      kt2max = sborn*(1-x2b**2)*(1-x1b**2)/(x1b+x2b)**2
      if(kt2max.lt.rad_ptsqmin.or.kt2max.lt.tmax) then
         t=-1
         goto 3
      endif
c upper bound is log(q2/t)
      if(rad_iupperisr.eq.1) then
         q2=2*sborn
      elseif(rad_iupperisr.eq.2) then
         write(*,*) ' rad_iupper=',rad_iupperisr,' not implemented'
         call exit(1)
c Alternative rad_iupper=2
c         q2=4*sborn/min(x1b,x2b)**2
      endif
c see section 4 in ZZ paper, last paragraph
      xlam2c=rad_lamll**2
      nlc=5
      xlr=0
 1    continue
      xlr=xlr+log(random())
c CERNLIB voodoo:
      call KERSET('C205. ',0,0,101)
c solve for zero of pt2solve
c dzero(xmin,xmax,x,err,eps,maxcalls,function)
c err: on exit if no error occours: |y-y0|<err 
c      error C205.1 function(xmin)*function(xmax)>0,
c                   x=0 and r=-2(ymax-ymin)
c      error C205.2 Number of calls to F exceeds maxcalls,
c                   x=0 and r=-(xmax-xmin)/2
c eps: required accuracy
      call dzero(rad_ptsqmin,kt2max,t,err,1d-8,1000000,pt2solve)
c error conditions
      if(t.eq.0.and.err.lt.0d0
     # .and.err.gt.rad_ptsqmin-kt2max) then
         write(*,*) 'DZERO fails'
         write(*,*) ' number of calls exceeded'
         call exit(1)
      endif
 3    if(t.lt.rad_ptsqmin.or.t.lt.tmax) then
c below cut (either below absolute minimum, or below previously generated
c radiation in highest bid loop): generate a born event
         t=-1
         kn_csi=0
         return
      endif
c vetoes:
      rv=random()
      xp=(sqrt(1+t/sborn)+sqrt(t/sborn))**2
      xm=(sqrt(1+t/sborn)-sqrt(t/sborn))**2
c tmp1: V(t)/tilde{V}(t) in appendix D of ZZ paper;
c (typo: in D.13, log log -> log
      xmin=min(x1b,x2b)/(2*sqrt(1+t/sborn))
      if(rad_iupperisr.eq.1) then
         tmp1=log((sqrt(xp-xmin)+sqrt(xm-xmin))
     #       /(sqrt(xp-xmin)-sqrt(xm-xmin)))
         if(t.lt.sborn) then
            tmp1=tmp1/(log(2*sborn/t)/2)
         else
            tmp1=tmp1/(log(2d0)/2)
         endif
      elseif(rad_iupperisr.eq.2) then
         tmp1=log(2/xmin*(sqrt((xp-xmin)*(xm-xmin))
     # +1-xmin/2*(xp+xm))/(xp-xm)) /(log(q2/t)/2)
      endif
c compare with D.11-D.12
c to set xmuren2:
      call set_rad_scales(t)
      tmp2=st_alpha / pwhg_alphas0(t,rad_lamll,nlc)
      tmp=tmp1*tmp2
      if(tmp.gt.1) then
         write(*,*) ' Error: upper bound lower than actual value',
     #        tmp,tmp1,tmp2,t
         call exit(1)
      endif
      if(rv.gt.tmp) then
         goto 1
      endif
c At this stage: pt generated according to D.2
c generate x proportional to 1/(x sqrt((xp-x)*(xm-x)))
c in the range xmin < x < xm (cf. D.5)
c Generate in d sqrt(xm-x) /sqrt(xp-x)  (rad_iupper=1) or d sqrt(xm-x) /(x sqrt(xp-x)) (rad_iupper=2)
c using       d sqrt(xm-x) /sqrt(xp-xm) (rad_iupper=1) or d sqrt(xm-x) /(xmin sqrt(xp-xm)) (rad_iupper=2) as upper bound using hit and miss
 2    chi=sqrt(xm-xmin)*random()
      x=xm-chi**2
      if(rad_iupperisr.eq.1) then
         if(random().gt.sqrt(xp-xm)/sqrt(xp-x)) goto 2
      elseif(rad_iupperisr.eq.2) then
         if(random().gt.(xmin*sqrt(xp-xm))/(x*sqrt(xp-x))) goto 2
      endif
c get y (abs to avoid tiny negative values)
      y=sqrt(abs(1-4*x/(1-x)**2*t/sborn))
      if(random().gt.0.5d0) y=-y
c At this point an x-y pair is generated according to the
c distribution upper().
c
c Veto if out of range (x1>1 or x2>1)
      tk=-1d0/2*(1-x)*(1-y)
      uk=-1d0/2*(1-x)*(1+y)
      if(   x1b*sqrt((1+tk)/(1+uk)/x) .gt. 1
     # .or. x2b*sqrt((1+uk)/(1+tk)/x) .gt. 1) then
         goto 1
      endif
c extra suppression factor of upper bounding function (may depend upon radiation variables)
      call uboundfct(ufct,1-x,y)
      if(random().gt.ufct) goto 1
c Veto from upper bound to real value. Count how many vetoes,
c since these may be expensive.
      call sigborn_rad(born)
      if(born.lt.0) then
         born=0
      endif
      if(born.eq.0) then
c bizarre situation that may arise when the scale gets so low
c that some pdf vanish (typically heavy flavour pdf's)
         t=-1
         goto 3
      endif
      kn_y=y
      kn_csi=1-x
      kn_azi=2*pi*random()
      ubound=born*pwhg_upperb_rad()*unorm*ufct
      call gen_real_phsp_isr_rad
      call sigreal_rad(sig)
      value=sig*kn_jacreal
      if(value.gt.ubound) then
         call increasecnt(
     # 'upper bound failures in generation of radiation')
      endif
      rvalue=random()*ubound
      if(rvalue.gt.value) then
         call increasecnt('vetoed radiation')
         goto 1
      endif
c.....mauro-kine
      mc_tmaxisr=t
      mc_csiisr =kn_csi
      mc_yisr   =kn_y
      mc_aziisr =kn_azi
c.....mauro-kine
      end


      subroutine getkt2maxands(kt2,s)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_mvem.h'
      real * 8 kt2,s
c setupmvemitter fixed to works also in the massless case
      call setupmvemitter
      kt2=kt2max
      s=q**2
      end

      subroutine gen_rad_fsr(t)
c Generates final state hard radiation kinematics according to
c Notes/upperbounding-fsr.pdf
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_flg.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
      include 'pwhg_st.h'
      real * 8 t
      real * 8 csi,y
      real * 8 xlr,q2,xlam2c,kt2max,unorm,sborn
      integer nlc
      common/cpt2solve/xlr,q2,kt2max,xlam2c,unorm,sborn,nlc
      real * 8 xmin,rv,ubound,ufct,
     #   s,value,err,tmp,rvalue,born,sig
      common/cdfxmin/xmin
      real * 8 tmax
      common/ctmax/tmax
      real *8 kt2minqed
      common/showerqed/kt2minqed
      real * 8 random,pt2solve,pwhg_alphas0,pwhg_upperb_rad,pwhg_pt2
      external random,pt2solve,pwhg_alphas0,pwhg_upperb_rad,pwhg_pt2
      real*8 mc_tmaxisr,mc_tmaxfsr
      real*8 mc_csiisr,mc_yisr,mc_aziisr
      real*8 mc_csifsr,mc_yfsr,mc_azifsr
      logical mc_dlberad
      real * 8 powheginput
      external powheginput
      real*8 powhegv2opt
      common/dblerad/mc_tmaxisr,mc_tmaxfsr,
     +     mc_csiisr,mc_yisr,mc_aziisr,
     +     mc_csifsr,mc_yfsr,mc_azifsr,
     +     mc_dlberad
c
      logical condition
      integer ini
      data ini/0/
      save ini,powhegv2opt
c.....mauro-pair b
      real*8 saveaem0
      common/csaveaem0/saveaem0
      include 'pwhg_em.h'
      integer paircorr
      common/cpaircorr/paircorr
      save /cpaircorr/
c.....mauro-pair e            
c
      if(ini.eq.0) then
         powhegv2opt = powheginput("#powhegv2opt")
         paircorr = 0
         if(powheginput("#emalpharunnning").eq.1d0) paircorr  = 1
         ini = 1
      endif
c.....mauro-kine
      unorm=rad_norms(rad_kinreg,rad_ubornidx)
c kn_sborn=kn_sreal:
      call getkt2maxands(kt2max,s)
      sborn=s
c below is for the QED case; it will never hit that limit anyhow ...
      if(flg_em_rad) then
         if(rad_iupperfsr.eq.1) then
            write(*,*)
     1  'error gen_rad_fsr: '
            write(*,*) 
     1  'cannot use iupperfsr = 1 for electromagnetic radiation'
            call exit(-1)
         endif
c.....mauro-kine
         if(powhegv2opt.ge.0) then
            condition = kt2max.lt.kt2minqed.or.kt2max.lt.tmax
         else
            condition = kt2max.lt.kt2minqed
         endif
         if(condition) then
c.....mauro-kine
            t=-1
            goto 3
         endif
      else
c.....mod: for DY ONLY qed can be FSR
         stop
c.....mod:
         if(kt2max.lt.rad_ptsqmin.or.kt2max.lt.tmax) then
            t=-1
            goto 3
         endif
      endif
c see section 4 in ZZ paper, last paragraph
      xlam2c=rad_lamll**2
      nlc=5
      xlr=0
 1    continue
      xlr=xlr+log(random())
c CERNLIB voodoo:
      call KERSET('C205. ',0,0,101)
c solve for zero of pt2solve
c dzero(xmin,xmax,x,err,eps,maxcalls,function)
c err: on exit if no error occours: |y-y0|<err 
c      error C205.1 function(xmin)*function(xmax)>0,
c                   x=0 and r=-2(ymax-ymin)
c      error C205.2 Number of calls to F exceeds maxcalls,
c                   x=0 and r=-(xmax-xmin)/2
c     eps: required accuracy
c.....mod: originally      
c     call dzero(rad_ptsqmin,kt2max,t,err,1d-8,1000000,pt2solve)
      call dzero(kt2minqed,kt2max,t,err,1d-8,1000000,pt2solve) ! for DY is QED
c.....mod:
c     error conditions
c.....mod: originally      
c      if(t.eq.0.and.err.lt.0d0
c     #.and.err.gt.rad_ptsqmin-kt2max) then
      if(t.eq.0.and.err.lt.0d0
     +     .and.err.gt.kt2minqed-kt2max) then
c.....mod:         
         write(*,*) 'DZERO fails'
         write(*,*) ' number of calls exceeded'
         call exit(1)
      endif
c
 3    continue
      if(powhegv2opt.ge.0) then
         condition = t.lt.kt2minqed.or.t.lt.tmax
      else
         condition = t.lt.kt2minqed
      endif
      if(condition) then
c.....mauro-kine
c.....mod:         
c below cut (either below absolute minimum, or below previously generated
c radiation in highest bid loop): generate a born event
         t=-1
         kn_csi=0
         return
      endif
c vetoes:
      rv=random()
      call set_rad_scales(t)
c.....mod      
      if(kn_masses(kn_emitter).eq.0) then
         if(rad_iupperfsr.eq.1) then
            tmp=st_alpha / pwhg_alphas0(t,rad_lamll,nlc)
         elseif(rad_iupperfsr.eq.2) then
            tmp=st_alpha
         elseif(rad_iupperfsr.eq.3) then
            tmp=st_alpha
         endif
      else
         tmp=st_alpha
      endif
c Only for pp ->W, to account for em radiation from the electron
      if(flg_em_rad) then
c This should be equivalent at setting tmp=1
         tmp=tmp/st_alpha
c.....mauro-pair b
         if(paircorr.eq.1) then
            tmp=tmp*em_alpha/(2d0*saveaem0)
         endif
c.....mauro-pair e         
      endif
      if(tmp.gt.1.000000001d0) then
         write(*,*) ' Error: upper bound lower than actual value',
     1        tmp,t
         call exit(1)
      endif
      if(rv.gt.tmp) then
         goto 1
      endif

      if(kn_masses(kn_emitter).eq.0) then
         if(rad_iupperfsr.eq.1) then
            write(*,*)'FIRST CHANGE PT2SOLVE for qed fsr if'
     +           //' rad_iupperfsr.eq.1'
            stop
c At this stage: pt generated according to (1) of upperbounding-fsr.pdf;
c generate csi uniformly in 1/csi
c in the range t/s < csi^2 < csimax^2
            rv=random()
            csi=exp(rv*log(t/s)/2+(1-rv)*log(kn_csimax))
c get y
            y=1-2*t/(s*csi**2)
c At this point a csi-y pair is generated according to the
c distribution upper(). It is automatically within range.
         elseif(rad_iupperfsr.eq.2) then
c     csi distributed uniformly in 1/(csi-t/s)
            rv=random()
            csi=1/(rv/(sqrt(t/s)-t/s)+(1-rv)/(kn_csimax-t/s))+t/s
c extra csi dependent factor
            if(random().gt.csi) goto 1
c get y
            y=1-2*t/(s*csi**2)
c At this point a csi-y pair is generated according to the
c distribution upper(). It is automatically within range,
c unless we have a massive emitter
         elseif(rad_iupperfsr.eq.3) then
            write(*,*)'FIRST CHANGE PT2SOLVE for qed fsr if'
     +           //' rad_iupperfsr.eq.3'
            stop
c     csi distributed uniformly in 1/(csi-t/s)
            rv=random()
            csi=1/(rv/(sqrt(t/s)-t/s)+(1-rv)/(kn_csimax-t/s))+t/s
c get y
            y=1-2*t/(s*csi**2)
            if(random().gt.(csi-t/s)) goto 1
         else
            write(*,*) ' gen_rad_fsr:  rad_iupper=',rad_iupperfsr,
     1           ' invalid'
         endif
      else
c massive emitter case
         rv=random()
         call gencsiymv(t,rv,csi,y)
c Now veto if we are out of range
         if(csi.gt.1) goto 1
      endif
c
c extra suppression factor of upper bounding function (may depend upon radiation variables)
      call uboundfct(ufct,csi,y)
      if(random().gt.ufct) goto 1
c Veto from upper bound to real value. Count how many vetoes,
c since these may be expensive.
c      write(*,*) ' genrad_fsr: y and csi ',y,csi
      call sigborn_rad(born)
      if(born.lt.0) then
         born=0
      endif
      if(born.eq.0) then
c bizarre situation that may arise when the scale gets so low
c that some pdf vanish (typically heavy flavour pdf's)
         t=-1
         goto 3
      endif
      kn_y=y
      kn_csi=csi
      kn_azi=2*pi*random()
      ubound=born*pwhg_upperb_rad()*unorm*ufct
      call gen_real_phsp_fsr_rad
      call sigreal_rad(sig)
      value=sig*kn_jacreal
      if(value.gt.ubound) then
         call increasecnt(
     # 'upper bound failures in generation of radiation')
      endif
      rvalue=random()*ubound
      if(rvalue.gt.value) then
         call increasecnt('vetoed radiation')
         goto 1
      endif
c.....mauro-kine
      mc_tmaxfsr=t
      mc_csifsr =kn_csi
      mc_yfsr   =kn_y
      mc_azifsr =kn_azi
c.....mauro-kine
      end


      subroutine add_azimuth
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h'
      include 'pwhg_kn.h'
      integer ileg
      real * 8 azi,sazi,cazi
      real * 8 dir(3)
      data dir/0d0,0d0,1d0/
      real * 8 random
      external random
      azi=2d0*pi*random()
      sazi = sin(azi)
      cazi = cos(azi)
      if (kn_csi.eq.0d0) then
         do ileg=1, nlegborn
            call mrotate(dir,sazi,cazi,kn_pborn(1,ileg))
         enddo
      else
         do ileg=1, nlegreal
            call mrotate(dir,sazi,cazi,kn_preal(1,ileg))
         enddo
      endif
      end
      
      
