cc the main-routine to obtain the contributions for the "split"
cc real terms
cc contrary to sqsq, we have only a resonance between particles 4 and 5-> only one call!!
	subroutine  real_split(flstreg,preal,ampsq)
	implicit none
	include 'nlegborn.h'
	include 'pwhg_kn.h'
	include 'pwhg_flg.h'
	include 'pwhg_st.h'
	include 'pwhg_math.h'
	include 'sqantisq_realqg.h'
	include 'sqantisq_realqg_col.h'
	include 'PhysPars.h' !for the flag tan_map_abs, meaning see comments there
	real*8 preal(0:3,nlegreal),presh(0:3,nlegreal),ampsq
	real*8 pres(0:3),pnonres(0:3),pqbar(0:3),kq(0:3),kg(0:3)
	real*8 corrfac,invmass
	real*8 props2g2,props2g,wglu
	real*8 n(0:3)
	real*8 gs2

	integer i
	integer flstreg(nlegreal)
	integer fla1,fla2,chir1,chir2
	real*8 decborn1,decborn2,bornjk
	real*8 dotp,lambda
	real*8 M1M2,M22,M2M3,M2M4,M2M5,M2M6,M2M7,M2M8,M2M9,M2M10,M2M11,
     .        M1M5,M3M5,M4M5,M52,M5M6,M5M7,M5M8,M5M9,M5M10,M5M11,
     .        M1M10,M3M10,M4M10,M6M10,M7M10,M8M10,M9M10,M102,M10M11
	real*8 spincol,resamp
	external M1M2,M22,M2M3,M2M4,M2M5,M2M6,M2M7,M2M8,M2M9,M2M10,M2M11,
     .        M1M5,M3M5,M4M5,M52,M5M6,M5M7,M5M8,M5M9,M5M10,M5M11,
     .        M1M10,M3M10,M4M10,M6M10,M7M10,M8M10,M9M10,M102,M10M11
	external dotp,lambda

	ampsq=0d0

cccc if some parts of the simulation are switched off: return 0 here
ccc if we do not consider qq-channels: return 0 here
	if(flstreg(1).ne.0.and.flstreg(2).ne.0) then
	  write(*,*) 'Calling the "split"-routine with non-qg-IS-> STOP!'
	  call exit(-1)
	endif

	if(flg_btilde) then
	  write(*,*) 'Calling the "split"-routine for Btilde-> STOP!'
	  call exit(-1)
	endif

cc the flavour-structure
	fla1=abs(mod(flstreg(3),pdgfac))
	fla2=abs(mod(flstreg(4),pdgfac))
	chir1=abs(flstreg(3))/pdgfac
	chir2=abs(flstreg(4))/pdgfac

cc for the uLuLbarc-case: no resonance possible, simply return here...
	if(fla1.eq.fla2.and.fla2.ne.abs(flstreg(nlegreal))) then
          write(*,*) 'Error in real_split: found flst a la ululc-> correct the flstsplit-routine!'
	   write(*,*) flstreg(1:nlegreal)
	   call exit(-1)
	endif
cc this case should never occur...

ccc the coupling
	gs2=st_alpha*4d0*pi
	spincol=1d0/4d0*1d0/24d0 !always qg in this routine...

ccc now assign the momenta and masses
ccc first find the gluon
	if(flstreg(1).eq.0) then
	  do i=0,3
	    kg(i)=preal(i,1)
	    kq(i)=preal(i,2)
	  enddo
	else if(flstreg(2).eq.0) then
	  do i=0,3
	    kg(i)=preal(i,2)
	    kq(i)=preal(i,1)
	  enddo
	else
	  write(*,*) 'Error in real_split: called with a non-qg-flst:'
	  write(*,*) flstreg
	endif

