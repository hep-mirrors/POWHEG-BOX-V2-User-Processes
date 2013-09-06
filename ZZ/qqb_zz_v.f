      subroutine qqb_zz_v(p,msqv)
      implicit none

C----Author R.K.Ellis December 1998
C----modified by JMC to include supplementary diagrams February 1999
c--- calculate the virtual matrix element squared
c----and subtraction terms for ZZ production
C----modified by RKE (following suggestion of GZ) 
c----to correct supplementary diagrams April 2011
c----NB: we also include virtual photons
C    averaged over initial colours and spins
c    u(-p1)+dbar(-p2)-->\mu^-(p4)+\mu^+(p5)+e^-(p6)+e^+(p7)
c    Notation to allow room for p3 --- gluon emission.
c----No statistical factor of 1/2 included.

      include 'qcdcouple.f'
      include 'zcouple.f'
      include 'sprods_com.f'
      include 'zprods_decl.f'
      include 'ewcharge.f'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'cvecbos.h'
      include 'vvsettings.f' 

      !TM ADDED PARAMETERS
      double precision xn,two
      integer nf,mxpart
      parameter (xn=3d0,two=2d0,nf=5,mxpart=12)

      double precision msq,msqv,
     . p(mxpart,4),qdks(mxpart,4),oqdks1(mxpart,4),oqdks2(mxpart,4),
     . v2(2),v1(2),virt,fac,facnlo,ave

c in case interference is needed, it will hold the direct, crossed
c and interference term (first index from 1 to 3 respectively)
      double precision xmsq(3)     
     
      double complex qqb(2,2,2,2),qbq(2,2,2,2),
     1     lqqb(2,2,2,2),lqbq(2,2,2,2)
      double complex qqb1(2,2,2,2),qbq1(2,2,2,2),
     1     qqb2(2,2,2,2),qbq2(2,2,2,2)
      double complex a6trees,a6loops
      double complex aqqb,aqbq,bqqb,bqbq,Vpole,Vpole12,suppl
      double complex prop12(2),prop34(2),prop56(2)
        
      save qqb,qbq,lqqb,lqbq,qqb1,qbq1,prop12,prop34,prop56,
     .     oqdks1,oqdks2
      integer j,k,polq,pol1,pol2
      parameter(ave=0.25d0/xn)

      integer iloop,nloop
      double complex aqqb_SAVE(2,2,2)
      double complex bqqb_SAVE(2,2,2)
      double complex aqbq_SAVE(2,2,2)
      double complex bqbq_SAVE(2,2,2)
      double complex cpropfac
      external cpropfac
      logical recalc
      integer ip
      logical areequal
      external areequal
      

      ason2pi = st_alpha/2d0/pi
      
      fac=-4D0*esq**2
      facnlo=ason2pi*cf

      v1(1)=l1
      v1(2)=r1
      v2(1)=l2
      v2(2)=r2

c--set msq=0 to initalize
      msqv=0d0
      aqqb_SAVE=0d0
      aqbq_SAVE=0d0
      bqqb_SAVE=0d0
      bqbq_SAVE=0d0

      xmsq=0

      if (interference) then
         nloop=2
      else
         nloop=1
      endif


C----Change the momenta to DKS notation 
c   We have --- q(-p1)+qbar(-p2)-->l(p3)+lbar(p4) + l'(p5)+lbar'(p6)
c   DKS have--- q(q2) +qbar(q1) -->mu^-(q3)+mu^+(q4)+e^-(q6)+e^+(q5)


      do iloop=1,nloop

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
         endif
         
      if(recalc) then
         call spinoru(6,qdks,za,zb)
c--   s returned from sprod (common block) is 2*dot product

c--   calculate propagators
c        prop12=s(1,2)/dcmplx(s(1,2)-zmass**2,zmass*zwidth)
c        prop34=s(3,4)/dcmplx(s(3,4)-zmass**2,zmass*zwidth)
c        prop56=s(5,6)/dcmplx(s(5,6)-zmass**2,zmass*zwidth)
         prop12(ip)=cpropfac(s(1,2),zmass,zwidth)
         prop34(ip)=cpropfac(s(3,4),zmass,zwidth)
         prop56(ip)=cpropfac(s(5,6),zmass,zwidth)
         
