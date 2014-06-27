cc the main function to compute real contributions to sq-antisq-contribution
cc for gg-part: simply call the generated MG-routines
cc for qg-part: ALWAYS use own calculation
cc for qqbar-part: perform first a crossing, then call routines
	real*8 function compreal(flst,p)
	implicit none
	include 'nlegborn.h'
	include 'pwhg_kn.h'
	include 'pwhg_flg.h'
	include 'pwhg_math.h'
	include 'sqantisq_realqg.h'
	include 'sqantisq_realqg_col.h'
	include 'PhysPars.h'
	integer flst(1:nlegreal),flstcp(1:nlegreal),i,j
	integer fla1,fla2,chir1,chir2,temp
	real*8 p(0:3,1:nlegreal),pcopy(0:3,1:nlegreal),presh(0:3,1:nlegreal)
	real*8 pMG(0:3,5)
	real*8 wglu
	real*8 n(0:3)
	real*8 props2g,props2g2
	real*8 jamp2(0:6)
	real*8 resamp
	real*8 M42,M6M11,M4M11,M6M8,M6M9,M6M7,M32,M9M11,M1M9,
     .       M1M8,M1M3,M1M4,M1M7,M1M6,M7M9,M7M8,M3M7,M3M6,M3M4,M3M9,
     .       M3M8,M8M9,M92,M12,M72,M4M8,M4M9,M82,M4M6,M4M7,M112,
     ,       M1M11,M62,M3M11,M7M11,M2M7,M5M9,M7M10,M2M4,M1M2,
     .       M5M8,M2M5,M5M10,M1M5,M3M5,M5M11,M6M10,M4M5,M4M10,M2M3,
     .       M9M10,M3M10,M52,M8M10,M10M11,M22,M102,M5M7,M2M11,M2M8,
     .       M2M9,M2M6,M1M10,M5M6,M2M10,M8M11
	real*8 dotp,lambda
	logical flag_res,flag_inter,flag_nonres,flag_subtra,caseqg
	real*8 spincol,crossfac
	external dotp,lambda
	external M42,M6M11,M4M11,M6M8,M6M9,M6M7,M32,M9M11,M1M9,
     .       M1M8,M1M3,M1M4,M1M7,M1M6,M7M9,M7M8,M3M7,M3M6,M3M4,M3M9,
     .       M3M8,M8M9,M92,M12,M72,M4M8,M4M9,M82,M4M6,M4M7,M112,
     ,       M1M11,M62,M3M11,M7M11,M2M7,M5M9,M7M10,M2M4,M1M2,
     .       M5M8,M2M5,M5M10,M1M5,M3M5,M5M11,M6M10,M4M5,M4M10,M2M3,
     .       M9M10,M3M10,M52,M8M10,M10M11,M22,M102,M5M7,M2M11,M2M8,
     .       M2M9,M2M6,M1M10,M5M6,M2M10,M8M11

cccc NEVER USE THIS ROUTINE FOR THE REMNANTS AFTER SPLITTING THE REALS!!!
	if(.not.flg_btilde) then
	  write(*,*) 'Calling compreal for non-BTILDE-event -> stop!'
	  call exit(-1)
	endif

	do j=1,nlegreal
	  flstcp(j)=flst(j)
	  do i=0,3
	     pcopy(i,j)=p(i,j)
	  enddo
	enddo
		
	compreal=0d0
	caseqg=.true.
cc default-order of the masses
	msq1=kn_masses(3)
	msq2=kn_masses(4)
	mgo=par_mglu

ccc for debugging
	gauge=flg_gauge
	
	spincol=1d0/4d0*1d0/24d0 !default is qg
	crossfac=1d0
cc first check which case we have:
	if(flstcp(1).eq.flstcp(2)) then !only for both eq. to 0 possible
