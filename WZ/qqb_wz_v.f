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
      include 'constants.f'
      include 'qcdcouple.f'
      include 'zwcouple.f'
      include 'ckm.f'
      include 'zprods_decl.f'
      include 'sprods_com.f'
      include 'ewcharge.f'
      include 'anomcoup.f'
      include 'nwz.f'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'vvsettings.f'
      integer j,k,ip
      double precision p(mxpart,4),qdks(mxpart,4)
      double precision msqv,msq
      double precision oqdks1(mxpart,4), oqdks2(mxpart,4),
     1     oqdks3(mxpart,4)
      double precision xmsq(3)
      double precision facnlo,ave,cotw
      double precision FAC,FACM
      double complex AWZM,AWZP,BWZM,BWZP,Vpole,Vpole12(3),suppl
      double complex prop12(3),prop34(3),prop56(3)
      double complex props(3),propw(3),propz(3),A6b_1,A6b_2,A6b_3,A6b_4
      double complex a6treea,a6loopa
      double complex Fa123456(3),Fa126543(3),Fb123456_z(3),Fb123456_g(3)
      double complex Fa123465(3),Fa125643(3),Fb123465_z(3),Fb123465_g(3)
      double complex Fa213456(3),Fa216543(3),Fb213456_z(3),Fb213456_g(3)
      double complex Fa213465(3),Fa215643(3),Fb213465_z(3),Fb213465_g(3)
      double complex La123456(3),La126543(3),Lb123456_z(3),Lb123456_g(3)
      double complex La123465(3),La125643(3),Lb123465_z(3),Lb123465_g(3)
      double complex La213456(3),La216543(3),Lb213456_z(3),Lb213456_g(3)
      double complex La213465(3),La215643(3),Lb213465_z(3),Lb213465_g(3)
      double complex Fa346512(3),Fa342156(3),Fa652143(3)
      double complex Fa345612(3),Fa342165(3),Fa653421(3)
      double complex Fa346521(3),Fa341256(3),Fa651243(3)
      double complex Fa345621(3),Fa341265(3),Fa653412(3)
      save Vpole12,oqdks1, oqdks2,oqdks3,
     .     prop12,prop34,prop56,
     .     props,propw,propz,
     .     Fa123456,Fa126543,Fb123456_z,Fb123456_g,
     .     Fa123465,Fa125643,Fb123465_z,Fb123465_g,
     .     Fa213456,Fa216543,Fb213456_z,Fb213456_g,
     .     Fa213465,Fa215643,Fb213465_z,Fb213465_g,
     .     La123456,La126543,Lb123456_z,Lb123456_g,
     .     La123465,La125643,Lb123465_z,Lb123465_g,
     .     La213456,La216543,Lb213456_z,Lb213456_g,
     .     La213465,La215643,Lb213465_z,Lb213465_g,
     .     Fa346512,Fa342156,Fa652143,
     .     Fa345612,Fa342165,Fa653421,
     .     Fa346521,Fa341256,Fa651243,
     .     Fa345621,Fa341265,Fa653412



c      double complex Fa561243,Fa562143
      double precision v2(2),cl1,cl2,wl1,wl2,en1,en2,xfac
      double complex ZgL(-nf:nf),ZgR(-nf:nf)
      parameter(ave=0.25d0/xn)
      data cl1,cl2,en1,en2/4*1d0/
      include 'cvecbos.h'

      integer iloop,nloop
      double complex AWZM_SAVE
      double complex BWZM_SAVE
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

      v2(1)=zfl(idpart5)
      v2(2)=zfr(idpart5)
      cotw=dsqrt((one-xw)/xw)

      AWZM_SAVE = 0d0
      BWZM_SAVE = 0d0

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
            xfac=1d0/(1d0+s(1,2)/(tevscale*1d3)**2)**2
            xdelg1_z=xfac*delg1_z
            xdelg1_g=xfac*delg1_g
            xdelk_z=xfac*delk_z
            xdelk_g=xfac*delk_g
            xlambda_z=xfac*lambda_z
            xlambda_g=xfac*lambda_g

c---  case dbar-u
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

