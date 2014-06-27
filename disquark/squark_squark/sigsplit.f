c Function to be integrated with mint, used to generate
c non-singular contributions which result from an explicit splitting
c of the real parts (needed for the "correct" DS-method for on-shell-gluinos/squarks)
c is in fact VERY similar to sigremnant, but with some modifications
c retval is the function return value
c retvavl0 is an 'avatar' function the has similar value, but is much
c easier to compute (i.e. the Born term in this case)
c  -> not needed here
c imode = 0 compute retval0 only.
c imode = 1 compute retval, retval0
c return value: 0: success; 1: retval0 was not computed
c                 (this function does not support an avatar function)
      function sigsplit(xx,ww,ifirst,imode,
     1     retval,retval0)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
      include 'pwhg_flg.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
	integer sigsplit,imode
	real*8 retval,retval0
      real * 8 xx(ndiminteg),ww
      integer ifirst,j
      real * 8 xjac,totsplit
      real*8 powheginput
      real*8 tempsplit1,tempsplit2 !for calc. of contribution resonant in 45 and 35 sep.
	real*8 jaco1,jaco2 
	real*8 beta,vec(1:3)
      external powheginput
	sigsplit=1
	kn_resemitter=0 !set this to zero: radiation is always generated from production process for split contriubtiosn
C -   Boost of decay-momenta to the LAB frame:
      vec(1)=0d0
      vec(2)=0d0
      vec(3)=1d0

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      if(ifirst.eq.2) then
	  call addupweightssplit(retval) 
         if(flg_nlotest) call pwhgaccumup
         return
      endif

c For a running-scale, we would have to provide some kinematics at this point-> not
c yet implemented (not so sensible anyway...)
      if(powheginput('#fixedscale').ne.1) then
	 write(*,*) 'Error in sigremnants: trying to split the real contribution'
	 write(*,*) 'with a running-scale-> not implemented so far, stop!'
	 call exit(-1)
      endif
      call setscalesbtilde
c for the radiation-generation: need the last random-numbers (all of them), save them; alphas is set here, too!!
c in rad-xradsplit
      do j=1,ndiminteg
        rad_xradsplit(j)=xx(j)
      enddo

!    use the generic phase-space here, provide tan-mapping between part. 3&5 and 4&5->
!    two sets of momenta-> call the ps-routine twice, make sure to take only the
!    correct ME (resonant in 45 or 35)-> pass flag to the sigrealsplit-routine
!    keep the 35 and 45-results separate in the arrays rad_split_arr35,45 and so on
      totsplit=0d0
! first create a momentum-config where the particles 4 and nlegreal are tan-mapped on a resonant gluino 
      call realps(kn_masses(3),kn_masses(4),xx,.true.)
ccc generate momenta (using the kn_preal already generated in real phase-space)
	if(flg_decay) then
         beta=(kn_x1-kn_x2)/(kn_x1+kn_x2)
         if(par_decchan1.eq.1) then
            call oneto2_phasespace(kn_cmpreal(0:3,3),kn_masses(3),
     .                  kn_masses(5),kn_masses(7),xx(7:8),
     .                  kn_cmpreal(0:3,5),kn_cmpreal(0:3,7),jaco1)
            call mboost(1,vec,beta,kn_cmpreal(0,5),kn_preal(0,5))
            call mboost(1,vec,beta,kn_cmpreal(0,7),kn_preal(0,7))
	   endif
         if(par_decchan2.eq.1) then
            call oneto2_phasespace(kn_cmpreal(0:3,4),kn_masses(4),
     .                  kn_masses(6),kn_masses(8),xx(9:10),
     .                  kn_cmpreal(0:3,6),kn_cmpreal(0:3,8),jaco2)
            call mboost(1,vec,beta,kn_cmpreal(0,6),kn_preal(0,6))
            call mboost(1,vec,beta,kn_cmpreal(0,8),kn_preal(0,8))
	   endif
	   kn_jacborn=kn_jacborn*jaco1*jaco2
	endif

      xjac=kn_jacborn*ww*hc2
      call sigreal_split(xjac,tempsplit1,rad_split_arr45,.true.)
      call transfersign(rad_split_arr45,rad_split_sign45,flst_nregularsplit)
      if(flg_nlotest) then
        call analysis_driver(tempsplit1,1)
      endif

