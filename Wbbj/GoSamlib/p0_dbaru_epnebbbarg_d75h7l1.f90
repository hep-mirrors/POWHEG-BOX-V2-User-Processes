module     p0_dbaru_epnebbbarg_d75h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d75h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd75h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc75(78)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k2
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      acc75(1)=abb75(10)
      acc75(2)=abb75(11)
      acc75(3)=abb75(12)
      acc75(4)=abb75(13)
      acc75(5)=abb75(14)
      acc75(6)=abb75(15)
      acc75(7)=abb75(16)
      acc75(8)=abb75(17)
      acc75(9)=abb75(18)
      acc75(10)=abb75(19)
      acc75(11)=abb75(20)
      acc75(12)=abb75(21)
      acc75(13)=abb75(22)
      acc75(14)=abb75(23)
      acc75(15)=abb75(24)
      acc75(16)=abb75(25)
      acc75(17)=abb75(26)
      acc75(18)=abb75(27)
      acc75(19)=abb75(28)
      acc75(20)=abb75(29)
      acc75(21)=abb75(30)
      acc75(22)=abb75(31)
      acc75(23)=abb75(32)
      acc75(24)=abb75(35)
      acc75(25)=abb75(36)
      acc75(26)=abb75(38)
      acc75(27)=abb75(39)
      acc75(28)=abb75(43)
      acc75(29)=abb75(45)
      acc75(30)=abb75(46)
      acc75(31)=abb75(47)
      acc75(32)=abb75(49)
      acc75(33)=abb75(50)
      acc75(34)=abb75(52)
      acc75(35)=abb75(53)
      acc75(36)=abb75(55)
      acc75(37)=abb75(57)
      acc75(38)=abb75(59)
      acc75(39)=abb75(62)
      acc75(40)=abb75(63)
      acc75(41)=abb75(67)
      acc75(42)=abb75(68)
      acc75(43)=abb75(70)
      acc75(44)=abb75(72)
      acc75(45)=abb75(76)
      acc75(46)=abb75(77)
      acc75(47)=abb75(80)
      acc75(48)=abb75(82)
      acc75(49)=abb75(83)
      acc75(50)=abb75(86)
      acc75(51)=abb75(88)
      acc75(52)=abb75(89)
      acc75(53)=abb75(91)
      acc75(54)=abb75(92)
      acc75(55)=abb75(95)
      acc75(56)=abb75(97)
      acc75(57)=abb75(98)
      acc75(58)=abb75(99)
      acc75(59)=abb75(101)
      acc75(60)=abb75(103)
      acc75(61)=abb75(105)
      acc75(62)=abb75(109)
      acc75(63)=abb75(111)
      acc75(64)=abb75(112)
      acc75(65)=abb75(129)
      acc75(66)=Qspk7+Qspl6
      acc75(67)=-acc75(24)*acc75(66)
      acc75(68)=Qspvak2k3*acc75(48)
      acc75(69)=QspQ*acc75(53)
      acc75(70)=Qspvak1k3*acc75(36)
      acc75(71)=Qspvak7l6*acc75(30)
      acc75(72)=Qspvak1l5*acc75(31)
      acc75(73)=Qspvak7k2*acc75(44)
      acc75(74)=Qspvak1k2*acc75(11)
      acc75(75)=Qspk2*acc75(52)
      acc75(67)=acc75(75)+acc75(74)+acc75(73)+acc75(72)+acc75(71)+acc75(70)+acc&
      &75(69)+acc75(37)+acc75(68)+acc75(67)
      acc75(67)=Qspk2*acc75(67)
      acc75(68)=-acc75(13)*acc75(66)
      acc75(69)=Qspvak2l6*acc75(16)
      acc75(70)=Qspval6k2*acc75(22)
      acc75(71)=Qspval6l5*acc75(21)
      acc75(72)=Qspvak7l5*acc75(19)
      acc75(73)=Qspvak7l6*acc75(3)
      acc75(74)=Qspvak7k2*acc75(4)
      acc75(68)=acc75(74)+acc75(73)+acc75(72)+acc75(71)+acc75(70)+acc75(8)+acc7&
      &5(69)+acc75(68)
      acc75(68)=Qspvak1k2*acc75(68)
      acc75(69)=acc75(55)*acc75(66)
      acc75(70)=acc75(54)*Qspvak1l6
      acc75(71)=Qspvak7l6*acc75(56)
      acc75(72)=Qspvak1l5*acc75(51)
      acc75(73)=Qspvak7k2*acc75(40)
      acc75(74)=Qspvak1k2*acc75(7)
      acc75(75)=Qspk2*acc75(14)
      acc75(69)=acc75(75)+acc75(74)+acc75(73)+acc75(72)+acc75(71)+acc75(70)+acc&
      &75(2)+acc75(69)
      acc75(69)=Qspk2*acc75(69)
      acc75(70)=acc75(6)*acc75(66)
      acc75(71)=Qspvak2l6*acc75(20)
      acc75(72)=Qspval6l5*acc75(63)
      acc75(73)=Qspvak7l5*acc75(12)
      acc75(74)=Qspvak7l6*acc75(9)
      acc75(75)=Qspvak7k2*acc75(1)
      acc75(70)=acc75(75)+acc75(74)+acc75(73)+acc75(72)+acc75(5)+acc75(71)+acc7&
      &5(70)
      acc75(70)=Qspvak1k2*acc75(70)
      acc75(71)=Qspl5*acc75(35)
      acc75(72)=Qspvak2l5*acc75(42)
      acc75(73)=-Qspval6k2*acc75(63)
      acc75(73)=acc75(32)+acc75(73)
      acc75(73)=Qspvak1l5*acc75(73)
      acc75(74)=Qspvak1l5*acc75(61)
      acc75(74)=acc75(60)+acc75(74)
      acc75(74)=Qspvak7k2*acc75(74)
      acc75(69)=acc75(69)+acc75(70)+acc75(74)+acc75(73)+acc75(72)+acc75(33)+acc&
      &75(71)
      acc75(69)=Qspvak4k3*acc75(69)
      acc75(70)=Qspvak2l6*acc75(62)
      acc75(71)=Qspval6k2*acc75(23)
      acc75(72)=Qspval6l5*acc75(27)
      acc75(73)=Qspvak7l5*acc75(58)
      acc75(74)=QspQ*acc75(25)
      acc75(70)=acc75(74)+acc75(73)+acc75(72)+acc75(71)+acc75(34)+acc75(70)
      acc75(70)=Qspvak1k3*acc75(70)
      acc75(71)=Qspvak2k3*acc75(47)
      acc75(72)=QspQ*acc75(39)
      acc75(73)=Qspvak1k3*acc75(59)
      acc75(74)=Qspvak1l5*acc75(41)
      acc75(71)=acc75(74)+acc75(73)+acc75(72)+acc75(28)+acc75(71)
      acc75(71)=Qspvak7k2*acc75(71)
      acc75(72)=Qspvak2k3*acc75(50)
      acc75(73)=QspQ*acc75(49)
      acc75(72)=acc75(26)+acc75(72)+acc75(73)
      acc75(72)=-acc75(72)*acc75(66)
      acc75(73)=Qspvak2k3*acc75(29)
      acc75(74)=QspQ*acc75(38)
      acc75(73)=acc75(74)+acc75(64)+acc75(73)
      acc75(73)=Qspvak7l6*acc75(73)
      acc75(66)=-acc75(17)*acc75(66)
      acc75(74)=Qspvak7l6*acc75(57)
      acc75(66)=acc75(74)+acc75(15)+acc75(66)
      acc75(66)=Qspvak1l5*acc75(66)
      acc75(74)=acc75(65)*Qspval5k2
      acc75(75)=Qspl5*acc75(43)
      acc75(76)=Qspvak2l5*acc75(10)
      acc75(77)=Qspvak2k3*acc75(45)
      acc75(78)=QspQ*acc75(46)
      brack=acc75(18)+acc75(66)+acc75(67)+acc75(68)+acc75(69)+acc75(70)+acc75(7&
      &1)+acc75(72)+acc75(73)+acc75(74)+acc75(75)+acc75(76)+acc75(77)+acc75(78)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd75h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d75
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d75 = 0.0_ki
      d75 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d75, ki), aimag(d75), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d75h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd75h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d75
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d75 = 0.0_ki
      d75 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d75, ki), aimag(d75), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d75h7l1