c---  loop for a6b is simply tree*Vpole
            Vpole12(ip)=Vpole(s(1,2))

            Lb123456_z(ip)=Vpole12(ip)*Fb123456_z(ip)
            Lb123456_g(ip)=Vpole12(ip)*Fb123456_g(ip)
            La123456(ip)=A6loopa(1,2,3,4,5,6,za,zb)
            La126543(ip)=A6loopa(1,2,6,5,4,3,za,zb)

            Lb123465_z(ip)=Vpole12(ip)*Fb123465_z(ip)
            Lb123465_g(ip)=Vpole12(ip)*Fb123465_g(ip)
            La123465(ip)=A6loopa(1,2,3,4,6,5,za,zb)
            La125643(ip)=A6loopa(1,2,5,6,4,3,za,zb)

c---  case u-dbar
            call A6treeb_anom_wz(2,1,3,4,5,6,za,zb,A6b_1,A6b_2,
     .           A6b_3,A6b_4)
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

            Lb213456_z(ip)=Vpole12(ip)*Fb213456_z(ip)
            Lb213456_g(ip)=Vpole12(ip)*Fb213456_g(ip)
            La213456(ip)=A6loopa(2,1,3,4,5,6,za,zb)
            La216543(ip)=A6loopa(2,1,6,5,4,3,za,zb)

            Lb213465_z(ip)=Vpole12(ip)*Fb213465_z(ip)
            Lb213465_g(ip)=Vpole12(ip)*Fb213465_g(ip)
            La213465(ip)=A6loopa(2,1,3,4,6,5,za,zb)
            La215643(ip)=A6loopa(2,1,5,6,4,3,za,zb)

            if (.not.dronly) then
c---  for supplementary diagrams.
               Fa346512(ip)=A6treea(3,4,6,5,1,2,za,zb)
               Fa342156(ip)=A6treea(3,4,2,1,5,6,za,zb)
               Fa652143(ip)=A6treea(6,5,2,1,4,3,za,zb)
               Fa345612(ip)=A6treea(3,4,5,6,1,2,za,zb)
               Fa342165(ip)=A6treea(3,4,2,1,6,5,za,zb)
c     Fa562143=A6treea(5,6,2,1,4,3,za,zb)
               Fa346521(ip)=A6treea(3,4,6,5,2,1,za,zb)
               Fa341256(ip)=A6treea(3,4,1,2,5,6,za,zb)
               Fa651243(ip)=A6treea(6,5,1,2,4,3,za,zb)
               Fa345621(ip)=A6treea(3,4,5,6,2,1,za,zb)
               Fa341265(ip)=A6treea(3,4,1,2,6,5,za,zb)
c     Fa561243=A6treea(5,6,1,2,4,3,za,zb)
               Fa653412(ip)=A6treea(6,5,3,4,1,2,za,zb)
               Fa653421(ip)=A6treea(6,5,3,4,2,1,za,zb)
c---  loop diagrams just tree*Vpole since they're all triangle-type
               Vpole12(ip)=Vpole(s(1,2))
            endif
         endif

c---  set up left/right handed couplings for both Z and gamma*
c---  note that L/R labels the LEPTON coupling v2, NOT the quarks (all L)
         do j=-nf,nf
            ZgL(j)=zfL(j)*v2(1)*prop56(ip)+fQ(j)*q1           
            ZgR(j)=zfL(j)*v2(2)*prop56(ip)+fQ(j)*q1           
         enddo
         
         j=idpart1
         k=idpart2
         if     ((j .gt. 0) .and. (k .lt. 0)) then
            AWZM=(FAC*(ZgL(+j)*Fa213456(ip)+ZgL(-k)*Fa216543(ip))
     .           +FACM*(v2(1)*cotw*prop56(ip)*Fb213456_z(ip)
     .           +q1*Fb213456_g(ip))*prop12(ip))*prop34(ip)
            AWZP=(FAC*(ZgR(+j)*Fa213465(ip)+ZgR(-k)*Fa215643(ip))
     .           +FACM*(v2(2)*cotw*prop56(ip)*Fb213465_z(ip)
     .           +q1*Fb213465_g(ip))*prop12(ip))*prop34(ip)
            BWZM=(FAC*(ZgL(+j)*La213456(ip)+ZgL(-k)*La216543(ip))
     .           +FACM*(v2(1)*cotw*prop56(ip)*Lb213456_z(ip)
     .           +q1*Lb213456_g(ip))*prop12(ip))*prop34(ip)
            BWZP=(FAC*(ZgR(+j)*La213465(ip)+ZgR(-k)*La215643(ip))
     .           +FACM*(v2(2)*cotw*prop56(ip)*Lb213465_z(ip)
     .           +q1*Lb213465_g(ip))*prop12(ip))*prop34(ip)
         elseif ((j .lt. 0) .and. (k .gt. 0)) then
            AWZM=(FAC*(ZgL(+k)*Fa123456(ip)+ZgL(-j)*Fa126543(ip))
     .           +FACM*(v2(1)*cotw*prop56(ip)*Fb123456_z(ip)
     .           +q1*Fb123456_g(ip))*prop12(ip))*prop34(ip)
            AWZP=(FAC*(ZgR(+k)*Fa123465(ip)+ZgR(-j)*Fa125643(ip))
     .           +FACM*(v2(2)*cotw*prop56(ip)*Fb123465_z(ip)
     .           +q1*Fb123465_g(ip))*prop12(ip))*prop34(ip)
            BWZM=(FAC*(ZgL(+k)*La123456(ip)+ZgL(-j)*La126543(ip))
     .           +FACM*(v2(1)*cotw*prop56(ip)*Lb123456_z(ip)
     .           +q1*Lb123456_g(ip))*prop12(ip))*prop34(ip)
            BWZP=(FAC*(ZgR(+k)*La123465(ip)+ZgR(-j)*La125643(ip))
     .           +FACM*(v2(2)*cotw*prop56(ip)*Lb123465_z(ip)
     .           +q1*Lb123465_g(ip))*prop12(ip))*prop34(ip)
         endif
         if (.not.dronly) then