! and now create a momentum-config where the particles 3 and 5 are tan-mapped on a resonant gluino
      call realps(kn_masses(4),kn_masses(3),xx,.false.)

ccc generate momenta (using the kn_cmpreal already generated in real phase-space)
	if(flg_decay) then
         beta=(kn_x1-kn_x2)/(kn_x1+kn_x2)
         if(par_decchan1.eq.1) then
            call oneto2_phasespace(kn_cmpreal(0:3,3),kn_masses(3),
     .                  kn_masses(5),kn_masses(7),xx(7:8),
     .                  kn_cmpreal(0:3,5),kn_cmpreal(0:3,7),jaco1)

            call mboost(1,vec,beta,kn_cmpreal(0,5),kn_preal(0,5))
            call mboost(1,vec,beta,kn_cmpreal(0,7),kn_preal(0,7))
	   endif
         if(par_decchan2.eq.1) then
            call oneto2_phasespace(kn_cmpreal(0:3,4),kn_masses(4),
     .                  kn_masses(6),kn_masses(8),xx(9:10),
     .                  kn_cmpreal(0:3,6),kn_cmpreal(0:3,8),jaco2)
            call mboost(1,vec,beta,kn_cmpreal(0,6),kn_preal(0,6))
            call mboost(1,vec,beta,kn_cmpreal(0,8),kn_preal(0,8))
	   endif
	   kn_jacborn=kn_jacborn*jaco1*jaco2
	endif

	xjac=kn_jacborn*ww*hc2
      call sigreal_split(xjac,tempsplit2,rad_split_arr35,.false.)
      call transfersign(rad_split_arr35,rad_split_sign35,flst_nregularsplit)
      if(flg_nlotest) then
        call analysis_driver(tempsplit2,1)
      endif

! now sum-up the two contributions:
      totsplit=tempsplit1+tempsplit2
      retval=totsplit
      end


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
c contributions from the real-ampsq which have no singular region, but are "split" from R_tot
c in fact simply a copy of sigreal_reg with a different call for real-routines
c for the meaning of tan_map_abs: see comment in main-sigremannt-function!
c res45: flag to distinguish between contributions with a res. gluino between part. 4&5 (chosen for res45=.true.) or between 3&5
	subroutine sigreal_split(xjac,sig,r0,res45)
	implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      include 'PhysPars.h'
	include 'sqsq_realqg.h'
      real * 8 xjac,sig,r0(maxprocreal)
      integer lreg,lregpr,iret
      integer nmomset
      parameter (nmomset=10)
      real * 8 res(nmomset,maxprocreal),preal(0:3,nlegreal,nmomset),
     #   cprop
      integer equivto35(maxprocreal),equivto45(maxprocreal)
      real * 8 equivcoef35(maxprocreal),equivcoef45(maxprocreal)
      integer j
      real * 8 pdf1(-6:6),pdf2(-6:6)
      logical res45
      logical ini35,ini45 !need 2 instances, as we call this routine twice
      data ini35/.true./,ini45/.true./
      save ini35,ini45,equivto35,equivcoef35,equivto45,equivcoef45
c first check if the jacobian is 0 anyway-> simply return immediately:
	if(xjac.eq.0d0) then 
        sig=0
        do lreg=1,flst_nregularsplit
         r0(lreg)=0d0
        enddo
	  return
	endif

cc set the gauge:
	gauge=flg_gauge
c here we need two blocks, one for a resonance between particle 3 and 5 and one
c for a resonance between particle 4 and 5
      if(ini35.and.(.not.res45)) then ! Resonance between 3 and 5
         do lreg=1,flst_nregularsplit
            equivto35(lreg)=-1
         enddo
	   flg_in_smartsig=.true. !causes trouble with subtraction!!
         if(flg_smartsig) then
            call randomsave
