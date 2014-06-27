      subroutine init_processes
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_flg.h'
      include 'pwhg_kn.h'
      include 'pwhg_st.h'
      include 'pwhg_par.h'
	include 'pwhg_rad.h'
	include 'pwhg_math.h'
      include 'LesHouches.h'
      include 'PhysPars.h' 
	real*8   powheginput
	integer i1,i2,temp   !possible values for IS quarks
	integer i3,i4 !the PDG-codes for final-state-squarks
	integer j1,j2
	integer sqtype !for anti-squark-pairs: this integer is set to -1 
	integer nextfla !number of external flavours for sumup-mode
	integer partsumup !perform a sumup of a (given) number of specific channels with same-mass final states
	logical ini    
	data ini/.true./
	save ini

	character*10 tempID
	integer assignPDG

ccc   perform decays internally?
	if(powheginput("decay").eq.1) then	
          flg_decay=.true.
	else
	    flg_decay=.false.
	endif

	par_NLOwhich=1 !default is only production!!

ccc read in the decay-channels for sq1 and sq2; if no decays desired: assume "dummy-decay"
ccc to q chi_0; this will not be calculated or written to the event-file, just used
ccc to fill up the arrays
	if(flg_decay) then
	  par_decchan1=powheginput("decchan1")
	  par_decchan2=powheginput("decchan2")
	  par_NLOwhich=powheginput("NLOwhich")
	  par_NWAapproach=powheginput("NWAapproach")
	  write(*,*) '########################################'
	  write(*,*) 'set the decay-channels to '
	  write(*,*) 'squark1:',par_decchan1
	  write(*,*) 'squark2:',par_decchan2
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
	if(flg_split.ne.0.and.flg_submethod.ne.1) then
	   write(*,*) '********************************************************'
	   write(*,*) 'Split-Flag only possible for DS-subtraction '
	   write(*,*) 'of the on-shell-gluino-case!'
	   write(*,*) '********************************************************'
	   flg_split=0
	endif

ccc if we consider resonant qg-cases, i.e. width of the gluino is !=0: take the expansion of the
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

ccc consider charge-conjugate process(es) as well?
	if(powheginput("withcc").eq.1) then	
          flg_cc=.true.
	else
	    flg_cc=.false.
	endif

! 	if(flg_bornonly) then
! 	   write(*,*) '#############################################'
! 	   write(*,*) 'bornonly set to 1-> REPLACE BTILDE->BORN !'
!          write(*,*) '#############################################'
! 	endif

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccc some general settings for the powheg-box:
c     number of light flavors
      st_nlight = 5
c --- some parameters
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

cccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccc  Define the structures
      flst_nborn=0
      flst_nreal=0

	if(ini) then
	  do j1=1,maxprocborn
	   flst_born(1:nlegborn,j1)=-999
	  enddo
	
	  do j1=1,maxprocreal
	   flst_real(1:nlegreal,j1)=-999
	   flst_regular(1:nlegreal,j1)=-999!for splitting of Real-ME^2!!
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
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c in sumup-mode: use 4 or 5 external flavours to sum over?
! 	nextfla=powheginput("nextfla")
	nextfla=4 !default: consider 4 squark flavours

c the "normal" case where a specific channel is given:
	if(flst_sumup.ne.1.and.partsumup.ne.1) then
c if we consider only a specific configuration: read this in from input-file
	  call powheginputstring("part1",tempID)
	  i3=assignPDG(tempID)
	  call powheginputstring("part2",tempID)
	  i4=assignPDG(tempID)
c check if particles are in the order L,R-> otherwise switch i3,i4:
	  if(abs(i3/pdgfac).gt.abs(i4/pdgfac)) then
	    temp=i3
	    i3=i4
	    i4=temp
	  endif

	  if(mod(i3,pdgfac)*mod(i4,pdgfac).lt.0) then !sanity-check
	    write(*,*) 'Trying to calculate sq,sq~ production-> you are in the wrong folder'
	    write(*,*) 'particles are',i3,i4
	    call exit(-1)
	  endif

	  if(i3.lt.0) then
	    i3=-i3 !the following flavour-assigning is for squarks, for anti-squarks: 
	    i4=-i4 !in the end the complete flst-list is multiplied by -1
          sqtype=-1
	  else
	    sqtype=1
	  endif

	  if(i3.gt.2*pdgfac) then
	     i1=i3-2*pdgfac
	  else
	     i1=i3-pdgfac
	  endif

	  if(i4.gt.2*pdgfac) then
	     i2=i4-2*pdgfac
	  else
	     i2=i4-pdgfac
	  endif

	  if(i1.ge.5.or.i2.ge.5) then
	    write(*,*) 'no sbottom/stop-production in qq-process possible!'
	     call exit(-1)
	  endif
ccccccccccccccccccccccccc
	  flst_nborn=flst_nborn+1
	  flst_born(1,flst_nborn)=i1
	  flst_born(2,flst_nborn)=i2
	  flst_born(3,flst_nborn)=i3
	  flst_born(4,flst_nborn)=i4

	  if(i1.ne.i2) then
	    flst_nborn=flst_nborn+1
	    flst_born(1,flst_nborn)=i2
	    flst_born(2,flst_nborn)=i1
	    flst_born(3,flst_nborn)=i3
	    flst_born(4,flst_nborn)=i4
	  endif

