      subroutine qqb_ww_v(p,msqv)
      implicit none
C----Author R.K.Ellis December 1998
C----modified by JMC to include supplementary diagrams February 1999
c----Matrix element for WW production
c----in the notation of DKS
C----averaged over initial colours and spins
C----massless b quarks
c     q(-p1)+qbar(-p2)-->q'(p5)+bar{q'}(p6)+n(p3)+ebar(p4)
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
      double precision msq,msqv,p(mxpart,4),qdks(mxpart,4),
     1     oqdks(mxpart,4),facnlo
      double complex AWWM_sm,AWWP_sm,BWWM_sm,BWWP_sm
      double complex AWWM_anom,AWWP_anom,BWWM_anom,BWWP_anom
      double complex AWWM_anom2,AWWP_anom2,BWWM_anom2,BWWP_anom2
      double complex prop12,prop34,prop56
      double complex a6treea,a6loopa,A6b_1,A6b_2,A6b_3
      double complex Vpole,Vpole12,suppl
      double complex Fa123456,Fa213456,Fb123456_sm,Fb213456_sm
      double complex Fa126543,Fa216543,Fb126543_sm,Fb216543_sm
      double complex Fb123456_z_anom,Fb213456_z_anom
      double complex Fb126543_z_anom,Fb216543_z_anom
      double complex Fb123456_g_anom,Fb213456_g_anom
      double complex Fb126543_g_anom,Fb216543_g_anom
      double complex La123456,La213456,Lb123456_sm,Lb213456_sm
      double complex La126543,La216543,Lb126543_sm,Lb216543_sm
      double complex Lb123456_z_anom,Lb213456_z_anom
      double complex Lb126543_z_anom,Lb216543_z_anom
      double complex Lb123456_g_anom,Lb213456_g_anom
      double complex Lb126543_g_anom,Lb216543_g_anom
      double complex Fa341256,Fa653421,Fa346521,Fa651243
      double complex Fa342156,Fa653412,Fa346512,Fa652143
      double complex cl_z(2),cr_z(2),cl_g(2),cr_g(2)
      double complex clgamz(2),crgamz(2),clz(2),crz(2)
      double complex cl_z_anom(2),cr_z_anom(2)
      double complex clgamz_anom(2),crgamz_anom(2)
      double complex clz_anom(2),crz_anom(2)
      save Fa123456,Fa213456,Fb123456_sm,Fb213456_sm,
     1     Fa126543,Fa216543,Fb126543_sm,Fb216543_sm,
     2     Fb123456_z_anom,Fb213456_z_anom,Fb126543_z_anom,
     3     Fb216543_z_anom,Fb123456_g_anom,Fb213456_g_anom,
     4     Fb126543_g_anom,Fb216543_g_anom,
     5     La123456,La213456,Lb123456_sm,Lb213456_sm,
     6     La126543,La216543,Lb126543_sm,Lb216543_sm,
     7     Lb123456_z_anom,Lb213456_z_anom,Lb126543_z_anom,
     8     Lb216543_z_anom,Lb123456_g_anom,Lb213456_g_anom,
     9     Lb126543_g_anom,Lb216543_g_anom,
     &     Fa341256,Fa653421,Fa346521,Fa651243,
     &     Fa342156,Fa653412,Fa346512,Fa652143,Vpole12,
     &     cl_z,cr_z,cl_g,cr_g,clgamz,crgamz,clz,crz,
     &     prop12,prop34,prop56,oqdks,
     &     cl_z_anom,cr_z_anom,clgamz_anom,
     &     crgamz_anom,clz_anom,crz_anom
      double precision FAC,xfac
      integer j,k,jk
      logical recalc
      double complex cpropfac
      external cpropfac

      fac=gw**8*aveqq*xn
      facnlo=ason2pi*cf
c--- set msqv=0 to initalize

      msqv=0d0
      
c--- calculate the lowest order matrix element
      call qqb_ww(p,msq)