c     generate "nmomset" random real-phase space configurations
            call fillmomenta(nlegreal,nmomset,kn_masses,preal)
            do lreg=1,flst_nregularsplit
               do j=1,nmomset
		    call real_split(flst_regularsplit(1,lreg),preal(0,1,j),res(j,lreg),res45)
               enddo
               call compare_vecs_split(nmomset,lreg,res,lregpr,cprop,iret)
               if(iret.eq.0) then
c     they are equal
                  equivto35(lreg)=lregpr
                  equivcoef35(lreg)=1
               elseif(iret.eq.1) then
c     they are proportional
                  equivto35(lreg)=lregpr
                  equivcoef35(lreg)=cprop
               endif
            enddo
            call randomrestore
         endif
         ini35=.false.
	   flg_in_smartsig=.false.
      endif

      if(ini45.and.res45) then
         do lreg=1,flst_nregularsplit
            equivto45(lreg)=-1
         enddo
	   flg_in_smartsig=.true.
         if(flg_smartsig) then
            call randomsave
c     generate "nmomset" random real-phase space configurations
            call fillmomenta(nlegreal,nmomset,kn_masses,preal)
            do lreg=1,flst_nregularsplit
               do j=1,nmomset
		    call real_split(flst_regularsplit(1,lreg),preal(0,1,j),res(j,lreg),res45)
               enddo
               call compare_vecs_split(nmomset,lreg,res,lregpr,cprop,iret)
               if(iret.eq.0) then
c     they are equal
                  equivto45(lreg)=lregpr
                  equivcoef45(lreg)=1
               elseif(iret.eq.1) then
c     they are proportional
                  equivto45(lreg)=lregpr
                  equivcoef45(lreg)=cprop
               endif
            enddo
            call randomrestore
         endif
         ini45=.false.
	   flg_in_smartsig=.false.
      endif
c End initialization phase; compute graphs
      call pdfcall(1,kn_x1,pdf1)
      call pdfcall(2,kn_x2,pdf2)
      do lreg=1,flst_nregularsplit
c ----------------
ccc modify this for two calls, too:
	if(res45) then
         if(equivto45(lreg).lt.0) then
            call real_split(flst_regularsplit(1,lreg),kn_cmpreal,r0(lreg),res45)
         else
            r0(lreg)=r0(equivto45(lreg))*equivcoef45(lreg)
         endif
       else
         if(equivto35(lreg).lt.0) then
            call real_split(flst_regularsplit(1,lreg),kn_cmpreal,r0(lreg),res45)
         else
            r0(lreg)=r0(equivto35(lreg))*equivcoef35(lreg)
         endif
       endif
      enddo
      sig=0
      do lreg=1,flst_nregularsplit
         r0(lreg)=xjac*r0(lreg)*
     #      pdf1(flst_regularsplit(1,lreg))*pdf2(flst_regularsplit(2,lreg))
         sig=sig+r0(lreg)
      enddo
      end

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!! slightliy modified copy of compare_vecs_reg
!!!! make sure to avoid 0-amplitudes correctly
      subroutine compare_vecs_split(nmomset,lreg,res,lregpr,cprop,iret)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      real * 8 ep
      parameter (ep=1d-12)
      integer nmomset,lreg,lregpr,iret,j,k
      real * 8 res(nmomset,*),cprop,rat
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      if(lreg.eq.1) then
         do j=1,nmomset
	    if(res(j,lreg).ne.0) then
	      iret=-1
	      return
	    endif
         enddo
	  iret=1 !IMPORTANT TO SET THIS HERE!!!
	  lregpr=1 !by default, take it prop to first flst with prop-fact 0
	  cprop=0
	  return
      endif
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1
      do j=1,lreg-1
