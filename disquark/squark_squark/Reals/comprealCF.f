cc the main routine to determine the kinematic contributions to the
cc different real color-flows
cc note: we have only the case qg here, all other possibilities
cc have been dealt with through switching/crossing before calling this routine!
cc caseqg: for the OSS: only in qg-case..
	subroutine comprealCF(flst,p,jamp2,caseqg)
	implicit none
	include 'nlegborn.h'
	include 'pwhg_flg.h'
	include 'pwhg_kn.h'
	include 'pwhg_math.h'
	include 'sqsq_realqg.h'
	include 'PhysPars.h'
	integer flst(1:nlegreal)
	integer fla1,fla2,chir1,chir2,i,iind,j
	real*8 p(0:3,1:nlegreal),pcopy(0:3,1:nlegreal),presh(0:3,1:nlegreal)
	real*8 wglu,temp
	real*8 n(0:3)
	real*8 jamp2(0:maxflow),jamp2sub(1:maxflow)
	real*8 M12,M22,M32,M42,M52,M1M2,M1M3,M1M4,M1M5,M1M1u,M1M2u,M1M3u,
     .       M1M4u,M1M5u,M2M3,M2M4,M2M5,M2M2u,M2M3u,M2M4u,M2M5u,M3M4,M3M5,
     .       M3M3u,M3M4u,M3M5u,M4M5,M4M4u,M4M5u,M5M5u,M2M1u,M3M1u,M4M1u,M5M1u,
     .       M3M2u,M4M2u,M5M2u,M4M3u,M5M3u,M5M4u
	real*8 dotp,powheginput
	real*8 props2g2,props2g,props1gs2g,props1twg
	logical flag_res,flag_inter,flag_nonres,flag_subtra,caseqg
	real*8 oneN
	external dotp,powheginput
	external M12,M22,M32,M42,M52,M1M2,M1M3,M1M4,M1M5,M1M1u,M1M2u,M1M3u,
     .       M1M4u,M1M5u,M2M3,M2M4,M2M5,M2M2u,M2M3u,M2M4u,M2M5u,M3M4,M3M5,
     .       M3M3u,M3M4u,M3M5u,M4M5,M4M4u,M4M5u,M5M5u,M2M1u,M3M1u,M4M1u,M5M1u,
     .       M3M2u,M4M2u,M5M2u,M4M3u,M5M3u,M5M4u

cccc NEVER USE THIS ROUTINE FOR THE REMNANTS AFTER SPLITTING THE REALS!!!
	if(.not.flg_btilde) then
	  write(*,*) 'Calling comprealCF for non-BTILDE-event -> stop!'
	  call exit(-1)
	endif

	if(flst(2).ne.0) then
	  write(*,*) 'Calling comprealCF for inconsistne flst:',flst
	  call exit(-1)
	endif

cc copy momenta
	do i=0,3
	  do j=1,nlegreal
	    pcopy(i,j)=p(i,j)
	  enddo
	enddo

	oneN=0d0 !the 1/Nc-factor
	if(flg_colsupp) oneN=1d0/3d0

cc the invariants:
	s=dotp(pcopy(0:3,1)+pcopy(0:3,2),pcopy(0:3,1)+pcopy(0:3,2))
	s1=dotp(pcopy(0:3,3)+pcopy(0:3,4),pcopy(0:3,3)+pcopy(0:3,4))
	s2g=dotp(pcopy(0:3,4)+pcopy(0:3,nlegreal),pcopy(0:3,4)+pcopy(0:3,nlegreal))-mgo**2
	s1twg=dotp(pcopy(0:3,3)+pcopy(0:3,nlegreal),pcopy(0:3,3)+pcopy(0:3,nlegreal))-mgo**2
	t1=dotp(pcopy(0:3,3)-pcopy(0:3,1),pcopy(0:3,3)-pcopy(0:3,1))
	t2=dotp(pcopy(0:3,nlegreal)-pcopy(0:3,2),pcopy(0:3,nlegreal)-pcopy(0:3,2))

cc if we use the light-cone gauge: have to specify n and the corresponding scalar products:
	n(0)=0.5d0
	n(1)=0d0
	n(2)=0d0
	n(3)=-sign(0.5d0,pcopy(3,2))

	if(gauge.eq.1) then
	  npq=dotp(n,pcopy(0:3,1))
	  npg=dotp(n,pcopy(0:3,2))
	  nk1=dotp(n,pcopy(0:3,3))
	  nk2=dotp(n,pcopy(0:3,4))
	  nkq=dotp(n,pcopy(0:3,nlegreal))
	endif

