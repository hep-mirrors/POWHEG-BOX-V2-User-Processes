cc the routine for the colour-flows of the "remnants" after splitting the reals
cc make sure that this routine is always called with qg, gq has to be swichted before!
	subroutine compCF_split(flst,p,jamp2)
	implicit none
	include 'nlegborn.h'
	include 'pwhg_flg.h'
	include 'pwhg_kn.h'
	include 'pwhg_math.h'
	include 'sqsq_realqg.h'
	include 'PhysPars.h'
	integer flst(1:nlegreal)
	integer fla1,fla2,chir1,chir2,i,iind,j
	real*8 p(0:3,nlegreal),presh(0:3,nlegreal),ampsq,temp
	real*8 pres(0:3),pnonres(0:3),pqbar(0:3),kq(0:3),kg(0:3)
	real*8 props2g2,props2g,props1gs2g,props1twg,wglu
	real*8 n(0:3)
	real*8 jamp2(0:maxflow),jamp2sub(1:maxflow)
	real*8 M12,M22,M32,M1M2,M1M3,M1M4,M1M5,M1M1u,M1M2u,M1M3u,
     .       M1M4u,M1M5u,M2M3,M2M4,M2M5,M2M2u,M2M3u,M2M4u,M2M5u,M3M4,M3M5,
     .       M3M3u,M3M4u,M3M5u,M4M4u,M4M5u,M5M5u,M2M1u,M3M1u,M4M1u,M5M1u,
     .       M3M2u,M4M2u,M5M2u,M4M3u,M5M3u,M5M4u
	real*8 dotp,oneN
	external dotp
	external M12,M22,M32,M1M2,M1M3,M1M4,M1M5,M1M1u,M1M2u,M1M3u,
     .       M1M4u,M1M5u,M2M3,M2M4,M2M5,M2M2u,M2M3u,M2M4u,M2M5u,M3M4,M3M5,
     .       M3M3u,M3M4u,M3M5u,M4M4u,M4M5u,M5M5u,M2M1u,M3M1u,M4M1u,M5M1u,
     .       M3M2u,M4M2u,M5M2u,M4M3u,M5M3u,M5M4u

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
ccc as in case of the usual compreal-routine: first add the contributions of the
ccc normal order, then switch sq 1 and 2 and add the rest
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
	s1twg=dotp(pnonres+pqbar,pnonres+pqbar)-mgo**2
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

	props1twg=s1twg/(s1twg**2+par_mglu**2*wglu**2) !only one wglu relevant!
cc for the interference-terms between t and u channel for uLuL 
cc see the formula 78/79 in the old prospino paper-> product of 2 principal value-integrals and 2 delta-functions
	props1gs2g=(s1twg*s2g+par_mglu**2*wglu**2)/(s1twg**2+par_mglu**2*wglu**2)/
     .               (s2g**2+par_mglu**2*wglu**2)

cccccccccccccccccccccccccccccccccccccccccccc
ccc now collect the different contributions:
ccc for flg_split==1: only the resonant part is kept
ccc for flg_split==2: both the resonant and the interference terms contribute
ccc for flg_split==3: we keep only the pole-parts of the resonant and interference terms
ccc                   MOREOVER, for uLuL we calculate the FULL extra-terms due to "u-t-interference"
	deltac1c2=0
	if(chir1.eq.chir2) deltac1c2=1

ccc the resonant parts:
	if(flg_split.lt.3) then
cc see comments in compreal
!!! for the split1 and 2 options: always use the unexpanded parts...
	     jamp2(1)=jamp2(1)+oneN**2*(M12(99)+M32(99)+2d0*M1M3(99))*props2g2
	     jamp2(2)=jamp2(2)+(M22(99)+M32(99)-2d0*M2M3(99))*props2g2
	     jamp2(3)=jamp2(3)+(M12(99)+M22(99)+2d0*M1M2(99))*props2g2
	else
	  jamp2(1)=jamp2(1)+oneN**2*(M12(0)+M32(0)+2d0*M1M3(0))*props2g2
	  jamp2(2)=jamp2(2)+(M22(0)+M32(0)-2d0*M2M3(0))*props2g2
	  jamp2(3)=jamp2(3)+(M12(0)+M22(0)+2d0*M1M2(0))*props2g2
	endif

ccc the interference terms:
	if(flg_split.eq.2) then
	   jamp2(2)=jamp2(2)+2d0*(-M2M4(99)+M3M4(99))*props2g
	   jamp2(3)=jamp2(3)+2d0*(M1M5(99)+M2M5(99))*props2g
