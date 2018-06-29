      subroutine born_phsp(xborn)
      implicit none
      include 'nlegborn.h'
      real * 8 xborn(ndiminteg-3)
      logical fksps
      parameter (fksps=.false.)
      if(fksps) then
         call born_phsp_fks(xborn)
      else
         call born_phsp_default(xborn)
      endif
      end



      subroutine born_phsp_default(xborn)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'pwhg_kn.h'
      include 'PhysPars.h'
      include 'pwhg_flg.h'
      real * 8 xborn(ndiminteg-3)
      integer k
      logical ini
      data ini/.true./
      save ini
      real * 8 xjac,smin,smax,z,s,wt,sqrts,
     1     m34,m56,taumin,lntaum,
     2     tau,ymax,ycm,xx(2),p1(4),p2(4),p3(4),p4(4),p5(4),p6(4),p7(4),
     3     p12(4),p34(4),p56(4),p3456(4),beta,vec(3),s3456min,s3456max,
     3     s3456,
     4     sratio,lnsratio,expon
      integer mu

      integer im34,im56
      integer im3456,imcm,iycm,i_7,i1_34_56,i2_34_56,i1_3_4,i2_3_4
     $     ,i1_5_6,i2_5_6
      parameter (im34=11,im56=12)
      parameter (im3456=1,imcm=2,iycm=3,i_7=4,i1_34_56=5
     $     ,i2_34_56=6,i1_3_4=7,i2_3_4=8,i1_5_6=9,i2_5_6=10)

      logical bwwindows
      parameter (bwwindows=.false.)

      if(ini) then
c     set initial- and final-state masses for Born and real
         do k=1,nlegborn
            kn_masses(k)=0
         enddo
         kn_masses(nlegreal)=0
ccccccccccccccccccccccccccccccccccccccc
c     4l+j
         kn_masses(3:7)=0d0
c--------------------------------------
c     WW+j
c         kn_masses(3:4)=ph_wmass
ccccccccccccccccccccccccccccccccccccccc
         ini = .false.

         if(bwwindows) then
            write(*,*) '----------------------------------------'
            write(*,*) 'mass interval for m34 and m56 '
     $           ,sqrt(ph_Wmass2low),sqrt(ph_Wmass2high)
            write(*,*) '----------------------------------------'
         endif
            
      endif      

      sqrts = sqrt(kn_sbeams)
      xjac=1

ccccccccccccccccccccccccccccccccccccccc
c     4l+j
      if(bwwindows) then
         smin=ph_Wmass2low
         smax=ph_Wmass2high
      else
         smin=1d-3
         smax=sqrts**2
      endif
      z = xborn(im34)
      call breitw(z,smin,smax,ph_wmass,ph_wwidth,s,wt)
      xjac=xjac*wt/(2*pi)
      m34=sqrt(s)

      if(bwwindows) then
         smin=ph_Wmass2low
         smax=ph_Wmass2high
      else
         smin=1d-3
         smax=(sqrts-m34)**2
      endif
      z=xborn(im56)
      call breitw(z,smin,smax,ph_wmass,ph_wwidth,s,wt)
      xjac=xjac*wt/(2*pi)
      m56=sqrt(s)
c-----------------------------------
c     WW+j
c$$$      m34=ph_wmass
c$$$      m56=ph_wmass
ccccccccccccccccccccccccccccccccccccccccc

      s3456min=(m34+m56)**2 
      s3456max = (sqrts-kn_ktmin)**2 - kn_ktmin**2

      if (s3456max.lt.s3456min) then
         write(*,*) 'Too high values for W and W virtualities'
         write(*,*) 'Return Jacobian=0'
         kn_jacborn = 0
         return
      endif

