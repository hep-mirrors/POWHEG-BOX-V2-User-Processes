c     adpated for the POWHEG-BOX by Barbara Jager
c     last changed: 2018, March20
      
!****************subroutine qqh2q2g **************************************
!
!       Michael Rauch, <michael.rauch@kit.edu>
!       Initial version:  2017, February
!       Last modified: 2017, February
!
!  qqh2q2g calculates the matrix elements**2 for
!
!             g1         g2
!            8          8
!           8          8
!          8          8
!  q1 -->---->----->---->-- q2
!               S
!           W/Z S
!               S
!               S- - -  h (p7+p8)
!               S
!           W/Z S
!               S
!  q3 ---->--------->------ q4
!
!  and crossing related processes.
!  Interference terms between the two quark lines originating
!  from the proton are neglected.

      subroutine qqh2q2g(pbar,fsign,qbar,gsign,m2snc,m2scc)

c      use globalvars, only: ldoblha

      implicit none

        
      real * 8 pi,pi2
      parameter (pi=3.141592653589793238462643383279502884197D0,
     1           pi2=pi**2)   
      include '../../../include/pwhg_st.h'
      
      include 'global.inc'
      include 'koppln_ew.inc'
      include 'scales.inc'
      
c#include "VBFNLO/utilities/global.inc"
c#include "VBFNLO/utilities/koppln.inc"
c#include "VBFNLO/utilities/scales.inc"
c#include "VBFNLO/utilities/BLHAhelper.inc"

      ! arguments
      double precision, intent(in) :: pbar(0:3,4+max_v), qbar(0:4,2)
      integer, intent(in) :: fsign(4+max_v), gsign(2)
      ! indices: flavor%2 of quarks 1, 3 and 5 (1-flavor%2 of quark 2/4 if 1/3 is an anti-quark),
      !          color structure (1/2: radiation from upper/lower line,
      !                           3/4: flipped diagram for different quark generations on upper/lower line)
      !          interference
      double precision, intent(out) :: m2snc(0:1,0:1,0:6), m2scc(0:1,0:6)

      ! local
      double precision fpials(2:3), fpi
      parameter (fpi=4d0*pi)
      integer i,j,isig1,isig3,l1,l2,flav1,flav3
      double precision p(0:3,4+max_v)
      double precision p21(0:4)
      double precision p43(0:4)
      double precision p65(0:4)
      double precision p87(0:4)
      double precision ph(0:4)
      double precision pg(0:4,2)
      double precision pgg(0:4)
      double precision p21g1(0:4),p21g2(0:4),p21g12(0:4)
      double precision p43g1(0:4),p43g2(0:4),p43g12(0:4)
      double precision fac
      double precision facZ(6),facW(6)
      logical lgoff(3)
      double complex psi(2,-1:1,4)
      double complex gpolvec(0:3,-1:1,2), ggpolvec(0:3,-1:1,-1:1,2)
      double complex psig(2,-1:1,-1:1,4,2), psigg(2,-1:1,-1:1,-1:1,4,2)
      double precision pmomg(0:4,4,2), pmomgg(0:4,4)
      double complex jgg(6,-1:1,-1:1,-1:1,2,2),
     &  jg(6,-1:1,-1:1,2,2),jx(6,-1:1,2)
      ! colour structures
      double complex mat(-1:1,-1:1,-1:1,-1:1,6)
      double precision m2stmp
      double precision colsq, colint
      !double complex zm2i(2:3)
      !double complex qterm(1:4)

      ! external
      double precision  clr, xm2, xmg, b, v, a
      COMMON /BKOPOU/   CLR(4,5,-1:1),XM2(6),XMG(6),B(6,6,6),
     &                  V(4,5),A(4,5)
      ! anomalous couplings (resulting from electroweak corrections)
      double complex ahvv(3,4,4), ahvvL(3,4,4)
      common/tensorhvv/ ahvv, ahvvL
      ! CPS scheme
      double precision qgammaq
      common /VBFNLO_HIGGS_CPS/ qgammaq

      double precision mass2
      double complex dotcc, dotrc
      external mass2, dotcc, dotrc

      ! initialization

      m2snc = 0
      m2scc = 0

      !zm2i(2) = dcmplx(xm2(2),-xmg(2))
      !zm2i(3) = dcmplx(xm2(3),-xmg(3))

