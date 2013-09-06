      subroutine qqb_zz(p,msq)
      implicit none

C---- Author R.K.Ellis December 1998
C---- modified by JMC to include supplementary diagrams February 1999
C---- modified by RKE (following suggestion of GZ) 
c---- to correct supplementary diagrams April 2011
c---- Matrix element for ZZ production
c---- NB: we also include virtual photons
c     in the notation of DKS
C     averaged over initial colours and spins
c     u(-p1)+dbar(-p2)-->e^-(p3) + e^+(p4)   + \mu^-(p5)+ \mu^+(p6)
c     q(-p1)+qbar(-p2)-->l'(p3)  + lbar'(p4) + l(p5)    + lbar(p6)
c     with Z-leptons couplings l1 for (5,6) and l2 for(3,4)
c     and lepton charges q2 for (5,6) and q1 for (3,4)
c---- No statistical factor of 1/2 included.

      include 'zcouple.f'
      include 'sprods_com.f'
      include 'zprods_decl.f'
      include 'ewcharge.f'
      include 'cvecbos.h'
      include 'vvsettings.f' 

!TM added 'parameters' - THESE NEED TO BE SET TO POWHEG ONES
      double precision xn
      integer nf,mxpart
      parameter (xn=3d0,nf=5,mxpart=12)

      double precision msq,p(mxpart,4),qdks(mxpart,4),
     .     oqdks1(mxpart,4),oqdks2(mxpart,4),ave,v1(2),v2(2)

c     in case interference is needed, it will hold the direct, crossed
c     and interference term (first index from 1 to 3 respectively)
      double precision xmsq(3)
      
      double complex qqb(2,2,2,2),qbq(2,2,2,2),q_qb,qb_q
      double complex qqb1(2,2,2,2),qbq1(2,2,2,2),
     .     qqb2(2,2,2,2),qbq2(2,2,2,2)
      double complex a6trees
      double complex prop12(2),prop34(2),prop56(2)

      save  qqb,qbq,qqb1,qbq1,qqb2,qbq2,prop12,prop34,prop56,
     .     oqdks1,oqdks2

      double precision FAC
      integer j,k,ip,polq,pol1,pol2
      parameter(ave=0.25d0/xn)
      
      integer iloop,nloop
      double complex q_qb_SAVE(2,2,2)
      double complex qb_q_SAVE(2,2,2)
      double complex cpropfac
      logical recalc,areequal
      external cpropfac

      fac=-4D0*esq**2

      v1(1)=l1
      v1(2)=r1
      v2(1)=l2
      v2(2)=r2
!     write(*,*) 'l1,r1,l2,r2',l1,r1,l2,r2,q1,q2
c--   set msq=0 to initalize

      msq=0d0
      q_qb_SAVE=0d0
      qb_q_SAVE=0d0

      xmsq=0

      if (interference) then
         nloop=2
      else
         nloop=1
      endif

      do iloop=1,nloop


C---- Change the momenta to DKS notation 
c     We have --- q(-p1)+qbar(-p2)-->l(p3)+lbar(p4) + l'(p5)+lbar'(p6)
c     DKS have--- q(q2) +qbar(q1) -->mu^-(q3)+mu^+(q4)+e^-(q6)+e^+(q5)


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
c     prop12=s(1,2)/dcmplx(s(1,2)-zmass**2,zmass*zwidth)
c     prop34=s(3,4)/dcmplx(s(3,4)-zmass**2,zmass*zwidth)
c     prop56=s(5,6)/dcmplx(s(5,6)-zmass**2,zmass*zwidth)
            prop12(ip)=cpropfac(s(1,2),zmass,zwidth)
            prop34(ip)=cpropfac(s(3,4),zmass,zwidth)
            prop56(ip)=cpropfac(s(5,6),zmass,zwidth)
            
c--   here the labels correspond to the polarizations of the
c--   quark, lepton 4 and lepton 6 respectively

            qbq(ip,1,1,1)=A6trees(1,2,6,5,4,3,za,zb) 
            qbq(ip,1,1,2)=A6trees(1,2,6,5,3,4,za,zb) 
            qbq(ip,1,2,1)=A6trees(1,2,5,6,4,3,za,zb) 
            qbq(ip,1,2,2)=A6trees(1,2,5,6,3,4,za,zb) 

            qqb(ip,1,1,1)=A6trees(2,1,6,5,4,3,za,zb)
            qqb(ip,1,1,2)=A6trees(2,1,6,5,3,4,za,zb) 
            qqb(ip,1,2,1)=A6trees(2,1,5,6,4,3,za,zb) 
            qqb(ip,1,2,2)=A6trees(2,1,5,6,3,4,za,zb)
            
            if (.not.dronly) then
