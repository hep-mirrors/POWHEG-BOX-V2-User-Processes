	subroutine switchmom(pin,pout,pos1,pos2)
	implicit none
	include 'nlegborn.h'
	real*8 pin(0:3,nlegreal),pout(0:3,nlegreal),pcopy(0:3,nlegreal)
	integer i,j,pos1,pos2
	do j=1,nlegreal
	  do i=0,3
	    pcopy(i,j)=pin(i,j)
	  enddo
	enddo
c switch the particle momenta at pos1 and pos2 for the routine reshuffle...
	do j=1,nlegreal
	  do i=0,3
	     if(j.ne.pos1.and.j.ne.pos2) then
	        pout(i,j)=pcopy(i,j)
	     else if(j.eq.pos1) then	
              pout(i,j)=pcopy(i,pos2)
	     else if(j.eq.pos2) then	
              pout(i,j)=pcopy(i,pos1)
	     endif
	  enddo
	enddo
	end

ccc same for born-momenta
	subroutine switchmomborn(pin,pout,pos1,pos2)
	implicit none
	include 'nlegborn.h'
	real*8 pin(0:3,nlegborn),pout(0:3,nlegborn),pcopy(0:3,nlegborn)
	integer i,j,pos1,pos2
	do j=1,nlegborn
	  do i=0,3
	    pcopy(i,j)=pin(i,j)
	  enddo
	enddo
c switch the particle momenta at pos1 and pos2 for the routine reshuffle...
	do j=1,nlegborn
	  do i=0,3
	     if(j.ne.pos1.and.j.ne.pos2) then
	        pout(i,j)=pcopy(i,j)
	     else if(j.eq.pos1) then	
              pout(i,j)=pcopy(i,pos2)
	     else if(j.eq.pos2) then	
              pout(i,j)=pcopy(i,pos1)
	     endif
	  enddo
	enddo
	end