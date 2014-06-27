	subroutine finalize_lh
	implicit none
	include 'pwhg_flg.h'
	include 'LesHouches.h'
	include 'nlegborn.h' 
	include 'pwhg_st.h'
ccc for LO event generation: use the ren. scale as scalup
	if (flg_LOevents) scalup=dsqrt(st_muren2)
	if(nlegreal.ne.NUP) return !!only for reals!!

c call "own" color-flow-routines if either we consider the "remnant" term for split!=0
c or if explicitly desired
cc NEW:
      if((flg_split.ne.0.and.(.not.flg_btilde)).or.flg_ownRCF) call sqdecay_realcol
	end

c COLOR-STRUCTUR FOR LHE_file
	subroutine borncolour_lh
c Sets up the colour for the given flavour configuration
c already filled in the Les Houches interface, i.e. use kinematics from the Les-Houches-output
	implicit none
	include 'LesHouches.h'
	include 'nlegborn.h'
	include 'pwhg_kn.h'
	include 'pwhg_math.h'
	include 'PhysPars.h'
	include 'pwhg_flg.h'
	integer collabel
	parameter(collabel=500)
	real*8 dotp,Rnumber
	real*8 random
	external dotp
	external random
	real*8 mglu,s,t,u,T1
	real*8 M1,M2,M3,M4,M12,M13,M14,M24,M34
	real*8 mass(1:nlegborn),p(0:3,1:nlegborn)
	integer i,j,tempcol
	real*8 oneN
	integer choice
	integer coflow(2,2,nlegborn) !same as icolup-array; first index is flow-number: 1-> color, 2-> anticolor; nlegborn particles
			      ! make sure to use a consistent numbering for the Mandelstam-invariants!!
	real*8 normal,flow1,flow2
	integer chir1,chir2,fla1,fla2
	common/debug_colorflows/flow1,flow2

	mglu=par_mglu

c copy of mass/momenta
	do i=1,nlegborn
	  mass(i)=kn_masses(i)
	  do j=0,3
	    p(j,i)=kn_cmpborn(j,i)
	  enddo
	enddo
	
	chir1=abs(idup(3)/pdgfac) !use here the absolute values
      chir2=abs(idup(4)/pdgfac) !integer-division
      fla1=abs(idup(3))-chir1*pdgfac
      fla2=abs(idup(4))-chir2*pdgfac

	Rnumber = random()

	choice=99 !is in the following set to 1 or 2; if 99 at the end. error!
	oneN=0d0 !the 1/Nc-factor
	if(flg_colsupp) oneN=1d0/3d0

	do i=1,nlegborn
	  coflow(1,1,i)=0 
	  coflow(2,1,i)=0
	  coflow(1,2,i)=0 
	  coflow(2,2,i)=0
	enddo

c Mandelstam:
 	s=kn_sborn
cc note: the sq antisq formulae are for the order p1-> sq, p2->sqbar
cc       if the other way around: switch t and u
	if(idup(1).lt.0) then
  	  u=-2d0*dotp(p(0:3,1),p(0:3,3))+mass(3)**2
	  t=-2d0*dotp(p(0:3,1),p(0:3,4))+mass(4)**2      
	else !normal order
	  t=-2d0*dotp(p(0:3,1),p(0:3,3))+mass(3)**2
	  u=-2d0*dotp(p(0:3,1),p(0:3,4))+mass(4)**2
	endif

ccccc FIRST CONSIDER q qbar channel:
	if(idup(1).ne.21) then 
ccc  first define the two possible color-flows:
	  coflow(1,1,1)=collabel+1 !CF1
	  coflow(1,2,2)=collabel+2
	  coflow(1,1,3)=collabel+1
	  coflow(1,2,4)=collabel+2

	  coflow(2,1,1)=collabel+1 !CF2
	  coflow(2,2,2)=collabel+1
	  coflow(2,1,3)=collabel+2
	  coflow(2,2,4)=collabel+2

cc in most cases: t-channel-> flow2 is preferred
	  flow1=oneN**2
	  flow2=1d0