cc note: MG expects a 5-component momentum-vector!!!
	  do i=0,3
	    do j=1,4
	     pMG(i,j)=p(i,j)
	    enddo
	    pMG(i,5)=p(i,nlegreal)
	  enddo
	  call Sgg_sqsqbarg(pMG,compreal,jamp2)
	  return !already done...
	else if(flstcp(nlegreal).eq.0) then !only for qqbar: crossing...
cc make sure we have qqbar
	  caseqg=.false.
	  spincol=1d0/4d0*1d0/9d0
	  crossfac=-1d0 !we cross 1 massless fermion-> additional minus-sign in the end
	  if(flstcp(1).lt.flstcp(2)) then
	   call switchmom(pcopy,pcopy,1,2)
	   flstcp(1)=flst(2)
	   flstcp(2)=flst(1)
	  endif
cc now cross the second quark with the FS-gluon
	  temp=flstcp(2)
	  flstcp(2)=flstcp(nlegreal)
	  flstcp(nlegreal)=-temp
	  call switchmom(pcopy,pcopy,2,nlegreal)
cc the minus-signs from crossing
	  do i=0,3
          pcopy(i,2)=-pcopy(i,2)
          pcopy(i,nlegreal)=-pcopy(i,nlegreal)
	  enddo
	else if(flstcp(1)+flstcp(2).lt.0) then !the case of qbar g
cc form the cc process: switch particles 3 and 4
	  call switchmom(pcopy,pcopy,3,4)
	  msq1=kn_masses(4)
	  msq2=kn_masses(3)
	  flstcp(4)=-flst(3)
	  flstcp(3)=-flst(4)
	  flstcp(1)=-flst(1)
	  flstcp(2)=-flst(2)
	  flstcp(nlegreal)=-flst(nlegreal)
	endif
cc swithc 1<->2 for gq !
	if(flst(1).eq.0) then !for gq: switch momenta 1 and 2
	  call switchmom(pcopy,pcopy,1,2)
	endif

cc flavour/chirality of process at hand:
	chir1=abs(flstcp(3))/pdgfac
      chir2=abs(flstcp(4))/pdgfac !integer-division
      fla1=abs(flstcp(3))-chir1*pdgfac
      fla2=abs(flstcp(4))-chir2*pdgfac

cc NOTE: after crossing/switching we should always have the following order for qg-> sq antisq q
cc       kn_preal(0:3,1)-> pq
cc       kn_preal(0:3,2)-> pg
cc       kn_preal(0:3,3)-> k1
cc       kn_preal(0:3,4)-> k2
cc       kn_preal(0:3,nlegreal)-> kq

cc the invariants:
	s=dotp(pcopy(0:3,1)+pcopy(0:3,2),pcopy(0:3,1)+pcopy(0:3,2))
	s1=dotp(pcopy(0:3,3)+pcopy(0:3,4),pcopy(0:3,3)+pcopy(0:3,4))
	s2g=dotp(pcopy(0:3,4)+pcopy(0:3,nlegreal),pcopy(0:3,4)+pcopy(0:3,nlegreal))-mgo**2
	t1=dotp(pcopy(0:3,3)-pcopy(0:3,1),pcopy(0:3,3)-pcopy(0:3,1))
	t2=dotp(pcopy(0:3,nlegreal)-pcopy(0:3,2),pcopy(0:3,nlegreal)-pcopy(0:3,2))

cc if we use the light-cone gauge: have to specify n and the corresponding scalar products:
cc the 4-vector for the light-cone-gauge:
	if(gauge.eq.1) then
	  n(0)=0.5d0
	  n(1)=0d0
	  n(2)=0d0
	  n(3)=-sign(0.5d0,pcopy(3,2))

	  npq=dotp(n,pcopy(0:3,1))
	  npg=dotp(n,pcopy(0:3,2))
	  nk1=dotp(n,pcopy(0:3,3))
	  nk2=dotp(n,pcopy(0:3,4))
	  nkq=dotp(n,pcopy(0:3,nlegreal))
	endif

	if(msq2.gt.par_mglu.or.flst(nlegreal).eq.0) then
	  wglu=0d0
	else
	  wglu=par_wglu_res
	endif