c---  for supplementary diagrams.
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
            endif

            do j=1,2
               do k=1,2
                  qbq(ip,2,j,k)=-qqb(ip,1,j,k)
                  qqb(ip,2,j,k)=-qbq(ip,1,j,k)
                  qbq1(ip,2,j,k)=-qqb1(ip,1,j,k)
                  qqb1(ip,2,j,k)=-qbq1(ip,1,j,k)
                  qbq2(ip,2,j,k)=-qqb2(ip,1,j,k)
                  qqb2(ip,2,j,k)=-qbq2(ip,1,j,k)
               enddo
            enddo

c     end recalc
         endif


         j=idpart1
         k=idpart2

         if ((j .gt. 0).and.(k .lt. 0)) then
            do polq=1,2
            do pol1=1,2
            do pol2=1,2
               if     (polq .eq. 1) then
                  q_qb=(prop56(ip)*v2(pol1)*l(j)+q2*q(j))
     .        *(prop34(ip)*v1(pol2)*l(j)+q1*q(j))*qqb(ip,polq,pol1,pol2)
                  if (.not.dronly) then
                     q_qb=q_qb-(
     .                    +(prop56(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .       *(prop12(ip)*v1(pol2)*l(j)+q1*q(j))*qqb1(ip,polq,pol1,pol2)
     .                    +(prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .                    *(prop12(ip)*v2(pol1)*l(j)
     .                    +q2*q(j))*qqb2(ip,polq,pol1,pol2))
                     
                     
                  endif
               elseif (polq .eq. 2) then
                  q_qb=(prop56(ip)*v2(pol1)*r(j)+q2*q(j))
     .        *(prop34(ip)*v1(pol2)*r(j)+q1*q(j))*qqb(ip,polq,pol1,pol2)
                  if (.not.dronly) then
                     q_qb=q_qb-(
     .                    +(prop56(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .       *(prop12(ip)*v1(pol2)*r(j)+q1*q(j))*qqb1(ip,polq,pol1,pol2)
     .                    +(prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .                    *(prop12(ip)*v2(pol1)*r(j)+q2*q(j))
     .                    *qqb2(ip,polq,pol1,pol2))
                     
                  endif
               endif
               q_qb=FAC*q_qb
               
               xmsq(iloop)=xmsq(iloop)+ave*abs(q_qb)**2
               if(interference) then
                  if(iloop.eq.1) then
                     q_qb_SAVE(polq,pol1,pol2)=q_qb
                  else
                     if(pol1.eq.pol2) then
                        xmsq(3)=xmsq(3)-ave*(dconjg(q_qb_SAVE
     &                  (polq,pol1,pol2))*q_qb+q_qb_SAVE(polq,pol1,pol2)
     &                       *dconjg(q_qb))
                     endif
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
                  qb_q=(prop56(ip)*v2(pol1)*l(k)+q2*q(k))
     .        *(prop34(ip)*v1(pol2)*l(k)+q1*q(k))*qbq(ip,polq,pol1,pol2)
                  if (.not.dronly) then
                     qb_q=qb_q
     .                    +(prop56(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .       *(prop12(ip)*v1(pol2)*l(k)+q1*q(k))*qbq1(ip,polq,pol1,pol2)
     .                    +(prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .       *(prop12(ip)*v2(pol1)*l(k)+q2*q(k))*qbq2(ip,polq,pol1,pol2)
                     
                  endif
               elseif (polq .eq. 2) then
                  qb_q=(prop56(ip)*v2(pol1)*r(k)+q2*q(k))
     .        *(prop34(ip)*v1(pol2)*r(k)+q1*q(k))*qbq(ip,polq,pol1,pol2)
                  if (.not.dronly) then
                     qb_q=qb_q
     .                    +(prop56(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .       *(prop12(ip)*v1(pol2)*r(k)+q1*q(k))*qbq1(ip,polq,pol1,pol2)
     .                    +(prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .       *(prop12(ip)*v2(pol1)*r(k)+q2*q(k))*qbq2(ip,polq,pol1,pol2)
                  endif
               endif
               
               qb_q=FAC*qb_q
               
               xmsq(iloop)=xmsq(iloop)+ave*abs(qb_q)**2
               if(interference) then
                  if(iloop.eq.1) then
                     qb_q_SAVE(polq,pol1,pol2)=qb_q
                  else
                     if(pol1.eq.pol2) then
                        xmsq(3)=xmsq(3)-ave*(dconjg(qb_q_SAVE
     &                  (polq,pol1,pol2))*qb_q+qb_q_SAVE(polq,pol1,pol2)
     &                       *dconjg(qb_q))
                     endif
                  endif

            endif
         enddo
         enddo
         enddo

         endif


         if(interference) then
            if(iloop.eq.2) then
c     this is for testing:
c     msq(j,k)=(xmsq(1,j,k)+xmsq(2,j,k))/2 *
               msq= xmsq(1) *
     1              (1+xmsq(3)/(xmsq(1)+xmsq(2)))
            endif
         else
            msq=xmsq(1)
         endif


      enddo                     ! iloop 


c     symmetry factor
      msq=msq*vsymfact

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
