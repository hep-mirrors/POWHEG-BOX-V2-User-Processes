      subroutine qqb_wz(p,msq)
      implicit none
C----Author R.K.Ellis December 1998
C----modified by JMC to include supplementary diagrams February 1999
c----Matrix element for WZ production
c----in the notation of DKS
C----averaged over initial oolours and spins
C For nwz=+1
c     u(-p1)+dbar(-p2)-->mu^-(p5)+mu^+(p6)+n(p3)+e^+(p4)
C For nwz=-1
c     d(-p1)+ubar(-p2)-->mu^-(p5)+mu^+(p6)+e^-(p3)+nbar(p4)
c---
c     Notation to allow room for p3 --- gluon emission.
      include 'constants.f'
      include 'ckm.f'
      include 'zwcouple.f'
      include 'sprods_com.f'
      include 'zprods_decl.f'
      include 'ewcharge.f'
      include 'anomcoup.f'
      include 'nwz.f'
      include 'cvecbos.h'
      include 'vvsettings.f'
      double precision msq,p(mxpart,4),qdks(mxpart,4)
      double precision oqdks1(mxpart,4), oqdks2(mxpart,4),
     1     oqdks3(mxpart,4)
c in case interference is needed, it will hold the direct, crossed
c and interference term (first index from 1 to 3 respectively)
      double precision xmsq(3)
      double complex AWZM,AWZP,a6treea
      double complex prop34(3),prop56(3),prop12(3)
      double complex Fa123456(3),Fa126543(3),Fb123456_z(3),Fb123456_g(3)
      double complex Fa123465(3),Fa125643(3),Fb123465_z(3),Fb123465_g(3)
      double complex Fa213456(3),Fa216543(3),Fb213456_z(3),Fb213456_g(3)
      double complex Fa213465(3),Fa215643(3),Fb213465_z(3),Fb213465_g(3)
      double complex Fa346512(3),Fa342156(3),Fa652143(3)
      double complex Fa345612(3),Fa342165(3),Fa653421(3)
      double complex Fa346521(3),Fa341256(3),Fa651243(3)
      double complex Fa345621(3),Fa341265(3),Fa653412(3)


      save oqdks1,oqdks2,oqdks3,
     . prop34,prop56,prop12,
     . Fa123456,Fa126543,Fb123456_z,Fb123456_g,
     . Fa123465,Fa125643,Fb123465_z,Fb123465_g,
     . Fa213456,Fa216543,Fb213456_z,Fb213456_g,
     . Fa213465,Fa215643,Fb213465_z,Fb213465_g,
     . Fa346512,Fa342156,Fa652143,
     . Fa345612,Fa342165,Fa653421,
     . Fa346521,Fa341256,Fa651243,
     . Fa345621,Fa341265,Fa653412
 


      double complex ZgL(-nf:nf),ZgR(-nf:nf),A6b_1,A6b_2,A6b_3,A6b_4
      double precision v2(2),cl1,cl2,en1,en2,wl1,wl2
      double precision ave,cotw,wwflag,xfac
      character*2 plabel(mxpart)
      common/plabel/plabel
      double precision FAC,FACM
      integer j,k,ip
      parameter(ave=0.25d0/xn)
      data cl1,cl2,en1,en2/4*1d0/

      integer iloop,nloop
      double complex AWZM_SAVE
      double complex cpropfac
      external cpropfac
      logical isewup,isewdo,recalc,areequal
      integer i3chargeofid

      FAC=-two*gwsq*esq


      if (nwz.eq.1) then
         FACM=FAC
      elseif (nwz.eq.-1) then
         FACM=-FAC
      else
         write(6,*) 'nwz .ne. +1 or -1'
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
      
c---  wwflag=1 for most cases, indicating presence of diagram with 2 W's
      wwflag=1d0
c---  but for Z -> bbbar this diagram contains |V_tb|**2 which we take 0
      if (plabel(5) .eq. 'qb') then    
         wwflag=0d0
      endif
      
c--   if Z -> neutrinos, we need to switch c1 and c2
c     if ((vdecaymodeZ.eq.12).or.(vdecaymodeZ.eq.14).or.
c     .     (vdecaymodeZ.eq.16)) then
c     cl1=1d0-cl1
c     cl2=1d0-cl2
c     endif
      
      v2(1)=zfl(idpart5)
      v2(2)=zfr(idpart5)
      cotw=dsqrt((one-xw)/xw)

      msq=0
      AWZM_SAVE=0
      xmsq = 0

      if (interference) then
         nloop=2
      else
         nloop=1
      endif

      do iloop=1,nloop

C---- Change the momenta to DKS notation 
c     We have --- d(-p1)+ubar(-p2)-->nu(p3)+e^+(p4)+mu^-(p5)+mu^+(p6)
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
            xfac=1d0/(1d0+s(1,2)/(tevscale*1d3)**2)**2
            xdelg1_z=xfac*delg1_z
            xdelg1_g=xfac*delg1_g
            xdelk_z=xfac*delk_z
            xdelk_g=xfac*delk_g
            xlambda_z=xfac*lambda_z
            xlambda_g=xfac*lambda_g