c-- here the labels correspond to the polarizations of the
c-- quark, lepton 4 and lepton 6 respectively

         qbq(ip,1,1,1)=A6trees(1,2,6,5,4,3,za,zb) 
         qbq(ip,1,1,2)=A6trees(1,2,6,5,3,4,za,zb) 
         qbq(ip,1,2,1)=A6trees(1,2,5,6,4,3,za,zb) 
         qbq(ip,1,2,2)=A6trees(1,2,5,6,3,4,za,zb) 
         
         qqb(ip,1,1,1)=A6trees(2,1,6,5,4,3,za,zb)
         qqb(ip,1,1,2)=A6trees(2,1,6,5,3,4,za,zb) 
         qqb(ip,1,2,1)=A6trees(2,1,5,6,4,3,za,zb) 
         qqb(ip,1,2,2)=A6trees(2,1,5,6,3,4,za,zb)
         
         lqbq(ip,1,1,1)=A6loops(1,2,6,5,4,3,za,zb) 
         lqbq(ip,1,1,2)=A6loops(1,2,6,5,3,4,za,zb) 
         lqbq(ip,1,2,1)=A6loops(1,2,5,6,4,3,za,zb) 
         lqbq(ip,1,2,2)=A6loops(1,2,5,6,3,4,za,zb) 
         
         lqqb(ip,1,1,1)=A6loops(2,1,6,5,4,3,za,zb)
         lqqb(ip,1,1,2)=A6loops(2,1,6,5,3,4,za,zb) 
         lqqb(ip,1,2,1)=A6loops(2,1,5,6,4,3,za,zb) 
         lqqb(ip,1,2,2)=A6loops(2,1,5,6,3,4,za,zb)
         
         if (.not.dronly) then
c---for supplementary diagrams.
            qbq1(ip,1,1,1)=+A6trees(3,4,1,2,5,6,za,zb)
            qbq2(ip,1,1,1)=+A6trees(6,5,1,2,4,3,za,zb)
            qbq1(ip,1,1,2)=-A6trees(4,3,1,2,5,6,za,zb)
            qbq2(ip,1,1,2)=+A6trees(6,5,1,2,3,4,za,zb)      
            qbq1(ip,1,2,1)=+A6trees(3,4,1,2,6,5,za,zb)
            qbq2(ip,1,2,1)=-A6trees(5,6,1,2,4,3,za,zb)
            qbq1(ip,1,2,2)=-A6trees(4,3,1,2,6,5,za,zb)
            qbq2(ip,1,2,2)=-A6trees(5,6,1,2,3,4,za,zb)
            
            qqb1(ip,1,1,1)=-A6trees(3,4,2,1,5,6,za,zb)
            qqb2(ip,1,1,1)=-A6trees(6,5,2,1,4,3,za,zb)
            qqb1(ip,1,1,2)=+A6trees(4,3,2,1,5,6,za,zb)
            qqb2(ip,1,1,2)=-A6trees(6,5,2,1,3,4,za,zb)      
            qqb1(ip,1,2,1)=-A6trees(3,4,2,1,6,5,za,zb)
            qqb2(ip,1,2,1)=+A6trees(5,6,2,1,4,3,za,zb)
            qqb1(ip,1,2,2)=+A6trees(4,3,2,1,6,5,za,zb)
            qqb2(ip,1,2,2)=+A6trees(5,6,2,1,3,4,za,zb)
