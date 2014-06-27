	subroutine setvirtual(p,vflav,virtual)
	implicit none
#define LEGS 4
#include "decl.h" 
	include 'user_sqantisq.h'
	include 'pwhg_st.h'
	include 'pwhg_br.h'
	include 'decay.h'
	real*8 p(0:3,nlegborn),pcopy(0:3,nlegborn)
	integer vflav(nlegborn)
	integer i,j,flags
	real*8 spart,rescale,avgfac
	real*8 abs_p1,abs_p2,abs_p3,abs_p4
	double precision p1, ex1,ey1,ez1
	double precision p2, ex2,ey2,ez2
	double precision p3, ex3,ey3,ez3 
	double precision p4, ex4,ey4,ez4
	double precision lambda
	integer*8 helicities
	real*8 temp,dotp
     
	integer chir1,chir2,fla1,fla2
	real*8 born,decborn1,decborn2,decvirt1,decvirt2,decbornjk
	real*8 bornjk(nlegborn,nlegborn),bmunu(0:3,0:3,nlegborn,nlegborn)
	logical samedifffla
	integer procnum
	real*8 virtual,facalfas
	logical inimix
	data inimix/.true./
	save inimix
	external dotp

	procnum=flst_cur_iborn
	virtual=0d0
ccc chiralities and flavours
	chir1=abs(vflav(3))/pdgfac !see comments in born: assume here the case sqsq, sq~sq~gives the same results
	chir2=abs(vflav(4))/pdgfac !integer-division
	fla1=abs(vflav(3))-chir1*pdgfac
	fla2=abs(vflav(4))-chir2*pdgfac

ccc check sq-antisq-ordering of final-state:
	if(vflav(3).lt.vflav(4)) then
	  write(*,*), 'in virtual: final-state is not in order sq-antisq'
	endif

ccc for the case ddbar->uLuLbar: the born-term is identical for ssbar->uLuLbar, but the Virtual
ccc is not (if m_sL!=mdL)-> if smartsig is used: wrong entries for the decay-stuff...
ccc in this case: recalualte decborn...
	if(vflav(1)+vflav(2).eq.0.and.vflav(1).ne.0.and.abs(vflav(1)).ne.fla1) then
	  samedifffla=.true.
	else
	  samedifffla=.false.
	endif
c initialize looptools, take only finite part and MSbar
	call ltini
	
	lambda=0d0
	call setlambda(lambda)
	call setdelta(0d0)

	if(par_NLOwhich.ne.2) then !for NLOwhich==2: only NLO-corrections in the decays!!
ccc for qbar q -> sq antisq: switch IS-momenta
	  if(vflav(1).lt.0) then
	    call switchmomborn(p,pcopy,1,2) 
	  else
	    do i=0,3
	      do j=1,nlegborn
	        pcopy(i,j)=p(i,j)
	      enddo
	    enddo
	  endif

	  spart=2d0*(pcopy(0,1)*pcopy(0,2)-(pcopy(1,1)*pcopy(1,2)+
     &           pcopy(2,1)*pcopy(2,2)+pcopy(3,1)*pcopy(3,2)))

! RESCALE all mass-dependent quantities!
	  rescale=2d0/dsqrt(spart)