! fix strong coupling gs**2 for the two quarks:
      fpials(2) = fpi*als(1,1)
      fpials(3) = fpi*als(2,1)
!      fpials(2) = fpi*alfas

! color factors
c      if (ldoblha) then
c        colsq = blha_CF**2*blha_CA**2
c        colint = - blha_CF*blha_CA**2*(blha_CA/2d0-blha_CF)
c      else
        colsq = 16
        colint = -2
c      endif
!     fill local momenta and sign factors
!     diagramatic momenta
      do i=1,4+max(n_v,2)
         p(0:3,i)=fsign(i)*pbar(0:3,i)
      enddo

      p21(0:3) = p(0:3,2) - p(0:3,1)
      p43(0:3) = p(0:3,4) - p(0:3,3)
      p65(0:3) = p(0:3,6) - p(0:3,5)
      if (n_v.eq.4) then
         stop 'nv=4 is not covered in this code version'
c     p87(0:3) = p(0:3,8) - p(0:3,7)
c         ph(0:3) = p65(0:3) + p87(0:3)
      elseif (n_v.eq.2 .or. n_v.eq.1) then
         ph(0:3) = p65(0:3)
      endif

      Pg(:,1)=qbar(:,1)*gsign(1)
      pg(:,2)=qbar(:,2)*gsign(2)

      pgg(0:3)=pg(0:3,1)+pg(0:3,2)
      p21g1(0:3) = p21(0:3)+pg(0:3,1)
      p21g2(0:3) = p21(0:3)+pg(0:3,2)
      p21g12(0:3) = p21(0:3)+pg(0:3,1)+pg(0:3,2)
      p43g1(0:3) = p43(0:3)+pg(0:3,1)
      p43g2(0:3) = p43(0:3)+pg(0:3,2)
      p43g12(0:3) = p43(0:3)+pg(0:3,1)+pg(0:3,2)

      p21(4) = mass2(p21)
      p43(4) = mass2(p43)
      p65(4) = mass2(p65)
c      p87(4) = mass2(p87)
      ph(4) = mass2(ph)
      pgg(4) = mass2(pgg)
      p21g1(4) = mass2(p21g1)
      p21g2(4) = mass2(p21g2)
      p21g12(4) = mass2(p21g12)
      p43g1(4) = mass2(p43g1)
      p43g2(4) = mass2(p43g2)
      p43g12(4) = mass2(p43g12)

      if (n_v.gt.1) then
        ! Include higgs decay
        !    SUM_pol |D_H(p_8-p_7) * psi-bar(8) psi(7)|^2 * color factor
        !    * g_s**2 * production color factor
        !
        fac = 1.d0 / ( (ph(4)-xm2(6))**2 + xmg(6)**2 ) !propagator^2 only
        !
        ! multiply by 16 pi*M Gamma to compensate for the phase space integral in
        ! LIPSN
        !
        !   Int dq^2/2pi * dOmega/(32 pi^2) * 1/(q^2-M*2)^2+(MGamma)^2)
        !   = 1/(16 pi MGamma)
        ! (where the propagator factor is fac above)
c     BJ: replace qgammaq (set in m2s_qqh4j) with xmg:
        qgammaq = xmg(6)
        fac = fac *16*pi*qgammaq
        !

c     BJ: test only:
        fac=1d0

      else
        ! Higgs is final-state - no decays (real or simulated for technical reasons)
        fac = 1d0
      endif

