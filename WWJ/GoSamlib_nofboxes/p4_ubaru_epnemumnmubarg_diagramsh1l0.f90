module     p4_ubaru_epnemumnmubarg_diagramsh1l0
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity1diagramsl0.f90
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
      complex(ki), dimension(65) :: abb
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
      abb(12)=es234**(-1)
      abb(13)=1.0_ki/(-es71+es56-es567+es234)
      abb(14)=1.0_ki/(-es71+es712-es12)
      abb(15)=i_*abb(6)
      abb(16)=abb(15)*gW**2
      abb(17)=abb(1)*abb(3)
      abb(18)=abb(17)*abb(16)*abb(14)
      abb(19)=spbk6k3*spak1k5
      abb(20)=abb(19)*abb(18)
      abb(21)=es12+es71
      abb(22)=es712-abb(21)
      abb(23)=gUl*abb(2)
      abb(24)=abb(23)*spbk7k6
      abb(25)=abb(24)*abb(20)*abb(22)
      abb(26)=spak1k2*spbk7k1*abb(5)
      abb(27)=abb(26)*spbk6k2
      abb(28)=abb(27)*abb(17)
      abb(29)=abb(16)*abb(23)
      abb(30)=abb(28)*abb(29)
      abb(31)=-abb(19)*abb(30)
      abb(25)=abb(31)+abb(25)
      abb(25)=spak4k6*abb(25)
      abb(31)=abb(20)*spbk7k3
      abb(32)=-abb(31)*abb(23)*abb(22)
      abb(33)=abb(26)*spbk3k2
      abb(34)=abb(33)*abb(19)
      abb(35)=abb(17)*abb(29)*abb(34)
      abb(32)=abb(35)+abb(32)
      abb(32)=spak3k4*abb(32)
      abb(25)=abb(25)+abb(32)
      abb(25)=gmul*abb(7)*abb(25)
      abb(32)=abb(21)*spak4k5
      abb(35)=es712*spak4k5
      abb(32)=abb(32)-abb(35)
      abb(36)=abb(9)*abb(3)
      abb(37)=abb(36)*abb(14)
      abb(38)=abb(29)*abb(37)
      abb(39)=spbk7k3*spak1k4
      abb(40)=abb(38)*abb(39)
      abb(41)=abb(40)*abb(32)
      abb(42)=abb(33)*abb(36)
      abb(43)=abb(42)*spak1k4
      abb(44)=abb(29)*spak4k5
      abb(45)=abb(44)*abb(43)
      abb(41)=abb(45)+abb(41)
      abb(41)=spbk6k4*abb(41)
      abb(45)=spbk7k3*spak1k5
      abb(46)=abb(45)*abb(38)*abb(32)
      abb(47)=spak4k5*spak1k5
      abb(48)=abb(29)*abb(47)*abb(42)
      abb(46)=abb(48)+abb(46)
      abb(46)=spbk6k5*abb(46)
      abb(41)=abb(41)+abb(46)
      abb(41)=gel*abb(10)*abb(41)
      abb(46)=-spbk6k5*abb(32)*abb(45)
      abb(48)=spbk6k1*spak1k5*abb(22)*abb(39)
      abb(46)=abb(46)+abb(48)
      abb(15)=abb(36)*abb(15)*gW**4
      abb(46)=abb(13)*abb(46)*abb(15)*abb(14)*abb(1)
      abb(25)=abb(41)+abb(46)+abb(25)
      abb(41)=abb(16)*abb(36)*abb(1)
      abb(46)=gWWZ*abb(23)*abb(41)
      abb(39)=abb(46)*abb(39)
      abb(48)=abb(39)*abb(14)
      abb(49)=abb(48)*spak4k5
      abb(50)=abb(41)*spak1k4
      abb(51)=2.0_ki/3.0_ki*abb(8)
      abb(51)=abb(51)*abb(50)
      abb(52)=spbk7k3*spak4k5
      abb(53)=abb(52)*abb(14)
      abb(54)=abb(53)*abb(51)
      abb(49)=abb(49)-abb(54)
      abb(49)=abb(49)*abb(21)
      abb(54)=abb(46)*spak1k4
      abb(54)=abb(54)-abb(51)
      abb(55)=abb(54)*abb(33)
      abb(56)=spak4k5*abb(55)
      abb(37)=abb(52)*abb(37)
      abb(52)=abb(8)*abb(21)
      abb(52)=-1.0_ki+abb(52)
      abb(57)=-abb(37)*abb(52)
      abb(42)=abb(42)*spak4k5
      abb(58)=-abb(8)*abb(42)
      abb(57)=abb(58)+abb(57)
      abb(58)=4.0_ki/3.0_ki*abb(10)
      abb(57)=abb(58)*abb(57)*abb(16)*spak1k4
      abb(50)=2.0_ki/3.0_ki*abb(50)
      abb(53)=abb(50)*abb(53)
      abb(59)=-abb(48)*abb(35)
      abb(49)=abb(57)+abb(59)+abb(56)+abb(53)+abb(49)
      abb(49)=spbk6k4*abb(49)
      abb(18)=abb(32)*abb(18)
      abb(24)=abb(24)*spak1k5*abb(18)
      abb(30)=abb(47)*abb(30)
      abb(24)=abb(30)+abb(24)
      abb(24)=spbk5k3*abb(24)
      abb(30)=spbk7k6*spak1k4
      abb(18)=abb(30)*abb(23)*abb(18)
      abb(23)=abb(28)*abb(44)*spak1k4
      abb(18)=abb(23)+abb(18)
      abb(18)=spbk4k3*abb(18)
      abb(18)=abb(24)+abb(18)
      abb(18)=2.0_ki*abb(18)
      abb(18)=gnmul*abb(4)*abb(18)
      abb(23)=2.0_ki/3.0_ki*abb(41)
      abb(24)=abb(23)*abb(8)
      abb(32)=spak1k5*abb(14)
      abb(41)=abb(32)*spbk7k6
      abb(44)=abb(24)*abb(41)
      abb(53)=abb(41)*abb(46)
      abb(44)=abb(44)-abb(53)
      abb(44)=abb(21)*abb(44)
      abb(56)=abb(41)*abb(23)
      abb(57)=abb(53)*es712
      abb(59)=abb(44)-abb(56)+abb(57)
      abb(60)=spbk6k3*abb(59)
      abb(24)=abb(24)-abb(46)
      abb(61)=abb(24)*abb(27)
      abb(19)=abb(19)*abb(61)
      abb(20)=abb(20)*spbk7k6*abb(52)
      abb(16)=abb(16)*spak1k5
      abb(62)=abb(16)*abb(8)
      abb(63)=abb(62)*spbk6k3
      abb(28)=abb(28)*abb(63)
      abb(20)=abb(28)+abb(20)
      abb(28)=4.0_ki/3.0_ki*abb(7)
      abb(20)=abb(20)*abb(28)
      abb(19)=abb(20)+abb(19)+abb(60)
      abb(19)=spak4k6*abb(19)
      abb(20)=abb(32)*spbk7k3
      abb(60)=abb(20)*abb(51)
      abb(39)=abb(39)*abb(32)
      abb(60)=abb(60)-abb(39)
      abb(60)=-abb(60)*abb(21)
      abb(64)=abb(54)*spak1k5
      abb(65)=abb(64)*abb(33)
      abb(20)=abb(50)*abb(20)
      abb(39)=-es712*abb(39)
      abb(20)=abb(39)+abb(65)+abb(20)+abb(60)
      abb(20)=spbk6k1*abb(20)
      abb(39)=spbk7k3*abb(14)
      abb(60)=abb(39)*abb(51)
      abb(60)=abb(60)-abb(48)
      abb(60)=abb(21)*abb(60)
      abb(48)=abb(48)*es712
      abb(39)=abb(50)*abb(39)
      abb(39)=abb(60)-abb(55)+abb(48)-abb(39)
      abb(48)=-spak3k5*spbk6k3*abb(39)
      abb(55)=-spak2k5*spbk6k2*abb(39)
      abb(39)=spak5k7*spbk7k6*abb(39)
      abb(51)=abb(51)*abb(41)
      abb(60)=abb(53)*spak1k4
      abb(51)=abb(51)-abb(60)
      abb(51)=abb(51)*abb(21)
      abb(60)=-abb(64)*abb(27)
      abb(41)=-abb(41)*abb(50)
      abb(64)=spak1k4*abb(57)
      abb(41)=abb(64)+abb(60)+abb(41)+abb(51)
      abb(41)=spbk3k1*abb(41)
      abb(22)=abb(22)*spbk6k3
      abb(30)=-abb(30)*abb(38)*abb(22)
      abb(29)=abb(29)*spbk6k3
      abb(36)=abb(36)*abb(27)*abb(29)*spak1k4
      abb(30)=abb(36)+abb(30)
      abb(30)=spak5k6*abb(30)
      abb(29)=-abb(29)*abb(43)
      abb(22)=abb(40)*abb(22)
      abb(22)=abb(29)+abb(22)
      abb(22)=spak3k5*abb(22)
      abb(22)=abb(22)+abb(30)
      abb(22)=2.0_ki*abb(22)
      abb(22)=gnel*abb(11)*abb(22)
      abb(29)=spak2k5*spbk6k5
      abb(30)=spbk6k1*spak1k2
      abb(29)=abb(29)+abb(30)
      abb(29)=abb(13)*spbk3k2*abb(29)
      abb(30)=-abb(45)*abb(29)
      abb(30)=-abb(34)+abb(30)
      abb(30)=abb(15)*spak3k4*abb(30)
      abb(15)=spak2k4*abb(15)*spak1k5
      abb(29)=spbk7k2*abb(15)*abb(29)
      abb(34)=abb(33)*spbk6k2
      abb(15)=abb(15)*abb(34)
      abb(15)=abb(29)+abb(15)+abb(30)
      abb(15)=2.0_ki*abb(15)
      abb(15)=abb(12)*abb(1)*abb(15)
      abb(29)=spbk6k3*spak4k5
      abb(30)=-abb(29)*abb(24)
      abb(36)=spbk5k2*spak1k5*abb(30)
      abb(38)=-spbk4k2*abb(29)*abb(54)
      abb(36)=abb(38)+abb(36)
      abb(26)=abb(26)*abb(36)
      abb(36)=abb(44)-abb(56)
      abb(38)=spak4k5*abb(36)
      abb(40)=abb(47)*abb(61)
      abb(35)=abb(53)*abb(35)
      abb(35)=abb(35)+abb(40)+abb(38)
      abb(35)=spbk5k3*abb(35)
      abb(36)=abb(57)+abb(36)
      abb(36)=spbk3k2*abb(36)
      abb(34)=abb(34)*spak1k5*abb(24)
      abb(34)=abb(34)+abb(36)
      abb(34)=spak2k4*abb(34)
      abb(36)=-spbk7k3*abb(59)
      abb(38)=-abb(45)*abb(61)
      abb(36)=abb(38)+abb(36)
      abb(36)=spak4k7*abb(36)
      abb(24)=abb(21)*abb(24)
      abb(38)=abb(46)*es712
      abb(23)=abb(24)+abb(38)-abb(23)
      abb(24)=abb(29)*abb(14)
      abb(40)=-abb(23)*abb(24)*spbk7k6
      abb(27)=abb(30)*abb(27)
      abb(27)=abb(27)+abb(40)
      abb(27)=spak1k6*abb(27)
      abb(40)=abb(23)*abb(24)*spbk7k3
      abb(30)=-abb(30)*abb(33)
      abb(30)=abb(30)+abb(40)
      abb(30)=spak1k3*abb(30)
      abb(23)=-spbk7k5*abb(23)*abb(29)*abb(32)
      abb(29)=-abb(21)*abb(54)
      abb(32)=spak1k4*abb(38)
      abb(29)=abb(29)+abb(32)-abb(50)
      abb(24)=spbk7k4*abb(24)*abb(29)
      abb(21)=-abb(37)*abb(21)
      abb(21)=-abb(42)+abb(21)
      abb(21)=abb(62)*abb(21)
      abb(16)=abb(16)*abb(37)
      abb(16)=abb(16)+abb(21)
      abb(16)=spbk6k5*abb(16)*abb(58)
      abb(17)=-abb(17)*abb(33)*abb(63)
      abb(21)=-abb(31)*abb(52)
      abb(17)=abb(17)+abb(21)
      abb(17)=spak3k4*abb(17)*abb(28)
      abb(15)=abb(24)+abb(23)+abb(30)+abb(41)+abb(27)+abb(36)+abb(39)+abb(55)+a&
      &bb(34)+abb(17)+abb(48)+abb(35)+abb(20)+abb(16)+abb(49)+abb(19)+abb(26)+a&
      &bb(15)+abb(22)+abb(18)+2.0_ki*abb(25)
      abb(15)=4.0_ki*abb(15)
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
end module p4_ubaru_epnemumnmubarg_diagramsh1l0
