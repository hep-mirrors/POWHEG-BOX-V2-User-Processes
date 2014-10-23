module     p0_dbaru_epnebbbarg_d69h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d69h7l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd69h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc69(80)
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk7
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk7 = dotproduct(Q,k7)
      acc69(1)=abb69(9)
      acc69(2)=abb69(10)
      acc69(3)=abb69(11)
      acc69(4)=abb69(12)
      acc69(5)=abb69(13)
      acc69(6)=abb69(14)
      acc69(7)=abb69(15)
      acc69(8)=abb69(16)
      acc69(9)=abb69(17)
      acc69(10)=abb69(18)
      acc69(11)=abb69(19)
      acc69(12)=abb69(20)
      acc69(13)=abb69(21)
      acc69(14)=abb69(22)
      acc69(15)=abb69(23)
      acc69(16)=abb69(24)
      acc69(17)=abb69(25)
      acc69(18)=abb69(26)
      acc69(19)=abb69(27)
      acc69(20)=abb69(28)
      acc69(21)=abb69(29)
      acc69(22)=abb69(30)
      acc69(23)=abb69(31)
      acc69(24)=abb69(32)
      acc69(25)=abb69(33)
      acc69(26)=abb69(34)
      acc69(27)=abb69(35)
      acc69(28)=abb69(36)
      acc69(29)=abb69(37)
      acc69(30)=abb69(38)
      acc69(31)=abb69(39)
      acc69(32)=abb69(40)
      acc69(33)=abb69(41)
      acc69(34)=abb69(42)
      acc69(35)=abb69(43)
      acc69(36)=abb69(44)
      acc69(37)=abb69(45)
      acc69(38)=abb69(46)
      acc69(39)=abb69(47)
      acc69(40)=abb69(48)
      acc69(41)=abb69(49)
      acc69(42)=abb69(50)
      acc69(43)=abb69(51)
      acc69(44)=abb69(52)
      acc69(45)=abb69(53)
      acc69(46)=abb69(54)
      acc69(47)=abb69(55)
      acc69(48)=abb69(56)
      acc69(49)=abb69(57)
      acc69(50)=abb69(58)
      acc69(51)=abb69(59)
      acc69(52)=abb69(60)
      acc69(53)=abb69(61)
      acc69(54)=abb69(63)
      acc69(55)=abb69(64)
      acc69(56)=abb69(65)
      acc69(57)=abb69(66)
      acc69(58)=abb69(67)
      acc69(59)=abb69(68)
      acc69(60)=abb69(69)
      acc69(61)=abb69(70)
      acc69(62)=abb69(71)
      acc69(63)=abb69(72)
      acc69(64)=abb69(74)
      acc69(65)=abb69(78)
      acc69(66)=abb69(82)
      acc69(67)=Qspval5k2*acc69(44)
      acc69(68)=Qspval6k2*acc69(46)
      acc69(69)=Qspl6+Qspl5
      acc69(70)=acc69(41)*acc69(69)
      acc69(71)=Qspvak1k2*acc69(4)
      acc69(72)=Qspvak1k2*acc69(50)
      acc69(72)=acc69(19)+acc69(72)
      acc69(72)=Qspvak2l5*acc69(72)
      acc69(73)=Qspvak1k2*acc69(13)
      acc69(73)=acc69(5)+acc69(73)
      acc69(73)=Qspvak2l6*acc69(73)
      acc69(67)=acc69(73)+acc69(72)+acc69(71)+acc69(70)+acc69(68)+acc69(3)+acc6&
      &9(67)
      acc69(67)=Qspvak4k3*acc69(67)
      acc69(68)=Qspk4+Qspk3
      acc69(70)=acc69(68)-Qspk2
      acc69(71)=-acc69(65)*acc69(70)
      acc69(72)=Qspvak4k2*acc69(38)
      acc69(73)=Qspvak2l5*acc69(8)
      acc69(74)=Qspvak2l6*acc69(20)
      acc69(75)=Qspvak4k3*acc69(40)
      acc69(76)=QspQ*acc69(35)
      acc69(71)=acc69(76)+acc69(75)+acc69(74)+acc69(73)+acc69(72)+acc69(42)+acc&
      &69(71)
      acc69(71)=Qspk2*acc69(71)
      acc69(72)=-acc69(9)*acc69(68)
      acc69(73)=Qspvak1k3*acc69(51)
      acc69(74)=Qspvak1k2*acc69(43)
      acc69(75)=Qspvak4k2*acc69(30)
      acc69(72)=acc69(75)+acc69(74)+acc69(1)+acc69(73)+acc69(72)
      acc69(72)=Qspvak2l5*acc69(72)
      acc69(73)=-acc69(6)*acc69(68)
      acc69(74)=Qspvak1k3*acc69(45)
      acc69(75)=Qspvak1k2*acc69(7)
      acc69(76)=Qspvak4k2*acc69(29)
      acc69(73)=acc69(76)+acc69(75)+acc69(2)+acc69(74)+acc69(73)
      acc69(73)=Qspvak2l6*acc69(73)
      acc69(74)=Qspvak4k2*acc69(36)
      acc69(75)=Qspvak2l5*acc69(12)
      acc69(76)=Qspvak2l6*acc69(49)
      acc69(77)=Qspvak4k3*acc69(33)
      acc69(74)=acc69(77)+acc69(76)+acc69(75)+acc69(10)+acc69(74)
      acc69(74)=QspQ*acc69(74)
      acc69(75)=-acc69(57)*acc69(68)
      acc69(76)=Qspval5k2*acc69(48)
      acc69(77)=Qspval6k2*acc69(66)
      acc69(69)=acc69(53)*acc69(69)
      acc69(78)=Qspvak1k3*acc69(39)
      acc69(79)=Qspvak1k2*acc69(34)
      acc69(80)=Qspvak4k2*acc69(11)
      acc69(67)=acc69(71)+acc69(74)+acc69(67)+acc69(73)+acc69(72)+acc69(80)+acc&
      &69(79)+acc69(78)+acc69(69)+acc69(77)+acc69(27)+acc69(76)+acc69(75)
      acc69(67)=Qspvak7k2*acc69(67)
      acc69(69)=acc69(31)*acc69(68)
      acc69(71)=-Qspk7*acc69(21)
      acc69(72)=Qspvak4k2*acc69(22)
      acc69(73)=Qspvak4k2*acc69(28)
      acc69(73)=acc69(15)+acc69(73)
      acc69(73)=Qspvak2l5*acc69(73)
      acc69(74)=Qspvak4k2*acc69(60)
      acc69(74)=acc69(47)+acc69(74)
      acc69(74)=Qspvak2l6*acc69(74)
      acc69(75)=Qspvak4k3*acc69(14)
      acc69(76)=QspQ*acc69(32)
      acc69(69)=acc69(76)+acc69(75)+acc69(74)+acc69(73)+acc69(72)+acc69(71)+acc&
      &69(16)+acc69(69)
      acc69(69)=QspQ*acc69(69)
      acc69(70)=-QspQ-acc69(70)
      acc69(70)=acc69(21)*acc69(70)
      acc69(71)=Qspk7*acc69(62)
      acc69(72)=Qspvak4k2*acc69(25)
      acc69(73)=Qspvak4k2*acc69(24)
      acc69(73)=acc69(61)+acc69(73)
      acc69(73)=Qspvak2l5*acc69(73)
      acc69(74)=Qspvak4k2*acc69(59)
      acc69(74)=acc69(64)+acc69(74)
      acc69(74)=Qspvak2l6*acc69(74)
      acc69(75)=Qspvak4k3*acc69(54)
      acc69(70)=acc69(75)+acc69(74)+acc69(73)+acc69(72)+acc69(71)+acc69(18)+acc&
      &69(70)
      acc69(70)=Qspk2*acc69(70)
      acc69(71)=acc69(55)*acc69(68)
      acc69(68)=-acc69(62)*acc69(68)
      acc69(68)=acc69(17)+acc69(68)
      acc69(68)=Qspk7*acc69(68)
      acc69(72)=Qspk7*acc69(63)
      acc69(72)=acc69(23)+acc69(72)
      acc69(72)=Qspvak2l5*acc69(72)
      acc69(73)=Qspk7*acc69(58)
      acc69(73)=acc69(56)+acc69(73)
      acc69(73)=Qspvak2l6*acc69(73)
      acc69(74)=Qspk7*acc69(37)
      acc69(74)=acc69(52)+acc69(74)
      acc69(74)=Qspvak4k3*acc69(74)
      brack=acc69(26)+acc69(67)+acc69(68)+acc69(69)+acc69(70)+acc69(71)+acc69(7&
      &2)+acc69(73)+acc69(74)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd69h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d69
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d69 = 0.0_ki
      d69 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d69, ki), aimag(d69), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d69h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd69h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d69
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d69 = 0.0_ki
      d69 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d69, ki), aimag(d69), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d69h7l1
