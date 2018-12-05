      subroutine qqb_ww(p,msq)
      implicit none
C----Author R.K.Ellis December 1998
C----modified by JMC to include supplementary diagrams February 1999
c----Matrix element for WW production
c----in the notation of DKS
C----averaged over initial colours and spins
C----massless final state particles
c     q(-p1)+qbar(-p2)-->q'(p5)+bar{q'}(p6)+n(p3)+ebar(p4)
c--- note that non-leptonic W decays do not include scattering diagrams

#include "constants.h"
#include "sprods_com.h"
#include "zprods_decl.h"
#include "zwcouple.h"
#include "zwcouple_anom.h"
#include "ewcharge.h"
#include "anomcoup.h"
#include "vvsettings.h"

      double precision msq,p(mxpart,4),qdks(mxpart,4),oqdks(mxpart,4)
      double complex prop12,prop34,prop56
      double complex AWW_sm(2),AWW_anom(2),a6treea,A6b_1,A6b_2,A6b_3
      double complex AWW_anom2(2)
      double complex Fa123456,Fa213456,Fb123456_sm,Fb213456_sm
      double complex Fa126543,Fa216543,Fb126543_sm,Fb216543_sm
      double complex Fb123456_z_anom,Fb213456_z_anom
      double complex Fb126543_z_anom,Fb216543_z_anom
      double complex Fb123456_g_anom,Fb213456_g_anom
      double complex Fb126543_g_anom,Fb216543_g_anom
      double complex Fa341256,Fa653421,Fa346521,Fa651243
      double complex Fa342156,Fa653412,Fa346512,Fa652143
      double complex cs_z(2,2),cs_g(2,2),cgamz(2,2),cz(2,2)
      double complex cs_z_anom(2,2),cgamz_anom(2,2),cz_anom(2,2)
      save oqdks,prop12,prop34,prop56,Fa123456,Fa213456,Fb123456_sm,
     1     Fb213456_sm,Fa126543,Fa216543,Fb126543_sm,Fb216543_sm,
     2     Fb123456_z_anom,Fb213456_z_anom,Fb126543_z_anom,
     3     Fb216543_z_anom,Fb123456_g_anom,Fb213456_g_anom,
     4     Fb126543_g_anom,Fb216543_g_anom,Fa341256,Fa653421,
     5     Fa346521,Fa651243,Fa342156,Fa653412,Fa346512,Fa652143,
     6     cs_z,cs_g,cgamz,cz,
     7     cs_z_anom,cgamz_anom,cz_anom
      double precision fac,xfac
      integer j,k,jk,tjk,minus,mplus
      data minus,mplus/1,2/
      logical recalc
      double complex cpropfac
      external cpropfac

      
      fac=gw**8*aveqq*xn 
c--set msq=0 to initalize
      msq=0d0

c     -- to compare with MadGraph and MCFM      
c      zerowidth =.false.

C----Change the momenta to DKS notation 
c   We have --- f(p1) + f'(p2)-->mu^-(p5)+nubar(p6)+e^+(p4)+nu(p3)
c   DKS have--- ubar(q1)+u(q2)-->mu^-(q3)+nubar(q4)+e^+(q5)+nu(q6)

      do j=1,4
         qdks(1,j)=p(1,j)
         qdks(2,j)=p(2,j)
         qdks(3,j)=p(5,j)
         qdks(4,j)=p(6,j)
         qdks(5,j)=p(4,j)
         qdks(6,j)=p(3,j)
      enddo

      recalc = .false.
      do j=1,4
         do k=1,6
            if(qdks(k,j).ne.oqdks(k,j)) then
               recalc=.true.
            endif
         enddo
      enddo
      if(recalc) oqdks = qdks

      if(recalc) then
         call spinoru(6,qdks,za,zb)
c--   s returned from sprod (common block) is 2*dot product

