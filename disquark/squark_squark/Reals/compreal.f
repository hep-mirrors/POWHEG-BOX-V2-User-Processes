cc the main function to compute real contributions to sq-sq-contribution
	real*8 function compreal(flst,p)
	implicit none
	include 'nlegborn.h'
	include 'pwhg_kn.h'
	include 'pwhg_flg.h'
	include 'pwhg_math.h'
	include 'sqsq_realqg.h'
	include 'sqsq_realqg_col.h'
	include 'PhysPars.h'
	integer flst(1:nlegreal),flstcp(1:nlegreal),i,j,iind,sqsign
	integer fla1,fla2,chir1,chir2
	real*8 p(0:3,1:nlegreal),pcopy(0:3,nlegreal),presh(0:3,nlegreal)
	real*8 temp,wglu
	real*8 n(0:3)
	real*8 props2g,props2g2,props1gs2g,props1twg
	real*8 M12,M22,M32,M42,M52,M1M2,M1M3,M1M4,M1M5,M1M1u,M1M2u,M1M3u,
     .       M1M4u,M1M5u,M2M3,M2M4,M2M5,M2M2u,M2M3u,M2M4u,M2M5u,M3M4,M3M5,
     .       M3M3u,M3M4u,M3M5u,M4M5,M4M4u,M4M5u,M5M5u,M2M1u,M3M1u,M4M1u,M5M1u,
     .       M3M2u,M4M2u,M5M2u,M4M3u,M5M3u,M5M4u
	real*8 spincol,crossfac,resamp,ident
	real*8 dotp
	logical flag_res,flag_inter,flag_nonres,flag_subtra,caseqg
	external dotp
	external M12,M22,M32,M42,M52,M1M2,M1M3,M1M4,M1M5,M1M1u,M1M2u,M1M3u,
     .       M1M4u,M1M5u,M2M3,M2M4,M2M5,M2M2u,M2M3u,M2M4u,M2M5u,M3M4,M3M5,
     .       M3M3u,M3M4u,M3M5u,M4M5,M4M4u,M4M5u,M5M5u,M2M1u,M3M1u,M4M1u,M5M1u,
     .       M3M2u,M4M2u,M5M2u,M4M3u,M5M3u,M5M4u

cccc NEVER USE THIS ROUTINE FOR THE REMNANTS AFTER SPLITTING THE REALS!!!
	if(.not.flg_btilde) then
	  write(*,*) 'Calling compreal for non-BTILDE-event -> stop!'
	  call exit(-1)
	endif

cc for cc-channels: exactly the same stuff-> only consider qg->sqsqqbar
	sqsign=1
	if(flst(3).lt.0) sqsign=-1

	do j=1,nlegreal
	  flstcp(j)=sqsign*flst(j)
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

	spincol=1d0/4d0*1d0/24d0 !default is qg
	crossfac=1d0
	ident=1d0 !for uLuL: factor 1/2!!

	if(flstcp(nlegreal).eq.0) then !only for qq: crossing...
cc make sure we have qq
	  caseqg=.false.
	  spincol=1d0/4d0*1d0/9d0
	  crossfac=-1d0 !we cross 1 massless fermion-> additional minus-sign 
cc now cross the second quark with the FS-gluon
	  flstcp(2)=flst(nlegreal)
	  flstcp(nlegreal)=-flst(2)
	  call switchmom(pcopy,pcopy,2,nlegreal)
cc the minus-signs from crossing
	  do i=0,3
          pcopy(i,2)=-pcopy(i,2)
          pcopy(i,nlegreal)=-pcopy(i,nlegreal)
	  enddo
	else if(flst(1).eq.0) then !for gq: switch momenta 1 and 2
	  call switchmom(pcopy,pcopy,1,2)
	  flstcp(2)=flst(1)
	  flstcp(1)=flst(2)
	endif

cc now we should have a structure qg->sqsqqbar..
cc if we use the light-cone gauge: have to specify n:
	n(0)=0.5d0
	n(1)=0d0
	n(2)=0d0
	n(3)=-sign(0.5d0,pcopy(3,2))