c--- Change the momenta to DKS notation 
c    We have --- f(p1) + f'(p2)-->mu^-(p5)+nubar(p6)+e^+(p4)+nu(p3)
c    DKS have--- ubar(q1)+u(q2)-->mu^-(q3)+nubar(q4)+e^+(q5)+nu(q6)

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
c-- s returned from sprod (common block) is 2*dot product
         call spinoru(6,qdks,za,zb)

c--   calculate propagators
c      prop12=s(1,2)/dcmplx(s(1,2)-zmass**2,zmass*zwidth)
c      prop34=s(3,4)/dcmplx(s(3,4)-wmass**2,wmass*wwidth)
c      prop56=s(5,6)/dcmplx(s(5,6)-wmass**2,wmass*wwidth)
         prop12=cpropfac(s(1,2),zmass,zwidth)
         prop34=cpropfac(s(3,4),wmass,wwidth)
         prop56=cpropfac(s(5,6),wmass,wwidth)
      
c-- couplings with or without photon pole
         do j=1,2
            cl_z(j)=+mp(j)*l(j)*sin2w*prop12
c            cr_z(j)=-mp(j)*2d0*Q(j)*xw*prop12
            cr_z(j)=+mp(j)*r(j)*sin2w*prop12
            cl_g(j)=+mp(j)*2d0*Q(j)*xw
            cr_g(j)=+mp(j)*2d0*Q(j)*xw
            if (.not.dronly) then
               clgamz(j)=two*xw*(-Q(j)+le*L(j)*prop12)
               crgamz(j)=two*xw*(-Q(j)+le*R(j)*prop12)
               clz(j)=two*xw*ln*L(j)*prop12
               crz(j)=two*xw*ln*R(j)*prop12
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
            cl_z_anom(j)=+mp(j)*l_anom(j)*sin2w*prop12
            cr_z_anom(j)=+mp(j)*r_anom(j)*sin2w*prop12
            if (.not.dronly) then
               clz_anom(j)=two*xw*ln*L_anom(j)*prop12
               crz_anom(j)=two*xw*ln*R_anom(j)*prop12
               clgamz_anom(j)=two*xw*le*L_anom(j)*prop12
               crgamz_anom(j)=two*xw*le*R_anom(j)*prop12
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
     
c      Fb123456=A6treeb(1,2,3,4,5,6,za,zb)
c      Fb126543=-Fb123456
c      Fb213456=A6treeb(2,1,3,4,5,6,za,zb)
c      Fb216543=-Fb213456

         La126543=A6loopa(1,2,6,5,4,3,za,zb)
         La216543=A6loopa(2,1,6,5,4,3,za,zb)
         La123456=A6loopa(1,2,3,4,5,6,za,zb)
         La213456=A6loopa(2,1,3,4,5,6,za,zb)
         
c--- loop for a6b is simply tree*Vpole
         Vpole12=Vpole(s(1,2))
         Lb123456_sm=Vpole12*Fb123456_sm
         Lb213456_sm=Vpole12*Fb213456_sm
         Lb126543_sm=Vpole12*Fb126543_sm
         Lb216543_sm=Vpole12*Fb216543_sm
         Lb123456_z_anom=Vpole12*Fb123456_z_anom
         Lb213456_z_anom=Vpole12*Fb213456_z_anom
         Lb126543_z_anom=Vpole12*Fb126543_z_anom
         Lb216543_z_anom=Vpole12*Fb216543_z_anom
         Lb123456_g_anom=Vpole12*Fb123456_g_anom
         Lb213456_g_anom=Vpole12*Fb213456_g_anom
         Lb126543_g_anom=Vpole12*Fb126543_g_anom
         Lb216543_g_anom=Vpole12*Fb216543_g_anom

c      Lb123456=A6loopb(1,2,3,4,5,6,za,zb)
c      Lb213456=A6loopb(2,1,3,4,5,6,za,zb)
c      Lb126543=A6loopb(1,2,6,5,4,3,za,zb)
c      Lb216543=A6loopb(2,1,6,5,4,3,za,zb)

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

