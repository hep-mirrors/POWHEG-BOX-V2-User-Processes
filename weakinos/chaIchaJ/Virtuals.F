c############### Virtuals.f ############################################
c last modified by MK, 04.05.2016
c weakino pair production
c -6  -5  -4  -3  -2  -1  0  1  2  3  4  5  6
c t~  b~  c~  s~  u~  d~  g  d  u  s  c  b  t

c############### subroutine setvirtual #################################
c returns (M_B * M_V)/(as/(2pi)) as real number,
c where M_B is the Born amplitude and
c M_V is the finite part of the virtual amplitude
c The as/(2pi) factor is attached at a later point
c A factor (4 Pi)^ep/Gamma(1-ep) with ep=(4-d)/2 is implied.
      subroutine setvirtual(p,vflav,ampvirt)
        implicit none
#include "PhysPars.h"
#include "pwhg_st.h"
#include "pwhg_math.h"
#include "nlegborn.h"
#include "looptools.h"
#include "Flags.h"
#include "decl.h"
        double precision p(0:3,nlegborn)
        integer vflav(nlegborn)
        ! copy of vflav and p
        double precision pc(0:3,nlegborn)
        integer  flavc(nlegborn)
        ! results. Note: bornjk and bmunu is only used to be able to
        ! call the MadGraph Born amplitude, when using fake virtuals.
        double precision born, bornjk(nlegborn,nlegborn)
        double precision bmunu(0:3,0:3,nlegborn)
        double precision virtual, ampvirt
        ! formcalc results
        double precision fc_result(2)
        ! symmetry factor
        double precision symfac
        ! helicity and flags parameter for formcalc       
        integer*8 helicities
        integer flags
        ! phase space
        double precision ex, ey, ez, psNorm
        ! function to calculate the squared momentum sum
        double precision momsum2sq
        ! kinematics
        double precision s, t, u
        double precision MassQ1, MassQ2, MassF1, MassF2
        ! check 4-momentum conservation
        logical lresult
        ! status
        logical verbose
        logical init_virtual
        data init_virtual/.true./

        if (init_virtual) then
          print*
          print*, "=== Init virtual... ==="
          if(flg_fakevirtuals) then
            print*, "Note: Using fake virtuals"
#ifdef FORM_BORN
            print*, "and FormCalc Born amplitudes"
#endif
#ifdef MAD_BORN
            print*, "and MadGraph Born amplitudes"
#endif
          endif
          verbose = .true.
          init_virtual = .false.
        else
          verbose = .false.
        endif
        
        ! backup flavor list and momenta, so we can operate on it without
        ! affecting the rest of the program
        flavc = vflav
        pc = p

        if (.not.( (abs(vflav(2)).eq.abs(vflav(1)))
     &      .or.   (abs(vflav(2)+vflav(1)).eq.1) )) then
          print*, "Error in fct. setvirt: invalid initial state"
          print*, "vflav(1) = ", vflav(1)
          print*, "vflav(2) = ", vflav(2)
          stop
        endif
        
        ! check four momentum conservation
        call check_4conservation(p, nlegborn, 1, lresult)

        if(verbose) then
          s = momsum2sq(p(0:3,1), p(0:3,2))
          t = momsum2sq(p(0:3,1),-p(0:3,3))
          u = momsum2sq(p(0:3,2),-p(0:3,3))
        endif

        ! calculate the couplings for this PS point
        call set_ebe_couplings

        ! load process dependent masses
        call set_process(vflav(1:4), MassQ1, MassQ2, MassF1, MassF2)
        
        ! unpolarized particles: B01010 01010 01010 01010 = D338250, FC8Guid.pdf p.49
        helicities = 338250

        ! calculate the virtuals only when needed
        if(.not.flg_fakevirtuals) then
          ! flags: Bit0 (reset) = 1, Bit1 (loop) = 1 -> B11 = D3
          flags = 3
        else
          ! flags: Bit0 (reset) = 1, Bit1 (loop) = 0 -> B01 = D1
          flags = 1
        endif

        call setlambda(0D0) ! Only finite part
        call setuvdiv(0d0)  ! no 1/eps_UV terms
        call setdelta(0d0)  ! set divergences to zero
        call setmudim(st_muren2) ! renormalization scale
        
c#define CHECKUV
#ifdef CHECKUV
        ! test for finiteness
        ! print*, "checking for UV finiteness"
        call setuvdiv(1d0)
        call setDelta(1D7)    ! Test UV finiteness
