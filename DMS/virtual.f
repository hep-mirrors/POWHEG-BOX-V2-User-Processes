c     returns 2 Re(M_B * M_V)/(as/(2pi)), 
c     where M_B is the Born amplitude and 
c     M_V is the finite part of the virtual amplitude
c     The as/(2pi) factor is attached at a later point
c     Use MCFM subroutines
      subroutine setvirtual(p,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      real * 8 p(0:3,nlegborn)
      integer vflav(nlegborn)
      real * 8 virtual
cccccccccccccccccccccc
c     !: mcfm crosscheck code to be removed
ccccccccccccccccccc
      !: new version
      include 'PhysPars.h'
      double precision k(0:3),kbar(0:3),p_f(0:3),p_af(0:3),
     $     ami,apl,mass2,beta,p34
      double precision pmassless(0:3,nlegborn)
      double precision pmcfmmassless(12,1:4)
      double precision virtualNEW,bornNEW,virtual_gpgm,born_gpgm
      character *2 mode
      integer ileg,hel_quark,hel_lep,hel_glu,mu
      double complex bornamp(-1:1,-3:3,-1:1),virtamp(-1:1,-3:3,-1:1)
      double complex bornamp_qL(-3:3,-1:1),bornamp_qR(-3:3,-1:1)
      double complex virtamp_qL(-3:3,-1:1),virtamp_qR(-3:3,-1:1)
      double complex prop34
      double precision dotp,helcol,subuv
      double precision born,bmunu(0:3,0:3)

cccccccccccccccccccccccccccccccccccccccccc
c     !: mcfm crosscheck code to be removed
ccccccccccccccccccccccccccccccccccccccccccccccccccccc

ccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     !: mcfm crosscheck code to be removed
ccccccccccccccccccccccccccccccccccccccccccccccccccccc

ccccccccccccccccccccccccccccccccccccccccccccccccccccc
c     !: here starts the new version
      call compborn(p,vflav,born,bmunu)
      mass2=dotp(p(0,3),p(0,3))
      p34=dotp(p(0,3),p(0,4))

c     massive->massless momenta
c     em -> p3 (fermion)
c     ep -> p4 (antifermion)
      beta=sqrt(1-4d0*mass2/2d0/(p34+mass2))
      apl=(1+beta)/2d0
      ami=(1-beta)/2d0
      do mu=0,3
         p_f(mu)=p(mu,3)
         p_af(mu)=p(mu,4)
         kbar(mu)=(ami*p_f(mu)-apl*p_af(mu))/(ami**2-apl**2)
         k(mu)=p_f(mu)+p_af(mu)-kbar(mu)
      enddo
      
      do ileg=1,nlegborn
         do mu=0,3
            pmassless(mu,ileg)=p(mu,ileg)
         enddo
      enddo
      do mu=0,3
         pmassless(mu,3)=k(mu)
         pmassless(mu,4)=kbar(mu)
      enddo
c     massless momenta in mcfm format
      call mom_to_MCFM(pmassless,pmcfmmassless)
c     scalar or pseudoscalar ?
      mode=phdm_mode

cccccccccccccccccccccccccccccccccccccccc
      if(phdm_efftheory.eq.'T') then
         prop34 = 1d0/phdm_LambdaUV**2
      else
         prop34 = 1d0/
     $        dcmplx(2*p34+2*mass2-phdm_phimass**2,phdm_phimass*phdm_phiwidth)
      endif
ccccccccccccccccccccccccccccccccccccccccc

c     compute all needed amplitudes
      bornamp_qL(:,:)=0d0
      bornamp_qR(:,:)=0d0
      virtamp_qL(:,:)=0d0
      virtamp_qR(:,:)=0d0

      if(vflav(1).gt.0.and.vflav(2).lt.0) then
c     q-qbar
         call BornHelicityAmplitudes(mode,1,2,3,4,5,pmcfmmassless,bornamp_qL)
         call VirtualHelicityAmplitudes(mode,1,2,3,4,5,st_muren2,pmcfmmassless,virtamp_qL)
      elseif(vflav(1).lt.0.and.vflav(2).gt.0) then
c     qbar-q
         call BornHelicityAmplitudes(mode,2,1,3,4,5,pmcfmmassless,bornamp_qL)
         call VirtualHelicityAmplitudes(mode,2,1,3,4,5,st_muren2,pmcfmmassless,virtamp_qL)
      elseif(vflav(1).gt.0.and.vflav(2).eq.0) then
c     q-g
         call BornHelicityAmplitudes(mode,1,5,3,4,2,pmcfmmassless,bornamp_qL)
         call VirtualHelicityAmplitudes(mode,1,5,3,4,2,st_muren2,pmcfmmassless,virtamp_qL)
      elseif(vflav(1).lt.0.and.vflav(2).eq.0) then
c     qbar-g
         call BornHelicityAmplitudes(mode,5,1,3,4,2,pmcfmmassless,bornamp_qL)
         call VirtualHelicityAmplitudes(mode,5,1,3,4,2,st_muren2,pmcfmmassless,virtamp_qL)
      elseif(vflav(1).eq.0.and.vflav(2).lt.0) then
c     g-qbar
         call BornHelicityAmplitudes(mode,5,2,3,4,1,pmcfmmassless,bornamp_qL)
         call VirtualHelicityAmplitudes(mode,5,2,3,4,1,st_muren2,pmcfmmassless,virtamp_qL)
      elseif(vflav(1).eq.0.and.vflav(2).gt.0) then
c     g-q
         call BornHelicityAmplitudes(mode,2,5,3,4,1,pmcfmmassless,bornamp_qL)
         call VirtualHelicityAmplitudes(mode,2,5,3,4,1,st_muren2,pmcfmmassless,virtamp_qL)
      else
         write(*,*) 'Wrong flavour assignment in setvirtual'
         call exit(-1)
      endif

      bornamp(-1,:,:)=bornamp_qL(:,:)*prop34
      bornamp(+1,:,+1)=bornamp_qL(:,-1)*prop34
      bornamp(+1,:,-1)=bornamp_qL(:,+1)*prop34

      virtamp(-1,:,:)=virtamp_qL(:,:)*prop34
      virtamp(+1,:,+1)=virtamp_qL(:,-1)*prop34
      virtamp(+1,:,-1)=virtamp_qL(:,+1)*prop34

c     Finite renormalization term, needed to
c     -1. go to MS bar scheme
c     -2. convert finite part from DR to CDR
c     subuv*born has to be SUBTRACTED from the finite part
c     1st term: as_dr -> as_msbar
c     2nd term: DR -> CDR
c      subuv=-as/twopi*(
c     $     + xn/6.
c     $     - 2*cf/2. - ca/6.)
c     Here we don't want the extra alfas/twopi
c     (the genuine NLO coupling), since it'll be included
c     at a later point in the POWHEG general files, 
c     so we don't include it in subuv either.
      subuv=-(
     $     + nc/6.
     $     - 2*cf/2. - ca/6.)
c$$$c      subuv=-nc/6. !:xxxxxxxx (to check with mcfm)

c     now all helicity amplitudes are available
      virtualNEW=0d0
      bornNEW=0d0
      do hel_quark=-1,1,2
         do hel_lep=-3,3,6
c     sum over gluon helicities
            virtual_gpgm=0d0
            born_gpgm=0d0
            do hel_glu=-1,1,2
               born_gpgm=born_gpgm+
     $              abs(bornamp(hel_quark,hel_lep,hel_glu))**2
               virtual_gpgm=virtual_gpgm+
     $              dble(dconjg(bornamp(hel_quark,hel_lep,hel_glu))
     $              *virtamp(hel_quark,hel_lep,hel_glu))
            enddo
c$$$            print*, '>>>> tree gp+gm ',hel_quark,hel_lep,born_gpgm
c$$$            print*, '>>>> tr1l gp+gm ',hel_quark,hel_lep,virtual_gpgm
c     nc is the overall color factor associated to the
c     1-loop amplitude
            virtualNEW=virtualNEW+nc*virtual_gpgm
            bornNEW=bornNEW+born_gpgm
         enddo
      enddo

c     here include overall factors, that are not
c     helicity dependent and that would be already there
c     at the born level too. 
c     (cf*nc) is the Born color factor.
c     (*8) comes from conventions in helicity amplitudes.
      if(vflav(1)*vflav(2).eq.0) then
c     QG
         helcol=(cf*nc)/(4*nc*(nc**2-1)) *8
         helcol=helcol * phdm_qqphi(abs(vflav(5)))**2
      else
c     QQBAR
         helcol=(cf*nc)/(4*nc**2) *8
         helcol=helcol * phdm_qqphi(abs(vflav(1)))**2
      endif
      virtualNEW=virtualNEW * helcol * (4*pi*st_alpha)
      bornNEW=bornNEW * helcol * (4*pi*st_alpha)
c     Subtract finite term from renormalization
      virtualNEW=virtualNEW-subuv*bornNEW

c$$$      if(vflav(1)*vflav(2).ne.0) then
c$$$c         print*,'B ratio ME/HZ   -----> ',vflav(1),vflav(2),bornNEW/born
c$$$c         print*,'B ratio ME/mcfm -----> ',vflav(1),vflav(2),bornNEW/mcfmborn_dm(vflav(1),vflav(2))
c$$$c         print*,'B ratio HZ/mcfm -----> ',vflav(1),vflav(2),born/mcfmborn_dm(vflav(1),vflav(2))
c$$$      endif
     
c$$$c      if(vflav(1)*vflav(2).ne.0) then
c$$$      if(vflav(1)*vflav(2).eq.0) then
c$$$            print*,'V ratio ME/mcfm --> ',vflav(1),vflav(2),virtualNEW/mcfmvirt_dm(vflav(1),vflav(2))*ason2pi
c$$$      endif

      virtual=virtualNEW

      end



      subroutine BornHelicityAmplitudes(mode,k1,k2,k3,k4,k5,pmcfmmassless,bornamps)
      implicit none
      character *2 mode
      integer k1,k2,k3,k4,k5
      double precision pmcfmmassless(12,1:4)
      double complex bornamps(-3:3,-1:1)
      
      double complex Amp3m4m5p,Amp3p4p5p,Amp3m4m5m,Amp3p4p5m

      
      if(mode.eq.'SC') then
         call BornScHelicityAmplitudes(k1,k2,k3,k4,k5,pmcfmmassless,
     $        Amp3m4m5p,Amp3p4p5p,Amp3m4m5m,Amp3p4p5m)
      elseif(mode.eq.'PS') then
         call BornPScHelicityAmplitudes(k1,k2,k3,k4,k5,pmcfmmassless,
     $        Amp3m4m5p,Amp3p4p5p,Amp3m4m5m,Amp3p4p5m)
      endif

      bornamps(-3,-1)=Amp3m4m5m
      bornamps(-3,+1)=Amp3m4m5p
              
      bornamps(3,-1)=Amp3p4p5m
      bornamps(3,+1)=Amp3p4p5p

      end


      subroutine VirtualHelicityAmplitudes(mode,k1,k2,k3,k4,k5,mu2,pmcfmmassless,virtamps)
      implicit none
      character *2 mode
      integer k1,k2,k3,k4,k5
      double precision pmcfmmassless(12,1:4),mu2
      double complex virtamps(-3:3,-1:1)

      double complex VLCAmp3m4m5p,VLCAmp3p4p5p,VLCAmp3m4m5m
     $     ,VLCAmp3p4p5m,VSLCAmp3m4m5p,VSLCAmp3p4p5p,VSLCAmp3m4m5m
     $     ,VSLCAmp3p4p5m
      integer nc
      parameter (nc=3)

      if(mode.eq.'SC') then
         call VirtScHelicityAmplitudes(k1,k2,k3,k4,k5,pmcfmmassless, mu2
     $        ,VLCAmp3m4m5p ,VLCAmp3p4p5p,VLCAmp3m4m5m ,VLCAmp3p4p5m
     $        ,VSLCAmp3m4m5p,VSLCAmp3p4p5p,VSLCAmp3m4m5m,VSLCAmp3p4p5m)
      elseif(mode.eq.'PS') then
         call VirtPScHelicityAmplitudes(k1,k2,k3,k4,k5,pmcfmmassless, mu2
     $        ,VLCAmp3m4m5p ,VLCAmp3p4p5p,VLCAmp3m4m5m ,VLCAmp3p4p5m
     $        ,VSLCAmp3m4m5p,VSLCAmp3p4p5p,VSLCAmp3m4m5m,VSLCAmp3p4p5m)
      endif


      virtamps(-3,-1)=VLCAmp3m4m5m -  VSLCAmp3m4m5m/nc**2
      virtamps(-3,+1)=VLCAmp3m4m5p -  VSLCAmp3m4m5p/nc**2
      virtamps(3,-1)= VLCAmp3p4p5m -  VSLCAmp3p4p5m/nc**2
      virtamps(3,+1)= VLCAmp3p4p5p -  VSLCAmp3p4p5p/nc**2

      end

      subroutine mom_to_MCFM(cmpborn,pmcfm)
      implicit none
      include 'nlegborn.h'
c      include 'pwhg_flst.h'
c      include 'pwhg_kn.h'
      include 'MCFM_include/constants.f'
      real * 8 cmpborn(0:3,5)
      real * 8 pmcfm(mxpart,1:4)
      integer i,mu
      do i=1,2
         pmcfm(i,4)=-cmpborn(0,i)
         do mu=1,3
            pmcfm(i,mu)=-cmpborn(mu,i)
         enddo
      enddo
c THIRD  momentum must be the lepton
c FOURTH momentum must be the antilepton
      do i=3,5
         pmcfm(i,4)=cmpborn(0,i)
         do mu=1,3
            pmcfm(i,mu)=cmpborn(mu,i)
         enddo
      enddo
      end


      subroutine spinoru(N,p,za,zb)
c---Calculate spinor products
c---extended to deal with negative energies ie with all momenta outgoing
c---Arbitrary conventions of Bern, Dixon, Kosower, Weinzierl, 
c---za(i,j)*zb(j,i)=s(i,j)
      implicit none
      include 'MCFM_include/constants.f'
      include 'MCFM_include/zprods_decl.f'
      include 'MCFM_include/sprods_com.f'
      double precision p(mxpart,4),rt(mxpart)
      double complex c23(mxpart),f(mxpart)
      integer i,j,N
      
c---if one of the vectors happens to be zero this routine fails.
      do j=1,N
         za(j,j)=czip
         zb(j,j)=za(j,j)

C-----positive energy case
         if (p(j,4) .gt. 0d0) then
            rt(j)=dsqrt(p(j,4)+p(j,1))
            c23(j)=dcmplx(p(j,3),-p(j,2))
            f(j)=cone
         else
C-----negative energy case
            rt(j)=dsqrt(-p(j,4)-p(j,1))
            c23(j)=dcmplx(-p(j,3),p(j,2))
            f(j)=im
         endif
      enddo
      do i=2,N
         do j=1,i-1
         s(i,j)=two*(p(i,4)*p(j,4)-p(i,1)*p(j,1)
     &              -p(i,2)*p(j,2)-p(i,3)*p(j,3))
         za(i,j)=f(i)*f(j)
     &   *(c23(i)*dcmplx(rt(j)/rt(i))-c23(j)*dcmplx(rt(i)/rt(j)))

         if (abs(s(i,j)).lt.1d-9) then
         zb(i,j)=-(f(i)*f(j))**2*dconjg(za(i,j))
         else
         zb(i,j)=-dcmplx(s(i,j))/za(i,j)
         endif
         za(j,i)=-za(i,j)
         zb(j,i)=-zb(i,j)
         s(j,i)=s(i,j)
         enddo
      enddo

      return
      end





      double complex function Lsm1(x1,y1,x2,y2)
      implicit none
      include 'MCFM_include/constants.f'
      double precision x1,x2,y1,y2,r1,r2,omr1,omr2,ddilog
      double complex dilog1,dilog2,Lnrat
      r1=x1/y1
      r2=x2/y2
      omr1=one-r1
      omr2=one-r2
      if (omr1 .gt. one) then 
         dilog1=dcmplx(pisqo6-ddilog(r1))-Lnrat(x1,y1)*dcmplx(log(omr1))
      else
         dilog1=dcmplx(ddilog(omr1))
      endif
      if (omr2 .gt. one) then 
         dilog2=dcmplx(pisqo6-ddilog(r2))-Lnrat(x2,y2)*dcmplx(log(omr2))
      else
          dilog2=dcmplx(ddilog(omr2))
      endif
      lsm1=dilog1+dilog2+Lnrat(x1,y1)*Lnrat(x2,y2)-dcmplx(pisqo6)
      return
      end



      double complex function Lnrat(x,y)
************************************************************************
*     Author: R.K. Ellis                                               *
*     August, 1998.                                                    *
c     Lnrat(x,y)=log(x-i*ep)-log(y-i*ep)                               *
c     this function is hard-wired for sign of epsilon we must adjust   *
c     sign of x and y to get the right sign for epsilon                *
************************************************************************
      implicit none
      include 'MCFM_include/constants.f'
      double precision x,y,htheta
C--- define Heaviside theta function (=1 for x>0) and (0 for x < 0)
      htheta(x)=half+half*sign(one,x)
      Lnrat=dcmplx(dlog(abs(x/y)))-impi*dcmplx((htheta(-x)-htheta(-y)))
      return
      end




*
* $Id: dclaus64.F,v 1.2 1996/04/02 16:23:45 mclareni Exp $
*
* $Log: dclaus64.F,v $
* Revision 1.2  1996/04/02 16:23:45  mclareni
* More precise dclaus64 (C326), test added and C344 removed from TESTALL
*
* Revision 1.1.1.1  1996/04/01 15:02:03  mclareni
* Mathlib gen
*
*
      DOUBLE PRECISION FUNCTION DCLAUS(X)
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)

      DIMENSION A(0:8),B(0:13)
 
      PARAMETER (R1 = 1d0, HF =R1/2d0)
      PARAMETER (PI = 3.14159 26535 89793 24D0)
      PARAMETER (PI2 = 2d0*PI, PIH = PI/2d0, RPIH = 2d0/PI)
 
      DATA A( 0) / 0.02795 28319 73575 6613D0/
      DATA A( 1) / 0.00017 63088 74389 8116D0/
      DATA A( 2) / 0.00000 12662 74146 1157D0/
      DATA A( 3) / 0.00000 00117 17181 8134D0/
      DATA A( 4) / 0.00000 00001 23006 4129D0/
      DATA A( 5) / 0.00000 00000 01395 2729D0/
      DATA A( 6) / 0.00000 00000 00016 6908D0/
      DATA A( 7) / 0.00000 00000 00000 2076D0/
      DATA A( 8) / 0.00000 00000 00000 0027D0/
 
      DATA B( 0) / 0.63909 70888 57265 341D0/
      DATA B( 1) /-0.05498 05693 01851 716D0/
      DATA B( 2) /-0.00096 12619 45950 606D0/
      DATA B( 3) /-0.00003 20546 86822 550D0/
      DATA B( 4) /-0.00000 13294 61695 426D0/
      DATA B( 5) /-0.00000 00620 93601 824D0/
      DATA B( 6) /-0.00000 00031 29600 656D0/
      DATA B( 7) /-0.00000 00001 66351 954D0/
      DATA B( 8) /-0.00000 00000 09196 527D0/
      DATA B( 9) /-0.00000 00000 00524 004D0/
      DATA B(10) /-0.00000 00000 00030 580D0/
      DATA B(11) /-0.00000 00000 00001 820D0/
      DATA B(12) /-0.00000 00000 00000 110D0/
      DATA B(13) /-0.00000 00000 00000 007D0/
 
      V=MOD(ABS(X),PI2)
      S=SIGN(R1,X)
      IF(V .GT. PI) THEN
       V=PI2-V
       S=-S
      ENDIF
      IF(V .EQ. 0d0 .OR. V .EQ. PI) THEN
       H=0d0
      ELSEIF(V .LT. PIH) THEN
       U=RPIH*V
       H=2d0*U**2-1d0
       ALFA=H+H
       B1=0d0
       B2=0d0
       DO 1 I = 8,0,-1
       B0=A(I)+ALFA*B1-B2
       B2=B1
    1  B1=B0
       H=V*(1d0-LOG(V)+HF*V**2*(B0-H*B2))
      ELSE
       U=RPIH*V-2d0
       H=2d0*U**2-1d0
       ALFA=H+H
       B1=0d0
       B2=0d0
       DO 2 I = 13,0,-1
       B0=B(I)+ALFA*B1-B2
       B2=B1
    2  B1=B0
       H=(PI-V)*(B0-H*B2)
      ENDIF
      DCLAUS=S*H
      RETURN
      END



      DOUBLE PRECISION FUNCTION DDILOGMCFM(X)

      DOUBLE PRECISION X,Y,T,S,A,PI3,PI6,ZERO,ONE,HALF,MALF,MONE,MTWO
      DOUBLE PRECISION C(0:18),H,ALFA,B0,B1,B2

      DATA ZERO /0.0D0/, ONE /1.0D0/
      DATA HALF /0.5D0/, MALF /-0.5D0/, MONE /-1.0D0/, MTWO /-2.0D0/
      DATA PI3 /3.28986 81336 96453D0/, PI6 /1.64493 40668 48226D0/

      DATA C( 0) / 0.42996 69356 08137 0D0/
      DATA C( 1) / 0.40975 98753 30771 1D0/
      DATA C( 2) /-0.01858 84366 50146 0D0/
      DATA C( 3) / 0.00145 75108 40622 7D0/
      DATA C( 4) /-0.00014 30418 44423 4D0/
      DATA C( 5) / 0.00001 58841 55418 8D0/
      DATA C( 6) /-0.00000 19078 49593 9D0/
      DATA C( 7) / 0.00000 02419 51808 5D0/
      DATA C( 8) /-0.00000 00319 33412 7D0/
      DATA C( 9) / 0.00000 00043 45450 6D0/
      DATA C(10) /-0.00000 00006 05784 8D0/
      DATA C(11) / 0.00000 00000 86121 0D0/
      DATA C(12) /-0.00000 00000 12443 3D0/
      DATA C(13) / 0.00000 00000 01822 6D0/
      DATA C(14) /-0.00000 00000 00270 1D0/
      DATA C(15) / 0.00000 00000 00040 4D0/
      DATA C(16) /-0.00000 00000 00006 1D0/
      DATA C(17) / 0.00000 00000 00000 9D0/
      DATA C(18) /-0.00000 00000 00000 1D0/

      IF(X .EQ. ONE) THEN
       DDILOGMCFM=PI6
       RETURN
      ELSE IF(X .EQ. MONE) THEN
       DDILOGMCFM=MALF*PI6
       RETURN
      END IF
      T=-X
      IF(T .LE. MTWO) THEN
       Y=MONE/(ONE+T)
       S=ONE
       A=-PI3+HALF*(LOG(-T)**2-LOG(ONE+ONE/T)**2)
      ELSE IF(T .LT. MONE) THEN
       Y=MONE-T
       S=MONE
       A=LOG(-T)
       A=-PI6+A*(A+LOG(ONE+ONE/T))
      ELSE IF(T .LE. MALF) THEN
       Y=(MONE-T)/T
       S=ONE
       A=LOG(-T)
       A=-PI6+A*(MALF*A+LOG(ONE+T))
      ELSE IF(T .LT. ZERO) THEN
       Y=-T/(ONE+T)
       S=MONE
       A=HALF*LOG(ONE+T)**2
      ELSE IF(T .LE. ONE) THEN
       Y=T
       S=ONE
       A=ZERO
      ELSE
       Y=ONE/T
       S=MONE
       A=PI6+HALF*LOG(T)**2
      END IF

      H=Y+Y-ONE
      ALFA=H+H
      B1=ZERO
      B2=ZERO
      DO 1 I = 18,0,-1
      B0=C(I)+ALFA*B1-B2
      B2=B1
    1 B1=B0
      DDILOGMCFM=-(S*(B0-H*B2)+A)
      RETURN
      END