c---loop diagrams just tree*Vpole since they're all triangle-type
            Vpole12=Vpole(s(1,2))
         endif
      endif


      j=idpart1
      k=idpart2

      jk=max(j,k)

c--assign values
      if (j .gt. 0) then
         if (tau(jk) .eq. +1d0) then
            AWWM_sm=(Fa213456+(cl_z(2)+cl_g(2))*Fb213456_sm)*
     .           prop56*prop34
            AWWM_anom=(cl_z(2)*Fb213456_z_anom
     .           +cl_g(2)*Fb213456_g_anom)*prop56*prop34 ! from TGC
            AWWM_anom=AWWM_anom
     .           +cl_z_anom(2)*Fb213456_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWWM_anom=AWWM_anom
     .           +2d0*delgQL_w*Fa213456*prop56*prop34    ! from anomalous Wqq' coupling
            AWWM_anom2=
     .           cl_z_anom(2)*Fb213456_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            AWWM_anom2=AWWM_anom2
     .           +delgQL_w**2*Fa213456*prop56*prop34
            AWWP_sm=(cr_z(2)+cr_g(2))*Fb123456_sm*prop56*prop34
            AWWP_anom=(cr_z(2)*Fb123456_z_anom
     .           +cr_g(2)*Fb123456_g_anom)*prop56*prop34 ! from TGC
            AWWP_anom=AWWP_anom
     .           +cr_z_anom(2)*Fb123456_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWWP_anom2=
     .           cr_z_anom(2)*Fb123456_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            BWWM_sm=(La213456+(cl_z(2)+cl_g(2))*Lb213456_sm)*
     .           prop56*prop34
            BWWM_anom=(cl_z(2)*Lb213456_z_anom
     .           +cl_g(2)*Lb213456_g_anom)*prop56*prop34 ! from TGC
            BWWM_anom=BWWM_anom
     .           +cl_z_anom(2)*Lb213456_sm*prop56*prop34 ! from anomalous Zqq coupling
            BWWM_anom=BWWM_anom
     .           +2d0*delgQL_w*La213456*prop56*prop34    ! from anomalous Wqq' coupling
            BWWM_anom2=
     .           cl_z_anom(2)*Lb213456_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            BWWM_anom2=BWWM_anom2
     .           +delgQL_w**2*La213456*prop56*prop34
            BWWP_sm=(cr_z(2)+cr_g(2))*Lb123456_sm*prop56*prop34
            BWWP_anom=(cr_z(2)*Lb123456_z_anom
     .           +cr_g(2)*Lb123456_g_anom)*prop56*prop34 ! from TGC
            BWWP_anom=BWWP_anom
     .           +cr_z_anom(2)*Lb123456_sm*prop56*prop34 ! from anomalous Zqq coupling
            BWWP_anom2=
     .           cr_z_anom(2)*Lb123456_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
         elseif (tau(jk) .eq. -1d0) then
            AWWM_sm=(Fa216543+(cl_z(1)+cl_g(1))*Fb216543_sm)*
     .           prop56*prop34
            AWWM_anom=(cl_z(1)*Fb216543_z_anom
     .           +cl_g(1)*Fb216543_g_anom)*prop56*prop34 ! from TGC
            AWWM_anom=AWWM_anom
     .           +cl_z_anom(1)*Fb216543_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWWM_anom=AWWM_anom
     .           +2d0*delgQL_w*Fa216543*prop56*prop34    ! from anomalous Wqq' coupling
            AWWM_anom2=
     .           cl_z_anom(1)*Fb216543_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            AWWM_anom2=AWWM_anom2
     .           +delgQL_w**2*Fa216543*prop56*prop34
            AWWP_sm=(cr_z(1)+cr_g(1))*Fb126543_sm*prop56*prop34
            AWWP_anom=(cr_z(1)*Fb126543_z_anom
     .           +cr_g(1)*Fb126543_g_anom)*prop56*prop34 ! from TGC
            AWWP_anom=AWWP_anom
     .           +cr_z_anom(1)*Fb126543_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWWP_anom2=
     .           cr_z_anom(1)*Fb126543_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            BWWM_sm=(La216543+(cl_z(1)+cl_g(1))*Lb216543_sm)*
     .           prop56*prop34
            BWWM_anom=(cl_z(1)*Lb216543_z_anom
     .           +cl_g(1)*Lb216543_g_anom)*prop56*prop34 ! from TGC
            BWWM_anom=BWWM_anom
     .           +cl_z_anom(1)*Lb216543_sm*prop56*prop34 ! from anomalous Zqq coupling
            BWWM_anom=BWWM_anom
     .           +2d0*delgQL_w*La216543*prop56*prop34    ! from anomalous Wqq' coupling
            BWWM_anom2=
     .           cl_z_anom(1)*Lb216543_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            BWWM_anom2=BWWM_anom2
     .           +delgQL_w**2*La216543*prop56*prop34
            BWWP_sm=(cr_z(1)+cr_g(1))*Lb126543_sm*prop56*prop34
            BWWP_anom=(cr_z(1)*Lb126543_z_anom
     .           +cr_g(1)*Lb126543_g_anom)*prop56*prop34 ! from TGC
            BWWP_anom=BWWP_anom
     .           +cr_z_anom(1)*Lb126543_sm*prop56*prop34 ! from anomalous Zqq coupling
            BWWP_anom2=
     .           cr_z_anom(1)*Lb126543_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
         endif
      elseif (j .lt. 0) then
         if (tau(jk) .eq. +1d0) then