c set here the masses and the matrices for the FormCalc-Calculation
c in the FC-results: all masses and S,T,U are RESCALED!!!
	  MU = 0.d0
	  MU2 = MU**2
	  MC = 0.D0
	  MC2 = MC**2
	  MD = 0.d0
	  MD2 = MD**2
	  MS = 0.d0
	  MS2 = MS**2
	  MB = 0.d0
	  MB2 = MB**2
	  MBatMB = 0.d0
	  MT = par_mt*rescale
        MT2 = MT**2
	  Mgl=par_mglu*rescale
	  Mgl2=Mgl**2

         do i=1,2
	    MSf(i,3,1)=par_msq(2,i)*rescale
	    MSf(i,4,1)=par_msq(1,i)*rescale
	    MSf(i,3,2)=par_msq(4,i)*rescale
	    MSf(i,4,2)=par_msq(3,i)*rescale
	    MSf(i,3,3)=par_msq(6,i)*rescale
	    MSf(i,4,3)=par_msq(5,i)*rescale
	  end do

	  do i=3,4
          do j=1,3
	       MSf2(1,i,j)=MSf(1,i,j)**2
	       MSf2(2,i,j)=MSf(2,i,j)**2
	    enddo
	  enddo

	  if(inimix) then
	   do i=1,3
	     do j=3,4
	       USf(1,1,j,i)=(1d0,0d0)
	       USf(2,2,j,i)=(1d0,0d0)
	       USf(1,2,j,i)=(0d0,0d0)
	       USf(2,1,j,i)=(0d0,0d0)
	     end do
	   end do

c - the stop-mixing-matrix:
	  do i=1,2
	    do j=1,2
	       USf(i,j,3,3)=DCMPLX(par_stopmix(i,j))
	    enddo
	  enddo
	  inimix=.false.
	 endif

c      for gg --> sq sqbar: we have only unpol gluons (only transversal dofs!)-> same helicity code 
c                           as in the qqbar case, i.e. no longitudinal dof!
c      for qqbar --> sq sqbar: as usually
c     '2 x unpol spin 1/2 --> 2 x unpol spin 0' = 01010 01010 00100 00100 = 338052      
	  helicities = 338052

c     flags = loop reset = 1 1     
	  flags = 11   
	
ccc Set some masses:
	  msq=kn_masses(3)*rescale
	  mantisq=kn_masses(4)*rescale
	
ccc in loops for uLuL: we might have some squarks with different masses than in the FS
ccc however, these masses are still related to either the IS-flavour or the FS-chiralities
	  if(chir1.eq.1) then
	    msqchir=par_msq(fla1,2)*rescale
	  else
	    msqchir=par_msq(fla1,1)*rescale
	  endif
	
ccc if the squark-type is related to the IS flavour (only relvant for ddbar->ululbar-> vflav(1) or (2) is the same...):
	  if(vflav(1).ne.0d0) then
	    msqISLH=par_msq(abs(vflav(1)),1)*rescale
	    msqISRH=par_msq(abs(vflav(1)),2)*rescale
	  else
	    msqISLH=0d0
	    msqISRH=0d0
	  endif
	
	  msq2=msq**2
	  mantisq2=mantisq**2
	  msqchir2=msqchir**2
	  msqISLH2=msqISLH**2
	  msqISRH2=msqISRH**2

c  assign the momentum-directions and abolute values, use the RESCALED VALUES!!
        abs_p1=dsqrt(pcopy(1,1)**2+pcopy(2,1)**2+pcopy(3,1)**2)
        abs_p2=dsqrt(pcopy(1,2)**2+pcopy(2,2)**2+pcopy(3,2)**2)
        abs_p3=dsqrt(pcopy(1,3)**2+pcopy(2,3)**2+pcopy(3,3)**2)
        abs_p4=dsqrt(pcopy(1,4)**2+pcopy(2,4)**2+pcopy(3,4)**2)

        ex1=pcopy(1,1)/abs_p1
        ey1=pcopy(2,1)/abs_p1 
        ez1=pcopy(3,1)/abs_p1

        ex2=pcopy(1,2)/abs_p2
        ey2=pcopy(2,2)/abs_p2
        ez2=pcopy(3,2)/abs_p2

        ex3=pcopy(1,3)/abs_p3
        ey3=pcopy(2,3)/abs_p3
        ez3=pcopy(3,3)/abs_p3
      
        ex4=pcopy(1,4)/abs_p4
        ey4=pcopy(2,4)/abs_p4
        ez4=pcopy(3,4)/abs_p4  

	  p1=abs_p1*rescale
	  p2=abs_p2*rescale
	  p3=abs_p3*rescale
	  p4=abs_p4*rescale

