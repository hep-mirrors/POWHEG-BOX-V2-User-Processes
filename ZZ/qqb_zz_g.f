      subroutine qqb_zz_g(P,msq)
c---Matrix element squared averaged over initial colors and spins
c     q(-p1)+qbar(-p2) -->  q'(p4)+bar{q'}(p5) + n(p6)+ebar(p7)+ g(p3)
c   for the moment --- radiation only from initial line
      implicit none 
      include 'qcdcouple.f'
      include 'zcouple.f'
      include 'sprods_com.f'
      include 'zprods_decl.f'
      include 'ewcharge.f'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'cvecbos.h'
      include 'vvsettings.f' 
      double precision xn
      integer nf,mxpart
      parameter(xn=3d0,nf=5,mxpart=12)
      double precision two,aveqq,aveqg
      parameter (two=2d0,aveqq=0.25d0/xn**2,aveqg=0.25d0/xn/8d0)

      integer j,k,jk,polq,pol1,pol2,pol3,jp,kp
      double precision fac,fac1
      common/pchoice/j,k
      double precision P(mxpart,4),qdks(mxpart,4),msq,
     .     oqdks1(mxpart,4),oqdks2(mxpart,4)

c in case interference is needed, it will hold the direct, crossed
c and interference term (first index from 1 to 3 respectively)
      double precision xmsq(3)
     
      double precision ave,v1(2),v2(2)
      double complex qqb(2,2,2,2,2),qbq(2,2,2,2,2)
      double complex qg(2,2,2,2,2),gq(2,2,2,2,2)
      double complex gqb(2,2,2,2,2),qbg(2,2,2,2,2)
      double complex qqb1(2,2,2,2,2),qbq1(2,2,2,2,2) 
      double complex qqb2(2,2,2,2,2),qbq2(2,2,2,2,2)
      double complex qg1(2,2,2,2,2),gq1(2,2,2,2,2)
      double complex qg2(2,2,2,2,2),gq2(2,2,2,2,2)
      double complex gqb1(2,2,2,2,2),qbg1(2,2,2,2,2) 
      double complex gqb2(2,2,2,2,2),qbg2(2,2,2,2,2)
      double complex amp
      double precision s127
      double complex prop34(2),prop56(2),prop127(2)

      save qqb,qbq,qg,gq,gqb,qbg,qqb1,qbq1,qqb2,qbq2,qg1,gq1,qg2,gq2,
     .     gqb1,qbg1,gqb2,qbg2,prop34,prop56,prop127


      integer iloop,nloop
      double complex amp_SAVE(2,2,2,2)
      double complex cpropfac
      external cpropfac
      logical recalc,areequal
      integer ip

      msq=0
      
      amp_SAVE=0

      xmsq=0

      !TM set the qcd parameters here
      gsq = st_alpha*4d0*pi

      fac=-4D0*esq**2
      fac1=two*gsq*cf

      v1(1)=l1
      v1(2)=r1
      v2(1)=l2
      v2(2)=r2

C----Change the momenta to DKS notation 
c   We have --- q(p1)+qbar(p2)-->nu(p3)+e^+(p4)+b(p5)+bbar(p6)+g(p7)
c   DKS have--- q(q2)+qbar(q1)-->nu(q3)+e^+(q4)+b(q6)+bbar(q5)+g(q7)
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
               qdks(7,j)=p(7,j)
            enddo
            ip=1
            if(areequal(qdks,oqdks1,7)) then
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
               qdks(7,j)=p(7,j)
            enddo
            ip=2
            if(areequal(qdks,oqdks2,7)) then
               recalc=.false.
            else
               recalc=.true.
               oqdks2=qdks
            endif
         endif


         if(recalc) then
            call spinoru(7,qdks,za,zb)
c--   s returned from sprodx (common block) is 2*dot product

c--   calculate propagators
            if     (zerowidth) then
c      prop34(ip)=s(3,4)/dcmplx(s(3,4)-zmass**2,zmass*zwidth)
c      prop56(ip)=s(5,6)/dcmplx(s(5,6)-zmass**2,zmass*zwidth)
               prop34(ip)=cpropfac(s(3,4),zmass,zwidth)
               prop56(ip)=cpropfac(s(5,6),zmass,zwidth)
            else
               s127=s(1,2)+s(1,7)+s(2,7)
c      prop127=s127/dcmplx(s127-zmass**2,zmass*zwidth)
c      prop34=s(3,4)/dcmplx(s(3,4)-zmass**2,zmass*zwidth)
c      prop56=s(5,6)/dcmplx(s(5,6)-zmass**2,zmass*zwidth)
               prop127(ip)=cpropfac(s127,zmass,zwidth)
               prop34(ip)=cpropfac(s(3,4),zmass,zwidth)
               prop56(ip)=cpropfac(s(5,6),zmass,zwidth)
            endif