C---remember that this is the basic process, M refers to the helicity
c---of the outgoing quark
            AWWM_sm=(Fa123456+(cl_z(2)+cl_g(2))*Fb123456_sm)*
     .           prop56*prop34
            AWWM_anom=(cl_z(2)*Fb123456_z_anom
     .           +cl_g(2)*Fb123456_g_anom)*prop56*prop34 ! from TGC
            AWWM_anom=AWWM_anom
     .           +cl_z_anom(2)*Fb123456_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWWM_anom=AWWM_anom
     .           +2d0*delgQL_w*Fa123456*prop56*prop34    ! from anomalous Wqq' coupling
            AWWM_anom2=
     .           cl_z_anom(2)*Fb123456_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            AWWM_anom2=AWWM_anom2
     .           +delgQL_w**2*Fa123456*prop56*prop34
            AWWP_sm=(cr_z(2)+cr_g(2))*Fb213456_sm*prop56*prop34
            AWWP_anom=(cr_z(2)*Fb213456_z_anom
     .           +cr_g(2)*Fb213456_g_anom)*prop56*prop34 ! from TGC
            AWWP_anom=AWWP_anom
     .           +cr_z_anom(2)*Fb213456_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWWP_anom2=
     .           cr_z_anom(2)*Fb213456_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            BWWM_sm=(La123456+(cl_z(2)+cl_g(2))*Lb123456_sm)*
     .           prop56*prop34
            BWWM_anom=(cl_z(2)*Lb123456_z_anom
     .           +cl_g(2)*Lb123456_g_anom)*prop56*prop34 ! from TGC
            BWWM_anom=BWWM_anom
     .           +cl_z_anom(2)*Lb123456_sm*prop56*prop34 ! from anomalous Zqq coupling
            BWWM_anom=BWWM_anom
     .           +2d0*delgQL_w*La123456*prop56*prop34    ! from anomalous Wqq' coupling
            BWWM_anom2=
     .           cl_z_anom(2)*Lb123456_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            BWWM_anom2=BWWM_anom2
     .           +delgQL_w**2*La123456*prop56*prop34
            BWWP_sm=(cr_z(2)+cr_g(2))*Lb213456_sm*prop56*prop34
            BWWP_anom=(cr_z(2)*Lb213456_z_anom
     .           +cr_g(2)*Lb213456_g_anom)*prop56*prop34 ! from TGC
            BWWP_anom=BWWP_anom
     .           +cr_z_anom(2)*Lb213456_sm*prop56*prop34 ! from anomalous Zqq coupling
            BWWP_anom2=
     .           cr_z_anom(2)*Lb213456_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
         elseif (tau(jk) .eq. -1d0) then
            AWWM_sm=(Fa126543+(cl_z(1)+cl_g(1))*Fb126543_sm)*
     .           prop56*prop34
            AWWM_anom=(cl_z(1)*Fb126543_z_anom
     .           +cl_g(1)*Fb126543_g_anom)*prop56*prop34 ! from TGC
            AWWM_anom=AWWM_anom
     .           +cl_z_anom(1)*Fb126543_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWWM_anom=AWWM_anom
     .           +2d0*delgQL_w*Fa126543*prop56*prop34    ! from anomalous Wqq' coupling
            AWWM_anom2=
     .           cl_z_anom(1)*Fb126543_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            AWWM_anom2=AWWM_anom2
     .           +delgQL_w**2*Fa126543*prop56*prop34
            AWWP_sm=(cr_z(1)+cr_g(1))*Fb216543_sm*prop56*prop34
            AWWP_anom=(cr_z(1)*Fb216543_z_anom
     .           +cr_g(1)*Fb216543_g_anom)*prop56*prop34 ! from TGC
            AWWP_anom=AWWP_anom
     .           +cr_z_anom(1)*Fb216543_sm*prop56*prop34 ! from anomalous Zqq coupling
            AWWP_anom2=
     .           cr_z_anom(1)*Fb216543_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            BWWM_sm=(La126543+(cl_z(1)+cl_g(1))*Lb126543_sm)*
     .           prop56*prop34
            BWWM_anom=(cl_z(1)*Lb126543_z_anom
     .           +cl_g(1)*Lb126543_g_anom)*prop56*prop34 ! from TGC
            BWWM_anom=BWWM_anom
     .           +cl_z_anom(1)*Lb126543_sm*prop56*prop34 ! from anomalous Zqq coupling
            BWWM_anom=BWWM_anom
     .           +2d0*delgQL_w*La126543*prop56*prop34    ! from anomalous Wqq' coupling
            BWWM_anom2=
     .           cl_z_anom(1)*Lb126543_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
            BWWM_anom2=BWWM_anom2
     .           +delgQL_w**2*La126543*prop56*prop34
            BWWP_sm=(cr_z(1)+cr_g(1))*Lb216543_sm*prop56*prop34
            BWWP_anom=(cr_z(1)*Lb216543_z_anom
     .           +cr_g(1)*Lb216543_g_anom)*prop56*prop34 ! from TGC
            BWWP_anom=BWWP_anom
     .           +cr_z_anom(1)*Lb216543_sm*prop56*prop34 ! from anomalous Zqq coupling
            BWWP_anom2=
     .           cr_z_anom(1)*Lb216543_z_anom*prop56*prop34 ! 1/lambdaEFT**4 contribution
         endif
      endif
      if (.not.dronly) then