ccc the additional terms for "u-t-interference" for uLuL:
	  if(chir1.eq.chir2.and.fla1.eq.fla2) then
	    jamp2(1)=jamp2(1)-oneN*2d0*((M1M1u(99)+M1M2u(99)+M3M1u(99)+M3M2u(99))*props1gs2g
     .                                  +(M1M5u(99)+M3M5u(99))*props2g)
	    jamp2(2)=jamp2(2)-oneN*2d0*(-M2M4u(99)-M2M5u(99)+M3M4u(99)+M3M5u(99))*props2g
	    jamp2(3)=jamp2(3)-oneN*2d0*(M1M1u(99)+M1M3u(99)+M2M1u(99)+M2M3u(99))*props1gs2g
     .                                 -oneN*2d0*(M5M1u(99)+M5M3u(99))*props1twg
	    jamp2(4)=jamp2(4)-oneN*2d0*(M4M3u(99)-M4M2u(99)+M5M3u(99)-M5M2u(99))*props1twg

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
	      s1twg=dotp(presh(0:3,3)+presh(0:3,nlegreal),presh(0:3,3)+presh(0:3,nlegreal))-mgo**2
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

	        jamp2sub(1)=jamp2sub(1)+oneN**2*(M12(0)+M32(0)+2d0*M1M3(0))*props2g2
	        jamp2sub(2)=jamp2sub(2)+(M22(0)+M32(0)-2d0*M2M3(0))*props2g2
	        jamp2sub(3)=jamp2sub(3)+(M12(0)+M22(0)+2d0*M1M2(0))*props2g2
	  endif
	 endif

cc now switch "t and u channels" for same flavour result and recalculate the ME^2 
	if(fla1.eq.fla2) then
	  temp=msq1
	  msq1=msq2
	  msq2=temp

cc recalculate the invariants:
	  s=dotp(kq+kg,kq+kg)
	  s1=dotp(pres+pnonres,pres+pnonres)
	  s2g=dotp(pnonres+pqbar,pnonres+pqbar)-mgo**2
	  s1twg=dotp(pres+pqbar,pres+pqbar)-mgo**2
	  t1=dotp(pres-kq,pres-kq)
	  t2=dotp(pqbar-kg,pqbar-kg)

	  if(gauge.eq.1) then
	    npq=dotp(n,kq)
	    npg=dotp(n,kg)
	    nk1=dotp(n,pres)
	    nk2=dotp(n,pnonres)
	    nkq=dotp(n,pqbar)
	  endif
cc in case of uLuR: this could change too:
	  if(msq2.gt.par_mglu) then
	    wglu=0d0
	  else
	    wglu=par_wglu_res
	  endif

cc and a new resonant propagator:
	  props2g2=1d0/(s2g**2+par_mglu**2*wglu**2)
	  props2g=s2g*props2g2

	  if(flg_split.lt.3) then
	      jamp2(1)=jamp2(1)+(M12(99)+M22(99)+2d0*M1M2(99))*props2g2
	      jamp2(3)=jamp2(3)+oneN**2*(M12(99)+M32(99)+2d0*M1M3(99))*props2g2
	      jamp2(4)=jamp2(4)+(M22(99)+M32(99)-2d0*M2M3(99))*props2g2
	  else
	      jamp2(1)=jamp2(1)+(M12(0)+M22(0)+2d0*M1M2(0))*props2g2
	      jamp2(3)=jamp2(3)+oneN**2*(M12(0)+M32(0)+2d0*M1M3(0))*props2g2
	      jamp2(4)=jamp2(4)+(M22(0)+M32(0)-2d0*M2M3(0))*props2g2
	  endif
ccc the interference terms (the u-t- interference terms for split==3 are all computed in the noraml CF-routine
	    if(flg_split.eq.2) then
	      jamp2(1)=jamp2(1)+2d0*(M1M5(99)+M2M5(99))*props2g
	      jamp2(4)=jamp2(4)+2d0*(M3M4(99)-M2M4(99))*props2g
	    endif
ccccccccccccccccccccccccccccccccccccccccccccc
cc the subtraction term:
cc note that we have to switch the momenta 3 and 4 here!!
	  if(msq2.lt.par_mglu.and.flg_submethod.eq.1) then
	    if(dsqrt(s)-par_mglu-msq1.ge.0d0) then !the second theta-function for the subtraction
	      call switchmom(p,presh,3,4) !recycle presh here...
	      call reshuffle_momenta_2(presh,msq1,msq2,0d0,par_mglu,presh)

cc now recalculate the invariants with the reshuffled momenta:
	      s=dotp(presh(0:3,1)+presh(0:3,2),presh(0:3,1)+presh(0:3,2))
	      s1=dotp(presh(0:3,3)+presh(0:3,4),presh(0:3,3)+presh(0:3,4))
	      s1twg=dotp(presh(0:3,3)+presh(0:3,nlegreal),presh(0:3,3)+presh(0:3,nlegreal))-mgo**2
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

	        jamp2sub(1)=jamp2sub(1)+(M12(0)+M22(0)+2d0*M1M2(0))*props2g2
	        jamp2sub(3)=jamp2sub(3)+oneN**2*(M12(0)+M32(0)+2d0*M1M3(0))*props2g2
	        jamp2sub(4)=jamp2sub(4)+(M22(0)+M32(0)-2d0*M2M3(0))*props2g2
	    endif
	   endif
	endif

	do i=1,4
	  jamp2(i)=jamp2(i)-jamp2sub(i)
	enddo
	end
