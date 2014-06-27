ccc subroutine to set the flavour-structures for the decays of
ccc squarks to ...
ccc note: we assume that all born/real flsts have already been set correctly
ccc in the init_processes routine
ccc implemented channels:
ccc     1 sq-> q chi1_0
	subroutine sqdecay_setflst(decchan,bornind)
	implicit none
	include 'nlegborn.h'
	include 'pwhg_flst.h' 
	include 'pwhg_math.h'
	include 'PhysPars.h'
	integer decchan,bornind
	integer i

	if(decchan.gt.1) then
	  write(*,*) 'Trying to set flst for decchan=',decchan
	  write(*,*) 'This is not implemented, only decchan<= 1 '
	  write(*,*) 'is currently supported. '
	  call exit(-1)
	endif

ccc sq->q chi1_0
	if(decchan.eq.1) then
	  do i=1,flst_nborn
	    flst_born(bornind+2,i)=pdgfac+22 !neutralino
	    flst_born(bornind+4,i)=mod(flst_born(bornind,i),pdgfac) !the quark
	  enddo

ccc for the real radiation off the production process: simply add the decays
ccc note: we already assume that the radiated parton has been moved to the last position in the array!!!
	  do i=1,flst_nreal
	    flst_real(bornind+2,i)=pdgfac+22
	    flst_real(bornind+4,i)=mod(flst_real(bornind,i),pdgfac) !the quark
	  enddo
	endif
	end

	subroutine sqdecay_setflstres(decchan1,decchan2)
	implicit none
	include 'nlegborn.h'
	include 'PhysPars.h'
	include 'pwhg_flst.h'
	integer decchan1,decchan2,bornind,realind
	integer i,j,tempnflst

ccc both squarks decay into q + chi0
	if(decchan1.eq.1.and.decchan2.eq.1) then
	  do i=1,flst_nborn
	    do j=1,4
		flst_bornres(j,i)=0 !the production process
		flst_borntags(j,i)=0
	    enddo
	    do bornind=3,4
	      flst_bornres(bornind+2,i)=bornind !the neutralino
	      flst_bornres(bornind+4,i)=bornind !the quark
		flst_borntags(bornind+2,i)=bornind
		flst_borntags(bornind+4,i)=bornind
	    enddo
	  enddo

ccc if we consider radiation off the production: mark everything as production-generated
	  if(par_NLOwhich.ne.2) then
	    do i=1,flst_nreal
	      do j=1,4
		  flst_realres(j,i)=0 
		  flst_realtags(j,i)=0
	      enddo
	      do realind=3,4
	        flst_realres(realind+2,i)=realind !the neutralino
	        flst_realres(realind+4,i)=realind !the quark
		  flst_realtags(realind+2,i)=realind
		  flst_realtags(realind+4,i)=realind
	      enddo
		flst_realres(nlegreal,i)=0 !emission off production-process
		flst_realtags(nlegreal,i)=0
	    enddo
	  else
	    tempnflst=flst_nreal
	    do i=1,tempnflst
            if(flst_real(nlegreal,i).ne.0) then
		  write(*,*) 'In init-decay-flst: should never be here'
	        call exit(-1)
	      endif
            flst_nreal=flst_nreal+1
	      do j=1,4
		  flst_realres(j,i)=0 
		  flst_realtags(j,i)=0
	      enddo
	      do realind=3,4
	        flst_realres(realind+2,i)=realind !the neutralino
	        flst_realres(realind+4,i)=realind !the quark
		  flst_realtags(realind+2,i)=realind
		  flst_realtags(realind+4,i)=realind
	      enddo
cc copy the real flst:
	      do j=1,nlegreal
		   flst_real(j,flst_nreal)=flst_real(j,i) !copy old flst and the res
		   flst_realres(j,flst_nreal)=flst_realres(j,i)
		   flst_realtags(j,flst_nreal)=flst_realtags(j,i)
		enddo
		flst_realres(nlegreal,i)=3 !emission off first decay-process
		flst_realtags(nlegreal,i)=3
		flst_realres(nlegreal,flst_nreal)=4 !emission off second decay-process
		flst_realtags(nlegreal,flst_nreal)=4
	    enddo
	    return
	  endif

ccc if we also consider radiation off the decays: copy all flst twice, mark the radiated
ccc parton as generated off the decay
	  if(par_NLOwhich.ne.1) then
	    tempnflst=flst_nreal
	    do realind=3,4
	      do i=1,tempnflst
		  if(flst_real(nlegreal,i).ne.0) cycle !we need only the flsts with a rad. gluon
	        flst_nreal=flst_nreal+1
	        do j=1,nlegreal
		     flst_real(j,flst_nreal)=flst_real(j,i) !copy old flst and the res
		     flst_realres(j,flst_nreal)=flst_realres(j,i)
		     flst_realtags(j,flst_nreal)=flst_realtags(j,i)
		  enddo
		  flst_realres(nlegreal,flst_nreal)=realind !the radiated parton now is radiated from decay!!
		  flst_realtags(nlegreal,flst_nreal)=realind
		enddo
	    enddo
	  endif
	endif
	end