c---we need supplementary diagrams for gauge invariance.
      if     (j .gt. 0) then
          if     (tau(jk) .eq. +1d0) then
                   suppl=clgamz(2)*(Fa342156*prop56+Fa653412*prop34)
     .                  +clz(2)*(Fa346512*prop56+Fa652143*prop34)
                   AWWM_sm=AWWM_sm+suppl
                   BWWM_sm=BWWM_sm+suppl*Vpole12
                   suppl=
     .                  clgamz_anom(2)*(Fa342156*prop56+Fa653412*prop34)
     .                  +clz_anom(2)*(Fa346512*prop56+Fa652143*prop34)
                   AWWM_anom=AWWM_anom+suppl ! from anomalous Zqq coupling
                   BWWM_anom=BWWM_anom+suppl*Vpole12 ! from anomalous Zqq coupling
                   suppl=crgamz(2)*(Fa341256*prop56+Fa653421*prop34)
     .                  +crz(2)*(Fa346521*prop56+Fa651243*prop34)
                   AWWP_sm=AWWP_sm+suppl
                   BWWP_sm=BWWP_sm+suppl*Vpole12
                   suppl=
     .                  crgamz_anom(2)*(Fa341256*prop56+Fa653421*prop34)
     .                  +crz_anom(2)*(Fa346521*prop56+Fa651243*prop34)
                   AWWP_anom=AWWP_anom+suppl ! from anomalous Zqq coupling
                   BWWP_anom=BWWP_anom+suppl*Vpole12 ! from anomalous Zqq coupling
          elseif (tau(jk) .eq. -1d0) then
                   suppl=clgamz(1)*(Fa342156*prop56+Fa653412*prop34)
     .                  +clz(1)*(Fa346512*prop56+Fa652143*prop34)