c---  we need supplementary diagrams for gauge invariance.
c---  now also assume that we have lepton decay products for W
c---  so that v2(1)=le, v2(2)=re
c---  1st term is diagram where Z couples to electron
c---  2nd term is diagram where Z couples to neutrino
c---  3rd term is diagram where gamma* couples to electron
c---  4th term (l-h only) contains two W propagators
            if     ((j .gt. 0) .and. (k .lt. 0)) then
               suppl=FAC*prop12(ip)*(
     .              (en1*Fa346512(ip)+en2*Fa342156(ip))*v2(1)*prop56(ip)
     .              +q1**2*(cl1*Fa346512(ip)+cl2*Fa342156(ip))
     .              +0.5d0/xw*prop34(ip)*(wl1*Fa652143(ip)
     .              +wl2*Fa653412(ip)))
               AWZM=AWZM+suppl
               BWZM=BWZM+suppl*Vpole12(ip)
               suppl=FAC*prop12(ip)*(
     .              (en1*Fa345612(ip)+en2*Fa342165(ip))*v2(2)*prop56(ip)
     .              +q1**2*(cl1*Fa345612(ip)+cl2*Fa342165(ip)))
               AWZP=AWZP+suppl
               BWZP=BWZP+suppl*Vpole12(ip)
            elseif ((j .lt. 0) .and. (k .gt. 0)) then
               suppl=FAC*prop12(ip)*(
     .              (en1*Fa346521(ip)+en2*Fa341256(ip))*v2(1)*prop56(ip)
     .              +q1**2*(cl1*Fa346521(ip)+cl2*Fa341256(ip))
     .              +0.5d0/xw*prop34(ip)*(wl1*Fa651243(ip)
     .              +wl2*Fa653421(ip)))
               AWZM=AWZM+suppl
               BWZM=BWZM+suppl*Vpole12(ip)
               suppl=FAC*prop12(ip)*(
     .              (en1*Fa345621(ip)+en2*Fa341265(ip))*v2(2)*prop56(ip)
     .              +q1**2*(cl1*Fa345621(ip)+cl2*Fa341265(ip)))
               AWZP=AWZP+suppl
               BWZP=BWZP+suppl*Vpole12(ip)
            endif
         endif

         xmsq(iloop)=xmsq(iloop) + FACNLO*Vsq(j,k)*ave*2d0*
     .        dble(dconjg(AWZM)*BWZM+dconjg(AWZP)*BWZP)

         if (iloop.eq.1) then
            if (interference) then
               AWZM_SAVE=AWZM
               BWZM_SAVE=BWZM
            endif
         elseif (iloop.eq.2) then
            xmsq(3)=xmsq(3)-FACNLO*Vsq(j,k)*ave*(
     .           dconjg(AWZM_SAVE)*BWZM +
     .           AWZM_SAVE*dconjg(BWZM) + 
     .           dconjg(AWZM)*BWZM_SAVE +
     .           AWZM*dconjg(BWZM_SAVE))
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