ccc      s345 = (s345max - s345min)*xborn(5)**3 + s345min      
ccc      xjac = xjac*(s345max - s345min)*3*xborn(5)**2

      sratio = s3456min/s3456max
      lnsratio = log(sratio)
      expon=1d0/4
      s3456 = exp(lnsratio*(xborn(im3456)**expon))*s3456max
      xjac = xjac*(-lnsratio*s3456)*expon*xborn(im3456)**(expon-1)


      expon=1d0/5
      taumin = (kn_ktmin + sqrt(s3456 + kn_ktmin**2))**2/kn_sbeams
      lntaum = log(taumin)
      tau = exp(lntaum*(1d0-xborn(imcm))**expon)
      xjac = xjac*(-lntaum*tau)*expon*(1d0-xborn(imcm))**(expon-1)

      kn_sborn = kn_sbeams*tau

      ymax=-0.5d0*log(tau)
      ycm=xborn(iycm)*2*ymax-ymax
      xjac = xjac*2*ymax
      xx(1)=sqrt(tau)*exp(ycm)
      xx(2)=tau/xx(1)

c---if x's out of normal range abort
      if   ((xx(1) .gt. 1d0)
     & .or. (xx(2) .gt. 1d0)
     & .or. (xx(1) .lt. 1d-8)
     & .or. (xx(2) .lt. 1d-8)) then
         write(*,*) ' error in Born phase space!, x1,x2 our of range'
         write(*,*) xx(1),xx(2)
         kn_jacborn = 0
         return
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

c      s345min=(m3+m45)**2

      call phi1_2m_nobw_ktmin(p12,0d0,sqrt(s3456),kn_ktmin,
     $     xborn(i_7),
     $     p7,p3456,wt)
      xjac=xjac*wt

      if (sqrt(p7(1)**2+p7(2)**2).lt.kn_ktmin) then
         write(*,*) '** ERROR in phi1_2m_nobw_ktmin: p6_T< kn_ktmin **'
         write(*,*) sqrt(p7(1)**2+p7(2)**2),' < ',kn_ktmin         
         write(*,*) 'The POWHEG BOX continues'
      endif
      
      call phi1_2(xborn(i1_34_56),xborn(i2_34_56),p3456,p34,p56,m34,m56,wt)
      xjac=xjac*wt

ccccccccccccccccccccccccccccccccccccc
c     4l+j
      call phi3m0(xborn(i1_3_4),xborn(i2_3_4),p34,p3,p4,wt)
      xjac=xjac*wt
      call phi3m0(xborn(i1_5_6),xborn(i2_5_6),p56,p5,p6,wt)
      xjac=xjac*wt
c------------------------------------
c     WW+j
c     comment the 4 lines above when doing WWJ production
ccccccccccccccccccccccccccccccccccccc
      

c     fill momenta
ccccccccccccccccccccccccccccccccccccc
c     4l+j
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
c----------------------------------
c     WW+j
c$$$      kn_pborn(0,3) = p34(4)
c$$$      kn_pborn(0,4) = p56(4)
c$$$      kn_pborn(0,5) = p7(4)
c$$$      kn_pborn(1:3,3) = p34(1:3)
c$$$      kn_pborn(1:3,4) = p56(1:3)
c$$$      kn_pborn(1:3,5) = p7(1:3)
ccccccccccccccccccccccccccccccccccc

      kn_jacborn = xjac

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

      if(bwwindows) then
         kn_minmass = sqrt(4d0*ph_Wmass2low)
      else
         kn_minmass = 0d0
      endif
      
      end


      subroutine born_suppression(fact)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      real * 8 fact,ptmin
      real * 8 pt2
      logical ini
      data ini/.true./
      real * 8 powheginput
      save ini,ptmin
      if (ini) then
         ptmin=powheginput("#bornsuppfact")
         if (ptmin.lt.0d0) then
            ptmin=0d0
         endif
         ini=.false.
      endif
      if(flg_weightedev) then
         write(*,*) 'born suppression NOT yet tested. Abort.'
         stop
