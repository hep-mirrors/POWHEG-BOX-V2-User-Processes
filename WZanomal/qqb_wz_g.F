      subroutine qqb_wz_g(P,msq)
C---  Author John Campbell Fri Feb 19 11:06:08 CST 1999
C---  Modified to include supplementary diagrams by JC on Feb 24
c---  Matrix element squared averaged over initial colors and spins
c---  averaged(summed) over initial(final) colours and spins
C     For nwz=+1
c     u(-p1)+dbar(-p2)-->mu^-(p5)+mu^+(p6)+n(p3)+e^+(p4)+g(p7)
C     For nwz=-1
c     d(-p1)+ubar(-p2)-->mu^-(p5)+mu^+(p6)+e^-(p3)+nbar(p4)+g(p7)
c---  
c     for the moment --- radiation only from initial line
      implicit none
#include "constants.h"
#include "qcdcouple.h"
#include "zwcouple.h"
#include "zwcouple_anom.h"
#include "ckm.h"
#include "sprods_com.h"
#include "zprods_decl.h"
#include "ewcharge.h"
#include "anomcoup.h"
#include "nwz.h"
#include "pwhg_st.h"
#include "pwhg_math.h"
#include "vvsettings.h"
      integer flavrad
      common/cflavrad/flavrad
      integer j,k,ip,polg,polz,minus,mplus,jp,kp
      double precision FAC,FACM,FAC1
      double complex prop12(3),prop34(3),prop56(3)
      character*2 plabel(mxpart)
      common/plabel/plabel
      double precision P(mxpart,4),qdks(mxpart,4),msq
      double precision oqdks1(mxpart,4), oqdks2(mxpart,4),
     1     oqdks3(mxpart,4)
      double precision xmsq(3)
      double precision ave,cotw,s127,wwflag
      double complex 
     .     qu_qb_sm(3,10,2,2),qu_gg_sm(3,10,2,2),
     .     gg_qb_sm(3,10,2,2),
     .     qb_qu_sm(3,10,2,2),qb_gg_sm(3,10,2,2),
     .     gg_qu_sm(3,10,2,2),
     .     qu_qb_anom(3,10,2,2),qu_gg_anom(3,10,2,2),
     .     gg_qb_anom(3,10,2,2),
     .     qb_qu_anom(3,10,2,2),qb_gg_anom(3,10,2,2),
     .     gg_qu_anom(3,10,2,2),
     .     A_sm(2,2),A_anom(2,2),A_anom2(2,2)
      save oqdks1,oqdks2,oqdks3,prop12,prop34,prop56,
     .     qu_qb_sm,qu_gg_sm,gg_qb_sm,
     .     qb_qu_sm,qb_gg_sm,gg_qu_sm,
     .     qu_qb_anom,qu_gg_anom,gg_qb_anom,
     .     qb_qu_anom,qb_gg_anom,gg_qu_anom
      double precision v2(2),cl1,cl2,wl1,wl2,en1,en2,xfac
      double complex ZgLR(nf,2),c1(2),c2(2)
      double complex ZglR_anom(nf,2),c1anom(2),c2anom(2)
      common/xanomcoup/xdelg1_z,xdelg1_g,xlambda_g,xlambda_z,
     .     xdelk_g,xdelk_z
      data minus,mplus/1,2/
      data cl1,cl2,en1,en2/4*1d0/
#include "cvecbos.h"
      double complex A_sm_SAVE(2,2)
      double complex A_anom_SAVE(2,2),A_anom2_SAVE(2,2)
      integer iloop,nloop
      double complex cpropfac
      logical isewup,isewdo,recalc,areequal
      external cpropfac,isewup,isewdo

      FAC = -2D0*gwsq*esq

!TM set gsq QCD here
      gsq = st_alpha*4d0*pi


c     gsq = (1.4828317324943823d0)**1
c     write(*,*)'MG gg',gsq

      FAC1=two*gsq*cf


      if (nwz.eq.1)then
         FACM= FAC
      elseif (nwz.eq.-1) then
         FACM= -FAC
      else
         write(6,*) 'nwz .ne. +1 or -1 in qqb_wz_g.f'
         stop
      endif 



      cl1=-fq(idpart3)          ! minus charge of W outgoing fermion (3)
      cl2=-fq(-idpart4)         ! minus charge of W incoming fermion (4)
      en1=zfl( idpart3)         ! Left coupling of W outgoing fermion
      en2=zfl(-idpart4)         ! Left coupling of W incoming fermion

c     choice of which diagram with two W's
      if((isewup(idpart6).and.isewup(idpart3)).or.
     1     (isewdo(idpart6).and.isewdo(idpart3))) then
         wl1=1
         wl2=0
      else
         wl1=0
         wl2=1
      endif
      

      v2(1)=zfl(idpart5)
      v2(2)=zfr(idpart5)