c      print*,'fac in qqh2q=', fac,qgammaq

      ! VVH coupling, alphas and V propagators
      !! Z
      facZ(1) = abs(1
     &            /dcmplx(p21g12(4)-xm2(2),xmg(2))
     &            /dcmplx(p43(4)-xm2(2),xmg(2))
     &           )**2
      facZ(3) = facZ(1)
      facZ(5) = abs(1
     &            /dcmplx(p21(4)-xm2(2),xmg(2))
     &            /dcmplx(p43g12(4)-xm2(2),xmg(2))
     &           )**2
      facZ(6) = facZ(5)
      facZ(2) = abs(1
     &            /dcmplx(p21g1(4)-xm2(2),xmg(2))
     &            /dcmplx(p43g2(4)-xm2(2),xmg(2))
     &           )**2
      facZ(4) = abs(1
     &            /dcmplx(p21g2(4)-xm2(2),xmg(2))
     &            /dcmplx(p43g1(4)-xm2(2),xmg(2))
     &           )**2
      facZ(:) = facZ(:)*abs(ahvv(1,2,2))**2 *fpials(2)*fpials(3)
      !! W
      facW(1) = abs(1
     &            /dcmplx(p21g12(4)-xm2(3),xmg(3))
     &            /dcmplx(p43(4)-xm2(3),xmg(3))
     &           )**2
      facW(3) = facW(1)
      facW(5) = abs(1
     &            /dcmplx(p21(4)-xm2(3),xmg(3))
     &            /dcmplx(p43g12(4)-xm2(3),xmg(3))
     &           )**2
      facW(6) = facW(5)
      facW(2) = abs(1
     &            /dcmplx(p21g1(4)-xm2(3),xmg(3))
     &            /dcmplx(p43g2(4)-xm2(3),xmg(3))
     &           )**2
      facW(4) = abs(1
     &            /dcmplx(p21g2(4)-xm2(3),xmg(3))
     &            /dcmplx(p43g1(4)-xm2(3),xmg(3))
     &           )**2
      facW(:) = facW(:)*abs(ahvv(1,3,4))**2 *fpials(2)*fpials(3)

      ! set Higgsstrahlung combinations to zero
      lgoff = .false.
      if (gsign(1).eq.-1) then
        if (gsign(2).eq.-1) then
          lgoff(3) = .true.
        elseif (fsign(1).eq.-fsign(2)) then
          lgoff(2) = .true.
        elseif (fsign(3).eq.-fsign(4)) then
          lgoff(1) = .true.
        endif
      endif

c BJ test only:
c      if (gsign(1).eq.1.and.gsign(2).eq.-1) then
c         lgoff(1)=.true. 
c      endif

!-----------------------------------------------------

! Get fermion currents
      call psi0m(4,pbar(0,1),fsign(1),psi)

! Get gluon polarization vectors
      do l1=-1,1,2     ! Loop over gluon helicity
        call helvec(qbar(0,1),gsign(1),l1,gpolvec(0,l1,1))
        call helvec(qbar(0,2),gsign(2),l1,gpolvec(0,l1,2))
      enddo
      if ( .not. lgoff(3)) then
        do l1=-1,1,2
          do l2=-1,1,2
            ggpolvec(0:3,l1,l2,1) = 
     &        (2d0*dotrc(pg(0,1),gpolvec(0,l2,2))*gpolvec(0:3,l1,1)
     &         -2d0*dotrc(pg(0,2),gpolvec(0,l1,1))*gpolvec(0:3,l2,2)
     &         +dotcc(gpolvec(0,l1,1),gpolvec(0,l2,2))*(pg(0:3,2)-pg(0:3,1))
     &        )/pgg(4)
          enddo
        enddo
        ! first helicity index is gluon j
        ggpolvec(:,-1,-1,2) = ggpolvec(:,-1,-1,1)
        ggpolvec(:,+1,-1,2) = ggpolvec(:,-1,+1,1)
        ggpolvec(:,-1,+1,2) = ggpolvec(:,+1,-1,1)
        ggpolvec(:,+1,+1,2) = ggpolvec(:,+1,+1,1)
      endif