c     pt2=...
c     fact=...
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
      real * 8 pww(0:3),pwm(0:3),pwp(0:3)
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
            write(*,*) '**  Factorization and renormalization **'
            write(*,*) '**  Scales mur=muf=M(WW)              **'
            write(*,*) '****************************************'
            write(*,*) '****************************************'
         elseif (runningscales.eq.2) then
            write(*,*) '****************************************'
            write(*,*) '****************************************'
            write(*,*) '**  Factorization and renormalization **'
            write(*,*) '**  Scales mur=muf=MT_Wp+MT_Wm        **'
            write(*,*) '****************************************'
            write(*,*) '****************************************'
         else
            write(*,*) '****************************************'
            write(*,*) '****************************************'
            write(*,*) '**   mur=muf=2MW                      **'
            write(*,*) '****************************************'
            write(*,*) '****************************************'                                                                                                                         
         endif
         ini=.false.
      endif

      if (runningscales.eq.1) then
         pww = kn_pborn(:,3)+kn_pborn(:,4)
     $       + kn_pborn(:,5)+kn_pborn(:,6)
         muf = sqrt(pww(0)**2-pww(1)**2-pww(2)**2-pww(3)**2)
         mur=muf
      elseif (runningscales.eq.2) then
         pwp = kn_pborn(:,3)+kn_pborn(:,4)
         pwm = kn_pborn(:,5)+kn_pborn(:,6)
         
         muf = sqrt(pwp(0)**2-pwp(3)**2)
         muf = muf+sqrt(pwm(0)**2-pwm(3)**2)
         mur=muf
      else
         muf=2d0*ph_wmass
         mur=2d0*ph_wmass
      endif
      end


cccccccccccccccccccccccccccccccccc
c     

      subroutine born_phsp_fks(xborn)
      implicit none
      include 'brinclude.h'
      include 'pwhg_math.h'
      include 'pwhg_kn.h'
      include 'PhysPars.h'
      include 'pwhg_flg.h'
      real * 8 xborn(ndiminteg-3)
      integer k
      logical ini
      data ini/.true./
      save ini
      real * 8 xjac

      if(ini) then
c     set initial- and final-state masses for Born and real
         do k=1,nlegborn
            kn_masses(k)=0
         enddo
         kn_masses(nlegreal)=0
ccccccccccccccccccccccccccccccccccccccc
c     4l+j
         kn_masses(3:7)=0d0
c--------------------------------------
c     WW+j
c         kn_masses(3:4)=ph_wmass
ccccccccccccccccccccccccccccccccccccccc
         ini = .false.
      endif      

c     compute WW phase space
      call born_phsp_ww(xborn) 

c     compute extra parton phase space using FKS inverse construction (ISR)
      call br_real_phsp_isr(xborn(ndiminteg-5:ndiminteg-3),xjac)

c     construct full jacobian of WW+j phase space
      kn_jacborn=brkn_jacborn*xjac

c     copy momenta and Bjorken x's
      kn_cmpborn=brkn_cmpreal
      kn_pborn=brkn_preal
      
      kn_xb1=brkn_x1
      kn_xb2=brkn_x2
      kn_sborn=brkn_sreal

      kn_minmass = sqrt(4d0*ph_Wmass2low)

      if(sqrt(kn_pborn(1,nlegborn)**2+kn_pborn(2,nlegborn)
     $     **2).lt.kn_ktmin) kn_jacborn=0d0


      end



      subroutine br_real_phsp_isr(xrad,jac)
      implicit none
      real * 8 xrad(3),jac
      include 'pwhg_math.h'
      include 'brinclude.h'
      real * 8 xjac
      brkn_csitilde=(3-2*xrad(1))*xrad(1)**2
      xjac=6*(1-xrad(1))*xrad(1)
      brkn_y=1-2*xrad(2)
      xjac=xjac*2
      xjac=xjac*1.5d0*(1-brkn_y**2)
      brkn_y=1.5d0*(brkn_y-brkn_y**3/3)
      brkn_azi=2*pi*xrad(3)
      xjac=xjac*2*pi
      call br_compcsimax
      brkn_csi=brkn_csitilde*brkn_csimax
      call br_real_phsp_isr_rad
      jac=xjac*brkn_jacreal*brkn_csimax
      end

      subroutine br_compcsimax
      implicit none
      include 'brinclude.h'
      real * 8 y,xb1,xb2
      xb1=brkn_xb1
      xb2=brkn_xb2
      y=brkn_y
      brkn_csimax=1-max(2*(1+y)*xb1**2/
     1    (sqrt((1+xb1**2)**2*(1-y)**2+16*y*xb1**2)+(1-y)*(1-xb1**2)),
     1            2*(1-y)*xb2**2/
     1    (sqrt((1+xb2**2)**2*(1+y)**2-16*y*xb2**2)+(1+y)*(1-xb2**2)))
      end

      subroutine br_real_phsp_isr_rad
      implicit none
      include 'pwhg_math.h'
      include 'brinclude.h'
      include 'pwhg_kn.h'
      real * 8 y,xb1,xb2,x1,x2,betal,betat,vecl(3),vect(3),
     1         cth,sth,cph,sph,csi,pt2
      integer i,mu
      real * 8 dotp
      external dotp