cc flavour/chirality of process at hand:
	chir1=abs(flstcp(3))/pdgfac
      chir2=abs(flstcp(4))/pdgfac !integer-division
      fla1=abs(flstcp(3))-chir1*pdgfac
      fla2=abs(flstcp(4))-chir2*pdgfac

cc for different flavour: make sure that part. 4 and 5 have identical flavour
	if(fla2.ne.abs(flstcp(nlegreal))) then
	  call switchmom(pcopy,pcopy,3,4)
	  msq1=kn_masses(4)
	  msq2=kn_masses(3)
	  flstcp(4)=flst(3)
	  flstcp(3)=flst(4)
	endif

cc NOTE: after crossing/switching we should always have the following order for qg-> sq_i sq_j qbar_j (index wrt flavour)
cc       pcopy(0:3,1)-> pq
cc       pcopy(0:3,2)-> pg
cc       pcopy(0:3,3)-> k1
cc       pcopy(0:3,4)-> k2
cc       pcopy(0:3,nlegreal)-> kq

cc Call the different functions for the different cases (all relevant diagrams 
cc are contained in uLuLubar!)
cc the go-width is only nonzero if we really have to apply a subtraction!!
cc if flg_submethod.eq.0: we either dont need subtraction, or we don't want it...
cc distinguish the different cases: i) take all elements of M^2 (for qqbar IS, for DS "classical")
cc                                  ii) leave out all M_res^2-terms (for DR,DR-II and DS in the "usual" split-mode for btilde-events)
cc                                  iii) in the "new" split-mode: leave out only the terms ~1/s2g^2 (for btilde-events)
cc                                  iv) leave out the intererence-terms (for DR, DS with split==2)
cc                                  v) in the new split-mode: leave out only the terms ~1/s2g (for btilde-events)
cc we separate these cases here by defining different flags:
cc  flag_nonres: is T for both DR, classical DS and for the split-modes ( we consider a btilde-event in this routine!)-> basically always true...
cc  flag_res: is T for classical DS only (or not subtraction)
cc  flag_inter: is T for DR-II and classical DS, for the split-modes: if split==1: attributed to btilde, if split==2: attributed to remnatn, if split==3: the 1/s2g-part to remnant, the rest to the btilde-part
cc  for all other cases: set them per default to true
cc  if no subtraction necessary: flg_submethod==0 anyway...
	flag_nonres=.true.
	flag_res=.true.
	flag_inter=.true.
	flag_subtra=.true.
	if(flg_submethod.ge.2.or.flg_split.ne.0) flag_res=.false. !not for DR-I or II
	if(flg_submethod.eq.2.or.flg_split.gt.1) flag_inter=.false. !not for DR-I
! 	if(flg_submethod.eq.0) flag_subtra=.false.
	if((flg_split.ne.0).or.flg_submethod.ne.1) flag_subtra=.false.

cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
ccc uLuL/R-production:
ccc here we have to take into account "everything twice" to account for "t and u-channels"
ccc note that the invariants have to be adjusted here (masses, too!)
	if(fla1.eq.fla2) then 
	  if(chir1.eq.chir2) then
	    deltac1c2=1
	    ident=0.5d0 !for uLuL: identical particles!
	  else
	    deltac1c2=0
	  endif

	  do i=1,2 !loop over t and u contributions
	    if(i.eq.2) then !switch particle 3 and 4....
		call switchmom(pcopy,pcopy,3,4)
		temp=msq1
		msq1=msq2
		msq2=temp
	    endif

