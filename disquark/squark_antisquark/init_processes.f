      subroutine init_processes
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_flg.h'
      include 'pwhg_kn.h'
      include 'pwhg_st.h'
      include 'pwhg_par.h'
	include 'pwhg_math.h'
	include 'pwhg_rad.h'
      include 'LesHouches.h'
      include 'PhysPars.h'
	integer fla1,fla2
	real*8  powheginput
	integer i1,i2,i3,i4  !positions in flavour-array
	integer j1,j2     !loop-variables
	integer c1,c2
	integer temp
	integer partsumup
	integer nextflaIS,nextflaFS !number of external flavours for sumup-mode
	logical ini    
	data ini/.true./
	save ini
	character*10 tempID
	integer assignPDG

ccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccc gauge for the reals:
	flg_gauge=powheginput("flaggauge")
	  if(flg_gauge.eq.1) then
	   write(*,*) 'Use the lightcone-gauge for own routines'
	   write(*,*) '********************************************************'
	  else if(flg_gauge.eq.2) then
	   write(*,*) 'Use the Feynman-gauge for own routines'
	   write(*,*) '********************************************************'
	  else
	   write(*,*) 'Invalid input for flag_gauge, only 1,2 possible:',flg_gauge
	   call exit(-1)
	  endif

ccc   perform decays internally?
	if(powheginput("decay").eq.1) then	
          flg_decay=.true.
	else
	    flg_decay=.false.
	endif

ccc read in the decay-channels for sq and sqbar; if no decays desired: assume "dummy-decay"
ccc to q chi_0; this will not be calculated or written to the event-file, just used
ccc to fill up the arrays
	if(flg_decay) then
	  par_decchan1=powheginput("decchan1")
	  par_decchan2=powheginput("decchan2")
	  par_NLOwhich=powheginput("NLOwhich")
	  par_NWAapproach=powheginput("NWAapproach")
	  write(*,*) '########################################'
	  write(*,*) 'set the decay-channels to '
	  write(*,*) 'squark    :',par_decchan1
	  write(*,*) 'antisquark:',par_decchan2
	  write(*,*) 'and consider NLO-corrections to'
	  if(par_NLOwhich.eq.1) then
          write(*,*) 'production only'
          flst_nreson=1
          flst_reslist(1)=0
	  else if(par_NLOwhich.eq.2) then 
          write(*,*) 'decays only'
	    flst_nreson=2
	    flst_reslist(1)=3
	    flst_reslist(2)=4
	  else if(par_NLOwhich.eq.3) then
          write(*,*) 'all contributions'
	    flst_nreson=3
	    flst_reslist(1)=0
	    flst_reslist(2)=3
	    flst_reslist(3)=4
	  else
          write(*,*) 'Invalid input for NLOwhich:',par_NLOwhich
	    call exit(-1)
	  endif
	  write(*,*) 'Using for the NWA approach ',par_NWAapproach
	  write(*,*) '########################################'

	else
	  par_decchan1=1 
	  par_decchan2=1
	  par_NLOwhich=1 !if no decays added: obviously only NLO-corrections to prod.
	endif

ccc   for the NLO-hists: do we apply cuts?
        if(powheginput("cuts").eq.1) then
           flg_cuts=.true.
        else
            flg_cuts=.false.
         endif

	flg_colsupp=.true.

ccc which method to use (if at all) for subtraction
	flg_submethod=powheginput("#flagsubmethod")
	if(flg_submethod.lt.0) flg_submethod=1 !default is DS

ccc use the new routines for real-CF?
	if(powheginput("flagownRCF").eq.0) then	
          flg_ownRCF=.false.
	else
	    flg_ownRCF=.true.
	endif

ccc split the real-part in IR-sing, nonresonant part for pwg-events and the regular terms
	flg_split=powheginput("#flagsplit")
	if(flg_split.lt.0) flg_split=0 !default is 0