c                   suppl=clgamz(1)*(Fa652143*prop34+Fa346512*prop56)
c     .                  +clz(1)*(Fa653412*prop34+Fa342156*prop56)
                   AWWM_sm=AWWM_sm+suppl
                   BWWM_sm=BWWM_sm+suppl*Vpole12
                   suppl=
     .                  clgamz_anom(1)*(Fa342156*prop56+Fa653412*prop34)
     .                  +clz_anom(1)*(Fa346512*prop56+Fa652143*prop34)
                   AWWM_anom=AWWM_anom+suppl ! from anomalous Zqq coupling
                   BWWM_anom=BWWM_anom+suppl*Vpole12 ! from anomalous Zqq coupling
                   suppl=crgamz(1)*(Fa341256*prop56+Fa653421*prop34)
     .                  +crz(1)*(Fa346521*prop56+Fa651243*prop34)
c                   suppl=crgamz(1)*(Fa651243*prop34+Fa346521*prop56)
c     .                  +crz(1)*(Fa653421*prop34+Fa341256*prop56)
                   AWWP_sm=AWWP_sm+suppl
                   BWWP_sm=BWWP_sm+suppl*Vpole12
                   suppl=
     .                  crgamz_anom(1)*(Fa341256*prop56+Fa653421*prop34)
     .                  +crz_anom(1)*(Fa346521*prop56+Fa651243*prop34)
                   AWWP_anom=AWWP_anom+suppl ! from anomalous Zqq coupling
                   BWWP_anom=BWWP_anom+suppl*Vpole12 ! from anomalous Zqq coupling
         endif
      elseif (j .lt. 0) then
          if     (tau(jk) .eq. +1d0) then
                   suppl=clgamz(2)*(Fa341256*prop56+Fa653421*prop34)
     .                  +clz(2)*(Fa346521*prop56+Fa651243*prop34)
                   AWWM_sm=AWWM_sm+suppl
                   BWWM_sm=BWWM_sm+suppl*Vpole12
                   suppl=
     .                  clgamz_anom(2)*(Fa341256*prop56+Fa653421*prop34)
     .                  +clz_anom(2)*(Fa346521*prop56+Fa651243*prop34)
                   AWWM_anom=AWWM_anom+suppl ! from anomalous Zqq coupling
                   BWWM_anom=BWWM_anom+suppl*Vpole12 ! from anomalous Zqq coupling
                   suppl=crgamz(2)*(Fa342156*prop56+Fa653412*prop34)
     .                  +crz(2)*(Fa346512*prop56+Fa652143*prop34)
                   AWWP_sm=AWWP_sm+suppl
                   BWWP_sm=BWWP_sm+suppl*Vpole12
                   suppl=
     .                  crgamz_anom(2)*(Fa342156*prop56+Fa653412*prop34)
     .                  +crz_anom(2)*(Fa346512*prop56+Fa652143*prop34)
                   AWWP_anom=AWWP_anom+suppl ! from anomalous Zqq coupling
                   BWWP_anom=BWWP_anom+suppl*Vpole12 ! from anomalous Zqq coupling
          elseif (tau(jk) .eq. -1d0) then
                   suppl=clgamz(1)*(Fa341256*prop56+Fa653421*prop34)
     .                  +clz(1)*(Fa346521*prop56+Fa651243*prop34)
