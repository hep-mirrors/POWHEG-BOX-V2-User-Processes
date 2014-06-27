ccc the Real routine 
      subroutine setreal(p,rflav,amp2)
	implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'pwhg_kn.h'
      include 'PhysPars.h'
	include 'sqsq_realqg.h'
	include 'pwhg_flg.h'
	include 'pwhg_flst.h'
	include 'pwhg_rad.h'
	include 'pwhg_br.h'
	include 'decay.h'
	real*8 p(0:3,nlegreal),amp2,invmass1,invmass2
	integer rflav(nlegreal)
	integer chir1,chir2,fla1,fla2
	logical doradcut
	integer alr
	real*8 gs2 
	real*8 temp1,temp2
	real*8 compreal,dotp
	real*8 decborn1,decborn2,decreal1,decreal2
	real*8 born,bornjk(nlegborn,nlegborn),bmunu(0:3,0:3,nlegborn),decbornjk1,decbornjk2
	external compreal,dotp

cc current alr has been saved in flst_cur_alr
	alr=flst_cur_alr
cc the chiralities and flavour
	chir1=rflav(3)/pdgfac
      chir2=rflav(4)/pdgfac !integer-division
      fla1=rflav(3)-chir1*pdgfac
      fla2=rflav(4)-chir2*pdgfac

cc the strong coupling
      gs2 = 4d0*pi*st_alpha

cc set the gauge
	gauge=flg_gauge
	
cc if decays are performed and we radiate off the production-process:
	if(kn_resemitter.eq.0) then
c compute real results:
	  amp2=compreal(rflav,p)

cc attach the correct facotrs in alphas:
	  amp2=amp2*gs2**2*8d0*pi**2

cc if we consider decays: get the born-ME^2 for the sq-decays:
	  if(flg_decay) then
	      call sqdec_born(flst_uborn(1:nlegborn,alr),3,par_decchan1,p,decborn1,bornjk)
	      call sqdec_born(flst_uborn(1:nlegborn,alr),4,par_decchan2,p,decborn2,bornjk)
	    amp2=amp2*decborn1*decborn2
	  endif

cc if decays are performed (and radiation is generated from the decay-products):
	else if(kn_resemitter.eq.3) then
	  call sqdec_real(rflav,3, par_decchan1,p,decreal1)
! 	  if(flg_in_smartsig) then
	    call compborn(p(0:3,1:nlegborn),flst_uborn(1:nlegborn,alr),born,bornjk,
     .                  bmunu,decborn1,decborn2,decbornjk1,decbornjk2)
! 	  else
! 	    born=dec_bornprod(flst_alr2born(alr))
! 	    decborn2=dec_born(flst_alr2born(alr),2)
! 	  endif
	  amp2=born*decborn2*decreal1
	  return !no "cutting" necessary!!
	else if(kn_resemitter.eq.4) then
	  call sqdec_real(rflav,4, par_decchan2,p,decreal2)
! 	  if(flg_in_smartsig) then
	    call compborn(p(:,1:nlegborn),flst_uborn(1:nlegborn,alr),born,bornjk,
     .                  bmunu,decborn1,decborn2,decbornjk1,decbornjk2)
! 	  else
! 	    born=dec_bornprod(flst_alr2born(alr))
! 	    decborn1=dec_born(flst_alr2born(alr),1)
! 	  endif
	  amp2=born*decborn1*decreal2
	  return !no "cutting" necessary!!
	else
	  write(*,*) 'Invalid value for kn_resemitter in Real:',kn_resemitter
	endif
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c in the case of radiation-generation: cut on the invariant mass of the 
c potentially on-shell-case to avoid negative amp2
c make sure to consider the same-flavour-stuff correctly
c no need to do this in the DR-case!!!
c if the interference-part is removed from the reals and treated as regular: not necessary to do anything like this!
	doradcut=.true.
	if(.not.flg_rad.or.flg_submethod.eq.2) doradcut=.false. !only radiation-phase!

	if(flg_split.eq.2) doradcut=.false. !for the split-case where interference-terms are moved completelyto the regulars!
	
	if(doradcut) then
c the potentially critical invmasses:
        invmass1=dsqrt(abs(dotp(p(0:3,3)+p(0:3,nlegreal),p(0:3,3)+p(0:3,nlegreal))))
	  invmass2=dsqrt(abs(dotp(p(0:3,4)+p(0:3,nlegreal),p(0:3,4)+p(0:3,nlegreal))))
	  temp1=0d0
	  temp2=0d0

	  call increasecnt('total calls to real-routine in rad-gen')

c we need this ONLY in case of on-shell-resonances!
	  if((kn_masses(3).le.par_mglu).or.(kn_masses(4).le.par_mglu)) then
	    if(fla1.eq.fla2) then
             if(kn_masses(3).lt.par_mglu) temp1=abs(par_mglu-invmass1)
	       if(kn_masses(4).lt.par_mglu) temp2=abs(par_mglu-invmass2)
	    else
		  if(fla1.eq.abs(rflav(nlegreal)).and.kn_masses(3).le.par_mglu) temp1=abs(par_mglu-invmass1)
		  if(fla2.eq.abs(rflav(nlegreal)).and.kn_masses(4).le.par_mglu) temp2=abs(par_mglu-invmass2)
	    endif

          if(((temp1.le.par_radcut).or.(temp2.le.par_radcut))
     &        .and.(amp2.le.0.d0)) then
              amp2=1.d-20
	        call increasecnt('radiation in on-shell-res. region vetoed')
	    endif
	  endif
	endif
	end