ccc if we consider only radiation off decay-products: no qg-contriubtions!
	if(flg_split.ne.0.and.par_NLOwhich.eq.2) then
	   write(*,*) '********************************************************'
	   write(*,*) 'Consider only radiation off decay-products '
	   write(*,*) 'No split-contributions in this case, set flg_split=0'
	   write(*,*) '********************************************************'
	   flg_split=0
	endif

ccc "splitting" of the reals is only sensible if we perform a DS-like subtraction 
ccc or no subtraction at all!!!
	if(flg_split.ne.0.and.flg_submethod.gt.1) then
	   write(*,*) '********************************************************'
	   write(*,*) 'Split-Flag only possible for DS-subtraction '
	   write(*,*) 'of the on-shell-gluino-case!'
	   write(*,*) '********************************************************'
	   flg_split=0
	endif

ccc if we consider resonant qg-cases, i.e. width of the gluino is !=0: take the expansion of th
ccc real ME or not?
	flg_qgunexp=.false.
	if(powheginput("#flagunexp").eq.1) flg_qgunexp=.true. 
	if(flg_qgunexp.and.flg_split.eq.3) then
	   write(*,*) '********************************************************'
	   write(*,*) 'For DS* scheme: always use the expanded version of the matrix elements!!'
	   write(*,*) '********************************************************'
	  flg_qgunexp=.false.
	endif

	if(.not.flg_qgunexp.and.flg_submethod.eq.3) then
	   write(*,*) '********************************************************'
	   write(*,*) 'For DR-II scheme: always use the unexpanded version of the matrix elements '
	   write(*,*) '********************************************************'
	  flg_qgunexp=.true.
	endif
	
	if(.not.flg_qgunexp.and.flg_submethod.eq.1.and.(flg_split.eq.1.or.flg_split.eq.2)) then
	   write(*,*) '********************************************************'
	   write(*,*) 'For split 1 or 2: always use the unexpanded version of the matrix elements '
	   write(*,*) '********************************************************'
	  flg_qgunexp=.true.
	endif

	if(flg_qgunexp) then
	   write(*,*) '********************************************************'
	   write(*,*) 'Use the unexpanded version of the matrix elements for qg-channels!!'
	   write(*,*) '********************************************************'
	endif
	
	tan_map_abs=.true. !for the tan-mapping in the generic phase-space: absorb the res. propagator in the jacobian

c in case of using the reshuffling-procedure 2: restrict the phase-space for the subtracted residuum??
	if(powheginput('#flagrestrict').eq.1) then
	  flg_restrict=.true.
	else
	  flg_restrict=.false.
	endif

ccc some general settings for the powheg-box:
      st_nlight = 5
c --- these parameters are predefined in init_phys.f
      par_isrtinycsi = 1d-6
      par_isrtinyy = 1d-6
      par_fsrtinycsi = 1d-6
      par_fsrtinyy = 1d-6

	if(flg_decay) then
	  if(par_decchan1.eq.1.and.par_decchan2.eq.1) flst_lightpart=7 !both sq decay to q,chi_0_1
	else
	  flst_lightpart=nlegreal !if no decays considered: only one massless parton in FS!!
	endif
ccccccccccccccccccccccccccccccccccccc
ccc  Define the structures
      flst_nborn=0
      flst_nreal=0
c set all entries in flst_born,flst_real,flst_chir1/2,flst_fala1/2 to 0:
	if(ini) then
	  do j1=1,maxprocborn
	   flst_born(1:nlegborn,j1)=0
	  enddo
	
	  do j1=1,maxprocreal
	   flst_real(1:nlegreal,j1)=0
	   flst_regular(1:nlegreal,j1)=0!for splitting of Real-ME^2!!
	  enddo
	  ini=.false.
	endif

c if partialsumup is =1 in the input-file: try to read-in several specific channels from a given file
c specified as SUMFLST in the input-file; check if we have really only flsts with same-mass-fs
c create the missing born-flsts (the cc- and in case of diff.flavour the u-channels)
c real-flsts are generated as usual
	partsumup=powheginput("#partialsumup")
	flst_sumup=powheginput("#debug_sumup")

	if (flst_sumup.eq.1.and.partsumup.eq.1) then
	  write(*,*) '#############################################'
	  write(*,*) 'Warning: both the complete-sumup-flag and the partial-sumup-flag '
	  write(*,*) 'are set to true in the input file. Use per default only the '
	  write(*,*) 'partial-sumup-option!!'
	  write(*,*) '#############################################'
	  flst_sumup=0
	endif