C     calculate propagators 
c      prop12=s(1,2)/dcmplx(s(1,2)-zmass**2,zmass*zwidth)
c      prop34=s(3,4)/dcmplx(s(3,4)-wmass**2,wmass*wwidth)
c      prop56=s(5,6)/dcmplx(s(5,6)-wmass**2,wmass*wwidth)
         prop12=cpropfac(s(1,2),zmass,zwidth)
         prop34=cpropfac(s(3,4),wmass,wwidth)
         prop56=cpropfac(s(5,6),wmass,wwidth)
         
c-- couplings with or without photon pole
         do j=1,2
            cs_z(minus,j)=+mp(j)*l(j)*sin2w*prop12
c            cs_z(mplus,j)=-mp(j)*2d0*Q(j)*xw*prop12
            cs_z(mplus,j)=+mp(j)*r(j)*sin2w*prop12
            cs_g(minus,j)=+mp(j)*2d0*Q(j)*xw
            cs_g(mplus,j)=+mp(j)*2d0*Q(j)*xw
            if (.not.dronly) then
               cz(minus,j)=2d0*xw*ln*L(j)*prop12
               cz(mplus,j)=2d0*xw*ln*R(j)*prop12
               cgamz(minus,j)=2d0*xw*(-Q(j)+le*L(j)*prop12)
               cgamz(mplus,j)=2d0*xw*(-Q(j)+le*R(j)*prop12)
            endif
         enddo

c--- apply a dipole form factor to anomalous couplings
c         xfac=1d0/(1d0+s(1,2)/(tevscale*1d3)**2)**2 ! (deactivated for now, julien)
         xfac = 1d0
         xdelg1_z=xfac*delg1_z
         xdelg1_g=xfac*delg1_g
         xdelk_z=xfac*delk_z
         xdelk_g=xfac*delk_g
         xlambda_z=xfac*lambda_z
         xlambda_g=xfac*lambda_g

c--   anomalous Z-quark-quark couplings (new julien)
         do j=1,2
            cs_z_anom(minus,j)=+mp(j)*l_anom(j)*sin2w*prop12
            cs_z_anom(mplus,j)=+mp(j)*r_anom(j)*sin2w*prop12
            if (.not.dronly) then
               cz_anom(minus,j)=2d0*xw*ln*L_anom(j)*prop12
               cz_anom(mplus,j)=2d0*xw*ln*R_anom(j)*prop12
               cgamz_anom(minus,j)=2d0*xw*le*L_anom(j)*prop12
               cgamz_anom(mplus,j)=2d0*xw*le*R_anom(j)*prop12
            endif
         enddo
c--   
      
c---case dbar-d and d-dbar
   
         Fa126543=A6treea(1,2,6,5,4,3,za,zb)
         Fa216543=A6treea(2,1,6,5,4,3,za,zb)
         Fa123456=A6treea(1,2,3,4,5,6,za,zb)
         Fa213456=A6treea(2,1,3,4,5,6,za,zb)
         
         call A6treeb_anom(1,2,3,4,5,6,za,zb,A6b_1,A6b_2,A6b_3)
         Fb123456_sm     = 2.d0*(A6b_1+A6b_2)
         Fb123456_z_anom = A6b_1*(xdelg1_z+xdelk_z)
     .        +2.d0*A6b_2*xdelg1_z+A6b_3*(xlambda_z/wmass**2)
         Fb123456_g_anom = A6b_1*(xdelg1_g+xdelk_g)
     .        +2.d0*A6b_2*xdelg1_g+A6b_3*(xlambda_g/wmass**2)
         Fb126543_sm     = -Fb123456_sm
         Fb126543_z_anom = -Fb123456_z_anom
         Fb126543_g_anom = -Fb123456_g_anom
         call A6treeb_anom(2,1,3,4,5,6,za,zb,A6b_1,A6b_2,A6b_3)
         Fb213456_sm     = 2.d0*(A6b_1+A6b_2)
         Fb213456_z_anom = A6b_1*(xdelg1_z+xdelk_z)
     .        +2.d0*A6b_2*xdelg1_z+A6b_3*(xlambda_z/wmass**2)
         Fb213456_g_anom = A6b_1*(xdelg1_g+xdelk_g)
     .        +2.d0*A6b_2*xdelg1_g+A6b_3*(xlambda_g/wmass**2)
         Fb216543_sm     = -Fb213456_sm
         Fb216543_z_anom = -Fb213456_z_anom
         Fb216543_g_anom = -Fb213456_g_anom

         if (.not.dronly) then
