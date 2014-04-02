module     p3_usbar_epnebbbar_diagramsh3l0
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p3_usbar_epnebbbar/helicity3diagramsl0.f90
   ! generator: buildfortranborn.py
   use p3_usbar_epnebbbar_color, only: numcs
   use p3_usbar_epnebbbar_config, only: ki
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   complex(ki), dimension(numcs), parameter :: zero_col = 0.0_ki
   public :: amplitude
contains
!---#[ function amplitude:
   function amplitude()
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_color
      use p3_usbar_epnebbbar_config, only: debug_lo_diagrams, &
        & use_sorted_sum
      use p3_usbar_epnebbbar_accu, only: sorted_sum
      use p3_usbar_epnebbbar_util, only: inspect_lo_diagram
      implicit none
      complex(ki), dimension(numcs) :: amplitude
      complex(ki), dimension(9) :: abb
!      complex(ki), dimension(2,numcs) :: diagrams
      integer :: i
      amplitude(:) = 0.0_ki
      abb(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb(2)=es234**(-1)
      abb(3)=es56**(-1)
      abb(4)=spak2l5**(-1)
      abb(5)=spak2l6**(-1)
      abb(6)=NC**(-1)
      abb(7)=abb(5)*spbl5k1
      abb(8)=abb(4)*spbl6k1
      abb(7)=abb(7)+abb(8)
      abb(8)=4.0_ki*i_
      abb(9)=gW*spak2k4
      abb(7)=abb(7)*abb(9)**2*abb(8)*spbk4k3*TR*abb(3)*abb(1)*abb(2)*CVSU*mB
      abb(8)=abb(6)*abb(7)
      amplitude=-c2*abb(7)+c1*abb(8)
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
end module p3_usbar_epnebbbar_diagramsh3l0
