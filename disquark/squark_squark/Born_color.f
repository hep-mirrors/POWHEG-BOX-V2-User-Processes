ccc flag_btilde is only important if we have flg_split!=0-> either btilde or "split" regular event!!
ccc flag_res45 is only relvant if we have a same-flavour-event AND flg_btilde is false (and flg_split is set)
      subroutine finalize_lh
      implicit none
	include 'pwhg_flg.h'
	include 'nlegborn.h'
	include 'LesHouches.h'
	include 'pwhg_st.h'
ccc for LO event generation: use the ren. scale as scalup
	if (flg_LOevents) scalup=dsqrt(st_muren2)
	if(nlegreal.ne.NUP) return !!only for reals!!

      if((flg_split.ne.0.and.(.not.flg_btilde)).or.flg_ownRCF) call sqdecay_realcol
      END

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
	real*8 mglu,t,u
	integer i,j,tempcol
	real*8 oneN
	integer choice
	integer coflow(2,2,nlegborn) !same as icolup-array; first index is flow-number: 1-> color, 2-> anticolor; nlegborn particles
	real*8 propu,propt,normal,chooseCF1
	integer chir1,chir2,fla1,fla2

	chir1=abs(idup(3)/pdgfac) !use here the absolute values-> suited for sq~sq~-case; in the end: switch color/anticolor if sq~sq~ 
      chir2=abs(idup(4)/pdgfac) !integer-division
      fla1=abs(idup(3))-chir1*pdgfac
      fla2=abs(idup(4))-chir2*pdgfac

	mglu=par_mglu

	Rnumber = random()

ccc  first define the two possible color-flows:
	do i=1,nlegborn
	  coflow(1,2,i)=0 !anticolor only for cc process, in the end simpliy switch enries
	  coflow(2,2,i)=0
	enddo

	coflow(1,1,1)=collabel+1 !CF1
	coflow(1,1,2)=collabel+2
	coflow(1,1,3)=collabel+1
	coflow(1,1,4)=collabel+2

	coflow(2,1,1)=collabel+1 !CF2
	coflow(2,1,2)=collabel+2
	coflow(2,1,3)=collabel+2
	coflow(2,1,4)=collabel+1

	choice=99 !is in the following set to 1 or 2; if 99 at the end: error!
	oneN=0d0 !the 1/Nc-factor
	if(flg_colsupp) oneN=1d0/3d0

c     t is always connected to particle 1 and 3, whereas u combines 2 and 4!
	t=kn_masses(3)**2-2d0*dotp(kn_cmpborn(0:3,1),kn_cmpborn(0:3,3))
	u=kn_masses(4)**2-2d0*dotp(kn_cmpborn(0:3,1),kn_cmpborn(0:3,4))

cccc first the same-flavour-case
	if(fla1.eq.fla2) then
	  propt=1d0/(t-mglu**2)
	  propu=1d0/(u-mglu**2)
	  if(chir1.eq.chir2) then
	    normal=(1d0+oneN**2)*(propt**2+propu**2)-4d0*oneN*propu*propt
	    chooseCF1=oneN**2*propt**2+propu**2-2d0*oneN*propu*propt !the contrib. of CF1
	  else
	    normal=(1d0+oneN**2)*(propt**2+propu**2)
	    chooseCF1=oneN**2*propt**2+propu**2
	  endif

	  if(Rnumber.le.chooseCF1/normal) then
	   choice=1
	  else
	   choice=2
	  endif	
ccc now the different-flavour-case:
	else
	  if(flg_colsupp) then 
	    if(fla1.eq.abs(idup(1))) then !the ud_uldl/r
		choice=1 !prefered option is CF2!!!!
		if(Rnumber.le.0.9d0) choice=2 !leading to subleading is simply the ratio 1/9
	    else
		choice=2
		if(Rnumber.le.0.9d0) choice=1 !for du_uldl/r, the prefered CF is CF1
	    endif
	  else !just the leading-color-terms
	    choice=1 !the ud_dlul/r case
	    if(abs(idup(1)).eq.fla1) choice=2
	  endif  
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

c so far we have only sqsq, if we have sq~sq~: just switch icolup(1,i) and icolup(2,i), so "color and anticolor"
	if(idup(3).lt.0) then
	  do i=1,nlegborn
	    tempcol=icolup(1,i)
	    icolup(1,i)=icolup(2,i)
	    icolup(2,i)=tempcol
	  enddo
	endif

cccc now add the colour for the decays:
	if(flg_decay) then
	  call sqdecay_borncol(3,par_decchan1)
	  call sqdecay_borncol(4,par_decchan2)
	endif
	end