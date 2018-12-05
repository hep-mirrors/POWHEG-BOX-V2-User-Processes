      subroutine qqb_ww_g(P,msq)
c---Matrix element squared averaged over initial colors and spins
c     q(-p1)+qbar(-p2) -->  f'(p5)+bar{f'}(p6) + n(p3)+ebar(p4)+ g(p7)
c   for the moment --- radiation only from initial line
      implicit none 
#include "qcdcouple.h"
#include "constants.h"
#include "sprods_com.h"
#include "zprods_decl.h"
#include "zwcouple.h"
#include "zwcouple_anom.h"
#include "ewcharge.h"
#include "anomcoup.h"
#include "pwhg_st.h"
#include "vvsettings.h"

      integer j,k,jk,tjk,polg,polq,minus,mplus,jp,kp,jtype
      double precision P(mxpart,4),qdks(mxpart,4),oqdks(mxpart,4),msq,
     &     s127,fac,fac1,offsh,xfac,realave
      double complex ct(2,2),cs_z(2,2),cs_g(2,2),
     &     cgamz(2,2),cz(2,2)
      double complex cs_z_anom(2,2),cgamz_anom(2,2),cz_anom(2,2)
      double complex u_ub_sm(5,2,2), d_db_sm(5,2,2),
     &     ub_u_sm(5,2,2), db_d_sm(5,2,2),u_g_sm(5,2,2),
     &     d_g_sm(5,2,2), g_ub_sm(5,2,2), g_db_sm(5,2,2),
     &     ub_g_sm(5,2,2), db_g_sm(5,2,2), g_u_sm(5,2,2),
     &     g_d_sm(5,2,2), amp_sm(5), prop12, A_sm(2,2)
      double complex u_ub_anom(5,2,2), d_db_anom(5,2,2),
     &     ub_u_anom(5,2,2),db_d_anom(5,2,2), u_g_anom(5,2,2),
     &     d_g_anom(5,2,2), g_ub_anom(5,2,2), g_db_anom(5,2,2),
     &     ub_g_anom(5,2,2), db_g_anom(5,2,2), g_u_anom(5,2,2),
     &     g_d_anom(5,2,2), amp_anom(5), A_anom(2,2), A_anom2(2,2)
      save oqdks,ct,cs_z,cs_g,
     &     cgamz, cz, u_ub_sm, d_db_sm, ub_u_sm, db_d_sm,
     &     u_g_sm, d_g_sm, g_ub_sm, g_db_sm,
     &     ub_g_sm, db_g_sm, g_u_sm, g_d_sm,
     &     u_ub_anom, d_db_anom, ub_u_anom, db_d_anom,
     &     u_g_anom, d_g_anom, g_ub_anom, g_db_anom,
     &     ub_g_anom, db_g_anom, g_u_anom, g_d_anom,
     &     amp_sm, amp_anom, prop12, s127,
     &     cs_z_anom, cgamz_anom, cz_anom
      common/xanomcoup/xdelg1_z,xdelg1_g,xlambda_g,xlambda_z,
     &     xdelk_g,xdelk_z
c      common/pchoice/j,k
      data minus,mplus/1,2/
      logical recalc
      double complex cpropfac
      external cpropfac

      msq=0d0
      
      fac=gw**4
      fac1=two*gsq*cf

C----Change the momenta to DKS notation 
c   We have --- f(p1) + f'(p2)-->mu^-(p5)+nubar(p6)+e^+(p4)+nu(p3)+g(p7)
c   DKS have--- ubar(q1)+u(q2)-->mu^-(q3)+nubar(q4)+e^+(q5)+nu(q6)+g(p7)
      do j=1,4
         qdks(1,j)=p(1,j)
         qdks(2,j)=p(2,j)
         qdks(3,j)=p(5,j)
         qdks(4,j)=p(6,j)
         qdks(5,j)=p(4,j)
         qdks(6,j)=p(3,j)
         qdks(7,j)=p(7,j)
      enddo


      recalc = .false.
      do j=1,4
         do k=1,7
            if(qdks(k,j).ne.oqdks(k,j)) then
               recalc=.true.
            endif
         enddo
      enddo
      if(recalc) oqdks = qdks

      if(recalc) then
c--   s returned from sprodx (common block) is 2*dot product
         call spinoru(7,qdks,za,zb)