c the following call sets brkn_csimax, brkn_csimaxp, brkn_csimaxm
c also when br_real_phsp_isr_rad is called directly
c (i.e. not through br_real_phsp_isr_rad0)
      call br_compcsimax
      y=brkn_y
      xb1=brkn_xb1
      xb2=brkn_xb2
      csi=brkn_csi
      cth=y
      sth=sqrt(1-cth**2)
      cph=cos(brkn_azi)
      sph=sin(brkn_azi)
      x1=xb1/sqrt(1-csi)*sqrt((2-csi*(1-y))/(2-csi*(1+y)))
      x2=xb2/sqrt(1-csi)*sqrt((2-csi*(1+y))/(2-csi*(1-y)))
      brkn_x1=x1
      brkn_x2=x2
      do mu=0,3
         brkn_preal(mu,1)=kn_beams(mu,1)*x1
         brkn_preal(mu,2)=kn_beams(mu,2)*x2
      enddo
      brkn_sreal=brkn_sborn/(1-csi)
c Build k_n+1 in the rest frame of brkn_preal
c      write(*,*) ' br_nlegreal ',br_nlegreal
      brkn_preal(0,br_nlegreal)=sqrt(brkn_sreal)*csi/2
      brkn_preal(1,br_nlegreal)=brkn_preal(0,br_nlegreal)*sth*sph
      brkn_preal(2,br_nlegreal)=brkn_preal(0,br_nlegreal)*sth*cph
      brkn_preal(3,br_nlegreal)=brkn_preal(0,br_nlegreal)*cth
c boost it to the frame of brkn_preal
      do i=1,3
         vecl(i)=(brkn_preal(i,1)+brkn_preal(i,2))
     1          /(brkn_preal(0,1)+brkn_preal(0,2))
      enddo      
      betal=sqrt(vecl(1)**2+vecl(2)**2+vecl(3)**2)
      if(betal.gt.0) then
         do i=1,3
            vecl(i)=vecl(i)/betal
         enddo
      else
         vecl(1)=1
         vecl(2)=0
         vecl(3)=0
      endif
      call mboost(1,vecl,betal,
     1    brkn_preal(0,br_nlegreal),brkn_preal(0,br_nlegreal))
c longitudinal boost of underlying Born to zero rapidity frame
      do i=1,3
         vecl(i)=(brkn_pborn(i,1)+brkn_pborn(i,2))
     1          /(brkn_pborn(0,1)+brkn_pborn(0,2))
      enddo
      betal=sqrt(vecl(1)**2+vecl(2)**2+vecl(3)**2)
      if(betal.gt.0) then
         do i=1,3
            vecl(i)=vecl(i)/betal
         enddo
      else
         vecl(1)=1
         vecl(2)=0
         vecl(3)=0
      endif
      call mboost(br_nlegborn-2,vecl,-betal,
     1 brkn_pborn(0,3),brkn_preal(0,3))
c      call printtot(br_nlegborn,brkn_preal(0,1))
c construct transverse boost velocity
      vect(3)=0
      vect(1)=brkn_preal(1,br_nlegreal)
      vect(2)=brkn_preal(2,br_nlegreal)
      pt2=vect(1)**2+vect(2)**2
