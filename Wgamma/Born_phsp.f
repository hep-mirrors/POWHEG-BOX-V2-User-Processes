      subroutine born_phsp(xborn)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 xborn(ndiminteg-3)
*
      real*8 random
      external random

      real*8 dotp
      external dotp
*
      real*8 vec(3)
      data vec/0d0,0d0,1d0/

      real*8 weight

      real*8 tau,y
      real*8 s,sp
      real*8 N1,N2,Npart1,Npart2,atanmin,norm
      real*8 bw1,bw2,distpart1,distpart2

      real*8 beta,cth,sth,phi,cph,sph
      real*8 phi12,cth12
      real*8 q1(0:3),q2(0:3),q1s(0:3),q2s(0:3)
      real*8 mpart2,f12,f123
      real*8 theta,deltar,deltaeta,deltaphi,etae,etagam,phie,phigam,
     +       thetae,thetagam,deltar_min,pte_min,w
      real*8 s_min,s_max,mpart2_min,mpart2_max
      real*8 ptot,kzed,cthmax,z
      integer mu,k
      logical ini
      data ini/.true./
      save ini,N1,atanmin,DeltaR_min,pte_min,weight
      real * 8 powheginput
      external powheginput

      if (ini) then
         weight = powheginput("#phspseparation")
         if(weight.lt.0d0) weight = 0.5d0
         write(*,*) ' weight value for born_PhSp= ', weight
         DeltaR_min = powheginput("#deltar")
         if(DeltaR_min.lt.0d0)  DeltaR_min = 0.1d0
         pte_min=1d0   !20 analysis
c     set initial- and final-state masses for Born and real
          do k=1,nlegreal
             kn_masses(k)=0
          enddo
          ini=.false.
          N1 = 1d0/(ph_WmWw)*(  atan((kn_sbeams - ph_Wmass2)/ph_WmWw)
     +                         -atan(( 0d0      - ph_Wmass2)/ph_WmWw))
          atanmin  = atan((0d0 - ph_Wmass2)/ph_WmWw)
      endif

      kn_jacborn = 1d0/kn_sbeams

c cth uniform probability distribution
c      cth=1d0-2*xborn(3)
c      kn_jacborn=kn_jacborn*2d0*2d0*pi
c      sth= sqrt( (1d0-cth)*(1d0+cth) )

      phi= 0d0
      cph= cos(phi)
      sph= sin(phi)

      w=sqrt(xborn(7))

      kn_jacborn=kn_jacborn*0.5d0/w

      if (w.lt.weight) then
c sampling s -> BW, mpart2 -> 1/mpart2 (FSR gamma by lepton)
c mpart2 = lepton+gamma

          s =  ph_Wmass2 + ph_WmWw*tan( N1*ph_WmWw*xborn(1) + atanmin )
 
          mpart2_min = 2d0*(1d0-Cos(DeltaR_min))* kn_ktmin*pte_min

          mpart2_max = s      
           
          Npart1 =log( mpart2_max / mpart2_min ) 
          mpart2 = exp(xborn(4)*Npart1)*mpart2_min

c cth -> as in Wj
          kn_jacborn=kn_jacborn*2d0*pi !azimuth phi
          kzed=(s-mpart2)/(2*sqrt(s))
          cthmax=sqrt(abs(1d0-(kn_ktmin/kzed)**2))
          if(cthmax.gt.1d0) then