cc Call the different functions for the different cases (all relevant diagrams 
cc are contained in uLuLu!)
cc the go-width is only nonzero if we really have to apply a subtraction!!
cc if flg_submethod.eq.0: we either dont need subtraction, or we dont want it...
cc distinguish the different cases: i) take all elements of M^2 (for qqbar IS, for DS "classical")
cc                                  ii) leave out all M_res^2-terms (for DR,DR-II and DS in the "usual" split-mode for btilde-events)
cc                                  iii) in the "new" split-mode: leave out only the terms ~1/s2g^2 (for btilde-events)
cc                                  iv) leave out the intererence-terms (for DR, DS with split==2)
cc                                  v) in the new split-mode: leave out only the terms ~1/s2g (for btilde-events)
cc                                  vi) if we consider a remnant event in case of the split-modes: no non-res. squared terms
cc we separate these cases here by defining different flags:
cc  flag_nonres: is T for both DR, classical DS and for the split-modes if we consider a btilde-event
cc  flag_res: is T for classical DS, for the split-modes: distinguish a) btilde and remnants and b) for split==3: the terms wo any 1/s2g-dependence are accounted to the nonres temrs
cc  flag_inter: is T for DR-II and classical DS, for the split-modes: if split==1: attributed to btilde, if split==2: attributed to remnatn, if split==3: the 1/s2g-part to remnant, the rest to the btilde-part
cc  for all other cases: set them per default to true
cc  if no subtraction necessary: flg_submethod==0 anyway...
	flag_nonres=.true.
	flag_res=.true.
	flag_inter=.true.
	flag_subtra=.true.
	if(flg_submethod.ge.2.or.(flg_split.ne.0)) flag_res=.false.
	if(flg_submethod.eq.2.or.(flg_split.gt.1)) flag_inter=.false.
	if((flg_split.ne.0).or.flg_submethod.ne.1.or.msq2.gt.par_mglu.or.fla2.ne.flstcp(nlegreal)) flag_subtra=.false.

cc the propagators in the resonant parts: 
cc if tan_map_abs=T: if we split the terms and consider the remnant-part:
	if(tan_map_abs.and.flg_split.gt.0.and.(.not.flg_btilde)) then
	  props2g2=1d0
	else
	  props2g2=1d0/(s2g**2+par_mglu**2*wglu**2)
	endif

	props2g=s2g*props2g2

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccc uLuL-production, distinguish uLuLbaru and uLuLbarc!!
	if(fla1.eq.fla2.and.chir1.eq.chir2) then 
	  deltac1c2=1 !same chirality
	  if(fla1.eq.abs(flstcp(nlegreal))) then !uLuLbaru-> all ME, depending on the subtraction
cc all terms of the non-resonant ME^2:
	    if(flag_nonres.or.(.not.caseqg)) then
	      compreal=compreal+CF_M12*M12()+CF_M32*M32()+CF_M42*M42()+CF_M62*M62()+
     .             CF_M72*M72()+CF_M82*M82()+CF_M92*M92()+CF_M112*M112()+
     .             2d0*(CF_M1M3*M1M3()+CF_M1M4*M1M4()+CF_M1M6*M1M6()+CF_M1M7*M1M7()+
     .                  CF_M1M8*M1M8()+CF_M1M9*M1M9()+CF_M1M11*M1M11()+CF_M3M4*M3M4()+
     .                  CF_M3M6*M3M6()+CF_M3M7*M3M7()+CF_M3M8*M3M8()+CF_M3M9*M3M9()+
     .                  CF_M3M11*M3M11()+CF_M4M6*M4M6()+CF_M4M7*M4M7()+CF_M4M8*M4M8()+
     .                  CF_M4M9*M4M9()+CF_M4M11*M4M11()+CF_M6M7*M6M7()+CF_M6M8*M6M8()+
     .                  CF_M6M9*M6M9()+CF_M6M11*M6M11()+CF_M7M8*M7M8()+CF_M7M9*M7M9()+
     .                  CF_M7M11*M7M11()+CF_M8M9*M8M9()+CF_M8M11*M8M11()+
     .                  CF_M9M11*M9M11())
