cc the main routine to determine the kinematic contributison to the
cc different real color-flows
cc note: we have only the case qg here, all other possibilities
cc have been dealt with through switching/crossing before calling this routine!
cc caseqg: for the OSS: only in qg-case..
	subroutine comprealCF(flst,p,jamp2,caseqg)
	implicit none
	include 'nlegborn.h'
	include 'pwhg_kn.h'
	include 'pwhg_flg.h'
	include 'pwhg_math.h'
	include 'sqantisq_realqg.h'
	include 'PhysPars.h'
	integer flst(1:nlegreal)
	integer fla1,fla2,chir1,chir2,i,iind
	real*8 p(0:3,1:nlegreal),presh(0:3,1:nlegreal)
	real*8 wglu
	real*8 n(0:3)
	real*8 jamp2(0:maxflow),jamp2sub(1:maxflow)
	real*8 M42,M6M11,M4M11,M6M8,M6M9,M6M7,M32,M9M11,M1M9,
     .       M1M8,M1M3,M1M4,M1M7,M1M6,M7M9,M7M8,M3M7,M3M6,M3M4,M3M9,
     .       M3M8,M8M9,M92,M12,M72,M4M8,M4M9,M82,M4M6,M4M7,M112,
     ,       M1M11,M62,M3M11,M7M11,M2M7,M5M9,M7M10,M2M4,M1M2,
     .       M5M8,M2M5,M5M10,M1M5,M3M5,M5M11,M6M10,M4M5,M4M10,M2M3,
     .       M9M10,M3M10,M52,M8M10,M10M11,M22,M102,M5M7,M2M11,M2M8,
     .       M2M9,M2M6,M1M10,M5M6,M2M10,M8M11
	real*8 dotp,powheginput
	real*8 props2g2,props2g
	logical flag_res,flag_inter,flag_nonres,flag_subtra,caseqg
	real*8 oneN
	external dotp,powheginput
	external M42,M6M11,M4M11,M6M8,M6M9,M6M7,M32,M9M11,M1M9,
     .       M1M8,M1M3,M1M4,M1M7,M1M6,M7M9,M7M8,M3M7,M3M6,M3M4,M3M9,
     .       M3M8,M8M9,M92,M12,M72,M4M8,M4M9,M82,M4M6,M4M7,M112,
     ,       M1M11,M62,M3M11,M7M11,M2M7,M5M9,M7M10,M2M4,M1M2,
     .       M5M8,M2M5,M5M10,M1M5,M3M5,M5M11,M6M10,M4M5,M4M10,M2M3,
     .       M9M10,M3M10,M52,M8M10,M10M11,M22,M102,M5M7,M2M11,M2M8,
     .       M2M9,M2M6,M1M10,M5M6,M2M10,M8M11
     
cccc NEVER USE THIS ROUTINE FOR THE REMNANTS AFTER SPLITTING THE REALS!!!
	if(.not.flg_btilde) then
	  write(*,*) 'Calling comprealCF for non-BTILDE-event -> stop!'
	  call exit(-1)
	endif

	if(flst(2).ne.0) then
	  write(*,*) 'Calling comprealCF for inconsistne flst:',flst
	  call exit(-1)
	endif
	
cc default-order of the masses
	msq1=kn_masses(3)
	msq2=kn_masses(4)
	mgo=par_mglu

cc gauge-flag:
	gauge=flg_gauge

	oneN=0d0 !the 1/Nc-factor
	if(flg_colsupp) oneN=1d0/3d0

cc flavour/chirality of process at hand:
	chir1=abs(flst(3))/pdgfac
      chir2=abs(flst(4))/pdgfac !integer-division
      fla1=abs(flst(3))-chir1*pdgfac
      fla2=abs(flst(4))-chir2*pdgfac

	jamp2(0)=4
	do i=1,maxflow
	  jamp2(i)=0d0
	  jamp2sub(i)=0d0
	enddo
cc NOTE: after crossing/switching we should always have the following order for qg-> sq antisq q
cc       kn_preal(0:3,1)-> pq
cc       kn_preal(0:3,2)-> pg
cc       kn_preal(0:3,3)-> k1
cc       kn_preal(0:3,4)-> k2
cc       kn_preal(0:3,nlegreal)-> kq

