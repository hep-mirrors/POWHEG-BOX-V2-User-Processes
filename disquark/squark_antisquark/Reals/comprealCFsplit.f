cc the routine for the colour-flows of the "remnants" after splitting the reals
cc make sure that this routine is always called with qg, gq has to be swichted before!
	subroutine compCF_split(flst,p,jamp2)
	implicit none
	include 'nlegborn.h'
	include 'pwhg_flg.h'
	include 'pwhg_kn.h'
	include 'pwhg_math.h'
	include 'sqantisq_realqg.h'
	include 'PhysPars.h'
	integer flst(1:nlegreal)
	integer fla1,fla2,chir1,chir2,i,iind,j
	real*8 p(0:3,nlegreal),presh(0:3,nlegreal),ampsq,temp
	real*8 pres(0:3),pnonres(0:3),pqbar(0:3),kq(0:3),kg(0:3)
	real*8 props2g2,props2g,props1gs2g,props1twg,wglu
	real*8 n(0:3)
	real*8 jamp2(0:maxflow),jamp2sub(1:maxflow)
	real*8 M1M2,M22,M2M3,M2M4,M2M5,M2M6,M2M7,M2M8,M2M9,M2M10,M2M11,
     .        M1M5,M3M5,M4M5,M52,M5M6,M5M7,M5M8,M5M9,M5M10,M5M11,
     .        M1M10,M3M10,M4M10,M6M10,M7M10,M8M10,M9M10,M102,M10M11
	real*8 dotp,oneN
	external dotp
	external M1M2,M22,M2M3,M2M4,M2M5,M2M6,M2M7,M2M8,M2M9,M2M10,M2M11,
     .        M1M5,M3M5,M4M5,M52,M5M6,M5M7,M5M8,M5M9,M5M10,M5M11,
     .        M1M10,M3M10,M4M10,M6M10,M7M10,M8M10,M9M10,M102,M10M11

cccc NEVER USE THIS ROUTINE FOR THE REMNANTS AFTER SPLITTING THE REALS!!!
	if(flg_btilde) then
	  write(*,*) 'Calling the color-flow routine for "split" for a Btilde-event -> STOP!'
	  call exit(-1)
	endif

	if(flst(1).ne.0.and.flst(2).ne.0) then
	  write(*,*) 'Calling the color-flow routine for "split" with qq-IS-> STOP!'
	  call exit(-1)
	endif

	if(.not.flst(2).eq.0) then
	  write(*,*) 'Calling compreal for inconsistent flst:',flst
	  call exit(-1)
	endif

cccc set everything to 0
	jamp2(0)=4
	do i=1,maxflow
	  jamp2(i)=0d0
	  jamp2sub(i)=0d0
	enddo

cc the flavour-structure
	fla1=abs(mod(flst(3),pdgfac))
	fla2=abs(mod(flst(4),pdgfac))
	chir1=abs(flst(3))/pdgfac
	chir2=abs(flst(4))/pdgfac

	oneN=0d0 !the 1/Nc-factor
	if(flg_colsupp) oneN=1d0/3d0

ccc now assign the momenta and masses
	do i=0,3
	  kg(i)=p(i,2)
	  kq(i)=p(i,1)
	  pqbar(i)=p(i,nlegreal)
	enddo

	mgo=par_mglu
ccc now assign the other momenta
ccc the masses have to be assigned correctly in the calling routine!!!
      do i=0,3
	  pres(i)=p(i,4)
	  pnonres(i)=p(i,3)
	enddo

ccc Ga!=0 only if we have a possible resonance; 
ccc otherwise: no tan-mapping at all, just integrate for Ga=0!!
ccc note: msq2 is ALWAYS the (potentially) resonant squark!!
	if(par_mglu.lt.msq2) then
	   wglu=0d0
	else
	  wglu=par_wglu_res
	endif

ccc if we use the light-cone gauge: have to specify n:
	n(0)=0.5d0
	n(1)=0d0
	n(2)=0d0
	n(3)=-sign(0.5d0,kg(3))

ccc now we can calculate the invariants:
	s=dotp(kq+kg,kq+kg)
	s1=dotp(pres+pnonres,pres+pnonres)
	s2g=dotp(pres+pqbar,pres+pqbar)-mgo**2
	t1=dotp(pnonres-kq,pnonres-kq)
	t2=dotp(pqbar-kg,pqbar-kg)

	if(gauge.eq.1) then
	  npq=dotp(n,kq)
	  npg=dotp(n,kg)
	  nk1=dotp(n,pnonres)
	  nk2=dotp(n,pres)
	  nkq=dotp(n,pqbar)
	endif

cc the propagators in the resonant parts: 
cc as we consider only the btilde terms here: no tan-mapping...
	props2g2=1d0/(s2g**2+par_mglu**2*wglu**2)
	props2g=s2g*props2g2

