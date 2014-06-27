c this function reads from a file cuts.dat several keywords
c write this function in analogy to the powheginput-file
      real*8 function readcuts(cutname,reqpart)
      implicit none
      character *(*) cutname
      character*100 cutsfile,line
      integer iun,i,k,l,jetnum,sqnum,reqpart,ascii
      real*8 ptj(1:9)
      real*8 ptjmin,etaj,R,ptinv
	real*8 ptsq(1:2)
	real*8 ptsqsqmin
ccccc new ATLAS block
	real*8 meffincl,ratioptmissmeff,deltaphi(1:3)
      logical ini,readjets,readptmiss,readsquarks,readatlas
      data ini/.true./
      save ini, ptj, etaj,R,ptinv, ptsq, ptsqsqmin 
	save meffincl,ratioptmissmeff,deltaphi    

      if(ini) then !readin the cuts-file, save the correspondings values
        readjets=.false.
        readptmiss=.false.
	  readsquarks=.false.
	  readatlas=.false.
        do i=1,9
          ptj(i)=0d0
        enddo
        ptjmin=0d0
        etaj=100d0
        R=0.7
        ptinv=0d0

	  do i=1,2
	    ptsq(i)=0d0
	  enddo
	  ptsqsqmin=0d0

	  meffincl=0d0
	  ratioptmissmeff=0d0
	  do i=1,3
	    deltaphi(i)=0.0
	  enddo
        
        call newunit(iun)
        call powheginputstring("CUTS",cutsfile)
        do i=0,5
         open(unit=iun,file=cutsfile,status='old',ERR=31)
         exit
 31      cutsfile='../'//cutsfile
         if (i.eq.5)then
            write(*,*) 'Warning: file ',cutsfile,' is not correct'
            stop
         endif
        enddo

        write(*,*) 'reading cuts from file ',cutsfile
        
        do l=1,1000
	    read(iun,'(a100)',end=4400) line
	    do k=1,100
	       if(line(k:k+3).eq.'JETS') then
	         readjets=.true.
	         readptmiss=.false.
		   readsquarks=.false.
		   readatlas=.false.
	       elseif(line(k:k+5).eq.'PTMISS') then
	         readjets=.false.
	         readptmiss=.true.   
		   readsquarks=.false.
		   readatlas=.false.
	       elseif(line(k:k+6).eq.'SQUARKS') then
	         readjets=.false.
	         readptmiss=.false.
		   readsquarks=.true.
		   readatlas=.false.
	       elseif(line(k:k+6).eq.'ATLAS') then
	         readjets=.false.
	         readptmiss=.false.
		   readsquarks=.false.
		   readatlas=.true.
	       endif
	    enddo

	    do k=1,100 !need to do this again!
		if(line(k:k).eq.'#'.or.line(k:k).eq.'!') line(k:)=' '
	    enddo

	    if(line.ne.' ') then
 11          if(line(1:1).eq.' ') then
                line=line(2:)
                goto 11
             endif
             if(readjets) then
               ascii=ichar(line(5:5))
               if(line(1:3).eq.'ptj'.and.(ascii.ge.48.and.ascii.le.57)) then !exclude e.g. ptj_min
                  read(line(5:5),*) jetnum
                  read(line(6:),*) ptj(jetnum)
               elseif(line(1:7).eq.'ptj_min') then
                 read(line(8:),*) ptjmin
               elseif(line(1:4).eq.'etaj') then
                 read(line(5:),*) etaj
               elseif(line(1:1).eq.'R') then
                 read(line(2:),*) R
               endif
             elseif(readptmiss) then
               if(line(1:5).eq.'ptinv') then
                 read(line(6:),*) ptinv
               endif
             elseif(readsquarks) then
 		   ascii=ichar(line(6:6))
               if(line(1:4).eq.'ptsq'.and.(ascii.ge.48.and.ascii.le.57)) then
			read(line(6:6),*) sqnum
                  read(line(7:),*) ptsq(sqnum)
		   elseif(line(1:7).eq.'ptsqsq') then
			read(line(8:),*) ptsqsqmin
               endif
		 elseif(readatlas) then
		     if(line(1:8).eq.'meffincl') then
                    read(line(9:),*) meffincl
		     elseif(line(1:11).eq.'rptinvmeff') then
                    read(line(12:),*) ratioptmissmeff
		     elseif(line(1:8).eq.'deltaphi') then
		        read(line(11:11),*) jetnum
			  read(line(18:),*) deltaphi(jetnum)
		     endif
              endif
           endif
        enddo
 4400 continue
        close(iun)
	  ini=.false.
	endif

	do i=1,9
	  if(cutname.eq.'ptj'.and.i.eq.reqpart) readcuts=ptj(i)
	enddo
	if(cutname.eq.'ptjmin') readcuts=ptjmin
	if(cutname.eq.'etaj') readcuts=etaj
	if(cutname.eq.'R') readcuts=R
	if(cutname.eq.'ptinv') readcuts=ptinv
	do i=1,2
	  if(cutname.eq.'ptsq'.and.i.eq.reqpart) readcuts=ptsq(i)
	enddo
	if(cutname.eq.'ptsqsq') readcuts=ptsqsqmin
cc ATLAS stuff
	if(cutname.eq.'meffincl') readcuts=meffincl
	if(cutname.eq.'rptinvmeff') readcuts=ratioptmissmeff
	do i=1,2
	  if(cutname.eq.'deltaphi'.and.i.eq.reqpart) readcuts=deltaphi(i)
	enddo
      end