! if the res of the amp-routine is 0:
! make sure not to divide by 0 (is independent of momentum-config):
	  if(res(1,lreg).eq.0) then
	    iret=1 !IMPORTANT TO SET THIS HERE!!!
	    lregpr=1 !by default, take it prop to first flst with prop-fact 0
	    cprop=0
	    return
	  endif
	  if(res(1,j).eq.0) goto 10 !no need to compare to a 0-result
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
         rat=res(1,lreg)/res(1,j)
         do k=1,nmomset
            if(abs(1-res(k,lreg)/res(k,j)/rat).gt.ep) goto 10
         enddo
         if(abs(1-rat).lt.ep) then
            iret=0
            cprop=1
         else
            iret=1
            cprop=rat
         endif
         lregpr=j
         return
 10      continue
      enddo
      iret=-1
      end

!!the following routines are similar to the btilde-case...
	subroutine addupweightssplit(sigsplit)
	implicit none
	include 'nlegborn.h'
	include 'pwhg_flst.h'
	include 'pwhg_rad.h'
	real*8 sigsplit

	real*8 dtotsplit35,dtotabssplit35,dtotpossplit35,dtotnegsplit35,
     &       dtotsplit45,dtotabssplit45,dtotpossplit45,dtotnegsplit45

	real*8 totsplit35,etotsplit35,totabssplit35,etotabssplit35,
     &       totpossplit35,etotpossplit35,totnegsplit35,etotnegsplit35
	real*8 totsplit45,etotsplit45,totabssplit45,etotabssplit45,
     &       totpossplit45,etotpossplit45,totnegsplit45,etotnegsplit45
       integer ncall,i

       common/cadduptotalssplit/totsplit35,etotsplit35,totabssplit35,etotabssplit35,
     &             totpossplit35,etotpossplit35,totnegsplit35,etotnegsplit35,
     &             totsplit45,etotsplit45,totabssplit45,etotabssplit45,
     &             totpossplit45,etotpossplit45,totnegsplit45,etotnegsplit45,
     &             ncall

       ncall=ncall+1
       dtotsplit35=0
       dtotabssplit35=0
       dtotpossplit35=0
       dtotnegsplit35=0
       dtotsplit45=0
       dtotabssplit45=0
       dtotpossplit45=0
       dtotnegsplit45=0

       do i=1,flst_nregularsplit
	  dtotsplit35=dtotsplit35+rad_split_arr35(i)*rad_split_sign35(i)
	  dtotabssplit35=dtotabssplit35+rad_split_arr35(i)
	  if(rad_split_sign35(i).eq.1) then
	    dtotpossplit35=dtotpossplit35+rad_split_arr35(i)
	  else
	    dtotnegsplit35=dtotnegsplit35+rad_split_arr35(i)
	  endif
	  dtotsplit45=dtotsplit45+rad_split_arr45(i)*rad_split_sign45(i)
	  dtotabssplit45=dtotabssplit45+rad_split_arr45(i)
	  if(rad_split_sign45(i).eq.1) then
	    dtotpossplit45=dtotpossplit45+rad_split_arr45(i)
	  else
	    dtotnegsplit45=dtotnegsplit45+rad_split_arr45(i)
	  endif
       enddo

	totsplit35=totsplit35+dtotsplit35
	etotsplit35=etotsplit35+dtotsplit35**2
	totabssplit35=totabssplit35+dtotabssplit35
	etotabssplit35=etotabssplit35+dtotabssplit35**2
	totpossplit35=totpossplit35+dtotpossplit35
	etotpossplit35=etotpossplit35+dtotpossplit35**2
	totnegsplit35=totnegsplit35+dtotnegsplit35
	etotnegsplit35=etotnegsplit35+dtotnegsplit35**2
	totsplit45=totsplit45+dtotsplit45
	etotsplit45=etotsplit45+dtotsplit45**2
	totabssplit45=totabssplit45+dtotabssplit45
	etotabssplit45=etotabssplit45+dtotabssplit45**2
	totpossplit45=totpossplit45+dtotpossplit45
	etotpossplit45=etotpossplit45+dtotpossplit45**2
	totnegsplit45=totnegsplit45+dtotnegsplit45
	etotnegsplit45=etotnegsplit45+dtotnegsplit45**2

	sigsplit=dtotabssplit35+dtotabssplit45
	end

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!! set all new totals concerning regulars/remnants/split to 0
	subroutine resettotalssplit
	implicit none
	real*8 totsplit35,etotsplit35,totabssplit35,etotabssplit35,
     &       totpossplit35,etotpossplit35,totnegsplit35,etotnegsplit35
	real*8 totsplit45,etotsplit45,totabssplit45,etotabssplit45,
     &       totpossplit45,etotpossplit45,totnegsplit45,etotnegsplit45
       integer ncall

       common/cadduptotalssplit/totsplit35,etotsplit35,totabssplit35,etotabssplit35,
     &             totpossplit35,etotpossplit35,totnegsplit35,etotnegsplit35,
     &             totsplit45,etotsplit45,totabssplit45,etotabssplit45,
     &             totpossplit45,etotpossplit45,totnegsplit45,etotnegsplit45,
     &             ncall

       ncall=0
	totsplit35=0d0
	etotsplit35=0d0
	totabssplit35=0d0
	etotabssplit35=0d0
	totpossplit35=0d0
	etotpossplit35=0d0
	totnegsplit35=0d0
	etotnegsplit35=0d0
	totsplit45=0d0
	etotsplit45=0d0
	totabssplit45=0d0
	etotabssplit45=0d0
	totpossplit45=0d0
	etotpossplit45=0d0
	totnegsplit45=0d0
	etotnegsplit45=0d0
	end

