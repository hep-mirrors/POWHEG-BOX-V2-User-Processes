      subroutine born_phsp(xborn)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'pwhg_kn.h'
      include 'PhysPars.h'
      include 'pwhg_flg.h'
      real * 8 xborn(ndiminteg-3)
      integer k
      real * 8 xjac,smin,smax,z,s,wt,sqrts,
     1     m34,taumin,zp,zpp,s3456,
     2     tau,ymax,y,xx(2),p1(4),p2(4),p3(4),p4(4),p5(4),p6(4),p7(4),
     3     p12(4),p127(4),p34(4),p56(4),beta,vec(3),s3456min,s56min,
     4     s3456max,sratio,lnsratio,expon,lntaum,ycm
      integer mu
      logical ini
      data ini/.true./
      save ini
 
      if(ini) then
c     set initial- and final-state masses for Born and real
         do k=1,nlegborn
            kn_masses(k)=0
         enddo
         kn_masses(nlegreal)=0
         kn_masses(5)=ph_bmass
         kn_masses(6)=ph_bmass
         ini = .false.
      endif

      sqrts = sqrt(kn_sbeams)
      xjac=1

      smin=ph_Wmass2low
      smax=ph_Wmass2high
      z=xborn(1)

      call breitw(z,smin,smax,ph_wmass,ph_wwidth,s,wt)
      m34=sqrt(s)
      xjac=xjac*wt/(2*pi)**3


      s3456min=(m34+kn_masses(5)+kn_masses(6))**2 
      s3456max = (sqrts-kn_ktmin)**2 - kn_ktmin**2

      if (s3456max.lt.s3456min) then
         write(*,*) 'Too high values for W virtuality'
         write(*,*) 'Return Jacobian=0'
         kn_jacborn = 0
         return
      endif

      sratio = s3456min/s3456max
      lnsratio = log(sratio)

      expon=1d0/4
      s3456 = exp(lnsratio*(xborn(4)**expon))*s3456max
      xjac  = xjac*(-lnsratio*s3456)*expon*xborn(4)**(expon-1)


      expon=1d0/5
      taumin = (kn_ktmin + sqrt(s3456 + kn_ktmin**2))**2/kn_sbeams
      lntaum = log(taumin)
      tau = exp(lntaum*(1d0-xborn(2))**expon)
      xjac = xjac*(-lntaum*tau)*expon*(1d0-xborn(2))**(expon-1)

      kn_sborn = kn_sbeams*tau

      ymax=-0.5d0*log(tau)
      ycm=xborn(3)*2*ymax-ymax
      xjac = xjac*2*ymax
      xx(1)=sqrt(tau)*exp(ycm)
      xx(2)=tau/xx(1)
c$$$
c$$$c---if x's out of normal range abort
c$$$      if   ((xx(1) .gt. 1d0)
c$$$     & .or. (xx(2) .gt. 1d0)
c$$$     & .or. (xx(1) .lt. 1d-8)
c$$$     & .or. (xx(2) .lt. 1d-8)) then
c$$$         write(*,*) ' error in Born phase space!, x1,x2 our of range'
c$$$         write(*,*) xx(1),xx(2)
c$$$         kn_jacborn = 0
c$$$         call pwhg_exit(-1)
c$$$      endif

      p1(4)=xx(1)*sqrts*0.5d0
      p1(1)=0d0
      p1(2)=0d0
      p1(3)=xx(1)*sqrts*0.5d0

      p2(4)=xx(2)*sqrts*0.5d0
      p2(1)=0d0
      p2(2)=0d0
      p2(3)=-xx(2)*sqrts*0.5d0

C     total incoming momentum 
      p12 = p1+p2 


      call phi1_2m_nobw_ktmin(p12,0d0,sqrt(s3456),kn_ktmin,
     $     xborn(5),xborn(6),
     $     p7,p127,wt)
      xjac=xjac*wt


      if (sqrt(p7(1)**2+p7(2)**2).lt.kn_ktmin) then
         write(*,*) '** ERROR in phi1_2m_nobw_ktmin: p7_T< kn_ktmin **'
         write(*,*) sqrt(p7(1)**2+p7(2)**2),' < ',kn_ktmin         
         write(*,*) 'The POWHEG BOX continues'
      endif
      
      z=xborn(7)**3 
      xjac=xjac*3*xborn(7)**2
      
      zp=xborn(8)
      zpp = -2*zp**3 + 3*zp**2
      xjac=xjac*(-6*zp**2 + 6*zp)

      s56min=(kn_masses(5)+kn_masses(6))**2 

      call phi1_2m_nobw(m34,z,zpp,xborn(9),
     1                  s56min,p127,p34,p56,wt)
      xjac=xjac*wt


      call phi3m(xborn(10),xborn(11),p56,p5,p6,ph_bmass,ph_bmass,wt)
      xjac=xjac*wt

      call phi3m0(xborn(12),xborn(13),p34,p3,p4,wt)
      xjac=xjac*wt


