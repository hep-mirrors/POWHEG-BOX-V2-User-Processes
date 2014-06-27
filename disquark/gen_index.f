      subroutine gen_uborn_idx
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
      integer j,alr,em
      do j=1,rad_nkinreg
         rad_kinreg_on(j)=.false.
      enddo
      call pick_random(flst_nborn,rad_btilde_arr,rad_ubornidx)
      rad_alr_nlist=flst_born2alr(0,rad_ubornidx)
      do j=1,rad_alr_nlist
         alr=flst_born2alr(j,rad_ubornidx)
         em=flst_emitter(alr)
         rad_alr_list(j)=alr
         if(em.le.2) then
            rad_kinreg_on(1)=.true.
         else
            rad_kinreg_on(em-flst_lightpart+2)=.true.
         endif
      enddo
      end

      subroutine gen_real_idx
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
      call pick_random(rad_alr_nlist,rad_real_arr,rad_realidx)
      rad_realalr=rad_alr_list(rad_realidx)
      end

      subroutine pick_random(n,r,jret)
      implicit none
      integer n,jret
      real * 8 r(n)
      real * 8 tot(0:n)
      integer j
      real * 8 ran,random
      tot(0)=0
      do j=1,n
         tot(j)=tot(j-1)+r(j)
      enddo
      ran=tot(n)*random()
      do j=1,n
         if(tot(j).gt.ran) then
            jret=j
            return
         endif
      enddo
      write(*,*) ' ***********************************'
      write(*,*) ' POWHEGBOX:pick_random: could not pick a value'
      write(*,*) ' set choice to 1'
      write(*,*) ' ***********************************'
      jret=1
c      call exit(-1)
      end
      

      subroutine gen_remnant(iret)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
      integer iret
      real * 8 dum1,dum2,dum3,dum4
      real * 8 random
      external random
c Remnant or regular 
! CH: just modified the naming...
      if(random().gt.rad_totreggen/(rad_totreggen+rad_totremgen)) then
c remnant
         iret=1
         call pick_random(flst_nalr,rad_damp_rem_arr,rad_realalr)
         rad_ubornidx=flst_alr2born(rad_realalr)
         kn_emitter=flst_emitter(rad_realalr)
         if(kn_emitter.le.2) then
            call gen_real_phsp_isr(rad_xradremn,dum1,dum2,dum3,dum4)
         else
            call gen_real_phsp_fsr(rad_xradremn,dum1,dum2,dum3)
         endif
      else
c regular
         iret=2
         call pick_random(flst_nregular,rad_reg_arr,rad_realreg)
         call gen_real_phsp_isr(rad_xradremn,dum1,dum2,dum3,dum4)
       endif
      end

!!!!!!!!!!!!!!!!!!!!!!!!!!
!CH: added the following routine for the split contributions
      subroutine gen_split(iret)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
	include 'pwhg_flg.h'
	include 'PhysPars.h'
      integer iret
      real * 8 random,jaco1,jaco2,beta,vec(1:3)
      external random

C -   Boost of decay-momenta to the LAB frame:
      vec(1)=0d0
      vec(2)=0d0
      vec(3)=1d0
c Remnant or regular or split35 or split45?-
      if(random().gt.rad_totsplit45/(rad_totsplit35+rad_totsplit45)) then
c split-part with resonance between 3 and 5 
         iret=3
         call pick_random(flst_nregularsplit,rad_split_arr35,rad_realsplit)
         !sufficient to have here one index rad_realsplit: either 35 OR 45-contribution! (in principle rad_realreg would be OK, too, but anyway...)
! call the phase-space for the resonance in 3/5
	   call realps(kn_masses(4),kn_masses(3),rad_xradsplit,.false.)
         rad_ubornidx=flst_alr2born(rad_realsplit)
         kn_emitter=flst_emitter(rad_realsplit)
       else
c split-part with resonance between 4 and 5
         iret=4
         call pick_random(flst_nregularsplit,rad_split_arr45,rad_realsplit)
         call realps(kn_masses(3),kn_masses(4),rad_xradsplit,.true.)
         rad_ubornidx=flst_alr2born(rad_realsplit)
         kn_emitter=flst_emitter(rad_realsplit)
      endif

ccc sufficient to call decays globally
	if(flg_decay) then
         beta=(kn_x1-kn_x2)/(kn_x1+kn_x2)
         if(par_decchan1.eq.1) then
            call oneto2_phasespace(kn_cmpreal(0:3,3),kn_masses(3),
     .                  kn_masses(5),kn_masses(7),rad_xradsplit(7:8),
     .                  kn_cmpreal(0:3,5),kn_cmpreal(0:3,7),jaco1)
            call mboost(1,vec,beta,kn_cmpreal(0,5),kn_preal(0,5))
            call mboost(1,vec,beta,kn_cmpreal(0,7),kn_preal(0,7))
	   endif
         if(par_decchan2.eq.1) then
            call oneto2_phasespace(kn_cmpreal(0:3,4),kn_masses(4),
     .                  kn_masses(6),kn_masses(8),rad_xradsplit(9:10),
     .                  kn_cmpreal(0:3,6),kn_cmpreal(0:3,8),jaco2)
            call mboost(1,vec,beta,kn_cmpreal(0,6),kn_preal(0,6))
            call mboost(1,vec,beta,kn_cmpreal(0,8),kn_preal(0,8))
	   endif
	endif
      end