c             kn_jacborn=0d0
c             return
             cthmax=1d0
          endif
          z=1d0-2*xborn(3)
          kn_jacborn=kn_jacborn*2d0
          cth=1.5d0*(z-z**3/3)
          kn_jacborn=kn_jacborn*1.5d0*(1-z**2)
          cth=cth*cthmax
          kn_born_pt2=(1-cth**2)*kzed**2
          kn_jacborn=kn_jacborn*cthmax
 
          call dphi2(s,mpart2,0d0,cth,phi,q1,q2,f123)

          phi12 = xborn(5)*2d0*pi
          cth12 = xborn(6)*2d0 - 1d0

          call dphi2(mpart2,0d0,0d0,cth12,phi12,q1s,q2s,f12)

          ! neutrino
          kn_cmpborn(:,3) = q2(:)

          ! lepton in the lepton-gamma rest frame
          call boost(q1s,q1,kn_cmpborn(:,4))

          ! gamma
          call boost(q2s,q1,kn_cmpborn(:,5))

          ! lepton-neutrino invariant mass  
          sp  = s - mpart2 - 2d0*dotp(kn_cmpborn(:,3),kn_cmpborn(:,5))
          
          NORM = N1*Npart1

c sampling sp -> BW, s -> 1/s
      else

          N2 = 1d0/(ph_WmWw)*(  atan((kn_sbeams - ph_Wmass2)/ph_WmWw)
     +                         -atan((0d0- ph_Wmass2)/ph_WmWw))

          sp = ph_Wmass2 + ph_WmWw*tan( N2*ph_WmWw*xborn(1) + atanmin )

          s_min=( sqrt(sp+kn_ktmin**2) + kn_ktmin )**2

          s_max = kn_sbeams

          Npart2 = log( s_max / s_min )

          s   = exp(xborn(4)**2*Npart2)*s_min

c cth -> as in Wj
          kn_jacborn=kn_jacborn*2d0*pi  !azimuth
          kzed=(s-sp)/(2*sqrt(s))
          cthmax=sqrt(abs(1d0-(kn_ktmin/kzed)**2))
          if(cthmax.gt.1d0) then
c             kn_jacborn=0d0
c             return
             cthmax=1d0
          endif
          z=1d0-2*xborn(3)
          kn_jacborn=kn_jacborn*2d0
          cth=1.5d0*(z-z**3/3)
          kn_jacborn=kn_jacborn*1.5d0*(1-z**2)
          cth=cth*cthmax
          kn_born_pt2=(1-cth**2)*kzed**2
          kn_jacborn=kn_jacborn*cthmax


          call dphi2(s,sp,0d0,cth,phi,q1,q2,f123)

          phi12 = xborn(5)*2d0*pi
          cth12 = xborn(6)*2d0 - 1d0

          call dphi2(sp,0d0,0d0,cth12,phi12,q1s,q2s,f12)

          ! gamma
          kn_cmpborn(:,5) = q2(:)

          ! lepton in the lepton-neutrino rest frame
          call boost(q1s,q1,kn_cmpborn(:,4))
          ! neutrino
          call boost(q2s,q1,kn_cmpborn(:,3))

          mpart2 = 2d0*dotp(kn_cmpborn(:,4),kn_cmpborn(:,5))
 
c          NORM = N2*Npart2
c as in Wj-PhSp
          NORM = N2*Npart2*2*xborn(4) 

      endif


      bw1 = 1d0/( (s-ph_Wmass2)**2 + ph_WmWw**2 )
      bw2 = 1d0/( (sp-ph_Wmass2)**2 + ph_WmWw**2 )

      distpart1 = 1d0/mpart2
      distpart2 = 1d0/s

      kn_jacborn = kn_jacborn * norm / (   weight*bw1*distpart1 
     +                            + (1d0-weight)*bw2*distpart2 ) 


      kn_jacborn = kn_jacborn * f12 * f123
     +                        *2d0*(2d0*pi)
     +                        *(2d0*pi)**4
     +                        /16d0/(2d0*pi)**9



      kn_sborn = s
      tau      = s/kn_sbeams
      y = -(1-2*xborn(2))*log(tau)/2d0
      kn_jacborn = -kn_jacborn*log(tau)

      kn_xb1 = sqrt(tau)*exp(y)
      kn_xb2 = tau/kn_xb1

      beta=(kn_xb1-kn_xb2)/(kn_xb1+kn_xb2)
      call mboost(nlegborn-2,vec,beta,kn_cmpborn(0,3),kn_pborn(0,3))