c      betat=1/sqrt(1+(brkn_sreal*(1-csi))/pt2)
      betat=sqrt(pt2/(pt2+brkn_sreal*(1-csi)))
      if(pt2.eq.0) then
         vect(1)=1
         vect(2)=0
      else
         vect(1)=vect(1)/sqrt(pt2)
         vect(2)=vect(2)/sqrt(pt2)
      endif
c     write(*,*) ' k+1: ',(brkn_preal(mu,br_nlegreal),mu=0,3)
         call mboost(br_nlegborn-2,vect,-betat,
     1        brkn_preal(0,3),brkn_preal(0,3))
c      call printtot(nlegborn,brkn_preal(0,1))
c longitudinal boost in opposite direction
      call mboost(br_nlegborn-2,vecl,betal,
     1 brkn_preal(0,3),brkn_preal(0,3))
c      call printtot(br_nlegreal,brkn_preal(0,1))
      brkn_jacreal=brkn_sreal/(4*pi)**3*csi/(1-csi)
      call br_compcmkin
      call br_compdij
      end


      subroutine br_compcmkin
      implicit none
      include 'brinclude.h'
      real * 8 vecl(3),betal
      data vecl/0d0,0d0,1d0/
      save vecl
      betal=-(brkn_preal(3,1)+brkn_preal(3,2))/
     1 (brkn_preal(0,1)+brkn_preal(0,2))
      call mboost(br_nlegreal,vecl,betal,brkn_preal,brkn_cmpreal)
      end

      subroutine br_compdij
      implicit none
      include 'brinclude.h'
      integer j,k
      real * 8 y
      real * 8 crossp,dotp
      external crossp,dotp
      do j=4,br_nlegreal
         y=1-dotp(brkn_cmpreal(0,1),brkn_cmpreal(0,j))
     1 /(brkn_cmpreal(0,1)*brkn_cmpreal(0,j))
         brkn_dijterm(0,j)=(brkn_cmpreal(0,j)**2
     1 *(1-y**2))**brpar_diexp
         brkn_dijterm(1,j)=(brkn_cmpreal(0,j)**2
     1 *2*(1-y))**brpar_diexp
         brkn_dijterm(2,j)=(brkn_cmpreal(0,j)**2
     1 *2*(1+y))**brpar_diexp
      enddo
      do j=4,br_nlegreal
         do k=j+1,br_nlegreal
            brkn_dijterm(j,k)=
     1(2*dotp(brkn_cmpreal(0,k),brkn_cmpreal(0,j))*
     1       brkn_cmpreal(0,k)*brkn_cmpreal(0,j)
     2    /  (brkn_cmpreal(0,k)+brkn_cmpreal(0,j))**2)**brpar_dijexp
c     2    /  ((brkn_cmpreal(1,k)+brkn_cmpreal(1,j))**2+
c     3        (brkn_cmpreal(2,k)+brkn_cmpreal(2,j))**2+
c     4        (brkn_cmpreal(3,k)+brkn_cmpreal(3,j))**2))**brpar_dijexp
         enddo
      enddo
      end


      subroutine born_phsp_ww(xborn)
      implicit none
      include 'brinclude.h'
      include 'pwhg_kn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
c      include 'pwhg_flst.h'
c      include 'vvsettings.f'
      real * 8 xborn(ndiminteg-3)
      real * 8 xjac,tau,beta,vec(3)

      integer mu
      double precision p1(4),p2(4),p3(4),p4(4),p5(4),p6(4)
      double precision p(4,6)
      double precision xx(2)
      double precision p12(4),p34(4),p56(4)
      double precision wt
      double precision m34,m56,smin,smax,s,z
      double precision xmin,taumin,sqrts
      integer i,k
      real * 8 powheginput
      external powheginput
      logical debug,ini
      data ini/.true./
      data debug/.false./
      save ini

      double precision lntaum,ymax,ycm

      if (debug)  write(*,*) 'Entering Born_phsp: ndiminteg', ndiminteg
      if(ini) then
c$$$         do k=1,nlegborn
c$$$            brkn_masses(k)=0
c$$$         enddo
c$$$         brkn_masses(nlegreal)=0
         brkn_masses(:)=0d0
         ini=.false.
      endif