cc the invariants:
	s=dotp(p(0:3,1)+p(0:3,2),p(0:3,1)+p(0:3,2))
	s1=dotp(p(0:3,3)+p(0:3,4),p(0:3,3)+p(0:3,4))
	s2g=dotp(p(0:3,4)+p(0:3,nlegreal),p(0:3,4)+p(0:3,nlegreal))-mgo**2
	t1=dotp(p(0:3,3)-p(0:3,1),p(0:3,3)-p(0:3,1))
	t2=dotp(p(0:3,nlegreal)-p(0:3,2),p(0:3,nlegreal)-p(0:3,2))

cc if we use the light-cone gauge: have to specify n and the corresponding scalar products:
cc the 4-vector for the light-cone-gauge:
	if(gauge.eq.1) then
	  n(0)=0.5d0
	  n(1)=0d0
	  n(2)=0d0
	  n(3)=-sign(0.5d0,p(3,2))

	  npq=dotp(n,p(0:3,1))
	  npg=dotp(n,p(0:3,2))
	  nk1=dotp(n,p(0:3,3))
	  nk2=dotp(n,p(0:3,4))
	  nkq=dotp(n,p(0:3,nlegreal))
	endif

cc if we use this routine for debugging: avoid call to powheginput-> determine par_wglu_res in the main
cc routines...
	  if(msq2.gt.par_mglu.or.(.not.caseqg)) then
	    wglu=0d0
	  else
	    wglu=par_wglu_res
	  endif

cc Call the different functions for the different cases ( all relevant diagrams 
cc are contained in uLuLu!)
cc the go-width is only nonzero if we really have to apply a subtraction!!
cc if flg_submethod.eq.0: we either dont need subtraction, or we dont want it...
cc distinguish the different cases: i) take all elements of M^2 (for qqbar IS, for DS "classical")
cc                                  ii) leave out all M_res^2-terms (for DR,DR-II and DS in the "usual" split-mode for btilde-events)
cc                                  iii) in the "new" split-mode: leave out only the terms ~1/s2g^2 (for btilde-events)
cc                                  iv) leave out the intererence-terms (for DR, DS with split==2)
cc                                  v) in the new split-mode: leave out only the terms ~1/s2g (for btilde-events)
cc we separate these cases here by defining different flags:
cc  flag_nonres: is T for both DR, classical DS and for the split-modes 
cc  flag_res: is T for classical DS, for the split-modes:  for split==3: the terms wo any 1/s2g-dependence are accounted to the nonres temrs
cc  flag_inter: is T for DR-II and classical DS, for the split-modes: if split==1: attributed to btilde, if split==2: attributed to remnatn, if split==3: the 1/s2g-part to remnant, the rest to the btilde-part
cc  for all other cases: set them per default to true
cc  if no subtraction necessary: flg_submethod==0 anyway...
	flag_nonres=.true.
	flag_res=.true.
	flag_inter=.true.
	flag_subtra=.true.
	if(flg_submethod.ge.2.or.(flg_split.ne.0)) flag_res=.false.
	if(flg_submethod.eq.2.or.(flg_split.gt.1)) flag_inter=.false.
	if((flg_split.ne.0.or.flg_submethod.ne.1.or.(.not.caseqg))) flag_subtra=.false.
cc the propagators in the resonant parts: 
	props2g2=1d0/(s2g**2+par_mglu**2*wglu**2)
	props2g=s2g*props2g2
	
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccc uLuL-production, distinguish uLuLbaru and uLuLbarc!!
	if(fla1.eq.fla2.and.chir1.eq.chir2) then 
	  deltac1c2=1 !same chirality
	  if(fla1.eq.flst(nlegreal)) then !uLuLbaru-> all ME, depending on the subtraction
