module     p0_dbaru_epnebbbarg_diagramsh4l0
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4diagramsl0.f90
   ! generator: buildfortranborn.py
   use p0_dbaru_epnebbbarg_color, only: numcs
   use p0_dbaru_epnebbbarg_config, only: ki
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   complex(ki), dimension(numcs), parameter :: zero_col = 0.0_ki
   public :: amplitude
contains
!---#[ function amplitude:
   function amplitude()
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_config, only: debug_lo_diagrams, &
        & use_sorted_sum
      use p0_dbaru_epnebbbarg_accu, only: sorted_sum
      use p0_dbaru_epnebbbarg_util, only: inspect_lo_diagram
      implicit none
      complex(ki), dimension(numcs) :: amplitude
      complex(ki), dimension(31) :: abb
!      complex(ki), dimension(2,numcs) :: diagrams
      integer :: i
      amplitude(:) = 0.0_ki
      abb(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb(2)=NC**(-1)
      abb(3)=sqrt2**(-1)
      abb(4)=es234**(-1)
      abb(5)=es56**(-1)
      abb(6)=es71**(-1)
      abb(7)=spbl5k2**(-1)
      abb(8)=spbl6k2**(-1)
      abb(9)=spbk7k2**(-1)
      abb(10)=1.0_ki/(-es71+es56-es567+es234)
      abb(11)=es567**(-1)
      abb(12)=1.0_ki/(-mB**2+es67)
      abb(13)=sqrt(mB**2)
      abb(14)=1.0_ki/(mB**2-es67-es56+es567)
      abb(15)=abb(8)*spak1l5
      abb(16)=abb(7)*spak1l6
      abb(17)=abb(15)+abb(16)
      abb(17)=abb(17)*spak1k7
      abb(18)=abb(6)*spbk2k1
      abb(19)=abb(10)*spbk2k1
      abb(20)=abb(18)+abb(19)
      abb(20)=abb(20)*abb(17)
      abb(16)=abb(16)*spbl6k2
      abb(21)=abb(16)+spak1l5
      abb(21)=abb(21)*spal6k7
      abb(15)=abb(15)*spbl5k2
      abb(22)=abb(15)+spak1l6
      abb(22)=abb(22)*spal5k7
      abb(21)=abb(21)+abb(22)
      abb(22)=abb(10)*abb(21)
      abb(20)=abb(20)+abb(22)
      abb(20)=abb(9)*abb(20)
      abb(23)=spal5k7*abb(8)
      abb(24)=spal6k7*abb(7)
      abb(25)=abb(23)+abb(24)
      abb(26)=spak1k7*abb(25)*abb(6)
      abb(20)=-abb(26)+abb(20)
      abb(27)=gW*spbk3k2
      abb(27)=abb(4)*abb(27)**2*abb(1)*abb(3)*CVDU*spak3k4*TR*i_
      abb(27)=8.0_ki*abb(27)
      abb(20)=mB*abb(5)*abb(27)*abb(2)*abb(20)
      abb(21)=abb(21)*abb(11)
      abb(18)=-abb(18)*abb(17)
      abb(18)=abb(18)+abb(21)
      abb(18)=abb(9)*abb(18)
      abb(28)=abb(11)*spak1k7
      abb(25)=abb(25)*abb(28)
      abb(18)=abb(18)+abb(26)+abb(25)
      abb(18)=abb(5)*abb(18)
      abb(24)=abb(24)*abb(12)
      abb(26)=abb(28)*abb(24)
      abb(29)=spal6k7*abb(12)
      abb(16)=abb(16)*abb(29)
      abb(30)=abb(9)*abb(11)
      abb(31)=abb(30)*abb(16)
      abb(18)=abb(18)+abb(26)+abb(31)
      abb(18)=mB*abb(18)
      abb(26)=abb(30)*abb(13)
      abb(29)=abb(29)*spak1l5
      abb(31)=abb(29)*abb(26)
      abb(18)=abb(31)+abb(18)
      abb(18)=abb(18)*abb(27)
      abb(31)=spal5k7*abb(14)
      abb(15)=abb(15)*abb(31)
      abb(16)=abb(15)-abb(16)
      abb(16)=abb(30)*abb(16)
      abb(23)=abb(23)*abb(14)
      abb(24)=abb(23)-abb(24)
      abb(24)=abb(28)*abb(24)
      abb(16)=abb(24)+abb(16)
      abb(16)=mB*abb(2)*abb(16)
      abb(24)=abb(31)*spak1l6
      abb(29)=abb(24)-abb(29)
      abb(29)=abb(26)*abb(2)*abb(29)
      abb(16)=abb(29)+abb(16)
      abb(16)=abb(16)*abb(27)
      abb(17)=-abb(19)*abb(17)
      abb(17)=-abb(21)+abb(17)-abb(22)
      abb(17)=abb(9)*abb(17)
      abb(17)=-abb(25)+abb(17)
      abb(17)=abb(5)*abb(17)
      abb(19)=-abb(28)*abb(23)
      abb(15)=-abb(30)*abb(15)
      abb(15)=abb(17)+abb(19)+abb(15)
      abb(15)=mB*abb(15)
      abb(17)=-abb(26)*abb(24)
      abb(15)=abb(17)+abb(15)
      abb(15)=abb(15)*abb(27)
      amplitude=c4*abb(20)+c3*abb(18)+c2*abb(16)+c1*abb(15)
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
end module p0_dbaru_epnebbbarg_diagramsh4l0