C     
      xmin  = 1d-8 
      sqrts = sqrt(kn_sbeams)
      
c First determine virtualities of lepton pairs
      smin=0d0
      smax= sqrts**2
      z=xborn(1)
      xjac=1d0
c breitw, if zerowidth is true, does the right thing
      call breitw(z,smin,smax,ph_wmass,ph_wwidth,s,wt)
c wt is the Jacobian from z to s; we do ds/(2 pi), so provide
c 2 pi
      xjac=xjac*wt/(2*pi)
      m34=sqrt(s)
      smax=(sqrts-m34)**2
      z=xborn(2)
      
      call breitw(z,smin,smax,ph_wmass,ph_wwidth,s,wt)
      xjac=xjac*wt/(2*pi)
      m56=sqrt(s)

      taumin = ((m34+m56)/sqrts)**2
      lntaum = dlog(taumin)
      tau = dexp(lntaum*(1d0-xborn(3)))
      xjac = xjac*(-lntaum*tau)

      brkn_sborn = kn_sbeams*tau

      ymax=-0.5d0*log(tau)
      ycm=xborn(4)*2*ymax-ymax
      xjac = xjac*2*ymax
      xx(1)=sqrt(tau)*exp(ycm)
      xx(2)=tau/xx(1)

      if (xborn(4) .eq. 0d0) then 
         write(*,*) 'xborn(4).eq 0: xborn',xborn
      endif

c---if x's out of normal range abort
c      if   ((xx(1) .gt. 1d0)
c     & .or. (xx(2) .gt. 1d0)
c     & .or. (xx(1) .lt. xmin)
c     & .or. (xx(2) .lt. xmin)) then
c         write(*,*) 'Born_phsp: warning x1,x2 our of range:',xx(1),xx(2)
c         call exit(-1)
c      endif

C     NB positive energy even if incoming, i.e. p1+p2 = \sum_3^8 p_i   
c     pos rapidity
      p1(4)=xx(1)*sqrts*0.5d0
      p1(1)=0d0
      p1(2)=0d0
      p1(3)=xx(1)*sqrts*0.5d0

c     neg rapidity 
      p2(4)=xx(2)*sqrts*0.5d0
      p2(1)=0d0
      p2(2)=0d0
      p2(3)=-xx(2)*sqrts*0.5d0
      
c      print*, p1
c      print*, p2

C     total incoming momentum 
      p12 = p1+p2 

      call phi1_2(xborn(5),xborn(6),p12,p34,p56,m34,m56,wt)
      xjac=xjac*wt
      call phi3m0(xborn(7),xborn(8),p34,p3,p4,wt)
      xjac=xjac*wt
      call phi3m0(xborn(9),xborn(10),p56,p5,p6,wt)
      xjac=xjac*wt

      p(:,1) = p1 
      p(:,2) = p2 
      p(:,3) = p3 
      p(:,4) = p4 
      p(:,5) = p5 
      p(:,6) = p6 

      brkn_jacborn = xjac 

ccccccccccccccccccccccc
c     !ER: in ww code, resonances momenta are also included
c     in the list. For the time being, we are not doing it
c     for the WWj case, so the following lines have to be changed
c$$$      do i=1,6
c$$$         if(i.le.2) then
c$$$            k=i
c$$$         else
c$$$            k=i+2
c$$$         endif
c$$$         brkn_pborn(0,k) = p(4,i)
c$$$         brkn_pborn(1,k) = p(1,i)
c$$$         brkn_pborn(2,k) = p(2,i)
c$$$         brkn_pborn(3,k) = p(3,i)
c$$$      enddo 
c$$$      brkn_pborn(:,3)=brkn_pborn(:,5)+brkn_pborn(:,6)
c$$$      brkn_pborn(:,4)=brkn_pborn(:,7)+brkn_pborn(:,8)
      do i=1,6
         brkn_pborn(0,i) = p(4,i)
         brkn_pborn(1,i) = p(1,i)
         brkn_pborn(2,i) = p(2,i)
         brkn_pborn(3,i) = p(3,i)
      enddo