c---for supplementary diagrams.
            Fa341256=A6treea(3,4,1,2,5,6,za,zb)
            Fa653421=A6treea(6,5,3,4,2,1,za,zb)
            Fa346521=A6treea(3,4,6,5,2,1,za,zb)
            Fa651243=A6treea(6,5,1,2,4,3,za,zb)
            Fa342156=A6treea(3,4,2,1,5,6,za,zb)
            Fa653412=A6treea(6,5,3,4,1,2,za,zb)
            Fa346512=A6treea(3,4,6,5,1,2,za,zb)
            Fa652143=A6treea(6,5,2,1,4,3,za,zb)
         endif
      endif
c End recalc


      j=idpart1
      k=idpart2

      k=-j

      jk=max(j,k)

c--assign values
c---Remember that base process is ub-u so this has the natural 123456 order
      if (j .gt. 0) then
          if         (tau(jk) .eq. +1d0) then
            AWW_sm(minus)=(Fa213456+(cs_z(minus,2)+cs_g(minus,2))*
     .            Fb213456_sm)*prop56*prop34
            AWW_sm(mplus)=(cs_z(mplus,2)+cs_g(mplus,2))*
     .           Fb123456_sm*prop56*prop34
            AWW_anom(minus)=(cs_z(minus,2)*Fb213456_z_anom
     .           +cs_g(minus,2)*Fb213456_g_anom)*prop56*prop34 ! from TGC
            AWW_anom(minus)=AWW_anom(minus)
     .           +cs_z_anom(minus,2)*Fb213456_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWW_anom(minus)=AWW_anom(minus)
     .           +2d0*delgQL_w*Fa213456*prop56*prop34          ! from anomalous Wqq' coupling
            AWW_anom(mplus)=(cs_z(mplus,2)*Fb123456_z_anom
     .           +cs_g(mplus,2)*Fb123456_g_anom)*prop56*prop34 ! from TGC
            AWW_anom(mplus)=AWW_anom(mplus)
     .           +cs_z_anom(mplus,2)*Fb123456_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWW_anom2(minus)=
     .           cs_z_anom(minus,2)*Fb213456_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            AWW_anom2(minus)=AWW_anom2(minus)
     .           +delgQL_w**2*Fa213456*prop56*prop34
            AWW_anom2(mplus)=
     .           cs_z_anom(mplus,2)*Fb123456_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
          elseif     (tau(jk) .eq. -1d0) then
            AWW_sm(minus)=(Fa216543+(cs_z(minus,1)+cs_g(minus,1))*
     .            Fb216543_sm)*prop56*prop34
            AWW_sm(mplus)=(cs_z(mplus,1)+cs_g(mplus,1))*
     .           Fb126543_sm*prop56*prop34
            AWW_anom(minus)=(cs_z(minus,1)*Fb216543_z_anom
     .           +cs_g(minus,1)*Fb216543_g_anom)*prop56*prop34 ! from TGC
            AWW_anom(minus)=AWW_anom(minus)
     .           +cs_z_anom(minus,1)*Fb216543_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWW_anom(minus)=AWW_anom(minus)
     .           +2d0*delgQL_w*Fa216543*prop56*prop34          ! from anomalous Wqq' coupling
            AWW_anom(mplus)=(cs_z(mplus,1)*Fb126543_z_anom
     .           +cs_g(mplus,1)*Fb126543_g_anom)*prop56*prop34 ! from TGC
            AWW_anom(mplus)=AWW_anom(mplus)
     .           +cs_z_anom(mplus,1)*Fb126543_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWW_anom2(minus)=
     .           cs_z_anom(minus,1)*Fb216543_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            AWW_anom2(minus)=AWW_anom2(minus)
     .           +delgQL_w**2*Fa216543*prop56*prop34
            AWW_anom2(mplus)=
     .           cs_z_anom(mplus,1)*Fb126543_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
          endif
      elseif (j .lt. 0) then
          if     (tau(jk) .eq. +1d0) then
            AWW_sm(minus)=(Fa123456+(cs_z(minus,2)+cs_g(minus,2))*
     .            Fb123456_sm)*prop56*prop34
            AWW_sm(mplus)=(cs_z(mplus,2)+cs_g(mplus,2))*
     .           Fb213456_sm*prop56*prop34
            AWW_anom(minus)=(cs_z(minus,2)*Fb123456_z_anom
     .           +cs_g(minus,2)*Fb123456_g_anom)*prop56*prop34 ! from TGC
            AWW_anom(minus)=AWW_anom(minus)
     .           +cs_z_anom(minus,2)*Fb123456_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWW_anom(minus)=AWW_anom(minus)
     .           +2d0*delgQL_w*Fa123456*prop56*prop34          ! from anomalous Wqq' coupling
            AWW_anom(mplus)=(cs_z(mplus,2)*Fb213456_z_anom
     .           +cs_g(mplus,2)*Fb213456_g_anom)*prop56*prop34 ! from TGC
            AWW_anom(mplus)=AWW_anom(mplus)
     .           +cs_z_anom(mplus,2)*Fb213456_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWW_anom2(minus)=
     .           cs_z_anom(minus,2)*Fb123456_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            AWW_anom2(minus)=AWW_anom2(minus)
     .           +delgQL_w**2*Fa123456*prop56*prop34
            AWW_anom2(mplus)=
     .           cs_z_anom(mplus,2)*Fb213456_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution

          elseif (tau(jk) .eq. -1d0) then
            AWW_sm(minus)=(Fa126543+(cs_z(minus,1)+cs_g(minus,1))*
     .            Fb126543_sm)*prop56*prop34
            AWW_sm(mplus)=(cs_z(mplus,1)+cs_g(mplus,1))*
     .           Fb216543_sm*prop56*prop34
            AWW_anom(minus)=(cs_z(minus,1)*Fb126543_z_anom
     .           +cs_g(minus,1)*Fb126543_g_anom)*prop56*prop34 ! from TGC
            AWW_anom(minus)=AWW_anom(minus)
     .           +cs_z_anom(minus,1)*Fb126543_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWW_anom(minus)=AWW_anom(minus)
     .           +2d0*delgQL_w*Fa126543*prop56*prop34          ! from anomalous Wqq' coupling
            AWW_anom(mplus)=(cs_z(mplus,1)*Fb216543_z_anom
     .           +cs_g(mplus,1)*Fb216543_g_anom)*prop56*prop34 ! from TGC
            AWW_anom(mplus)=AWW_anom(mplus)
     .           +cs_z_anom(mplus,1)*Fb216543_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWW_anom2(minus)=
     .           cs_z_anom(minus,1)*Fb126543_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            AWW_anom2(minus)=AWW_anom2(minus)
     .           +delgQL_w**2*Fa126543*prop56*prop34
            AWW_anom2(mplus)=
     .           cs_z_anom(mplus,1)*Fb216543_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
          endif
      endif

     
      if (.not.dronly) then
