c############### funcprocess.f #########################################
c basic routines mainly for Born_phsp.F
c last modified by Julien Baglio, 10/03/2015

c############### check_5conservation subroutine ########################
c check if 5 momentum conservation is fulfilled

      subroutine check_5conservation(p,nleg)
        implicit none
        
#include "nlegborn.h"

        integer nleg,i
        double precision p(0:3,nleg) ! momentum vectors
        double precision pi(0:3) ! sum of incoming momenta
        double precision pf(0:3) ! sum of outgoing momenta
        double precision eps ! rel. err.
        
        pi(:) = 0d0
        pf(:) = 0d0
        
        do i=1,2
          pi(:) = pi(:) + p(:,i)
        enddo
        
        do i=3,nleg
          pf(:) = pf(:) + p(:,i)
        enddo
        
        ! check up to double precision of incoming energy
        !eps = 1d-15*pi(0)
        eps = 1d-10*pi(0)

#ifdef DEBUGQ
        print*,"p1 = ", p(:,1)
        print*,"p2 = ", p(:,2)
        print*,"p3 = ", p(:,3)
        print*,"p4 = ", p(:,4)
        print*,"p5 = ", p(:,5)
        if(nleg .eq. 6) print*,"p6 = ", p(:,6)
        print*, "Sum p in  = ", pi(:)
        print*, "Sum p out = ", pf(:)
#endif

        if( (abs(pi(0) - pf(0)) .gt. abs(eps)) .or.
     &      (abs(pi(1) - pf(1)) .gt. abs(eps)) .or.
     &      (abs(pi(2) - pf(2)) .gt. abs(eps)) .or.
     &      (abs(pi(3) - pf(3)) .gt. abs(eps))) then
          print*, "Error: four momentum not conserved."
          print*,"p1 = ", p(:,1)
          print*,"p2 = ", p(:,2)
          print*,"p3 = ", p(:,3)
          print*,"p4 = ", p(:,4)
          print*,"p5 = ", p(:,5)
          if(nleg .eq. 6) print*,"p6 = ", p(:,6)
          print*, "Sum p in  = ", pi(:)
          print*, "Sum p out = ", pf(:)
          stop
        endif

      end

c############### end check_5conservation subroutine ####################



********************************************************
      subroutine boost_z(ecm,pcm,p4,p3)
********************************************************
c this subroutine performs a boost along the z direction
********************************************************
      implicit none
      double precision ecm,pcm,p4,p3
      double precision gamma,bgamma,E,Pp
      gamma=ecm
      bgamma=pcm
      E=p4
      Pp=p3
      p4=gamma*E+bgamma*Pp
      p3=gamma*Pp+bgamma*E 
      return
      end
********************************************************
      subroutine rotation_2(vz,st,ct,sp,cp,p1,p2,p3)
********************************************************
c this subroutine performs two rotations
********************************************************
      implicit none
      double precision st,ct,sp,cp,p1,p2,p3
      double precision p1s,p2s,p3s,vz
      p1s=p1
      p2s=p2
      p3s=p3
      p1=vz*(cp*(ct*p1s+st*p3s)-sp*p2s)
      p2=vz*(sp*(ct*p1s+st*p3s)+cp*p2s)
      p3=vz*(-st*p1s+ct*p3s)
      return
      end
********************************************************
      double precision function alam(m,m1,m2)
      implicit none
      double precision m,m1,m2
      double precision s,s1,s2
      double precision aux
      s=m**2
      s1=m1**2
      s2=m2**2
      aux=s**2+s1**2+s2**2-2*s*s1-2*s*s2-2*s1*s2
      if(aux.lt.0.d0)aux=0.d0	
      alam=dsqrt(aux)
      return
      end	
********************************************************


      function compmass(p)
      implicit none
      double precision p(0:3),compmass
      compmass = sqrt(abs(p(0)**2-p(1)**2-p(2)**2-p(3)**2))
      end


      subroutine gettransmass(m,p,mt)
      implicit none
      double precision m,p(0:3),mt
      mt=dsqrt(abs(m**2+p(1)**2+p(2)**2))
      end
