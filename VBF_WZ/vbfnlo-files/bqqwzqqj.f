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
      
      common /hcount/ h
 
c   introduce local pbar for momenta of external legs and identify 
c   gluon momentum qbar with pbarl(9) :	
      do mu = 0,3	
      	do i= 1,8
	   pbarl(mu,i) = pbar(mu,i)
	enddo   
	pbarl(mu,9) = qbar(mu)
      enddo
      
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
 
c test only:
c	do i= 1,2
c	   as(i) = 1d0
c	   al(i) = 1d0
c	enddo    
 
c -------
	
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
	if (abs(uucs(i)/ans(i)-1).gt.3d-3) pause
       endif
       
       ipwr = 2
       call sddcsg(pbarl,sign,gsign,al,ans)
       if(ddcs(i).ne.0d0.and.ans(i).ne.0d0) then
	if (abs(ddcs(i)/ans(i)-1).gt.5d-1) then 
	print*,' sign = ',sign
	print*,' gsign = ',gsign
	print*,' ddcs: ',ddcs,' mg2 ',ans,' ratio = ',ddcs(i)/ans(i)
	print*,' ddcs: ',ddcs(i)/ans(i)
	endif
	if (abs(ddcs(i)/ans(i)-1).gt.3d-3) pause
       endif
       
       ipwr = 3
       call sudccg(pbarl,sign,gsign,al,ans)
       if(udcc(i).ne.0d0.and.ans(i).ne.0d0) then
	if (abs(udcc(i)/ans(i)-1).gt.5d-1) then 
	print*,' sign = ',sign
	print*,' gsign = ',gsign
	print*,' udcc: ',udcc,' mg2 ',ans,' ratio = ',udcc(i)/ans(i)
	print*,' udcc: ',udcc(i)/ans(i)
	endif
        if (abs(udcc(i)/ans(i)-1).gt.3d-3) pause
       endif
       
       ipwr = 4
       call sudssg(pbarl,sign,gsign,al,ans)
       if(udss(i).ne.0d0.and.ans(i).ne.0d0) then
	 if (abs(udss(i)/ans(i)-1).gt.5d-1) then 
	print*,' sign = ',sign
	print*,' gsign = ',gsign
	print*,' udss: ',udss,' mg2 ',ans,' ratio = ',udss(i)/ans(i)
	print*,' udss: ',udss(i)/ans(i)
	endif
	if (abs(udss(i)/ans(i)-1).gt.1d-3) pause
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

    
      elseif (bos.eq.42) then	
   
      if (.false.) then	  ! comparison to qqzzqqj-results
      
      print*,'comparison of W-Z MEs:'
      
      do i=1,3
      
       ipmr = 1
       call suuscg(pbarl,sign,gsign,al,ans)
       if(uusc(i).ne.0d0.and.ans(i).ne.0d0) then
	if (abs(uucs(i)/ans(i)-1).gt.5d-1) then 
	print*,' sign = ',sign
	print*,' gsign = ',gsign
	print*,' uusc: ',uusc,' mg2 ',ans,' ratio = ',uusc(i)/ans(i)
	print*,' uusc: ',uusc(i)/ans(i)
	endif   
	if (abs(uucs(i)/ans(i)-1).gt.3d-3) pause
       endif
       
       ipmr = 2
       call sddscg(pbarl,sign,gsign,al,ans)
       if(ddsc(i).ne.0d0.and.ans(i).ne.0d0) then
	if (abs(ddsc(i)/ans(i)-1).gt.5d-1) then 
	print*,' sign = ',sign
	print*,' gsign = ',gsign
	print*,' ddsc: ',ddsc,' mg2 ',ans,' ratio = ',ddsc(i)/ans(i)
	print*,' ddsc: ',ddsc(i)/ans(i)
	endif
	if (abs(ddsc(i)/ans(i)-1).gt.3d-3) pause
       endif
       
       ipmr = 3
       call sduccg(pbarl,sign,gsign,al,ans)
       if(ducc(i).ne.0d0.and.ans(i).ne.0d0) then
	if (abs(ducc(i)/ans(i)-1).gt.5d-1) then 
	print*,' sign = ',sign
	print*,' gsign = ',gsign
	print*,' ducc: ',ducc,' mg2 ',ans,' ratio = ',ducc(i)/ans(i)
	print*,' ducc: ',ducc(i)/ans(i)
	endif
        if (abs(ducc(i)/ans(i)-1).gt.3d-3) pause
       endif
       
       ipmr = 4
       call sdussg(pbarl,sign,gsign,al,ans)
       if(duss(i).ne.0d0.and.ans(i).ne.0d0) then
	 if (abs(duss(i)/ans(i)-1).gt.5d-1) then 
	print*,' sign = ',sign
	print*,' gsign = ',gsign
	print*,' duss: ',duss,' mg2 ',ans,' ratio = ',duss(i)/ans(i)
	print*,' duss: ',duss(i)/ans(i)
	endif
	if (abs(duss(i)/ans(i)-1).gt.1d-3) pause
       endif

      enddo
      endif


      ipmr = 1
      call suuscg (pbarl,sign,gsign,al,uusc)
      ipmr = 2
      call sddscg (pbarl,sign,gsign,al,ddsc)
      ipmr = 3
      call suuscg (pbs  ,fs  ,gsign,as,temp)
       call revers(temp,ducc)
      ipmr = 4
      call sddscg (pbs  ,fs  ,gsign,as,temp)
       call revers(temp,duss)


c rename amplitudes to be consistent with call of routine:
      do i = 1,3	
	ans1(i) = uusc(i)
	ans2(i) = ddsc(i)
	ans3(i) = ducc(i)
	ans4(i) = duss(i)
      enddo
      
       else 
       	print*,'this choice of bos = ',bos,' is not implemented'
    
       endif

      end
      
c--------------------------------------------------------------       