c initial state particles
      kn_cmpborn(0,1) =  sqrt(s)/2d0
      kn_cmpborn(1,1) =  0d0
      kn_cmpborn(2,1) =  0d0
      kn_cmpborn(3,1) =  kn_cmpborn(0,1)

      kn_cmpborn(0,2) =  kn_cmpborn(0,1)
      kn_cmpborn(1,2) =  0d0
      kn_cmpborn(2,2) =  0d0
      kn_cmpborn(3,2) = -kn_cmpborn(0,2)

      do mu=0,3
         kn_pborn(mu,1)=kn_xb1*kn_beams(mu,1)
         kn_pborn(mu,2)=kn_xb2*kn_beams(mu,2)
      enddo

      call checkmomzero(nlegborn,kn_pborn)
c      call checkmass(2,kn_pborn(0,3))

c minimal final state mass 
      kn_minmass=0d0

! kinematics not working
      ptot = abs(sum(kn_cmpborn(:,1)+kn_cmpborn(:,2)-
     +        kn_cmpborn(:,3)-kn_cmpborn(:,4)-
     +        kn_cmpborn(:,5)))
      if (ptot.gt.1d-7) then
          print*,'bornkin not working ', ptot
          kn_jacborn = 0d0
      endif

! cuts on pt of photon
      if (kn_cmpborn(1,5)**2+kn_cmpborn(2,5)**2.lt.kn_ktmin**2) then
          kn_jacborn = 0d0
      endif

! cuts DeltaR e^+/photon
      call get_pseudorap(kn_cmpborn(:,5),etagam)
      call get_pseudorap(kn_cmpborn(:,4),etae)
      deltaeta = etagam - etae
      deltaphi = dabs(atan2(kn_cmpborn(2,5),kn_cmpborn(1,5)) - 
     $        atan2(kn_cmpborn(2,4),kn_cmpborn(1,4)))
      deltaphi=min(deltaphi,2d0*pi-deltaphi)
 
      DeltaR = sqrt(deltaeta**2+deltaphi**2)
      if (DeltaR.lt.DeltaR_min) then
          kn_jacborn = 0d0
      endif

      end


c as in Wj
      subroutine born_suppression(fact)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      logical ini
      data ini/.true./
      real * 8 fact,pt2,pt2supp,powheginput,pt,dy,deta,dphi,dr
      save ini,pt2supp,pt    
c CAVEAT!!!  process dependent subroutine
      if (ini) then
         pt = powheginput("#ptsupp")
         if(pt.gt.0) then
            write(*,*) ' ******** WARNING: ptsupp is deprecated'
            write(*,*) ' ******** Replace it with bornsuppfact'
            call flush
            call exit(-1)
         else
            pt = powheginput("#bornsuppfact")
         endif
         ini = .false.
         pt2supp = pt**2
      endif
      if (pt.lt.0) then
         fact=1d0
      else         
c transverse momentum of gamma or parton
         pt2=kn_pborn(1,5)**2+kn_pborn(2,5)**2
