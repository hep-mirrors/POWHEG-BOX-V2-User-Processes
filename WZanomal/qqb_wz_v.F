      subroutine qqb_wz_v(p,msqv)
C----Author R.K.Ellis December 1998
C----modified by JMC to include supplementary diagrams February 1999
c---  calculate the virtual matrix element squared and endpoint 
c     subtraction terms for the process
C For nwz=+1
c     u(-p1)+dbar(-p2)-->mu^-(p5)+mu^+(p6)+n(p3)+e^+(p4)
C For nwz=-1
c     d(-p1)+ubar(-p2)-->mu^-(p5)+mu^+(p6)+e^-(p3)+nbar(p4)
c---  averaged(summed) over initial(final) colours and spins
      implicit none
#include "constants.h"
#include "qcdcouple.h"
#include "zwcouple.h"
#include "zwcouple_anom.h"
#include "ckm.h"
#include "zprods_decl.h"
#include "sprods_com.h"
#include "ewcharge.h"
#include "anomcoup.h"
#include "nwz.h"
#include "pwhg_st.h"
#include "pwhg_math.h"
#include "vvsettings.h"
      integer j,k,ip
      double precision p(mxpart,4),qdks(mxpart,4)
      double precision msqv,msq
      double precision oqdks1(mxpart,4), oqdks2(mxpart,4),
     1     oqdks3(mxpart,4)
      double precision xmsq(3)
      double precision facnlo,ave,cotw
      double precision FAC,FACM
      double complex AWZM_sm,AWZP_sm,BWZM_sm,BWZP_sm
      double complex AWZM_anom,AWZP_anom,BWZM_anom,BWZP_anom
      double complex AWZM_anom2,AWZP_anom2,BWZM_anom2,BWZP_anom2
      double complex Vpole,Vpole12(3),suppl
      double complex prop12(3),prop34(3),prop56(3)
      double complex props(3),propw(3),propz(3),A6b_1,A6b_2,A6b_3,A6b_4
      double complex a6treea,a6loopa
      double complex Fa123456(3),Fa126543(3)
      double complex Fb123456_z_sm(3),Fb123456_g_sm(3)
      double complex Fb123456_z_anom(3),Fb123456_g_anom(3)
      double complex Fa123465(3),Fa125643(3)
      double complex Fb123465_z_sm(3),Fb123465_g_sm(3)
      double complex Fb123465_z_anom(3),Fb123465_g_anom(3)
      double complex Fa213456(3),Fa216543(3)
      double complex Fb213456_z_sm(3),Fb213456_g_sm(3)
      double complex Fb213456_z_anom(3),Fb213456_g_anom(3)
      double complex Fa213465(3),Fa215643(3)
      double complex Fb213465_z_sm(3),Fb213465_g_sm(3)
      double complex Fb213465_z_anom(3),Fb213465_g_anom(3)
      double complex La123456(3),La126543(3)
      double complex Lb123456_z_sm(3),Lb123456_g_sm(3)
      double complex Lb123456_z_anom(3),Lb123456_g_anom(3)
      double complex La123465(3),La125643(3)
      double complex Lb123465_z_sm(3),Lb123465_g_sm(3)
      double complex Lb123465_z_anom(3),Lb123465_g_anom(3)
      double complex La213456(3),La216543(3)
      double complex Lb213456_z_sm(3),Lb213456_g_sm(3)
      double complex Lb213456_z_anom(3),Lb213456_g_anom(3)
      double complex La213465(3),La215643(3)
      double complex Lb213465_z_sm(3),Lb213465_g_sm(3)
      double complex Lb213465_z_anom(3),Lb213465_g_anom(3)
      double complex Fa346512(3),Fa342156(3),Fa652143(3)
      double complex Fa345612(3),Fa342165(3),Fa653421(3)
      double complex Fa346521(3),Fa341256(3),Fa651243(3)
      double complex Fa345621(3),Fa341265(3),Fa653412(3)
      save Vpole12,oqdks1, oqdks2,oqdks3,
     .     prop12,prop34,prop56,
     .     props,propw,propz,
     .     Fa123456,Fa126543,Fb123456_z_sm,Fb123456_g_sm,
     .     Fb123456_z_anom,Fb123456_g_anom,
     .     Fa123465,Fa125643,Fb123465_z_sm,Fb123465_g_sm,
     .     Fb123465_z_anom,Fb123465_g_anom,
     .     Fa213456,Fa216543,Fb213456_z_sm,Fb213456_g_sm,
     .     Fb213456_z_anom,Fb213456_g_anom,
     .     Fa213465,Fa215643,Fb213465_z_sm,Fb213465_g_sm,
     .     Fb213465_z_anom,Fb213465_g_anom,
     .     La123456,La126543,Lb123456_z_sm,Lb123456_g_sm,
     .     Lb123456_z_anom,Lb123456_g_anom,
     .     La123465,La125643,Lb123465_z_sm,Lb123465_g_sm,
     .     Lb123465_z_anom,Lb123465_g_anom,
     .     La213456,La216543,Lb213456_z_sm,Lb213456_g_sm,
     .     Lb213456_z_anom,Lb213456_g_anom,
     .     La213465,La215643,Lb213465_z_sm,Lb213465_g_sm,
     .     Lb213465_z_anom,Lb213465_g_anom,
     .     Fa346512,Fa342156,Fa652143,
     .     Fa345612,Fa342165,Fa653421,
     .     Fa346521,Fa341256,Fa651243,
     .     Fa345621,Fa341265,Fa653412



      double precision v2(2),cl1,cl2,wl1,wl2,en1,en2,xfac
      double complex ZgL(-nf:nf),ZgR(-nf:nf)
      double complex ZgL_anom(-nf:nf),ZgR_anom(-nf:nf)
      double precision wwflag   ! from qqb_wz.F (julien)
      character*2 plabel(mxpart) ! from qqb_wz.F (julien)
      common/plabel/plabel      ! from qqb_wz.F (julien)
      parameter(ave=0.25d0/xn)
      data cl1,cl2,en1,en2/4*1d0/