cc if we use this routine for debugging: avoid call to powheginput-> determine par_wglu_res in the main
cc routines...
	  if(msq2.gt.par_mglu.or.(.not.caseqg)) then
	    wglu=0d0
	  else
	    wglu=par_wglu_res
	  endif

cc the propagators in the resonant parts: 
cc as we consider only the btilde terms here: no tan-mapping...
	    props2g2=1d0/(s2g**2+par_mglu**2*wglu**2)
	    props2g=s2g*props2g2
cc for the interference-terms between t and u channel for uLuL 
cc see the formula 78/79 in the old prospino paper-> product of 2 principal value-integrals and 2 delta-functions
	    props1gs2g=(s1twg*s2g+par_mglu**2*wglu**2)/(s1twg**2+par_mglu**2*wglu**2)/
     .               (s2g**2+par_mglu**2*wglu**2)
	    props1twg=s1twg/(s1twg**2+par_mglu**2*wglu**2)

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

cc Call the different functions for the different cases (see notes: all relevant diagrams 
cc are contained in uLuLubar!)
cc the go-width is only nonzero if we really have to apply a subtraction!!
cc if flg_submethod.eq.0: we either dont need subtraction, or we dont want it...
cc distinguish the different cases: i) take all elements of M^2 (for qqbar IS, for DS "classical")
cc                                  ii) leave out all M_res^2-terms (for DR,DR-II and DS in the "usual" split-mode for btilde-events)
cc                                  iii) in the "new" split-mode: leave out only the terms ~1/s2g^2 (for btilde-events)
cc                                  iv) leave out the intererence-terms (for DR, DS with split==2)
cc                                  v) in the new split-mode: leave out only the terms ~1/s2g (for btilde-events)
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
	if((flg_split.ne.0.or.flg_submethod.ne.1.or.(.not.caseqg))) flag_subtra=.false.

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccc uLuL/R-production:
ccc here we have to take into account "everything twice" to account for "t and u-channels"
ccc note that the invariants have to be adjusted here (masses, too!)
ccc the interference-terms between t and u channel for uLuL-production are treated separately!
	  if(chir1.eq.chir2) then
	    deltac1c2=1
	  else
	    deltac1c2=0
	  endif

cc the non-resonant parts: this should ALWAYS be added here, keep if-clause anyway...
	  if(flag_nonres.or.(.not.caseqg)) then
! 	    jamp2(1)=jamp2(1)+0d0
	    jamp2(2)=jamp2(2)+M42()
	    jamp2(3)=jamp2(3)+M52()
	    jamp2(4)=jamp2(4)+oneN**2*(M42()+M52()+2d0*M4M5())

	    if(flg_split.eq.3.and.caseqg) then !!strictly speaking these are inter
!!-ference terms, but ok...
	      jamp2(1)=jamp2(1)+oneN**2*(M12(2)+M32(2)+2d0*M1M3(2))
     .                       +oneN**2*(M12(1)+M32(1)+2d0*M1M3(1))*props2g
	      jamp2(2)=jamp2(2)+(M22(2)+M32(2)-2d0*M2M3(2)+2d0*(-M2M4(2)+M3M4(2)))
     .                       +(M22(1)+M32(1)+2d0*(-M2M3(1)-M2M4(1)+M3M4(1)))*props2g
	      jamp2(3)=jamp2(3)+(M12(2)+M22(2)+2d0*M1M2(2)+2d0*(M1M5(2)+M2M5(2)))
     .                       +(M12(1)+M22(1)+2d0*(M1M2(1)+M1M5(1)+M2M5(1)))*props2g
! 	      jamp2(4)=jamp2(4)+0d0
	    endif

ccc the u-t-interference-terms
	    if(deltac1c2.eq.1.and.fla1.eq.fla2) then!attribute all interference-terms between t and u channels to this contribution
! 	      jamp2(1)=jamp2(1)+0d0
	      jamp2(2)=jamp2(2)-oneN*2d0*(M4M4u()+M4M5u())
! 	      jamp2(3)=jamp2(3)+0d0
	      jamp2(4)=jamp2(4)-oneN*2d0*(M4M4u()+M5M4u())
	    endif
	  endif