c---  wwflag=1 for most cases, indicating presence of diagram with 2 W's
      wwflag=1d0
c---  but for Z -> bbbar this diagram contains |V_tb|**2 which we take 0
      if (plabel(5) .eq. 'qb') then    
         wwflag=0d0
      endif

      msq=0d0
      A_sm_SAVE=0d0
      A_anom_SAVE=0d0
      A_anom2_SAVE=0d0
      xmsq = 0

      if (interference) then
         nloop=2
      else
         nloop=1
      endif

      do iloop=1,nloop


C---- Change the momenta to DKS notation 
c     We have --- d(-p1)+ubar(-p2)-->nu(p3)+e^+(p4)+mu^-(p5)+mu^+(p6)+g(p7)
c     DKS have--- u( q2)+dbar( q1)-->nu(q3)+e^+(q4)+mu^-(q6)+mu^+(q5)+g(p7)

         if (iloop.eq.1) then
            do jp=1,4
               qdks(1,jp)=p(1,jp)
               qdks(2,jp)=p(2,jp)
               qdks(3,jp)=p(3,jp)
               qdks(4,jp)=p(4,jp)
               qdks(5,jp)=p(6,jp)
               qdks(6,jp)=p(5,jp)
               qdks(7,jp)=p(7,jp)
            enddo
            ip=1
            if(areequal(qdks,oqdks1,7)) then
               recalc=.false.
            else
               recalc=.true.
               oqdks1=qdks
            endif
         elseif (iloop.eq.2) then
            if (idpart4.eq.idpart6) then
               do jp=1,4
                  qdks(1,jp)=p(1,jp)
                  qdks(2,jp)=p(2,jp)
                  qdks(3,jp)=p(3,jp)
                  qdks(4,jp)=p(6,jp)
                  qdks(5,jp)=p(4,jp)
                  qdks(6,jp)=p(5,jp)
                  qdks(7,jp)=p(7,jp)
               enddo
               ip=2
               if(areequal(qdks,oqdks2,7)) then
                  recalc=.false.
               else
                  recalc=.true.
                  oqdks2=qdks
               endif
            elseif (idpart5.eq.idpart3) then
               do jp=1,4
                  qdks(1,jp)=p(1,jp)
                  qdks(2,jp)=p(2,jp)
                  qdks(3,jp)=p(5,jp)
                  qdks(4,jp)=p(4,jp)
                  qdks(5,jp)=p(6,jp)
                  qdks(6,jp)=p(3,jp)
                  qdks(7,jp)=p(7,jp)
               enddo
               ip=3
               if(areequal(qdks,oqdks3,7)) then
                  recalc=.false.
               else
                  recalc=.true.
                  oqdks3=qdks
               endif
            endif
         endif

         cotw=dsqrt((one-xw)/xw)

         if(recalc) then
            call spinoru(7,qdks,za,zb)
c--   s returned from sprodx (common block) is 2*dot product


c--   calculate propagators
            s127=s(1,2)+s(1,7)+s(2,7)

c---  Always use these propagators
c     prop12=s127/dcmplx(s127-wmass**2,wmass*wwidth)  
c     prop34=s(3,4)/dcmplx(s(3,4)-wmass**2,wmass*wwidth)
c     prop56=s(5,6)/dcmplx(s(5,6)-zmass**2,zmass*zwidth)
            prop12(ip)=cpropfac(s127,wmass,wwidth)
            prop34(ip)=cpropfac(s(3,4),wmass,wwidth)
            prop56(ip)=cpropfac(s(5,6),zmass,zwidth)

c---  apply a dipole form factor to anomalous couplings
c         xfac=1d0/(1d0+s127/(tevscale*1d3)**2)**2 ! (deactivated for now, julien)
            xfac = 1d0
            xdelg1_z=xfac*delg1_z
            xdelg1_g=xfac*delg1_g
            xdelk_z=xfac*delk_z
            xdelk_g=xfac*delk_g
            xlambda_z=xfac*lambda_z
            xlambda_g=xfac*lambda_g

c---  case dbar-u
            call wzamps(1,2,3,4,5,6,7,za,zb,qb_qu_sm(ip,:,:,:),
     .           qb_qu_anom(ip,:,:,:))
c---  case u-dbar
            call wzamps(2,1,3,4,5,6,7,za,zb,qu_qb_sm(ip,:,:,:),
     .           qu_qb_anom(ip,:,:,:))

c---  case g-u
            call wzamps(7,2,3,4,5,6,1,za,zb,gg_qu_sm(ip,:,:,:),
     .           gg_qu_anom(ip,:,:,:))