c      write(6,*) 'p1 =',p1(4),p1(1),p1(2),p1(3)
c      write(6,*) 'p2 =',p2(4),p2(1),p2(2),p2(3)
c      write(6,*) 'p3 =',p3(4),p3(1),p3(2),p3(3)
c      write(6,*) 'p4 =',p4(4),p4(1),p4(2),p4(3)
c      write(6,*) 'p5 =',p5(4),p5(1),p5(2),p5(3)
c      write(6,*) 'p6 =',p6(4),p6(1),p6(2),p6(3)
c      write(6,*) 'p7 =',p7(4),p7(1),p7(2),p7(3)
c
c      write(6,*) 'm5=',sqrt(p5(4)**2-p5(1)**2-p5(2)**2-p5(3)**2)
c      write(6,*) 'm6=',sqrt(p6(4)**2-p6(1)**2-p6(2)**2-p6(3)**2)
c
c      write(6,*) 'E =',p1(4)+p2(4)-p3(4)-p4(4)-p5(4)-p6(4)-p7(4)
c      write(6,*) 'px=',p1(1)+p2(1)-p3(1)-p4(1)-p5(1)-p6(1)-p7(1)
c      write(6,*) 'py=',p1(2)+p2(2)-p3(2)-p4(2)-p5(2)-p6(2)-p7(2)
c      write(6,*) 'pz=',p1(3)+p2(3)-p3(3)-p4(3)-p5(3)-p6(3)-p7(3)
c
c      pause

      kn_pborn(0,1) = p1(4)
      kn_pborn(0,2) = p2(4)
      kn_pborn(0,3) = p3(4)
      kn_pborn(0,4) = p4(4)
      kn_pborn(0,5) = p5(4)
      kn_pborn(0,6) = p6(4)
      kn_pborn(0,7) = p7(4)

      kn_pborn(1:3,1) = p1(1:3)
      kn_pborn(1:3,2) = p2(1:3)
      kn_pborn(1:3,3) = p3(1:3)
      kn_pborn(1:3,4) = p4(1:3)
      kn_pborn(1:3,5) = p5(1:3)
      kn_pborn(1:3,6) = p6(1:3)
      kn_pborn(1:3,7) = p7(1:3)



      kn_jacborn = xjac

c      write(*,*) kn_jacborn

c     now boost everything BACK along z-axis 
      kn_xb1 = xx(1)
      kn_xb2 = xx(2)
      beta=(kn_xb1-kn_xb2)/(kn_xb1+kn_xb2)
      vec(1)=0
      vec(2)=0
      vec(3)=-1
      call mboost(nlegborn-2,vec,beta,kn_pborn(:,3:),
     1     kn_cmpborn(:,3:))
      do mu=0,3
         kn_cmpborn(mu,1)=sqrt(kn_xb1*kn_xb2)*kn_beams(mu,1)
         kn_cmpborn(mu,2)=sqrt(kn_xb1*kn_xb2)*kn_beams(mu,2)
      enddo
      kn_minmass = 2*ph_bmass
      end




      subroutine born_suppression(fact)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      real * 8 fact,ptmin,ptminW
      real * 8 pt2,pt2W
      logical ini
      data ini/.true./
      real * 8 powheginput
      save ini,ptmin,ptminW    
      if (ini) then
         ptmin=powheginput("#bornsuppfact")      
         ptminW=powheginput("#bornsuppfactW")      
         if (ptmin.lt.0d0) then
            ptmin=0d0
         endif
         if (ptminW.lt.0d0) then
            ptminW=0d0
         endif
         ini=.false.
      endif
      if(flg_weightedev) then
         pt2=kn_cmpborn(1,7)**2+kn_cmpborn(2,7)**2
         fact = (pt2/(ptmin**2+pt2))**2
         pt2W=(kn_cmpborn(1,3)+kn_cmpborn(1,4))**2+
     $        (kn_cmpborn(2,3)+kn_cmpborn(2,4))**2
         fact=fact*(pt2W+1d0)/(pt2W+1d0+ptminW**2)
      else
         fact=1
      endif
      end



      subroutine set_fac_ren_scales(muf,mur)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      include 'PhysPars.h'
      real * 8 muf,mur
      logical ini
      data ini/.true./
      integer runningscales
      real * 8 mtw,mtb,mtbbar,pt1,pt2
      real * 8 Ht
      real * 8 ptot(0:3)
      integer i,nu
      real * 8 powheginput
      external powheginput      
      save ini,runningscales
      if (ini) then
         runningscales=powheginput("#runningscales")
         if(powheginput("#minlo").eq.1) then
            write(*,*) '****************************************'
            write(*,*) '*******       MINLO ACTIVE       *******'
            write(*,*) '****************************************'
            write(*,*) '*******       FIXED SCALES!        *****'
            write(*,*) '****************************************'
            runningscales=0
         endif

         if (runningscales.eq.1) then
