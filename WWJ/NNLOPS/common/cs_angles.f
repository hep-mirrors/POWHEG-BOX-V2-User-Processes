c---------- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
c-- this routine computes (theta*,phi*) angles in Collins-Soper frame.
c--   CS_frame is defined as:
c        z-axis: beam_p-beam_m, fixed direction (not direction of flight of V-boson)
c        q-axis: beam_p+beam_m
c     where both beams are boosted into V rest-frame.
c     Angles are measured to direction of p_pos
c     Subroutine correctly returns all four triginometric functions
c     which enables you to compute:
c        th*  \in [0,pi]
c        phi* \in [0,2*pi]

      subroutine CS_angles22(p_ele,p_pos,y_z,
     $     cos_theta,sin_theta,cos_phi,sin_phi)
c     Takes lepton momenta as input and computes the related Collins-Soper angles
c     in terms of trigonmetric functions
      implicit none
      real * 8 p_ele(4),p_pos(4),pZ(4),beam_p(4),beam_m(4),y_z
      real * 8 boosted_p_ele(4),boosted_p_pos(4),
     $     boosted_beam_p(4),boosted_beam_m(4)
      real * 8 cos_theta,sin_theta,cos_phi,sin_phi
      real * 8 z_axis(3),q_axis(3),direction(3)
      real * 8 proj_direction, sinsign
      real * 8 absvec
      beam_p=0d0
      beam_m=0d0
      beam_p(3)=1d0
      beam_p(4)=1d0
      beam_m(3)=-1d0
      beam_m(4)=1d0
      pz=p_ele+p_pos
c     print*, 'pz', pz(1:3)/absvec(pz(1:3))
c     First boost leptons and beam into the Z CM
      if (pz(1)**2+pz(2)**2+pz(3)**2 .ne. 0d0) then
         call lab_to_CM(pZ,p_ele,boosted_p_ele)
         call lab_to_CM(pZ,p_pos,boosted_p_pos)
         call lab_to_CM(pZ,beam_p,boosted_beam_p)
         call lab_to_CM(pZ,beam_m,boosted_beam_m)
c     Now normalise beam three momentum
         beam_p(1:3)=boosted_beam_p(1:3)/absvec(boosted_beam_p(1:3))
         beam_m(1:3)=boosted_beam_m(1:3)/absvec(boosted_beam_m(1:3))
      endif

c     And compute the z prime axis and q axis as defined by Collins and Soper
      z_axis=(beam_p(1:3)-beam_m(1:3))/absvec(beam_p(1:3)-beam_m(1:3))
      q_axis=-(beam_p(1:3)+beam_m(1:3))/absvec(beam_p(1:3)+beam_m(1:3))

c     Now we can compute sine and cosine of the two angles
      cos_theta=dot_product(boosted_p_pos(1:3),z_axis)
     $     / absvec(boosted_p_pos(1:3))
      sin_theta=sqrt(abs(1d0-cos_theta**2d0))
      cos_phi=dot_product(boosted_p_pos(1:3),q_axis)
     $     / (sin_theta*absvec(boosted_p_pos(1:3)))

      call cross_product(q_axis,boosted_p_pos(1:3),direction)
      proj_direction=dot_product(direction,z_axis)
      if(proj_direction.ge.0d0) then
         sinsign=1d0
      else
         sinsign=-1d0
      endif

      sin_phi=sqrt(abs(1d0-cos_phi**2d0))*sinsign

c     make sure that trigonometric functions sin,cos are in [-1,1]
      if(abs(sin_phi).gt.1d0.or.abs(cos_phi).gt.1d0.or.
     $     abs(sin_theta).gt.1d0.or.abs(cos_theta).gt.1d0) then
         write(*,*) 'Numerical violation in CS-routine!'
         write(*,*) sin_phi,cos_phi,sin_theta,cos_theta
         if(sin_phi.gt.1d0) sin_phi=1d0
         if(sin_phi.lt.-1d0) sin_phi=-1d0
         if(cos_phi.gt.1d0) cos_phi=1d0
         if(cos_phi.lt.-1d0) cos_phi=-1d0
         if(sin_theta.gt.1d0) sin_theta=1d0
         if(sin_theta.lt.-1d0) sin_theta=-1d0
         if(cos_theta.gt.1d0) cos_theta=1d0
         if(cos_theta.lt.-1d0) cos_theta=-1d0
      endif

      end

c---------- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      subroutine cross_product(aa,bb,cc)
      implicit none

      real*8 aa(3),bb(3)
      real*8 cc(3)

      cc(1) = aa(2)*bb(3) - aa(3)*bb(2)
      cc(2) = aa(3)*bb(1) - aa(1)*bb(3)
      cc(3) = aa(1)*bb(2) - aa(2)*bb(1)

      end subroutine

c=======================================================================
c=======================================================================
c===--- Additional functions:
c=======================================================================
c=======================================================================
c----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      function getcosth(pp)
      real*8 pp(4), getcosth

      getcosth=pp(3)
     $     /sqrt(pp(1)**2 + pp(2)**2 + pp(3)**2)

      return
      end function

c----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      function dot3_product(aa,bb)
      real*8 aa(3), bb(3)
      real*8 dot3_product

      dot3_product = aa(1)*bb(1) + aa(2)*bb(2) + aa(3)*bb(3)

      end function

c----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      function norm3(aa)
      real*8 aa(3)
      real*8 norm3

      norm3 = aa(1)**2 + aa(2)**2 + aa(3)**2

      end function

c----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      subroutine lab_to_CM(CM,p1,p_out) !CM is the CM frame                                                                                                                                                                     
      real * 8 CM(4),p1(4),beta(3),beta2, gamma, dummy(4),p_out(4)
      integer i,j
      
      beta2=0.0 
      do i=1, 3
         beta(i)=CM(i)/CM(4)  !Relatvistisc beta
         beta2=beta2+beta(i)**2 !Beta squared 

      end do
      gamma=1/sqrt(1-beta2)     !Gamma factor
!     !Here we boost to the CM frame
      dummy(4)=gamma*p1(4)
      do i=1,3
         dummy(4)=dummy(4)-gamma*beta(i)*p1(i)
         dummy(i)=p1(i)-gamma*beta(i)*p1(4)
      end do
      do i=1,3
         do j=1,3
            dummy(i)=dummy(i)+(gamma-1)*beta(i)*beta(j)*p1(j)/beta2
         end do
      end do
      do i=1, 4
         p_out(i)=dummy(i)
      end do
      end

c----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      subroutine getyetaptmass(p,y,eta,pt,mass)
      implicit none
      real * 8 p(4),y,eta,pt,mass,pv
      real *8 tiny
      parameter (tiny=1.d-5)
      !y=0.5d0*log((p(4)+p(3))/(p(4)-p(3)))
      call pwhg_getrapidity(p,y)
      pt=sqrt(p(1)**2+p(2)**2)
      pv=sqrt(pt**2+p(3)**2)
      if(pt.lt.tiny)then
         eta=sign(1.d0,p(3))*1.d8
      else
         eta=0.5d0*log((pv+p(3))/(pv-p(3)))
      endif
      mass=sqrt(abs(p(4)**2-pv**2))
      end

c----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
      function absvec(vv)

      real*8 absvec,vv(3)

      absvec=sqrt(vv(1)*vv(1) + vv(2)*vv(2) + vv(3)*vv(3))

      end function