ccc now find the correct pair (for qbar g -> sq sqbar qbar: 35, else: 45)
	if(flstreg(nlegreal).gt.0) then
	  if(fla2.ne.flstreg(nlegreal)) then
	    write(*,*) 'In real_split: error1 in assignment of mres'
	    write(*,*) flstreg(1:nlegreal)
	    call exit(-1)
	  endif
	  msq1=kn_masses(3)
	  msq2=kn_masses(4) 
	  do i=0,3
	    pres(i)=preal(i,4)
	    pnonres(i)=preal(i,3)
	    pqbar(i)=preal(i,nlegreal)
	  enddo
	else
	  if(fla1.ne.abs(flstreg(nlegreal))) then
	    write(*,*) 'In real_split: error2 in assignment of mres'
	    write(*,*) flstreg(1:nlegreal)
	    call exit(-1)
	  endif

	  msq1=kn_masses(4)
	  msq2=kn_masses(3) 
	  do i=0,3
	    pres(i)=preal(i,3)
	    pnonres(i)=preal(i,4)
	    pqbar(i)=preal(i,nlegreal)
	  enddo
	endif
	mgo=par_mglu

	if(abs(dotp(pres,pres)-msq2**2).gt.1d-6) then
	  write(*,*) 'ERROR in real_split: wron mass assignmetn:'
	  write(*,*) 'msq2:',msq2,'sqrt(p_res^2)',dsqrt(dotp(pres,pres))
	endif

	if(abs(dotp(pnonres,pnonres)-msq1**2).gt.1d-6) then
	  write(*,*) 'ERROR in real_split: wron mass assignmetn:'
	  write(*,*) 'msq1',msq1,'sqrt(pnonres^2)',dsqrt(dotp(pnonres,pnonres))
	endif

ccc Ga!=0 only if we have a possible resonance; 
ccc otherwise: no tan-mapping at all, just integrate for Ga=0!!
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
	invmass=dotp(pres+pqbar,pres+pqbar)
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

ccc construct the propagators
ccc note: if no subtraction is performed: we will never use a tan-mapping in the ps-routine
ccc       simply set the propagator here to it's normal form (wglu=0 , see above)...
	if(tan_map_abs.and.msq2.le.par_mglu) then !!absorb 1/(s2g^2+mgo^2*wglu**2) in the jacobian
	  props2g2=1d0
	else
	  props2g2=1d0/(s2g**2+mgo**2*wglu**2)
	endif

	props2g=s2g*props2g2

cccccccccccccccccccccccccccccccccccccccccccc
ccc now collect the different contributions:
ccc for flg_split==1: only the resonant part is kept
ccc for flg_split==2: both the resonant and the interference terms contribute
ccc                   Note: for flg_split==2 we always use the unexpanded result!!!
ccc for flg_split==3: we keep only the pole-parts of the resonant and interference terms
	deltac1c2=0
	if(chir1.eq.chir2) deltac1c2=1

ccc the resonant parts:
	if(flg_split.lt.3) then
cc always use the unexpanded result for split==1 or split==2
	    ampsq=ampsq+(CF_M22*M22(99)+CF_M52*M52(99)+CF_M102*M102(99)+
     .                 2d0*(CF_M2M5*M2M5(99)+CF_M2M10*M2M10(99)+CF_M5M10*M5M10(99)))*props2g2
	else
	  ampsq=ampsq+(CF_M22*M22(0)+CF_M52*M52(0)+CF_M102*M102(0)+
     .                 2d0*(CF_M2M5*M2M5(0)+CF_M2M10*M2M10(0)+CF_M5M10*M5M10(0)))*props2g2
	endif

ccc the interference terms: here we need to distinguish the uLuL and uLdL case!!
ccc the case uLuLbarc will never occur!!
	if(flg_split.eq.2) then
	    if(fla1.eq.fla2) then
	      ampsq=ampsq+2d0*(CF_M1M2*M1M2(99)+CF_M2M3*M2M3(99)+CF_M2M4*M2M4(99)+
     &                     CF_M2M6*M2M6(99)+CF_M2M7*M2M7(99)+CF_M2M8*M2M8(99)+
     &                     CF_M2M9*M2M9(99)+CF_M2M11*M2M11(99)+CF_M1M5*M1M5(99)+
     &                     CF_M3M5*M3M5(99)+CF_M4M5*M4M5(99)+CF_M5M6*M5M6(99)+
     &                     CF_M5M7*M5M7(99)+CF_M5M8*M5M8(99)+CF_M5M9*M5M9(99)+
     &                     CF_M5M11*M5M11(99)+CF_M1M10*M1M10(99)+CF_M3M10*M3M10(99)+
     &                     CF_M4M10*M4M10(99)+CF_M6M10*M6M10(99)+CF_M7M10*M7M10(99)+
     &                     CF_M8M10*M8M10(99)+CF_M9M10*M9M10(99)+
     &                     CF_M10M11*M10M11(99))*props2g
	    else
	      ampsq=ampsq+2d0*(CF_M2M3*M2M3(99)+CF_M2M4*M2M4(99)+
     &                     CF_M3M5*M3M5(99)+CF_M4M5*M4M5(99)+
     &                     CF_M3M10*M3M10(99)+CF_M4M10*M4M10(99))*props2g
	    endif
	endif

