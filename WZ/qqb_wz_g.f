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
      include 'constants.f'
      include 'qcdcouple.f'
      include 'zwcouple.f'
      include 'ckm.f'
      include 'sprods_com.f'
      include 'zprods_decl.f'
      include 'ewcharge.f'
      include 'anomcoup.f'
      include 'nwz.f'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'vvsettings.f'
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
     .     qu_qb(3,10,2,2),qu_gg(3,10,2,2),gg_qb(3,10,2,2),
     .     qb_qu(3,10,2,2),qb_gg(3,10,2,2),gg_qu(3,10,2,2),
     .     A(2,2)
      save oqdks1,oqdks2,oqdks3,prop12,prop34,prop56,
     .     qu_qb,qu_gg,gg_qb,qb_qu,qb_gg,gg_qu
      double precision v2(2),cl1,cl2,wl1,wl2,en1,en2,xfac
      double complex ZgLR(nf,2),c1(2),c2(2)
      common/xanomcoup/xdelg1_z,xdelg1_g,xlambda_g,xlambda_z,
     .     xdelk_g,xdelk_z
      data minus,mplus/1,2/
      data cl1,cl2,en1,en2/4*1d0/
      include 'cvecbos.h'
      double complex A_SAVE(2,2)
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
      A_SAVE=0d0
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
            xfac=1d0/(1d0+s127/(tevscale*1d3)**2)**2
            xdelg1_z=xfac*delg1_z
            xdelg1_g=xfac*delg1_g
            xdelk_z=xfac*delk_z
            xdelk_g=xfac*delk_g
            xlambda_z=xfac*lambda_z
            xlambda_g=xfac*lambda_g

c---  case dbar-u
            call wzamps(1,2,3,4,5,6,7,za,zb,qb_qu(ip,:,:,:))
c---  case u-dbar
            call wzamps(2,1,3,4,5,6,7,za,zb,qu_qb(ip,:,:,:))

c---  case g-u
            call wzamps(7,2,3,4,5,6,1,za,zb,gg_qu(ip,:,:,:))
c---  case u-g
            call wzamps(7,1,3,4,5,6,2,za,zb,qu_gg(ip,:,:,:))

c---  case dbar-g
            call wzamps(1,7,3,4,5,6,2,za,zb,qb_gg(ip,:,:,:))
c---  case g-dbar
            call wzamps(2,7,3,4,5,6,1,za,zb,gg_qb(ip,:,:,:))

         endif
c---  set up left/right handed couplings for both Z and gamma*
c---  note that L/R labels the LEPTON coupling v2, NOT the quarks (all L)
         q1=fq(idpart5)
         do j=1,nf
            ZgLR(j,minus)=zfL(j)*v2(1)*prop56(ip)+fQ(j)*q1           
            ZgLR(j,mplus)=zfL(j)*v2(2)*prop56(ip)+fQ(j)*q1           
         enddo


         do polz=1,2
            if(nwz.eq.1) then
               c1(polz)=ZgLR(2,polz)
               c2(polz)=ZgLR(1,polz)
            else
               c1(polz)=ZgLR(1,polz)
               c2(polz)=ZgLR(2,polz)
            endif
         enddo


         j=idpart1
         k=idpart2
         if     ((j .gt. 0) .and. (k .lt. 0)) then

c---  case u-db
            do polg=1,2
               do polz=1,2
                  A(polg,polz)=((ZgLR(+j,polz)*qu_qb(ip,2,polg,polz)
     .                 +ZgLR(-k,polz)*qu_qb(ip,3,polg,polz))*FAC
     .                 +(cotw*v2(polz)*prop56(ip)*qu_qb(ip,1,polg,polz)
     .                 +q1*qu_qb(ip,10,polg,polz))
     .                 *prop12(ip)*FACM)*prop34(ip)
     .                 +FAC*((en1*v2(polz)*prop56(ip)+q1*(-1d0)*cl1)
     .                 *prop12(ip)*qu_qb(ip,5,polg,polz)
     .                 +(en2*v2(polz)*prop56(ip)+q1*(-1d0)*cl2)
     .                 *prop12(ip)*qu_qb(ip,4,polg,polz)
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *qu_qb(ip,6,polg,polz)*wl1
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *qu_qb(ip,7,polg,polz)*wl2)
                  
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
                  A(polg,polz)=((ZgLR(+k,polz)*qb_qu(ip,2,polg,polz)
     .                 +ZgLR(-j,polz)*qb_qu(ip,3,polg,polz))*FAC
     .                 +(cotw*v2(polz)*prop56(ip)*qb_qu(ip,1,polg,polz)
     .                 +q1*qb_qu(ip,10,polg,polz))
     .                 *prop12(ip)*FACM)*prop34(ip)
     .                 +FAC*((en1*v2(polz)*prop56(ip)+q1*(-1d0)*cl1)
     .                 *prop12(ip)*qb_qu(ip,5,polg,polz)
     .                 +(en2*v2(polz)*prop56(ip)+q1*(-1d0)*cl2)
     .                 *prop12(ip)*qb_qu(ip,4,polg,polz)
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *qb_qu(ip,6,polg,polz)*wl1
     .                 +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                 *qb_qu(ip,7,polg,polz)*wl2)