c---  case u-g
            call wzamps(7,1,3,4,5,6,2,za,zb,qu_gg_sm(ip,:,:,:),
     .           qu_gg_anom(ip,:,:,:))

c---  case dbar-g
            call wzamps(1,7,3,4,5,6,2,za,zb,qb_gg_sm(ip,:,:,:),
     .           qb_gg_anom(ip,:,:,:))
c---  case g-dbar
            call wzamps(2,7,3,4,5,6,1,za,zb,gg_qb_sm(ip,:,:,:),
     .           gg_qb_anom(ip,:,:,:))

         endif
c---  set up left/right handed couplings for both Z and gamma*
c---  note that L/R labels the LEPTON coupling v2, NOT the quarks (all L)
         q1=fq(idpart5)
         do j=1,nf
            ZgLR(j,minus)=zfL(j)*v2(1)*prop56(ip)+fQ(j)*q1
            ZgLR(j,mplus)=zfL(j)*v2(2)*prop56(ip)+fQ(j)*q1
         enddo

c---  set up the same but for anomalous Z-quark couplings (new julien)
         do j=1,nf
            ZgLR_anom(j,minus)=l_anom(j)*v2(1)*prop56(ip)
            ZgLR_anom(j,mplus)=l_anom(j)*v2(2)*prop56(ip)
         enddo


         do polz=1,2
            if(nwz.eq.1) then
               c1(polz)=ZgLR(2,polz)
               c2(polz)=ZgLR(1,polz)
               c1anom(polz)=ZgLR_anom(2,polz)
               c2anom(polz)=ZgLR_anom(1,polz)
            else
               c1(polz)=ZgLR(1,polz)
               c2(polz)=ZgLR(2,polz)
               c1anom(polz)=ZgLR_anom(1,polz)
               c2anom(polz)=ZgLR_anom(2,polz)
            endif
         enddo


         j=idpart1
         k=idpart2
         if     ((j .gt. 0) .and. (k .lt. 0)) then

c---  case u-db
            do polg=1,2
               do polz=1,2
                  A_sm(polg,polz)=((ZgLR(+j,polz)*
     .                 qu_qb_sm(ip,2,polg,polz)
     .                 +ZgLR(-k,polz)*qu_qb_sm(ip,3,polg,polz))*FAC
     .                 +(cotw*v2(polz)*prop56(ip)*
     .                 qu_qb_sm(ip,1,polg,polz)
     .                 +q1*qu_qb_sm(ip,10,polg,polz))
     .                 *prop12(ip)*FACM)*prop34(ip)
     .                 +FAC*((en1*v2(polz)*prop56(ip)+q1*(-1d0)*cl1)
     .                 *prop12(ip)*qu_qb_sm(ip,5,polg,polz)
     .                 +(en2*v2(polz)*prop56(ip)+q1*(-1d0)*cl2)
     .                 *prop12(ip)*qu_qb_sm(ip,4,polg,polz)
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *qu_qb_sm(ip,6,polg,polz)*wl1
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *qu_qb_sm(ip,7,polg,polz)*wl2)
                  A_anom(polg,polz)=(cotw*v2(polz)*prop56(ip)*
     .                 qu_qb_anom(ip,1,polg,polz)
     .                 +q1*qu_qb_anom(ip,10,polg,polz))
     .                 *prop12(ip)*FACM*prop34(ip)                ! from TGC
                  A_anom(polg,polz)=A_anom(polg,polz)+
     .                 (ZgLR_anom(+j,polz)*
     .                 qu_qb_sm(ip,2,polg,polz)
     .                 +ZgLR_anom(-k,polz)*
     .                 qu_qb_sm(ip,3,polg,polz))*FAC*prop34(ip)   ! from anomalous Zqq coupling
                  A_anom(polg,polz)=A_anom(polg,polz)+
     .                 delgQL_w*A_sm(polg,polz)                   ! from anomalous Wqq' coupling
                  A_anom2(polg,polz)=((ZgLR_anom(+j,polz)*
     .                 qu_qb_anom(ip,2,polg,polz)
     .                 +ZgLR_anom(-k,polz)*
     .                 qu_qb_anom(ip,3,polg,polz))*FAC
     .                 +(cotw*v2(polz)*prop56(ip)*
     .                 qu_qb_anom(ip,1,polg,polz)
     .                 +q1*qu_qb_anom(ip,10,polg,polz))
     .                 *prop12(ip)*FACM)*prop34(ip)*delgQL_w      !  1/lambdaEFT**4 contribution
                  