c---  case dbar-u or ubar-d
            call A6treeb_anom_wz(1,2,3,4,5,6,za,zb,A6b_1,A6b_2,
     .           A6b_3,A6b_4)
            Fb123456_z(ip)=
     .           A6b_1*(2d0+xdelg1_z+xdelk_z+xlambda_z*s(1,2)/wmass**2)
     .           +A6b_2*(2d0+xdelg1_z+xdelk_z+xlambda_z)
     .           +A6b_3*2d0*(1d0+xdelg1_z) 
     .           +A6b_4*xlambda_z/wmass**2
            Fb123456_g(ip)=
     .           A6b_1*(2d0+xdelg1_g+xdelk_g+xlambda_g*s(1,2)/wmass**2)
     .           +A6b_2*(2d0+xdelg1_g+xdelk_g+xlambda_g)
     .           +A6b_3*2d0*(1d0+xdelg1_g) 
     .           +A6b_4*xlambda_g/wmass**2
            Fa123456(ip)=A6treea(1,2,3,4,5,6,za,zb)
            Fa126543(ip)=A6treea(1,2,6,5,4,3,za,zb)
            
            call A6treeb_anom_wz(1,2,3,4,6,5,za,zb,A6b_1,A6b_2,
     .           A6b_3,A6b_4)
            Fb123465_z(ip)=
     .           A6b_1*(2d0+xdelg1_z+xdelk_z+xlambda_z*s(1,2)/wmass**2)
     .           +A6b_2*(2d0+xdelg1_z+xdelk_z+xlambda_z)
     .           +A6b_3*2d0*(1d0+xdelg1_z) 
     .           +A6b_4*xlambda_z/wmass**2
            Fb123465_g(ip)=
     .           A6b_1*(2d0+xdelg1_g+xdelk_g+xlambda_g*s(1,2)/wmass**2)
     .           +A6b_2*(2d0+xdelg1_g+xdelk_g+xlambda_g)
     .           +A6b_3*2d0*(1d0+xdelg1_g) 
     .           +A6b_4*xlambda_g/wmass**2
            Fa123465(ip)=A6treea(1,2,3,4,6,5,za,zb)
            Fa125643(ip)=A6treea(1,2,5,6,4,3,za,zb)

c---  case u-dbar or d-ubar
            call A6treeb_anom_wz(2,1,3,4,5,6,za,zb,
     .           A6b_1,A6b_2,A6b_3,A6b_4)
            Fb213456_z(ip)=
     .           A6b_1*(2d0+xdelg1_z+xdelk_z+xlambda_z*s(1,2)/wmass**2)
     .           +A6b_2*(2d0+xdelg1_z+xdelk_z+xlambda_z)
     .           +A6b_3*2d0*(1d0+xdelg1_z) 
     .           +A6b_4*xlambda_z/wmass**2
            Fb213456_g(ip)=
     .           A6b_1*(2d0+xdelg1_g+xdelk_g+xlambda_g*s(1,2)/wmass**2)
     .           +A6b_2*(2d0+xdelg1_g+xdelk_g+xlambda_g)
     .           +A6b_3*2d0*(1d0+xdelg1_g) 
     .           +A6b_4*xlambda_g/wmass**2
            Fa213456(ip)=A6treea(2,1,3,4,5,6,za,zb)
            Fa216543(ip)=A6treea(2,1,6,5,4,3,za,zb)
            
            call A6treeb_anom_wz(2,1,3,4,6,5,za,zb,A6b_1,A6b_2,
     .           A6b_3,A6b_4)
            Fb213465_z(ip)=
     .           A6b_1*(2d0+xdelg1_z+xdelk_z+xlambda_z*s(1,2)/wmass**2)
     .           +A6b_2*(2d0+xdelg1_z+xdelk_z+xlambda_z)
     .           +A6b_3*2d0*(1d0+xdelg1_z) 
     .           +A6b_4*xlambda_z/wmass**2
            Fb213465_g(ip)=
     .           A6b_1*(2d0+xdelg1_g+xdelk_g+xlambda_g*s(1,2)/wmass**2)
     .           +A6b_2*(2d0+xdelg1_g+xdelk_g+xlambda_g)
     .           +A6b_3*2d0*(1d0+xdelg1_g) 
     .           +A6b_4*xlambda_g/wmass**2
            Fa213465(ip)=A6treea(2,1,3,4,6,5,za,zb)
            Fa215643(ip)=A6treea(2,1,5,6,4,3,za,zb)

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
            endif
         endif

c---  set up left/right handed couplings for both Z and gamma*
c---  note that L/R labels the LEPTON coupling v2, NOT the quarks (all L)
         q1=fq(idpart5)
         do j=-nf,nf
            ZgL(j)=zfL(j)*v2(1)*prop56(ip)+fQ(j)*q1           
            ZgR(j)=zfL(j)*v2(2)*prop56(ip)+fQ(j)*q1           
         enddo


