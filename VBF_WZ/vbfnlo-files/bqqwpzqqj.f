c----------------------------------------------------------------------
c this routine is used for calling madgraph routines for calculating 
c	qq -> qq e+ve mu+mu-g via V1 V2 (V1,V2=A,Z,W) if bos = 32 or
c	qq -> qq e-ve~vm vm~g via V1 V2 (V1,V2=A,Z,W) if bos = 42;
c 	It can also be used for comparison of madgraphs results to 
c	matrix elements computed via 'qqwzqqj.f'
c
c	last modified by Barbara Jager: 2006 May
c	
c----------------------------------------------------------------------

      subroutine qqwzqqj_comp(pbar,sign,qbar,gsign,bos,
     1                  ans1,ans2,ans3,ans4)
      implicit none               
      integer bos               ! 32 for W+Z , 42 for W-Z 
      integer h ! selects lepton helicity

      real * 8 pi,pi2
      parameter (pi=3.141592653589793238462643383279502884197D0,
     1           pi2=pi**2)

      include 'global.inc'
      include 'tensorw.inc'
c
c alfas, scales etc.:
      include 'scales.inc'
c
c variables for the main part of the program
c
      double precision  pbar(0:3,4+nv), pbs(0:3,np+nv),qbar(0:4),
     # 		ans1(3),ans2(3),ans3(3),ans4(3)
      double precision  rev(3),temp(3),ans(3),ansc(3)
      double precision  pbarl(0:3,np+nv)
      real*8 al(2),as(2)
      double precision uucs(3),ddcs(3),udcc(3),udss(3),res(4)
      double precision uusc(3),ddsc(3),ducc(3),duss(3)
      integer  sign(4+nv), fs(4+nv), gsign, mu,i
      
c      common /hcount/ h
 
c   introduce local pbar for momenta of external legs and identify 
c   gluon momentum qbar with pbarl(9) :	
      do mu = 0,3	
      	do i= 1,8
	   pbarl(mu,i) = pbar(mu,i)
	enddo   
	pbarl(mu,9) = qbar(mu)
      enddo

c init:
      ans1=0d0
      ans2=0d0
      ans3=0d0
      ans4=0d0

      
c coupling of gluon to upper(1)/lower(2) quark line:
	      
	al(1) = als(1,1)	
	al(2) = als(2,1)      

c  assign momenta for switched quark lines:

      do mu = 0,3
         pbs(mu,1) = pbarl(mu,3)
         pbs(mu,2) = pbarl(mu,4)
         pbs(mu,3) = pbarl(mu,1)
         pbs(mu,4) = pbarl(mu,2)
         do i = 5,9
            pbs(mu,i) = pbarl(mu,i)
         enddo
      enddo

      fs(1) = sign(3)
      fs(2) = sign(4)
      fs(3) = sign(1)
      fs(4) = sign(2)
      do i = 5,8
         fs(i) = sign(i)
      enddo	

c gqq coupling for switched quark lines:
      
        as(1) = als(2,1)
	as(2) = als(1,1) 
 
	
      if (bos.eq.32) then	
   
      if (.false.) then	  ! comparison to qqwzqqj-results uucs etc.
      do i=1,3
      
       ipwr = 1
       call suucsg(pbarl,sign,gsign,al,ans)
       if(uucs(i).ne.0d0.and.ans(i).ne.0d0) then
	if (abs(uucs(i)/ans(i)-1).gt.5d-1) then 
	print*,' sign = ',sign
	print*,' gsign = ',gsign
	print*,' uucs: ',uucs,' mg2 ',ans,' ratio = ',uucs(i)/ans(i)
	print*,' uucs: ',uucs(i)/ans(i)
	endif   
       endif
       
       ipwr = 2
       if(ddcs(i).ne.0d0.and.ans(i).ne.0d0) then
	if (abs(ddcs(i)/ans(i)-1).gt.5d-1) then 
	print*,' sign = ',sign
	print*,' gsign = ',gsign
	print*,' ddcs: ',ddcs,' mg2 ',ans,' ratio = ',ddcs(i)/ans(i)
	print*,' ddcs: ',ddcs(i)/ans(i)
	endif
       endif
       
       ipwr = 3

       if(udcc(i).ne.0d0.and.ans(i).ne.0d0) then
	if (abs(udcc(i)/ans(i)-1).gt.5d-1) then 
	print*,' sign = ',sign
	print*,' gsign = ',gsign
	print*,' udcc: ',udcc,' mg2 ',ans,' ratio = ',udcc(i)/ans(i)
	print*,' udcc: ',udcc(i)/ans(i)
	endif
       endif
       
       ipwr = 4
       if(udss(i).ne.0d0.and.ans(i).ne.0d0) then
	 if (abs(udss(i)/ans(i)-1).gt.5d-1) then 
	print*,' sign = ',sign
	print*,' gsign = ',gsign
	print*,' udss: ',udss,' mg2 ',ans,' ratio = ',udss(i)/ans(i)
	print*,' udss: ',udss(i)/ans(i)
	endif
       endif
       
      enddo
      endif

      ipwr = 1
      call suucsg (pbarl,sign,gsign,al,uucs)
      ipwr = 2
      call sddcsg (pbarl,sign,gsign,al,ddcs)
      ipwr = 3
      call suucsg (pbs  ,fs  ,gsign,as,temp)
      call revers(temp,udcc)
      ipwr = 4
      call sddcsg (pbs  ,fs  ,gsign,as,temp)
      call revers(temp,udss)
      

c rename amplitudes to be consistent with call of routine:
      do i = 1,3
	ans1(i) = uucs(i)
	ans2(i) = ddcs(i)
	ans3(i) = udcc(i)
	ans4(i) = udss(i)
      enddo 


   
c--------------------
    
       else 
       	print*,'this choice of bos = ',bos,' is not implemented'
    
       endif

      end