c     A(polg,polz)=((L(+j)*qu_qb(2,polg,polz)
c     .                  +L(-k)*qu_qb(3,polg,polz))*FAC
c     .                  +cotw*prop12*qu_qb(1,polg,polz)*FACM)
c     .                 *prop34*prop56*v2(polz)
               enddo
            enddo
            ave=xn*aveqq*Vsq(j,k)

         elseif ((j .lt. 0) .and. (k .gt. 0)) then


c---  case db-u
            do polg=1,2
               do polz=1,2
                  A_sm(polg,polz)=((ZgLR(+k,polz)*
     .                 qb_qu_sm(ip,2,polg,polz)
     .                 +ZgLR(-j,polz)*qb_qu_sm(ip,3,polg,polz))*FAC
     .                 +(cotw*v2(polz)*prop56(ip)*
     .                 qb_qu_sm(ip,1,polg,polz)
     .                 +q1*qb_qu_sm(ip,10,polg,polz))
     .                 *prop12(ip)*FACM)*prop34(ip)
     .                 +FAC*((en1*v2(polz)*prop56(ip)+q1*(-1d0)*cl1)
     .                 *prop12(ip)*qb_qu_sm(ip,5,polg,polz)
     .                 +(en2*v2(polz)*prop56(ip)+q1*(-1d0)*cl2)
     .                 *prop12(ip)*qb_qu_sm(ip,4,polg,polz)
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *qb_qu_sm(ip,6,polg,polz)*wl1
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *qb_qu_sm(ip,7,polg,polz)*wl2)
                  A_anom(polg,polz)=(cotw*v2(polz)*prop56(ip)*
     .                 qb_qu_anom(ip,1,polg,polz)
     .                 +q1*qb_qu_anom(ip,10,polg,polz))
     .                 *prop12(ip)*FACM*prop34(ip)                ! from TGC
                  A_anom(polg,polz)=A_anom(polg,polz)+
     .                 (ZgLR_anom(+k,polz)*
     .                 qb_qu_sm(ip,2,polg,polz)
     .                 +ZgLR_anom(-j,polz)*
     .                 qb_qu_sm(ip,3,polg,polz))*FAC*prop34(ip)   ! from anomalous Zqq coupling
                  A_anom(polg,polz)=A_anom(polg,polz)+
     .                 delgQL_w*A_sm(polg,polz)                   ! from anomalous Wqq' coupling
                  A_anom2(polg,polz)=((ZgLR_anom(+k,polz)*
     .                 qb_qu_anom(ip,2,polg,polz)
     .                 +ZgLR_anom(-j,polz)*
     .                 qb_qu_anom(ip,3,polg,polz))*FAC
     .                 +(cotw*v2(polz)*prop56(ip)*
     .                 qb_qu_anom(ip,1,polg,polz)
     .                 +q1*qb_qu_anom(ip,10,polg,polz))
     .                 *prop12(ip)*FACM)*prop34(ip)*delgQL_w      !  1/lambdaEFT**4 contribution


c     A(polg,polz)=((L(+k)*qb_qu(2,polg,polz)
c     .                  +L(-j)*qb_qu(3,polg,polz))*FAC
c     .                  +cotw*prop12*qb_qu(1,polg,polz)*FACM)
c     .                 *prop34*prop56*v2(polz)
               enddo
            enddo
            ave=xn*aveqq*Vsq(j,k)

         elseif ((j .gt. 0) .and. (k .eq. 0)) then
c---  case u-g

            do polg=1,2
               do polz=1,2
                  A_sm(polg,polz)=((c1(polz)*qu_gg_sm(ip,2,polg,polz)
     .                 +c2(polz)*qu_gg_sm(ip,3,polg,polz))*FAC
     .                 +(cotw*v2(polz)*prop56(ip)
     .                 *qu_gg_sm(ip,1,polg,polz)
     .                 +q1*qu_gg_sm(ip,10,polg,polz))
     .                 *prop12(ip)*FACM)*prop34(ip)
     .                 +FAC*((en1*v2(polz)*prop56(ip)+q1*(-1d0)*cl1)
     .                 *prop12(ip)*qu_gg_sm(ip,5,polg,polz)
     .                 +(en2*v2(polz)*prop56(ip)+q1*(-1d0)*cl2)
     .                 *prop12(ip)*qu_gg_sm(ip,4,polg,polz)
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *qu_gg_sm(ip,6,polg,polz)*wl1
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *qu_gg_sm(ip,7,polg,polz)*wl2)
                  A_anom(polg,polz)=(cotw*v2(polz)*prop56(ip)*
     .                 qu_gg_anom(ip,1,polg,polz)
     .                 +q1*qu_gg_anom(ip,10,polg,polz))
     .                 *prop12(ip)*FACM*prop34(ip)                ! from TGC
                  A_anom(polg,polz)=A_anom(polg,polz)+
     .                 (c1anom(polz)*qu_gg_sm(ip,2,polg,polz)
     .                 +c2anom(polz)*qu_gg_sm(ip,3,polg,polz))*
     .                 FAC*prop34(ip)                             ! from anomalous Zqq coupling
                  A_anom(polg,polz)=A_anom(polg,polz)+
     .                 delgQL_w*A_sm(polg,polz)                   ! from anomalous Wqq' coupling
                  A_anom2(polg,polz)=((c1anom(polz)*
     .                 qu_gg_anom(ip,2,polg,polz)
     .                 +c2anom(polz)*
     .                 qu_gg_anom(ip,3,polg,polz))*FAC
     .                 +(cotw*v2(polz)*prop56(ip)*
     .                 qu_gg_anom(ip,1,polg,polz)
     .                 +q1*qu_gg_anom(ip,10,polg,polz))
     .                 *prop12(ip)*FACM)*prop34(ip)*delgQL_w      !  1/lambdaEFT**4 contribution