#endif
        
        ! crossing (FormCalc provides only amplitudes for qqbar 
        ! and not for qbarq)
        ! (though, the results do not depend on that)
        if(vflav(1).gt.0) then
          p(:,1) = pc(:,2)
          p(:,2) = pc(:,1)
        else
          p(:,1) = pc(:,1)
          p(:,2) = pc(:,2)
        endif
        
        ! calculate unit vectors and set the vectors for FormCalc
        psNorm=dsqrt(p(1,1)**2+p(2,1)**2+p(3,1)**2)
        ex=p(1,1)/psNorm
        ey=p(2,1)/psNorm
        ez=p(3,1)/psNorm
        call VecSet(1, MassQ1, psNorm, ex,ey,ez)
        psNorm=dsqrt(p(1,2)**2+p(2,2)**2+p(3,2)**2)
        ex=p(1,2)/psNorm
        ey=p(2,2)/psNorm
        ez=p(3,2)/psNorm
        call VecSet(2, MassQ2, psNorm, ex,ey,ez)
        psNorm=dsqrt(p(1,3)**2+p(2,3)**2+p(3,3)**2)
        ex=p(1,3)/psNorm
        ey=p(2,3)/psNorm
        ez=p(3,3)/psNorm
        call VecSet(3, MassF1, psNorm, ex,ey,ez)
        psNorm=dsqrt(p(1,4)**2+p(2,4)**2+p(3,4)**2)
        ex=p(1,4)/psNorm
        ey=p(2,4)/psNorm
        ez=p(3,4)/psNorm
        call VecSet(4, MassF2, psNorm, ex,ey,ez)

        ! calculate the RenConsts only for "good" virtuals
        if(.not.flg_fakevirtuals) then
          call calcRenConst
        endif

        ! reset the FormCalc results
        fc_result(1) = 0.D0    ! born
        fc_result(2) = 0.D0    ! virtual amplitude

        ! symmetry factor
        if(vflav(3).eq.vflav(4)) then
          ! 72 = 2*2*3*3*2 (spin factor 2, colour factor 3, equal particles in the final state 2)
          symfac = 72d0 ! take spin and colour factors into account
        else
          ! 36 = 2*2*3*3 (spin factor 2, colour factor 3)
          symfac = 36d0 ! take spin and colour factors into account
        endif

#ifndef NEGLECTBMASS
          print*,"ERROR: FormCalc massive b-quark amplitudes not yet "
                 //"implemented."
          stop
