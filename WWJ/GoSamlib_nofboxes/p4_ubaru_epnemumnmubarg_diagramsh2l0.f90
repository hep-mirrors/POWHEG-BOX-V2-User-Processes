module     p4_ubaru_epnemumnmubarg_diagramsh2l0
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity2diagramsl0.f90
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
      complex(ki), dimension(41) :: abb
!      complex(ki), dimension(2,numcs) :: diagrams
      integer :: i
      amplitude(:) = 0.0_ki
      abb(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb(2)=1.0_ki/(-mZ**2+es712+i_*mZ*wZ)
      abb(3)=sqrt2**(-1)
      abb(4)=es345**(-1)
      abb(5)=es71**(-1)
      abb(6)=spak2k7**(-1)
      abb(7)=1.0_ki/(es34-es56+es712-es345)
      abb(8)=es712**(-1)
      abb(9)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb(10)=es456**(-1)
      abb(11)=1.0_ki/(-es34+es56+es712-es456)
      abb(12)=i_*spbk7k1*abb(5)*abb(3)
      abb(13)=gW**2
      abb(14)=abb(12)*abb(13)*abb(9)
      abb(15)=abb(14)*spak4k5
      abb(16)=spak1k2*abb(6)
      abb(17)=abb(16)*spbk3k1
      abb(18)=abb(17)-spbk7k3
      abb(19)=-abb(8)*abb(18)*spak2k4*abb(15)
      abb(20)=gUr*abb(2)
      abb(21)=abb(20)*abb(14)
      abb(18)=-abb(21)*abb(18)
      abb(22)=spak4k5*spak2k4
      abb(23)=-gel*abb(22)*abb(18)
      abb(19)=2.0_ki*abb(23)+4.0_ki/3.0_ki*abb(19)
      abb(19)=abb(10)*abb(19)
      abb(23)=abb(14)*abb(1)
      abb(24)=abb(23)*abb(20)*gWWZ
      abb(25)=abb(24)*spak2k4
      abb(26)=abb(25)*spak4k5
      abb(27)=abb(23)*abb(8)
      abb(27)=2.0_ki/3.0_ki*abb(27)
      abb(28)=abb(27)*abb(22)
      abb(26)=abb(28)-abb(26)
      abb(26)=spbk7k3*abb(26)
      abb(28)=2.0_ki/3.0_ki*abb(8)
      abb(23)=abb(28)*abb(23)*abb(16)
      abb(28)=-abb(23)*abb(22)
      abb(29)=abb(25)*abb(16)
      abb(30)=spak4k5*abb(29)
      abb(28)=abb(28)+abb(30)
      abb(28)=spbk3k1*abb(28)
      abb(19)=abb(26)+abb(28)+abb(19)
      abb(19)=spbk6k4*abb(19)
      abb(12)=abb(12)*abb(13)*abb(1)
      abb(13)=abb(12)*abb(20)
      abb(20)=gmul*abb(13)*spak2k5
      abb(12)=abb(8)*spak2k5*abb(12)
      abb(26)=2.0_ki*abb(20)-4.0_ki/3.0_ki*abb(12)
      abb(28)=spbk7k6*spbk6k3
      abb(30)=abb(16)*spbk6k3
      abb(31)=abb(30)*spbk6k1
      abb(28)=abb(28)-abb(31)
      abb(26)=abb(26)*abb(28)*abb(7)
      abb(31)=abb(27)*spak2k5
      abb(32)=abb(24)*spak2k5
      abb(31)=abb(31)-abb(32)
      abb(31)=abb(31)*spbk7k6
      abb(33)=-spbk6k3*abb(31)
      abb(34)=abb(23)*spak2k5
      abb(35)=spbk6k3*abb(34)
      abb(36)=-abb(30)*abb(32)
      abb(35)=abb(35)+abb(36)
      abb(35)=spbk6k1*abb(35)
      abb(26)=abb(33)+abb(35)+abb(26)
      abb(26)=spak4k6*abb(26)
      abb(33)=abb(32)*abb(16)
      abb(34)=abb(33)-abb(34)
      abb(34)=abb(34)*spbk6k1
      abb(31)=abb(34)+abb(31)
      abb(34)=spak4k7*spbk7k3
      abb(35)=-spak1k4*spbk3k1
      abb(34)=abb(35)+abb(34)
      abb(31)=abb(31)*abb(34)
      abb(34)=spak4k5*spak2k5
      abb(14)=-abb(34)*abb(14)*abb(17)
      abb(15)=spbk7k3*spak2k5*abb(15)
      abb(14)=abb(15)+abb(14)
      abb(14)=abb(8)*abb(14)
      abb(15)=-gel*abb(34)*abb(18)
      abb(14)=2.0_ki/3.0_ki*abb(14)+abb(15)
      abb(14)=spbk6k5*abb(10)*abb(14)
      abb(12)=2.0_ki/3.0_ki*abb(12)-abb(20)
      abb(15)=spbk7k3*spbk6k3
      abb(17)=abb(30)*spbk3k1
      abb(15)=abb(15)-abb(17)
      abb(12)=spak3k4*abb(7)*abb(15)*abb(12)
      abb(12)=abb(14)+abb(12)
      abb(14)=abb(27)*spak2k4
      abb(14)=abb(14)-abb(25)
      abb(17)=abb(14)*spbk7k3
      abb(18)=abb(23)*spak2k4
      abb(20)=abb(29)-abb(18)
      abb(29)=abb(20)*spbk3k1
      abb(29)=abb(29)+abb(17)
      abb(35)=-spak5k7*spbk7k6
      abb(36)=spak1k5*spbk6k1
      abb(35)=abb(36)+abb(35)
      abb(29)=abb(29)*abb(35)
      abb(35)=abb(34)*abb(27)
      abb(36)=abb(32)*spak4k5
      abb(37)=-abb(35)+abb(36)
      abb(37)=spbk7k6*abb(37)
      abb(38)=abb(34)*abb(23)
      abb(33)=-spak4k5*abb(33)
      abb(33)=abb(38)+abb(33)
      abb(33)=spbk6k1*abb(33)
      abb(33)=abb(37)+abb(33)
      abb(33)=spbk5k3*abb(33)
      abb(17)=spbk6k3*abb(17)
      abb(37)=-spbk6k3*abb(18)
      abb(25)=abb(25)*abb(30)
      abb(37)=abb(37)+abb(25)
      abb(37)=spbk3k1*abb(37)
      abb(17)=abb(17)+abb(37)
      abb(17)=spak3k5*abb(17)
      abb(37)=spak2k5*abb(14)
      abb(39)=spbk7k3*abb(37)
      abb(20)=-spak2k5*abb(20)
      abb(40)=-spbk3k1*abb(20)
      abb(39)=abb(39)+abb(40)
      abb(39)=spbk6k2*abb(39)
      abb(24)=abb(24)*spak4k5
      abb(40)=abb(24)*spbk6k3
      abb(41)=spbk6k3*spak4k5
      abb(27)=abb(41)*abb(27)
      abb(27)=abb(40)-abb(27)
      abb(40)=-spbk7k6*abb(27)
      abb(23)=abb(41)*abb(23)
      abb(24)=abb(24)*abb(30)
      abb(23)=abb(24)-abb(23)
      abb(24)=spbk6k1*abb(23)
      abb(24)=abb(40)+abb(24)
      abb(24)=spak2k6*abb(24)
      abb(37)=-spbk7k6*abb(37)
      abb(20)=spbk6k1*abb(20)
      abb(20)=abb(37)+abb(20)
      abb(20)=spbk3k2*abb(20)
      abb(27)=spbk7k3*abb(27)
      abb(23)=-spbk3k1*abb(23)
      abb(23)=abb(27)+abb(23)
      abb(23)=spak2k3*abb(23)
      abb(27)=spbk5k3*abb(34)
      abb(22)=spbk4k3*abb(22)
      abb(22)=abb(27)+abb(22)
      abb(16)=abb(16)*spbk6k1
      abb(16)=abb(16)-spbk7k6
      abb(13)=abb(22)*abb(13)*abb(16)
      abb(13)=2.0_ki*abb(13)
      abb(13)=gnmul*abb(4)*abb(13)
      abb(15)=spak3k5*abb(15)
      abb(16)=-spak5k6*abb(28)
      abb(15)=abb(15)+abb(16)
      abb(15)=abb(15)*abb(21)*spak2k4
      abb(15)=2.0_ki*abb(15)
      abb(15)=gnel*abb(11)*abb(15)
      abb(16)=spbk6k3*abb(35)
      abb(21)=-abb(32)*abb(41)
      abb(16)=abb(16)+abb(21)
      abb(16)=spbk7k5*abb(16)
      abb(14)=-spbk7k4*abb(41)*abb(14)
      abb(21)=-spbk6k3*abb(38)
      abb(22)=abb(30)*abb(36)
      abb(21)=abb(21)+abb(22)
      abb(21)=spbk5k1*abb(21)
      abb(18)=abb(41)*abb(18)
      abb(22)=-spak4k5*abb(25)
      abb(18)=abb(18)+abb(22)
      abb(18)=spbk4k1*abb(18)
      abb(12)=abb(18)+abb(21)+abb(14)+abb(16)+abb(23)+abb(20)+abb(24)+abb(39)+a&
      &bb(17)+abb(33)+abb(15)+abb(13)+abb(26)+abb(19)+abb(29)+2.0_ki*abb(12)+ab&
      &b(31)
      abb(12)=4.0_ki*abb(12)
      amplitude=c1*abb(12)
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
end module p4_ubaru_epnemumnmubarg_diagramsh2l0