c--   calculate propagators
         s127=s(1,2)+s(1,7)+s(2,7)
c      prop12=s127/dcmplx(s127-zmass**2,zmass*zwidth)  
         prop12=cpropfac(s127,zmass,zwidth)

c-- couplings according to 3.4 and 3.6
         do j=1,2
            ct(minus,j)=1d0
            ct(mplus,j)=0d0
            cs_z(minus,j)=+mp(j)*l(j)*sin2w*prop12
c            cs_z(mplus,j)=-mp(j)*2d0*Q(j)*xw*prop12
            cs_z(mplus,j)=+mp(j)*r(j)*sin2w*prop12
            cs_g(minus,j)=+mp(j)*2d0*Q(j)*xw
            cs_g(mplus,j)=+mp(j)*2d0*Q(j)*xw
            cz(minus,j)=0d0
            cz(mplus,j)=0d0
            cgamz(minus,j)=0d0
            cgamz(mplus,j)=0d0
c--   couplings with or without photon pole
            if (zerowidth .neqv. .true.) then
               cz(minus,j)=two*xw*ln*L(j)*prop12
               cz(mplus,j)=two*xw*ln*R(j)*prop12
               cgamz(minus,j)=two*xw*(-Q(j)+le*L(j)*prop12)
               cgamz(mplus,j)=two*xw*(-Q(j)+le*R(j)*prop12)
               
               
            endif
         enddo

c-- 
c      l(j)=(tau(j)-two*Q(j)*xw)/sin2w ; r(j)=(-two*Q(j)*xw)/sin2w
c      le=(-1d0-two*(-1d0)*xw)/sin2w ; re=(-two*(-1d0)*xw)/sin2w
c      ln=(+1d0-two*(+0d0)*xw)/sin2w ; rn=0d0
c---

c--- apply a dipole form factor to anomalous couplings
c         xfac=1d0/(1d0+s127/(tevscale*1d3)**2)**2 ! (deactivated for now, julien)
         xfac = 1d0
         xdelg1_z=xfac*delg1_z
         xdelg1_g=xfac*delg1_g
         xdelk_z=xfac*delk_z
         xdelk_g=xfac*delk_g
         xlambda_z=xfac*lambda_z
         xlambda_g=xfac*lambda_g

c--   couplings according to 3.4 and 3.6
c--   with anomalous Z-quark-quark couplings (new julien)
         do j=1,2
            cs_z_anom(minus,j)=+mp(j)*l_anom(j)*sin2w*prop12
            cs_z_anom(mplus,j)=+mp(j)*r_anom(j)*sin2w*prop12
            cz_anom(minus,j)=0d0
            cz_anom(mplus,j)=0d0
            cgamz_anom(minus,j)=0d0
            cgamz_anom(mplus,j)=0d0
c--   couplings with or without photon pole
            if (zerowidth .neqv. .true.) then
               cz_anom(minus,j)=two*xw*ln*L_anom(j)*prop12
               cz_anom(mplus,j)=two*xw*ln*R_anom(j)*prop12
               cgamz_anom(minus,j)=two*xw*le*L_anom(j)*prop12
               cgamz_anom(mplus,j)=two*xw*le*R_anom(j)*prop12
            endif
         enddo

      
c---remember ub-u is the basic process.
c---case ubar-u
         call wwamps(1,2,3,4,5,6,7,za,zb,ub_u_sm,ub_u_anom)
c---  case ubar-g
         call wwamps(1,7,3,4,5,6,2,za,zb,ub_g_sm,ub_g_anom)
c---  case g-ubar
         call wwamps(2,7,3,4,5,6,1,za,zb,g_ub_sm,g_ub_anom)
         
c---  case u-ubar
         call wwamps(2,1,3,4,5,6,7,za,zb,u_ub_sm,u_ub_anom)
c---  case u-g
         call wwamps(7,1,3,4,5,6,2,za,zb,u_g_sm,u_g_anom)
c---  case g-u
         call wwamps(7,2,3,4,5,6,1,za,zb,g_u_sm,g_u_anom)
         
c---  case dbar-d
         call wwamps(1,2,6,5,4,3,7,za,zb,db_d_sm,db_d_anom)
c---  case dbar-g
         call wwamps(1,7,6,5,4,3,2,za,zb,db_g_sm,db_g_anom)