c                   suppl=clgamz(1)*(Fa651243*prop34+Fa346521*prop56)
c     .                  +clz(1)*(Fa653421*prop34+Fa341256*prop56)
                   AWWM_sm=AWWM_sm+suppl
                   BWWM_sm=BWWM_sm+suppl*Vpole12
                   suppl=
     .                  clgamz_anom(1)*(Fa341256*prop56+Fa653421*prop34)
     .                  +clz_anom(1)*(Fa346521*prop56+Fa651243*prop34)
                   AWWM_anom=AWWM_anom+suppl ! from anomalous Zqq coupling
                   BWWM_anom=BWWM_anom+suppl*Vpole12 ! from anomalous Zqq coupling
                   suppl=crgamz(1)*(Fa342156*prop56+Fa653412*prop34)
     .                  +crz(1)*(Fa346512*prop56+Fa652143*prop34)
c                   suppl=crgamz(1)*(Fa652143*prop34+Fa346512*prop56)
c     .                  +crz(1)*(Fa653412*prop34+Fa342156*prop56)
                   AWWP_sm=AWWP_sm+suppl
                   BWWP_sm=BWWP_sm+suppl*Vpole12
                   suppl=
     .                  crgamz_anom(1)*(Fa342156*prop56+Fa653412*prop34)
     .                  +crz_anom(1)*(Fa346512*prop56+Fa652143*prop34)
                   AWWP_anom=AWWP_anom+suppl ! from anomalous Zqq coupling
                   BWWP_anom=BWWP_anom+suppl*Vpole12 ! from anomalous Zqq coupling
          endif
      endif
      endif

      msqv = facnlo*fac*two*
     &     dble(dconjg(AWWM_sm)*BWWM_sm+dconjg(AWWP_sm)*BWWP_sm)
      if(nEFT.gt.0) then
         msqv = msqv + facnlo*fac*two*
     &        dble(dconjg(AWWM_sm)*BWWM_anom+dconjg(AWWM_anom)*BWWM_sm+
     &        dconjg(AWWP_sm)*BWWP_anom+dconjg(AWWP_anom)*BWWP_sm)
         if(nEFT.gt.1) then
            msqv = msqv + facnlo*fac*two*
     &           dble(dconjg(AWWM_anom)*BWWM_anom+
     &           dconjg(AWWP_anom)*BWWP_anom)
            msqv = msqv + facnlo*fac*two*(
     &           dble(dconjg(AWWM_sm)*BWWM_anom2+
     &           dconjg(AWWP_sm)*BWWP_anom2)+
     &           dble(dconjg(AWWM_anom2)*BWWM_sm+
     &           dconjg(AWWP_anom2)*BWWP_sm)) ! contribution from (TGC x anomalous Zqq) + Wqq'**2
            if(nEFT.gt.2) then
               msqv = msqv + facnlo*fac*two*(
     &              dble(dconjg(AWWM_anom)*BWWM_anom2+
     &              dconjg(AWWP_anom)*BWWP_anom2)+
     &              dble(dconjg(AWWM_anom2)*BWWM_anom+
     &              dconjg(AWWP_anom2)*BWWP_anom)) ! inteference between (TGC + Zqq + Wqq') and (TGC x Zqq + Wqq'**2)
               if(nEFT.gt.3) then ! full matrix element squared
                  msqv = msqv + facnlo*fac*two*
     &                 dble(dconjg(AWWM_anom2)*BWWM_anom2+
     &                 dconjg(AWWP_anom2)*BWWP_anom2)
               endif
            endif
         endif
      endif

      return
      end