cc the invariants (note: radiated parton is ALWAYS at position nlegreal!!)
	    s=dotp(pcopy(0:3,1)+pcopy(0:3,2),pcopy(0:3,1)+pcopy(0:3,2))
	    s1=dotp(pcopy(0:3,3)+pcopy(0:3,4),pcopy(0:3,3)+pcopy(0:3,4))
	    s2g=dotp(pcopy(0:3,4)+pcopy(0:3,nlegreal),pcopy(0:3,4)+pcopy(0:3,nlegreal))-mgo**2
	    s1twg=dotp(pcopy(0:3,3)+pcopy(0:3,nlegreal),pcopy(0:3,3)+pcopy(0:3,nlegreal))-mgo**2
	    t1=dotp(pcopy(0:3,3)-pcopy(0:3,1),pcopy(0:3,3)-pcopy(0:3,1))
	    t2=dotp(pcopy(0:3,nlegreal)-pcopy(0:3,2),pcopy(0:3,nlegreal)-pcopy(0:3,2))

cc if we use this routine for debugging: avoid call to powheginput-> determine par_wglu_res in the main
cc routines...
	    if(msq2.gt.par_mglu.or.flst(nlegreal).eq.0) then
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

cc if we use the light-cone gauge: have to specify n and the corresponding scalar products:
cc the 4-vector for the light-cone-gauge:
	    if(gauge.eq.1) then
	      npq=dotp(n,pcopy(0:3,1))
	      npg=dotp(n,pcopy(0:3,2))
	      nk1=dotp(n,pcopy(0:3,3))
	      nk2=dotp(n,pcopy(0:3,4))
	      nkq=dotp(n,pcopy(0:3,nlegreal))
	    endif

cc the non-resonant parts: this should ALWAYS be added here, keep if-clause anyway...
	    if(flag_nonres.or.(.not.caseqg)) then
		compreal=compreal+CF_M42*M42()+CF_M52*M52()+2d0*CF_M4M5*M4M5()

		if(flg_split.eq.3.and.caseqg) then !in this case we attribute all term not propto 1/s2g(^2) to the btilde-part
		   compreal=compreal+((CF_M12*M12(2)+CF_M22*M22(2)+CF_M32*M32(2)+
     .                  2d0*(CF_M1M2*M1M2(2)+CF_M1M3*M1M3(2)+CF_M2M3*M2M3(2)))
     .                  +2d0*(CF_M1M4*M1M4(2)+ CF_M1M5*M1M5(2)+CF_M2M4*M2M4(2)+
     .                       CF_M2M5*M2M5(2)+CF_M3M4*M3M4(2)+CF_M3M5*M3M5(2)))
     .               +2d0*(CF_M1M4*M1M4(1)+CF_M1M5*M1M5(1)+CF_M2M4*M2M4(1)+
     .                   CF_M2M5*M2M5(1)+CF_M3M4*M3M4(1)+CF_M3M5*M3M5(1))*props2g
     .               +(CF_M12*M12(1)+CF_M22*M22(1)+CF_M32*M32(1)+
     .               2d0*(CF_M1M2*M1M2(1)+CF_M1M3*M1M3(1)+CF_M2M3*M2M3(1)))*props2g
		endif
	    endif

cc the interference terms:
	    if(flag_inter.or.(.not.caseqg)) then !the interference-terms between t and u channel are attributed to this contribution, too!!
ccc we use for the qg-case with wglu!=0 ALWAYS the (correctly) expanded result in 1/s2g
ccc for sqsqg or the non-resonant case: can simply use the unexpanded result (or if the switch qgunexp is set to true...)
	      if(wglu.eq.0d0.or.flg_qgunexp) then !wglu==0d0 is sufficient: is set so for the sqsqg and nonres case...
		   compreal=compreal+2d0*(CF_M1M4*M1M4(99)+CF_M1M5*M1M5(99)+CF_M2M4*M2M4(99)+
     .                         CF_M2M5*M2M5(99)+CF_M3M4*M3M4(99)+CF_M3M5*M3M5(99))*props2g
		else
		   compreal=compreal+2d0*(CF_M1M4*M1M4(2)+CF_M1M5*M1M5(2)+CF_M2M4*M2M4(2)+
     .                         CF_M2M5*M2M5(2)+CF_M3M4*M3M4(2)+CF_M3M5*M3M5(2))
     .                         +2d0*(CF_M1M4*M1M4(1)+CF_M1M5*M1M5(1)+CF_M2M4*M2M4(1)+
     .                         CF_M2M5*M2M5(1)+CF_M3M4*M3M4(1)+CF_M3M5*M3M5(1))*props2g
	      endif
	    endif

	    if(flag_res.or.(.not.caseqg)) then 