c---case qbar-q
            call zzamps(1,2,3,4,5,6,7,za,zb,qbq(:,:,:,:,ip))
c---case q-qbar
            call zzamps(2,1,3,4,5,6,7,za,zb,qqb(:,:,:,:,ip))
c---  case qbar-g
            call zzamps(1,7,3,4,5,6,2,za,zb,qbg(:,:,:,:,ip))
c---case q-g
            call zzamps(7,1,3,4,5,6,2,za,zb,qg(:,:,:,:,ip))
c---case g-q
            call zzamps(7,2,3,4,5,6,1,za,zb,gq(:,:,:,:,ip))
c---case g-qbar
            call zzamps(2,7,3,4,5,6,1,za,zb,gqb(:,:,:,:,ip))

c -- singly resonant contributions
            if (.not.dronly) then
c --- two calls to swap lepton pairs (3,4) <--> (5,6)

c     -- channel qbq         
               call zzsingres(1,2,3,4,5,6,7,za,zb,qbq1(:,:,:,:,ip))
               call zzsingres(1,2,6,5,4,3,7,za,zb,qbq2(:,:,:,:,ip))
c     -- channel qqb
               call zzsingres(2,1,3,4,5,6,7,za,zb,qqb1(:,:,:,:,ip))
               call zzsingres(2,1,6,5,4,3,7,za,zb,qqb2(:,:,:,:,ip))
c     -- channel qbg
               call zzsingres(1,7,3,4,5,6,2,za,zb,qbg1(:,:,:,:,ip))
               call zzsingres(1,7,6,5,4,3,2,za,zb,qbg2(:,:,:,:,ip))
c     -- channel qg
               call zzsingres(7,1,3,4,5,6,2,za,zb,qg1(:,:,:,:,ip))
               call zzsingres(7,1,6,5,4,3,2,za,zb,qg2(:,:,:,:,ip))
c     -- channel gq
               call zzsingres(7,2,3,4,5,6,1,za,zb,gq1(:,:,:,:,ip))
               call zzsingres(7,2,6,5,4,3,1,za,zb,gq2(:,:,:,:,ip))
c     -- channel gqb
               call zzsingres(2,7,3,4,5,6,1,za,zb,gqb1(:,:,:,:,ip))
               call zzsingres(2,7,6,5,4,3,1,za,zb,gqb2(:,:,:,:,ip))
            endif
         endif

         j=idpart1
         k=idpart2

         jk=max(j,k)
         ave=xn*aveqq
         if (j .eq. 0 .or. k .eq. 0) then
            jk=j+k
            ave=xn*aveqg
         endif
           
         do polq=1,2
         do pol2=1,2
         do pol1=1,2
         do pol3=1,2
                  
            amp=0d0
                  
            if    ((j .lt. 0).and.(k .gt. 0)) then
