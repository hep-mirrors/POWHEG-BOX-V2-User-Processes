
      subroutine setvirtual(p,vflav,virtual)
c Virtual needs to be provided by the user and put here
      implicit none
      include 'nlegborn.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'

      include 'MODEL/sm_read_values.inc'
      ! contains:
      ! + alpha: alpha_em(M_Z)^MSbar read from MODEL/param_card.dat
      ! + gfermi: G_F [GeV^-2] read from MODEL/param_card.dat
      ! + ...

      include 'coupl.inc'
      ! contains:
      ! + masses of SM particles read from MODEL/param_card.dat
      !   zmass (Z-Boson pole mass)
      !   bmass (bottom quark mass mb(mb)^MSbar)
      !   tmass (top quark pole mass)
      ! + masses of SUSY particles read from MODEL/param_card.dat in the form
      !   m* with the particle name * specified in MODEL/particles.dat
      !   slightly different names for slepton masses
      !   mel/mer left-/right-handed selectron mass
      !   mml/mmr left-/right-handed smuon mass
      !   ml1/ml2 stau 1/2 mass
      !   but the masses and the mixing matrix of the sleptons under consideration
      !   can be found in PhysPars.h
      ! + ...

      include 'PhysPars.h'
      ! contains:
      ! + masses of the slepton pair under consideration
      !   ph_slepton3mass, ph_slepton4mass
      ! + and the mixing matrix of this slepton pair with entries
      !   ph_c_U3l, ph_c_U3r, ph_c_U4l, ph_c_U4r

      double precision  sw, sw2, cw, tw, s2w, c2w, e, gx, gz,
     &                  qe, qu, qd, t3e, t3v, t3u, t3d, rt2, ppi,
     &                  r_lc(2,2), r_bc(2,2), r_tc(2,2)
      common /ewparam/  sw, sw2, cw, tw, s2w, c2w, e, gx, gz,
     &                  qe, qu, qd, t3e, t3v, t3u, t3d, rt2, ppi,
     &                  r_lc, r_bc, r_tc
      ! contains:
      ! + sw: sine of Weinberg angle
      !   calculated in MODEL/couplings.f subroutine INIT_SUSY
      ! + r_lc: stau mixing matrix read from MODEL/param_card.dat
      ! + r_bc: sbottom mixing matrix read from MODEL/param_card.dat
      ! + r_tc: stop mixing matrix read from MODEL/param_card.dat
      ! + ...

      real * 8 p(0:3,nlegborn)
      integer vflav(nlegborn)
      real * 8 virtual, virtualDY, virtualNDY, virtualHiggs ! Drell-Yan, non Drell-Yan, and Higgs contributions
      real * 8 powheginput
      external powheginput
      ! dummy
      real * 8 vjk(nlegborn,nlegborn),vmunu(0:3,0:3,nlegborn)

      ! option to use approximation of virtual contribution to speed up calculation
      if(powheginput("#fakevirtual").eq.1) then
         ! virtual \approx const \times born
         call setborn(p,vflav,virtual,vjk,vmunu)
         virtual = 0.2d0 * virtual
      else
         ! contribution by diagrams of Drell-Yan type
         call setvirtualDY(p,vflav,virtualDY)
         ! option to include only virtual QCD corrections and omit virtual SQCD corrections
         ! selection of SUSY DY contributions in virt_main_ssg.F
         if(powheginput("#qcdonly").eq.1) then
            virtualNDY = 0d0
            virtualHiggs = 0d0
         else
            ! contribution by diagrams not of Drell-Yan type
            call setvirtualNDY(p,vflav,virtualNDY)
            ! contribution by diagrams with Higgs or Goldstone boson
            call setvirtualHiggs(p,vflav,virtualHiggs)
         endif
         ! sum of virtual contributions
         virtual = virtualDY + virtualNDY + virtualHiggs
      endif

      end