cc for the "new" subtraction-scheme: we attribute all terms which are no longer propto 1/s2g^2 from the res. parts into this part
	      if(flg_split.eq.3.and.caseqg) then
	        compreal=compreal+M22(2)*CF_M22+M52(2)*CF_M52+M102(2)*CF_M102+
     &                2d0*(CF_M1M2*M1M2(2)+CF_M2M3*M2M3(2)+CF_M2M4*M2M4(2)+CF_M2M5*M2M5(2)+
     &                     CF_M2M6*M2M6(2)+CF_M2M7*M2M7(2)+CF_M2M8*M2M8(2)+CF_M2M9*M2M9(2)+
     &                     CF_M2M10*M2M10(2)+CF_M2M11*M2M11(2)+CF_M1M5*M1M5(2)+
     &                     CF_M3M5*M3M5(2)+CF_M4M5*M4M5(2)+CF_M5M6*M5M6(2)+CF_M5M7*M5M7(2)+
     &                     CF_M5M8*M5M8(2)+CF_M5M9*M5M9(2)+CF_M5M10*M5M10(2)+CF_M5M11*M5M11(2)+
     &                     CF_M1M10*M1M10(2)+CF_M3M10*M3M10(2)+CF_M4M10*M4M10(2)+
     &                     CF_M6M10*M6M10(2)+CF_M7M10*M7M10(2)+CF_M8M10*M8M10(2)+
     &                     CF_M9M10*M9M10(2)+CF_M10M11*M10M11(2))
     
ccc and add the terms propto 1/s2g (to get correct IR behaviour)
     .               +(M22(1)*CF_M22+M52(1)*CF_M52+M102(1)*CF_M102)*props2g
     &               +2d0*(CF_M1M2*M1M2(1)+CF_M2M3*M2M3(1)+CF_M2M4*M2M4(1)+CF_M2M5*M2M5(1)+
     &                     CF_M2M6*M2M6(1)+CF_M2M7*M2M7(1)+CF_M2M8*M2M8(1)+CF_M2M9*M2M9(1)+
     &                     CF_M2M10*M2M10(1)+CF_M2M11*M2M11(1)+CF_M1M5*M1M5(1)+
     &                     CF_M3M5*M3M5(1)+CF_M4M5*M4M5(1)+CF_M5M6*M5M6(1)+CF_M5M7*M5M7(1)+
     &                     CF_M5M8*M5M8(1)+CF_M5M9*M5M9(1)+CF_M5M10*M5M10(1)+CF_M5M11*M5M11(1)+
     &                     CF_M1M10*M1M10(1)+CF_M3M10*M3M10(1)+CF_M4M10*M4M10(1)+
     &                     CF_M6M10*M6M10(1)+CF_M7M10*M7M10(1)+CF_M8M10*M8M10(1)+
     &                     CF_M9M10*M9M10(1)+CF_M10M11*M10M11(1))*props2g
	      endif
	    endif