cccc first the same-flavour-case for qqbar with same chirality-> the only non-trivial one
	  if(abs(idup(1)).eq.abs(idup(2))) then
	   if(abs(idup(1)).eq.fla1.and.chir1.eq.chir2) then
          T1=8d0*(u*t-kn_masses(3)**2*kn_masses(4)**2)
	    flow1=T1/s**2-oneN*T1/s/(t-mglu**2)+oneN**2/2d0*T1/(t-mglu**2)**2
	    flow2=T1/2d0/(t-mglu**2)**2-oneN*T1/s/(t-mglu**2)+oneN**2*T1/s**2
	   else if(abs(idup(1)).ne.fla1.and.chir1.eq.chir2) then !diff. Flavour in IS/FS
	    flow1=1d0
	    flow2=oneN**2
	   endif
	  endif
cccccc NEXT the gg-case
	else
	  coflow(1,1,1)=501!CF1
	  coflow(1,2,1)=502
	  coflow(1,1,2)=502
	  coflow(1,2,2)=503
	  coflow(1,1,3)=501
	  coflow(1,2,4)=503

	  coflow(2,1,1)=501!CF2
	  coflow(2,2,1)=502
	  coflow(2,1,2)=503
	  coflow(2,2,2)=501
	  coflow(2,1,3)=503
	  coflow(2,2,4)=502

ccc 1-> s-channel, 2->t-channel, 3-> u-channel, 4-> 4-vertex, see the compborn-routine
	  M1=(2d0*(u-t)**2+4d0*s*(4d0*kn_masses(3)**2-s))
	  M2=4d0*(t+kn_masses(3)**2)**2
	  M3=4d0*(u+kn_masses(3)**2)**2
	  M4=4d0

!interference-contributions (factor 2 not yet applied!!)
	  M12=-(4d0*kn_masses(3)**4+2d0*kn_masses(3)**2*(t-u)-5d0/2d0*t**2
     .       -u*t-u**2/2d0)
	  M13=(4d0*kn_masses(3)**4+2d0*kn_masses(3)**2*(u-t)-5d0/2d0*u**2
     .       -t*u-t**2/2d0)
	  M14=3d0*(u-t) !Assumed that a factor i has been absorbed from 
!                                 the color-factor; as usually factor 2 NOT included
	  M24=-(4d0*kn_masses(3)**2+4d0*t-s)/2d0
	  M34=-(4d0*kn_masses(3)**2+4d0*u-s)/2d0
	

ccc rather simple, only amp1 has a sign-change when going to CF2...
ccc and we have to multiply the ggg vertex with -I 
ccc -> we thus get for flow 1 a factor -1 for M1*(M2+M4) (recall: M12 is calculated with 
ccc    a multiplied factor I) and a factor (-1)^2 for flow 2
	  flow1 = M1/s**2 + M2/(t-kn_masses(3)**2)**2
     .              + M4 + 2d0*(-M12/s/(t-kn_masses(3)**2) 
     .              -      M14/s
     .              +      M24/(t-kn_masses(3)**2)) 
	  flow2 = M1/s**2 + M3/(u-kn_masses(3)**2)**2
     .              + M4 + 2d0*(M13/s/(u-kn_masses(3)**2) 
     .              +      M14/s
     .              +      M34/(u-kn_masses(3)**2))

	endif
	normal=flow1+flow2

	if(Rnumber.le.flow1/normal) then
	  choice=1
	else
	  choice=2
	endif	

	if(choice.eq.99) then
	  write(*,*) 'Error in assignment of Born-CF: no color-flow found for ',idup(1:4)
	  call exit(-1)
	endif
	
cc copy the chosen Color-flow to the icolup-array
	do i=1,2
	  do j=1,nlegborn
	    icolup(i,j)=coflow(choice,i,j)
	  enddo
	enddo

cc for qbar-q: we have to conjugate the results, ie switch quarks in the IS:
	if(idup(1).lt.0) then !the qbar q-case:
	  do i=1,2
	    tempcol=icolup(i,1)
	    icolup(i,1)=icolup(i,2)
	    icolup(i,2)=tempcol
	  enddo
	endif

cccc now add the colour for the decays:
	if(flg_decay) then
	  call sqdecay_borncol(3,par_decchan1)
	  call sqdecay_borncol(4,par_decchan2)
	endif
	end