module     p0_dbaru_epnebbbar_diagramsh2l0
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity2diagramsl0.f90
   ! generator: buildfortranborn.py
   use p0_dbaru_epnebbbar_color, only: numcs
   use p0_dbaru_epnebbbar_config, only: ki
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   complex(ki), dimension(numcs), parameter :: zero_col = 0.0_ki
   public :: amplitude
contains
!---#[ function amplitude:
   function amplitude()
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_config, only: debug_lo_diagrams, &
        & use_sorted_sum
      use p0_dbaru_epnebbbar_accu, only: sorted_sum
      use p0_dbaru_epnebbbar_util, only: inspect_lo_diagram
      implicit none
      complex(ki), dimension(numcs) :: amplitude
      complex(ki), dimension(11) :: abb
!      complex(ki), dimension(2,numcs) :: diagrams
      integer :: i
      amplitude(:) = 0.0_ki
      abb(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb(2)=es234**(-1)
      abb(3)=es56**(-1)
      abb(4)=spbl5k2**(-1)
      abb(5)=spak2l6**(-1)
      abb(6)=1.0_ki/(es34+es56-es12-es234)
      abb(7)=NC**(-1)
      abb(8)=abb(2)*spak2k4*spbl6k2
      abb(9)=spak3k4*abb(2)
      abb(10)=abb(9)*spbl6k3
      abb(8)=abb(8)-abb(10)
      abb(8)=abb(8)*spak1l5*spbk3k2
      abb(10)=spbk4k3*spak4l5
      abb(11)=spbk3k1*spak1l5
      abb(10)=abb(10)+abb(11)
      abb(10)=spak1k4*abb(6)*spbl6k2*abb(10)
      abb(11)=mB*spbk3k2
      abb(9)=abb(11)**2*abb(9)*spak1k2*abb(5)*abb(4)
      abb(8)=-abb(9)+abb(8)-abb(10)
      abb(8)=abb(8)*i_*TR*CVDU*abb(3)*abb(1)*gW**2
      abb(8)=4.0_ki*abb(8)
      abb(9)=-abb(7)*abb(8)
      amplitude=c2*abb(8)+c1*abb(9)
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
end module p0_dbaru_epnebbbar_diagramsh2l0
