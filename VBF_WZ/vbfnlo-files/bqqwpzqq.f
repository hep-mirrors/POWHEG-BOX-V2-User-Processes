c----------------------------------------------------------------------
c this routine is used for calling madgraph routines for calculating 
c	qq -> qq e+ve mu+mu- via V1 V2 (V1,V2=A,Z,W) 
c 	it can also be used for comparison of madgraphs results to 
c	matrix elements computed via 'qqwzqq.f'
c
c
c	modified by Barbara Jager: 2005 May 2006
c
c
c----------------------------------------------------------------------

      subroutine qqwzqq_comp(pbar,sign, nlo,bos,
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
c alfas, scales etc
      include 'scales.inc'
c
c variables for the main part of the program
c
      double precision  pbar(0:3,4+nv),  pbs(0:3,4+nv), ans,cns,
     $			ans1,ans2,ans3,ans4 
      double precision uucs,ddcs,udcc,udss,res(4)
      double precision uusc,ddsc,ducc,duss
      double precision  p(0:3,4+nv), p21(0:4), p43(0:4), p65(0:4),
     1                  p87(0:4), ph(0:4)
      integer  sign(4+nv), fs(4+nv), nlo, mu,i
      double complex wz,wzpm,wzmp
c      
      common /hcount / h
c assign momenta for switched quark lines
      do mu = 0,3
         pbs(mu,1) = pbar(mu,3)
         pbs(mu,2) = pbar(mu,4)
         pbs(mu,3) = pbar(mu,1)
         pbs(mu,4) = pbar(mu,2)
         do i = 5,8
            pbs(mu,i) = pbar(mu,i)
         enddo
      enddo
      fs(1) = sign(3)
      fs(2) = sign(4)
      fs(3) = sign(1)
      fs(4) = sign(2)
      do i = 5,8
         fs(i) = sign(i)
      enddo
 
c -------
      
      if (bos.eq.32) then  ! W+ Z
         
      if (.false.) then ! comparison to qqwzqq-results
      ipw = 1
      call suucs(pbar,sign,h,ans)
      if (abs(ans1/ans-1).gt.1d-3) then 
	 print*,' sign = ',sign
	 print*,' uucs: ',ans1,' mg2 ',ans,' ratio = ',ans1/ans
c	  if (abs(ans1/ans-1).gt.3d-3) read(*,'(a)') text
      endif
      ipw = 2
      call sddcs(pbar,sign,h,ans)
      if (abs(ans2/ans-1).gt.1d-3) then 
	print*,' sign = ',sign
	print*,' ddcs: ',ans2,' mg2 ',ans,' ratio = ',ans2/ans
c	 if (abs(ans2/ans-1).gt.1d-3) read(*,'(a)') text
      endif
      ipw = 3
      call sudcc(pbar,sign,h,ans)
      if (abs(ans3/ans-1).gt.1d-3) then 
	print*,' sign = ',sign
	print*,' udcc: ',ans3,' mg2: ',ans,' ratio = ',ans3/ans
c	if (abs(ans3/ans-1).gt.2d-3) read(*,'(a)') text
      endif
      ipw = 4
      call sudss(pbar,sign,h,ans)
      if (abs(ans4/ans-1).gt.1d-3) then 
	print*,' sign = ',sign
	print*,' udss: ',ans4,' mg2 ',ans,' ratio = ',ans4/ans
c	if (abs(ans4/ans-1).gt.2d-3) read(*,'(a)') text
      endif
      endif

c init:
      tampw = 0d0

      ipw = 1
      call suucs(pbar,sign,uucs)
      
      ipw = 2
      call sddcs(pbar,sign,h,ddcs)

      ipw = 3
      call sudcc(pbar,sign,h,udcc)

      ipw = 4
      call sudss(pbar,sign,h,udss)
      
c rename amplitudes to be consistent with call of routine:
	ans1 = uucs
	ans2 = ddcs
	ans3 = udcc
	ans4 = udss

c        print*,'bqq:udss=',udss

c -------
          
      else 
      
      print*, 'bos must be 32, not ',bos
      
      endif
      
      end