! Add gluons to bra and kets
      do i=1,3,2 ! quark
        do isig1=-1,1,2
          do j=1,2 ! gluon 1
            do l1=-1,1,2
              ! Add first gluon
              call bra2c(psi(1,isig1,i+1),.true.,p(0,i+1),isig1,
     &          pg(0,j),gpolvec(0,l1,j),
     &          psig(1,isig1,l1,i+1,j),pmomg(0,i+1,j))
              call ket2c(psi(1,isig1,i),.true.,p(0,i),isig1,
     &          pg(0,j),gpolvec(0,l1,j),
     &          psig(1,isig1,l1,i,j),pmomg(0,i,j))
              if ( lgoff(3) .or.
     &             (i.eq.1 .and. lgoff(1) ) .or.
     &             (i.eq.2 .and. lgoff(2) ) ) cycle
              do l2=-1,1,2
                ! second gluon
                !! l1 is polarization of j
                !! kets start at the "wrong" end, so j and l get flipped
                call bra2c(psig(1,isig1,l1,i+1,j),.false.,pmomg(0,i+1,j),
     &            isig1,pg(0,3-j),gpolvec(0,l2,3-j),
     &            psigg(1,isig1,l1,l2,i+1,j),pmomgg(0,i+1))
                call ket2c(psig(1,isig1,l1,i,j),.false.,pmomg(0,i,j),
     &            isig1,pg(0,3-j),gpolvec(0,l2,3-j),
     &            psigg(1,isig1,l2,l1,i,3-j),pmomgg(0,i))
                !! gluon pair -- additional minus from gluon propagator
                call bra2cadd(psi(1,isig1,i+1),.true.,p(0,i+1),
     &            isig1,pgg(0),ggpolvec(0,l1,l2,j),
     &            psigg(1,isig1,l1,l2,i+1,j),pmomgg(0,i+1),
     &            -(-1d0)**j)
                call ket2cadd(psi(1,isig1,i),.true.,p(0,i),
     &            isig1,pgg(0),ggpolvec(0,l2,l1,3-j),
     &            psigg(1,isig1,l2,l1,i,3-j),pmomgg(0,i),
     &            -(-1d0)**(3-j))
              enddo
            enddo
          enddo
        enddo
      enddo

! Build currents
      ! i=1:upper, 2:lower line
      do i=1,2
        if ( .not. ( lgoff(3) .or.
     &             (i.eq.1 .and. lgoff(2) ) .or.
     &             (i.eq.2 .and. lgoff(1) ) )
     &     ) then
        ! 0g
          call curr6(+1,psi(1,-1,2*i),p(0,2*i),
     &        psi(1,-1,2*i-1),p(0,2*i-1),jx(1,-1,i))
        endif
        do j=1,2
          do l1=-1,1,2
            if ( .not. ( 
     &             lgoff(1) .and. ( i.eq.j ) .or.
     &             ( lgoff(2) .or. (lgoff(3)) ) .and.
     &               ( i.ne.j )
     &           )
     &         ) then
              ! 1g
              !! (j)-x
              call curr6(+1,psig(1,-1,l1,2*i,j),pmomg(0,2*i,j),
     &          psi(1,-1,2*i-1),p(0,2*i-1),jg(1,-1,l1,j,i))
              !! x-(j)
              call curr6add(+1,psi(1,-1,2*i),p(0,2*i),
     &          psig(1,-1,l1,2*i-1,j),pmomg(0,2*i-1,j),jg(1,-1,l1,j,i))
            endif
            if ( lgoff(3) .or.
     &           (i.eq.1 .and. lgoff(1) ) .or.
     &           (i.eq.2 .and. lgoff(2) ) ) cycle
            ! 2g
            do l2=-1,1,2
              !! (j,3-j)-x
              call curr6(+1,psigg(1,-1,l1,l2,2*i,j),pmomgg(0,2*i),
     &          psi(1,-1,2*i-1),p(0,2*i-1),
     &          jgg(1,-1,l1,l2,j,i))
              !! (j)-(3-j)
              call curr6add(+1,psig(1,-1,l1,2*i,j),pmomg(0,2*i,j),
     &          psig(1,-1,l2,2*i-1,3-j),pmomg(0,2*i-1,3-j),
     &          jgg(1,-1,l1,l2,j,i))
              !! x-(j,3-j)
              call curr6add(+1,psi(1,-1,2*i),p(0,2*i),
     &          psigg(1,-1,l1,l2,2*i-1,j),pmomgg(0,2*i-1),
     &          jgg(1,-1,l1,l2,j,i))
            enddo
          enddo
        enddo
      enddo