c     A(polg,polz)=((L(+k)*qb_qu(2,polg,polz)
c     .                  +L(-j)*qb_qu(3,polg,polz))*FAC
c     .                  +cotw*prop12*qb_qu(1,polg,polz)*FACM)
c     .                 *prop34*prop56*v2(polz)
               enddo
            enddo
            ave=xn*aveqq*Vsq(j,k)

         elseif ((j .gt. 0) .and. (k .eq. 0)) then
c---  case u-g

            if (Vsum(j).ne.0d0) then
               do polg=1,2
                  do polz=1,2
                     A(polg,polz)=((c1(polz)*qu_gg(ip,2,polg,polz)
     .                    +c2(polz)*qu_gg(ip,3,polg,polz))*FAC
     .                    +(cotw*v2(polz)*prop56(ip)
     .                    *qu_gg(ip,1,polg,polz)
     .                    +q1*qu_gg(ip,10,polg,polz))
     .                    *prop12(ip)*FACM)*prop34(ip)
     .                    +FAC*((en1*v2(polz)*prop56(ip)+q1*(-1d0)*cl1)
     .                    *prop12(ip)*qu_gg(ip,5,polg,polz)
     .                    +(en2*v2(polz)*prop56(ip)+q1*(-1d0)*cl2)
     .                    *prop12(ip)*qu_gg(ip,4,polg,polz)
     .                    +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                    *qu_gg(ip,6,polg,polz)*wl1
     .                    +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                    *qu_gg(ip,7,polg,polz)*wl2)
                     
c     A(polg,polz)=((c1*qu_gg(2,polg,polz)
c     .                  +c2*qu_gg(3,polg,polz))*FAC
c     .                  +cotw*prop12*qu_gg(1,polg,polz)*FACM)
c     .                 *prop34*prop56*v2(polz)
                  enddo
               enddo
            endif
            ave=xn*aveqg*Vsum(j)
         elseif ((j .lt. 0) .and. (k .eq. 0)) then
c---  case db-g
            if (Vsum(j).ne.0d0) then
               do polg=1,2
                  do polz=1,2
                     A(polg,polz)=((c1(polz)*qb_gg(ip,2,polg,polz)
     .                    +c2(polz)*qb_gg(ip,3,polg,polz))*FAC
     .                    +(cotw*v2(polz)*prop56(ip)
     .                    *qb_gg(ip,1,polg,polz)
     .                    +q1*qb_gg(ip,10,polg,polz))
     .                    *prop12(ip)*FACM)*prop34(ip)
     .                    +FAC*((en1*v2(polz)*prop56(ip)+q1*(-1d0)*cl1)
     .                    *prop12(ip)*qb_gg(ip,5,polg,polz)
     .                    +(en2*v2(polz)*prop56(ip)+q1*(-1d0)*cl2)
     .                    *prop12(ip)*qb_gg(ip,4,polg,polz)
     .                    +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                    *qb_gg(ip,6,polg,polz)*wl1
     .                    +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                    *qb_gg(ip,7,polg,polz)*wl2)
                     
c     A(polg,polz)=((c1*qb_gg(2,polg,polz)
c     .                  +c2*qb_gg(3,polg,polz))*FAC
c     .                  +cotw*prop12*qb_gg(1,polg,polz)*FACM)
c     .                 *prop34*prop56*v2(polz)
                  enddo
               enddo
            endif
            
            ave=xn*aveqg*Vsum(j)
         elseif ((j .eq. 0) .and. (k .gt. 0)) then