cc all terms of the non-resonant ME^2:
	    if(flag_nonres.or.(.not.caseqg)) then
	      jamp2(1)=M12()+M62()+M82()+M92()+
     .                2d0*(M1M6()-M1M8()+M1M9()-M6M8()+
     .                     M6M9()-M8M9())
	      jamp2(2)=M32()+oneN**2*(M62()+M72()+4d0*M92())-
     .               2d0*oneN*(M3M6()+M3M7()+2d0*M3M9())+
     .               2d0*oneN**2*(M6M7()+2d0*M6M9()+2d0*M7M9())
	      jamp2(3)=oneN**2*M12()+M42()+oneN**2*M112()-
     .               2d0*oneN*(M1M4()+M4M11())+
     .               2d0*oneN**2*M1M11()
	      jamp2(4)=oneN**2*(M32()+M42())+M72()+M82()+M92()+M112()+
     .               2d0*(M7M8()+M7M9()+M7M11()+M8M9()+M8M11()+M9M11())-
     .               2d0*oneN*(M3M7()+M3M8()+M3M9()+M3M11()+M4M7()+
     .                         M4M8()+M4M9()+M4M11())+
     .               2d0*oneN**2*M3M4()

cc for the "new" subtraction-scheme: we attribute all terms which are no longer propto 1/s2g from the res. parts into this part (if we consider a remnant: flag_nonres=.false.!
	      if(flg_split.eq.3.and.caseqg) then
	        jamp2(1)=jamp2(1)+oneN**2*M22(2)+oneN**2*M102(2)+
     .                 2d0*oneN**2*M2M10(2)-
     .                 2d0*oneN*(M1M2(2)+M2M6(2)-M2M8(2)+M2M9(2)+
     .                     M1M10(2)+M6M10(2)-M8M10(2)+M9M10(2))
     .                          +(oneN**2*M22(1)+oneN**2*M102(1)+
     .                 2d0*oneN**2*M2M10(1)-
     .                 2d0*oneN*(M1M2(1)+M2M6(1)-M2M8(1)+M2M9(1)+
     .                     M1M10(1)+M6M10(1)-M8M10(1)+M9M10(1)))*props2g
	        jamp2(2)=jamp2(2)+M52(2)+M102(2)+
     .                 2d0*(-M3M5(2)+M3M10(2)-M5M10(2))-
     .                 2d0*oneN*(-M5M6(2)-M5M7(2)-2d0*M5M9(2)+
     .                     M6M10(2)+M7M10(2)+2d0*M9M10(2))
     .                          +(M52(1)+M102(1)+
     .                 2d0*(-M3M5(1)+M3M10(1)-M5M10(1))-
     .                 2d0*oneN*(-M5M6(1)-M5M7(1)-2d0*M5M9(1)+
     .                     M6M10(1)+M7M10(1)+2d0*M9M10(1)))*props2g
	        jamp2(3)=jamp2(3)+M22(2)+M52(2)+
     .                 2d0*(M2M4(2)+M4M5(2)+M2M5(2))-
     .                 2d0*oneN*(M1M2(2)+M2M11(2)+M1M5(2)+M5M11(2))
     .                          +(M22(1)+M52(1)+
     .                 2d0*(M2M4(1)+M4M5(1)+M2M5(1))-
     .                 2d0*oneN*(M1M2(1)+M2M11(1)+M1M5(1)+M5M11(1)))*props2g
	      endif
	    endif

cc now the terms from the interference part: distinguish here the split==3 and the other variants:
	    if(flag_inter.or.(.not.caseqg)) then
	      if(wglu.eq.0d0.or.flg_qgunexp) then 
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
	        jamp2(1)=jamp2(1)-2d0*oneN*(M1M2(1)+
     .              M2M6(1)-M2M8(1)+M2M9(1)+M1M10(1)+
     .              M6M10(1)-M8M10(1)+M9M10(1))*props2g
     .                          -2d0*oneN*(M1M2(2)+
     .              M2M6(2)-M2M8(2)+M2M9(2)+M1M10(2)+
     .              M6M10(2)-M8M10(2)+M9M10(2))
	        jamp2(2)=jamp2(2)+2d0*(-M3M5(1)+M3M10(1))*props2g-
     .               2d0*oneN*(-M5M6(1)-M5M7(1)-2d0*M5M9(1)+
     .                   M6M10(1)+M7M10(1)+2d0*M9M10(1))*props2g
     .                          +2d0*(-M3M5(2)+M3M10(2))-
     .               2d0*oneN*(-M5M6(2)-M5M7(2)-2d0*M5M9(2)+
     .                   M6M10(2)+M7M10(2)+2d0*M9M10(2))
	        jamp2(3)=jamp2(3)+2d0*(M2M4(1)+M4M5(1))*props2g-
     .               2d0*oneN*(M1M2(1)+M2M11(1)+M1M5(1)+
     .                   M5M11(1))*props2g
     .                          +2d0*(M2M4(2)+M4M5(2))-
     .               2d0*oneN*(M1M2(2)+M2M11(2)+M1M5(2)+
     .                   M5M11(2))
	      endif
	    endif

cc for the subtraction-terms: if split!=3: full term, otherwise: only the 1/s2g^2-term
	    if(flag_res.or.(.not.caseqg)) then
	      if(wglu.eq.0d0.or.flg_qgunexp) then
	        jamp2(1)=jamp2(1)+oneN**2*(M22(99)+M102(99)+
     .                 2d0*M2M10(99))*props2g2
	        jamp2(2)=jamp2(2)+(M52(99)+M102(99)-
     .                 2d0*M5M10(99))*props2g2
	        jamp2(3)=jamp2(3)+(M22(99)+M52(99)+
     .                 2d0*M2M5(99))*props2g2
	      else
	        jamp2(1)=jamp2(1)+oneN**2*((M22(0)+M102(0)+
     .                 2d0*M2M10(0))*props2g2+(M22(1)+M102(1)+
     .                 2d0*M2M10(1))*props2g+(M22(2)+M102(2)+
     .                 2d0*M2M10(2)))
	        jamp2(2)=jamp2(2)+(M52(0)+M102(0)-
     .                 2d0*M5M10(0))*props2g2+(M52(1)+M102(1)-
     .                 2d0*M5M10(1))*props2g+(M52(2)+M102(2)-
     .                 2d0*M5M10(2))
	        jamp2(3)=jamp2(3)+(M22(0)+M52(0)+
     .                 2d0*M2M5(0))*props2g2+(M22(1)+M52(1)+
     .                 2d0*M2M5(1))*props2g+(M22(2)+M52(2)+
     .                 2d0*M2M5(2))
	      endif
	    endif
	  else !uLuLbarc: no resonant terms relevant here, simply take all relevant ME into account(always in flg_btilde...)
	    jamp2(1)=M12()+M62()+M82()+M92()+
     .                2d0*(M1M6()-M1M8()+M1M9()-M6M8()+
     .                     M6M9()-M8M9())
	    jamp2(2)=oneN**2*(M62()+M72()+4d0*M92())+
     .               2d0*oneN**2*(M6M7()+2d0*M6M9()+2d0*M7M9())
	    jamp2(3)=oneN**2*(M12()+M112())+
     .               2d0*oneN**2*M1M11()
	    jamp2(4)=M72()+M82()+M92()+M112()+
     .               2d0*(M7M8()+M7M9()+M7M11()+M8M9()+M8M11()+M9M11())
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
	      jamp2(1)=0d0
	      jamp2(2)=M32()
	      jamp2(3)=M42()
	      jamp2(4)=oneN**2*(M32()+M42()+2d0*M3M4())
cc for the "new" subtraction-scheme: we attribute all terms which are no longer propto 1/s2g from the res. parts into this part (if we consider a remnant: flag_nonres=.false.!
	      if(flg_split.eq.3.and.caseqg) then
	        jamp2(1)=jamp2(1)+oneN**2*(M22(2)+M102(2)+
     .                 2d0*M2M10(2))+oneN**2*(M22(1)+M102(1)+
     .                 2d0*M2M10(1))*props2g
	        jamp2(2)=jamp2(2)+M52(2)+M102(2)+
     .                 2d0*(-M3M5(2)+M3M10(2)-M5M10(2))
     .                         +(M52(1)+M102(1)+
     .                 2d0*(-M3M5(1)+M3M10(1)-M5M10(1)))*props2g
	        jamp2(3)=jamp2(3)+M22(2)+M52(2)+
     .                 2d0*(M2M4(2)+M4M5(2)+M2M5(2))
     .                          +(M22(1)+M52(1)+
     .                 2d0*(M2M4(1)+M4M5(1)+M2M5(1)))*props2g
	      endif
	   endif

cc now the terms from the interference part: distinguish here the split==3 and the other variants:
	   if(flag_inter.or.(.not.caseqg)) then	     
	     if(wglu.eq.0d0.or.flg_qgunexp) then 
	        jamp2(2)=jamp2(2)+2d0*(-M3M5(99)+M3M10(99))*props2g
	        jamp2(3)=jamp2(3)+2d0*(M2M4(99)+M4M5(99))*props2g
	     else
	        jamp2(2)=jamp2(2)+2d0*(-M3M5(1)+M3M10(1))*props2g
     .                          +2d0*(-M3M5(2)+M3M10(2))
	        jamp2(3)=jamp2(3)+2d0*(M2M4(1)+M4M5(1))*props2g
     .                          +2d0*(M2M4(2)+M4M5(2))
	     endif
	   endif
cc the terms from the pure resonant MEs
	   if(flag_res.or.(.not.caseqg)) then
	     if(wglu.eq.0d0.or.flg_qgunexp) then
	       jamp2(1)=jamp2(1)+oneN**2*(M22(99)+M102(99)+
     .                 2d0*M2M10(99))*props2g2
	       jamp2(2)=jamp2(2)+(M52(99)+M102(99)-
     .                 2d0*M5M10(99))*props2g2
	       jamp2(3)=jamp2(3)+(M22(99)+M52(99)+
     .                 2d0*M2M5(99))*props2g2
	     else
	       jamp2(1)=jamp2(1)+oneN**2*((M22(0)+M102(0)+
     .                 2d0*M2M10(0))*props2g2+(M22(1)+M102(1)+
     .                 2d0*M2M10(1))*props2g+(M22(2)+M102(2)+
     .                 2d0*M2M10(2)))
	       jamp2(2)=jamp2(2)+(M52(0)+M102(0)-
     .                 2d0*M5M10(0))*props2g2+(M52(1)+M102(1)-
     .                 2d0*M5M10(1))*props2g+(M52(2)+M102(2)-
     .                 2d0*M5M10(2))
	       jamp2(3)=jamp2(3)+(M22(0)+M52(0)+
     .                 2d0*M2M5(0))*props2g2+(M22(1)+M52(1)+
     .                 2d0*M2M5(1))*props2g+(M22(2)+M52(2)+
     .                 2d0*M2M5(2)) 
	     endif
	   endif
	endif

ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccc on-shell-subtraction: check if we need a subtraction at all
ccc assume that we have sq antisq q-> only mass2 is relevant!
ccc construct the subtraction term as usual
ccc for qqbar-channel: no subtraction necessary-> pass a suitable flag caseqg...
ccc moreover, for ululbarc: we have no on-shell-resonances!!
	if(msq2.lt.par_mglu.and.flag_subtra.and.fla2.eq.flst(nlegreal)) then
	  if(dsqrt(s)-par_mglu-msq1.ge.0d0) then !the second theta-function for the subtraction
cc perform the reshuffling, support only CS-type-reshuffling here!!
	    call reshuffle_momenta_2(p,msq1,msq2,0d0,par_mglu,presh)
	    
cc now recalculate the invariants with the reshuffled momenta:
	    s=dotp(presh(0:3,1)+presh(0:3,2),presh(0:3,1)+presh(0:3,2))
	    s1=dotp(presh(0:3,3)+presh(0:3,4),presh(0:3,3)+presh(0:3,4))
! ! 	    s2g=dotp(presh(0:3,4)+presh(0:3,nlegreal),presh(0:3,4)+presh(0:3,nlegreal))-mgo**2
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
	    
ccc see comments in compreal
	    jamp2sub(1)=oneN**2*(M22(0)+M102(0)+
     .                  2d0*M2M10(0))*props2g2
	    jamp2sub(2)=(M52(0)+M102(0)-
     .                  2d0*M5M10(0))*props2g2
	    jamp2sub(3)=(M22(0)+M52(0)+
     .                  2d0*M2M5(0))*props2g2
! 	    jamp2sub(4)=0d0
	  endif
	endif
	do i=1,4
	  jamp2(i)=jamp2(i)-jamp2sub(i)
	enddo
	end