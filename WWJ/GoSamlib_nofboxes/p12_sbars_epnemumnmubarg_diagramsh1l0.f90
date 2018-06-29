module     p12_sbars_epnemumnmubarg_diagramsh1l0
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p12_sbars_epnemumnmubarg/helicity1diagramsl0.f90
   ! generator: buildfortranborn.py
   use p12_sbars_epnemumnmubarg_color, only: numcs
   use p12_sbars_epnemumnmubarg_config, only: ki
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   complex(ki), dimension(numcs), parameter :: zero_col = 0.0_ki
   public :: amplitude
contains
!---#[ function amplitude:
   function amplitude()
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_config, only: debug_lo_diagrams, &
        & use_sorted_sum
      use p12_sbars_epnemumnmubarg_accu, only: sorted_sum
      use p12_sbars_epnemumnmubarg_util, only: inspect_lo_diagram
      implicit none
      complex(ki), dimension(numcs) :: amplitude
      complex(ki), dimension(38) :: abb
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
      abb(12)=1.0_ki/(es71+es34+es56-es712-es234)
      abb(13)=1.0_ki/(es34+es567-es12-es234)
      abb(14)=1.0_ki/(-es71+es712-es12)
      abb(15)=spbk7k3*spak4k7
      abb(16)=spbk3k2*spak2k4
      abb(15)=abb(15)-abb(16)
      abb(17)=abb(5)*spbk7k1
      abb(18)=abb(17)*abb(8)*spak1k2
      abb(19)=abb(18)*spbk6k2
      abb(20)=abb(19)*abb(15)
      abb(21)=spbk6k2*spak4k6
      abb(22)=abb(18)*spbk6k3
      abb(23)=-abb(22)*abb(21)
      abb(19)=-spbk5k3*abb(19)
      abb(24)=spbk5k2*abb(22)
      abb(19)=abb(19)+abb(24)
      abb(19)=spak4k5*abb(19)
      abb(19)=abb(19)+abb(23)+abb(20)
      abb(19)=spak1k5*abb(19)
      abb(20)=spbk7k6*spak5k7
      abb(23)=spbk6k2*spak2k5
      abb(24)=abb(23)-abb(20)
      abb(25)=abb(18)*spbk3k2
      abb(24)=abb(25)*abb(24)
      abb(26)=spbk6k4*abb(25)
      abb(27)=-spbk4k2*abb(22)
      abb(26)=abb(26)+abb(27)
      abb(26)=spak4k5*abb(26)
      abb(27)=spbk3k2*spbk6k1
      abb(28)=spbk6k2*spbk3k1
      abb(27)=abb(27)-abb(28)
      abb(27)=abb(27)*spak1k5
      abb(18)=abb(18)*abb(27)
      abb(28)=spbk3k2*spak3k5*abb(22)
      abb(18)=abb(18)+abb(26)+abb(28)+abb(24)
      abb(18)=spak1k4*abb(18)
      abb(24)=spbk3k2*spak1k3
      abb(26)=spbk6k2*spak1k6
      abb(24)=abb(24)-abb(26)
      abb(24)=abb(24)*spak4k5
      abb(26)=-abb(22)*abb(24)
      abb(18)=abb(18)+abb(26)+abb(19)
      abb(19)=abb(17)*gWWZ
      abb(26)=spak1k2*spbk6k2
      abb(28)=abb(19)*abb(26)
      abb(29)=spak2k5*abb(28)
      abb(30)=spbk6k3*spak1k2
      abb(31)=abb(19)*abb(30)
      abb(32)=spak3k5*abb(31)
      abb(29)=abb(32)+abb(29)
      abb(29)=spbk3k2*abb(29)
      abb(32)=spak1k2*spbk3k2
      abb(20)=-abb(32)*abb(20)
      abb(27)=spak1k2*abb(27)
      abb(20)=abb(27)+abb(20)
      abb(20)=abb(19)*abb(20)
      abb(19)=spbk6k4*abb(32)*abb(19)
      abb(27)=-spbk4k2*abb(31)
      abb(19)=abb(19)+abb(27)
      abb(19)=spak4k5*abb(19)
      abb(19)=abb(19)+abb(20)+abb(29)
      abb(19)=spak1k4*abb(19)
      abb(15)=abb(28)*abb(15)
      abb(20)=-spbk5k3*abb(28)
      abb(27)=spbk5k2*abb(31)
      abb(20)=abb(20)+abb(27)
      abb(20)=spak4k5*abb(20)
      abb(21)=-abb(31)*abb(21)
      abb(15)=abb(20)+abb(21)+abb(15)
      abb(15)=spak1k5*abb(15)
      abb(20)=-abb(31)*abb(24)
      abb(15)=abb(19)+abb(20)+abb(15)
      abb(19)=abb(2)*gSl
      abb(15)=abb(15)*abb(19)
      abb(20)=es71+es12
      abb(21)=abb(20)*abb(8)
      abb(21)=abb(21)-1.0_ki
      abb(24)=abb(23)*abb(21)
      abb(27)=-spbk7k6*spak5k7*abb(21)
      abb(28)=spbk6k3*spak3k5*abb(21)
      abb(24)=abb(28)+abb(27)+abb(24)
      abb(24)=spbk7k3*abb(24)
      abb(27)=spbk7k3*spbk6k4*abb(21)
      abb(28)=-spbk6k3*spbk7k4*abb(21)
      abb(27)=abb(27)+abb(28)
      abb(27)=spak4k5*abb(27)
      abb(28)=spbk7k3*spbk6k1*abb(21)
      abb(29)=-spbk7k6*spbk3k1*abb(21)
      abb(28)=abb(28)+abb(29)
      abb(28)=spak1k5*abb(28)
      abb(24)=abb(28)+abb(27)+abb(24)
      abb(24)=spak1k4*abb(24)
      abb(27)=-abb(16)*abb(21)
      abb(28)=spbk7k3*spak4k7*abb(21)
      abb(29)=-spbk6k3*spak4k6*abb(21)
      abb(27)=abb(29)+abb(28)+abb(27)
      abb(27)=spbk7k6*abb(27)
      abb(28)=-spbk7k6*spbk5k3*abb(21)
      abb(29)=spbk6k3*spbk7k5*abb(21)
      abb(28)=abb(28)+abb(29)
      abb(28)=spak4k5*abb(28)
      abb(27)=abb(28)+abb(27)
      abb(27)=spak1k5*abb(27)
      abb(28)=-spbk7k3*spak1k3*abb(21)
      abb(29)=spbk7k6*spak1k6*abb(21)
      abb(28)=abb(28)+abb(29)
      abb(29)=spak4k5*spbk6k3
      abb(28)=abb(28)*abb(29)
      abb(24)=abb(24)+abb(28)+abb(27)
      abb(20)=abb(20)-es712
      abb(27)=abb(23)*abb(20)
      abb(28)=abb(20)*spbk7k6
      abb(31)=-spak5k7*abb(28)
      abb(33)=spak3k5*abb(20)*spbk6k3
      abb(27)=abb(33)+abb(27)+abb(31)
      abb(31)=spbk7k3*gWWZ
      abb(27)=abb(31)*abb(27)
      abb(31)=abb(20)*abb(31)
      abb(33)=spbk6k4*abb(31)
      abb(34)=abb(20)*spbk6k3*gWWZ
      abb(35)=-spbk7k4*abb(34)
      abb(33)=abb(33)+abb(35)
      abb(33)=spak4k5*abb(33)
      abb(35)=spbk6k1*abb(31)
      abb(36)=abb(20)*spbk7k6*gWWZ
      abb(37)=-spbk3k1*abb(36)
      abb(35)=abb(35)+abb(37)
      abb(35)=spak1k5*abb(35)
      abb(27)=abb(35)+abb(33)+abb(27)
      abb(27)=spak1k4*abb(27)
      abb(16)=-gWWZ*abb(16)*abb(20)
      abb(33)=spak4k7*abb(31)
      abb(16)=abb(16)+abb(33)
      abb(16)=spbk7k6*abb(16)
      abb(33)=-spbk5k3*abb(36)
      abb(34)=spbk7k5*abb(34)
      abb(33)=abb(33)+abb(34)
      abb(33)=spak4k5*abb(33)
      abb(34)=-spbk6k3*spak4k6*abb(36)
      abb(16)=abb(33)+abb(16)+abb(34)
      abb(16)=spak1k5*abb(16)
      abb(31)=-spak1k3*abb(31)
      abb(33)=spak1k6*abb(36)
      abb(31)=abb(31)+abb(33)
      abb(29)=abb(31)*abb(29)
      abb(16)=abb(27)+abb(29)+abb(16)
      abb(16)=abb(16)*abb(19)
      abb(16)=1.0_ki/3.0_ki*abb(24)+abb(16)
      abb(16)=abb(14)*abb(16)
      abb(15)=abb(16)+1.0_ki/3.0_ki*abb(18)+abb(15)
      abb(15)=abb(9)*abb(15)
      abb(16)=abb(20)*spbk7k3
      abb(18)=abb(7)*spak3k4
      abb(24)=abb(18)*gmul
      abb(27)=abb(24)*abb(16)
      abb(29)=abb(7)*spak4k6
      abb(31)=abb(29)*gmul
      abb(33)=-abb(31)*abb(28)
      abb(27)=abb(27)+abb(33)
      abb(27)=spbk6k3*abb(27)
      abb(33)=abb(20)*spak4k5*spbk7k6
      abb(34)=abb(4)*gnmul
      abb(35)=abb(34)*spbk5k3
      abb(36)=abb(35)*abb(33)
      abb(27)=abb(27)+abb(36)
      abb(27)=spak1k5*abb(27)
      abb(36)=spak1k4*spak4k5
      abb(34)=abb(34)*spbk4k3
      abb(37)=abb(36)*abb(34)*abb(28)
      abb(27)=abb(27)+abb(37)
      abb(27)=abb(27)*abb(19)
      abb(37)=spbk7k3*abb(18)*abb(21)
      abb(38)=-spbk7k6*abb(29)*abb(21)
      abb(37)=abb(37)+abb(38)
      abb(38)=1.0_ki/3.0_ki*spak1k5
      abb(37)=spbk6k3*abb(37)*abb(38)
      abb(27)=abb(37)+abb(27)
      abb(27)=abb(14)*abb(27)
      abb(18)=spbk3k2*abb(18)
      abb(29)=-spbk6k2*abb(29)
      abb(18)=abb(18)+abb(29)
      abb(18)=abb(18)*abb(22)*abb(38)
      abb(22)=abb(30)*abb(17)
      abb(24)=spbk3k2*abb(24)
      abb(29)=-spbk6k2*abb(31)
      abb(24)=abb(24)+abb(29)
      abb(24)=abb(24)*abb(22)
      abb(29)=abb(17)*spak4k5
      abb(30)=abb(29)*abb(26)
      abb(31)=abb(35)*abb(30)
      abb(24)=abb(24)+abb(31)
      abb(24)=spak1k5*abb(24)
      abb(30)=spak1k4*abb(34)*abb(30)
      abb(24)=abb(24)+abb(30)
      abb(24)=abb(24)*abb(19)
      abb(18)=abb(27)+abb(18)+abb(24)
      abb(15)=2.0_ki*abb(18)+abb(15)
      abb(15)=abb(1)*abb(15)
      abb(18)=abb(23)*abb(12)
      abb(23)=abb(18)*spbk7k2
      abb(24)=spbk3k1*abb(13)
      abb(27)=abb(24)*abb(23)
      abb(17)=abb(18)*abb(17)*spbk3k2
      abb(17)=abb(27)+abb(17)
      abb(17)=spak1k2*abb(17)
      abb(18)=spak5k6*abb(12)
      abb(26)=abb(26)*abb(24)*abb(18)
      abb(27)=abb(13)*spbk4k3
      abb(30)=abb(27)*spak2k4
      abb(18)=abb(18)*spbk6k2
      abb(31)=-abb(18)*abb(30)
      abb(26)=abb(31)+abb(26)
      abb(26)=spbk7k6*abb(26)
      abb(27)=-abb(27)*abb(33)
      abb(24)=-spak1k5*abb(24)*abb(28)
      abb(24)=abb(27)+abb(24)
      abb(24)=abb(14)*abb(24)
      abb(23)=-abb(23)*abb(30)
      abb(18)=-abb(22)*abb(18)
      abb(17)=abb(24)+abb(18)+abb(26)+abb(23)+abb(17)
      abb(18)=gW**2
      abb(17)=abb(1)*abb(18)*spak1k4*abb(17)
      abb(23)=abb(10)*spbk6k5
      abb(24)=spak4k5*spbk7k3
      abb(26)=abb(24)*spak1k5
      abb(27)=abb(26)*abb(23)*abb(21)
      abb(30)=abb(10)*spbk6k4
      abb(21)=spak1k4*abb(24)*abb(30)*abb(21)
      abb(21)=abb(27)+abb(21)
      abb(27)=abb(11)*gnel
      abb(31)=abb(27)*spak3k5
      abb(16)=-abb(31)*abb(16)
      abb(27)=abb(27)*spak5k6
      abb(28)=abb(27)*abb(28)
      abb(16)=abb(16)+abb(28)
      abb(16)=spbk6k3*abb(16)
      abb(28)=abb(30)*gel
      abb(24)=abb(24)*abb(28)*abb(20)
      abb(16)=abb(16)+abb(24)
      abb(16)=spak1k4*abb(16)
      abb(24)=gel*abb(23)
      abb(20)=abb(26)*abb(24)*abb(20)
      abb(16)=abb(20)+abb(16)
      abb(16)=abb(16)*abb(19)
      abb(16)=1.0_ki/3.0_ki*abb(21)+abb(16)
      abb(16)=abb(14)*abb(16)
      abb(20)=-spbk3k2*abb(31)
      abb(21)=spbk6k2*abb(27)
      abb(20)=abb(20)+abb(21)
      abb(20)=abb(20)*abb(22)
      abb(21)=abb(29)*abb(32)
      abb(22)=abb(28)*abb(21)
      abb(20)=abb(20)+abb(22)
      abb(20)=spak1k4*abb(20)
      abb(21)=spak1k5*abb(24)*abb(21)
      abb(20)=abb(21)+abb(20)
      abb(19)=abb(20)*abb(19)
      abb(20)=abb(30)*abb(36)
      abb(21)=abb(23)*spak1k5*spak4k5
      abb(20)=abb(21)+abb(20)
      abb(20)=abb(25)*abb(20)
      abb(16)=abb(17)+abb(16)+1.0_ki/3.0_ki*abb(20)+abb(19)
      abb(17)=2.0_ki*abb(9)
      abb(16)=abb(17)*abb(16)
      abb(15)=abb(15)+abb(16)
      abb(15)=4.0_ki*abb(3)*abb(6)*abb(18)*i_*abb(15)
      amplitude=c1*abb(15)
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
end module p12_sbars_epnemumnmubarg_diagramsh1l0