c     the momenta in the calling-sequence of virtual are always kn_cmpborn->nope!
        call VecSet(1, 0.d0, p1, ex1,ey1,ez1)
        call VecSet(2, 0.d0, p2, ex2,ey2,ez2)
        call VecSet(3, kn_masses(3)*rescale, p3, ex3,ey3,ez3)      
        call VecSet(4, kn_masses(4)*rescale, p4, ex4,ey4,ez4)
      
c strip of a factor of alfas/2/pi from the result; formcalc-results have alphas=1
	  facalfas=2.d0*pi*st_alpha**2
	
c set the renormalization-scale in looptools: st_muren2!
	  call setmudim(st_muren2*rescale**2)

c calls to the FormCalc-routines
cc the gg-case
	  if(vflav(1).eq.0) then
	    avgfac=1d0/4d0/64d0 !the spin-color-averaging-factor!!
	    call LLgg_SquaredME(temp,helicities,flags)
	  else
	    avgfac=1d0/4d0/9d0 !the spin-color-averaging-factor!!
	    if(fla1.eq.fla2.and.chir1.eq.chir2) then
	      if(abs(vflav(1)).eq.fla1) then
	        call LLsf_SquaredME(temp,helicities,flags)
	      else
	        call LLdf_SquaredME(temp,helicities,flags)
	      endif
	    else if(fla1.ne.fla2.and.chir1.eq.chir2) then
	      call uLdL_SquaredME(temp,helicities,flags)
	    else if(chir1.ne.chir2) then
cc the cases uLuRbar and uLdRbar are identical (no t-u-channel as in sqsq!!)
cc simply use the uLdR-channel...
	      call uLdR_SquaredME(temp,helicities,flags)
	    else
	      write(*,*) 'In virtuals: strange flavour-structure for'
	      write(*,*) 'q qbar -IS occured',vflav(1:4)
	      call exit(-1)
	    endif
	  endif

c need to extract a factor N=(4Pi)^eps/Ga(1-eps)-> LoopTools does already extract this factor
	  virtual=temp*facalfas*avgfac !the IR-finite result from FC/LT
	endif
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccc now add the decay-results, if needed:
cc first the Born-rates:
ccc dec_bornprod contains the Born-ME^2 for the production, without flux-factor...

ccc note: the switching of momenta in the IS is not relevant here!!!
	if(flg_decay.and.flg_in_smartsig) then !recalculate everything
cc use ORIGINAL momenta here!!!
         call compborn(p,vflav,born,bornjk,
     .                  bmunu,decborn1,decborn2,decbornjk,decbornjk)
	else if(flg_decay) then
	  if(.not.samedifffla) then
	    decborn1=dec_born(procnum,1)
	    decborn2=dec_born(procnum,2)
	    born=dec_bornprod(procnum)
	  else !see comment above: for ddbar->uLuLbar etc: not necessarily possible to recylce results
         call compborn(p,vflav,born,bornjk,
     .                  bmunu,decborn1,decborn2,decbornjk,decbornjk)
	  endif
	endif

cc now calculate the virtuals
	if(par_NLOwhich.gt.1) then !NLO-contributions in decay for NLOwhich>=2
c set the renormalization-scale in looptools: st_muren2 without rescaling!
	  call setmudim(st_muren2)
	  call sqdec_virt(vflav,3,par_decchan1,p,decborn1,decvirt1)
	  call sqdec_virt(vflav,4,par_decchan2,p,decborn2,decvirt2)
	endif
cc and plug everything together (for sq->qchi0: decvirt1 is prop. to decborn1-> 
cc in principle these contributions just cancel, but to be fully general here
cc keep this useless ratio
	if(flg_decay) then
	  if(par_NLOwhich.ne.2) virtual=virtual*decborn1*decborn2
	  if(par_NLOwhich.ne.1) virtual=virtual+born*decborn1*decvirt2
     .                                       +born*decborn2*decvirt1
	endif
	end