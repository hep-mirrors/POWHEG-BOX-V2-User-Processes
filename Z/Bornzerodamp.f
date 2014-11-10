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
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      integer otherdamp,alr,rflav(5)
      real * 8 r0,rc,rs,dampfac,amp,ppp(0:3,5)
      real * 8 ptsq,omcth
      integer em
      real * 8 dotp
      external dotp
      em = flst_emitter(alr)

      if(otherdamp.eq.1) then
         rflav = flst_alr(:,alr)
         ppp = kn_cmpreal
         call ampZj(ppp,rflav,amp)
         amp = amp * st_alpha/(2*pi)/(8*ppp(0,1)*ppp(0,2))
     1        *(1-kn_y**2)*kn_csi**2
c      if(abs(amp/r0-1).gt.1d-5) then
c         write(*,*) ' Bornzerodamp: problem,  amp/r0: ', 
c     1        amp/r0,' flav:',rflav
c      endif
         dampfac=amp/r0
         if(dampfac.gt.1) then
c            write(*,*) ' Warning: dampfac > 1', dampfac, ' reset to 1'
            dampfac = 1
         endif
      else
         write(*,*) ' Bornzerodamplocal: invalid otherdamp=',otherdamp
         call exit(-1)
      endif
      end



      subroutine ampZj(p,flav,amp)
      implicit none
      real*8 dotp
      external dotp
      include 'pwhg_math.h'
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      integer i,flav(5)
      real *8 p(0:3,5),pp(0:3,5),pCS(0:3,5),q(0:3),qCS(0:3),amp
      real *8 p12,p14,p15,p24,p25,p45,q2,qz,qt,q0,E,t0,colfac,couplz
      real *8 phi,sth,cth,sph,cph,c2ph,opcth2,a0th,SGN,prop_int
      real *8 s1,s2,s3,s4,s5,s6,s7,s8,s9,s10
      real *8 T3L,T3Q,chargeL,chargeQ,VL,AL,VH,AH,chhad,chlep,propZ
      real *8 sphi,cphi

      ph_cthw = sqrt(1-ph_sthw2)
      couplz = 1/(2*ph_sthw*ph_cthw)

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

c check that it is the same as UB angle
c      write(*,*) ' check CS:',kn_cmpborn(3,3)/kn_cmpborn(0,3)/cth


      sth = sqrt(1-cth**2)
      phi = atan2(pCS(2,3),pCS(1,3))
      sph = sin(phi)
      cph = cos(phi)

      c2ph   = cph**2-sph**2
      opcth2 = 1+cth**2
      a0th   = (1-3*cth**2)/2d0

c bypass Carlo
      
      sth = 0
      sph = 0
      cph = 0
      c2ph = 0
      a0th   = 0

