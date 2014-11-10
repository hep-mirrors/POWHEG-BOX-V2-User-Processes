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
      if(otherdamp.eq.1.or.otherdamp.eq.3) then
         call bornzerodamplocal(otherdamp,alr,r0,rc,rs,dampfac)
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


      subroutine bornzerodamplocal(otherdamp,alr,r0,rc,rs,dampfac)
c given the R_alpha region (i.e. the alr) and the associated
c real contribution r (without pdf factor),
c returns in dampfac the damping factor to be applied to
c the real contribution to implement Born zero suppression
      implicit none
      include 'pwhg_flg.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      integer otherdamp,alr
      real * 8 r0,rc,rs,dampfac,amp,ppp(0:3,5)
      real * 8 ptsq,omcth
      integer em
      real * 8 dotp
      external dotp
      em = flst_emitter(alr)
c In case of photon emission, we need to damp the region where the
      if(otherdamp.eq.1) then

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

      elseif(otherdamp.eq.3) then
         rflav = flst_alr(:,alr)
         ppp = kn_cmpreal
         call ampWj(ppp,rflav,amp)
         dampfac=amp/r0
      endif
      end


      subroutine ampWj(p,flav,amp)
      implicit none
      real*8 dotp
      external dotp
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      include 'pwhg_st.h'
      real *8 p(0:3,5),pp(0:3,5),pCS(0:3,5),q(0:3),qCS(0:3),amp
      integer flav(5),i,j
      real *8 p12,p14,p15,p24,p25,p45,q2,E,qt,qz,q0,t0,gw,colfac
      real *8 phi,sth,cth,sph,cph,c2ph,opcth2,a0th,SGN
      real *8 s1,s2,s3,s4,s5,s6,s7,s8,s9,s10
      real * 8 sphi,cphi

      gw=ph_unit_e/ph_sthw
c     the gluon must have transverse momentum aligned along the -x axis
      pp=p
      phi = pi - atan2(p(2,5),p(1,5))
      cphi = cos(phi)
      sphi = sin(phi)
      do i=3,5
         pp(1,i) = cphi*p(1,i)-sphi*p(2,i)
         pp(2,i) = sphi*p(1,i)+cphi*p(2,i)
      enddo

      q = pp(:,3) + pp(:,4)
      qz = q(3)
      SGN = sign(1d0,qz)
      qt = sqrt(q(1)**2+q(2)**2)
      q0 = q(0)

      call CollinsSoper_frame(pp,pCS)

      qCS = pCS(:,3) + pCS(:,4)
      p12=dotp(pCS(:,1),pCS(:,2))
c      p14=dotp(pCS(:,1),pCS(:,3))
c      p15=dotp(pCS(:,1),pCS(:,4))
c      p24=dotp(pCS(:,2),pCS(:,3))
c      p25=dotp(pCS(:,2),pCS(:,4))
c      p45=dotp(pCS(:,3),pCS(:,4))
      q2=dotp(qCS,qCS)
      E = sqrt(2*p12)

      cth = pCS(3,3)/pCS(0,3)
      sth = sqrt(1-cth**2)
      phi = atan2(pCS(2,3),pCS(1,3))
      sph = sin(phi)
      cph = cos(phi)

      c2ph   = cph**2-sph**2
      opcth2 = 1+cth**2
      a0th   = (1-3*cth**2)/2d0

