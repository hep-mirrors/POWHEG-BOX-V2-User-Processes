cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cc The reshuffling based on CS-reshuffling
cc in the final-final-case for massive particles
cc use the same conventions as in the reshuffling above, but
cc of course do not change the PDF-factors
c naming-convention: particle 1 is the on-shell-particle which does NOT couple
c			              to the intermed. on-shell particle (here: the other  squark)
c			  particle 2 and 3: the two particles from the "decay" of the
c					   intermed. particle
c                    particle 4: an auxiliary-particle which represents the
c					  intermed. particles
	subroutine reshuffle_momenta_2(p,m1,m2,m3,m4,presh)
	implicit none
	include 'nlegborn.h'
	include 'pwhg_math.h'
	include 'pwhg_kn.h'
	include 'pwhg_flg.h'
	real*8 m1,m2,m3,m4,p(0:3,nlegreal)
	real*8 presh(0:3,nlegreal)
	integer i,j
	real*8 p1(0:3),p2(0:3),p3(0:3),p4(0:3)
	real*8 p2_rest(0:3),p3_rest(0:3)
	real*8 Q(0:3),ptw_ij(0:3),ptw_k(0:3)
	real*8 Q2,Qpk,prefac
	real*8 m23
	real*8 abs_p2_rest,cosTh2,phi2_x,pxy,phi3_x,cosTh3,abs_p3_rest
	real*8 beta_rest(1:3)
	real*8 lambda,dotp
      real*8 tiny1,tiny2
      parameter(tiny1=1d-8,tiny2=1d-5)
      external dotp,lambda
c copy of the momenta:
c we assume always that particle 2 and 3 correspond to 4 and nlegreal in the array p!
	do i=0,3
	  p1(i)=p(i,3)
	  p2(i)=p(i,4)
	  p3(i)=p(i,nlegreal)
	  p4(i)=p2(i)+p3(i) !aux. momentum
	enddo
	m23=m2**2+m3**2+2d0*dotp(p2,p3) !the invariant mass squared
c the CS-reshuffling for the 2->2-kinematic:
c see the CS-paper for massive dipoles, formulae 5.4...
c here, pk=p1, pi=p2,pj=p3; pij=p2+p3
	do i=0,3
	  Q(i)=p1(i)+p2(i)+p3(i)
	enddo
	Q2=m1**2+m2**2+m3**2+2d0*dotp(p1,p2)+2d0*dotp(p1,p3)+2d0*dotp(p2,p3)
	Qpk=dotp(Q,p1)

	if(dsqrt(Q2)-m1-m4.lt.0d0) then
	  write(*,*) 'Error in reshuffling-2-procedure: dsqrt(s)-m1-m4 = ',dsqrt(q2)-m1-m4,' for m1=',m1,', m4=',m4,', dsqrt(s)=',dsqrt(q2)
	  write(*,*) 'Forgotten Theta(dsqrt(q2)-m1-m4)?!'
	  call exit(-1)
	endif
	prefac=dsqrt(lambda(Q2,m4**2,m1**2))/dsqrt(lambda(Q2,m23,m1**2))

	
	do i=0,3
	  ptw_k(i)=prefac*(p1(i)-Qpk/Q2*Q(i))+(Q2+m1**2-m4**2)/(2d0*Q2)*Q(i)
	  ptw_ij(i)=Q(i)-ptw_k(i)
	  presh(i,3)=ptw_k(i)
	enddo

ccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c now the go to the rest-system of the resonant particle, using p4
	do i=1,3
	  beta_rest(i)=-p4(i)/p4(0)
	enddo
cccccccccccccccccccccccccccccccccccccccccccccccccccccc
c we have to keep the direction of ONE of the "resonant" particles fixed
c choose either the squark or the antiquark
	if (flg_keepdir.eq.2) then !keep the direction of the "resonant" squark
	  call boost(beta_rest,p2,p2_rest)

	  abs_p2_rest=dsqrt(p2_rest(1)**2+p2_rest(2)**2+p2_rest(3)**2)
c get the angular-info of this particle
        if(abs_p2_rest.lt.tiny1) then
           cosTh2=1d0
           phi2_x=0d0
	 else
          cosTh2=p2_rest(3)/abs_p2_rest
c change this definition here: use arccos and pi-terms to get angle,
c check with px and py
	   pxy=dsqrt(p2_rest(1)**2+p2_rest(2)**2)
	   if(abs(pxy).lt.tiny1) then
	     phi2_x=0d0
	   else
	     if(p2_rest(1).ge.0.and.p2_rest(2).ge.0) then
	       phi2_x=dacos(p2_rest(1)/pxy)
	     else if(p2_rest(1).ge.0.and.p2_rest(2).lt.0) then
	       phi2_x=2d0*pi-dacos(p2_rest(1)/pxy)
	     else if(p2_rest(1).lt.0.and.p2_rest(2).ge.0) then
	       phi2_x=pi-dacos(abs(p2_rest(1))/pxy)
	     else
	       phi2_x=pi+dacos(abs(p2_rest(1))/pxy)
	     endif
	   endif
        endif
      else if(flg_keepdir.eq.3) then !keep the direction of the "resonant" antiquark
	  call boost(beta_rest,p3,p3_rest)

	  abs_p3_rest=dsqrt(p3_rest(1)**2+p3_rest(2)**2+p3_rest(3)**2)
c get the angular-info of this particle
        if(abs_p3_rest.lt.tiny1) then
           cosTh3=1d0
           phi3_x=0d0
	 else
          cosTh3=p3_rest(3)/abs_p3_rest