#include "cvecbos.h"

      integer iloop,nloop
      double complex AWZM_sm_SAVE,AWZM_anom_SAVE,AWZM_anom2_SAVE
      double complex BWZM_sm_SAVE,BWZM_anom_SAVE,BWZM_anom2_SAVE
      double complex cpropfac
      logical isewup,isewdo,recalc,areequal
      integer i3chargeofid
      external cpropfac,isewup,isewdo,i3chargeofid

!      scheme='dred'

      !TM make sure this is set here
      ason2pi = st_alpha/2d0/pi

      FAC=-2D0*gwsq*esq
      FACNLO=ason2pi*cf

      if (nwz.eq.1) then
         FACM=FAC
      elseif (nwz.eq.-1) then
         FACM=-FAC
      else
         write(6,*) 'nwz ne +1 or -1'
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

c--   [[from qqb_wz.F
c---  wwflag=1 for most cases, indicating presence of diagram with 2 W's
      wwflag=1d0
c---  but for Z -> bbbar this diagram contains |V_tb|**2 which we take 0
      if (plabel(5) .eq. 'qb') then    
         wwflag=0d0
      endif
c--   end from qqb_wz.F (julien) ]]

      v2(1)=zfl(idpart5)
      v2(2)=zfr(idpart5)
      cotw=dsqrt((one-xw)/xw)

      AWZM_sm_SAVE = 0d0
      AWZM_anom_SAVE = 0d0
      AWZM_anom2_SAVE = 0d0
      BWZM_sm_SAVE = 0d0
      BWZM_anom_SAVE = 0d0
      BWZM_anom2_SAVE = 0d0

      msqv = 0
      xmsq = 0

c---  calculate the lowest order matrix element
!     call qqb_wz(p,msq)


      if (interference) then
         nloop=2
      else
         nloop=1
      endif

      do iloop=1,nloop

c---  Change the momenta to DKS notation 
c     We have --- d(-p1)+ubar(-p2)-->nu(p6)+e^+(p7)+mu^-(p4)+mu^+(p5)
c     DKS have--- u( q2)+dbar( q1)-->nu(q3)+e^+(q4)+mu^-(q6)+mu^+(q5)

         if (iloop.eq.1) then
            do j=1,4
               qdks(1,j)=p(1,j)
               qdks(2,j)=p(2,j)
               qdks(3,j)=p(3,j)
               qdks(4,j)=p(4,j)
               qdks(5,j)=p(6,j)
               qdks(6,j)=p(5,j)
            enddo
            ip=1
            if(areequal(qdks,oqdks1,6)) then
               recalc=.false.
            else
               recalc=.true.
               oqdks1=qdks
            endif
         elseif (iloop.eq.2) then
            if(idpart4.eq.idpart6) then
               do j=1,4
                  qdks(1,j)=p(1,j)
                  qdks(2,j)=p(2,j)
                  qdks(3,j)=p(3,j)
                  qdks(4,j)=p(6,j)
                  qdks(5,j)=p(4,j)
                  qdks(6,j)=p(5,j)
               enddo
               ip=2
               if(areequal(qdks,oqdks2,6)) then
                  recalc=.false.
               else
                  recalc=.true.
                  oqdks2=qdks
               endif
            elseif (idpart5.eq.idpart3) then
               do j=1,4
                  qdks(1,j)=p(1,j)
                  qdks(2,j)=p(2,j)
                  qdks(3,j)=p(5,j)
                  qdks(4,j)=p(4,j)
                  qdks(5,j)=p(6,j)
                  qdks(6,j)=p(3,j)
               enddo
               ip=3
               if(areequal(qdks,oqdks3,6)) then
                  recalc=.false.
               else
                  recalc=.true.
                  oqdks3=qdks
               endif
            else
               write(*,*) 'qqb_wz: it required interference,',
     1              'but did not find it ...'
               call pwhg_exit(-1)            
            endif
         endif

         if(recalc) then
            call spinoru(6,qdks,za,zb)
            
c--   s returned from sprod (common block) is 2*dot product
c--   calculate propagators

c--   always use these propagators now
c     prop12=s(1,2)/dcmplx(s(1,2)-wmass**2,wmass*wwidth)
c     prop34=s(3,4)/dcmplx(s(3,4)-wmass**2,wmass*wwidth)
c     prop56=s(5,6)/dcmplx(s(5,6)-zmass**2,zmass*zwidth)
            prop12(ip)=cpropfac(s(1,2),wmass,wwidth)
            prop34(ip)=cpropfac(s(3,4),wmass,wwidth)
            prop56(ip)=cpropfac(s(5,6),zmass,zwidth)

c---  apply a dipole form factor to anomalous couplings
c         xfac=1d0/(1d0+s(1,2)/(tevscale*1d3)**2)**2 ! (deactivated for now, julien)
            xfac = 1d0
            xdelg1_z=xfac*delg1_z
            xdelg1_g=xfac*delg1_g
            xdelk_z=xfac*delk_z
            xdelk_g=xfac*delk_g
            xlambda_z=xfac*lambda_z
            xlambda_g=xfac*lambda_g