c     A(polg,polz)=((c1*qu_gg(2,polg,polz)
c     .                  +c2*qu_gg(3,polg,polz))*FAC
c     .                  +cotw*prop12*qu_gg(1,polg,polz)*FACM)
c     .                 *prop34*prop56*v2(polz)
               enddo
            enddo
            ave=xn*aveqg*Vsq(j,-flavrad)
         elseif ((j .lt. 0) .and. (k .eq. 0)) then
c---  case db-g
            do polg=1,2
               do polz=1,2
                  A_sm(polg,polz)=((c1(polz)*qb_gg_sm(ip,2,polg,polz)
     .                 +c2(polz)*qb_gg_sm(ip,3,polg,polz))*FAC
     .                 +(cotw*v2(polz)*prop56(ip)
     .                 *qb_gg_sm(ip,1,polg,polz)
     .                 +q1*qb_gg_sm(ip,10,polg,polz))
     .                 *prop12(ip)*FACM)*prop34(ip)
     .                 +FAC*((en1*v2(polz)*prop56(ip)+q1*(-1d0)*cl1)
     .                 *prop12(ip)*qb_gg_sm(ip,5,polg,polz)
     .                 +(en2*v2(polz)*prop56(ip)+q1*(-1d0)*cl2)
     .                 *prop12(ip)*qb_gg_sm(ip,4,polg,polz)
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *qb_gg_sm(ip,6,polg,polz)*wl1
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *qb_gg_sm(ip,7,polg,polz)*wl2)
                  A_anom(polg,polz)=(cotw*v2(polz)*prop56(ip)*
     .                 qb_gg_anom(ip,1,polg,polz)
     .                 +q1*qb_gg_anom(ip,10,polg,polz))
     .                 *prop12(ip)*FACM*prop34(ip)                ! from TGC
                  A_anom(polg,polz)=A_anom(polg,polz)+
     .                 (c1anom(polz)*qb_gg_sm(ip,2,polg,polz)
     .                 +c2anom(polz)*qb_gg_sm(ip,3,polg,polz))*
     .                 FAC*prop34(ip)                             ! from anomalous Zqq coupling
                  A_anom(polg,polz)=A_anom(polg,polz)+
     .                 delgQL_w*A_sm(polg,polz)                   ! from anomalous Wqq' coupling
                  A_anom2(polg,polz)=((c1anom(polz)*
     .                 qb_gg_anom(ip,2,polg,polz)
     .                 +c2anom(polz)*
     .                 qb_gg_anom(ip,3,polg,polz))*FAC
     .                 +(cotw*v2(polz)*prop56(ip)*
     .                 qb_gg_anom(ip,1,polg,polz)
     .                 +q1*qb_gg_anom(ip,10,polg,polz))
     .                 *prop12(ip)*FACM)*prop34(ip)*delgQL_w      !  1/lambdaEFT**4 contribution

c     A(polg,polz)=((c1*qb_gg(2,polg,polz)
c     .                  +c2*qb_gg(3,polg,polz))*FAC
c     .                  +cotw*prop12*qb_gg(1,polg,polz)*FACM)
c     .                 *prop34*prop56*v2(polz)
               enddo
            enddo
            
            ave=xn*aveqg*Vsq(j,-flavrad)
         elseif ((j .eq. 0) .and. (k .gt. 0)) then