ccccccccccccccccccccccccccccccccccccccc
ccc the subtraction-terms (no need to check subtraction-method: only for DS!! maybe without)
	if(((dsqrt(s)-msq1-par_mglu).ge.0d0).and.(msq2.le.par_mglu).and.flg_submethod.ne.0.and..not.flg_in_smartsig) then  !Theta-functions for subtraction
c correct jacobian: for restricted phase-space, it takes a different form...
	  if(flg_restrict) then
c the following factor accounts for the restriction of the pahse-space and modifies the jacobian!
	    corrfac=invmass/abs(invmass-msq2**2)/par_mglu**2*abs(par_mglu**2
     &             -msq2**2)*dsqrt(lambda(s,par_mglu**2,msq1**2))
     &             /dsqrt(lambda(s,invmass,msq1**2))
	  else
	    corrfac=1d0
	  endif

c perform the reshuffling, again make sure to get the correct pair of resonant sq/q!:
	  if(flstreg(nlegreal).gt.0) then !resonance between 4 and 5
	    call reshuffle_momenta_2(preal,msq1,msq2,0d0,par_mglu,presh)
c note: reshuffling-routine assumes res. between particles 4 and 5-> first switch them
	  else
	    call switchmom(preal,presh,3,4) !exchange the momenta, masses are already OK!...
	    call reshuffle_momenta_2(presh,msq1,msq2,0d0,par_mglu,presh) !recycle presh here...
	  endif

cc presh has the original order of momenta for incoming particles
cc if we have the order gq-> switch them here!!
	  if(flstreg(1).eq.0) call switchmom(presh,presh,1,2)

ccc now recalculate the invariants:
	  s=dotp(presh(0:3,1)+presh(0:3,2),presh(0:3,1)+presh(0:3,2))
	  s1=dotp(presh(0:3,3)+presh(0:3,4),presh(0:3,3)+presh(0:3,4))
	  s2g=0d0
cc after reshuffling: s2g should be zero
	  t1=dotp(presh(0:3,3)-presh(0:3,1),presh(0:3,3)-presh(0:3,1))
	  t2=dotp(presh(0:3,nlegreal)-presh(0:3,2),presh(0:3,nlegreal)-presh(0:3,2))

	  if(gauge.eq.1) then
	    nk1=dotp(n,presh(0:3,3))
	    nk2=dotp(n,presh(0:3,4))
	    nkq=dotp(n,presh(0:3,nlegreal))
	  endif

cc and finally subtract (the subtraction terms are identical for expanded or not expanded result-> simply take the expanded 
	  ampsq=ampsq-(CF_M22*M22(0)+CF_M52*M52(0)+CF_M102*M102(0)+
     .                 2d0*(CF_M2M5*M2M5(0)+CF_M2M10*M2M10(0)
     .                     +CF_M5M10*M5M10(0)))*props2g2*corrfac	
	endif

ccc and last but not least: attach the correct factor in alphas (here directly gs^6!!):
	ampsq=ampsq*gs2**3*spincol

ccc add decays, if needed (is OK to just use flstreg here: there was no reordering 
ccc                       of entries, and we are only interested in the FS particels!!)
	if(flg_decay) then
         call sqdec_born(flstreg(1:nlegborn-1),3,par_decchan1,kn_preal,decborn1,bornjk)
         call sqdec_born(flstreg(1:nlegborn-1),4,par_decchan2,kn_preal,decborn2,bornjk)
	   ampsq=ampsq*decborn1*decborn2
	endif
	end