cc now the terms from the interference part: 
ccc we use for the qg-case with wglu!=0 ALWAYS the (correctly) expanded result in 1/s2g
ccc for sqsqg or the non-resonant case: can simply use the unexpanded result (or if the switch qgunexp is set to true...)
	    if(flag_inter.or.(.not.caseqg)) then      
	      if(wglu.eq.0d0.or.flg_qgunexp) then !wglu==0d0 is sufficient: is set so for the sqantisqg and nonres case...
	        compreal=compreal+2d0*(CF_M1M2*M1M2(99)+CF_M2M3*M2M3(99)+CF_M2M4*M2M4(99)+
     &                     CF_M2M6*M2M6(99)+CF_M2M7*M2M7(99)+CF_M2M8*M2M8(99)+
     &                     CF_M2M9*M2M9(99)+CF_M2M11*M2M11(99)+CF_M1M5*M1M5(99)+
     &                     CF_M3M5*M3M5(99)+CF_M4M5*M4M5(99)+CF_M5M6*M5M6(99)+
     &                     CF_M5M7*M5M7(99)+CF_M5M8*M5M8(99)+CF_M5M9*M5M9(99)+
     &                     CF_M5M11*M5M11(99)+CF_M1M10*M1M10(99)+CF_M3M10*M3M10(99)+
     &                     CF_M4M10*M4M10(99)+CF_M6M10*M6M10(99)+CF_M7M10*M7M10(99)+
     &                     CF_M8M10*M8M10(99)+CF_M9M10*M9M10(99)+
     &                     CF_M10M11*M10M11(99))*props2g
	      else
	        compreal=compreal+2d0*(CF_M1M2*M1M2(2)+CF_M2M3*M2M3(2)+CF_M2M4*M2M4(2)+
     &                     CF_M2M6*M2M6(2)+CF_M2M7*M2M7(2)+CF_M2M8*M2M8(2)+
     &                     CF_M2M9*M2M9(2)+CF_M2M11*M2M11(2)+CF_M1M5*M1M5(2)+
     &                     CF_M3M5*M3M5(2)+CF_M4M5*M4M5(2)+CF_M5M6*M5M6(2)+
     &                     CF_M5M7*M5M7(2)+CF_M5M8*M5M8(2)+CF_M5M9*M5M9(2)+
     &                     CF_M5M11*M5M11(2)+CF_M1M10*M1M10(2)+CF_M3M10*M3M10(2)+
     &                     CF_M4M10*M4M10(2)+CF_M6M10*M6M10(2)+CF_M7M10*M7M10(2)+
     &                     CF_M8M10*M8M10(2)+CF_M9M10*M9M10(2)+
     &                     CF_M10M11*M10M11(2))
     &                   +2d0*(CF_M1M2*M1M2(1)+CF_M2M3*M2M3(1)+CF_M2M4*M2M4(1)+
     &                     CF_M2M6*M2M6(1)+CF_M2M7*M2M7(1)+CF_M2M8*M2M8(1)+
     &                     CF_M2M9*M2M9(1)+CF_M2M11*M2M11(1)+CF_M1M5*M1M5(1)+
     &                     CF_M3M5*M3M5(1)+CF_M4M5*M4M5(1)+CF_M5M6*M5M6(1)+
     &                     CF_M5M7*M5M7(1)+CF_M5M8*M5M8(1)+CF_M5M9*M5M9(1)+
     &                     CF_M5M11*M5M11(1)+CF_M1M10*M1M10(1)+CF_M3M10*M3M10(1)+
     &                     CF_M4M10*M4M10(1)+CF_M6M10*M6M10(1)+CF_M7M10*M7M10(1)+
     &                     CF_M8M10*M8M10(1)+CF_M9M10*M9M10(1)+
     &                     CF_M10M11*M10M11(1))*props2g
	      endif
	    endif

cc for the subtraction-terms: 
	    if(flag_res.or.(.not.caseqg)) then