c in sumup-mode: use 4 or 5 external flavours to sum over?
c note: for fullsumup, the flavour-number in the IS and the FS could be different, in principle...
! 	nextflaIS=powheginput("nextflaIS")
! 	nextflaFS=powheginput("nextflaFS")
	nextflaIS=4
	nextflaFS=4 !by default: consider 4-flavours in IS and FS!

	if(flst_sumup.ne.1.and.partsumup.ne.1) then
c if we consider only a specific configuration: read this in from input-file
	  call powheginputstring("part1",tempID)
	  i3=assignPDG(tempID)
	  call powheginputstring("part2",tempID)
	  i4=assignPDG(tempID)

c check if particles are in the order q q~-> otherwise switch i3,i4:
	  if(i3.lt.0.and.i4.gt.0) then
	    temp=i3
	    i3=i4
	    i4=temp
	  endif

	  if(mod(i3,pdgfac)*mod(i4,pdgfac).gt.0) then !sanity-check: sq sq prod. is different...
	    write(*,*) 'Trying to calculate sq(~),sq(~) production-> you are in the wrong folder'
	    write(*,*) 'particles are',i3,i4
	    call exit(-1)
	  endif

	  fla1=mod(abs(i3),pdgfac)
	  fla2=mod(abs(i4),pdgfac)

ccccccccccccccccccccccccccccccccccc
c  first the gg-channels and the case with same fla/chir:
	  if(i3+i4.eq.0) then
	   flst_nborn=flst_nborn+1
	   flst_born(1,flst_nborn)=0
	   flst_born(2,flst_nborn)=0
	   flst_born(3,flst_nborn)=i3
	   flst_born(4,flst_nborn)=i4

	   do j1=1,nextflaIS
	     flst_nborn=flst_nborn+1
	     flst_born(1,flst_nborn)=j1
	     flst_born(2,flst_nborn)=-j1
	     flst_born(3,flst_nborn)=i3
	     flst_born(4,flst_nborn)=i4
	   enddo
	  else
	     flst_nborn=flst_nborn+1
	     flst_born(1,flst_nborn)=fla1
	     flst_born(2,flst_nborn)=-fla2
	     flst_born(3,flst_nborn)=i3
	     flst_born(4,flst_nborn)=i4
	  endif
	else if(flst_sumup.eq.1) then
	  if(.not.flg_smartsig) then
	    write(*,*) 'Warning: you consider full sumup without using smartsig'
	    write(*,*) 'Setting smartsig to True!!'
	    flg_smartsig=.true.
	  endif
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c if we sum up all squarks with degenerate masses:
c in principle we could have more FS
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
! 	  write(*,*) 'Chosen number of external flavours in IS:',nextflaIS
! 	  write(*,*) 'Chosen number of external flavours in FS:',nextflaFS
	  do i3=1,nextflaFS
	    do i4=i3,nextflaFS
		if(i3-i4.eq.0) then !same flavour and chirality
	         flst_nborn=flst_nborn+1
	         flst_born(1,flst_nborn)=0
	         flst_born(2,flst_nborn)=0
	         flst_born(3,flst_nborn)=pdgfac+i3
	         flst_born(4,flst_nborn)=-(pdgfac+i4)

	         flst_nborn=flst_nborn+1
	         flst_born(1,flst_nborn)=0
	         flst_born(2,flst_nborn)=0
	         flst_born(3,flst_nborn)=2*pdgfac+i3
	         flst_born(4,flst_nborn)=-(2*pdgfac+i4)
	        do j1=1,nextflaIS
	            flst_nborn=flst_nborn+1
	            flst_born(1,flst_nborn)=j1
	            flst_born(2,flst_nborn)=-j1
	            flst_born(3,flst_nborn)=pdgfac+i3
	            flst_born(4,flst_nborn)=-(pdgfac+i4)

	            flst_nborn=flst_nborn+1
	            flst_born(1,flst_nborn)=j1
	            flst_born(2,flst_nborn)=-j1
	            flst_born(3,flst_nborn)=2*pdgfac+i3
	            flst_born(4,flst_nborn)=-(2*pdgfac+i4)
		  enddo