#endif

        if(     abs(vflav(1)).eq.2 .and. abs(vflav(2)).eq.2 .and. 
     &          (vflav(3).eq.1000024 .and. vflav(4).eq.-1000024)  ) then ! u + ubar -> x1 + x1
          call uubar_x1x1_squaredME(fc_result, helicities, flags)
          goto 20
        else if(abs(vflav(1)).eq.1 .and. abs(vflav(2)).eq.1 .and. 
     &          (vflav(3).eq.1000024 .and. vflav(4).eq.-1000024)  ) then ! d + dbar -> x1 + x1
          call ddbar_x1x1_squaredME(fc_result, helicities, flags)
          goto 20
        else if(abs(vflav(1)).eq.4 .and. abs(vflav(2)).eq.4 .and. 
     &          (vflav(3).eq.1000024 .and. vflav(4).eq.-1000024)  ) then ! c + cbar -> x1 + x1
          call uubar_x1x1_squaredME(fc_result, helicities, flags)
          goto 20
        else if(abs(vflav(1)).eq.3 .and. abs(vflav(2)).eq.3 .and. 
     &          (vflav(3).eq.1000024 .and. vflav(4).eq.-1000024)  ) then ! s + sbar -> x1 + x1
          call ddbar_x1x1_squaredME(fc_result, helicities, flags)
          goto 20
        else if(abs(vflav(1)).eq.5 .and. abs(vflav(2)).eq.5 .and. 
     &          (vflav(3).eq.1000024 .and. vflav(4).eq.-1000024)  ) then ! b + bbar -> x1 + x1
          call ddbar_x1x1_squaredME(fc_result, helicities, flags)
          goto 20

        else if(abs(vflav(1)).eq.2 .and. abs(vflav(2)).eq.2 .and. 
     &          (vflav(3).eq.1000024 .and. vflav(4).eq.-1000037)  ) then ! u + ubar -> x1 + x2
          call uubar_x1x2_squaredME(fc_result, helicities, flags)
          goto 20
        else if(abs(vflav(1)).eq.1 .and. abs(vflav(2)).eq.1 .and. 
     &          (vflav(3).eq.1000024 .and. vflav(4).eq.-1000037)  ) then ! d + dbar -> x1 + x2
          call ddbar_x1x2_squaredME(fc_result, helicities, flags)
          goto 20
        else if(abs(vflav(1)).eq.4 .and. abs(vflav(2)).eq.4 .and. 
     &          (vflav(3).eq.1000024 .and. vflav(4).eq.-1000037)  ) then ! c + cbar -> x1 + x2
          call uubar_x1x2_squaredME(fc_result, helicities, flags)
          goto 20
        else if(abs(vflav(1)).eq.3 .and. abs(vflav(2)).eq.3 .and. 
     &          (vflav(3).eq.1000024 .and. vflav(4).eq.-1000037)  ) then ! s + sbar -> x1 + x2
          call ddbar_x1x2_squaredME(fc_result, helicities, flags)
          goto 20
        else if(abs(vflav(1)).eq.5 .and. abs(vflav(2)).eq.5 .and. 
     &          (vflav(3).eq.1000024 .and. vflav(4).eq.-1000037)  ) then ! b + bbar -> x1 + x2
          call ddbar_x1x2_squaredME(fc_result, helicities, flags)
          goto 20

        else if(abs(vflav(1)).eq.2 .and. abs(vflav(2)).eq.2 .and. 
     &          (vflav(3).eq.1000037 .and. vflav(4).eq.-1000037)  ) then ! u + ubar -> x2 + x2
          call uubar_x2x2_squaredME(fc_result, helicities, flags)
          goto 20
        else if(abs(vflav(1)).eq.1 .and. abs(vflav(2)).eq.1 .and. 
     &          (vflav(3).eq.1000037 .and. vflav(4).eq.-1000037)  ) then ! d + dbar -> x2 + x2
          call ddbar_x2x2_squaredME(fc_result, helicities, flags)
          goto 20
        else if(abs(vflav(1)).eq.4 .and. abs(vflav(2)).eq.4 .and. 
     &          (vflav(3).eq.1000037 .and. vflav(4).eq.-1000037)  ) then ! c + cbar -> x2 + x2
          call uubar_x2x2_squaredME(fc_result, helicities, flags)
          goto 20
        else if(abs(vflav(1)).eq.3 .and. abs(vflav(2)).eq.3 .and. 
     &          (vflav(3).eq.1000037 .and. vflav(4).eq.-1000037)  ) then ! s + sbar -> x2 + x2
          call ddbar_x2x2_squaredME(fc_result, helicities, flags)
          goto 20
        else if(abs(vflav(1)).eq.5 .and. abs(vflav(2)).eq.5 .and. 
     &          (vflav(3).eq.1000037 .and. vflav(4).eq.-1000037)  ) then ! b + bbar -> x2 + x2
          call ddbar_x2x2_squaredME(fc_result, helicities, flags)
          goto 20
        else
          print*, "ERROR: Wrong flavor structure in subroutine setvirt."
          print*, "vflav = ", vflav
          stop
        endif
        
 20   continue

        ! no fake virtuals
        if(.not.flg_fakevirtuals) then
          born    = fc_result(1)/symfac
          virtual = fc_result(2)/symfac ! = 2 x Re[M_tree* x M_1-loop], FC8Guid.pdf p.48
          ! need to extract a factor N=(4Pi)^eps/Ga(1-eps)
          ! -> LoopTools does already extract this factor
          ampvirt = virtual/(st_alpha/(2d0*pi))
          !ampvirt = virtual*2d0*pi ! if FormCalc Alfas = 1
        ! use fake virtuals
        else
#ifdef FORM_BORN
          born    = fc_result(1)/symfac
#endif
#ifdef MAD_BORN
          call sborn_proc(p,vflav,born,bornjk,bmunu)
#endif
          ampvirt = 1d-2*born
        endif

        if(isnan(virtual)) then
          !print*,"got strange value for virtual amplitude...", virtual
          virtual = 0D0
        endif
        
        ! Print informations
        if (verbose) then
          print*, "process: ", vflav
          print*, "s     = ", s
          print*, "t     = ", t
          print*, "u     = ", u
          print*, "AlphaS         = ", st_alpha
          print*, "muren2         = ", st_muren2
          print*, "born           = ", born
          print*, "2*Born*Virtual = ", ampvirt
          print*
        endif
        
        ! restore flavor list
        vflav = flavc
        p = pc
      end
c############### end subroutine setvirtual #############################