ccc see comment above:
	      if(wglu.eq.0d0.or.flg_qgunexp) then
               compreal=compreal+(CF_M22*M22(99)+CF_M52*M52(99)+CF_M102*M102(99)+
     .                         2d0*(CF_M2M5*M2M5(99)+CF_M2M10*M2M10(99)+CF_M5M10*M5M10(99)))*props2g2
	      else
	        compreal=compreal+(CF_M22*M22(0)+CF_M52*M52(0)+CF_M102*M102(0)+
     .                         2d0*(CF_M2M5*M2M5(0)+CF_M2M10*M2M10(0)+CF_M5M10*M5M10(0)))*props2g2+
     .                        (CF_M22*M22(1)+CF_M52*M52(1)+CF_M102*M102(1)+2d0*(CF_M2M5*M2M5(1)+
     .                         CF_M2M10*M2M10(1)+CF_M5M10*M5M10(1)))*props2g+
     .                        (CF_M22*M22(2)+CF_M52*M52(2)+CF_M102*M102(2)+2d0*(CF_M2M5*M2M5(2)+
     .                         CF_M2M10*M2M10(2)+CF_M5M10*M5M10(2)))
	      endif
	    endif

	  else !uLuLbarc: no resonant terms relevant here, simply take all relevant ME into account(always in flg_btilde here!)
	     compreal=CF_M12*M12()+CF_M62*M62()+CF_M72*M72()+CF_M82*M82()+
     .                CF_M92*M92()+CF_M112*M112()+
     .             2d0*(CF_M1M6*M1M6()+CF_M1M7*M1M7()+CF_M1M8*M1M8()+CF_M1M9*M1M9()+
     .                  CF_M1M11*M1M11()+CF_M6M7*M6M7()+CF_M6M8*M6M8()+
     .                  CF_M6M9*M6M9()+CF_M6M11*M6M11()+CF_M7M8*M7M8()+CF_M7M9*M7M9()+
     .                  CF_M7M11*M7M11()+CF_M8M9*M8M9()+CF_M8M11*M8M11()+CF_M9M11*M9M11())
	  endif
ccc the rest of the terms:
	else 
	   if(chir1.ne.chir2) then 
	    deltac1c2=0 !diff chirality (uLuRbaru and uLdRbard)
	   else
	    deltac1c2=1 !same chirality (for uLdLbard)
	   endif
ccc same flags as in case of uLuLbaru concerning the subtraction stuff
	   if(flag_nonres.or.(.not.caseqg)) then
	    compreal=compreal+CF_M32*M32()+CF_M42*M42()+
     .             2d0*(CF_M3M4*M3M4())