!!! similar to corresponding routine in btilde
	subroutine finaltotalssplit
	implicit none
	include 'nlegborn.h'
	include 'pwhg_flst.h'
	include 'pwhg_rad.h'
	real*8 totsplit35,etotsplit35,totabssplit35,etotabssplit35,
     &       totpossplit35,etotpossplit35,totnegsplit35,etotnegsplit35
	real*8 totsplit45,etotsplit45,totabssplit45,etotabssplit45,
     &       totpossplit45,etotpossplit45,totnegsplit45,etotnegsplit45
       integer ncall
       real*8 errorrem
       external errorrem
       common/cadduptotalssplit/totsplit35,etotsplit35,totabssplit35,etotabssplit35,
     &             totpossplit35,etotpossplit35,totnegsplit35,etotnegsplit35,
     &             totsplit45,etotsplit45,totabssplit45,etotabssplit45,
     &             totpossplit45,etotpossplit45,totnegsplit45,etotnegsplit45,
     &             ncall
       if(ncall.eq.0) ncall=1 !if we never call the remnant-routines: avoid nans!!

       rad_totsplit35=totsplit35/ncall
       rad_etotsplit35=errorrem(totsplit35,etotsplit35,ncall)
       rad_totabssplit35=totabssplit35/ncall
       rad_etotabssplit35=errorrem(totabssplit35,etotabssplit35,ncall)
       rad_totpossplit35=totpossplit35/ncall
       rad_etotpossplit35=errorrem(totpossplit35,etotpossplit35,ncall)
       rad_totnegsplit35=totnegsplit35/ncall
       rad_etotnegsplit35=errorrem(totnegsplit35,etotnegsplit35,ncall)
       rad_totsplit45=totsplit45/ncall
       rad_etotsplit45=errorrem(totsplit45,etotsplit45,ncall)
       rad_totabssplit45=totabssplit45/ncall
       rad_etotabssplit45=errorrem(totabssplit45,etotabssplit45,ncall)
       rad_totpossplit45=totpossplit45/ncall
       rad_etotpossplit45=errorrem(totpossplit45,etotpossplit45,ncall)
       rad_totnegsplit45=totnegsplit45/ncall
       rad_etotnegsplit45=errorrem(totnegsplit45,etotnegsplit45,ncall)
	end
      