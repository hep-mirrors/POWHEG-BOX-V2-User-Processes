module     p0_dbaru_epnebbbarg_d229h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d229h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd229h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc229(96)
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1l5
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      acc229(1)=abb229(15)
      acc229(2)=abb229(16)
      acc229(3)=abb229(17)
      acc229(4)=abb229(18)
      acc229(5)=abb229(19)
      acc229(6)=abb229(20)
      acc229(7)=abb229(21)
      acc229(8)=abb229(22)
      acc229(9)=abb229(23)
      acc229(10)=abb229(24)
      acc229(11)=abb229(25)
      acc229(12)=abb229(26)
      acc229(13)=abb229(27)
      acc229(14)=abb229(28)
      acc229(15)=abb229(29)
      acc229(16)=abb229(30)
      acc229(17)=abb229(31)
      acc229(18)=abb229(32)
      acc229(19)=abb229(33)
      acc229(20)=abb229(34)
      acc229(21)=abb229(35)
      acc229(22)=abb229(36)
      acc229(23)=abb229(37)
      acc229(24)=abb229(38)
      acc229(25)=abb229(39)
      acc229(26)=abb229(40)
      acc229(27)=abb229(41)
      acc229(28)=abb229(42)
      acc229(29)=abb229(43)
      acc229(30)=abb229(44)
      acc229(31)=abb229(45)
      acc229(32)=abb229(46)
      acc229(33)=abb229(47)
      acc229(34)=abb229(48)
      acc229(35)=abb229(49)
      acc229(36)=abb229(50)
      acc229(37)=abb229(51)
      acc229(38)=abb229(52)
      acc229(39)=abb229(53)
      acc229(40)=abb229(54)
      acc229(41)=abb229(55)
      acc229(42)=abb229(56)
      acc229(43)=abb229(57)
      acc229(44)=abb229(58)
      acc229(45)=abb229(59)
      acc229(46)=abb229(60)
      acc229(47)=abb229(61)
      acc229(48)=abb229(62)
      acc229(49)=abb229(63)
      acc229(50)=abb229(64)
      acc229(51)=abb229(65)
      acc229(52)=abb229(70)
      acc229(53)=abb229(71)
      acc229(54)=abb229(73)
      acc229(55)=abb229(77)
      acc229(56)=abb229(83)
      acc229(57)=abb229(84)
      acc229(58)=abb229(86)
      acc229(59)=abb229(88)
      acc229(60)=abb229(89)
      acc229(61)=abb229(95)
      acc229(62)=abb229(99)
      acc229(63)=abb229(105)
      acc229(64)=abb229(109)
      acc229(65)=abb229(148)
      acc229(66)=abb229(154)
      acc229(67)=abb229(157)
      acc229(68)=abb229(171)
      acc229(69)=abb229(184)
      acc229(70)=abb229(189)
      acc229(71)=abb229(245)
      acc229(72)=abb229(364)
      acc229(73)=abb229(411)
      acc229(74)=abb229(463)
      acc229(75)=abb229(608)
      acc229(76)=abb229(621)
      acc229(77)=Qspl5*acc229(75)
      acc229(78)=Qspl6*acc229(74)
      acc229(79)=Qspk7*acc229(76)
      acc229(80)=Qspvak2l5*acc229(17)
      acc229(81)=Qspvak2l6*acc229(16)
      acc229(82)=Qspval5l6*acc229(66)
      acc229(83)=Qspval6l5*acc229(68)
      acc229(84)=Qspvak7k2*acc229(71)
      acc229(85)=Qspvak7l5*acc229(65)
      acc229(86)=Qspvak7l6*acc229(59)
      acc229(77)=-acc229(82)-acc229(81)-acc229(80)+acc229(79)+acc229(77)+acc229&
      &(78)-acc229(83)+acc229(84)+acc229(85)-acc229(86)
      acc229(78)=acc229(77)-acc229(73)
      acc229(79)=Qspk4+Qspk3
      acc229(78)=-acc229(78)*acc229(79)
      acc229(80)=Qspl5*acc229(26)
      acc229(81)=Qspl6*acc229(2)
      acc229(82)=Qspk7*acc229(21)
      acc229(83)=Qspvak2l5*acc229(47)
      acc229(84)=Qspvak2l6*acc229(32)
      acc229(85)=Qspval5l6*acc229(43)
      acc229(86)=Qspval6l5*acc229(25)
      acc229(87)=Qspvak7k2*acc229(41)
      acc229(88)=Qspvak7l5*acc229(39)
      acc229(89)=Qspvak7l6*acc229(38)
      acc229(80)=acc229(89)+acc229(88)+acc229(87)+acc229(86)+acc229(85)+acc229(&
      &84)+acc229(83)+acc229(82)+acc229(81)+acc229(11)+acc229(80)
      acc229(80)=Qspvak1k2*acc229(80)
      acc229(81)=Qspl5*acc229(50)
      acc229(82)=Qspl6*acc229(49)
      acc229(83)=Qspk7*acc229(46)
      acc229(84)=Qspvak2l5*acc229(44)
      acc229(85)=Qspvak2l6*acc229(48)
      acc229(86)=Qspval5l6*acc229(31)
      acc229(87)=Qspval6l5*acc229(57)
      acc229(88)=Qspvak7k2*acc229(56)
      acc229(89)=Qspvak7l5*acc229(54)
      acc229(90)=Qspvak7l6*acc229(55)
      acc229(81)=acc229(90)+acc229(89)+acc229(88)+acc229(87)+acc229(86)+acc229(&
      &85)+acc229(84)+acc229(83)+acc229(82)+acc229(36)+acc229(81)
      acc229(81)=Qspvak1k3*acc229(81)
      acc229(82)=Qspl5*acc229(24)
      acc229(83)=Qspl6*acc229(15)
      acc229(84)=Qspk7*acc229(9)
      acc229(85)=Qspvak2l5*acc229(35)
      acc229(86)=Qspvak2l6*acc229(37)
      acc229(87)=Qspval5l6*acc229(30)
      acc229(88)=Qspval6l5*acc229(28)
      acc229(89)=Qspvak7k2*acc229(3)
      acc229(90)=Qspvak7l5*acc229(27)
      acc229(91)=Qspvak7l6*acc229(8)
      acc229(82)=acc229(91)+acc229(90)+acc229(89)+acc229(88)+acc229(87)+acc229(&
      &86)+acc229(85)+acc229(84)+acc229(83)+acc229(5)+acc229(82)
      acc229(82)=Qspvak4k2*acc229(82)
      acc229(83)=Qspl5*acc229(53)
      acc229(84)=Qspl6*acc229(45)
      acc229(85)=Qspk7*acc229(23)
      acc229(86)=Qspvak2l5*acc229(20)
      acc229(87)=Qspvak2l6*acc229(34)
      acc229(88)=Qspval5l6*acc229(67)
      acc229(89)=Qspval6l5*acc229(61)
      acc229(90)=Qspvak7k2*acc229(60)
      acc229(91)=Qspvak7l5*acc229(62)
      acc229(92)=Qspvak7l6*acc229(58)
      acc229(83)=acc229(92)+acc229(91)+acc229(90)+acc229(89)+acc229(88)+acc229(&
      &87)+acc229(86)+acc229(85)+acc229(84)+acc229(1)+acc229(83)
      acc229(83)=Qspvak4k3*acc229(83)
      acc229(79)=Qspk2-acc229(79)
      acc229(79)=acc229(29)*acc229(79)
      acc229(84)=Qspvak1k2*acc229(19)
      acc229(85)=Qspvak1k3*acc229(51)
      acc229(86)=Qspvak4k2*acc229(18)
      acc229(87)=Qspvak4k3*acc229(52)
      acc229(77)=acc229(87)+acc229(86)+acc229(85)+acc229(84)+acc229(12)+acc229(&
      &79)+acc229(77)
      acc229(77)=Qspk2*acc229(77)
      acc229(79)=-Qspl6-Qspl5
      acc229(79)=acc229(64)*acc229(79)
      acc229(84)=acc229(40)*Qspvak1k7
      acc229(85)=acc229(33)*Qspvak1l6
      acc229(86)=acc229(22)*Qspk1
      acc229(87)=acc229(13)*QspQ
      acc229(88)=acc229(4)*Qspvak1l5
      acc229(89)=Qspk7*acc229(72)
      acc229(90)=Qspvak2l5*acc229(10)
      acc229(91)=Qspvak2l6*acc229(7)
      acc229(92)=Qspval5l6*acc229(14)
      acc229(93)=Qspval6l5*acc229(69)
      acc229(94)=Qspvak7k2*acc229(70)
      acc229(95)=Qspvak7l5*acc229(63)
      acc229(96)=Qspvak7l6*acc229(42)
      brack=acc229(6)+acc229(77)+acc229(78)+acc229(79)+acc229(80)+acc229(81)+ac&
      &c229(82)+acc229(83)+acc229(84)+acc229(85)+acc229(86)+acc229(87)+acc229(8&
      &8)+acc229(89)+acc229(90)+acc229(91)+acc229(92)+acc229(93)+acc229(94)+acc&
      &229(95)+acc229(96)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd229h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d229
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d229 = 0.0_ki
      d229 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d229, ki), aimag(d229), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d229h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd229h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d229
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d229 = 0.0_ki
      d229 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d229, ki), aimag(d229), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d229h7l1