c---  case dbar-u
            call A6treeb_anom_wz(1,2,3,4,5,6,za,zb,A6b_1,A6b_2,
     .           A6b_3,A6b_4)
            Fb123456_z_sm(ip)=2d0*(A6b_1+A6b_2+A6b_3)
            Fb123456_z_anom(ip)=
     .           A6b_1*(xdelg1_z+xdelk_z+xlambda_z*s(1,2)/wmass**2)
     .           +A6b_2*(xdelg1_z+xdelk_z+xlambda_z)
     .           +A6b_3*2d0*xdelg1_z
     .           +A6b_4*xlambda_z/wmass**2
            Fb123456_g_sm(ip)=2d0*(A6b_1+A6b_2+A6b_3)
            Fb123456_g_anom(ip)=
     .           A6b_1*(xdelg1_g+xdelk_g+xlambda_g*s(1,2)/wmass**2)
     .           +A6b_2*(xdelg1_g+xdelk_g+xlambda_g)
     .           +A6b_3*2d0*xdelg1_g
     .           +A6b_4*xlambda_g/wmass**2
            Fa123456(ip)=A6treea(1,2,3,4,5,6,za,zb)
            Fa126543(ip)=A6treea(1,2,6,5,4,3,za,zb)

            call A6treeb_anom_wz(1,2,3,4,6,5,za,zb,A6b_1,A6b_2,
     .           A6b_3,A6b_4)
            Fb123465_z_sm(ip)=2d0*(A6b_1+A6b_2+A6b_3)
            Fb123465_z_anom(ip)=
     .           A6b_1*(xdelg1_z+xdelk_z+xlambda_z*s(1,2)/wmass**2)
     .           +A6b_2*(xdelg1_z+xdelk_z+xlambda_z)
     .           +A6b_3*2d0*xdelg1_z
     .           +A6b_4*xlambda_z/wmass**2
            Fb123465_g_sm(ip)=2d0*(A6b_1+A6b_2+A6b_3)
            Fb123465_g_anom(ip)=
     .           A6b_1*(xdelg1_g+xdelk_g+xlambda_g*s(1,2)/wmass**2)
     .           +A6b_2*(xdelg1_g+xdelk_g+xlambda_g)
     .           +A6b_3*2d0*xdelg1_g
     .           +A6b_4*xlambda_g/wmass**2
            Fa123465(ip)=A6treea(1,2,3,4,6,5,za,zb)
            Fa125643(ip)=A6treea(1,2,5,6,4,3,za,zb)

c---  loop for a6b is simply tree*Vpole
            Vpole12(ip)=Vpole(s(1,2))

            Lb123456_z_sm(ip)=Vpole12(ip)*Fb123456_z_sm(ip)
            Lb123456_z_anom(ip)=Vpole12(ip)*Fb123456_z_anom(ip)
            Lb123456_g_sm(ip)=Vpole12(ip)*Fb123456_g_sm(ip)
            Lb123456_g_anom(ip)=Vpole12(ip)*Fb123456_g_anom(ip)
            La123456(ip)=A6loopa(1,2,3,4,5,6,za,zb)
            La126543(ip)=A6loopa(1,2,6,5,4,3,za,zb)

            Lb123465_z_sm(ip)=Vpole12(ip)*Fb123465_z_sm(ip)
            Lb123465_z_anom(ip)=Vpole12(ip)*Fb123465_z_anom(ip)
            Lb123465_g_sm(ip)=Vpole12(ip)*Fb123465_g_sm(ip)
            Lb123465_g_anom(ip)=Vpole12(ip)*Fb123465_g_anom(ip)
            La123465(ip)=A6loopa(1,2,3,4,6,5,za,zb)
            La125643(ip)=A6loopa(1,2,5,6,4,3,za,zb)