c for antisq antisq-production: multiply all by -1
	  do j1=1,flst_nborn
	    do j2=1,nlegborn
	      flst_born(j2,j1)=sqtype*flst_born(j2,j1)
          enddo
	  enddo

c if we want to consider both the normal and cc process:
	  if(flg_cc) then
	    j1=flst_nborn
	    do i1=1,j1
	      flst_nborn=flst_nborn+1
	      do i2=1,nlegborn
	        flst_born(i2,flst_nborn)=-flst_born(i2,i1)
	      enddo
	    enddo
	  endif

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c if we sum up all squarks with degenerate masses:
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
	else if (flst_sumup.eq.1) then !see above: if partsumup==1, flst_sumup is automatically set to false!
	  if(.not.flg_smartsig) then
	    write(*,*) 'Warning: you consider full sumup without using smartsig'
	    write(*,*) 'Setting smartsig to True!!'
	    flg_smartsig=.true.
	  endif
! 	  write(*,*) 'Chosen number of external flavours:',nextfla
	  do i1=1,nextfla
	    do i2=i1,nextfla
		do i3=1,2 !two chiralities possible for each config!
		  do i4=1,2
		   if(i1.eq.i2.and.i3.gt.i4) goto 99
	           flst_nborn=flst_nborn+1
		    flst_born(1,flst_nborn)=i1
		    flst_born(2,flst_nborn)=i2
		    if(i3.gt.i4) then !maintain LR-ordering!!!
		      flst_born(4,flst_nborn)=i3*pdgfac+i1 
		      flst_born(3,flst_nborn)=i4*pdgfac+i2	
		    else
		      flst_born(3,flst_nborn)=i3*pdgfac+i1 
		      flst_born(4,flst_nborn)=i4*pdgfac+i2	
		    endif
 99		    continue
		  enddo
		enddo
	    enddo
	  enddo
c add contributions with switched IS-particles (basically correspond to u-channels!)
	  j1=flst_nborn
	  do i1=1,j1
	   if(flst_born(1,i1).ne.flst_born(2,i1)) then
		flst_nborn=flst_nborn+1
		flst_born(1,flst_nborn)=flst_born(2,i1)
		flst_born(2,flst_nborn)=flst_born(1,i1)
		flst_born(3,flst_nborn)=flst_born(3,i1)
		flst_born(4,flst_nborn)=flst_born(4,i1)
	   endif
	  enddo
ccccccccccccccccccccccccccccccccccccccccccccccccccc
ccc include the cc-cases as well-> simply "double all structures"
	  j1=flst_nborn
	  do i1=1,j1
	    flst_nborn=flst_nborn+1
	    do i2=1,nlegborn
	     flst_born(i2,flst_nborn)=-flst_born(i2,i1)
	    enddo
	  enddo
cccccccccccccccccccccccccccccccccccccccccccccccccc
cc the "partial-sumup"-option: read in some flsts from an input-file specified in the
cc powheg.input-file
	else
	  call read_bornflst()
	  if(.not.flg_smartsig) then
	    write(*,*) 'Warning: you consider partial sumup without using smartsig'
	    write(*,*) 'Set smartsig to True!!'
	    flg_smartsig=.true.
	  endif
	endif

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cc again check LR-ordering!!
cc if final-states are not ordered as LR: switch them; use absolute-values, as cc-states are already present!!
	do i1=1,flst_nborn
	  if(abs(flst_born(3,i1)/pdgfac).gt.abs(flst_born(4,i1)/pdgfac)) then
	    temp=flst_born(3,i1)
	    flst_born(3,i1)=flst_born(4,i1)
	    flst_born(4,i1)=temp
	  endif
	enddo
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c---  construct the real structures, both structure for all three modes:
c---  1.) add to each born-structure another column with i=0 for gluon-radiation 
	do j1=1,flst_nborn
	    flst_nreal=flst_nreal+1
	    do j2=1,4
            flst_real(j2,flst_nreal)=flst_born(j2,j1)
	    enddo
	    flst_real(nlegreal,flst_nreal)=0
	enddo

c---  2.) what about additional production of a light antiquark:
ccc this is only relvant if we consider radiation in the production!
	if(par_NLOwhich.ne.2) then
	  do i1=1,flst_nborn !so far we have flst_nborn real contributions
	  !cross the two is-particles
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
	  enddo
	endif

cc for the decays: generate flst for the two sq-decays:
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
	subroutine init_split_real
	implicit none
	include 'nlegborn.h'
	include 'pwhg_flst.h'
	include 'pwhg_flg.h'
	integer i1,i2
	flst_nregularsplit=0
cc for the splitting of R: need to provide the regular-flsts here, they are simply
cc identical to the qg(gq)-channels:
       if(flg_split.ne.0) then
         do i1=1,flst_nreal
           if((flst_real(1,i1).eq.0.or.flst_real(2,i1).eq.0)
     &         .and.flst_realres(nlegreal,i1).eq.0) then !only for production-channels!!
              flst_nregularsplit=flst_nregularsplit+1 
              do i2=1,nlegreal
                flst_regularsplit(i2,flst_nregularsplit)=flst_real(i2,i1) !copy existing real...
              enddo
           endif
         enddo
       endif
	end