c     DKS paper used helicity ordering: (1-,2+,3-,4+,5+,6-)
c     for all outgoing helicities.
c     In our initial state incoming scheme: (1+,2-,3-,4+,5+,6-)

         
         j=idpart1
         k=idpart2
         if ((j .gt. 0) .and. (k .lt. 0)) then
c     a213456: 2 is left (incoming quark;
c     must carry Z L coupling for k
c     must carry Z L coupling for 
            AWZM=(FAC*(ZgL(+j)*Fa213456(ip)+ZgL(-k)*Fa216543(ip))
     .           +FACM*(v2(1)*cotw*prop56(ip)*Fb213456_z(ip)
     .           +q1*Fb213456_g(ip))*prop12(ip))*prop34(ip)
            AWZP=(FAC*(ZgR(+j)*Fa213465(ip)+ZgR(-k)*Fa215643(ip))
     .           +FACM*(v2(2)*cotw*prop56(ip)*Fb213465_z(ip)
     .           +q1*Fb213465_g(ip))*prop12(ip))*prop34(ip)
         elseif ((j .lt. 0) .and. (k .gt. 0)) then
            AWZM=(FAC*(ZgL(+k)*Fa123456(ip)+ZgL(-j)*Fa126543(ip))
     .           +FACM*(v2(1)*cotw*prop56(ip)*Fb123456_z(ip)
     .           +q1*Fb123456_g(ip))*prop12(ip))*prop34(ip)
            AWZP=(FAC*(ZgR(+k)*Fa123465(ip)+ZgR(-j)*Fa125643(ip))
     .           +FACM*(v2(2)*cotw*prop56(ip)*Fb123465_z(ip)
     .           +q1*Fb123465_g(ip))*prop12(ip))*prop34(ip)
         endif
         if (.not.dronly) then
c---  we need supplementary diagrams for gauge invariance.
c---  now also assume that we have lepton decay products for W
c---  so that v2(1)=le, v2(2)=re
c---  1st term is diagram where Z couples to electron
c---  2nd term is diagram where Z couples to neutrino
c---  3rd term is diagram where gamma* couples to electron
c---  4th term (l-h only) contains two W propagators
            if ((j .gt. 0) .and. (k .lt. 0)) then
               AWZM=AWZM+FAC*prop12(ip)*(
     .              (en1*Fa346512(ip)+en2*Fa342156(ip))*v2(1)*
     .              prop56(ip)
     .              +q1*(-1d0)*(cl1*Fa346512(ip)+cl2*Fa342156(ip))
     .              +wwflag*0.5d0/xw*prop34(ip)*(wl1*Fa652143(ip)
     .              +wl2*Fa653412(ip)))
               AWZP=AWZP+FAC*prop12(ip)*(
     .              (en1*Fa345612(ip)+en2*Fa342165(ip))*v2(2)
     .              *prop56(ip)
     .              +q1*(-1d0)*(cl1*Fa345612(ip)
     .              +cl2*Fa342165(ip)))
            elseif ((j .lt. 0) .and. (k .gt. 0)) then
               AWZM=AWZM+FAC*prop12(ip)*(
     .              (en1*Fa346521(ip)+en2*Fa341256(ip))*v2(1)
     .              *prop56(ip)
     .              +q1*(-1d0)*(cl1*Fa346521(ip)+cl2*Fa341256(ip))
     .              +wwflag*0.5d0/xw*prop34(ip)*(wl1*Fa651243(ip)
     .              +wl2*Fa653421(ip)))
               AWZP=AWZP+FAC*prop12(ip)*(
     .              (en1*Fa345621(ip)+en2*Fa341265(ip))*v2(2)
     .              *prop56(ip)
     .              +q1*(-1d0)*(cl1*Fa345621(ip)
     .              +cl2*Fa341265(ip)))
            endif
         endif
         
         xmsq(iloop)= xmsq(iloop)
     1        +Vsq(j,k)*ave*(abs(AWZM)**2+abs(AWZP)**2)
         
         
         if ((iloop.eq.1)) then
            if (interference) then
               AWZM_SAVE=AWZM
            endif
         elseif (iloop.eq.2) then
            xmsq(3)=xmsq(3)
     &           -Vsq(j,k)*ave*(dconjg(AWZM)*AWZM_SAVE +
     &           AWZM*dconjg(AWZM_SAVE))
         endif
         
         
         if(interference) then
            if(iloop.eq.2) then
c     this is for testing:
c       msq  =(xmsq(1)+xmsq(2))/2 *
               msq= xmsq(1) *
     1              (1+xmsq(3)/(xmsq(1)+xmsq(2)))
            endif
         else
            msq=xmsq(1)
         endif
         
      enddo                     !-i loop 

      msq = msq*vsymfact

      return
      end

      function areequal(arr1,arr2,n)
      implicit none
      logical areequal
      integer n
      double precision arr1(n,4),arr2(n,4)
      integer j,mu
      do j=1,n
         do mu=1,4
            if(arr1(j,mu).ne.arr2(j,mu)) then
               areequal=.false.
               return
            endif
         enddo
      enddo
      areequal=.true.
      end