c            write(*,*) '****************************************'
c            write(*,*) '****************************************'
c            write(*,*) '**   Dynamical scale is used:         **'
c            write(*,*) '**                                    **'
c            write(*,*) '**   mur=muf=HT/2   where             **'
c            write(*,*) '**                                    **'
c            write(*,*) '** HT=Mt_W+Mt_b+Mt_bbar+pt_j1(+pt_j2) **'
c            write(*,*) '**                                    **'
c            write(*,*) '****************************************'
c            write(*,*) '****************************************'
            write(*,*) '****************************************'
            write(*,*) '****************************************'
            write(*,*) '**   Dynamical scale is used:         **'
            write(*,*) '     check Born_phsp.f file             '
            write(*,*) '****************************************'
            write(*,*) '****************************************'
         else
            write(*,*) '****************************************'
            write(*,*) '****************************************'
            write(*,*) '**   mur=muf=MW                       **'
            write(*,*) '****************************************'
            write(*,*) '****************************************'            
         endif
         ini=.false.
      endif
      
      if (runningscales.eq.1) then
         if ((flg_btildepart.eq.'b').or.(flg_btildepart.eq.'c')) then
c     mtw    = sqrt(
c     $           (kn_pborn(0,3)+kn_pborn(0,4))**2
c     $           -(kn_pborn(1,3)+kn_pborn(1,4))**2
c     $           -(kn_pborn(2,3)+kn_pborn(2,4))**2
c     $            -(kn_pborn(3,3)+kn_pborn(3,4))**2
c     $            +(kn_pborn(1,3)+kn_pborn(1,4))**2
c     $           +(kn_pborn(2,3)+kn_pborn(2,4))**2
c     $           )         
            mtw    = sqrt(ph_Wmass**2+(kn_pborn(1,3)+kn_pborn(1,4))**2
     $           +(kn_pborn(2,3)+kn_pborn(2,4))**2)
            mtb    = sqrt(ph_bmass**2+kn_pborn(1,5)**2+kn_pborn(2,5)**2)
            mtbbar = sqrt(ph_bmass**2+kn_pborn(1,6)**2+kn_pborn(2,6)**2)
            pt1    = sqrt(kn_pborn(1,7)**2+kn_pborn(2,7)**2)
            HT     = mtw+mtb+mtbbar+pt1
         elseif ((flg_btildepart.eq.'r')) then
c     mtw    = sqrt(
c     $           (kn_preal(0,3)+kn_preal(0,4))**2
c     $           -(kn_preal(1,3)+kn_preal(1,4))**2
c     $           -(kn_preal(2,3)+kn_preal(2,4))**2
c     $           -(kn_preal(3,3)+kn_preal(3,4))**2
c     $           +(kn_preal(1,3)+kn_preal(1,4))**2
c     $           +(kn_preal(2,3)+kn_preal(2,4))**2
c     $           )         
            mtw    = sqrt(ph_Wmass**2+(kn_preal(1,3)+kn_preal(1,4))**2
     $           +(kn_preal(2,3)+kn_preal(2,4))**2)
            mtb    = sqrt(ph_bmass**2+kn_preal(1,5)**2+kn_preal(2,5)**2)
            mtbbar = sqrt(ph_bmass**2+kn_preal(1,6)**2+kn_preal(2,6)**2)
            pt1    = sqrt(kn_preal(1,7)**2+kn_preal(2,7)**2)
            pt2    = sqrt(kn_preal(1,8)**2+kn_preal(2,8)**2)
            HT     = mtw+mtb+mtbbar+pt1+pt2
         else
            print *,"Problem occured in set_fac_ren_scales"
            print *,"flg_btildepart: ",flg_btildepart
            call pwhg_exit(-1)
         endif
c     HT/2 scale:
         mur = HT/2d0
c     if(mur.lt.2) mur=2
         muf = mur         
C$$$         ptot=0
C$$$         do i=3,6
C$$$            do nu=0,3
C$$$               ptot(nu) = ptot(nu) + kn_cmpborn(nu,i)
C$$$            enddo
C$$$         enddo
C$$$         muf=sqrt(ptot(0)**2-ptot(1)**2-ptot(2)**2-ptot(3)**2)
C$$$         mur=muf      
      else
         muf=ph_wmass
         mur=ph_wmass
      endif
      end