c---  case g-dbar
         call wwamps(2,7,6,5,4,3,1,za,zb,g_db_sm,g_db_anom)
         
c---  case d-dbar
         call wwamps(2,1,6,5,4,3,7,za,zb,d_db_sm,d_db_anom)
c---  case d-g
         call wwamps(7,1,6,5,4,3,2,za,zb,d_g_sm,d_g_anom)
c---  case g-d
         call wwamps(7,2,6,5,4,3,1,za,zb,g_d_sm,g_d_anom)
      endif

      j=idpart1
      k=idpart2

      jk=max(j,k)
      realave=xn*aveqq
      if (j .eq. 0 .or. k .eq. 0) then
         jk=j+k
         realave=xn*aveqg
      endif
      do polg=1,2
         do polq=1,2
c---sum is over diagram type t,s(Z),e,n,s(photon)
            do jtype=1,5
               if (j .lt. 0 .and. tau(jk) .eq. -1d0 .and. k .ne. 0) then
                  amp_sm(jtype)=db_d_sm(jtype,polg,polq)
                  amp_anom(jtype)=db_d_anom(jtype,polg,polq)
               elseif(j .lt. 0 .and. tau(jk) .eq.  1d0 .and.
     &                 k .ne. 0) then
                  amp_sm(jtype)=ub_u_sm(jtype,polg,polq)
                  amp_anom(jtype)=ub_u_anom(jtype,polg,polq)
               elseif(j .gt. 0 .and. tau(jk) .eq. -1d0 .and.
     &                 k .ne. 0) then
                  amp_sm(jtype)=d_db_sm(jtype,polg,polq)
                  amp_anom(jtype)=d_db_anom(jtype,polg,polq)
               elseif(j .gt. 0 .and. tau(jk) .eq.  1d0 .and.
     &                 k .ne. 0) then
                  amp_sm(jtype)=u_ub_sm(jtype,polg,polq)
                  amp_anom(jtype)=u_ub_anom(jtype,polg,polq)
               elseif(j .eq. 0 .and. tau(jk) .eq.  1d0 .and.
     &                 jk .gt. 0) then
                  amp_sm(jtype)=g_u_sm(jtype,polg,polq)
                  amp_anom(jtype)=g_u_anom(jtype,polg,polq)
               elseif(j .eq. 0 .and. tau(jk) .eq. -1d0 .and.
     &                 jk .gt. 0) then
                  amp_sm(jtype)=g_d_sm(jtype,polg,polq)
                  amp_anom(jtype)=g_d_anom(jtype,polg,polq)
               elseif(j .eq. 0 .and. tau(jk) .eq. -1d0 .and.
     &                 jk .lt. 0) then
                  amp_sm(jtype)=g_ub_sm(jtype,polg,polq)
                  amp_anom(jtype)=g_ub_anom(jtype,polg,polq)
               elseif(j .eq. 0 .and. tau(jk) .eq.  1d0 .and.
     &                 jk .lt. 0) then
                  amp_sm(jtype)=g_db_sm(jtype,polg,polq)
                  amp_anom(jtype)=g_db_anom(jtype,polg,polq)
               elseif(k .eq. 0 .and. tau(jk) .eq.  1d0 .and.
     &                 jk .gt. 0) then
                  amp_sm(jtype)=u_g_sm(jtype,polg,polq)
                  amp_anom(jtype)=u_g_anom(jtype,polg,polq)
               elseif(k .eq. 0 .and. tau(jk) .eq. -1d0 .and.
     &                 jk .gt. 0) then
                  amp_sm(jtype)=d_g_sm(jtype,polg,polq)
                  amp_anom(jtype)=d_g_anom(jtype,polg,polq)
               elseif(k .eq. 0 .and. tau(jk) .eq. -1d0 .and.
     &                 jk .lt. 0) then
                  amp_sm(jtype)=ub_g_sm(jtype,polg,polq)
                  amp_anom(jtype)=ub_g_anom(jtype,polg,polq)
               elseif(k .eq. 0 .and. tau(jk) .eq.  1d0 .and.
     &                 jk .lt. 0) then 
                  amp_sm(jtype)=db_g_sm(jtype,polg,polq)
                  amp_anom(jtype)=db_g_anom(jtype,polg,polq)
               endif
            enddo