ccc see comment above:
	      if(wglu.eq.0d0.or.flg_qgunexp) then
	         compreal=compreal+(CF_M12*M12(99)+CF_M22*M22(99)+CF_M32*M32(99)+
     .               2d0*(CF_M1M2*M1M2(99)+CF_M1M3*M1M3(99)+CF_M2M3*M2M3(99)))*props2g2
	      else
	         compreal=compreal+(CF_M12*M12(2)+CF_M22*M22(2)+CF_M32*M32(2)+
     .               2d0*(CF_M1M2*M1M2(2)+CF_M1M3*M1M3(2)+CF_M2M3*M2M3(2)))
     .              +(CF_M12*M12(1)+CF_M22*M22(1)+CF_M32*M32(1)+
     .               2d0*(CF_M1M2*M1M2(1)+CF_M1M3*M1M3(1)+CF_M2M3*M2M3(1)))*props2g
     .              +(CF_M12*M12(0)+CF_M22*M22(0)+CF_M32*M32(0)+
     .               2d0*(CF_M1M2*M1M2(0)+CF_M1M3*M1M3(0)+CF_M2M3*M2M3(0)))*props2g2
	      endif
	    endif

	    if(deltac1c2.eq.1) then !for uLuL: we have additionally the interference between t/u
ccc the following terms are only once added (for the t-configuration...):
	      if(i.eq.1) then
		  if((flag_nonres).or.(.not.caseqg)) then
		    compreal=compreal+2d0*(CF_M4M4u*M4M4u()+CF_M4M5u*(M4M5u()+M5M4u())+
     .                          CF_M5M5u*M5M5u()) 
		  endif

		  if((flag_inter.and.flg_split.ne.3).or.(.not.caseqg).or.flg_split.eq.3) then 