c


      if (mod(abs(flav(3)),2).eq.1) then
         chargeL = -1
         T3L = -1d0/2d0
      elseif (mod(abs(flav(3)),2).eq.0) then
         chargeL = 0
         T3L = 1d0/2d0
      endif

      if (flav(5).eq.0) then
         if (mod(abs(flav(1)),2).eq.0) then
            chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
         elseif (mod(abs(flav(1)),2).eq.1) then
            chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
         endif
      else
         if (mod(abs(flav(5)),2).eq.0) then
            chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
         elseif (mod(abs(flav(5)),2).eq.1) then
            chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
         endif
      endif
      VL = T3L - 2*chargeL*ph_sthw2
      AL = -T3L
      VH = T3Q - 2*chargeQ*ph_sthw2
      AH = -T3Q
      chhad = -chargeQ
      chlep = -chargeL

      propZ = 1/((q2-ph_Zmass**2)**2 + ph_ZmZw**2)*couplz**4
      prop_int = 1/q2 * (q2-ph_Zmass2)/((q2-ph_Zmass2)**2+ph_ZmZw**2)*
     $     couplz**2


      if(flav(1).gt.0.and.flav(2).lt.0) then

      s3 = -16*qt*(E**2+q2)*SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2)
     #)*sqrt(q2)/(q2+qt**2)/(-E**4+2*E**2*qt**2-q2**2)*sth*cph*cth-32*qt
     #*q2**2*AL*AH*SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*(E**2+q
     #2)*(2*VH*VL*propZ+chhad*chlep*prop_int)/sqrt(q2+qt**2)/(-E**4+2*E*
     #*2*qt**2-q2**2)/(propZ*q2**2*VL**2*VH**2+propZ*q2**2*VH**2*AL**2+2
     #*chhad*chlep*prop_int*q2**2*VL*VH+q2**2*propZ*AH**2*VL**2+q2**2*pr
     #opZ*AH**2*AL**2+chlep**2*chhad**2)*sth*cph+8*qt**2/(q2+qt**2)*a0th
      s2 = s3+4*qt**2/(q2+qt**2)*c2ph*sth**2+32*sqrt(q2)**5*AL*AH*(2*VH*
     #VL*propZ+chhad*chlep*prop_int)/sqrt(q2+qt**2)/(propZ*q2**2*VL**2*V
     #H**2+propZ*q2**2*VH**2*AL**2+2*chhad*chlep*prop_int*q2**2*VL*VH+q2
     #**2*propZ*AH**2*VL**2+q2**2*propZ*AH**2*AL**2+chlep**2*chhad**2)*C
     #TH+8*opcth2
      s3 = (-E**4+2*E**2*qt**2-q2**2)*(propZ*q2**2*VL**2*VH**2+propZ*q2*
     #*2*VH**2*AL**2+2*chhad*chlep*prop_int*q2**2*VL*VH+q2**2*propZ*AH**
     #2*VL**2+q2**2*propZ*AH**2*AL**2+chlep**2*chhad**2)
      s1 = s2*s3
      s2 = 1/q2/(-q2+E*q0+E*qz)/E/(q0+qz-E)
      t0 = s1*s2

      elseif(flav(1).lt.0.and.flav(2).gt.0) then

      s3 = -16*qt*(E**2+q2)*SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2)
     #)*sqrt(q2)/(q2+qt**2)/(-E**4+2*E**2*qt**2-q2**2)*sth*cph*cth+32*qt
     #*q2**2*AL*AH*SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*(E**2+q
     #2)*(2*VH*VL*propZ+chhad*chlep*prop_int)/sqrt(q2+qt**2)/(-E**4+2*E*
     #*2*qt**2-q2**2)/(propZ*q2**2*VL**2*VH**2+propZ*q2**2*VH**2*AL**2+2
     #*chhad*chlep*prop_int*q2**2*VL*VH+q2**2*propZ*AH**2*VL**2+q2**2*pr
     #opZ*AH**2*AL**2+chlep**2*chhad**2)*sth*cph+8*qt**2/(q2+qt**2)*a0th
      s2 = s3+4*qt**2/(q2+qt**2)*c2ph*sth**2-32*sqrt(q2)**5*AL*AH*(2*VH*
     #VL*propZ+chhad*chlep*prop_int)/sqrt(q2+qt**2)/(propZ*q2**2*VL**2*V
     #H**2+propZ*q2**2*VH**2*AL**2+2*chhad*chlep*prop_int*q2**2*VL*VH+q2
     #**2*propZ*AH**2*VL**2+q2**2*propZ*AH**2*AL**2+chlep**2*chhad**2)*C
     #TH+8*opcth2
      s3 = (-E**4+2*E**2*qt**2-q2**2)*(propZ*q2**2*VL**2*VH**2+propZ*q2*
     #*2*VH**2*AL**2+2*chhad*chlep*prop_int*q2**2*VL*VH+q2**2*propZ*AH**
     #2*VL**2+q2**2*propZ*AH**2*AL**2+chlep**2*chhad**2)
      s1 = s2*s3
      s2 = 1/q2/(-q2+E*q0+E*qz)/E/(q0+qz-E)
      t0 = s1*s2

      elseif(flav(1).eq.0.and.flav(2).lt.0) then

      s2 = 4
      s6 = 2*qt*(-3*SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-3
     #*SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2-E**4-q2**2+2*E**
     #2*qt**2)*sqrt(q2)/(q2+qt**2)/(2*E**2*qt**2+4*q2*E**2-3*q2**2-SGN*s
     #qrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-3*E**4-SGN*sqrt(-(-q
     #2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2)*sth*cph*cth
      s8 = 4*qt*q2**2*AL*AH*(2*E**2*qt**2+E**4-SGN*sqrt(-(-q2+2*qt*E+E**
     #2)*(q2+2*qt*E-E**2))*E**2-3*q2**2-SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+
     #2*qt*E-E**2))*q2)*(2*VH*VL*propZ+chhad*chlep*prop_int)/sqrt(q2+qt*
     #*2)/(propZ*q2**2*VL**2*VH**2+propZ*q2**2*VH**2*AL**2+2*chhad*chlep
     #*prop_int*q2**2*VL*VH+q2**2*propZ*AH**2*VL**2+q2**2*propZ*AH**2*AL
     #**2+chlep**2*chhad**2)/(2*E**2*qt**2+4*q2*E**2-3*q2**2-SGN*sqrt(-(
     #-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-3*E**4-SGN*sqrt(-(-q2+2*qt
     #*E+E**2)*(q2+2*qt*E-E**2))*q2)*sth*cph
      s9 = qt**2*(-4*q2*E**2-3*E**4+2*E**2*qt**2-SGN*sqrt(-(-q2+2*qt*E+E
     #**2)*(q2+2*qt*E-E**2))*E**2-SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E
     #-E**2))*q2-3*q2**2)/(q2+qt**2)/(2*E**2*qt**2+4*q2*E**2-3*q2**2-SGN
     #*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-3*E**4-SGN*sqrt(-(
     #-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2)*a0th
      s7 = s8+s9
      s5 = s6+s7
      s6 = s5+qt**2*(-4*q2*E**2-3*E**4+2*E**2*qt**2-SGN*sqrt(-(-q2+2*qt*
     #E+E**2)*(q2+2*qt*E-E**2))*E**2-SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*q
     #t*E-E**2))*q2-3*q2**2)/(q2+qt**2)/(2*E**2*qt**2+4*q2*E**2-3*q2**2-
     #SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-3*E**4-SGN*sqrt
     #(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2)*c2ph*sth**2/2
      s4 = s6+4*sqrt(q2)**5*AL*AH*(2*E**2*qt**2-E**4+SGN*sqrt(-(-q2+2*qt
     #*E+E**2)*(q2+2*qt*E-E**2))*E**2-q2**2-3*SGN*sqrt(-(-q2+2*qt*E+E**2
     #)*(q2+2*qt*E-E**2))*q2)*(2*VH*VL*propZ+chhad*chlep*prop_int)/sqrt(
     #q2+qt**2)/(propZ*q2**2*VL**2*VH**2+propZ*q2**2*VH**2*AL**2+2*chhad
     #*chlep*prop_int*q2**2*VL*VH+q2**2*propZ*AH**2*VL**2+q2**2*propZ*AH
     #**2*AL**2+chlep**2*chhad**2)/(2*E**2*qt**2+4*q2*E**2-3*q2**2-SGN*s
     #qrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-3*E**4-SGN*sqrt(-(-q
     #2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2)*CTH+opcth2
      s5 = propZ*q2**2*VL**2*VH**2+propZ*q2**2*VH**2*AL**2+2*chhad*chlep
     #*prop_int*q2**2*VL*VH+q2**2*propZ*AH**2*VL**2+q2**2*propZ*AH**2*AL
     #**2+chlep**2*chhad**2
      s3 = s4*s5
      s1 = s2*s3
      s2 = (2*E**2*qt**2+4*q2*E**2-3*q2**2-SGN*sqrt(-(-q2+2*qt*E+E**2)*(
     #q2+2*qt*E-E**2))*E**2-3*E**4-SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*
     #E-E**2))*q2)/q2/E**2/(-q2+E*q0+E*qz)
      t0 = s1*s2

      elseif(flav(1).gt.0.and.flav(2).eq.0) then

      s2 = -4
      s6 = -2*qt*(-E**4-q2**2+3*SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E
     #**2))*E**2+3*SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2+2*E*
     #*2*qt**2)/(q2+qt**2)*sqrt(q2)/(2*E**2*qt**2-3*E**4+SGN*sqrt(-(-q2+
     #2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+
     #2*qt*E-E**2))*E**2-3*q2**2+4*q2*E**2)*sth*cph*cth
      s8 = -4*qt*q2**2*AL*AH*(E**4-3*q2**2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(
     #q2+2*qt*E-E**2))*q2+2*E**2*qt**2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2
     #*qt*E-E**2))*E**2)*(2*VH*VL*propZ+chhad*chlep*prop_int)/sqrt(q2+qt
     #**2)/(propZ*q2**2*VL**2*VH**2+propZ*q2**2*VH**2*AL**2+2*chhad*chle
     #p*prop_int*q2**2*VL*VH+q2**2*propZ*AH**2*VL**2+q2**2*propZ*AH**2*A
     #L**2+chlep**2*chhad**2)/(2*E**2*qt**2-3*E**4+SGN*sqrt(-(-q2+2*qt*E
     #+E**2)*(q2+2*qt*E-E**2))*q2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E
     #-E**2))*E**2-3*q2**2+4*q2*E**2)*sth*cph
      s9 = qt**2*(-3*E**4+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*
     #q2-3*q2**2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-4*q2
     #*E**2+2*E**2*qt**2)/(q2+qt**2)/(2*E**2*qt**2-3*E**4+SGN*sqrt(-(-q2
     #+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2
     #+2*qt*E-E**2))*E**2-3*q2**2+4*q2*E**2)*a0th
      s7 = s8+s9
      s5 = s6+s7
      s6 = s5+qt**2*(-3*E**4+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2
     #))*q2-3*q2**2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-4
     #*q2*E**2+2*E**2*qt**2)/(q2+qt**2)/(2*E**2*qt**2-3*E**4+SGN*sqrt(-(
     #-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2+SGN*sqrt(-(-q2+2*qt*E+E**2)*
     #(q2+2*qt*E-E**2))*E**2-3*q2**2+4*q2*E**2)*c2ph*sth**2/2
      s4 = s6+4*sqrt(q2)**5*AL*AH*(-E**4-q2**2+3*SGN*sqrt(-(-q2+2*qt*E+E
     #**2)*(q2+2*qt*E-E**2))*q2+2*E**2*qt**2-SGN*sqrt(-(-q2+2*qt*E+E**2)
     #*(q2+2*qt*E-E**2))*E**2)*(2*VH*VL*propZ+chhad*chlep*prop_int)/sqrt
     #(q2+qt**2)/(propZ*q2**2*VL**2*VH**2+propZ*q2**2*VH**2*AL**2+2*chha
     #d*chlep*prop_int*q2**2*VL*VH+q2**2*propZ*AH**2*VL**2+q2**2*propZ*A
     #H**2*AL**2+chlep**2*chhad**2)/(2*E**2*qt**2-3*E**4+SGN*sqrt(-(-q2+
     #2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+
     #2*qt*E-E**2))*E**2-3*q2**2+4*q2*E**2)*CTH+opcth2
      s5 = propZ*q2**2*VL**2*VH**2+propZ*q2**2*VH**2*AL**2+2*chhad*chlep
     #*prop_int*q2**2*VL*VH+q2**2*propZ*AH**2*VL**2+q2**2*propZ*AH**2*AL
     #**2+chlep**2*chhad**2
      s3 = s4*s5
      s1 = s2*s3
      s2 = (2*E**2*qt**2-3*E**4+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E
     #**2))*q2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-3*q2**
     #2+4*q2*E**2)/q2/E**3/(q0+qz-E)
      t0 = s1*s2

      elseif(flav(1).eq.0.and.flav(2).gt.0) then

      s2 = 4
      s6 = 2*qt*(-3*SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-3
     #*SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2-E**4-q2**2+2*E**
     #2*qt**2)*sqrt(q2)/(q2+qt**2)/(2*E**2*qt**2+4*q2*E**2-3*q2**2-SGN*s
     #qrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-3*E**4-SGN*sqrt(-(-q
     #2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2)*sth*cph*cth
      s8 = -4*qt*q2**2*AL*AH*(2*E**2*qt**2+E**4-SGN*sqrt(-(-q2+2*qt*E+E*
     #*2)*(q2+2*qt*E-E**2))*E**2-3*q2**2-SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2
     #+2*qt*E-E**2))*q2)*(2*VH*VL*propZ+chhad*chlep*prop_int)/sqrt(q2+qt
     #**2)/(propZ*q2**2*VL**2*VH**2+propZ*q2**2*VH**2*AL**2+2*chhad*chle
     #p*prop_int*q2**2*VL*VH+q2**2*propZ*AH**2*VL**2+q2**2*propZ*AH**2*A
     #L**2+chlep**2*chhad**2)/(2*E**2*qt**2+4*q2*E**2-3*q2**2-SGN*sqrt(-
     #(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-3*E**4-SGN*sqrt(-(-q2+2*q
     #t*E+E**2)*(q2+2*qt*E-E**2))*q2)*sth*cph
      s9 = qt**2*(-4*q2*E**2-3*E**4+2*E**2*qt**2-SGN*sqrt(-(-q2+2*qt*E+E
     #**2)*(q2+2*qt*E-E**2))*E**2-SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E
     #-E**2))*q2-3*q2**2)/(q2+qt**2)/(2*E**2*qt**2+4*q2*E**2-3*q2**2-SGN
     #*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-3*E**4-SGN*sqrt(-(
     #-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2)*a0th
      s7 = s8+s9
      s5 = s6+s7
      s6 = s5+qt**2*(-4*q2*E**2-3*E**4+2*E**2*qt**2-SGN*sqrt(-(-q2+2*qt*
     #E+E**2)*(q2+2*qt*E-E**2))*E**2-SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*q
     #t*E-E**2))*q2-3*q2**2)/(q2+qt**2)/(2*E**2*qt**2+4*q2*E**2-3*q2**2-
     #SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-3*E**4-SGN*sqrt
     #(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2)*c2ph*sth**2/2
      s4 = s6-4*sqrt(q2)**5*AL*AH*(2*E**2*qt**2-E**4+SGN*sqrt(-(-q2+2*qt
     #*E+E**2)*(q2+2*qt*E-E**2))*E**2-q2**2-3*SGN*sqrt(-(-q2+2*qt*E+E**2
     #)*(q2+2*qt*E-E**2))*q2)*(2*VH*VL*propZ+chhad*chlep*prop_int)/sqrt(
     #q2+qt**2)/(propZ*q2**2*VL**2*VH**2+propZ*q2**2*VH**2*AL**2+2*chhad
     #*chlep*prop_int*q2**2*VL*VH+q2**2*propZ*AH**2*VL**2+q2**2*propZ*AH
     #**2*AL**2+chlep**2*chhad**2)/(2*E**2*qt**2+4*q2*E**2-3*q2**2-SGN*s
     #qrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-3*E**4-SGN*sqrt(-(-q
     #2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2)*CTH+opcth2
      s5 = propZ*q2**2*VL**2*VH**2+propZ*q2**2*VH**2*AL**2+2*chhad*chlep
     #*prop_int*q2**2*VL*VH+q2**2*propZ*AH**2*VL**2+q2**2*propZ*AH**2*AL
     #**2+chlep**2*chhad**2
      s3 = s4*s5
      s1 = s2*s3
      s2 = (2*E**2*qt**2+4*q2*E**2-3*q2**2-SGN*sqrt(-(-q2+2*qt*E+E**2)*(
     #q2+2*qt*E-E**2))*E**2-3*E**4-SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*
     #E-E**2))*q2)/q2/E**2/(-q2+E*q0+E*qz)
      t0 = s1*s2

      elseif(flav(1).lt.0.and.flav(2).eq.0) then

      s2 = -4
      s6 = -2*qt*(-E**4-q2**2+3*SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E
     #**2))*E**2+3*SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2+2*E*
     #*2*qt**2)/(q2+qt**2)*sqrt(q2)/(2*E**2*qt**2-3*E**4+SGN*sqrt(-(-q2+
     #2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+
     #2*qt*E-E**2))*E**2-3*q2**2+4*q2*E**2)*sth*cph*cth
      s8 = 4*qt*q2**2*AL*AH*(E**4-3*q2**2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q
     #2+2*qt*E-E**2))*q2+2*E**2*qt**2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*
     #qt*E-E**2))*E**2)*(2*VH*VL*propZ+chhad*chlep*prop_int)/sqrt(q2+qt*
     #*2)/(propZ*q2**2*VL**2*VH**2+propZ*q2**2*VH**2*AL**2+2*chhad*chlep
     #*prop_int*q2**2*VL*VH+q2**2*propZ*AH**2*VL**2+q2**2*propZ*AH**2*AL
     #**2+chlep**2*chhad**2)/(2*E**2*qt**2-3*E**4+SGN*sqrt(-(-q2+2*qt*E+
     #E**2)*(q2+2*qt*E-E**2))*q2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-
     #E**2))*E**2-3*q2**2+4*q2*E**2)*sth*cph
      s9 = qt**2*(-3*E**4+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*
     #q2-3*q2**2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-4*q2
     #*E**2+2*E**2*qt**2)/(q2+qt**2)/(2*E**2*qt**2-3*E**4+SGN*sqrt(-(-q2
     #+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2
     #+2*qt*E-E**2))*E**2-3*q2**2+4*q2*E**2)*a0th
      s7 = s8+s9
      s5 = s6+s7
      s6 = s5+qt**2*(-3*E**4+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2
     #))*q2-3*q2**2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-4
     #*q2*E**2+2*E**2*qt**2)/(q2+qt**2)/(2*E**2*qt**2-3*E**4+SGN*sqrt(-(
     #-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2+SGN*sqrt(-(-q2+2*qt*E+E**2)*
     #(q2+2*qt*E-E**2))*E**2-3*q2**2+4*q2*E**2)*c2ph*sth**2/2
      s4 = s6-4*sqrt(q2)**5*AL*AH*(-E**4-q2**2+3*SGN*sqrt(-(-q2+2*qt*E+E
     #**2)*(q2+2*qt*E-E**2))*q2+2*E**2*qt**2-SGN*sqrt(-(-q2+2*qt*E+E**2)
     #*(q2+2*qt*E-E**2))*E**2)*(2*VH*VL*propZ+chhad*chlep*prop_int)/sqrt
     #(q2+qt**2)/(propZ*q2**2*VL**2*VH**2+propZ*q2**2*VH**2*AL**2+2*chha
     #d*chlep*prop_int*q2**2*VL*VH+q2**2*propZ*AH**2*VL**2+q2**2*propZ*A
     #H**2*AL**2+chlep**2*chhad**2)/(2*E**2*qt**2-3*E**4+SGN*sqrt(-(-q2+
     #2*qt*E+E**2)*(q2+2*qt*E-E**2))*q2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+
     #2*qt*E-E**2))*E**2-3*q2**2+4*q2*E**2)*CTH+opcth2
      s5 = propZ*q2**2*VL**2*VH**2+propZ*q2**2*VH**2*AL**2+2*chhad*chlep
     #*prop_int*q2**2*VL*VH+q2**2*propZ*AH**2*VL**2+q2**2*propZ*AH**2*AL
     #**2+chlep**2*chhad**2
      s3 = s4*s5
      s1 = s2*s3
      s2 = (2*E**2*qt**2-3*E**4+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E
     #**2))*q2+SGN*sqrt(-(-q2+2*qt*E+E**2)*(q2+2*qt*E-E**2))*E**2-3*q2**
     #2+4*q2*E**2)/q2/E**3/(q0+qz-E)
      t0 = s1*s2
      endif

c     COLOUR FACTORS, QUARK-GLUON SWITCH AND CKM MATRIX
c     colour factors: CF*n from sum over initial colours, 1/4 from
c     average over initial spins, 1/n from average over quark colours
c     and 1/(n^2-1) from average over gluon colours
      if(flav(5).ne.0) then
         amp=-1d0   !quark-gluon switch
         colfac=CF*nc/4d0/nc/(nc**2-1d0)
      else
         amp=1d0    !no quark-gluon switch
         colfac=CF*nc/4d0/nc**2
      endif

      amp=amp*colfac*(4*pi*st_alpha)*ph_unit_e**4*t0
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


