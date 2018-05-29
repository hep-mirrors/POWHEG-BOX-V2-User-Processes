module     p4_ubaru_epnemumnmubarg_diagramsh4l0
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity4diagramsl0.f90
   ! generator: buildfortranborn.py
   use p4_ubaru_epnemumnmubarg_color, only: numcs
   use p4_ubaru_epnemumnmubarg_config, only: ki
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   complex(ki), dimension(numcs), parameter :: zero_col = 0.0_ki
   public :: amplitude
contains
!---#[ function amplitude:
   function amplitude()
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_config, only: debug_lo_diagrams, &
        & use_sorted_sum
      use p4_ubaru_epnemumnmubarg_accu, only: sorted_sum
      use p4_ubaru_epnemumnmubarg_util, only: inspect_lo_diagram
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
      abb(6)=spbk7k2**(-1)
      abb(7)=gW*spbk2k1
      abb(7)=-4.0_ki*abb(1)*abb(2)*abb(3)*abb(4)*abb(5)*abb(6)*gHU*gHWW*spak4k5&
      &*spbk6k3*spak1k7*i_*abb(7)**2
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
end module p4_ubaru_epnemumnmubarg_diagramsh4l0