c---loop diagrams just tree*Vpole since they're all triangle-type
            Vpole12=Vpole(s(1,2))
         endif
         
         do j=1,2
            do k=1,2
               qbq(ip,2,j,k)=-qqb(ip,1,j,k)
               qqb(ip,2,j,k)=-qbq(ip,1,j,k)
               lqbq(ip,2,j,k)=-lqqb(ip,1,j,k)
               lqqb(ip,2,j,k)=-lqbq(ip,1,j,k)
               qbq1(ip,2,j,k)=-qqb1(ip,1,j,k)
               qqb1(ip,2,j,k)=-qbq1(ip,1,j,k)
               qbq2(ip,2,j,k)=-qqb2(ip,1,j,k)
               qqb2(ip,2,j,k)=-qbq2(ip,1,j,k)
            enddo
         enddo
      endif

      j=idpart1
      k=idpart2

      virt=0d0

      if ((j .gt. 0).and.(k .lt. 0)) then
      do polq=1,2
      do pol1=1,2
      do pol2=1,2
      if     (polq .eq. 1) then
       aqqb=(prop56(ip)*v2(pol1)*l(j)+q2*q(j))
     .     *(prop34(ip)*v1(pol2)*l(j)+q1*q(j))* qqb(ip,polq,pol1,pol2)
       bqqb=(prop56(ip)*v2(pol1)*l(j)+q2*q(j))
     .     *(prop34(ip)*v1(pol2)*l(j)+q1*q(j))*lqqb(ip,polq,pol1,pol2)
         if (.not.dronly) then
         suppl=-(
     .       +(prop56(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .       *(prop12(ip)*v1(pol2)*l(j)+q1*q(j))*qqb1(ip,polq,pol1,pol2)
     .       +(prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .       *(prop12(ip)*v2(pol1)*l(j)+q2*q(j))
     .           *qqb2(ip,polq,pol1,pol2))

         aqqb=aqqb+suppl
         bqqb=bqqb+suppl*Vpole12
         endif
      elseif (polq .eq. 2) then
       aqqb=(prop56(ip)*v2(pol1)*r(j)+q2*q(j))
     .     *(prop34(ip)*v1(pol2)*r(j)+q1*q(j))* qqb(ip,polq,pol1,pol2)
       bqqb=(prop56(ip)*v2(pol1)*r(j)+q2*q(j))
     .     *(prop34(ip)*v1(pol2)*r(j)+q1*q(j))*lqqb(ip,polq,pol1,pol2)
         if (.not.dronly) then
         suppl=-(
     .       +(prop56(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .       *(prop12(ip)*v1(pol2)*r(j)+q1*q(j))*qqb1(ip,polq,pol1,pol2)
     .       +(prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .       *(prop12(ip)*v2(pol1)*r(j)+q2*q(j))
     .           *qqb2(ip,polq,pol1,pol2))

         aqqb=aqqb+suppl
         bqqb=bqqb+suppl*Vpole12
         endif
      endif

      aqqb=FAC*aqqb
      bqqb=FAC*bqqb
      xmsq(iloop)=xmsq(iloop)
     1     +facnlo*ave*two*dble(dconjg(aqqb)*bqqb)
      !interference terms
      if ((iloop.eq.1).and.(interference)) then
         aqqb_SAVE(polq,pol1,pol2)=aqqb
         bqqb_SAVE(polq,pol1,pol2)=bqqb
      elseif (iloop.eq.2) then
         if (pol1.eq.pol2) then
            xmsq(3)=xmsq(3)
     .   -facnlo*ave*(dconjg(aqqb)*bqqb_SAVE(polq,pol1,pol2)
     .           +aqqb*dconjg(bqqb_SAVE(polq,pol1,pol2))
     .           +dconjg(aqqb_SAVE(polq,pol1,pol2))*bqqb
     .           +aqqb_SAVE(polq,pol1,pol2)*dconjg(bqqb))
         endif
      endif


      enddo
      enddo
      enddo

      elseif ((j .lt. 0).and.(k .gt. 0)) then

      do polq=1,2
      do pol1=1,2
      do pol2=1,2
      if     (polq .eq. 1) then
       aqbq=(prop56(ip)*v2(pol1)*l(k)+q2*q(k))
     .     *(prop34(ip)*v1(pol2)*l(k)+q1*q(k))* qbq(ip,polq,pol1,pol2)
       bqbq=(prop56(ip)*v2(pol1)*l(k)+q2*q(k))
     .     *(prop34(ip)*v1(pol2)*l(k)+q1*q(k))*lqbq(ip,polq,pol1,pol2)
         if (.not.dronly) then
         suppl=
     .       +(prop56(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .       *(prop12(ip)*v1(pol2)*l(k)+q1*q(k))*qbq1(ip,polq,pol1,pol2)
     .       +(prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .       *(prop12(ip)*v2(pol1)*l(k)+q2*q(k))*qbq2(ip,polq,pol1,pol2)
         aqbq=aqbq+suppl
         bqbq=bqbq+suppl*Vpole12
         endif
      elseif (polq .eq. 2) then
       aqbq=(prop56(ip)*v2(pol1)*r(k)+q2*q(k))
     .     *(prop34(ip)*v1(pol2)*r(k)+q1*q(k))* qbq(ip,polq,pol1,pol2)
       bqbq=(prop56(ip)*v2(pol1)*r(k)+q2*q(k))
     .     *(prop34(ip)*v1(pol2)*r(k)+q1*q(k))*lqbq(ip,polq,pol1,pol2)
         if (.not.dronly) then
         suppl=
     .       +(prop56(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .       *(prop12(ip)*v1(pol2)*r(k)+q1*q(k))*qbq1(ip,polq,pol1,pol2)
     .       +(prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .       *(prop12(ip)*v2(pol1)*r(k)+q2*q(k))*qbq2(ip,polq,pol1,pol2)
         aqbq=aqbq+suppl
         bqbq=bqbq+suppl*Vpole12
         endif
      endif

      aqbq=FAC*aqbq
      bqbq=FAC*bqbq
      xmsq(iloop)=xmsq(iloop)
     1     +facnlo*ave*two*dble(dconjg(aqbq)*bqbq)
      !interference terms
      if ((iloop.eq.1).and.(interference)) then
         aqbq_SAVE(polq,pol1,pol2)=aqbq
         bqbq_SAVE(polq,pol1,pol2)=bqbq
      elseif (iloop.eq.2) then
         if (pol1.eq.pol2) then
            xmsq(3)=xmsq(3)
     .   -facnlo*ave*(dconjg(aqbq)*bqbq_SAVE(polq,pol1,pol2)
     .           +aqbq*dconjg(bqbq_SAVE(polq,pol1,pol2))
     .           +dconjg(aqbq_SAVE(polq,pol1,pol2))*bqbq
     .           +aqbq_SAVE(polq,pol1,pol2)*dconjg(bqbq))
         endif
      endif

      enddo
      enddo
      enddo

      endif

      if(interference) then
         if(iloop.eq.2) then
c this is for testing
c            msqv(j,k)=(xmsq(1,j,k)+xmsq(2,j,k))/2 *
            msqv= xmsq(1) *
     1           (1+xmsq(3)/(xmsq(1)+xmsq(2)))
         endif
      else
         msqv=xmsq(1)
      endif

      enddo !iloop


c     symmetry factor
      msqv=msqv*vsymfact

      return
      end
