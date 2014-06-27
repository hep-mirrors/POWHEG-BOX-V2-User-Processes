ccc phase-space for 1->2 decay with massive particles
ccc call with any momentum p, and 2 random-numbers;
ccc routine will generate momenta in the rest-frame, and boost back to 
ccc normal frame using pin
ccc moreover, the jacobian is returned
	subroutine oneto2_phasespace(pin,Mdec,mass1,mass2,xx,pout1,pout2,jaco)
	implicit none
	real*8 Mdec,mass1,mass2,xx(1:2) 
	real*8 pin(0:3),pout1(0:3),pout2(0:3)
	real*8 absP,beta,dirvec(1:3),jaco
	integer i
	logical ini
	data ini/.true./
	save ini

	absP=dsqrt(pin(1)**2+pin(2)**2+pin(3)**2)
	beta=absP/pin(0)

ccccc Get momenta, here: no virtuality allowed-> 
ccccc                    do not reshuffle other momenta
	call getmom_1to2(pout1(1:3),Mdec,mass1,mass2,xx,jaco)
	do i=1,3
	  pout2(i)=-pout1(i) !in the rest-frame of the decaying particle!
	enddo
	pout1(0)=dsqrt(pout1(1)**2+pout1(2)**2+pout1(3)**2+ mass1**2 ) 
	pout2(0)=dsqrt(pout2(1)**2+pout2(2)**2+pout2(3)**2+ mass2**2 )

	if(beta.eq.0) then
	  if(ini) then
	    write(*,*),'Warning in 1to2phasespace: beta=0 -> '
	    write(*,*),'Initial vector in rest-system, do not boost'
	    ini=.false.
	  endif
	  return
	endif

	do i=1,3
	  dirvec(i)=pin(i)/absP !boost-direction
	enddo

cccccc boost back to lab-frame:
	call mboost(1,dirvec,beta,pout1(0:3),pout1(0:3))
	call mboost(1,dirvec,beta,pout2(0:3),pout2(0:3))
	end

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cc help-routine for decay 1to2 
	subroutine getmom_1to2(p,Mdec,m1,m2,xx,jaco) 
	implicit none
	include 'pwhg_math.h'
	real*8 p(1:3),Phi,Mdec,m1,m2,absP,cosTheta
	real*8 xx(1:2),jaco

	Phi=2.d0*Pi*xx(1)
	cosTheta=2.d0*xx(2)-1.d0

	if(m2.eq.0d0) then
	  absP=(Mdec**2-m1**2)/(2d0*MDec)
	else if(m1.eq.0d0) then
	  absP=(Mdec**2-m2**2)/(2d0*MDec)
	else
! ! ! see formula in PDG-booklet 2012, (43.16)
	  absP=dsqrt((Mdec**2-(m1+m2)**2)*(Mdec**2-(m1-m2)**2))/2d0/Mdec
	endif

	p(1)=absP*dsqrt(1.d0-cosTheta**2)*dcos(Phi)
	p(2)=absP*dsqrt(1.d0-cosTheta**2)*dsin(Phi)
	p(3)=absP*cosTheta

!see PDG-booklet 2012, (43.17)
! factor 4Pi for mapping on unit cube!
	jaco=absP/(32d0*Pi**2*Mdec**2)*4d0*pi
	end