c---  case g-u
            do polg=1,2
               do polz=1,2
                  A_sm(polg,polz)=((c1(polz)*gg_qu_sm(ip,2,polg,polz)
     .                 +c2(polz)*gg_qu_sm(ip,3,polg,polz))*FAC
     .                 +(cotw*v2(polz)*prop56(ip)
     .                 *gg_qu_sm(ip,1,polg,polz)
     .                 +q1*gg_qu_sm(ip,10,polg,polz))
     .                 *prop12(ip)*FACM)*prop34(ip)
     .                 +FAC*((en1*v2(polz)*prop56(ip)+q1*(-1d0)*cl1)
     .                 *prop12(ip)*gg_qu_sm(ip,5,polg,polz)
     .                 +(en2*v2(polz)*prop56(ip)+q1*(-1d0)*cl2)
     .                 *prop12(ip)*gg_qu_sm(ip,4,polg,polz)
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *gg_qu_sm(ip,6,polg,polz)*wl1
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *gg_qu_sm(ip,7,polg,polz)*wl2)
                  A_anom(polg,polz)=(cotw*v2(polz)*prop56(ip)*
     .                 gg_qu_anom(ip,1,polg,polz)
     .                 +q1*gg_qu_anom(ip,10,polg,polz))
     .                 *prop12(ip)*FACM*prop34(ip)                ! from TGC
                  A_anom(polg,polz)=A_anom(polg,polz)+
     .                 (c1anom(polz)*gg_qu_sm(ip,2,polg,polz)
     .                 +c2anom(polz)*gg_qu_sm(ip,3,polg,polz))*
     .                 FAC*prop34(ip)                             ! from anomalous Zqq coupling
                  A_anom(polg,polz)=A_anom(polg,polz)+
     .                 delgQL_w*A_sm(polg,polz)                   ! from anomalous Wqq' coupling
                  A_anom2(polg,polz)=((c1anom(polz)*
     .                 gg_qu_anom(ip,2,polg,polz)
     .                 +c2anom(polz)*
     .                 gg_qu_anom(ip,3,polg,polz))*FAC
     .                 +(cotw*v2(polz)*prop56(ip)*
     .                 gg_qu_anom(ip,1,polg,polz)
     .                 +q1*gg_qu_anom(ip,10,polg,polz))
     .                 *prop12(ip)*FACM)*prop34(ip)*delgQL_w      !  1/lambdaEFT**4 contribution

c     A(polg,polz)=((c1(polz)*gg_qu(2,polg,polz)
c     .                  +c2(polz)*gg_qu(3,polg,polz))*FAC
c     .                  +cotw*prop12*gg_qu(1,polg,polz)*FACM)
c     .                 *prop34*prop56*v2(polz)
               enddo
            enddo
            ave=xn*aveqg*Vsq(k,-flavrad)
         elseif ((j .eq. 0) .and. (k .lt. 0)) then
c---  case g-db
            do polg=1,2
               do polz=1,2
                  A_sm(polg,polz)=((c1(polz)*gg_qb_sm(ip,2,polg,polz)
     .                 +c2(polz)*gg_qb_sm(ip,3,polg,polz))*FAC
     .                 +(cotw*v2(polz)*prop56(ip)
     .                 *gg_qb_sm(ip,1,polg,polz)
     .                 +q1*gg_qb_sm(ip,10,polg,polz))
     .                 *prop12(ip)*FACM)*prop34(ip)
     .                 +FAC*((en1*v2(polz)*prop56(ip)+q1*(-1d0)*cl1)
     .                 *prop12(ip)*gg_qb_sm(ip,5,polg,polz)
     .                 +(en2*v2(polz)*prop56(ip)+q1*(-1d0)*cl2)
     .                 *prop12(ip)*gg_qb_sm(ip,4,polg,polz)
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *gg_qb_sm(ip,6,polg,polz)*wl1
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *gg_qb_sm(ip,7,polg,polz)*wl2)
                  A_anom(polg,polz)=(cotw*v2(polz)*prop56(ip)*
     .                 gg_qb_anom(ip,1,polg,polz)
     .                 +q1*gg_qb_anom(ip,10,polg,polz))
     .                 *prop12(ip)*FACM*prop34(ip)                ! from TGC
                  A_anom(polg,polz)=A_anom(polg,polz)+
     .                 (c1anom(polz)*gg_qb_sm(ip,2,polg,polz)
     .                 +c2anom(polz)*gg_qb_sm(ip,3,polg,polz))*
     .                 FAC*prop34(ip)                             ! from anomalous Zqq coupling
                  A_anom(polg,polz)=A_anom(polg,polz)+
     .                 delgQL_w*A_sm(polg,polz)                   ! from anomalous Wqq' coupling
                  A_anom2(polg,polz)=((c1anom(polz)*
     .                 gg_qb_anom(ip,2,polg,polz)
     .                 +c2anom(polz)*
     .                 gg_qb_anom(ip,3,polg,polz))*FAC
     .                 +(cotw*v2(polz)*prop56(ip)*
     .                 gg_qb_anom(ip,1,polg,polz)
     .                 +q1*gg_qb_anom(ip,10,polg,polz))
     .                 *prop12(ip)*FACM)*prop34(ip)*delgQL_w      !  1/lambdaEFT**4 contribution

