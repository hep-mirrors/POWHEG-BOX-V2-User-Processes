c Color-structure for real processes
c for the meaning of the flags: see the subroutines for the color-flows!
	subroutine realcolour_lh
      implicit none
      include 'LesHouches.h'
	include 'nlegborn.h'
	include 'pwhg_flst.h'
	include 'pwhg_math.h'
	include 'pwhg_kn.h' 
	include 'pwhg_flg.h'
	include 'sqantisq_realqg.h'
      integer igluon !use the PDG-codes!
	integer i,j,temp
	integer flst(1:nlegreal)
      integer coltempgg(2,nlegreal,maxflow),!The gg-case: 6 flows
     &        coltempqg(2,nlegreal,maxflow)!The qg-case (and via crossing qqbar): 4 flows
      parameter (igluon=21)
	real*8 p(0:3,nlegreal)
	real*8 pMG(0:3,5)
	real*8 amp2,jamp2(0:maxflow),crossfac
	logical casegg,caseqg

	do i=1,nlegreal
	  if(idup(i).ne.igluon) then
	   flst(i)=idup(i)
	  else
	   flst(i)=0
	  endif
	enddo

	if(nup.eq.nlegborn) return !born-colour is already assigned!

ccc the colorflows for the gg case
ccc these are not affected by crossing,...-> can be hardcoded
      DATA (coltempgg(1,I,1),I=1, 4)/501,502,501,  0/
      DATA (coltempgg(2,I,1),I=1, 4)/502,503,  0,504/
	coltempgg(1,nlegreal,1)=504
	coltempgg(2,nlegreal,1)=503
      DATA (coltempgg(1,I,2),I=1, 4)/501,504,501,  0/
      DATA (coltempgg(2,I,2),I=1, 4)/502,503,  0,503/
	coltempgg(1,nlegreal,2)=504
	coltempgg(2,nlegreal,2)=502
      DATA (coltempgg(1,I,3),I=1, 4)/503,501,501,  0/
      DATA (coltempgg(2,I,3),I=1, 4)/502,503,  0,504/
	coltempgg(1,nlegreal,3)=504
	coltempgg(2,nlegreal,3)=502
      DATA (coltempgg(1,I,4),I=1, 4)/504,501,501,  0/
      DATA (coltempgg(2,I,4),I=1, 4)/502,503,  0,502/
	coltempgg(1,nlegreal,4)=504
	coltempgg(2,nlegreal,4)=503
      DATA (coltempgg(1,I,5),I=1, 4)/504,502,501,  0/
      DATA (coltempgg(2,I,5),I=1, 4)/502,503,  0,503/
	coltempgg(1,nlegreal,5)=504
	coltempgg(2,nlegreal,5)=501
      DATA (coltempgg(1,I,6),I=1, 4)/503,504,501,  0/
      DATA (coltempgg(2,I,6),I=1, 4)/502,503,  0,502/
	coltempgg(1,nlegreal,6)=504
	coltempgg(2,nlegreal,6)=501

ccc the colorflows "for all other cases"
cc FLOW 1
	coltempqg(1,1,1)=503
	coltempqg(2,1,1)=0
	coltempqg(1,2,1)=501
	coltempqg(2,2,1)=503
	coltempqg(1,3,1)=501
	coltempqg(2,3,1)=0
	coltempqg(1,4,1)=0
	coltempqg(2,4,1)=502
	coltempqg(1,nlegreal,1)=502
	coltempqg(2,nlegreal,1)=0

cc FLOW 2
	coltempqg(1,1,2)=502
	coltempqg(2,1,2)=0
	coltempqg(1,2,2)=501
	coltempqg(2,2,2)=503
	coltempqg(1,3,2)=501
	coltempqg(2,3,2)=0
	coltempqg(1,4,2)=0
	coltempqg(2,4,2)=503
	coltempqg(1,nlegreal,2)=502
	coltempqg(2,nlegreal,2)=0

cc FLOW 3
	coltempqg(1,1,3)=503
	coltempqg(2,1,3)=0
	coltempqg(1,2,3)=502
	coltempqg(2,2,3)=503
	coltempqg(1,3,3)=501
	coltempqg(2,3,3)=0
	coltempqg(1,4,3)=0
	coltempqg(2,4,3)=501
	coltempqg(1,nlegreal,3)=502
	coltempqg(2,nlegreal,3)=0

cc FLOW 4
	coltempqg(1,1,4)=501
	coltempqg(2,1,4)=0
	coltempqg(1,2,4)=502
	coltempqg(2,2,4)=503
	coltempqg(1,3,4)=501
	coltempqg(2,3,4)=0
	coltempqg(1,4,4)=0
	coltempqg(2,4,4)=503
	coltempqg(1,nlegreal,4)=502
	coltempqg(2,nlegreal,4)=0

