module     p0_dbard_epnemumnmubarg_diagramsh3l0
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity3diagramsl0.f90
   ! generator: buildfortranborn.py
   use p0_dbard_epnemumnmubarg_color, only: numcs
   use p0_dbard_epnemumnmubarg_config, only: ki
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   complex(ki), dimension(numcs), parameter :: zero_col = 0.0_ki
   public :: amplitude
contains
!---#[ function amplitude:
   function amplitude()
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_config, only: debug_lo_diagrams, &
        & use_sorted_sum
      use p0_dbard_epnemumnmubarg_accu, only: sorted_sum
      use p0_dbard_epnemumnmubarg_util, only: inspect_lo_diagram
      implicit none
      complex(ki), dimension(numcs) :: amplitude
      complex(ki), dimension(7) :: abb
!      complex(ki), dimension(2,numcs) :: diagrams
      integer :: i
      amplitude(:) = 0.0_ki
      abb(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb(3)=1.0_ki/(-mH**2+es712+i_*mH*wH)
      abb(4)=sqrt2**(-1)
      abb(5)=es71**(-1)
      abb(6)=spak2k7**(-1)
      abb(7)=spak1k2*gW
      abb(7)=4.0_ki*i_*spbk7k1*spbk6k3*spak4k5*gHWW*gHD*abb(6)*abb(5)*abb(4)*ab&
      &b(3)*abb(2)*abb(1)*abb(7)**2
      amplitude=c1*abb(7)
      if (debug_lo_diagrams) then
         write(*,*) "Using Born optimization, debug_lo_diagrams not implemented&
         &."
      end if
!      if (use_sorted_sum) then
!         do i=1,numcs
!            amplitude(i) = sorted_sum(diagrams(i))
!         end do
!      else
!         do i=1,numcs
!            amplitude(i) = sum(diagrams(i))
!         end do
!      end if
   end function     amplitude
!---#] function amplitude:
end module p0_dbard_epnemumnmubarg_diagramsh3l0