c change this definition here: use arccos and pi-terms to get angle,
c check with px and py
	   pxy=dsqrt(p3_rest(1)**2+p3_rest(2)**2)
	   if(abs(pxy).lt.tiny1) then
	     phi3_x=0d0
	   else
	     if(p3_rest(1).ge.0.and.p3_rest(2).ge.0) then
	       phi3_x=dacos(p3_rest(1)/pxy)
	     else if(p3_rest(1).ge.0.and.p3_rest(2).lt.0) then
	       phi3_x=2d0*pi-dacos(p3_rest(1)/pxy)
	     else if(p3_rest(1).lt.0.and.p3_rest(2).ge.0) then
	       phi3_x=pi-dacos(abs(p3_rest(1))/pxy)
	     else
	       phi3_x=pi+dacos(abs(p3_rest(1))/pxy)
	     endif
	   endif
        endif
	else
	  write(*,*) 'Flg_keepdir in reshuffle-routine is not set to 2 or 3, stop!'
	  call exit(-1)
      endif

c now construct the new momenta of the particles in the rest-system:
c particle 2 and 3 in the rest-frame of part. 4 (see PDG2010, 40.15)
	p2_rest(0)=(m4**2-m3**2+m2**2)/2d0/m4
	p3_rest(0)=(m4**2+m3**2-m2**2)/2d0/m4
      ! check that E2+E3=m4, in this frame
      if(dabs((p2_rest(0)+p3_rest(0)) -m4).gt.tiny2) then
        write(*,*) 'Error  in gen_res_kin'
        call exit(-1)
      endif

c relation for on-shell-particle of mass m4 decaying
	if(flg_keepdir.eq.2) then !we keep the direction of the squark
	  abs_p2_rest=dsqrt((m4**2-(m2+m3)**2)*(m4**2-(m2-m3)**2))/(2d0*m4)
	  p2_rest(1)=abs_p2_rest*dsqrt(1d0-cosTh2**2)*dcos(phi2_x)
	  p2_rest(2)=abs_p2_rest*dsqrt(1d0-cosTh2**2)*dsin(phi2_x)
	  p2_rest(3)=abs_p2_rest*cosTh2
         do i=1,3
           p3_rest(i)=-p2_rest(i)
         enddo
       else if (flg_keepdir.eq.3) then !keep direciton of the antiquark:
	  abs_p3_rest=dsqrt((m4**2-(m2+m3)**2)*(m4**2-(m2-m3)**2))/(2d0*m4)
	  p3_rest(1)=abs_p3_rest*dsqrt(1d0-cosTh3**2)*dcos(phi3_x)
	  p3_rest(2)=abs_p3_rest*dsqrt(1d0-cosTh3**2)*dsin(phi3_x)
	  p3_rest(3)=abs_p3_rest*cosTh3
         do i=1,3
           p2_rest(i)=-p3_rest(i)
         enddo
       endif
c boost back:
      do i=1,3
         beta_rest(i)=ptw_ij(i)/ptw_ij(0) ! beta for boost back from restsystem
      enddo

c     part1, reshuffled: is ptw_k, see above
c     part2, reshuffled
      call boost(beta_rest,p2_rest,presh(0:3,4))
c     part3, reshuffled
      call boost(beta_rest,p3_rest,presh(0:3,nlegreal))

c IS-particles: no changes:
	do i=0,3
	   do j=1,2
		presh(i,j)=p(i,j)
	   enddo
	enddo
	end

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cc the Kallen-function
	function lambda(x,y,z)
	implicit none
	real*8 lambda,x,y,z
	lambda=x**2+y**2+z**2-2d0*x*y-2d0*x*z-2d0*y*z
	end

ccccccccccccccccccccccccccccccccccccccccccccccccccccc
c taken from single-top-case
c direction is pin-> appropiate for boost to rest-system!
      subroutine boost(beta,pin,pout)
      implicit none
      real * 8 beta(1:3),pin(0:3),pout(0:3)
      real * 8 vec(1:3),b,bsq,gamma,bdv,pin0
      integer j
c
      vec(1) = pin(1)
      vec(2) = pin(2)
      vec(3) = pin(3)
c beta value
      bsq = beta(1)**2+beta(2)**2+beta(3)**2
      b = sqrt(bsq)
      if (b**2.ge.1d0) then
         write(*,*) 'ERROR: boost vector has norm bigger than 1'
	   write(*,*) 'beta^2=',b**2
         write(*,*) 'RETURN 0'
         pout(0) = 0d0
         pout(1) = 0d0
         pout(2) = 0d0
         pout(3) = 0d0
         RETURN
      elseif (b.eq.0d0) then
         pout(0) = pin(0)
         pout(1) = pin(1)
         pout(2) = pin(2)
         pout(3) = pin(3)
         RETURN
      endif
      
      gamma = 1d0/sqrt(1d0-bsq)
c beta . vec
      bdv = beta(1)*vec(1)+beta(2)*vec(2)+beta(3)*vec(3)
c boost
      do j=1,3
         vec(j) = vec(j)+gamma*beta(j)/b*(bdv/b*(1-1/gamma)+b*pin(0))
c         vec(j) = gamma*beta(j)*pin(0) + vec(j) + 
c     #        beta(j)*bdv*(gamma-1d0)/vsq
      enddo
      pin0 = gamma*(pin(0)+bdv)
c return values
      pout(0) = pin0
      pout(1) = vec(1)
      pout(2) = vec(2)
      pout(3) = vec(3)
      end