c kt of gamma or parton relative to electron
         call getdydetadphidrkn(kn_pborn(:,4),kn_pborn(:,5),
     `        dy,deta,dphi,dr)
         fact=(1/pt2supp)/(1/pt2supp+1/(dr**2*pt2)+1/pt2)         
      endif
      end

      subroutine getyetaptmasskn(p,y,eta,pt,mass)
      implicit none
      real * 8 p(0:3),y,eta,pt,mass,pv
      real *8 tiny
      parameter (tiny=1.d-5)
      y=0.5d0*log((p(0)+p(3))/(p(0)-p(3)))
      pt=sqrt(p(1)**2+p(2)**2)
      pv=sqrt(pt**2+p(3)**2)
      if(pt.lt.tiny)then
         eta=sign(1.d0,p(3))*1.d8
      else
         eta=0.5d0*log((pv+p(3))/(pv-p(3)))
      endif
      mass=sqrt(abs(p(0)**2-pv**2))
      end

      subroutine getdydetadphidrkn(p1,p2,dy,deta,dphi,dr)
      implicit none
      include 'pwhg_math.h' 
      real * 8 p1(*),p2(*),dy,deta,dphi,dr
      real * 8 y1,eta1,pt1,mass1,phi1
      real * 8 y2,eta2,pt2,mass2,phi2
      call getyetaptmasskn(p1,y1,eta1,pt1,mass1)
      call getyetaptmasskn(p2,y2,eta2,pt2,mass2)
      dy=y1-y2
      deta=eta1-eta2
      phi1=atan2(p1(1),p1(2))
      phi2=atan2(p2(1),p2(2))
      dphi=abs(phi1-phi2)
      dphi=min(dphi,2d0*pi-dphi)
      dr=sqrt(deta**2+dphi**2)
      end


      subroutine set_fac_ren_scales(muf,mur)
      implicit none
      include 'PhysPars.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      real * 8 muf,mur
      logical ini
      data ini/.true./
      real *8 muref
      real *8 dotp
      external dotp
      logical runningscales
      save runningscales
      real * 8 pt2
      real * 8 powheginput
      external powheginput
      if(ini) then
         if(powheginput('#runningscale').eq.1) then
            runningscales=.true.
         else
            runningscales=.false.
         endif
      endif
      if (runningscales) then
         if (ini) then
            write(*,*) '*************************************'
            write(*,*) '    Factorization and renormalization '
            if (powheginput('#runningscale').eq.1) then
               write(*,*) '    scales set to the W virtuality ' 
            else 
               write(*,*) "runningscale value not allowed"
               call exit(1)
            endif
            write(*,*) '*************************************'
            ini=.false.
         endif
         muref=sqrt(2d0*dotp(kn_pborn(0,3),kn_pborn(0,4)))
       else
         if (ini) then
            write(*,*) '*************************************'
            write(*,*) '    Factorization and renormalization '
            write(*,*) '    scales set to the W mass '
            write(*,*) '*************************************'
            ini=.false.
         endif
         muref=ph_Wmass
      endif
      muf=muref
      mur=muref
      end


*
**
*
      subroutine dphi2(qi2,qj2,qk2,cthj,phij,qj,qk,flux)
*
      implicit none
      real*8 qj(0:3),qk(0:3)
      real*8 qi2,qj2,qk2,cthj,sthj,phij,flux
      real*8 cphij,sphij,qjm,qjm2
*
      sthj= sqrt( (1.d0-cthj)*(1d0+cthj) )
      cphij= cos(phij)
      sphij= sin(phij)
*
      qjm2= (qi2+qk2-qj2)*(qi2+qk2-qj2)/4.d0/qi2 - qk2

      qjm= sqrt(qjm2)
*
* momenta are calculated
*
      qj(0)= sqrt(qj2+qjm2)
      qj(1)= qjm*sthj*cphij
      qj(2)= qjm*sthj*sphij
      qj(3)= qjm*cthj
*
      qk(0)= sqrt(qk2+qj(1)*qj(1)+qj(2)*qj(2)+qj(3)*qj(3))
      qk(1)= -qj(1)
      qk(2)= -qj(2)
      qk(3)= -qj(3)
*
* flux is calculated
*
      flux= qjm/(qj(0)+qk(0))
*
      return
      end

*
* input:  qjs_0 ,qjs_x, qjs_y, qjs_z, qi_0, qi_1, qi_2, qi_3
* output: qj_0, qj_x, qj_y, qj_z, dj2
*
      subroutine boost(qjs,qi,qj)
*
      implicit real*8 (a-h,o-z)
      dimension qjs(0:3),qi(0:3),qj(0:3)
      dimension qjt(3),an(3),qjsl(3)
*
      qil= sqrt(qi(1)*qi(1)+qi(2)*qi(2)+qi(3)*qi(3))
*
      zero = 1.d-30
*
      if(qi(0).gt.zero.and.qil.gt.zero) then
         bi= qil/qi(0)
         if(bi.ge.1.d0) then
            gml = zero
         else
            gml= 1.d0/sqrt(1.d0-bi*bi)
         endif
      else
         bi = 0.d0
         gml = 1.d0
      endif
*
      if(abs(qil).lt.zero) then
         an(1)= 0.d0
         an(2)= 0.d0
         an(3)= 0.d0
      else
         an(1)= -qi(1)/qil
         an(2)= -qi(2)/qil
         an(3)= -qi(3)/qil
      endif
*
      qjslm= qjs(1)*an(1)+qjs(2)*an(2)+qjs(3)*an(3)
      qjsl(1)= qjslm*an(1)
      qjsl(2)= qjslm*an(2)
      qjsl(3)= qjslm*an(3)
      qjt(1)= qjs(1)-qjsl(1)
      qjt(2)= qjs(2)-qjsl(2)
      qjt(3)= qjs(3)-qjsl(3)
*
      qj(0)= gml*(qjs(0)-bi*qjslm)
      qjlm= gml*(-bi*qjs(0)+qjslm)
*
      qj(1)= qjlm*an(1)+qjt(1)
      qj(2)= qjlm*an(2)+qjt(2)
      qj(3)= qjlm*an(3)+qjt(3)
*
      return
      end
*
**
*
      subroutine rot(idir,vect,pin,pout)
! written by CMCC, last modified 9/10/2005
      implicit double precision (a-h,o-z)       
      double precision pin(0:3),pout(0:3),pp(0:3),r(3,3),
     >     vers(3),vect(0:3)
* This subroutine rotates the 4-vector pin in the frame where the z-axis is
* directed along the 4-vector vect(0,1,2,3). The rotated vector is stored
* in pout
* idir =  1 ---> direct rotation matrix
* idir = -1 ---> inverse rotation matrix
      pp(0) = pin(0)
      pp(1) = pin(1)
      pp(2) = pin(2)
      pp(3) = pin(3)

      vmo = 1.d0/sqrt(vect(1)**2+vect(2)**2+vect(3)**2)
      vers(1) = vect(1)*vmo
      vers(2) = vect(2)*vmo
      vers(3) = vect(3)*vmo
      vt = sqrt(vers(1)**2+vers(2)**2)

!   BUG - pointed out by CLEO people
!      v1ovt = vers(1)/vt
!      if (vt.eq.0.d0) v1ovt = 0.d0
!      v2ovt = vers(2)/vt
!      if (vt.eq.0.d0) v2ovt = 1.d0
 
      v1ovt = 0.d0
      v2ovt = 1.d0
      if (vt.gt.0.d0) then
         v1ovt = vers(1)/vt
         v2ovt = vers(2)/vt
      endif
      
      if (idir.eq.(-1)) then    !! INVERSE rotation matrix
         r(1,1) =  vers(3)*v1ovt
         r(1,2) = -v2ovt
         r(1,3) =  vers(1)      
         r(2,1) =  vers(3)*v2ovt
         r(2,2) =  v1ovt
         r(2,3) =  vers(2)
         r(3,1) = -vt
         r(3,2) =  0.d0
         r(3,3) =  vers(3)
      else  ! if (idir.eq.1) !! DIRECT rotation matrix
         r(1,1) =  vers(3)*v1ovt
         r(2,1) = -v2ovt
         r(3,1) =  vers(1)
         r(1,2) =  vers(3)*v2ovt
         r(2,2) =  v1ovt
         r(3,2) =  vers(2)
         r(1,3) = -vt
         r(2,3) =  0.d0
         r(3,3) =  vers(3)
      endif
      pout(0) = pp(0)
      pout(1) = r(1,1)*pp(1) + r(1,2)*pp(2) + r(1,3)*pp(3)
      pout(2) = r(2,1)*pp(1) + r(2,2)*pp(2) + r(2,3)*pp(3)
      pout(3) = r(3,1)*pp(1) + r(3,2)*pp(2) + r(3,3)*pp(3)
      return
      end
*