cc the interference terms:
	  if(flag_inter.or.(.not.caseqg)) then 
! 	    jamp2(1)=jamp2(1)+0d0
cc see comments in compreal
	    if(wglu.eq.0d0.or.flg_qgunexp) then
	      jamp2(2)=jamp2(2)+2d0*(-M2M4(99)+M3M4(99))*props2g
	      jamp2(3)=jamp2(3)+2d0*(M1M5(99)+M2M5(99))*props2g
	    else
	      jamp2(2)=jamp2(2)+2d0*(-M2M4(2)+M3M4(2))
     .                       +2d0*(-M2M4(1)+M3M4(1))*props2g
	      jamp2(3)=jamp2(3)+2d0*(M1M5(2)+M2M5(2))
     .                       +2d0*(M1M5(1)+M2M5(1))*props2g
	    endif
! 	    jamp2(4)=jamp2(4)+0d0
	  endif

	  if(deltac1c2.eq.1.and.fla1.eq.fla2) then
cc it is convenient to add here all contributions for flag_split!=3
cc for flag_split==3: add parts here, parts in the "switched" part...
         if((flag_inter.and.flg_split.ne.3).or.(.not.caseqg).or.flg_split.eq.3) then !attribute all interference-terms between t and u channels to this contribution
cc see comments in compreal
	    if(wglu.eq.0d0.or.flg_qgunexp) then
	      jamp2(1)=jamp2(1)-oneN*2d0*((M1M1u(99)+M1M2u(99)+M3M1u(99)+M3M2u(99))*props1gs2g+
     .                                  (M1M5u(99)+M3M5u(99))*props2g)
	      jamp2(2)=jamp2(2)-oneN*2d0*(-M2M4u(99)-M2M5u(99)+M3M4u(99)+M3M5u(99))*props2g
	      jamp2(3)=jamp2(3)-oneN*2d0*((M1M1u(99)+M1M3u(99)+M2M1u(99)+M2M3u(99))*props1gs2g+
     .                                 (M5M1u(99)+M5M3u(99))*props1twg)
	      jamp2(4)=jamp2(4)-oneN*2d0*(M4M3u(99)-M4M2u(99)+M5M3u(99)-M5M2u(99))*props1twg
	    else
	      jamp2(1)=jamp2(1)-oneN*2d0*((M1M1u(13)+M1M2u(13)+M3M1u(13)+M3M2u(13))+
     .                                  (M1M1u(12)+M1M2u(12)+M3M1u(12)+M3M2u(12))*props2g+
     .                                  (M1M1u(11)+M1M2u(11)+M3M1u(11)+M3M2u(11))*props1twg+
     .                                  (M1M1u(10)+M1M2u(10)+M3M1u(10)+M3M2u(10))*props1gs2g+
     .                                  (M1M5u(2)+M3M5u(2))+
     .                                  (M1M5u(1)+M3M5u(1))*props2g)
	      jamp2(2)=jamp2(2)-oneN*2d0*(-M2M4u(2)-M2M5u(2)+M3M4u(2)+M3M5u(2)+
     .                                  (-M2M4u(1)-M2M5u(1)+M3M4u(1)+M3M5u(1))*props2g)
	      jamp2(3)=jamp2(3)-oneN*2d0*((M1M1u(13)+M1M3u(13)+M2M1u(13)+M2M3u(13))+
     .                                  (M1M1u(12)+M1M3u(12)+M2M1u(12)+M2M3u(12))*props2g+
     .                                  (M1M1u(11)+M1M3u(11)+M2M1u(11)+M2M3u(11))*props1twg+
     .                                  (M1M1u(10)+M1M3u(10)+M2M1u(10)+M2M3u(10))*props1gs2g+
     .                                  (M5M1u(2)+M5M3u(2))+
     .                                  (M5M1u(1)+M5M3u(1))*props1twg)
	      jamp2(4)=jamp2(4)-oneN*2d0*(M4M3u(2)-M4M2u(2)+M5M3u(2)-M5M2u(2)+
     .                                  (M4M3u(1)-M4M2u(1)+M5M3u(1)-M5M2u(1))*props1twg)

	    endif
	   endif
	  endif

	  if(flag_res.or.(.not.caseqg)) then 
