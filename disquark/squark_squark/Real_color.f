c Color-structure for real processes
c for the meaning of the flags: see the subroutines for the color-flows!
c use this routine for colour-flows of remnants, too
	subroutine realcolour_lh
      implicit none
      include 'LesHouches.h'
	include 'nlegborn.h'
	include 'pwhg_flst.h'
	include 'pwhg_math.h'
	include 'pwhg_kn.h'
	include 'pwhg_flg.h'
	include 'sqsq_realqg.h'
	include 'PhysPars.h'
      integer igluon !use the PDG-codes!
	integer i,j,temp,sqsign
	integer flst(1:nlegreal)
      integer coltempqg(2,nlegreal,maxflow)!The qg-case (and via crossing qqbar): 4 flows
      parameter (igluon=21)
	real*8 p(0:3,nlegreal)
	real*8 jamp2(0:maxflow),crossfac
	logical caseqg

cc for cc-channels: exactly the same stuff-> only consider qg->sqsqqbar
	sqsign=1
	if(idup(3).lt.0) sqsign=-1

	do i=1,nlegreal
	  if(idup(i).ne.igluon) then
	   flst(i)=abs(idup(i))
	  else
	   flst(i)=0
	  endif
	enddo

	if(nup.eq.nlegborn) return !born-colour is already assigned!
	
cc set the gauge-flag
	gauge=flg_gauge

ccc the colorflows "for all processes
cc FLOW 1
	coltempqg(1,1,1)=503
	coltempqg(2,1,1)=0
	coltempqg(1,2,1)=501
	coltempqg(2,2,1)=503
	coltempqg(1,3,1)=501
	coltempqg(2,3,1)=0
	coltempqg(1,4,1)=502
	coltempqg(2,4,1)=0
	coltempqg(1,nlegreal,1)=0
	coltempqg(2,nlegreal,1)=502

cc FLOW 2
	coltempqg(1,1,2)=502
	coltempqg(2,1,2)=0
	coltempqg(1,2,2)=501
	coltempqg(2,2,2)=503
	coltempqg(1,3,2)=501
	coltempqg(2,3,2)=0
	coltempqg(1,4,2)=502
	coltempqg(2,4,2)=0
	coltempqg(1,nlegreal,2)=0
	coltempqg(2,nlegreal,2)=503

cc FLOW 3
	coltempqg(1,1,3)=503
	coltempqg(2,1,3)=0
	coltempqg(1,2,3)=502
	coltempqg(2,2,3)=503
	coltempqg(1,3,3)=501
	coltempqg(2,3,3)=0
	coltempqg(1,4,3)=502
	coltempqg(2,4,3)=0
	coltempqg(1,nlegreal,3)=0
	coltempqg(2,nlegreal,3)=501

cc FLOW 4
	coltempqg(1,1,4)=501
	coltempqg(2,1,4)=0
	coltempqg(1,2,4)=502
	coltempqg(2,2,4)=503
	coltempqg(1,3,4)=501
	coltempqg(2,3,4)=0
	coltempqg(1,4,4)=502
	coltempqg(2,4,4)=0
	coltempqg(1,nlegreal,4)=0
	coltempqg(2,nlegreal,4)=503

c get momenta from LHE-file, copy the masses:
	do i=1,nlegreal
	  p(0,i)=PUP(4,i)
	  p(1:3,i)=PUP(1:3,i)
	enddo

	caseqg=.true.
	crossfac=1d0
	jamp2(0)=4 !the default case is 4; otherwise: changed in MG-routine for gg

cc default-order of the masses
	msq1=kn_masses(3)
	msq2=kn_masses(4)
	mgo=par_mglu
ccc check which case we have and if we have to cross/switch anything to match
ccc the implemented routines
ccc this case should never occur for remnants
      if(flst(nlegreal).eq.0) then !only for qqbar: crossing...
	  if(.not.flg_btilde) then
	    write(*,*) 'When assigning Colour-Flows for remantns: found flst with gluon in FS, STOP!'
	    call exit(-1)
	  endif
	  caseqg=.false. !no need for OSS in case of qqbar...
cc make sure we have qqbar
	  crossfac=-1d0 !we cross 1 massless fermion-> additional minus-sign in the end
cc now cross the second quark with the FS-gluon
	  temp=flst(2)
	  flst(2)=flst(nlegreal)
	  flst(nlegreal)=-temp
	  call switchmom(p,p,2,nlegreal)
	  call switchcf(coltempqg,coltempqg,2,nlegreal)

cc and exchange color/anticolor for particles 2 and nlegreal
	  do i=1,4
	    temp=coltempqg(1,2,i)
	    coltempqg(1,2,i)=coltempqg(2,2,i)
	    coltempqg(2,2,i)=temp
	    temp=coltempqg(1,nlegreal,i)
	    coltempqg(1,nlegreal,i)=coltempqg(2,nlegreal,i)
	    coltempqg(2,nlegreal,i)=temp
	  enddo

cc the minus-signs from crossing
	  do i=0,3
          p(i,2)=-p(i,2)
          p(i,nlegreal)=-p(i,nlegreal)
	  enddo
	else if(flst(1).eq.0) then !for gq: switch momenta 1 and 2
	  call switchmom(p,p,1,2)
	  call switchcf(coltempqg,coltempqg,1,2)
	  temp=flst(1)
	  flst(1)=flst(2)
	  flst(2)=temp
	endif

cc for different flavour: make sure that part. 4 and nlegreal have identical flavour
	temp=(abs(flst(4))/pdgfac)
	if(abs(abs(flst(4))-temp*pdgfac).ne.abs(flst(nlegreal))) then
	  call switchmom(p,p,3,4)
	  msq1=kn_masses(4)
	  msq2=kn_masses(3)
	  flst(4)=idup(3)
	  flst(3)=idup(4)
	  call switchcf(coltempqg,coltempqg,3,4)
	endif

ccc now determine the jamp2 for qg, if necessary
ccc for btilde: simply call to comprealCF
	if(flg_btilde) then
	  call comprealCF(flst,p,jamp2,caseqg)
	else
	  call compCF_split(flst,p,jamp2)
	endif

ccc for crossing: apply minus sign if necessary (should not affect the remants)
	do j=1,4
	  jamp2(j)=crossfac*jamp2(j) 
	enddo

	call assign_realCF(jamp2,coltempqg)

c for antisq-antisq: simply exchange color and anti-color:
	if(sqsign.lt.0) then
	  do i=1,nlegreal
	    temp=icolup(2,i)
	    icolup(2,i)=icolup(1,i)
	    icolup(1,i)=temp
	  enddo
	endif
	END

ccccccccccccccccccccccccccccccccccccccccccc
cc switch some entries in a color-flow array
	subroutine switchcf(flowin,flowout,part1,part2)
	implicit none
	include 'nlegborn.h'
	integer part1,part2
	integer i,j,k
	integer flowin(2,1:nlegreal,maxflow),flowout(2,1:nlegreal,maxflow),
     .        flowtemp(2,1:nlegreal,maxflow)

	do i=1,2
	 do k=1,nlegreal 
	  do j=1,maxflow
	    if(k.eq.part1) then
	      flowtemp(i,k,j)=flowin(i,part2,j)
	    else if(k.eq.part2) then
	      flowtemp(i,k,j)=flowin(i,part1,j)
	    else
	      flowtemp(i,k,j)=flowin(i,k,j)
	    endif
	  enddo
	 enddo
	enddo

	do i=1,2
	  do k=1,nlegreal
	    do j=1,maxflow
	      flowout(i,k,j)=flowtemp(i,k,j)
	    enddo
	  enddo
	enddo
	end