! Connect both lines
! color conventions follow the original MadGraph code:
      mat=0
      do isig1=-1,1,2
        do isig3=-1,1,2
          do l1=-1,1,2
            do l2=-1,1,2
              if ( .not.lgoff(1) ) then
                if ( .not.lgoff(3) ) then
                  ! 12-x
                  mat(isig1,isig3,l1,l2,1) =
     &              dotcc(jgg(1,isig1,l1,l2,1,1),jx(1,isig3,2))
                  ! 21-x
                  mat(isig1,isig3,l1,l2,3) =
     &              dotcc(jgg(1,isig1,l2,l1,2,1),jx(1,isig3,2))
                endif
                ! 1-2
                mat(isig1,isig3,l1,l2,2) =
     &            dotcc(jg(1,isig1,l1,1,1),jg(1,isig3,l2,2,2))
              endif
              if ( .not.lgoff(2) ) then
                if ( .not.lgoff(3) ) then
                  ! 2-1
                  mat(isig1,isig3,l1,l2,4) =
     &            dotcc(jg(1,isig1,l2,2,1),jg(1,isig3,l1,1,2))
                endif
                if ( .not.lgoff(3) ) then
                  ! x-12
                  mat(isig1,isig3,l1,l2,5) =
     &            dotcc(jx(1,isig1,1),jgg(1,isig3,l1,l2,1,2))
                  ! x-21
                  mat(isig1,isig3,l1,l2,6) =
     &            dotcc(jx(1,isig1,1),jgg(1,isig3,l2,l1,2,2))
                endif
              endif
            enddo
          enddo
        enddo
      enddo

! Sum everything up -- NC
      do flav1=0,1
      do flav3=0,1
      do isig1=-1,1,2
      do isig3=-1,1,2
      do l1=-1,1,2
      do l2=-1,1,2
        !! colour-squared terms
        do i=1,6
          m2snc(flav1,flav3,i) = m2snc(flav1,flav3,i)
     &      + colsq* !colour factor
     &        abs(mat(isig1,isig3,l1,l2,i)*
     &          clr(3+flav1,2,isig1)*clr(3+flav3,2,isig3))**2 *
     &        fac*facZ(i)
        enddo
        !! colour-interference
        !!! upper line
        m2stmp = 
     &    + colint*dreal(
     &        mat(isig1,isig3,l1,l2,1)*
     &        dconjg(mat(isig1,isig3,l1,l2,3))
     &      )*
     &      abs(clr(3+flav1,2,isig1)*clr(3+flav3,2,isig3))**2 *
     &      fac*facZ(1)
        m2snc(flav1,flav3,1) = m2snc(flav1,flav3,1) + m2stmp
        m2snc(flav1,flav3,3) = m2snc(flav1,flav3,3) + m2stmp
        !!! lower line
        m2stmp = 
     &    + colint*dreal(
     &        mat(isig1,isig3,l1,l2,5)*
     &        dconjg(mat(isig1,isig3,l1,l2,6))
     &      )*
     &      abs(clr(3+flav1,2,isig1)*clr(3+flav3,2,isig3))**2 *
     &      fac*facZ(5)
        m2snc(flav1,flav3,5) = m2snc(flav1,flav3,5) + m2stmp
        m2snc(flav1,flav3,6) = m2snc(flav1,flav3,6) + m2stmp
      enddo
      enddo
      enddo
      enddo

c     BJ: switch off un-wanted topologies for gsign(2)=-1:
c     (not covered by lgoff procedure for switching off Higgsstrahlungs combinations,
c     as that only works for cases with gsign(1)=-1)
      if (gsign(2).eq.-1.and.gsign(1).eq.1) then
         if((fsign(3).eq.fsign(4)).and.
     $        (fsign(1).eq.-fsign(2))) then
             m2snc(:,:,5) = 0d0
             m2snc(:,:,6) = 0d0
             m2snc(:,:,2) = 0d0
         elseif((fsign(3).eq.-fsign(4)).and.
     $        (fsign(1).eq.fsign(2))) then
            m2snc(:,:,1) = 0d0
            m2snc(:,:,3) = 0d0
            m2snc(:,:,4) = 0d0
         endif
      endif


