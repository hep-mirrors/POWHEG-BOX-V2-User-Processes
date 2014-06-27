cc additional subroutine for initialization of SUSY-processes
cc reads in the Born-Flavour-structures from an external input-file
cc syntax in this file should be a la
cc uL uL
cc uL dR etc
cc lines starting with # are ignored
	subroutine read_bornflst()
	implicit none
	include 'nlegborn.h'
	include 'pwhg_flst.h'
	include 'pwhg_math.h'
	character*100 infile
	character*100 tempname
	character*100 line 
	integer ios,i,j,iun
	integer fla1,fla2
	character*20 tempflst(10)
	logical inputerror,duplicate,sqsq,sqsqbar
	integer nextfla !number of external flavours for sumup-mode
	integer assignPDG
	real*8 powheginput
	external assignPDG,powheginput

	call newunit(iun)
	sqsq=.false.
	sqsqbar=.false.
! 	nextfla=powheginput("nextfla")
	nextfla=4
      call powheginputstring("SUMFLST",infile)

      tempname=infile
      do i=0,5
         open(unit=iun,file=tempname,status='old',ERR=30)
         write(*,*) 'read flst-input file',tempname
         exit
 30      tempname='../'//tempname
         if (i.eq.5)then
            write(*,*) 'Warning: file ',tempname,' is not correct'
            call exit(-1)
         endif
      enddo

	if(ios.ne.0) then
	  write(*,*) 'Could not open file ',infile
	  call exit(-1)
	endif

	do i=1,200
	  inputerror=.false.
	  duplicate=.false.
	  do j=1,10
	    tempflst(j)='nope'
	  enddo
	  
	  line=' '
	  read(unit=iun,fmt='(a)',iostat=ios) line
	  if (line.eq.' ') goto 10

	  do j=1,100
	    if(line(j:j).eq.'#') goto 10 !skip comments
	  enddo

	  read(unit=line,fmt=*,iostat=ios) tempflst

	  flst_nborn=flst_nborn+1
	  do j=1,2
	    if (tempflst(j).eq.'nope') then
	      inputerror=.true.
	    endif
	    flst_born(j+2,flst_nborn)=assignPDG(tempflst(j))
	  enddo

cc get the flavours of the squarks/antisquarks/...
	  fla1=mod(flst_born(3,flst_nborn),pdgfac)
	  fla2=mod(flst_born(4,flst_nborn),pdgfac)

	  if(fla1*fla2.lt.0) sqsqbar=.true.
	  if(fla1*fla2.gt.0) sqsq=.true.

cc only absolute values in the following
	  fla1=abs(fla1)
	  fla2=abs(fla2)
c 1.) if we mix sqsq and sqsqbar: raise error-message and stop
	  if(sqsq.and.sqsqbar) then
	    write(*,*) 'Warning: you try to read in flavour-structures with sqsq and sqsqbar-> not possible, stop'
	    call exit(-1)
	  endif

cc Use this function for sq sqbar, too
c 2.) check if this flst is already present (possibly with switched FS-particles or cc!!)
	  do j=1,flst_nborn-1
	    if(sqsq) then !the sqsq-case
            if(abs(flst_born(3,flst_nborn)).eq.abs(flst_born(3,j)).and.abs(flst_born(4,flst_nborn)).eq.abs(flst_born(4,j))) then
		  duplicate=.true.
            else if(abs(flst_born(3,flst_nborn)).eq.abs(flst_born(4,j)).and.abs(flst_born(4,flst_nborn)).eq.abs(flst_born(3,j))) then
		  duplicate=.true.
	      endif
	    else if (sqsqbar) then
             if(flst_born(3,flst_nborn).eq.flst_born(3,j).and.flst_born(4,flst_nborn).eq.flst_born(4,j)) then
		  duplicate=.true.
	      endif
	    endif
	  enddo

	  if (duplicate) then
	      write(*,*) 'Duplicate Born-Flavour-structure read from ',infile
	      write(*,*) flst_born(1:4,flst_nborn)
	      write(*,*) 'Do not consider this structure and proceed'

	      do j=1,nlegborn
		  flst_born(j,flst_nborn)=0
	      enddo
	      flst_nborn=flst_nborn-1
		goto 10
	  endif

cccccccccccccccccccccccccccccccccccccccccccccccccc
c Now add already here the correct born-flsts, so the cc-one (only for sqsq)
	  if(sqsq) then
	    if(fla1.ne.fla2) then
	      flst_born(1,flst_nborn)=fla1
	      flst_born(2,flst_nborn)=fla2

	      flst_nborn=flst_nborn+1
	      flst_born(1,flst_nborn)=fla2
	      flst_born(2,flst_nborn)=fla1
	      flst_born(3,flst_nborn)=flst_born(3,flst_nborn-1)
	      flst_born(4,flst_nborn)=flst_born(4,flst_nborn-1)
	    else
	      flst_born(1,flst_nborn)=fla1
	      flst_born(2,flst_nborn)=fla2
	    endif

cc for same flavour
	    if(fla1.eq.fla2) then
	      flst_nborn=flst_nborn+1
	      do j=1,nlegborn
		  flst_born(j,flst_nborn)=-flst_born(j,flst_nborn-1)
	      enddo
	    else
cc for diff flavour
	      flst_nborn=flst_nborn+1
	      do j=1,nlegborn
		  flst_born(j,flst_nborn)=-flst_born(j,flst_nborn-2)
	      enddo
	      flst_nborn=flst_nborn+1
	      do j=1,nlegborn
		  flst_born(j,flst_nborn)=-flst_born(j,flst_nborn-2)
	      enddo
	    endif
	  else if(sqsqbar) then
ccccccccccccccccccccccccccccccccccc
c  the gg-channels and the case with same fla/chir:
	      if(flst_born(3,flst_nborn)+flst_born(4,flst_nborn).eq.0) then
	        flst_born(1,flst_nborn)=0
	        flst_born(2,flst_nborn)=0

	        do j=1,nextfla
	         flst_nborn=flst_nborn+1
	         flst_born(1,flst_nborn)=j
	         flst_born(2,flst_nborn)=-j
	         flst_born(3,flst_nborn)=flst_born(3,flst_nborn-1)
	         flst_born(4,flst_nborn)=flst_born(4,flst_nborn-1)
	        enddo
	      else
	         flst_born(1,flst_nborn)=fla1
	         flst_born(2,flst_nborn)=-fla2
	      endif
	  endif
	  
	  if (tempflst(nlegborn+1-2).ne.'nope') inputerror=.true.

	  if (inputerror) then
	      write(*,*)'Flavour-structures read from file is incorrect:'
             write(*,*)'for nlegborn=',nlegborn,' required items we get'
             write(*,*) tempflst
	      write(*,*) 'Stop program'
	      call exit(-1)
	   endif

 10      continue
	enddo
	close(iun)
	end