c---  case g-u
            if (Vsum(k).ne.0d0) then
               
               do polg=1,2
                  do polz=1,2
                     A(polg,polz)=((c1(polz)*gg_qu(ip,2,polg,polz)
     .                    +c2(polz)*gg_qu(ip,3,polg,polz))*FAC
     .                    +(cotw*v2(polz)*prop56(ip)
     .                    *gg_qu(ip,1,polg,polz)
     .                    +q1*gg_qu(ip,10,polg,polz))
     .                    *prop12(ip)*FACM)*prop34(ip)
     .                    +FAC*((en1*v2(polz)*prop56(ip)+q1*(-1d0)*cl1)
     .                    *prop12(ip)*gg_qu(ip,5,polg,polz)
     .                    +(en2*v2(polz)*prop56(ip)+q1*(-1d0)*cl2)
     .                    *prop12(ip)*gg_qu(ip,4,polg,polz)
     .                    +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                    *gg_qu(ip,6,polg,polz)*wl1
     .                    +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                    *gg_qu(ip,7,polg,polz)*wl2)
                     
c     A(polg,polz)=((c1(polz)*gg_qu(2,polg,polz)
c     .                  +c2(polz)*gg_qu(3,polg,polz))*FAC
c     .                  +cotw*prop12*gg_qu(1,polg,polz)*FACM)
c     .                 *prop34*prop56*v2(polz)
                  enddo
               enddo
            endif
            ave=xn*aveqg*Vsum(k)
         elseif ((j .eq. 0) .and. (k .lt. 0)) then
c---  case g-db

            if (Vsum(k).ne.0d0) then
               
               do polg=1,2
                  do polz=1,2
                     A(polg,polz)=((c1(polz)*gg_qb(ip,2,polg,polz)
     .                    +c2(polz)*gg_qb(ip,3,polg,polz))*FAC
     .                    +(cotw*v2(polz)*prop56(ip)
     .                    *gg_qb(ip,1,polg,polz)
     .                    +q1*gg_qb(ip,10,polg,polz))
     .                    *prop12(ip)*FACM)*prop34(ip)
     .                    +FAC*((en1*v2(polz)*prop56(ip)+q1*(-1d0)*cl1)
     .                    *prop12(ip)*gg_qb(ip,5,polg,polz)
     .                    +(en2*v2(polz)*prop56(ip)+q1*(-1d0)*cl2)
     .                    *prop12(ip)*gg_qb(ip,4,polg,polz)
     .                    +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                    *gg_qb(ip,6,polg,polz)*wl1
     .                    +wwflag*0.5d0*prop34(ip)*prop12(ip)/xw
     .                    *gg_qb(ip,7,polg,polz)*wl2)
                     
c     A(polg,polz)=((c1*gg_qb(2,polg,polz)
c     .                  +c2*gg_qb(3,polg,polz))*FAC
c     .                  +cotw*prop12*gg_qb(1,polg,polz)*FACM)
c     .                 *prop34*prop56*v2(polz)
                     
                  enddo
               enddo
            endif
            
            ave=xn*aveqg*Vsum(k)

         else
            ave=0d0
         endif

         

         if (ave.gt.0d0) then


            xmsq(iloop)=xmsq(iloop) + FAC1*ave
     .           *(cdabs(A(mplus,minus))**2+cdabs(A(minus,minus))**2
     .           +cdabs(A(mplus,mplus))**2+cdabs(A(minus,mplus))**2)

            if (iloop.eq.1) then
               if (interference) then
                  A_SAVE(mplus,mplus) = A(mplus,mplus)
                  A_SAVE(minus,mplus) = A(minus,mplus)
                  A_SAVE(mplus,minus) = A(mplus,minus)
                  A_SAVE(minus,minus) = A(minus,minus)
               endif
            elseif(iloop.eq.2) then
               xmsq(3)=xmsq(3) - FAC1*ave
     .              *(dconjg(A(mplus,minus))*A_SAVE(mplus,minus) + 
     .              A(mplus,minus)*dconjg(A_SAVE(mplus,minus)) +
     .              dconjg(A(minus,minus))*A_SAVE(minus,minus) + 
     .              A(minus,minus)*dconjg(A_SAVE(minus,minus))
     .              )
            endif
            
            
            if(interference) then
               if(iloop.eq.2) then
c     this is for testing:
c     msq(j,k)=(xmsq(1,j,k)+xmsq(2,j,k))/2 *
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

      
      




