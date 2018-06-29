module     p4_ubaru_epnemumnmubarg_diagramsh5l0
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity5diagramsl0.f90
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
      complex(ki), dimension(50) :: abb
!      complex(ki), dimension(2,numcs) :: diagrams
      integer :: i
      amplitude(:) = 0.0_ki
      abb(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb(2)=1.0_ki/(-mZ**2+es712+i_*mZ*wZ)
      abb(3)=sqrt2**(-1)
      abb(4)=es345**(-1)
      abb(5)=es71**(-1)
      abb(6)=spbk7k2**(-1)
      abb(7)=1.0_ki/(es34-es56+es712-es345)
      abb(8)=es712**(-1)
      abb(9)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb(10)=es456**(-1)
      abb(11)=1.0_ki/(-es34+es56+es712-es456)
      abb(12)=es234**(-1)
      abb(13)=1.0_ki/(-es71+es56-es567+es234)
      abb(14)=i_*abb(3)
      abb(15)=abb(14)*abb(5)*spak1k7
      abb(16)=gW**2
      abb(17)=abb(15)*abb(16)*abb(9)
      abb(18)=abb(17)*abb(1)
      abb(19)=abb(18)*abb(8)
      abb(19)=2.0_ki/3.0_ki*abb(19)
      abb(20)=abb(19)*spbk3k2
      abb(21)=gUl*abb(2)
      abb(22)=abb(18)*abb(21)*gWWZ
      abb(23)=abb(22)*spbk3k2
      abb(20)=abb(20)-abb(23)
      abb(24)=abb(20)*spak4k7
      abb(25)=spak4k5*abb(24)
      abb(26)=spbk2k1*abb(6)
      abb(27)=2.0_ki/3.0_ki*abb(8)
      abb(18)=abb(27)*abb(18)*abb(26)
      abb(27)=abb(18)*spbk3k2
      abb(28)=abb(23)*abb(26)
      abb(28)=abb(28)-abb(27)
      abb(29)=spak1k4*spak4k5*abb(28)
      abb(30)=abb(17)*spbk3k2
      abb(31)=abb(30)*spak4k5
      abb(32)=abb(31)*abb(8)
      abb(33)=spak4k7*abb(32)
      abb(34)=abb(31)*abb(26)
      abb(35)=abb(34)*abb(8)
      abb(36)=-spak1k4*abb(35)
      abb(33)=abb(33)+abb(36)
      abb(36)=4.0_ki/3.0_ki*abb(10)
      abb(33)=abb(33)*abb(36)
      abb(25)=abb(33)+abb(25)+abb(29)
      abb(25)=spbk6k4*abb(25)
      abb(29)=spbk6k3*spbk6k2
      abb(33)=abb(18)*abb(29)
      abb(37)=abb(22)*spbk6k3
      abb(38)=abb(26)*spbk6k2
      abb(39)=-abb(38)*abb(37)
      abb(33)=abb(33)+abb(39)
      abb(33)=spak1k5*abb(33)
      abb(39)=-abb(19)*abb(29)
      abb(37)=spbk6k2*abb(37)
      abb(37)=abb(39)+abb(37)
      abb(37)=spak5k7*abb(37)
      abb(16)=abb(16)*abb(1)
      abb(39)=abb(16)*abb(15)
      abb(40)=spak1k5*abb(6)
      abb(41)=spbk2k1*abb(39)*abb(40)
      abb(42)=abb(16)*spak5k7
      abb(43)=-abb(15)*abb(42)
      abb(41)=abb(41)+abb(43)
      abb(43)=4.0_ki/3.0_ki*abb(7)
      abb(43)=abb(43)*abb(8)
      abb(41)=abb(29)*abb(41)*abb(43)
      abb(33)=abb(41)+abb(33)+abb(37)
      abb(33)=spak4k6*abb(33)
      abb(37)=abb(27)*spbk6k2
      abb(41)=abb(23)*abb(38)
      abb(37)=abb(41)-abb(37)
      abb(41)=-spak1k5*abb(37)
      abb(44)=abb(20)*spbk6k2
      abb(45)=-spak5k7*abb(44)
      abb(46)=abb(38)*spak1k5
      abb(47)=spak5k7*spbk6k2
      abb(47)=abb(47)-abb(46)
      abb(48)=abb(1)*abb(9)*gW**4
      abb(15)=abb(15)*spbk3k2
      abb(49)=abb(15)*abb(48)
      abb(50)=-abb(12)*abb(49)*abb(47)
      abb(41)=2.0_ki*abb(50)+abb(41)+abb(45)
      abb(41)=spak2k4*abb(41)
      abb(31)=abb(31)*abb(21)
      abb(45)=-spak4k7*abb(31)
      abb(34)=abb(34)*abb(21)
      abb(50)=spak1k4*abb(34)
      abb(45)=abb(45)+abb(50)
      abb(45)=spbk6k4*abb(45)
      abb(34)=spak1k5*abb(34)
      abb(31)=-spak5k7*abb(31)
      abb(31)=abb(34)+abb(31)
      abb(31)=spbk6k5*abb(31)
      abb(31)=abb(45)+abb(31)
      abb(31)=gel*abb(10)*abb(31)
      abb(34)=-spbk6k3*abb(46)
      abb(45)=spak5k7*abb(29)
      abb(34)=abb(34)+abb(45)
      abb(39)=abb(39)*abb(21)
      abb(34)=spak4k6*abb(39)*abb(34)
      abb(45)=abb(26)*spbk6k3
      abb(46)=abb(45)*spak1k5
      abb(16)=abb(16)*abb(46)
      abb(42)=spbk6k3*abb(42)
      abb(16)=abb(42)-abb(16)
      abb(15)=spak3k4*abb(15)*abb(16)
      abb(16)=-abb(21)*abb(15)
      abb(16)=abb(34)+abb(16)
      abb(16)=gmul*abb(7)*abb(16)
      abb(16)=abb(16)+abb(31)
      abb(20)=-spak3k7*abb(20)
      abb(31)=-spak1k3*abb(28)
      abb(20)=abb(31)+abb(20)
      abb(31)=spak4k5*spbk6k3
      abb(20)=abb(31)*abb(20)
      abb(34)=-spbk6k5*spak5k7
      abb(42)=spbk6k1*spak1k7
      abb(34)=abb(34)+abb(42)
      abb(14)=abb(13)*abb(34)*abb(14)*spbk3k2**2*abb(48)*abb(40)
      abb(34)=spak5k7*spbk6k3
      abb(34)=-abb(46)+abb(34)
      abb(34)=abb(49)*abb(34)
      abb(14)=abb(34)+abb(14)
      abb(14)=2.0_ki*abb(14)
      abb(14)=abb(14)*abb(12)*spak3k4
      abb(28)=abb(28)*spak1k4
      abb(28)=abb(24)+abb(28)
      abb(34)=spbk6k1*spak1k5
      abb(40)=-spbk7k6*spak5k7
      abb(34)=abb(40)+abb(34)
      abb(28)=abb(28)*abb(34)
      abb(34)=abb(22)*spbk6k2
      abb(40)=abb(19)*spbk6k2
      abb(34)=abb(34)-abb(40)
      abb(34)=abb(34)*spak5k7
      abb(42)=abb(18)*spbk6k2
      abb(46)=abb(38)*abb(22)
      abb(46)=abb(46)-abb(42)
      abb(46)=abb(46)*spak1k5
      abb(34)=abb(34)-abb(46)
      abb(46)=-spbk7k3*spak4k7
      abb(48)=spbk3k1*spak1k4
      abb(46)=abb(48)+abb(46)
      abb(34)=abb(34)*abb(46)
      abb(46)=spak4k7*spbk6k3
      abb(48)=-spak1k4*abb(45)
      abb(46)=abb(46)+abb(48)
      abb(30)=spak3k5*abb(30)*abb(46)
      abb(29)=-spak4k7*abb(29)
      abb(46)=abb(38)*spak1k4
      abb(48)=spbk6k3*abb(46)
      abb(29)=abb(29)+abb(48)
      abb(17)=spak5k6*abb(29)*abb(17)
      abb(17)=abb(30)+abb(17)
      abb(17)=2.0_ki*abb(17)
      abb(17)=gnel*abb(11)*abb(21)*abb(17)
      abb(21)=spak4k5*abb(42)
      abb(29)=abb(22)*spak4k5
      abb(30)=-abb(38)*abb(29)
      abb(21)=abb(21)+abb(30)
      abb(21)=spak1k5*abb(21)
      abb(30)=-spak4k5*abb(40)
      abb(29)=spbk6k2*abb(29)
      abb(29)=abb(30)+abb(29)
      abb(29)=spak5k7*abb(29)
      abb(21)=abb(21)+abb(29)
      abb(21)=spbk5k3*abb(21)
      abb(24)=spbk6k3*abb(24)
      abb(27)=-spbk6k3*abb(27)
      abb(23)=abb(23)*abb(45)
      abb(23)=abb(27)+abb(23)
      abb(23)=spak1k4*abb(23)
      abb(23)=abb(24)+abb(23)
      abb(23)=spak3k5*abb(23)
      abb(18)=abb(18)*abb(31)
      abb(22)=abb(31)*abb(22)
      abb(24)=abb(22)*abb(26)
      abb(18)=abb(18)-abb(24)
      abb(24)=-spak1k5*abb(18)
      abb(19)=abb(19)*abb(31)
      abb(19)=abb(19)-abb(22)
      abb(26)=spak5k7*abb(19)
      abb(24)=abb(24)+abb(26)
      abb(24)=spbk5k2*abb(24)
      abb(26)=spak4k7*abb(44)
      abb(27)=spak1k4*abb(37)
      abb(26)=abb(26)+abb(27)
      abb(26)=spak2k5*abb(26)
      abb(19)=-spak4k7*abb(19)
      abb(18)=spak1k4*abb(18)
      abb(18)=abb(19)+abb(18)
      abb(18)=spbk4k2*abb(18)
      abb(19)=-spbk5k3*abb(47)
      abb(27)=-spak4k7*spbk6k2
      abb(27)=abb(27)+abb(46)
      abb(27)=spbk4k3*abb(27)
      abb(19)=abb(19)+abb(27)
      abb(19)=2.0_ki*abb(19)
      abb(19)=gnmul*abb(4)*abb(19)*abb(39)*spak4k5
      abb(27)=-spak1k5*abb(35)
      abb(29)=spak5k7*abb(32)
      abb(27)=abb(27)+abb(29)
      abb(27)=spbk6k5*abb(27)*abb(36)
      abb(29)=abb(31)*abb(40)
      abb(30)=-spbk6k2*abb(22)
      abb(29)=abb(29)+abb(30)
      abb(29)=spak6k7*abb(29)
      abb(30)=-abb(31)*abb(42)
      abb(22)=abb(38)*abb(22)
      abb(22)=abb(30)+abb(22)
      abb(22)=spak1k6*abb(22)
      abb(15)=abb(15)*abb(43)
      abb(14)=abb(22)+abb(29)+abb(18)+abb(26)+abb(24)+abb(27)+abb(41)+abb(23)+a&
      &bb(21)+abb(15)+abb(25)+abb(33)+abb(17)+abb(19)+abb(34)+abb(28)+abb(14)+a&
      &bb(20)+2.0_ki*abb(16)
      abb(14)=4.0_ki*abb(14)
      amplitude=c1*abb(14)
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
end module p4_ubaru_epnemumnmubarg_diagramsh5l0