c---  case u-dbar
            call A6treeb_anom_wz(2,1,3,4,5,6,za,zb,A6b_1,A6b_2,
     .           A6b_3,A6b_4)
            Fb213456_z_sm(ip)=2d0*(A6b_1+A6b_2+A6b_3)
            Fb213456_z_anom(ip)=
     .           A6b_1*(xdelg1_z+xdelk_z+xlambda_z*s(1,2)/wmass**2)
     .           +A6b_2*(xdelg1_z+xdelk_z+xlambda_z)
     .           +A6b_3*2d0*xdelg1_z
     .           +A6b_4*xlambda_z/wmass**2
            Fb213456_g_sm(ip)=2d0*(A6b_1+A6b_2+A6b_3)
            Fb213456_g_anom(ip)=
     .           A6b_1*(xdelg1_g+xdelk_g+xlambda_g*s(1,2)/wmass**2)
     .           +A6b_2*(xdelg1_g+xdelk_g+xlambda_g)
     .           +A6b_3*2d0*xdelg1_g
     .           +A6b_4*xlambda_g/wmass**2
            Fa213456(ip)=A6treea(2,1,3,4,5,6,za,zb)
            Fa216543(ip)=A6treea(2,1,6,5,4,3,za,zb)

            call A6treeb_anom_wz(2,1,3,4,6,5,za,zb,A6b_1,A6b_2,
     .           A6b_3,A6b_4)
            Fb213465_z_sm(ip)=2d0*(A6b_1+A6b_2+A6b_3)
            Fb213465_z_anom(ip)=
     .           A6b_1*(xdelg1_z+xdelk_z+xlambda_z*s(1,2)/wmass**2)
     .           +A6b_2*(xdelg1_z+xdelk_z+xlambda_z)
     .           +A6b_3*2d0*xdelg1_z
     .           +A6b_4*xlambda_z/wmass**2
            Fb213465_g_sm(ip)=2d0*(A6b_1+A6b_2+A6b_3)
            Fb213465_g_anom(ip)=
     .           A6b_1*(xdelg1_g+xdelk_g+xlambda_g*s(1,2)/wmass**2)
     .           +A6b_2*(xdelg1_g+xdelk_g+xlambda_g)
     .           +A6b_3*2d0*xdelg1_g
     .           +A6b_4*xlambda_g/wmass**2
            Fa213465(ip)=A6treea(2,1,3,4,6,5,za,zb)
            Fa215643(ip)=A6treea(2,1,5,6,4,3,za,zb)

            Lb213456_z_sm(ip)=Vpole12(ip)*Fb213456_z_sm(ip)
            Lb213456_z_anom(ip)=Vpole12(ip)*Fb213456_z_anom(ip)
            Lb213456_g_sm(ip)=Vpole12(ip)*Fb213456_g_sm(ip)
            Lb213456_g_anom(ip)=Vpole12(ip)*Fb213456_g_anom(ip)
            La213456(ip)=A6loopa(2,1,3,4,5,6,za,zb)
            La216543(ip)=A6loopa(2,1,6,5,4,3,za,zb)

            Lb213465_z_sm(ip)=Vpole12(ip)*Fb213465_z_sm(ip)
            Lb213465_z_anom(ip)=Vpole12(ip)*Fb213465_z_anom(ip)
            Lb213465_g_sm(ip)=Vpole12(ip)*Fb213465_g_sm(ip)
            Lb213465_g_anom(ip)=Vpole12(ip)*Fb213465_g_anom(ip)
            La213465(ip)=A6loopa(2,1,3,4,6,5,za,zb)
            La215643(ip)=A6loopa(2,1,5,6,4,3,za,zb)

            if (.not.dronly) then
c---  for supplementary diagrams.
               Fa346512(ip)=A6treea(3,4,6,5,1,2,za,zb)
               Fa342156(ip)=A6treea(3,4,2,1,5,6,za,zb)
               Fa652143(ip)=A6treea(6,5,2,1,4,3,za,zb)
               Fa345612(ip)=A6treea(3,4,5,6,1,2,za,zb)
               Fa342165(ip)=A6treea(3,4,2,1,6,5,za,zb)
               Fa346521(ip)=A6treea(3,4,6,5,2,1,za,zb)
               Fa341256(ip)=A6treea(3,4,1,2,5,6,za,zb)
               Fa651243(ip)=A6treea(6,5,1,2,4,3,za,zb)
               Fa345621(ip)=A6treea(3,4,5,6,2,1,za,zb)
               Fa341265(ip)=A6treea(3,4,1,2,6,5,za,zb)
               Fa653412(ip)=A6treea(6,5,3,4,1,2,za,zb)
               Fa653421(ip)=A6treea(6,5,3,4,2,1,za,zb)
c---  loop diagrams just tree*Vpole since they're all triangle-type
               Vpole12(ip)=Vpole(s(1,2))
            endif
         endif

c---  set up left/right handed couplings for both Z and gamma*
c---  note that L/R labels the LEPTON coupling v2, NOT the quarks (all L)
         q1=fq(idpart5)         ! added back from qqb_wz.F (julien)
         do j=-nf,nf
            ZgL(j)=zfL(j)*v2(1)*prop56(ip)+fQ(j)*q1           
            ZgR(j)=zfL(j)*v2(2)*prop56(ip)+fQ(j)*q1           
         enddo