c---  case qbar-q
               if (polq .eq. 1) then
                  amp=(prop56(ip)*v2(pol1)*l(k)+q2*q(k))
     .                 *(prop34(ip)*v1(pol2)*l(k)+q1*q(k))
     .                 *qbq(polq,pol1,pol2,pol3,ip)
                  if (.not.dronly) then
                     amp=amp+
     .                    (prop56(ip)*v1(pol2)*v2(pol1)+q2*q1)
     .                    *(prop127(ip)*v1(pol2)*l(k)+q1*q(k))*
     .                    qbq1(polq,pol1,pol2,pol3,ip) +
     .                    (prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .                    *(prop127(ip)*v2(pol1)*l(k) + q2*q(k))
     .                    *qbq2(polq,pol2,pol1,pol3,ip)
                  endif
               elseif (polq .eq. 2) then
                  amp=(prop56(ip)*v2(pol1)*r(k)+q2*q(k))
     .                 *(prop34(ip)*v1(pol2)*r(k)+q1*q(k))
     .                 *qbq(polq,pol1,pol2,pol3,ip)
                  if (.not.dronly) then
                     amp = amp+
     .                    (prop56(ip)*v1(pol2)*v2(pol1)+q2*q1)
     .                    *(prop127(ip)*v1(pol2)*r(k)+q1*q(k))*
     .                    qbq1(polq,pol1,pol2,pol3,ip) +
     .                    (prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .                    *(prop127(ip)*v2(pol1)*r(k) + q2*q(k))
     .                    *qbq2(polq,pol2,pol1,pol3,ip)
                  endif
               endif
            elseif((j .gt. 0).and.(k .lt. 0)) then
c---  case q-qbar
               if (polq .eq. 1) then
                  amp=(prop56(ip)*v2(pol1)*l(j)+q2*q(j))
     .                 *(prop34(ip)*v1(pol2)*l(j)+q1*q(j))
     .                 *qqb(polq,pol1,pol2,pol3,ip)
                  if (.not.dronly) then
                     amp=amp+
     .                    (prop56(ip)*v1(pol2)*v2(pol1)+q2*q1)
     .                    *(prop127(ip)*v1(pol2)*l(j)+q1*q(j))*
     .                    qqb1(polq,pol1,pol2,pol3,ip) +
     .                    (prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .                    *(prop127(ip)*v2(pol1)*l(j) + q2*q(j))
     .                    *qqb2(polq,pol2,pol1,pol3,ip)
                  endif
               elseif (polq .eq. 2) then
                  amp=(prop56(ip)*v2(pol1)*r(j)+q2*q(j))
     .                 *(prop34(ip)*v1(pol2)*r(j)+q1*q(j))
     .                 *qqb(polq,pol1,pol2,pol3,ip)
                  if (.not.dronly) then
                     amp = amp+
     .                    (prop56(ip)*v1(pol2)*v2(pol1)+q2*q1)
     .                    *(prop127(ip)*v1(pol2)*r(j)+q1*q(j))*
     .                    qqb1(polq,pol1,pol2,pol3,ip) +
     .                    (prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .                    *(prop127(ip)*v2(pol1)*r(j) + q2*q(j))
     .                    *qqb2(polq,pol2,pol1,pol3,ip)
                  endif
               endif
            elseif((j .lt. 0).and.(k .eq. 0)) then
c---  case qbar-g
               if (polq .eq. 1) then
                  amp=(prop56(ip)*v2(pol1)*l(-jk)+q2*q(-jk))
     .                 *(prop34(ip)*v1(pol2)*l(-jk)+q1*q(-jk))
     .                 *qbg(polq,pol1,pol2,pol3,ip)
                  if (.not.dronly) then
                     amp=amp+
     .                    (prop56(ip)*v1(pol2)*v2(pol1)+q2*q1)
     .                    *(prop127(ip)*v1(pol2)*l(-jk)+q1*q(-jk))*
     .                    qbg1(polq,pol1,pol2,pol3,ip) +
     .                    (prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .                    *(prop127(ip)*v2(pol1)*l(-jk) + q2*q(-jk))
     .                    *qbg2(polq,pol2,pol1,pol3,ip)
                  endif
               elseif (polq .eq. 2) then
                  amp=(prop56(ip)*v2(pol1)*r(-jk)+q2*q(-jk))
     .                 *(prop34(ip)*v1(pol2)*r(-jk)+q1*q(-jk))
     .                 *qbg(polq,pol1,pol2,pol3,ip)
                  if (.not.dronly) then
                     amp = amp+
     .                    (prop56(ip)*v1(pol2)*v2(pol1)+q2*q1)
     .                    *(prop127(ip)*v1(pol2)*r(-jk)+q1*q(-jk))*
     .                    qbg1(polq,pol1,pol2,pol3,ip) +
     .                    (prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .                    *(prop127(ip)*v2(pol1)*r(-jk) + q2*q(-jk))
     .                    *qbg2(polq,pol2,pol1,pol3,ip)
                  endif
               endif
            elseif((k .lt. 0).and.(j .eq. 0)) then
c---  case g-qbar
               if (polq .eq. 1) then
                  amp=(prop56(ip)*v2(pol1)*l(-jk)+q2*q(-jk))
     .                 *(prop34(ip)*v1(pol2)*l(-jk)+q1*q(-jk))
     .                 *gqb(polq,pol1,pol2,pol3,ip)
                  if (.not.dronly) then
                     amp=amp+
     .                    (prop56(ip)*v1(pol2)*v2(pol1)+q2*q1)
     .                    *(prop127(ip)*v1(pol2)*l(-jk)+q1*q(-jk))*
     .                    gqb1(polq,pol1,pol2,pol3,ip) +
     .                    (prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .                    *(prop127(ip)*v2(pol1)*l(-jk) + q2*q(-jk))
     .                    *gqb2(polq,pol2,pol1,pol3,ip)
                  endif
               elseif (polq .eq. 2) then
                  amp=(prop56(ip)*v2(pol1)*r(-jk)+q2*q(-jk))
     .                 *(prop34(ip)*v1(pol2)*r(-jk)+q1*q(-jk))
     .                 *gqb(polq,pol1,pol2,pol3,ip)
                  if (.not.dronly) then
                     amp = amp+
     .                    (prop56(ip)*v1(pol2)*v2(pol1)+q2*q1)
     .                    *(prop127(ip)*v1(pol2)*r(-jk)+q1*q(-jk))*
     .                    gqb1(polq,pol1,pol2,pol3,ip) +
     .                    (prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .                    *(prop127(ip)*v2(pol1)*r(-jk) + q2*q(-jk))
     .                    *gqb2(polq,pol2,pol1,pol3,ip)
                  endif
               endif
            elseif((j .gt. 0).and.(k .eq. 0)) then
c---  case q-g
               if (polq .eq. 1) then
                  amp=(prop56(ip)*v2(pol1)*l(jk)+q2*q(jk))
     .                 *(prop34(ip)*v1(pol2)*l(jk)+q1*q(jk))
     .                 *qg(polq,pol1,pol2,pol3,ip)
                  if (.not.dronly) then
                     amp=amp+
     .                    (prop56(ip)*v1(pol2)*v2(pol1)+q2*q1)
     .                    *(prop127(ip)*v1(pol2)*l(jk)+q1*q(jk))*
     .                    qg1(polq,pol1,pol2,pol3,ip) +
     .                    (prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .                    *(prop127(ip)*v2(pol1)*l(jk) + q2*q(jk))
     .                    *qg2(polq,pol2,pol1,pol3,ip)
                  endif
               elseif (polq .eq. 2) then
                  amp=(prop56(ip)*v2(pol1)*r(jk)+q2*q(jk))
     .                 *(prop34(ip)*v1(pol2)*r(jk)+q1*q(jk))
     .                 *qg(polq,pol1,pol2,pol3,ip)
                  if (.not.dronly) then
                     amp = amp+
     .                    (prop56(ip)*v1(pol2)*v2(pol1)+q2*q1)
     .                    *(prop127(ip)*v1(pol2)*r(jk)+q1*q(jk))*
     .                    qg1(polq,pol1,pol2,pol3,ip) +
     .                    (prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .                    *(prop127(ip)*v2(pol1)*r(jk) + q2*q(jk))
     .                    *qg2(polq,pol2,pol1,pol3,ip)
                  endif
               endif
            elseif((k .gt. 0).and.(j .eq. 0)) then
c---  case g-q
               if (polq .eq. 1) then
                  amp=(prop56(ip)*v2(pol1)*l(jk)+q2*q(jk))
     .                 *(prop34(ip)*v1(pol2)*l(jk)+q1*q(jk))
     .                 *gq(polq,pol1,pol2,pol3,ip)
                  if (.not.dronly) then
                     amp=amp+
     .                    (prop56(ip)*v1(pol2)*v2(pol1)+q2*q1)
     .                    *(prop127(ip)*v1(pol2)*l(jk)+q1*q(jk))*
     .                    gq1(polq,pol1,pol2,pol3,ip) +
     .                    (prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .                    *(prop127(ip)*v2(pol1)*l(jk) + q2*q(jk))
     .                    *gq2(polq,pol2,pol1,pol3,ip)
                  endif
               elseif (polq .eq. 2) then
                  amp=(prop56(ip)*v2(pol1)*r(jk)+q2*q(jk))
     .                 *(prop34(ip)*v1(pol2)*r(jk)+q1*q(jk))
     .                 *gq(polq,pol1,pol2,pol3,ip)
                  if (.not.dronly) then
                     amp = amp+
     .                    (prop56(ip)*v1(pol2)*v2(pol1)+q2*q1)
     .                    *(prop127(ip)*v1(pol2)*r(jk)+q1*q(jk))*
     .                    gq1(polq,pol1,pol2,pol3,ip) +
     .                    (prop34(ip)*v1(pol2)*v2(pol1)+q1*q2)
     .                    *(prop127(ip)*v2(pol1)*r(jk) + q2*q(jk))
     .                    *gq2(polq,pol2,pol1,pol3,ip)
                  endif
               endif
            endif
            
            amp=amp*FAC
            
            xmsq(iloop)=xmsq(iloop)
     1           +fac1*ave*abs(amp)**2
            
            if(interference) then
               if(iloop.eq.1) then
                  amp_SAVE(polq,pol1,pol2,pol3)=amp
               else
                  if (pol1.eq.pol2) then
                     xmsq(3)=xmsq(3)-
     1                    fac1*ave*(dconjg(amp_SAVE
     2                    (polq,pol1,pol2,pol3))*amp+
     3                    amp_SAVE(polq,pol1,pol2,pol3)
     4                    *dconjg(amp))
                  endif
               endif
            endif
            
         enddo
         enddo
         enddo
         enddo


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
         
 19      continue
      
      enddo !iloop


c     symmetry factor
      msq=msq*vsymfact

      return
      end
      
      
      