cc again: separate the interference-terms between resonant parts 
cc (different propagator-structure!!) and those between
cc resonant and non-resonant
cc for flg_split==2: all terms in the split routine!!
cc otherwise: either use the expanded version or the "original" one (which is not gauge-invariant...) 
cc see comments above!!
	          if(wglu.eq.0d0.or.flg_qgunexp) then
		      compreal=compreal+2d0*(CF_M1M1u*M1M1u(99)+CF_M2M2u*M2M2u(99)+CF_M3M3u*M3M3u(99))*
     .                              props1gs2g+
     .                   2d0*(CF_M1M2u*(M1M2u(99)+M2M1u(99))+CF_M1M3u*(M1M3u(99)+M3M1u(99))+
     .                        CF_M2M3u*(M2M3u(99)+M3M2u(99)))*props1gs2g
     .                   +2d0*(CF_M1M5u*M1M5u(99)+CF_M2M4u*M2M4u(99)+CF_M1M4u*M1M4u(99)+
     .                        CF_M2M5u*M2M5u(99)+CF_M3M4u*M3M4u(99)+CF_M3M5u*M3M5u(99))*
     .                        props2g
     .                   +2d0*(CF_M1M5u*M5M1u(99)+CF_M2M4u*M4M2u(99)+CF_M1M4u*M4M1u(99)+
     .                        CF_M2M5u*M5M2u(99)+CF_M3M4u*M4M3u(99)+CF_M3M5u*M5M3u(99))*
     .                        props1twg
		    else
		      compreal=compreal+2d0*(CF_M1M1u*M1M1u(13)+CF_M2M2u*M2M2u(13)+CF_M3M3u*M3M3u(13)+
     .                             CF_M1M2u*(M1M2u(13)+M2M1u(13))+CF_M1M3u*(M1M3u(13)+M3M1u(13))+
     .                            CF_M2M3u*(M2M3u(13)+M3M2u(13)))
     .                  +2d0*(CF_M1M1u*M1M1u(12)+CF_M2M2u*M2M2u(12)+CF_M3M3u*M3M3u(12)+
     .                        CF_M1M2u*(M1M2u(12)+M2M1u(12))+CF_M1M3u*(M1M3u(12)+M3M1u(12))+
     .                        CF_M2M3u*(M2M3u(12)+M3M2u(12)))*props2g
     .                  +2d0*(CF_M1M1u*M1M1u(11)+CF_M2M2u*M2M2u(11)+CF_M3M3u*M3M3u(11)+
     .                        CF_M1M2u*(M1M2u(11)+M2M1u(11))+CF_M1M3u*(M1M3u(11)+M3M1u(11))+
     .                        CF_M2M3u*(M2M3u(11)+M3M2u(11)))*props1twg
     .                  +2d0*(CF_M1M1u*M1M1u(10)+CF_M2M2u*M2M2u(10)+CF_M3M3u*M3M3u(10)+
     .                        CF_M1M2u*(M1M2u(10)+M2M1u(10))+CF_M1M3u*(M1M3u(10)+M3M1u(10))+
     .                        CF_M2M3u*(M2M3u(10)+M3M2u(10)))*props1gs2g
     .                   +2d0*(CF_M1M5u*M1M5u(2)+CF_M2M4u*M2M4u(2)+CF_M1M4u*M1M4u(2)+
     .                        CF_M2M5u*M2M5u(2)+CF_M3M4u*M3M4u(2)+CF_M3M5u*M3M5u(2))
     .                   +2d0*(CF_M1M5u*M1M5u(1)+CF_M2M4u*M2M4u(1)+CF_M1M4u*M1M4u(1)+
     .                        CF_M2M5u*M2M5u(1)+CF_M3M4u*M3M4u(1)+CF_M3M5u*M3M5u(1))*
     .                        props2g
     .                   +2d0*(CF_M1M5u*M5M1u(2)+CF_M2M4u*M4M2u(2)+CF_M1M4u*M4M1u(2)+
     .                        CF_M2M5u*M5M2u(2)+CF_M3M4u*M4M3u(2)+CF_M3M5u*M5M3u(2))
     .                   +2d0*(CF_M1M5u*M5M1u(1)+CF_M2M4u*M4M2u(1)+CF_M1M4u*M4M1u(1)+
     .                        CF_M2M5u*M5M2u(1)+CF_M3M4u*M4M3u(1)+CF_M3M5u*M5M3u(1))*
     .                        props1twg       
		    endif
		  endif
	      endif
	   endif

cc the subtraction term: here we do not restrict anything, as only BTILDE-events are considered in
cc this routine
	  resamp=0d0 !reset this here!!!
	  if(msq2.lt.par_mglu.and.flag_subtra.and.caseqg.and..not.flg_in_smartsig) then
	    if(dsqrt(s)-par_mglu-msq1.ge.0d0) then !the second theta-function for the subtraction

cc perform the reshuffling, support only CS-type-reshuffling here!!
	      call reshuffle_momenta_2(pcopy,msq1,msq2,0d0,par_mglu,presh)

cc now recalculate the invariants with the reshuffled momenta:
	      s=dotp(presh(0:3,1)+presh(0:3,2),presh(0:3,1)+presh(0:3,2))
	      s1=dotp(presh(0:3,3)+presh(0:3,4),presh(0:3,3)+presh(0:3,4))
! ! 	    s2g=dotp(presh(0:3,4)+presh(0:3,nlegreal),presh(0:3,4)+presh(0:3,nlegreal))-mgo**2
	      s2g=0d0