C---tjk is equal to 2 (u,c) or 1 (d,s,b)
            tjk=2-mod(abs(jk),2)

            A_sm(polg,polq)=dcmplx(fac)
     .           *(ct(polq,tjk)*amp_sm(1)+cs_z(polq,tjk)*amp_sm(2)
     .           +cs_g(polq,tjk)*amp_sm(5)+cz(polq,tjk)*amp_sm(3)
     .           +cgamz(polq,tjk)*amp_sm(4))
            A_anom(polg,polq)=dcmplx(fac)
     .           *(ct(polq,tjk)*amp_anom(1)+cs_z(polq,tjk)*amp_anom(2)
     .           +cs_g(polq,tjk)*amp_anom(5)+cz(polq,tjk)*amp_anom(3)
     .           +cgamz(polq,tjk)*amp_anom(4)) ! from TGC
            A_anom(polg,polq)=A_anom(polg,polq)+dcmplx(fac)
     .           *(cs_z_anom(polq,tjk)*amp_sm(2)
     .           +cz_anom(polq,tjk)*amp_sm(3)
     .           +cgamz_anom(polq,tjk)*amp_sm(4)) ! from anomalous Zqq coupling
            A_anom(polg,polq)=A_anom(polg,polq)+dcmplx(fac)
     .           *2d0*delgQL_w*ct(polq,tjk)*amp_sm(1) ! from anomalous Wqq' coupling
            A_anom2(polg,polq)=dcmplx(fac)
     .           *cs_z_anom(polq,tjk)*amp_anom(2) ! 1/lambdaEFT**4 contribution
            A_anom2(polg,polq)=A_anom2(polg,polq)+dcmplx(fac)
     .           *delgQL_w**2*ct(polq,tjk)*amp_sm(1)

         enddo
      enddo



      msq=fac1*realave*
     &     (cdabs(A_sm(mplus,minus))**2+cdabs(A_sm(minus,minus))**2
     &     +cdabs(A_sm(mplus,mplus))**2+cdabs(A_sm(minus,mplus))**2)
      if(nEFT.gt.0) then
         msq = msq +
     &        2d0*fac1*realave*(
     &        dble(A_sm(mplus,minus)*dconjg(A_anom(mplus,minus))) +
     &        dble(A_sm(minus,minus)*dconjg(A_anom(minus,minus))) +
     &        dble(A_sm(mplus,mplus)*dconjg(A_anom(mplus,mplus))) +
     &        dble(A_sm(minus,mplus)*dconjg(A_anom(minus,mplus))))
         if(nEFT.gt.1) then
            msq = msq +
     &           fac1*realave*
     &           (cdabs(A_anom(mplus,minus))**2+
     &           cdabs(A_anom(minus,minus))**2+
     &           cdabs(A_anom(mplus,mplus))**2+
     &           cdabs(A_anom(minus,mplus))**2)
            msq = msq +
     &           2d0*fac1*realave*(
     &           dble(A_sm(mplus,minus)*dconjg(A_anom2(mplus,minus))) +
     &           dble(A_sm(minus,minus)*dconjg(A_anom2(minus,minus))) +
     &           dble(A_sm(mplus,mplus)*dconjg(A_anom2(mplus,mplus))) +
     &           dble(A_sm(minus,mplus)*dconjg(A_anom2(minus,mplus)))) ! contribution from (TGC x anomalous Zqq) + Wqq'**2
            if(nEFT.gt.2) then
               msq = msq +
     &              2d0*fac1*realave*(
     &              dble(A_anom(mplus,minus)
     &              *dconjg(A_anom2(mplus,minus))) +
     &              dble(A_anom(minus,minus)
     &              *dconjg(A_anom2(minus,minus))) +
     &              dble(A_anom(mplus,mplus)
     &              *dconjg(A_anom2(mplus,mplus))) +
     &              dble(A_anom(minus,mplus)
     &              *dconjg(A_anom2(minus,mplus)))) ! inteference between (TGC + Zqq + Wqq') and (TGC x Zqq + Wqq'**2)
               if(nEFT.gt.3) then ! full matrix element squared
                  msq = msq + fac1*realave*
     &                 (cdabs(A_anom2(mplus,minus))**2+
     &                 cdabs(A_anom2(minus,minus))**2+
     &                 cdabs(A_anom2(mplus,mplus))**2+
     &                 cdabs(A_anom2(minus,mplus))**2)
               endif
            endif
         endif
      endif

      return

      end

      
      