cc see comments in compreal
	    if(wglu.eq.0d0.or.flg_qgunexp) then
	      jamp2(1)=jamp2(1)+oneN**2*(M12(99)+M32(99)+2d0*M1M3(99))*props2g2
	      jamp2(2)=jamp2(2)+(M22(99)+M32(99)-2d0*M2M3(99))*props2g2
	      jamp2(3)=jamp2(3)+(M12(99)+M22(99)+2d0*M1M2(99))*props2g2
! 	      jamp2(4)=jamp2(4)+0d0
	    else
	      jamp2(1)=jamp2(1)+oneN**2*(M12(2)+M32(2)+2d0*M1M3(2)+
     .                                 (M12(1)+M32(1)+2d0*M1M3(1))*props2g+
     .                                 (M12(0)+M32(0)+2d0*M1M3(0))*props2g2)
	      jamp2(2)=jamp2(2)+(M22(2)+M32(2)-2d0*M2M3(2))+
     .                        (M22(1)+M32(1)-2d0*M2M3(1))*props2g+
     .                        (M22(0)+M32(0)-2d0*M2M3(0))*props2g2
	      jamp2(3)=jamp2(3)+(M12(2)+M22(2)+2d0*M1M2(2))+
     .                        (M12(1)+M22(1)+2d0*M1M2(1))*props2g+
     .                        (M12(0)+M22(0)+2d0*M1M2(0))*props2g2
	    endif
	  endif

cc the subtraction term:
	  if(msq2.lt.par_mglu.and.flag_subtra) then
	    if(dsqrt(s)-par_mglu-msq1.ge.0d0) then !the second theta-function for the subtraction

cc perform the reshuffling
	      call reshuffle_momenta_2(pcopy,msq1,msq2,0d0,par_mglu,presh)

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
	      jamp2sub(1)=jamp2sub(1)+oneN**2*(M12(0)+M32(0)+2d0*M1M3(0))*props2g2
	      jamp2sub(2)=jamp2sub(2)+(M22(0)+M32(0)-2d0*M2M3(0))*props2g2
	      jamp2sub(3)=jamp2sub(3)+(M12(0)+M22(0)+2d0*M1M2(0))*props2g2
! 	      jamp2sub(4)=jamp2sub(4)+0d0
	    endif
	   endif
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cc now switch "t and u channels" for same flavour result and recalculate the ME^2 
	if(fla1.eq.fla2) then
	  call switchmom(pcopy,pcopy,3,4)
	  temp=msq1
	  msq1=msq2
	  msq2=temp

cc recalculate the invariants:
	  s=dotp(pcopy(0:3,1)+pcopy(0:3,2),pcopy(0:3,1)+pcopy(0:3,2))
	  s1=dotp(pcopy(0:3,3)+pcopy(0:3,4),pcopy(0:3,3)+pcopy(0:3,4))
	  s2g=dotp(pcopy(0:3,4)+pcopy(0:3,nlegreal),pcopy(0:3,4)+pcopy(0:3,nlegreal))-mgo**2
	  s1twg=dotp(pcopy(0:3,3)+pcopy(0:3,nlegreal),pcopy(0:3,3)+pcopy(0:3,nlegreal))-mgo**2
	  t1=dotp(pcopy(0:3,3)-pcopy(0:3,1),pcopy(0:3,3)-pcopy(0:3,1))
	  t2=dotp(pcopy(0:3,nlegreal)-pcopy(0:3,2),pcopy(0:3,nlegreal)-pcopy(0:3,2))

cc and for the lightcone gauge the scalarproducts with n:
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

cc in case of uLuR: this could change too:
	  if(msq2.gt.par_mglu.or.(.not.caseqg)) then
	    wglu=0d0
	  else
	    wglu=par_wglu_res
	  endif

cc and a new resonant propagator:
	  props2g2=1d0/(s2g**2+par_mglu**2*wglu**2)
	  props2g=s2g*props2g2

cc and add the remaining terms:
	  if(flag_nonres.or.(.not.caseqg)) then
	    jamp2(1)=jamp2(1)+M52()
	    jamp2(2)=jamp2(2)+oneN**2*(M42()+2d0*M4M5()+M52())
! 	    jamp2(3)=jamp2(3)+0d0
	    jamp2(4)=jamp2(4)+M42()

	    if(flg_split.eq.3.and.caseqg) then !in this case we attribute all terms not propto 1/s2g(^2) to the btilde-part
	      jamp2(1)=jamp2(1)+(M12(2)+M22(2)+2d0*(M1M2(2)+M1M5(2)+M2M5(2)))
     .                       +(M12(1)+M22(1)+2d0*(M1M2(1)+M1M5(1)+M2M5(1)))*props2g