c Bypass Carlo:

      sth = 0
      sph = 0
      cph = 0
      c2ph = 0
      a0th = 0


      if(flav(3).gt.0) then
      if(flav(1).gt.0.and.flav(2).lt.0) then

      t0 = -32*(2*qt*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))*(E**2+q
     #2)/sqrt(q2+qt**2)/(E**4+q2**2-2*E**2*qt**2)*sth*cph+2*qt*sqrt(q2)*
     #(E**2+q2)*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))/(q2+qt**2)/(
     #E**4+q2**2-2*E**2*qt**2)*sth*cph*cth+2*sqrt(q2)/sqrt(q2+qt**2)*CTH
     #+opcth2+qt**2/(q2+qt**2)*c2ph*sth**2/2+qt**2/(q2+qt**2)*a0th)*(E**
     #4+q2**2-2*E**2*qt**2)*q2/(q2**2-2*q2*ph_Wmass**2+ph_Wmass**4+ph_Wm
     #Ww**2)/(q2-E*q0-E*qz)/E/(E-q0-qz)

      elseif(flav(1).lt.0.and.flav(2).gt.0) then

      t0 = -32*(-2*qt*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))*(E**2+
     #q2)/sqrt(q2+qt**2)/(E**4+q2**2-2*E**2*qt**2)*sth*cph+2*qt*sqrt(q2)
     #*(E**2+q2)*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))/(q2+qt**2)/
     #(E**4+q2**2-2*E**2*qt**2)*sth*cph*cth-2*sqrt(q2)/sqrt(q2+qt**2)*CT
     #H+opcth2+qt**2/(q2+qt**2)*c2ph*sth**2/2+qt**2/(q2+qt**2)*a0th)*(E*
     #*4+q2**2-2*E**2*qt**2)*q2/(q2**2-2*q2*ph_Wmass**2+ph_Wmass**4+ph_W
     #mWw**2)/(q2-E*q0-E*qz)/E/(E-q0-qz)

      elseif(flav(1).eq.0.and.flav(2).lt.0) then

      s2 = 16
      s6 = 2*qt*(-E**4+3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2
     #*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2*E**2*qt**
     #2)/sqrt(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*E*qt)*
     #(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2-2*E*q
     #t)*(q2-E**2+2*E*qt)))*sth*cph
      s8 = 2*sqrt(q2)*qt*(E**4+q2**2+3*E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q
     #2-E**2+2*E*qt))+3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2
     #*E**2*qt**2)/(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*
     #E*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2
     #-2*E*qt)*(q2-E**2+2*E*qt)))*sth*cph*cth
      s9 = 2*sqrt(q2)*(E**4+q2**2-E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**
     #2+2*E*qt))+3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2*E**2
     #*qt**2)/sqrt(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*E
     #*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2-
     #2*E*qt)*(q2-E**2+2*E*qt)))*CTH
      s7 = s8+s9
      s5 = s6+s7
      s6 = s5+opcth2
      s7 = s6
      s9 = qt**2*(3*E**4+4*E**2*q2+3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*qt
     #)*(q2-E**2+2*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))
     #-2*E**2*qt**2)/(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-
     #2*E*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E*
     #*2-2*E*qt)*(q2-E**2+2*E*qt)))*c2ph*sth**2/2
      s10 = qt**2*(3*E**4+4*E**2*q2+3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*q
     #t)*(q2-E**2+2*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt)
     #)-2*E**2*qt**2)/(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2
     #-2*E*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E
     #**2-2*E*qt)*(q2-E**2+2*E*qt)))*a0th
      s8 = s9+s10
      s4 = s7+s8
      s5 = 3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*q
     #t))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*
     #E*qt))
      s3 = s4*s5
      s1 = s2*s3
      s2 = q2/(q2**2-2*q2*ph_Wmass**2+ph_Wmass**4+ph_WmWw**2)/E**2/(q2-E
     #*q0-E*qz)
      t0 = s1*s2

      elseif(flav(1).gt.0.and.flav(2).eq.0) then

      s2 = 16
      s6 = -2*qt*(-3*q2**2+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt)
     #)+E**4+E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))+2*E**2*qt*
     #*2)/sqrt(q2+qt**2)/(-3*q2**2+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2
     #+2*E*qt))+4*E**2*q2+2*E**2*qt**2-3*E**4+E**2*SGN*sqrt((q2-E**2-2*E
     #*qt)*(q2-E**2+2*E*qt)))*sth*cph
      s8 = -2*sqrt(q2)*qt*(-E**4-q2**2+3*E**2*SGN*sqrt((q2-E**2-2*E*qt)*
     #(q2-E**2+2*E*qt))+3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))
     #+2*E**2*qt**2)/(q2+qt**2)/(-3*q2**2+q2*SGN*sqrt((q2-E**2-2*E*qt)*(
     #q2-E**2+2*E*qt))+4*E**2*q2+2*E**2*qt**2-3*E**4+E**2*SGN*sqrt((q2-E
     #**2-2*E*qt)*(q2-E**2+2*E*qt)))*sth*cph*cth
      s9 = 2*sqrt(q2)*(-q2**2+3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*
     #E*qt))-E**4-E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))+2*E**
     #2*qt**2)/sqrt(q2+qt**2)/(-3*q2**2+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2
     #-E**2+2*E*qt))+4*E**2*q2+2*E**2*qt**2-3*E**4+E**2*SGN*sqrt((q2-E**
     #2-2*E*qt)*(q2-E**2+2*E*qt)))*CTH
      s7 = s8+s9
      s5 = s6+s7
      s6 = s5+opcth2
      s7 = s6
      s9 = qt**2*(-3*E**4-4*E**2*q2-3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*q
     #t)*(q2-E**2+2*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt)
     #)+2*E**2*qt**2)/(q2+qt**2)/(-3*q2**2+q2*SGN*sqrt((q2-E**2-2*E*qt)*
     #(q2-E**2+2*E*qt))+4*E**2*q2+2*E**2*qt**2-3*E**4+E**2*SGN*sqrt((q2-
     #E**2-2*E*qt)*(q2-E**2+2*E*qt)))*c2ph*sth**2/2
      s10 = qt**2*(-3*E**4-4*E**2*q2-3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*
     #qt)*(q2-E**2+2*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt
     #))+2*E**2*qt**2)/(q2+qt**2)/(-3*q2**2+q2*SGN*sqrt((q2-E**2-2*E*qt)
     #*(q2-E**2+2*E*qt))+4*E**2*q2+2*E**2*qt**2-3*E**4+E**2*SGN*sqrt((q2
     #-E**2-2*E*qt)*(q2-E**2+2*E*qt)))*a0th
      s8 = s9+s10
      s4 = s7+s8
      s5 = -3*q2**2+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))+4*E**
     #2*q2+2*E**2*qt**2-3*E**4+E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2
     #*E*qt))
      s3 = s4*s5
      s1 = s2*s3
      s2 = q2/(q2**2-2*q2*ph_Wmass**2+ph_Wmass**4+ph_WmWw**2)/E**3/(E-q0
     #-qz)
      t0 = s1*s2

      elseif(flav(1).eq.0.and.flav(2).gt.0) then

      s2 = 16
      s6 = -2*qt*(-E**4+3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+
     #2*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2*E**2*qt*
     #*2)/sqrt(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*E*qt)
     #*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2-2*E*
     #qt)*(q2-E**2+2*E*qt)))*sth*cph
      s8 = 2*sqrt(q2)*qt*(E**4+q2**2+3*E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q
     #2-E**2+2*E*qt))+3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2
     #*E**2*qt**2)/(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*
     #E*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2
     #-2*E*qt)*(q2-E**2+2*E*qt)))*sth*cph*cth
      s9 = -2*sqrt(q2)*(E**4+q2**2-E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E*
     #*2+2*E*qt))+3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2*E**
     #2*qt**2)/sqrt(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*
     #E*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2
     #-2*E*qt)*(q2-E**2+2*E*qt)))*CTH
      s7 = s8+s9
      s5 = s6+s7
      s6 = s5+opcth2
      s7 = s6
      s9 = qt**2*(3*E**4+4*E**2*q2+3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*qt
     #)*(q2-E**2+2*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))
     #-2*E**2*qt**2)/(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-
     #2*E*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E*
     #*2-2*E*qt)*(q2-E**2+2*E*qt)))*c2ph*sth**2/2
      s10 = qt**2*(3*E**4+4*E**2*q2+3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*q
     #t)*(q2-E**2+2*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt)
     #)-2*E**2*qt**2)/(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2
     #-2*E*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E
     #**2-2*E*qt)*(q2-E**2+2*E*qt)))*a0th
      s8 = s9+s10
      s4 = s7+s8
      s5 = 3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*q
     #t))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*
     #E*qt))
      s3 = s4*s5
      s1 = s2*s3
      s2 = q2/(q2**2-2*q2*ph_Wmass**2+ph_Wmass**4+ph_WmWw**2)/E**2/(q2-E
     #*q0-E*qz)
      t0 = s1*s2

      elseif(flav(1).lt.0.and.flav(2).eq.0) then

      s2 = 16
      s6 = 2*qt*(-3*q2**2+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))
     #+E**4+E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))+2*E**2*qt**
     #2)/sqrt(q2+qt**2)/(-3*q2**2+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+
     #2*E*qt))+4*E**2*q2+2*E**2*qt**2-3*E**4+E**2*SGN*sqrt((q2-E**2-2*E*
     #qt)*(q2-E**2+2*E*qt)))*sth*cph
      s8 = -2*sqrt(q2)*qt*(-E**4-q2**2+3*E**2*SGN*sqrt((q2-E**2-2*E*qt)*
     #(q2-E**2+2*E*qt))+3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))
     #+2*E**2*qt**2)/(q2+qt**2)/(-3*q2**2+q2*SGN*sqrt((q2-E**2-2*E*qt)*(
     #q2-E**2+2*E*qt))+4*E**2*q2+2*E**2*qt**2-3*E**4+E**2*SGN*sqrt((q2-E
     #**2-2*E*qt)*(q2-E**2+2*E*qt)))*sth*cph*cth
      s9 = -2*sqrt(q2)*(-q2**2+3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2
     #*E*qt))-E**4-E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))+2*E*
     #*2*qt**2)/sqrt(q2+qt**2)/(-3*q2**2+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q
     #2-E**2+2*E*qt))+4*E**2*q2+2*E**2*qt**2-3*E**4+E**2*SGN*sqrt((q2-E*
     #*2-2*E*qt)*(q2-E**2+2*E*qt)))*CTH
      s7 = s8+s9
      s5 = s6+s7
      s6 = s5+opcth2
      s7 = s6
      s9 = qt**2*(-3*E**4-4*E**2*q2-3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*q
     #t)*(q2-E**2+2*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt)
     #)+2*E**2*qt**2)/(q2+qt**2)/(-3*q2**2+q2*SGN*sqrt((q2-E**2-2*E*qt)*
     #(q2-E**2+2*E*qt))+4*E**2*q2+2*E**2*qt**2-3*E**4+E**2*SGN*sqrt((q2-
     #E**2-2*E*qt)*(q2-E**2+2*E*qt)))*c2ph*sth**2/2
      s10 = qt**2*(-3*E**4-4*E**2*q2-3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*
     #qt)*(q2-E**2+2*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt
     #))+2*E**2*qt**2)/(q2+qt**2)/(-3*q2**2+q2*SGN*sqrt((q2-E**2-2*E*qt)
     #*(q2-E**2+2*E*qt))+4*E**2*q2+2*E**2*qt**2-3*E**4+E**2*SGN*sqrt((q2
     #-E**2-2*E*qt)*(q2-E**2+2*E*qt)))*a0th
      s8 = s9+s10
      s4 = s7+s8
      s5 = -3*q2**2+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))+4*E**
     #2*q2+2*E**2*qt**2-3*E**4+E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2
     #*E*qt))
      s3 = s4*s5
      s1 = s2*s3
      s2 = q2/(q2**2-2*q2*ph_Wmass**2+ph_Wmass**4+ph_WmWw**2)/E**3/(E-q0
     #-qz)
      t0 = s1*s2

      endif
      else
      if(flav(1).gt.0.and.flav(2).lt.0) then

      t0 = -32*(-2*qt*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))*(E**2+
     #q2)/sqrt(q2+qt**2)/(E**4+q2**2-2*E**2*qt**2)*sth*cph+2*qt*sqrt(q2)
     #*(E**2+q2)*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))/(q2+qt**2)/
     #(E**4+q2**2-2*E**2*qt**2)*sth*cph*cth-2*sqrt(q2)/sqrt(q2+qt**2)*CT
     #H+opcth2+qt**2/(q2+qt**2)*c2ph*sth**2/2+qt**2/(q2+qt**2)*a0th)*(E*
     #*4+q2**2-2*E**2*qt**2)*q2/(q2**2-2*q2*ph_Wmass**2+ph_Wmass**4+ph_W
     #mWw**2)/(q2-E*q0-E*qz)/E/(E-q0-qz)

      elseif(flav(1).lt.0.and.flav(2).gt.0) then

      t0 = -32*(2*qt*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))*(E**2+q
     #2)/sqrt(q2+qt**2)/(E**4+q2**2-2*E**2*qt**2)*sth*cph+2*qt*sqrt(q2)*
     #(E**2+q2)*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))/(q2+qt**2)/(
     #E**4+q2**2-2*E**2*qt**2)*sth*cph*cth+2*sqrt(q2)/sqrt(q2+qt**2)*CTH
     #+opcth2+qt**2/(q2+qt**2)*c2ph*sth**2/2+qt**2/(q2+qt**2)*a0th)*(E**
     #4+q2**2-2*E**2*qt**2)*q2/(q2**2-2*q2*ph_Wmass**2+ph_Wmass**4+ph_Wm
     #Ww**2)/(q2-E*q0-E*qz)/E/(E-q0-qz)

      elseif(flav(1).eq.0.and.flav(2).lt.0) then

      s2 = 16
      s6 = -2*qt*(-E**4+3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+
     #2*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2*E**2*qt*
     #*2)/sqrt(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*E*qt)
     #*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2-2*E*
     #qt)*(q2-E**2+2*E*qt)))*sth*cph
      s8 = 2*sqrt(q2)*qt*(E**4+q2**2+3*E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q
     #2-E**2+2*E*qt))+3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2
     #*E**2*qt**2)/(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*
     #E*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2
     #-2*E*qt)*(q2-E**2+2*E*qt)))*sth*cph*cth
      s9 = -2*sqrt(q2)*(E**4+q2**2-E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E*
     #*2+2*E*qt))+3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2*E**
     #2*qt**2)/sqrt(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*
     #E*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2
     #-2*E*qt)*(q2-E**2+2*E*qt)))*CTH
      s7 = s8+s9
      s5 = s6+s7
      s6 = s5+opcth2
      s7 = s6
      s9 = qt**2*(3*E**4+4*E**2*q2+3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*qt
     #)*(q2-E**2+2*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))
     #-2*E**2*qt**2)/(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-
     #2*E*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E*
     #*2-2*E*qt)*(q2-E**2+2*E*qt)))*c2ph*sth**2/2
      s10 = qt**2*(3*E**4+4*E**2*q2+3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*q
     #t)*(q2-E**2+2*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt)
     #)-2*E**2*qt**2)/(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2
     #-2*E*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E
     #**2-2*E*qt)*(q2-E**2+2*E*qt)))*a0th
      s8 = s9+s10
      s4 = s7+s8
      s5 = 3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*q
     #t))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*
     #E*qt))
      s3 = s4*s5
      s1 = s2*s3
      s2 = q2/(q2**2-2*q2*ph_Wmass**2+ph_Wmass**4+ph_WmWw**2)/E**2/(q2-E
     #*q0-E*qz)
      t0 = s1*s2

      elseif(flav(1).gt.0.and.flav(2).eq.0) then

      s2 = -16
      s6 = 2*qt*(-E**4+3*q2**2-E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2
     #*E*qt))-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2*E**2*qt**
     #2)/sqrt(q2+qt**2)/(3*q2**2-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2
     #*E*qt))-4*E**2*q2+3*E**4-2*E**2*qt**2-E**2*SGN*sqrt((q2-E**2-2*E*q
     #t)*(q2-E**2+2*E*qt)))*sth*cph
      s8 = -2*qt*sqrt(q2)*(E**4+q2**2-3*E**2*SGN*sqrt((q2-E**2-2*E*qt)*(
     #q2-E**2+2*E*qt))-3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-
     #2*E**2*qt**2)/(q2+qt**2)/(3*q2**2-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2
     #-E**2+2*E*qt))-4*E**2*q2+3*E**4-2*E**2*qt**2-E**2*SGN*sqrt((q2-E**
     #2-2*E*qt)*(q2-E**2+2*E*qt)))*sth*cph*cth
      s9 = -2*sqrt(q2)*(E**4+q2**2+E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E*
     #*2+2*E*qt))-3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2*E**
     #2*qt**2)/sqrt(q2+qt**2)/(3*q2**2-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-
     #E**2+2*E*qt))-4*E**2*q2+3*E**4-2*E**2*qt**2-E**2*SGN*sqrt((q2-E**2
     #-2*E*qt)*(q2-E**2+2*E*qt)))*CTH
      s7 = s8+s9
      s5 = s6+s7
      s6 = s5+opcth2
      s7 = s6
      s9 = qt**2*(3*E**4+4*E**2*q2+3*q2**2-E**2*SGN*sqrt((q2-E**2-2*E*qt
     #)*(q2-E**2+2*E*qt))-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))
     #-2*E**2*qt**2)/(q2+qt**2)/(3*q2**2-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q
     #2-E**2+2*E*qt))-4*E**2*q2+3*E**4-2*E**2*qt**2-E**2*SGN*sqrt((q2-E*
     #*2-2*E*qt)*(q2-E**2+2*E*qt)))*c2ph*sth**2/2
      s10 = qt**2*(3*E**4+4*E**2*q2+3*q2**2-E**2*SGN*sqrt((q2-E**2-2*E*q
     #t)*(q2-E**2+2*E*qt))-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt)
     #)-2*E**2*qt**2)/(q2+qt**2)/(3*q2**2-q2*SGN*sqrt((q2-E**2-2*E*qt)*(
     #q2-E**2+2*E*qt))-4*E**2*q2+3*E**4-2*E**2*qt**2-E**2*SGN*sqrt((q2-E
     #**2-2*E*qt)*(q2-E**2+2*E*qt)))*a0th
      s8 = s9+s10
      s4 = s7+s8
      s5 = 3*q2**2-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-4*E**2
     #*q2+3*E**4-2*E**2*qt**2-E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*
     #E*qt))
      s3 = s4*s5
      s1 = s2*s3
      s2 = q2/(q2**2-2*q2*ph_Wmass**2+ph_Wmass**4+ph_WmWw**2)/E**3/(E-q0
     #-qz)
      t0 = s1*s2

      elseif(flav(1).eq.0.and.flav(2).gt.0) then

      s2 = 16
      s6 = 2*qt*(-E**4+3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2
     #*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2*E**2*qt**
     #2)/sqrt(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*E*qt)*
     #(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2-2*E*q
     #t)*(q2-E**2+2*E*qt)))*sth*cph
      s8 = 2*sqrt(q2)*qt*(E**4+q2**2+3*E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q
     #2-E**2+2*E*qt))+3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2
     #*E**2*qt**2)/(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*
     #E*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2
     #-2*E*qt)*(q2-E**2+2*E*qt)))*sth*cph*cth
      s9 = 2*sqrt(q2)*(E**4+q2**2-E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**
     #2+2*E*qt))+3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2*E**2
     #*qt**2)/sqrt(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*E
     #*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2-
     #2*E*qt)*(q2-E**2+2*E*qt)))*CTH
      s7 = s8+s9
      s5 = s6+s7
      s6 = s5+opcth2
      s7 = s6
      s9 = qt**2*(3*E**4+4*E**2*q2+3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*qt
     #)*(q2-E**2+2*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))
     #-2*E**2*qt**2)/(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-
     #2*E*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E*
     #*2-2*E*qt)*(q2-E**2+2*E*qt)))*c2ph*sth**2/2
      s10 = qt**2*(3*E**4+4*E**2*q2+3*q2**2+E**2*SGN*sqrt((q2-E**2-2*E*q
     #t)*(q2-E**2+2*E*qt))+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt)
     #)-2*E**2*qt**2)/(q2+qt**2)/(3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2
     #-2*E*qt)*(q2-E**2+2*E*qt))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E
     #**2-2*E*qt)*(q2-E**2+2*E*qt)))*a0th
      s8 = s9+s10
      s4 = s7+s8
      s5 = 3*q2**2-4*E**2*q2+q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*q
     #t))+3*E**4-2*E**2*qt**2+E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*
     #E*qt))
      s3 = s4*s5
      s1 = s2*s3
      s2 = q2/(q2**2-2*q2*ph_Wmass**2+ph_Wmass**4+ph_WmWw**2)/E**2/(q2-E
     #*q0-E*qz)
      t0 = s1*s2

      elseif(flav(1).lt.0.and.flav(2).eq.0) then

      s2 = -16
      s6 = -2*qt*(-E**4+3*q2**2-E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+
     #2*E*qt))-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2*E**2*qt*
     #*2)/sqrt(q2+qt**2)/(3*q2**2-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+
     #2*E*qt))-4*E**2*q2+3*E**4-2*E**2*qt**2-E**2*SGN*sqrt((q2-E**2-2*E*
     #qt)*(q2-E**2+2*E*qt)))*sth*cph
      s8 = -2*qt*sqrt(q2)*(E**4+q2**2-3*E**2*SGN*sqrt((q2-E**2-2*E*qt)*(
     #q2-E**2+2*E*qt))-3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-
     #2*E**2*qt**2)/(q2+qt**2)/(3*q2**2-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2
     #-E**2+2*E*qt))-4*E**2*q2+3*E**4-2*E**2*qt**2-E**2*SGN*sqrt((q2-E**
     #2-2*E*qt)*(q2-E**2+2*E*qt)))*sth*cph*cth
      s9 = 2*sqrt(q2)*(E**4+q2**2+E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**
     #2+2*E*qt))-3*q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-2*E**2
     #*qt**2)/sqrt(q2+qt**2)/(3*q2**2-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E
     #**2+2*E*qt))-4*E**2*q2+3*E**4-2*E**2*qt**2-E**2*SGN*sqrt((q2-E**2-
     #2*E*qt)*(q2-E**2+2*E*qt)))*CTH
      s7 = s8+s9
      s5 = s6+s7
      s6 = s5+opcth2
      s7 = s6
      s9 = qt**2*(3*E**4+4*E**2*q2+3*q2**2-E**2*SGN*sqrt((q2-E**2-2*E*qt
     #)*(q2-E**2+2*E*qt))-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))
     #-2*E**2*qt**2)/(q2+qt**2)/(3*q2**2-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q
     #2-E**2+2*E*qt))-4*E**2*q2+3*E**4-2*E**2*qt**2-E**2*SGN*sqrt((q2-E*
     #*2-2*E*qt)*(q2-E**2+2*E*qt)))*c2ph*sth**2/2
      s10 = qt**2*(3*E**4+4*E**2*q2+3*q2**2-E**2*SGN*sqrt((q2-E**2-2*E*q
     #t)*(q2-E**2+2*E*qt))-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt)
     #)-2*E**2*qt**2)/(q2+qt**2)/(3*q2**2-q2*SGN*sqrt((q2-E**2-2*E*qt)*(
     #q2-E**2+2*E*qt))-4*E**2*q2+3*E**4-2*E**2*qt**2-E**2*SGN*sqrt((q2-E
     #**2-2*E*qt)*(q2-E**2+2*E*qt)))*a0th
      s8 = s9+s10
      s4 = s7+s8
      s5 = 3*q2**2-q2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*E*qt))-4*E**2
     #*q2+3*E**4-2*E**2*qt**2-E**2*SGN*sqrt((q2-E**2-2*E*qt)*(q2-E**2+2*
     #E*qt))
      s3 = s4*s5
      s1 = s2*s3
      s2 = q2/(q2**2-2*q2*ph_Wmass**2+ph_Wmass**4+ph_WmWw**2)/E**3/(E-q0
     #-qz)
      t0 = s1*s2

      endif
      endif

c     COLOUR FACTORS, QUARK-GLUON SWITCH AND CKM MATRIX
c     colour factors: CF*n from sum over initial colours, 1/4 from
c     average over initial spins, 1/n from average over quark colours
c     and 1/(n^2-1) from average over gluon colours
      if(flav(5).ne.0) then
         amp=-1d0   !quark-gluon switch
         colfac=CF*nc/4d0/nc/(nc**2-1d0)
         j=flav(5)
         if (flav(1).eq.0) then
            i=flav(2)
         else
            i=flav(1)
         endif
      else
         amp=1d0   !no quark-gluon switch
         colfac=CF*nc/4d0/nc**2
         i=flav(1)
         j=flav(2)
      endif
      if (mod(i,2).eq.0) then
         amp=amp*ph_CKM(abs(i)/2,(abs(j)+1)/2)**2
      else
         amp=amp*ph_CKM(abs(j)/2,(abs(i)+1)/2)**2
      endif

      amp=amp*colfac*(gw**2/8d0)**2*(4*pi*st_alpha)*t0
      amp=amp/(st_alpha/(2*pi))
      end


      subroutine CollinsSoper_frame(pin,pout)
      implicit none
      real* 8 dotp
      external dotp
      real * 8 pin(0:3,5),ptemp(0:3,5),pout(0:3,5),q(0:3),vec(3),beta,
     $     qt
      q = pin(:,3) + pin(:,4)
c     first transverse boost to obtain qz=0
      beta = -q(3)/q(0)
      vec(1) = 0
      vec(2) = 0
      vec(3) = 1
      call mboost(5,vec,beta,pin(0,1),ptemp(0,1))
      q = ptemp(:,3) + ptemp(:,4)
c     second longitudinal boost to obtain qt=0
      qt = sqrt(q(1)**2+q(2)**2)
      beta = -qt/q(0)
      if (qt.ne.0d0) then
         vec(1) = q(1)/qt
         vec(2) = q(2)/qt
         vec(3) = q(3)/qt
         call mboost(5,vec,beta,ptemp(0,1),pout(0,1))
      else
         pout=ptemp
      endif
      end