c---  set up the same but for anomalous Z-quark couplings (new julien)
         do j=-nf,nf
            ZgL_anom(j)=l_anom(j)*v2(1)*prop56(ip)
            ZgR_anom(j)=l_anom(j)*v2(2)*prop56(ip)
         enddo
         
         j=idpart1
         k=idpart2
         if     ((j .gt. 0) .and. (k .lt. 0)) then
            AWZM_sm=(FAC*(ZgL(+j)*Fa213456(ip)+ZgL(-k)*Fa216543(ip))
     .           +FACM*(v2(1)*cotw*prop56(ip)*Fb213456_z_sm(ip)
     .           +q1*Fb213456_g_sm(ip))*prop12(ip))*prop34(ip)
            AWZM_anom=(FACM*(v2(1)*cotw*prop56(ip)*Fb213456_z_anom(ip)
     .           +q1*Fb213456_g_anom(ip))*prop12(ip))*prop34(ip)         ! from TGC
            AWZM_anom=AWZM_anom
     .           +(FAC*(ZgL_anom(+j)*Fa213456(ip)+
     .           ZgL_anom(-k)*Fa216543(ip)))*prop34(ip)                  ! from anomalous Zqq coupling
            AWZM_anom=AWZM_anom
     .           +(FAC*(ZgL(+j)*Fa213456(ip)+ZgL(-k)*Fa216543(ip))
     .           +FACM*(v2(1)*cotw*prop56(ip)*Fb213456_z_sm(ip)
     .           +q1*Fb213456_g_sm(ip))*prop12(ip))*prop34(ip)*delgQL_w  ! from anomalous Wqq' coupling
            AWZM_anom2=(FAC*(ZgL_anom(+j)*Fa213456(ip)+
     .          ZgL_anom(-k)*Fa216543(ip))+
     .          FACM*(v2(1)*cotw*prop56(ip)*Fb213456_z_anom(ip)
     .          +q1*Fb213456_g_anom(ip))*prop12(ip))*prop34(ip)*delgQL_w ! 1/lambdaEFT**4 contribution
            AWZP_sm=(FAC*(ZgR(+j)*Fa213465(ip)+ZgR(-k)*Fa215643(ip))
     .           +FACM*(v2(2)*cotw*prop56(ip)*Fb213465_z_sm(ip)
     .           +q1*Fb213465_g_sm(ip))*prop12(ip))*prop34(ip)
            AWZP_anom=(FACM*(v2(2)*cotw*prop56(ip)*Fb213465_z_anom(ip)
     .           +q1*Fb213465_g_anom(ip))*prop12(ip))*prop34(ip)         ! from TGC
            AWZP_anom=AWZP_anom
     .           +(FAC*(ZgR_anom(+j)*Fa213465(ip)+
     .           ZgR_anom(-k)*Fa215643(ip)))*prop34(ip)                  ! from anomalous Zqq coupling
            AWZP_anom=AWZP_anom
     .           +(FAC*(ZgR(+j)*Fa213465(ip)+ZgR(-k)*Fa215643(ip))
     .           +FACM*(v2(2)*cotw*prop56(ip)*Fb213465_z_sm(ip)
     .           +q1*Fb213465_g_sm(ip))*prop12(ip))*prop34(ip)*delgQL_w  ! from anomalous Wqq' coupling
            AWZP_anom2=(FAC*(ZgR_anom(+j)*Fa213465(ip)+
     .          ZgR_anom(-k)*Fa215643(ip))+
     .          FACM*(v2(2)*cotw*prop56(ip)*Fb213465_z_anom(ip)
     .          +q1*Fb213465_g_anom(ip))*prop12(ip))*prop34(ip)*delgQL_w ! 1/lambdaEFT**4 contribution
            BWZM_sm=(FAC*(ZgL(+j)*La213456(ip)+ZgL(-k)*La216543(ip))
     .           +FACM*(v2(1)*cotw*prop56(ip)*Lb213456_z_sm(ip)
     .           +q1*Lb213456_g_sm(ip))*prop12(ip))*prop34(ip)
            BWZM_anom=(FACM*(v2(1)*cotw*prop56(ip)*Lb213456_z_anom(ip)
     .           +q1*Lb213456_g_anom(ip))*prop12(ip))*prop34(ip)         ! from TGC
            BWZM_anom=BWZM_anom
     .           +(FAC*(ZgL_anom(+j)*La213456(ip)+
     .           ZgL_anom(-k)*La216543(ip)))*prop34(ip)                  ! from anomalous Zqq coupling
            BWZM_anom=BWZM_anom
     .           +(FAC*(ZgL(+j)*La213456(ip)+ZgL(-k)*La216543(ip))
     .           +FACM*(v2(1)*cotw*prop56(ip)*Lb213456_z_sm(ip)
     .           +q1*Lb213456_g_sm(ip))*prop12(ip))*prop34(ip)*delgQL_w  ! from anomalous Wqq' coupling
            BWZM_anom2=(FAC*(ZgL_anom(+j)*La213456(ip)+
     .          ZgL_anom(-k)*La216543(ip))+
     .          FACM*(v2(1)*cotw*prop56(ip)*Lb213456_z_anom(ip)
     .          +q1*Lb213456_g_anom(ip))*prop12(ip))*prop34(ip)*delgQL_w ! 1/lambdaEFT**4 contribution
            BWZP_sm=(FAC*(ZgR(+j)*La213465(ip)+ZgR(-k)*La215643(ip))
     .           +FACM*(v2(2)*cotw*prop56(ip)*Lb213465_z_sm(ip)
     .           +q1*Lb213465_g_sm(ip))*prop12(ip))*prop34(ip)
            BWZP_anom=(FACM*(v2(2)*cotw*prop56(ip)*Lb213465_z_anom(ip)
     .           +q1*Lb213465_g_anom(ip))*prop12(ip))*prop34(ip)         ! from TGC
            BWZP_anom=BWZP_anom
     .           +(FAC*(ZgR_anom(+j)*La213465(ip)+
     .           ZgR_anom(-k)*La215643(ip)))*prop34(ip)                  ! from anomalous Zqq coupling
            BWZP_anom=BWZP_anom
     .           +(FAC*(ZgR(+j)*La213465(ip)+ZgR(-k)*La215643(ip))
     .           +FACM*(v2(2)*cotw*prop56(ip)*Lb213465_z_sm(ip)
     .           +q1*Lb213465_g_sm(ip))*prop12(ip))*prop34(ip)*delgQL_w  ! from anomalous Wqq' coupling
            BWZP_anom2=(FAC*(ZgR_anom(+j)*La213465(ip)+
     .          ZgR_anom(-k)*La215643(ip))+
     .          FACM*(v2(2)*cotw*prop56(ip)*Lb213465_z_anom(ip)
     .          +q1*Lb213465_g_anom(ip))*prop12(ip))*prop34(ip)*delgQL_w ! 1/lambdaEFT**4 contribution
         elseif ((j .lt. 0) .and. (k .gt. 0)) then
            AWZM_sm=(FAC*(ZgL(+k)*Fa123456(ip)+ZgL(-j)*Fa126543(ip))
     .           +FACM*(v2(1)*cotw*prop56(ip)*Fb123456_z_sm(ip)
     .           +q1*Fb123456_g_sm(ip))*prop12(ip))*prop34(ip)
            AWZM_anom=(FACM*(v2(1)*cotw*prop56(ip)*Fb123456_z_anom(ip)
     .           +q1*Fb123456_g_anom(ip))*prop12(ip))*prop34(ip)         ! from TGC
            AWZM_anom=AWZM_anom
     .           +(FAC*(ZgL_anom(+k)*Fa123456(ip)+
     .           ZgL_anom(-j)*Fa126543(ip)))*prop34(ip)                  ! from anomalous Zqq coupling
            AWZM_anom=AWZM_anom
     .           +(FAC*(ZgL(+k)*Fa123456(ip)+ZgL(-j)*Fa126543(ip))
     .           +FACM*(v2(1)*cotw*prop56(ip)*Fb123456_z_sm(ip)
     .           +q1*Fb123456_g_sm(ip))*prop12(ip))*prop34(ip)*delgQL_w  ! from anomalous Wqq' coupling
            AWZM_anom2=(FAC*(ZgL_anom(+k)*Fa123456(ip)+
     .          ZgL_anom(-j)*Fa126543(ip))+
     .          FACM*(v2(1)*cotw*prop56(ip)*Fb123456_z_anom(ip)
     .          +q1*Fb123456_g_anom(ip))*prop12(ip))*prop34(ip)*delgQL_w ! 1/lambdaEFT**4 contribution
            AWZP_sm=(FAC*(ZgR(+k)*Fa123465(ip)+ZgR(-j)*Fa125643(ip))
     .           +FACM*(v2(2)*cotw*prop56(ip)*Fb123465_z_sm(ip)
     .           +q1*Fb123465_g_sm(ip))*prop12(ip))*prop34(ip)
            AWZP_anom=(FACM*(v2(2)*cotw*prop56(ip)*Fb123465_z_anom(ip)
     .           +q1*Fb123465_g_anom(ip))*prop12(ip))*prop34(ip)         ! from TGC
            AWZP_anom=AWZP_anom
     .           +(FAC*(ZgR_anom(+k)*Fa123465(ip)+
     .           ZgR_anom(-j)*Fa125643(ip)))*prop34(ip)                  ! from anomalous Zqq coupling
            AWZP_anom=AWZP_anom
     .           +(FAC*(ZgR(+k)*Fa123465(ip)+ZgR(-j)*Fa125643(ip))
     .           +FACM*(v2(2)*cotw*prop56(ip)*Fb123465_z_sm(ip)
     .           +q1*Fb123465_g_sm(ip))*prop12(ip))*prop34(ip)*delgQL_w  ! from anomalous Wqq' coupling
            AWZP_anom2=(FAC*(ZgR_anom(+k)*Fa123465(ip)+
     .          ZgR_anom(-j)*Fa125643(ip))+
     .          FACM*(v2(2)*cotw*prop56(ip)*Fb123465_z_anom(ip)
     .          +q1*Fb123465_g_anom(ip))*prop12(ip))*prop34(ip)*delgQL_w ! 1/lambdaEFT**4 contribution
            BWZM_sm=(FAC*(ZgL(+k)*La123456(ip)+ZgL(-j)*La126543(ip))
     .           +FACM*(v2(1)*cotw*prop56(ip)*Lb123456_z_sm(ip)
     .           +q1*Lb123456_g_sm(ip))*prop12(ip))*prop34(ip)
            BWZM_anom=(FACM*(v2(1)*cotw*prop56(ip)*Lb123456_z_anom(ip)
     .           +q1*Lb123456_g_anom(ip))*prop12(ip))*prop34(ip)         ! from TGC
            BWZM_anom=BWZM_anom
     .           +(FAC*(ZgL_anom(+k)*La123456(ip)+
     .           ZgL_anom(-j)*La126543(ip)))*prop34(ip)                  ! from anomalous Zqq coupling
            BWZM_anom=BWZM_anom
     .           +(FAC*(ZgL(+k)*La123456(ip)+ZgL(-j)*La126543(ip))
     .           +FACM*(v2(1)*cotw*prop56(ip)*Lb123456_z_sm(ip)
     .           +q1*Lb123456_g_sm(ip))*prop12(ip))*prop34(ip)*delgQL_w  ! from anomalous Wqq' coupling
            BWZM_anom2=(FAC*(ZgL_anom(+k)*La123456(ip)+
     .          ZgL_anom(-j)*La126543(ip))+
     .          FACM*(v2(1)*cotw*prop56(ip)*Lb123456_z_anom(ip)
     .          +q1*Lb123456_g_anom(ip))*prop12(ip))*prop34(ip)*delgQL_w ! 1/lambdaEFT**4 contribution
            BWZP_sm=(FAC*(ZgR(+k)*La123465(ip)+ZgR(-j)*La125643(ip))
     .           +FACM*(v2(2)*cotw*prop56(ip)*Lb123465_z_sm(ip)
     .           +q1*Lb123465_g_sm(ip))*prop12(ip))*prop34(ip)
            BWZP_anom=(FACM*(v2(2)*cotw*prop56(ip)*Lb123465_z_anom(ip)
     .           +q1*Lb123465_g_anom(ip))*prop12(ip))*prop34(ip)         ! from TGC
            BWZP_anom=BWZP_anom
     .           +(FAC*(ZgR_anom(+k)*La123465(ip)+
     .           ZgR_anom(-j)*La125643(ip)))*prop34(ip)                  ! from anomalous Zqq coupling
            BWZP_anom=BWZP_anom
     .           +(FAC*(ZgR(+k)*La123465(ip)+ZgR(-j)*La125643(ip))
     .           +FACM*(v2(2)*cotw*prop56(ip)*Lb123465_z_sm(ip)
     .           +q1*Lb123465_g_sm(ip))*prop12(ip))*prop34(ip)*delgQL_w  ! from anomalous Wqq' coupling
            BWZP_anom2=(FAC*(ZgR_anom(+k)*La123465(ip)+
     .          ZgR_anom(-j)*La125643(ip))+
     .          FACM*(v2(2)*cotw*prop56(ip)*Lb123465_z_anom(ip)
     .          +q1*Lb123465_g_anom(ip))*prop12(ip))*prop34(ip)*delgQL_w ! 1/lambdaEFT**4 contribution
         endif
         if (.not.dronly) then
