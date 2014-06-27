c some routines to perform a comparison of the results of different
c helicity amplitudes in the FC routines
***********************************************************************
c convert a given index-integer a la 2120 to an array (-1,1,1,0)
c here, 0/1 corresponds to 0/1 and 2 to -1!!
	subroutine convertind2hel(ind,ret)
	implicit none
	integer ind,ret(1:4),i
	ret(1)=ind/1000
	ret(2)=(ind-1000*ret(1))/100
	ret(3)=(ind-1000*ret(1)-100*ret(2))/10
	ret(4)=mod(ind,10)
	do i=1,4
	  if(ret(i).eq.2) ret(i)=-1
	enddo
	end
	
c and vice versa
	subroutine converthel2ind(hel,ind)
	implicit none
	integer hel(1:4),helcp(1:4),ind,i
	do i=1,4
	  helcp(i)=hel(i)
	  if(hel(i).eq.-1) helcp(i)=2
	enddo
	ind=1000*helcp(1)+100*helcp(2)+10*helcp(3)+helcp(4)
	end
	
**********************************************************************
c compare all entries in a results-array of the form (-1:1,-1:1,-1:1,-1:1,1:nSUN...)
c bogus is the weird number used in FC to indicate uninit. arrays..
c not really "highly" efficient, but only 10 times called per run->...
	integer function compres(resarr,h1,h2,h3,h4,resnum,bogus)
	implicit none
	double complex resarr(-1:1,-1:1,-1:1,-1:1,*),bogus
	integer h1,h2,h3,h4,resnum,heli(1:4)
	integer i,j,k,l,m
	double precision comptiny,numtiny,diffr,diffim
	parameter(comptiny=1d-10,numtiny=1d-20)
	logical identical
	do i=h1,1
	 do j=h2,1
	  do k=h3,1
	   do l=h4,1
	    if(i.eq.h1.and.j.eq.h2.and.k.eq.h3.and.l.eq.h4) cycle
	    identical=.false.
	    do m=1,resnum
	     if(resarr(i,j,k,l,m).eq.bogus) cycle
	     diffr=abs(real(resarr(h1,h2,h3,h4,m))-real(resarr(i,j,k,l,m)))
	     diffim=abs(aimag(resarr(h1,h2,h3,h4,m))-aimag(resarr(i,j,k,l,m)))
	     if(abs(real(resarr(h1,h2,h3,h4,m))).lt.numtiny.and.diffr.lt.numtiny) then
	       if(abs(aimag(resarr(h1,h2,h3,h4,m))).lt.numtiny.and.diffim.lt.numtiny) then
	         identical=.true.
	       elseif(diffim/abs(aimag(resarr(h1,h2,h3,h4,m))).le.comptiny) then
	         identical=.true.	
	       else
	         identical=.false.
	         exit
	       endif
	     elseif(diffr/abs(real(resarr(h1,h2,h3,h4,m))).le.comptiny) then
	       if(abs(aimag(resarr(h1,h2,h3,h4,m))).lt.numtiny.and.diffim.lt.numtiny) then
	         identical=.true.
	       elseif(diffim/abs(aimag(resarr(h1,h2,h3,h4,m))).le.comptiny) then
	         identical=.true.
	       else
	         identical=.false.
	         exit
	       endif
	      else
	        identical=.false.
	        exit
	     endif
	    enddo
ccc check if we found a result which is identical
	    if(identical) then
	      heli(1)=i
	      heli(2)=j
	      heli(3)=k
	      heli(4)=l
	      call converthel2ind(heli,compres)
	      return
	    endif
	   enddo
	  enddo
	 enddo
	enddo
cc did not find an equal result
	compres=999
	return
	end