!      ! set Higgsstrahlung combinations to zero
!      !! already done by lgoff if's
!      if (gsign(1).eq.-1) then
!        if (gsign(2).eq.-1) then
!          m2snc(flav1,flav3,1) = 0
!          m2snc(flav1,flav3,3:6) = 0
!        else
!          if (fsign(1).eq.-fsign(2)) then
!            m2snc(flav1,flav3,4:6) = 0
!          elseif (fsign(3).eq.-fsign(4)) then
!            m2snc(flav1,flav3,1:3) = 0
!          endif
!        endif
!      endif
      m2snc(flav1,flav3,0) = sum(m2snc(flav1,flav3,:))
      enddo
      enddo

! Sum everything up -- CC
      do l1=-1,1,2
      do l2=-1,1,2
        !! colour-squared terms
        do i=1,6
          m2scc(0,i) = m2scc(0,i)
     &      + colsq* !colour factor
     &        abs(mat(-1,-1,l1,l2,i))**2 *
     &        facW(i)
        enddo
        !! colour-interference
        !!! upper line
        m2stmp = 
     &    + colint*dreal(
     &        mat(-1,-1,l1,l2,1)*
     &        dconjg(mat(-1,-1,l1,l2,3))
     &      )*
     &      facW(1)
        m2scc(0,1) = m2scc(0,1) + m2stmp
        m2scc(0,3) = m2scc(0,3) + m2stmp
        !!! lower line
        m2stmp = 
     &    + colint*dreal(
     &        mat(-1,-1,l1,l2,5)*
     &        dconjg(mat(-1,-1,l1,l2,6))
     &      )*
     &      facW(5)
        m2scc(0,5) = m2scc(0,5) + m2stmp
        m2scc(0,6) = m2scc(0,6) + m2stmp
      enddo
      enddo
      m2scc(0,:) = m2scc(0,:)*
     &      abs(clr(3,3,-1))**4 * fac
!      ! set Higgsstrahlung combinations to zero
!      !! already done by lgoff if's
!      if (gsign(1).eq.-1) then
!        if (gsign(2).eq.-1) then
!          m2scc(0,1) = 0
!          m2scc(0,3:6) = 0
!        else
!          if (fsign(1).eq.-fsign(2)) then
!            m2scc(0,4:6) = 0
!          elseif (fsign(3).eq.-fsign(4)) then
!            m2scc(0,1:3) = 0
!          endif
!        endif
!      endif

c      print*,'m2scc =',m2scc(0,1:6)

c BJ: switch off un-wanted topologies for gsign(2)=-1:
c (not covered by lgoff procedure for switching off Higgsstrahlungs combinations,
c     as that only works for cases with gsign(1)=-1)
      if (gsign(2).eq.-1.and.gsign(1).eq.1) then 
         if((fsign(3).eq.fsign(4)).and.
     $        (fsign(1).eq.-fsign(2))) then 
             m2scc(0,5) = 0d0
             m2scc(0,6) = 0d0
             m2scc(0,2) = 0d0
         elseif((fsign(3).eq.-fsign(4)).and.
     $        (fsign(1).eq.fsign(2))) then
            m2scc(0,1) = 0d0
            m2scc(0,3) = 0d0
            m2scc(0,4) = 0d0
         endif
      endif

      m2scc(0,0) = sum(m2scc(0,:))
      m2scc(1,:) = m2scc(0,:)

c      if (ldoblha) then
c        if (blha_amptype(blha_curproc).eq.0) then ! tree
c          if (mod(blha_idsubproc(blha_cursubproc,blha_curproc)/10000,10).eq.0) then
c            !NC
c            blha_amp(1)=blha_amp(1)+
c     &        m2snc(mod(blha_idsubproc(blha_cursubproc,blha_curproc)/1000,10),
c     &              mod(blha_idsubproc(blha_cursubproc,blha_curproc)/100, 10),0c)
c          else
c            blha_amp(1)=blha_amp(1)+
c     &        m2scc(mod(blha_idsubproc(blha_cursubproc,blha_curproc)/1000,10),0c)
c          endif
c        else
c          call BLHA_amptypeerror(blha_amptype(blha_curproc),__FILE__,__LINE__)
c        endif
c      endif

      return
      end
