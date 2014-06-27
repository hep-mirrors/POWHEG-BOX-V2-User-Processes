	subroutine assign_realCF(jamp2,coltemp)
	implicit none
	include 'nlegborn.h'
      include 'LesHouches.h'
	integer NCflow,ColNr,i
	integer coltemp(2,nlegreal,maxflow)
	real*8 random,ampsum(maxflow),xtarget,
     &       jamp2(0:maxflow)
	external random

ctaken from MadGraph5, V1.3.1
c
c     Now choose a color flow
c
      NCflow = jamp2(0) !number of color-flows

cc jamp2 could be negative!!!!
cc use absolute values here!!
      if(NCflow.gt.0)then
        ampsum(1)=abs(jamp2(1))
        do i =2,NCflow
          ampsum(i) = abs(jamp2(i))+ampsum(i-1)
        enddo
        xtarget=random()*ampsum(NCflow)
        ColNr = 1
        do while (ampsum(ColNr) .lt. xtarget .and. ColNr .lt. NCflow)
          ColNr=ColNr+1
        enddo
      endif
c
c     use the determined colorflow
c
      do i=1,NUP
	   icolup(1,i)=coltemp(1,i,ColNr) 
	   icolup(2,i)=coltemp(2,i,ColNr)
      enddo
	end