cc after reshuffling: s2g should be zero
	      t1=dotp(presh(0:3,3)-presh(0:3,1),presh(0:3,3)-presh(0:3,1))
	      t2=dotp(presh(0:3,nlegreal)-presh(0:3,nlegreal),presh(0:3,nlegreal)-presh(0:3,2))

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
! ! ! 		resamp=(CF_M12*M12(99)+CF_M22*M22(99)+CF_M32*M32(99)+
! ! !      .             2d0*(CF_M1M2*M1M2(99)+CF_M1M3*M1M3(99)+
! ! !      .                  CF_M2M3*M2M3(99)))*props2g2
		resamp=(CF_M12*M12(0)+CF_M22*M22(0)+CF_M32*M32(0)+
     .             2d0*(CF_M1M2*M1M2(0)+CF_M1M3*M1M3(0)+
     .                  CF_M2M3*M2M3(0)))*props2g2
	    endif
cc now perform the actual subtraction:
	    compreal=compreal-resamp
	   endif
	  enddo
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cc now the diff-flavour-case: no u-channels or whatsoever, simply call the correct routines...
	else
	  if(chir1.eq.chir2) then
	    deltac1c2=1
	  else
	    deltac1c2=0
	  endif

cc the invariants:
	  s=dotp(pcopy(0:3,1)+pcopy(0:3,2),pcopy(0:3,1)+pcopy(0:3,2))
	  s1=dotp(pcopy(0:3,3)+pcopy(0:3,4),pcopy(0:3,3)+pcopy(0:3,4))
	  s2g=dotp(pcopy(0:3,4)+pcopy(0:3,nlegreal),pcopy(0:3,4)+pcopy(0:3,nlegreal))-mgo**2
	  t1=dotp(pcopy(0:3,3)-pcopy(0:3,1),pcopy(0:3,3)-pcopy(0:3,1))
	  t2=dotp(pcopy(0:3,nlegreal)-pcopy(0:3,2),pcopy(0:3,nlegreal)-pcopy(0:3,2))

cc if we use this routine for debugging: avoid call to powheginput-> determine par_wglu_res in the main
cc routines...
	  if(msq2.gt.par_mglu.or.flst(nlegreal).eq.0) then
	    wglu=0d0
	  else
	    wglu=par_wglu_res
	  endif
cc the propagators in the resonant parts: 
cc as we consider only the btilde terms here: no tan-mapping...
	  props2g2=1d0/(s2g**2+par_mglu**2*wglu**2)
	  props2g=s2g*props2g2


cc if we use the light-cone gauge: have to specify n and the corresponding scalar products:
cc the 4-vector for the light-cone-gauge:
	  if(gauge.eq.1) then
	    npq=dotp(n,pcopy(0:3,1))
	    npg=dotp(n,pcopy(0:3,2))
	    nk1=dotp(n,pcopy(0:3,3))
	    nk2=dotp(n,pcopy(0:3,4))
	    nkq=dotp(n,pcopy(0:3,nlegreal))
	  endif

cc the non-resonant parts: 
	  if(flag_nonres.or.(.not.caseqg)) then
	    compreal=compreal+CF_M42*M42()+CF_M52*M52()+2d0*CF_M4M5*M4M5()

	    if(flg_split.eq.3.and.caseqg) then !in this case we attribute all terms not propto 1/s2g(^2) to the btilde-part
		compreal=compreal+(CF_M12*M12(2)+CF_M22*M22(2)+CF_M32*M32(2)+
     .               2d0*(CF_M1M2*M1M2(2)+CF_M1M3*M1M3(2)+CF_M1M4*M1M4(2)+
     .                    CF_M1M5*M1M5(2)+CF_M2M3*M2M3(2)+CF_M2M4*M2M4(2)+
     .                    CF_M2M5*M2M5(2)+CF_M3M4*M3M4(2)+CF_M3M5*M3M5(2)))
     .               +2d0*(CF_M1M4*M1M4(1)+CF_M1M5*M1M5(1)+CF_M2M4*M2M4(1)+
     .                   CF_M2M5*M2M5(1)+CF_M3M4*M3M4(1)+CF_M3M5*M3M5(1))*props2g
     .               +(CF_M12*M12(1)+CF_M22*M22(1)+CF_M32*M32(1)+
     .               2d0*(CF_M1M2*M1M2(1)+CF_M1M3*M1M3(1)+CF_M2M3*M2M3(1)))*props2g
	    endif
	  endif

