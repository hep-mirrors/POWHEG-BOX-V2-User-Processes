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
     1     m34,taumin,zp,
     2     tau,ymax,y,xx(2),p1(4),p2(4),p3(4),p4(4),p5(4),p6(4),p7(4),
     3     p12(4),p127(4),p34(4),p56(4),beta,vec(3),s3456min,s56min
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
      xjac=xjac*wt/(2*pi)**3
      m34=sqrt(s)
      
      s56min=4d0*ph_bmass**2
      s3456min=(m34+2d0*ph_bmass)**2
      taumin=s3456min/kn_sbeams
      tau=exp(log(taumin)*xborn(2))
      y=0.5d0*log(tau)*(1d0-2d0*xborn(3))
      wt=log(taumin)*tau*log(tau)
      xjac=xjac*wt

c      write(6,*) 'ph_Wmass2low=',ph_Wmass2low
c      write(6,*) 'ph_Wmass2high=',ph_Wmass2high
c      write(6,*) 'm34=',m34
c      write(6,*) 'ph_bmass=',ph_bmass
c      write(6,*) 'sqrts=',sqrts
c      write(6,*) 's56min=',s56min
c      write(6,*) 's3456min=',s3456min
c      write(6,*) 'taumin=',taumin
c      write(6,*) 'tau=',tau
c      write(6,*) 'sqrts=',sqrts
      xx(1)=sqrt(tau)*exp(+y)
      xx(2)=sqrt(tau)*exp(-y)
      
      kn_sborn = kn_sbeams*tau


c      write(6,*) 'xx(1)=',xx(1)
c      write(6,*) 'xx(2)=',xx(2)
c      pause

c---if x's out of normal range abort
      if   ((xx(1) .gt. 1d0)
     & .or. (xx(2) .gt. 1d0)
     & .or. (xx(1) .lt. 1d-8)
     & .or. (xx(2) .lt. 1d-8)) then
         write(*,*) ' error in Born phase space!, x1,x2 our of range'
         write(*,*) xx(1),xx(2)
         kn_jacborn = 0
         call pwhg_exit(-1)
      endif

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


      call phi1_2m_nobw(0d0,xborn(4),xborn(5),xborn(6),
     1                  s3456min,p12,p7,p127,wt)
      xjac=xjac*wt

      
      z=xborn(7)**3 
      xjac=xjac*3*xborn(7)**2
      
      zp=xborn(8)
      zp = -2*zp**3 + 3*zp**2
      xjac=xjac*(-6*zp**2 + 6*zp)

      call phi1_2m_nobw(m34,z,zp,xborn(9),
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

      kn_jacborn = xjac/(2d0*pi)

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
         fact = pt2/(ptmin**2+pt2)
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
      include 'PhysPars.h'
      real * 8 muf,mur
      logical ini
      data ini/.true./
      integer runningscales
      real * 8 pt1,pt2,ptHsq,Ht
      real * 8 powheginput
      external powheginput      
      save ini,runningscales

      if (ini) then
         runningscales=powheginput("#runningscales")

         if(powheginput("#minlo").eq.1) then
            write(*,*) '****************************************'
            write(*,*) '*******          MINLO ACTIVE    *******'
            write(*,*) '****************************************'
            write(*,*) '*******     FIXED SCALES!          *****'
            runningscales=0
         endif

         if (runningscales.eq.1) then
            write(*,*) '****************************************'
            write(*,*) '****************************************'
            write(*,*) '**   mur=muf=sqrt(pT_lep*pT_neut)     **'
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
         pt1=sqrt(kn_pborn(1,3)**2+kn_pborn(2,3)**2)
         pt2=sqrt(kn_pborn(1,4)**2+kn_pborn(2,4)**2)
         mur=sqrt(pt1*pt2)
         if(mur.lt.2) mur=2
         muf=mur         
      else
         muf=ph_wmass
         mur=ph_wmass
      endif
      end