ccccccccccccccccccccccc
      

c     now boost everything BACK along z-axis 
      brkn_xb1 = xx(1)
      brkn_xb2 = xx(2)
      beta=(brkn_xb1-brkn_xb2)/(brkn_xb1+brkn_xb2)
      vec(1)=0
      vec(2)=0
      vec(3)=-1
      call mboost(nlegborn-2,vec,beta,brkn_pborn(:,3:),brkn_cmpborn(:,3:))
      do mu=0,3
         brkn_cmpborn(mu,1)=sqrt(brkn_xb1*brkn_xb2)*kn_beams(mu,1)
         brkn_cmpborn(mu,2)=sqrt(brkn_xb1*brkn_xb2)*kn_beams(mu,2)
      enddo

c$$$c     minimal final state mass 
c$$$      if(zerowidth) then
c$$$         brkn_minmass= 2 * ph_wmass
c$$$      else
c$$$         brkn_minmass=0d0
c$$$      endif


c     print out for checks 
      if (debug) then 
c     -- checks invariants, mom. conservation etc in Lab frame  
      write(*,*) '----> Lab FRAME' 
      do i=1,6
         write(*,*) 'pborn', i, brkn_pborn(:,i)
      enddo
      write(*,*) 'psum', sum(brkn_pborn(:,1:2),dim=2) 
     .     -sum(brkn_pborn(:,3:6),dim=2) 
      p34(1:3) = brkn_pborn(1:3,3)+brkn_pborn(1:3,4)
      p56(1:3) = brkn_pborn(1:3,5)+brkn_pborn(1:3,6)
      p34(4)   = brkn_pborn(0,3)+brkn_pborn(0,4)
      p56(4)   = brkn_pborn(0,5)+brkn_pborn(0,6)
      write(*,*) 'm2(34)',i,p34(4)*p34(4)-
     .        p34(1)*p34(1)-p34(2)*p34(2)-p34(3)*p34(3)
      write(*,*) 'm2(56)',i,p56(4)*p56(4)-
     .        p56(1)*p56(1)-p56(2)*p56(2)-p56(3)*p56(3)

      do i=1,8 
         write(*,*) 'm2',i,brkn_pborn(0,i)*brkn_pborn(0,i)-
     .        brkn_pborn(1,i)*brkn_pborn(1,i)-
     .        brkn_pborn(2,i)*brkn_pborn(2,i)-
     .        brkn_pborn(3,i)*brkn_pborn(3,i)
      enddo

c     -- checks invariants, mom. conservation etc in CM frame  
      write(*,*) '----> CM FRAME' 
      do i=1,6 
         write(*,*) 'CM pborn', i, brkn_cmpborn(:,i)
      enddo
      write(*,*) 'psum', sum(brkn_cmpborn(:,1:2),dim=2) 
     .     -sum(brkn_cmpborn(:,3:6),dim=2) 

      p34(1:3) = brkn_cmpborn(1:3,3)+brkn_cmpborn(1:3,4)
      p56(1:3) = brkn_cmpborn(1:3,5)+brkn_cmpborn(1:3,6)
      p34(4)   = brkn_cmpborn(0,3)+brkn_cmpborn(0,4)
      p56(4)   = brkn_cmpborn(0,5)+brkn_cmpborn(0,6)
      write(*,*) 'm2(34)',i,p34(4)*p34(4)-
     .        p34(1)*p34(1)-p34(2)*p34(2)-p34(3)*p34(3)
      write(*,*) 'm2(56)',i,p56(4)*p56(4)-
     .        p56(1)*p56(1)-p56(2)*p56(2)-p56(3)*p56(3)

      do i=1,6 
         write(*,*) 'm2',i,brkn_cmpborn(0,i)*brkn_cmpborn(0,i)-
     .        brkn_cmpborn(1,i)*brkn_cmpborn(1,i)-
     .        brkn_cmpborn(2,i)*brkn_cmpborn(2,i)-
     .        brkn_cmpborn(3,i)*brkn_cmpborn(3,i)
      enddo

      endif

      end