cc only t-channel possible
	         flst_nborn=flst_nborn+1
	         flst_born(1,flst_nborn)=i3
	         flst_born(2,flst_nborn)=-i4
	         flst_born(3,flst_nborn)=pdgfac+i3
	         flst_born(4,flst_nborn)=-(2*pdgfac+i4)
			  
	         flst_nborn=flst_nborn+1
	         flst_born(1,flst_nborn)=i3
	         flst_born(2,flst_nborn)=-i4
	         flst_born(3,flst_nborn)=2*pdgfac+i3
	         flst_born(4,flst_nborn)=-(pdgfac+i4)
		else 
		 if(i3.eq.i4) cycle
		 do c1=1,2
		   do c2=1,2
	           flst_nborn=flst_nborn+1
	           flst_born(1,flst_nborn)=i3
	           flst_born(2,flst_nborn)=-i4
	           flst_born(3,flst_nborn)=c1*pdgfac+i3
	           flst_born(4,flst_nborn)=-(c2*pdgfac+i4)

cc add here in this case the cc case (e.g. uLdRbar corresponds to dRuLbar)
	           flst_nborn=flst_nborn+1
	           flst_born(1,flst_nborn)=-i3
	           flst_born(2,flst_nborn)=i4
	           flst_born(3,flst_nborn)=(c2*pdgfac+i4)
	           flst_born(4,flst_nborn)=-(c1*pdgfac+i3)
		   enddo
	       enddo
	      endif

	    enddo
	  enddo
	else
cccccccccccccccccccccccccccccccccccccccccccccccccc
cc the "partial-sumup"-option: read in some flsts from an input-file 
cc specified in the powheg.input-file
	  call read_bornflst()

	  if(.not.flg_smartsig) then
	    write(*,*) 'Warning: you consider partial sumup without using smartsig'
	    write(*,*) 'Set smartsig to True!!'
	    flg_smartsig=.true.
	  endif
	endif

c  now exchange IS-partons:
	j1=flst_nborn
	do j2=1,j1
	  if ((flst_born(1,j2)).ne.0) then !not for gg-channel 
	     flst_nborn=flst_nborn+1
	     flst_born(1,flst_nborn)=flst_born(2,j2)
	     flst_born(2,flst_nborn)=flst_born(1,j2)
	     flst_born(3,flst_nborn)=flst_born(3,j2)
	     flst_born(4,flst_nborn)=flst_born(4,j2)
	  endif
	enddo

ccccccccccccccccccccccccccccccccccccccccccccccccccccc
c  construct the real structures: 
c---  1.) add to each born-structure another column with i=0 for gluon-radiation :
	  do j1=1,flst_nborn
	    flst_nreal=flst_nreal+1
	    do j2=1,4
            flst_real(j2,flst_nreal)=flst_born(j2,j1)
	    enddo
	    flst_real(nlegreal,flst_nreal)=0
	  enddo

c--- 2.) construct the crossed real contributions 
c         obviously sensless for gg-> sq sq~ g:
ccc this is only relvant if we consider radiation in the production!
	if(par_NLOwhich.ne.2) then
	  do i1=1,flst_nborn !so far we have tempflstnborn real contributions
	  !cross the two is-particles
	     if(flst_born(1,i1).ne.0) then
	       flst_nreal=flst_nreal+1
	       flst_real(1,flst_nreal)=0
	       flst_real(2,flst_nreal)=flst_born(2,i1)
	       flst_real(3,flst_nreal)=flst_born(3,i1)
	       flst_real(4,flst_nreal)=flst_born(4,i1)
	       flst_real(nlegreal,flst_nreal)=-flst_born(1,i1)

	       flst_nreal=flst_nreal+1
	       flst_real(1,flst_nreal)=flst_born(1,i1)
	       flst_real(2,flst_nreal)=0
	       flst_real(3,flst_nreal)=flst_born(3,i1)
	       flst_real(4,flst_nreal)=flst_born(4,i1)
	       flst_real(nlegreal,flst_nreal)=-flst_born(2,i1)
	     endif
	  enddo
	endif

cccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccc    if flaIS!=flaFS: we might want to produce e.g. sbottoms, but
ccc     neglect bottoms in the IS-> problematic in reals with qg-> sb sq bbar
ccc     loop over all reals and borns again, remove those with flavour in the IS < nextflaIS
	if(flst_sumup.eq.1) then
	  temp=flst_nborn
	  do i1=temp,1,-1
	    if(abs(flst_born(1,i1)).gt.nextflaIS.or.abs(flst_born(2,i1)).gt.nextflaIS) then
	      do j1=1,nlegborn
	        flst_born(j1,i1)=flst_born(j1,flst_nborn)
	      enddo
	      flst_nborn=flst_nborn-1
	    endif
	  enddo

	  temp=flst_nreal
	  do i1=temp,1,-1
	    if(abs(flst_real(1,i1)).gt.nextflaIS.or.abs(flst_real(2,i1)).gt.nextflaIS) then
	      do j1=1,nlegreal
	        flst_real(j1,i1)=flst_real(j1,flst_nreal)
	      enddo
	      flst_nreal=flst_nreal-1
	    endif
	  enddo
	endif

cccccccccccccccccccccccccccccccccccccccccccccccccc
cc generate flst for the two sq-decays:
	if(flg_decay) then
	  call sqdecay_setflst(par_decchan1,3)
	  call sqdecay_setflst(par_decchan2,4)
	  call sqdecay_setflstres(par_decchan1,par_decchan2)
	else
	  do i1=5,nlegborn
	    do j1=1,flst_nborn
		flst_born(i1,j1)=-999
	    enddo
	    do j1=1,flst_nreal
		flst_real(i1,j1)=-999
	    enddo
	  enddo
	endif

      if(flg_split.ne.0) call init_split_real
	end

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cc if the real-amplitudes are split into a regular part and the IR-divergent parts:
cc this routine provides the correspoinding flsts via flst_regular_split!
cc Note: make sure NOT to count the gg-case here, these channels have no on-shell
cc intermediate states
	subroutine init_split_real
	implicit none
	include 'nlegborn.h'
	include 'pwhg_flst.h'
	include 'pwhg_flg.h'
	include 'pwhg_math.h'
	integer i1,i2
	integer fla1,fla2,chir1,chir2
	flst_nregularsplit=0
cc for the splitting of R: need to provide the regular-flsts here, they are simply
cc identical to the qg(gq)-channels:
cc note: uLuLbarc has no resonant region-> not part of the regular-split-terms
       if(flg_split.ne.0) then
         do i1=1,flst_nreal
           if((flst_real(1,i1).eq.0.or.flst_real(2,i1).eq.0)
     &         .and.(flst_real(1,i1).ne.flst_real(2,i1))
     &         .and.flst_realres(nlegreal,i1).eq.0) then !only for production-channels!!
               chir1=abs(flst_real(3,i1))/pdgfac
               chir2=abs(flst_real(4,i1))/pdgfac !integer-division
               fla1=abs(flst_real(3,i1))-chir1*pdgfac
               fla2=abs(flst_real(4,i1))-chir2*pdgfac
               if(fla1.eq.abs(flst_real(nlegreal,i1)).or.fla2.eq.abs(flst_real(nlegreal,i1))) then
                 flst_nregularsplit=flst_nregularsplit+1 
                 do i2=1,nlegreal
                    flst_regularsplit(i2,flst_nregularsplit)=flst_real(i2,i1) !copy existing real...
                 enddo
               endif
           endif
         enddo
       endif
	end
