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

