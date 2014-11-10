      subroutine bornzerodamp(alr,r0,rc,rs,rcs,dampfac)
c given the R_alpha region (i.e. the alr) and the associated
c real contribution r (without pdf factor),
c returns in dampfac the damping factor to be applied to
c the real contribution to implement Born zero suppression
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      include 'pwhg_math.h'
      integer alr
      real * 8 r0,rc,rs,rcs,rapp,dampfac,h,pwhg_pt2,pt2,powheginput
      logical ini
      data ini/.true./
      integer otherdamp
      save ini,h,otherdamp
      external pwhg_pt2,powheginput
      if(ini) then
         otherdamp = powheginput("#otherdamp")
         if(otherdamp.eq.1) then
            write(*,*) ' using damp function from local file'
            goto 9
         elseif(otherdamp.eq.2) then
            write(*,*) ' using damp function involving rcs'
            goto 9
         endif
         h=powheginput("#hdamp")
         if(h.lt.0) then
            h=powheginput("#hfact")
            if(h.gt.0) then
               write(*,*)'***************************************'
               write(*,*)' Warning: hfact is here for backward'
               write(*,*)' compatibility with older inplementations'
               write(*,*)' New implementations will use hdamp and'
               write(*,*)' bornzerodamp independently.'
               write(*,*)'***************************************'
            endif
         endif
         if(h.gt.0) then
            write(*,*)'***************************************'
            write(*,*)' Using a damping factor h**2/(pt2+h**2)'
            write(*,*)' to separate real contributions between'
            write(*,*)' Sudakov and remnants    h=',h,' GeV   ' 
            write(*,*)'***************************************'
         endif
 9       continue
         ini=.false.
      endif
      if(otherdamp.eq.1) then
         call bornzerodamplocal(alr,r0,rc,rs,dampfac)
         return
      endif
c local variables
      if(h.gt.0) then
         pt2=pwhg_pt2()
         dampfac=h**2/(pt2+h**2)
      else
         dampfac=1
      endif

      if(flg_bornzerodamp) then
         if(otherdamp.eq.2) then
            rapp = rc+rs-rcs
            dampfac= min(1d0,rapp/r0)
            dampfac = max(dampfac,0d0)
         elseif(r0.gt.5*rc.and.r0.gt.5*rs) then
            dampfac=0
         endif
      endif
c      write(*,*) ' bornzerodamp: r0=',r0,'  rc=',rc,'  rs=',rs,
c     # ' dampfac=',dampfac
      end


      subroutine bornzerodamplocal(alr,r0,rc,rs,dampfac)
c given the R_alpha region (i.e. the alr) and the associated
c real contribution r (without pdf factor),
c returns in dampfac the damping factor to be applied to
c the real contribution to implement Born zero suppression
      implicit none
      include 'pwhg_flg.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      integer alr
      real * 8 r0,rc,rs,dampfac
      real * 8 ptsq,omcth
      integer em
      real * 8 dotp
      external dotp
      em = flst_emitter(alr)
c In case of photon emission, we need to damp the region where the
      if(flg_withdamp) then

         if(em.lt.3) then
            ptsq = kn_preal(1,5)**2+kn_preal(2,5)**2
         else
            ptsq = 2*dotp(kn_preal(0,em),kn_preal(0,5))+kn_masses(em)**2
         endif

         if(flst_uborn(1,alr)*flst_uborn(3,alr).gt.0) then
c The incoming parton has the same sign as the outgoing lepton
            omcth = dotp(kn_cmpborn(:,1),kn_cmpborn(:,4))
         else
            omcth = dotp(kn_cmpborn(:,1),kn_cmpborn(:,3))
         endif

         dampfac=omcth/(ptsq+omcth)

      else
         dampfac=1
      endif
      end