c     A(polg,polz)=((c1*gg_qb(2,polg,polz)
c     .                  +c2*gg_qb(3,polg,polz))*FAC
c     .                  +cotw*prop12*gg_qb(1,polg,polz)*FACM)
c     .                 *prop34*prop56*v2(polz)
                  
               enddo
            enddo
            
            ave=xn*aveqg*Vsq(k,-flavrad)

         else
            ave=0d0
         endif

         

         if (ave.gt.0d0) then


            xmsq(iloop)=xmsq(iloop) + FAC1*ave*(
     .           cdabs(A_sm(mplus,minus))**2+
     .           cdabs(A_sm(minus,minus))**2+
     .           cdabs(A_sm(mplus,mplus))**2+
     .           cdabs(A_sm(minus,mplus))**2)
            if(nEFT.gt.0) then
               xmsq(iloop)=xmsq(iloop) + FAC1*ave*2d0*(
     .              dble(A_sm(mplus,minus)*dconjg(A_anom(mplus,minus)))+
     .              dble(A_sm(minus,minus)*dconjg(A_anom(minus,minus)))+
     .              dble(A_sm(mplus,mplus)*dconjg(A_anom(mplus,mplus)))+
     .              dble(A_sm(minus,mplus)*dconjg(A_anom(minus,mplus))))
               if(nEFT.gt.1) then
                  xmsq(iloop)=xmsq(iloop) + FAC1*ave*(
     .                 cdabs(A_anom(mplus,minus))**2+
     .                 cdabs(A_anom(minus,minus))**2+
     .                 cdabs(A_anom(mplus,mplus))**2+
     .                 cdabs(A_anom(minus,mplus))**2)
                  xmsq(iloop)=xmsq(iloop) + FAC1*ave*2d0*(
     .             dble(A_sm(mplus,minus)*dconjg(A_anom2(mplus,minus)))+
     .             dble(A_sm(minus,minus)*dconjg(A_anom2(minus,minus)))+
     .             dble(A_sm(mplus,mplus)*dconjg(A_anom2(mplus,mplus)))+
     .             dble(A_sm(minus,mplus)*dconjg(A_anom2(minus,mplus))))
                  if(nEFT.gt.2) then
                     xmsq(iloop)=xmsq(iloop) + FAC1*ave*2d0*(
     .           dble(A_anom(mplus,minus)*dconjg(A_anom2(mplus,minus)))+
     .           dble(A_anom(minus,minus)*dconjg(A_anom2(minus,minus)))+
     .           dble(A_anom(mplus,mplus)*dconjg(A_anom2(mplus,mplus)))+
     .           dble(A_anom(minus,mplus)*dconjg(A_anom2(minus,mplus))))
                     if(nEFT.gt.3) then
                        xmsq(iloop)=xmsq(iloop) + FAC1*ave*(
     .                       cdabs(A_anom2(mplus,minus))**2+
     .                       cdabs(A_anom2(minus,minus))**2+
     .                       cdabs(A_anom2(mplus,mplus))**2+
     .                       cdabs(A_anom2(minus,mplus))**2) ! full matrix element squared
                     endif
                  endif
               endif
            endif

            if (iloop.eq.1) then
               if (interference) then
                  A_sm_SAVE(mplus,mplus) = A_sm(mplus,mplus)
                  A_sm_SAVE(minus,mplus) = A_sm(minus,mplus)
                  A_sm_SAVE(mplus,minus) = A_sm(mplus,minus)
                  A_sm_SAVE(minus,minus) = A_sm(minus,minus)
                  A_anom_SAVE(mplus,mplus) = A_anom(mplus,mplus)
                  A_anom_SAVE(minus,mplus) = A_anom(minus,mplus)
                  A_anom_SAVE(mplus,minus) = A_anom(mplus,minus)
                  A_anom_SAVE(minus,minus) = A_anom(minus,minus)
                  A_anom2_SAVE(mplus,mplus) = A_anom2(mplus,mplus)
                  A_anom2_SAVE(minus,mplus) = A_anom2(minus,mplus)
                  A_anom2_SAVE(mplus,minus) = A_anom2(mplus,minus)
                  A_anom2_SAVE(minus,minus) = A_anom2(minus,minus)
               endif
            elseif(iloop.eq.2) then
               xmsq(3)=xmsq(3) - FAC1*ave
     .              *(dconjg(A_sm(mplus,minus))*A_sm_SAVE(mplus,minus) + 
     .              A_sm(mplus,minus)*dconjg(A_sm_SAVE(mplus,minus)) +
     .              dconjg(A_sm(minus,minus))*A_sm_SAVE(minus,minus) + 
     .              A_sm(minus,minus)*dconjg(A_sm_SAVE(minus,minus))
     .              )
               if(nEFT.gt.0) then
                  xmsq(3)=xmsq(3) - FAC1*ave
     .            *(dconjg(A_sm(mplus,minus))*A_anom_SAVE(mplus,minus) +
     .            dconjg(A_anom(mplus,minus))*A_sm_SAVE(mplus,minus) + 
     .            A_sm(mplus,minus)*dconjg(A_anom_SAVE(mplus,minus)) +
     .            A_anom(mplus,minus)*dconjg(A_sm_SAVE(mplus,minus)) +
     .            dconjg(A_sm(minus,minus))*A_anom_SAVE(minus,minus) +
     .            dconjg(A_anom(minus,minus))*A_sm_SAVE(minus,minus) + 
     .            A_sm(minus,minus)*dconjg(A_anom_SAVE(minus,minus)) +
     .            A_anom(minus,minus)*dconjg(A_sm_SAVE(minus,minus))
     .            )
                  if(nEFT.gt.1) then
                     xmsq(3)=xmsq(3) - FAC1*ave
     .         *(dconjg(A_sm(mplus,minus))*A_anom2_SAVE(mplus,minus) + 
     .         dconjg(A_anom(mplus,minus))*A_anom_SAVE(mplus,minus) +
     .         dconjg(A_anom2(mplus,minus))*A_sm_SAVE(mplus,minus) + 
     .         A_sm(mplus,minus)*dconjg(A_anom2_SAVE(mplus,minus)) +
     .         A_anom(mplus,minus)*dconjg(A_anom_SAVE(mplus,minus)) +
     .         A_anom2(mplus,minus)*dconjg(A_sm_SAVE(mplus,minus)) +
     .         dconjg(A_sm(minus,minus))*A_anom2_SAVE(minus,minus) + 
     .         dconjg(A_anom(minus,minus))*A_anom_SAVE(minus,minus) +
     .         dconjg(A_anom2(minus,minus))*A_sm_SAVE(minus,minus) + 
     .         A_sm(minus,minus)*dconjg(A_anom2_SAVE(minus,minus)) +
     .         A_anom(minus,minus)*dconjg(A_anom_SAVE(minus,minus)) +
     .         A_anom2(minus,minus)*dconjg(A_sm_SAVE(minus,minus))
     .         )
                     if(nEFT.gt.2) then
                        xmsq(3)=xmsq(3) - FAC1*ave
     .        *(dconjg(A_anom(mplus,minus))*A_anom2_SAVE(mplus,minus) +
     .        dconjg(A_anom2(mplus,minus))*A_anom_SAVE(mplus,minus) + 
     .        A_anom(mplus,minus)*dconjg(A_anom2_SAVE(mplus,minus)) +
     .        A_anom2(mplus,minus)*dconjg(A_anom_SAVE(mplus,minus)) +
     .        dconjg(A_anom(minus,minus))*A_anom2_SAVE(minus,minus) +
     .        dconjg(A_anom2(minus,minus))*A_anom_SAVE(minus,minus) + 
     .        A_anom(minus,minus)*dconjg(A_anom2_SAVE(minus,minus)) +
     .        A_anom2(minus,minus)*dconjg(A_anom_SAVE(minus,minus))
     .        )
                        if(nEFT.gt.3) then
                           xmsq(3)=xmsq(3) - FAC1*ave
     .     *(dconjg(A_anom2(mplus,minus))*A_anom2_SAVE(mplus,minus) + 
     .     A_anom2(mplus,minus)*dconjg(A_anom2_SAVE(mplus,minus)) +
     .     dconjg(A_anom2(minus,minus))*A_anom2_SAVE(minus,minus) + 
     .     A_anom2(minus,minus)*dconjg(A_anom2_SAVE(minus,minus))
     .     )
                        endif
                     endif
                  endif
               endif
            endif
            
            
            if(interference) then
               if(iloop.eq.2) then
c     this is for testing:
c       msq=(xmsq(1)+xmsq(2))/2 *
                  msq= xmsq(1) *
     1                 (1+xmsq(3)/(xmsq(1)+xmsq(2)))
               endif
            else
               msq=xmsq(1)
            endif
            
         endif

      enddo                     !iloop
      
!symmetry factor
      msq = msq*vsymfact

      return
      end

      
      