cc the interference terms:
	  if(flag_inter.or.(.not.caseqg)) then 
ccc see the comments above...
	      if(wglu.eq.0d0.or.flg_qgunexp) then 
		   compreal=compreal+2d0*(CF_M1M4*M1M4(99)+CF_M1M5*M1M5(99)+CF_M2M4*M2M4(99)+
     .                         CF_M2M5*M2M5(99)+CF_M3M4*M3M4(99)+CF_M3M5*M3M5(99))*props2g
		else
		   compreal=compreal+2d0*(CF_M1M4*M1M4(2)+CF_M1M5*M1M5(2)+CF_M2M4*M2M4(2)+
     .                         CF_M2M5*M2M5(2)+CF_M3M4*M3M4(2)+CF_M3M5*M3M5(2))
     .                         +2d0*(CF_M1M4*M1M4(1)+CF_M1M5*M1M5(1)+CF_M2M4*M2M4(1)+
     .                         CF_M2M5*M2M5(1)+CF_M3M4*M3M4(1)+CF_M3M5*M3M5(1))*props2g
	      endif
	  endif

	  if(flag_res.or.(.not.caseqg)) then 
ccc see comment above:
	      if(wglu.eq.0d0.or.flg_qgunexp) then
	         compreal=compreal+(CF_M12*M12(99)+CF_M22*M22(99)+CF_M32*M32(99)+
     .               2d0*(CF_M1M2*M1M2(99)+CF_M1M3*M1M3(99)+CF_M2M3*M2M3(99)))*props2g2
	      else
	         compreal=compreal+(CF_M12*M12(2)+CF_M22*M22(2)+CF_M32*M32(2)+
     .               2d0*(CF_M1M2*M1M2(2)+CF_M1M3*M1M3(2)+CF_M2M3*M2M3(2)))
     .              +(CF_M12*M12(1)+CF_M22*M22(1)+CF_M32*M32(1)+
     .               2d0*(CF_M1M2*M1M2(1)+CF_M1M3*M1M3(1)+CF_M2M3*M2M3(1)))*props2g
     .              +(CF_M12*M12(0)+CF_M22*M22(0)+CF_M32*M32(0)+
     .               2d0*(CF_M1M2*M1M2(0)+CF_M1M3*M1M3(0)+CF_M2M3*M2M3(0)))*props2g2
	      endif
	  endif

cc the subtraction term: here we do not restrict anything, as only BTILDE-events are considered in
cc this routine
	  resamp=0d0 !reset this here!!!
	  if(msq2.lt.par_mglu.and.flag_subtra.and.caseqg) then
	    if(dsqrt(s)-par_mglu-msq1.ge.0d0) then !the second theta-function for the subtraction
cc perform the reshuffling, support only CS-type-reshuffling here!!
	      call reshuffle_momenta_2(pcopy,msq1,msq2,0d0,par_mglu,presh)
cc now recalculate the invariants with the reshuffled momenta:
	      s=dotp(presh(0:3,1)+presh(0:3,2),presh(0:3,1)+presh(0:3,2))
	      s1=dotp(presh(0:3,3)+presh(0:3,4),presh(0:3,3)+presh(0:3,4))
! ! ! 	      s2g=dotp(presh(0:3,4)+presh(0:3,nlegreal),presh(0:3,4)+presh(0:3,nlegreal))-mgo**2
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

cc here it does not matter if we take the expanded result or the full one, as in the limit of on-shell go
cc they are identical...
		resamp=(CF_M12*M12(0)+CF_M22*M22(0)+CF_M32*M32(0)+
     .             2d0*(CF_M1M2*M1M2(0)+CF_M1M3*M1M3(0)+
     .                  CF_M2M3*M2M3(0)))*props2g2
	    endif
cc now perform the actual subtraction:
	    compreal=compreal-resamp
	  endif
	endif

cc overall factors...
	compreal=compreal*spincol*crossfac*ident
	end