c---  we need supplementary diagrams for gauge invariance.
c---  now also assume that we have lepton decay products for W
c---  so that v2(1)=le, v2(2)=re
c---  1st term is diagram where Z couples to electron
c---  2nd term is diagram where Z couples to neutrino
c---  3rd term is diagram where gamma* couples to electron
c---  4th term (l-h only) contains two W propagators
!     version that follows the same spirit as in qqb_wz.F, with wwflag as in qqb_wz.F
            if     ((j .gt. 0) .and. (k .lt. 0)) then
               suppl=FAC*prop12(ip)*(
     .              (en1*Fa346512(ip)+en2*Fa342156(ip))*v2(1)*prop56(ip)
     .              +q1*(-1d0)*(cl1*Fa346512(ip)+cl2*Fa342156(ip))
     .              +wwflag*0.5d0/xw*prop34(ip)*(wl1*Fa652143(ip)
     .              +wl2*Fa653412(ip)))
               AWZM_sm=AWZM_sm+suppl
               AWZM_anom=AWZM_anom+suppl*delgQL_w             ! from anomalous Wqq' coupling
               BWZM_sm=BWZM_sm+suppl*Vpole12(ip)
               BWZM_anom=BWZM_anom+suppl*delgQL_w*Vpole12(ip) ! from anomalous Wqq' coupling
               suppl=FAC*prop12(ip)*(
     .              (en1*Fa345612(ip)+en2*Fa342165(ip))*v2(2)*prop56(ip)
     .              +q1*(-1d0)*(cl1*Fa345612(ip)+cl2*Fa342165(ip)))
               AWZP_sm=AWZP_sm+suppl
               AWZP_anom=AWZP_anom+suppl*delgQL_w             ! from anomalous Wqq' coupling
               BWZP_sm=BWZP_sm+suppl*Vpole12(ip)
               BWZP_anom=BWZP_anom+suppl*delgQL_w*Vpole12(ip) ! from anomalous Wqq' coupling
            elseif ((j .lt. 0) .and. (k .gt. 0)) then
               suppl=FAC*prop12(ip)*(
     .              (en1*Fa346521(ip)+en2*Fa341256(ip))*v2(1)*prop56(ip)
     .              +q1*(-1d0)*(cl1*Fa346521(ip)+cl2*Fa341256(ip))
     .              +wwflag*0.5d0/xw*prop34(ip)*(wl1*Fa651243(ip)
     .              +wl2*Fa653421(ip)))
               AWZM_sm=AWZM_sm+suppl
               AWZM_anom=AWZM_anom+suppl*delgQL_w             ! from anomalous Wqq' coupling
               BWZM_sm=BWZM_sm+suppl*Vpole12(ip)
               BWZM_anom=BWZM_anom+suppl*delgQL_w*Vpole12(ip) ! from anomalous Wqq' coupling
               suppl=FAC*prop12(ip)*(
     .              (en1*Fa345621(ip)+en2*Fa341265(ip))*v2(2)*prop56(ip)
     .              +q1*(-1d0)*(cl1*Fa345621(ip)+cl2*Fa341265(ip)))
               AWZP_sm=AWZP_sm+suppl
               AWZP_anom=AWZP_anom+suppl*delgQL_w             ! from anomalous Wqq' coupling
               BWZP_sm=BWZP_sm+suppl*Vpole12(ip)
               BWZP_anom=BWZP_anom+suppl*delgQL_w*Vpole12(ip) ! from anomalous Wqq' coupling
            endif
         endif

         xmsq(iloop)=xmsq(iloop) + FACNLO*Vsq(j,k)*ave*2d0*
     .        dble(dconjg(AWZM_sm)*BWZM_sm+dconjg(AWZP_sm)*BWZP_sm)
         if(nEFT.gt.0) then
            xmsq(iloop)=xmsq(iloop) + FACNLO*Vsq(j,k)*ave*2d0*dble(
     &           dconjg(AWZM_sm)*BWZM_anom+dconjg(AWZM_anom)*BWZM_sm+
     &           dconjg(AWZP_sm)*BWZP_anom+dconjg(AWZP_anom)*BWZP_sm)
            if(nEFT.gt.1) then
               xmsq(iloop)=xmsq(iloop) + FACNLO*Vsq(j,k)*ave*2d0*dble(
     &              dconjg(AWZM_anom)*BWZM_anom+
     &              dconjg(AWZP_anom)*BWZP_anom)
               xmsq(iloop)=xmsq(iloop) + FACNLO*Vsq(j,k)*ave*2d0*dble(
     &              dconjg(AWZM_sm)*BWZM_anom2+
     &              dconjg(AWZM_anom2)*BWZM_sm+
     &              dconjg(AWZP_sm)*BWZP_anom2+
     &              dconjg(AWZP_anom2)*BWZP_sm)
               if(nEFT.gt.2) then
                  xmsq(iloop)=xmsq(iloop) +
     &                 FACNLO*Vsq(j,k)*ave*2d0*dble(
     &                 dconjg(AWZM_anom)*BWZM_anom2+
     &                 dconjg(AWZM_anom2)*BWZM_anom+
     &                 dconjg(AWZP_anom)*BWZP_anom2+
     &                 dconjg(AWZP_anom2)*BWZP_anom)
                  if(nEFT.gt.3) then
                     xmsq(iloop)=xmsq(iloop) +
     &                    FACNLO*Vsq(j,k)*ave*2d0*dble(
     &                    dconjg(AWZM_anom2)*BWZM_anom2+
     &                    dconjg(AWZP_anom2)*BWZP_anom2) ! full matrix element squared
                  endif
               endif
            endif
         endif

         if (iloop.eq.1) then
            if (interference) then
               AWZM_sm_SAVE=AWZM_sm
               AWZM_anom_SAVE=AWZM_anom
               AWZM_anom2_SAVE=AWZM_anom2
               BWZM_sm_SAVE=BWZM_sm
               BWZM_anom_SAVE=BWZM_anom
               BWZM_anom2_SAVE=BWZM_anom2
            endif
         elseif (iloop.eq.2) then
            xmsq(3)=xmsq(3)-FACNLO*Vsq(j,k)*ave*(
     .           dconjg(AWZM_sm_SAVE)*BWZM_sm +
     .           AWZM_sm_SAVE*dconjg(BWZM_sm) +
     .           dconjg(AWZM_sm)*BWZM_sm_SAVE +
     .           AWZM_sm*dconjg(BWZM_sm_SAVE))
            if(nEFT.gt.0) then
               xmsq(3)=xmsq(3)-FACNLO*Vsq(j,k)*ave*(
     .              dconjg(AWZM_sm_SAVE)*BWZM_anom +
     .              dconjg(AWZM_anom_SAVE)*BWZM_sm +
     .              AWZM_sm_SAVE*dconjg(BWZM_anom) +
     .              AWZM_anom_SAVE*dconjg(BWZM_sm) +
     .              dconjg(AWZM_sm)*BWZM_anom_SAVE +
     .              dconjg(AWZM_anom)*BWZM_sm_SAVE +
     .              AWZM_sm*dconjg(BWZM_anom_SAVE) +
     .              AWZM_anom*dconjg(BWZM_sm_SAVE))
               if(nEFT.gt.1) then
                  xmsq(3)=xmsq(3)-FACNLO*Vsq(j,k)*ave*(
     .                 dconjg(AWZM_sm_SAVE)*BWZM_anom2 +
     .                 dconjg(AWZM_anom2_SAVE)*BWZM_sm +
     .                 dconjg(AWZM_anom_SAVE)*BWZM_anom +
     .                 AWZM_sm_SAVE*dconjg(BWZM_anom2) +
     .                 AWZM_anom2_SAVE*dconjg(BWZM_sm) +
     .                 AWZM_anom_SAVE*dconjg(BWZM_anom) +
     .                 dconjg(AWZM_sm)*BWZM_anom2_SAVE +
     .                 dconjg(AWZM_anom2)*BWZM_sm_SAVE +
     .                 dconjg(AWZM_anom)*BWZM_anom_SAVE +
     .                 AWZM_sm*dconjg(BWZM_anom2_SAVE) +
     .                 AWZM_anom2*dconjg(BWZM_sm_SAVE) +
     .                 AWZM_anom*dconjg(BWZM_anom_SAVE))
                  if(nEFT.gt.2) then
                     xmsq(3)=xmsq(3)-FACNLO*Vsq(j,k)*ave*(
     .                    dconjg(AWZM_anom_SAVE)*BWZM_anom2 +
     .                    dconjg(AWZM_anom2_SAVE)*BWZM_anom +
     .                    AWZM_anom_SAVE*dconjg(BWZM_anom2) +
     .                    AWZM_anom2_SAVE*dconjg(BWZM_anom) +
     .                    dconjg(AWZM_anom)*BWZM_anom2_SAVE +
     .                    dconjg(AWZM_anom2)*BWZM_anom_SAVE +
     .                    AWZM_anom*dconjg(BWZM_anom2_SAVE) +
     .                    AWZM_anom2*dconjg(BWZM_anom_SAVE))
                     if(nEFT.gt.3) then
                        xmsq(3)=xmsq(3)-FACNLO*Vsq(j,k)*ave*(
     .                       dconjg(AWZM_anom2_SAVE)*BWZM_anom2 +
     .                       AWZM_anom2_SAVE*dconjg(BWZM_anom2) +
     .                       dconjg(AWZM_anom2)*BWZM_anom2_SAVE +
     .                       AWZM_anom2*dconjg(BWZM_anom2_SAVE))
                     endif
                  endif
               endif
            endif
         endif
         
         
         if(interference) then
            if(iloop.eq.2) then
c     this is for testing:
c     msqv=(xmsq(1)+xmsq(2))/2 *
               msqv= xmsq(1) *
     1              (1+xmsq(3)/(xmsq(1)+xmsq(2)))
            endif
         else
            msqv=xmsq(1)
         endif


      enddo                     !iloop
      
      msqv = msqv*vsymfact

      return
      end