cccccccccccccccccccccccccccccccccccccccccccc
ccc now collect the different contributions:
ccc for flg_split==1: only the resonant part is kept
ccc for flg_split==2: both the resonant and the interference terms contribute
ccc for flg_split==3: we keep only the pole-parts of the resonant and interference terms
ccc                   MOREOVER, for uLuL we calculate the FULL extra-terms due to "u-t-interference"
	deltac1c2=0
	if(chir1.eq.chir2) deltac1c2=1

	if(fla1.eq.fla2.and.chir1.eq.chir2) then 
	  if(fla1.ne.flst(nlegreal)) then
	    write(*,*) 'Wrong FLST in comprealCF_split:'
	    write(*,*),flst
	    call exit(-1)
	  endif
	endif
	
       if(flg_split.lt.3) then
	    jamp2(1)=jamp2(1)+oneN**2*(M22(99)+M102(99)+
     .               2d0*M2M10(99))*props2g2
	    jamp2(2)=jamp2(2)+(M52(99)+M102(99)-
     .              2d0*M5M10(99))*props2g2
	    jamp2(3)=jamp2(3)+(M22(99)+M52(99)+
     .               2d0*M2M5(99))*props2g2
	else
	    jamp2(1)=jamp2(1)+oneN**2*(M22(0)+M102(0)+
     .               2d0*M2M10(0))*props2g2
	    jamp2(2)=jamp2(2)+(M52(0)+M102(0)-
     .              2d0*M5M10(0))*props2g2
	    jamp2(3)=jamp2(3)+(M22(0)+M52(0)+
     .               2d0*M2M5(0))*props2g2
	endif

ccc the interference terms:
	if(flg_split.eq.2) then
	  if(fla1.eq.fla2.and.chir1.eq.chir2) then
	   	        jamp2(1)=jamp2(1)-2d0*oneN*(M1M2(99)+
     .              M2M6(99)-M2M8(99)+M2M9(99)+M1M10(99)+
     .              M6M10(99)-M8M10(99)+M9M10(99))*props2g
	        jamp2(2)=jamp2(2)+2d0*(-M3M5(99)+M3M10(99))*props2g-
     .               2d0*oneN*(-M5M6(99)-M5M7(99)-2d0*M5M9(99)+
     .                   M6M10(99)+M7M10(99)+2d0*M9M10(99))*props2g
	        jamp2(3)=jamp2(3)+2d0*(M2M4(99)+M4M5(99))*props2g-
     .               2d0*oneN*(M1M2(99)+M2M11(99)+M1M5(99)+
     .                   M5M11(99))*props2g
         else
	   jamp2(2)=jamp2(2)+2d0*(-M3M5(99)+M3M10(99))*props2g
	   jamp2(3)=jamp2(3)+2d0*(M2M4(99)+M4M5(99))*props2g
	  endif
	endif

ccccccccccccccccccccccccccccccccccccccccccccc
cc the subtraction term:
	if(msq2.lt.par_mglu.and.flg_submethod.eq.1) then
	  if(dsqrt(s)-par_mglu-msq1.ge.0d0) then !the second theta-function for the subtraction

cc perform the reshuffling, support only CS-type-reshuffling here!!
cc note: resonance in 45-> no switching necessary...
	      call reshuffle_momenta_2(p,msq1,msq2,0d0,par_mglu,presh)

cc now recalculate the invariants with the reshuffled momenta:
	      s=dotp(presh(0:3,1)+presh(0:3,2),presh(0:3,1)+presh(0:3,2))
	      s1=dotp(presh(0:3,3)+presh(0:3,4),presh(0:3,3)+presh(0:3,4))
! ! 	      s2g=dotp(presh(0:3,4)+presh(0:3,nlegreal),presh(0:3,4)+presh(0:3,nlegreal))-mgo**2
	      s2g=0d0
cc after reshuffling: s2g should be zero
	      t1=dotp(presh(0:3,3)-presh(0:3,1),presh(0:3,3)-presh(0:3,1))
	      t2=dotp(presh(0:3,nlegreal)-presh(0:3,2),presh(0:3,nlegreal)-presh(0:3,2))

cc if we use the light-cone gauge: have to specify n and the corresponding scalar products:
cc the 4-vector for the light-cone-gauge:
	      if(gauge.eq.1) then
	        n(0)=0.5d0
	        n(1)=0d0
	        n(2)=0d0
	        n(3)=-sign(0.5d0,presh(3,2))

	        npq=dotp(n,presh(0:3,1))
	        npg=dotp(n,presh(0:3,2))
	        nk1=dotp(n,presh(0:3,3))
	        nk2=dotp(n,presh(0:3,4))
	        nkq=dotp(n,presh(0:3,nlegreal))
	      endif

	      jamp2sub(1)=oneN**2*(M22(0)+M102(0)+2d0*M2M10(0))*props2g2
	      jamp2sub(2)=(M52(0)+M102(0)-2d0*M5M10(0))*props2g2
	      jamp2sub(3)=(M22(0)+M52(0)+2d0*M2M5(0))*props2g2
	  endif
	 endif

	do i=1,4
	  jamp2(i)=jamp2(i)-jamp2sub(i)
	enddo
	end