c---we need supplementary diagrams for gauge invariance.
C---tjk is equal to 2 (u,c) or 1 (d,s,b)
      tjk=2-mod(abs(jk),2)     
      if (j .gt. 0) then
          AWW_sm(minus)=AWW_sm(minus)
     .              +cgamz(minus,tjk)*(Fa342156*prop56+Fa653412*prop34)
     .                 +cz(minus,tjk)*(Fa346512*prop56+Fa652143*prop34)
          AWW_sm(mplus)=AWW_sm(mplus)
     .              +cgamz(mplus,tjk)*(Fa341256*prop56+Fa653421*prop34)
     .                 +cz(mplus,tjk)*(Fa346521*prop56+Fa651243*prop34)
          AWW_anom(minus)=AWW_anom(minus)
     .         +cgamz_anom(minus,tjk)*(Fa342156*prop56+Fa653412*prop34)
     .            +cz_anom(minus,tjk)*(Fa346512*prop56+Fa652143*prop34) ! from anomalous Zqq coupling
          AWW_anom(mplus)=AWW_anom(mplus)
     .         +cgamz_anom(mplus,tjk)*(Fa341256*prop56+Fa653421*prop34)
     .            +cz_anom(mplus,tjk)*(Fa346521*prop56+Fa651243*prop34) ! from anomalous Zqq coupling
      elseif (j .lt. 0) then
          AWW_sm(minus)=AWW_sm(minus)
     .             +cgamz(minus,tjk)*(Fa341256*prop56+Fa653421*prop34)
     .                +cz(minus,tjk)*(Fa346521*prop56+Fa651243*prop34)
          AWW_sm(mplus)=AWW_sm(mplus)
     .             +cgamz(mplus,tjk)*(Fa342156*prop56+Fa653412*prop34)
     .                +cz(mplus,tjk)*(Fa346512*prop56+Fa652143*prop34)
          AWW_anom(minus)=AWW_anom(minus)
     .         +cgamz_anom(minus,tjk)*(Fa341256*prop56+Fa653421*prop34)
     .            +cz_anom(minus,tjk)*(Fa346521*prop56+Fa651243*prop34) ! from anomalous Zqq coupling
          AWW_anom(mplus)=AWW_anom(mplus)
     .         +cgamz_anom(mplus,tjk)*(Fa342156*prop56+Fa653412*prop34)
     .            +cz_anom(mplus,tjk)*(Fa346512*prop56+Fa652143*prop34) ! from anomalous Zqq coupling
      endif
      endif

      msq = fac*(cdabs(AWW_sm(minus))**2+cdabs(AWW_sm(mplus))**2)
      if(nEFT.gt.0) then
         msq = msq +
     &        2d0*fac*(dble(AWW_sm(minus)*dconjg(AWW_anom(minus))) +
     &        dble(AWW_sm(mplus)*dconjg(AWW_anom(mplus))))
         if(nEFT.gt.1) then
            msq = msq +
     &           fac*(cdabs(AWW_anom(minus))**2+
     &           cdabs(AWW_anom(mplus))**2)
            msq = msq +
     &           2d0*fac*(dble(AWW_sm(minus)*dconjg(AWW_anom2(minus))) +
     &           dble(AWW_sm(mplus)*dconjg(AWW_anom2(mplus)))) ! contribution from (TGC x anomalous Zqq) + Wqq'**2
            if(nEFT.gt.2) then
               msq = msq + 2d0*fac*(
     &              dble(AWW_anom(minus)*dconjg(AWW_anom2(minus))) +
     &              dble(AWW_anom(mplus)*dconjg(AWW_anom2(mplus)))) ! inteference between (TGC + Zqq + Wqq') and (TGC x Zqq + Wqq'**2)
               if(nEFT.gt.3) then ! full matrix element squared
                  msq = msq + 
     &                 fac*(cdabs(AWW_anom2(minus))**2+
     &                 cdabs(AWW_anom2(mplus))**2)
               endif
            endif
         endif
      endif

      return
      end