! 	      jamp2(2)=jamp2(2)+0d0
	      jamp2(3)=jamp2(3)+oneN**2*(M12(2)+M32(2)+2d0*M1M3(2))
     .                       +oneN**2*(M12(1)+M32(1)+2d0*M1M3(1))*props2g
	      jamp2(4)=jamp2(4)+(M22(2)+M32(2)+2d0*(-M2M3(2)+M3M4(2)-M2M4(2)))
     .                       +(M22(1)+M32(1)+2d0*(-M2M3(1)+M3M4(1)-M2M4(1)))*props2g
	    endif
	  endif

cc the interference terms:
	  if(flag_inter.or.(.not.caseqg)) then !the interference-terms between t and u channel are attributed to this contribution, too!!
cc see comments in compreal
	    if(wglu.eq.0d0.or.flg_qgunexp) then
	      jamp2(1)=jamp2(1)+2d0*(M1M5(99)+M2M5(99))*props2g
! 	      jamp2(2)=jamp2(2)+0d0
! 	      jamp2(3)=jamp2(3)+0d0
	      jamp2(4)=jamp2(4)+2d0*(M3M4(99)-M2M4(99))*props2g
	    else
	      jamp2(1)=jamp2(1)+2d0*(M1M5(2)+M2M5(2))+
     .                        2d0*(M1M5(1)+M2M5(1))*props2g
	      jamp2(4)=jamp2(4)+2d0*(M3M4(2)-M2M4(2))+
     .                        2d0*(M3M4(1)-M2M4(1))*props2g
	    endif
	  endif

	  if(flag_res.or.(.not.caseqg)) then 
cc see comments in compreal
	    if(wglu.eq.0d0.or.flg_qgunexp) then
	      jamp2(1)=jamp2(1)+(M12(99)+M22(99)+2d0*M1M2(99))*props2g2
! 	      jamp2(2)=jamp2(2)+0d0
	      jamp2(3)=jamp2(3)+oneN**2*(M12(99)+M32(99)+2d0*M1M3(99))*props2g2
	      jamp2(4)=jamp2(4)+(M32(99)+M22(99)-2d0*M2M3(99))*props2g2
	    else
	      jamp2(1)=jamp2(1)+(M12(2)+M22(2)+2d0*M1M2(2))+
     .                        (M12(1)+M22(1)+2d0*M1M2(1))*props2g+
     .                        (M12(0)+M22(0)+2d0*M1M2(0))*props2g2
	      jamp2(3)=jamp2(3)+oneN**2*(M12(2)+M32(2)+2d0*M1M3(2)+
     .                                 (M12(1)+M32(1)+2d0*M1M3(1))*props2g+
     .                                 (M12(0)+M32(0)+2d0*M1M3(0))*props2g2)
	      jamp2(4)=jamp2(4)+(M32(2)+M22(2)-2d0*M2M3(2))+
     .                        (M32(1)+M22(1)-2d0*M2M3(1))*props2g+
     .                        (M32(0)+M22(0)-2d0*M2M3(0))*props2g2
	    endif
	  endif
ccccccccccccccccccccccccc
cc the subtraction term:
	  if(msq2.lt.par_mglu.and.flag_subtra) then
	    if(dsqrt(s)-par_mglu-msq1.ge.0d0) then !the second theta-function for the subtraction

cc perform the reshuffling, support only CS-type-reshuffling here!!
	      call reshuffle_momenta_2(pcopy,msq1,msq2,0d0,par_mglu,presh)

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
! 	    jamp2sub(2)=jamp2sub(2)+0d0
	    jamp2sub(3)=jamp2sub(3)+oneN**2*(M12(0)+M32(0)+2d0*M1M3(0))*props2g2
	    jamp2sub(4)=jamp2sub(4)+(M32(0)+M22(0)-2d0*M2M3(0))*props2g2
	    endif
	   endif

ccc for the check-routines: switch masses back again (not necessary for the main routine, but OK...)
	  temp=msq1
	  msq1=msq2
	  msq2=temp
	endif


ccc perform the subtraction (if jamp2sub==0: redundant, but OK..)
	do i=1,4
	  jamp2(i)=jamp2(i)-jamp2sub(i)
	enddo
	end