cc for the "new" subtraction-scheme: we attribute all terms which are no longer propto 1/s2g from the res. parts into this part (if we consider a remnant: flag_nonres=.false.!
	      if(flg_split.eq.3.and.caseqg) then
	        compreal=compreal+M22(2)*CF_M22+M52(2)*CF_M52+M102(2)*CF_M102+
     &                2d0*(CF_M2M3*M2M3(2)+CF_M2M4*M2M4(2)+CF_M2M5*M2M5(2)+
     &                     CF_M2M10*M2M10(2)+
     &                     CF_M3M5*M3M5(2)+CF_M4M5*M4M5(2)+CF_M5M10*M5M10(2)+
     &                     CF_M3M10*M3M10(2)+CF_M4M10*M4M10(2))
ccc and add the terms propto 1/s2g (to get correct IR behaviour)
     &                   +(M22(1)*CF_M22+M52(1)*CF_M52+M102(1)*CF_M102+
     &                2d0*(CF_M2M3*M2M3(1)+CF_M2M4*M2M4(1)+CF_M2M5*M2M5(1)+
     &                     CF_M2M10*M2M10(1)+
     &                     CF_M3M5*M3M5(1)+CF_M4M5*M4M5(1)+CF_M5M10*M5M10(1)+
     &                     CF_M3M10*M3M10(1)+CF_M4M10*M4M10(1)))*props2g
	      endif
	   endif

cc now the terms from the interference part: distinguish here the split==3 and the other variants:
	   if(flag_inter.or.(.not.caseqg)) then
	      if(wglu.eq.0d0.or.flg_qgunexp) then !wglu==0d0 is sufficient: is set so for the sqantisqg and nonres case...
	        compreal=compreal+2d0*(CF_M2M3*M2M3(99)+CF_M2M4*M2M4(99)+
     &                     CF_M3M5*M3M5(99)+CF_M4M5*M4M5(99)+
     &                     CF_M3M10*M3M10(99)+CF_M4M10*M4M10(99))*props2g
	      else
	        compreal=compreal+2d0*(CF_M2M3*M2M3(2)+CF_M2M4*M2M4(2)+
     &                     CF_M3M5*M3M5(2)+CF_M4M5*M4M5(2)+
     &                     CF_M3M10*M3M10(2)+CF_M4M10*M4M10(2))
     &                     +2d0*(CF_M2M3*M2M3(1)+CF_M2M4*M2M4(1)+
     &                     CF_M3M5*M3M5(1)+CF_M4M5*M4M5(1)+
     &                     CF_M3M10*M3M10(1)+CF_M4M10*M4M10(1))*props2g
	      endif
     
	    endif
cc the terms from the pure resonant MEs
	    if(flag_res.or.(.not.caseqg)) then
ccc see comment above:
	      if(wglu.eq.0d0.or.flg_qgunexp) then
               compreal=compreal+(CF_M22*M22(99)+CF_M52*M52(99)+CF_M102*M102(99)+
     .                         2d0*(CF_M2M5*M2M5(99)+CF_M2M10*M2M10(99)+
     .                              CF_M5M10*M5M10(99)))*props2g2
             else
	        compreal=compreal+(CF_M22*M22(0)+CF_M52*M52(0)+CF_M102*M102(0)+
     .                         2d0*(CF_M2M5*M2M5(0)+CF_M2M10*M2M10(0)+CF_M5M10*M5M10(0)))
     .                         *props2g2+
     .                        (CF_M22*M22(1)+CF_M52*M52(1)+CF_M102*M102(1)+
     .                        2d0*(CF_M2M5*M2M5(1)+
     .                           CF_M2M10*M2M10(1)+CF_M5M10*M5M10(1)))*props2g
     .                        +(CF_M22*M22(2)+CF_M52*M52(2)+CF_M102*M102(2)+
     .                        2d0*(CF_M2M5*M2M5(2)+
     .                           CF_M2M10*M2M10(2)+CF_M5M10*M5M10(2)))
             endif
	    endif
	endif

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccc on-shell-subtraction: check if we need a subtraction at all
ccc assume that we have sq antisq q-> only mass2 is relevant!
ccc construct the subtraction term as usual
ccc for qqbar-channel: no subtraction necessary-> use ORIGINAL (uncrossed) FLST here!!
	if(flag_subtra.and.caseqg.and..not.flg_in_smartsig) then
	  if(dsqrt(s)-par_mglu-msq1.ge.0d0) then !the second theta-function for the subtraction
cc perform the reshuffling, support only CS-type-reshuffling here!!
	    call reshuffle_momenta_2(pcopy,msq1,msq2,0d0,par_mglu,presh)

cc now recalculate the invariants with the reshuffled momenta:
	    s=dotp(presh(0:3,1)+presh(0:3,2),presh(0:3,1)+presh(0:3,2))
	    s1=dotp(presh(0:3,3)+presh(0:3,4),presh(0:3,3)+presh(0:3,4))
! ! ! 	    s2g=dotp(presh(0:3,4)+presh(0:3,nlegreal),presh(0:3,4)+presh(0:3,nlegreal))-mgo**2
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

cc here it should not matter if we take the expanded result or the full one, as in the limit of on-shell go
cc they are identical...
	    resamp=(CF_M22*M22(0)+CF_M52*M52(0)+CF_M102*M102(0)+
     .             2d0*(CF_M2M5*M2M5(0)+CF_M2M10*M2M10(0)+
     .                  CF_M5M10*M5M10(0)))*props2g2

	    compreal=compreal-resamp
	  endif
	endif
	compreal=compreal*spincol*crossfac
	end