c get momenta from LHE-file, copy the masses:
	do i=1,nlegreal
	  p(0,i)=PUP(4,i)
	  p(1:3,i)=PUP(1:3,i)
	enddo
	
	msq1=kn_masses(3)
	msq2=kn_masses(4)

	casegg=.false.
	caseqg=.true.
	crossfac=1d0
	jamp2(0)=4 !the default case is 4; otherwise: changed in MG-routine for gg

ccc check which case we have and if we have to cross/switch anything to match
ccc the implemented routines
	if(flst(1).eq.flst(2)) then !only for both eq. to 0 possible
	  do i=0,3
	    do j=1,4
	     pMG(i,j)=p(i,j)
	    enddo
	    pMG(i,5)=p(i,nlegreal)
	  enddo
	  call Sgg_sqsqbarg(pMG,amp2,jamp2)
	  casegg=.true.
	else if(flst(nlegreal).eq.0) then !only for qqbar: crossing...
	  caseqg=.false. !no need for OSS in case of qqbar...
cc make sure we have qqbar
	  crossfac=-1d0 !we cross 1 massless fermion-> additional minus-sign in the end
	  if(flst(1).lt.0) then !qbar q
	   call switchmom(p,p,1,2)
	   call switchcf(coltempqg,coltempqg,1,2) !switch the two color-flows
	   flst(1)=idup(2)
	   flst(2)=idup(1)
	   call switchcf(coltempqg,coltempqg,1,nlegreal) !cross the first particle to FS
	   do i=1,4
	    temp=coltempqg(1,1,i)
	    coltempqg(1,1,i)=coltempqg(2,1,i)
	    coltempqg(2,1,i)=temp
	   enddo
	  else
	   call switchcf(coltempqg,coltempqg,2,nlegreal)
	   do i=1,4
	    temp=coltempqg(1,2,i)
	    coltempqg(1,2,i)=coltempqg(2,2,i)
	    coltempqg(2,2,i)=temp
	   enddo
	  endif
cc now cross the second quark with the FS-gluon
	  temp=flst(2)
	  flst(2)=flst(nlegreal)
	  flst(nlegreal)=-temp
	  call switchmom(p,p,2,nlegreal)
cc and exchange color/anticolor for particles 2 and nlegreal
	  do i=1,4
	    temp=coltempqg(1,nlegreal,i)
	    coltempqg(1,nlegreal,i)=coltempqg(2,nlegreal,i)
	    coltempqg(2,nlegreal,i)=temp
	  enddo
cc the minus-signs from crossing
	  do i=0,3
          p(i,2)=-p(i,2)
          p(i,nlegreal)=-p(i,nlegreal)
	  enddo
	else if(flst(1)+flst(2).lt.0) then !the case of qbar g
cc form the cc process: switch particles 3 and 4
	  call switchmom(p,p,3,4)
	  msq1=kn_masses(4)
	  msq2=kn_masses(3)
	  call switchcf(coltempqg,coltempqg,3,4)
cc in the CFs: change color and anticolour
	  do i=1,nlegreal
	    do j=1,4
	      temp=coltempqg(1,i,j)
	      coltempqg(1,i,j)=coltempqg(2,i,j)
	      coltempqg(2,i,j)=temp
	    enddo
	  enddo
! ! 	  mass(4)=kn_masses(3)
! ! 	  mass(3)=kn_masses(4)
	  flst(4)=-idup(3)
	  flst(3)=-idup(4)
	  if(idup(1).ne.21) flst(1)=-idup(1)
	  if(idup(2).ne.21) flst(2)=-idup(2) 
	  flst(nlegreal)=-idup(nlegreal)
	endif
	if(flst(1).eq.0.and.flst(2).ne.0) then !for gq: switch momenta 1 and 2
	  call switchmom(p,p,1,2)
	  call switchcf(coltempqg,coltempqg,1,2)
	  temp=flst(1)
	  flst(1)=flst(2)
	  flst(2)=temp
	endif

ccc now determine the jamp2 for qg, if necessary
ccc for btilde: simply call to comprealCF
	if(.not.casegg) then
	  if(flg_btilde) then
	    call comprealCF(flst,p,jamp2,caseqg)
	  else
	    call compCF_split(flst,p,jamp2)
	  endif
	endif
ccc for crossing: apply minus sign if necessary
	do j=1,4
	  jamp2(j)=crossfac*jamp2(j) 
	enddo

c first part: additional gluon
      if(casegg) then
	  call assign_realCF(jamp2,coltempgg)
	else
	  call assign_realCF(jamp2,coltempqg)
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