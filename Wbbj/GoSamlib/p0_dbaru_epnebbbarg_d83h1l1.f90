module     p0_dbaru_epnebbbarg_d83h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d83h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd83h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc83(98)
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      acc83(1)=abb83(8)
      acc83(2)=abb83(9)
      acc83(3)=abb83(10)
      acc83(4)=abb83(11)
      acc83(5)=abb83(12)
      acc83(6)=abb83(13)
      acc83(7)=abb83(14)
      acc83(8)=abb83(15)
      acc83(9)=abb83(16)
      acc83(10)=abb83(17)
      acc83(11)=abb83(18)
      acc83(12)=abb83(19)
      acc83(13)=abb83(20)
      acc83(14)=abb83(21)
      acc83(15)=abb83(22)
      acc83(16)=abb83(23)
      acc83(17)=abb83(24)
      acc83(18)=abb83(25)
      acc83(19)=abb83(26)
      acc83(20)=abb83(27)
      acc83(21)=abb83(28)
      acc83(22)=abb83(29)
      acc83(23)=abb83(30)
      acc83(24)=abb83(31)
      acc83(25)=abb83(32)
      acc83(26)=abb83(33)
      acc83(27)=abb83(34)
      acc83(28)=abb83(35)
      acc83(29)=abb83(36)
      acc83(30)=abb83(37)
      acc83(31)=abb83(38)
      acc83(32)=abb83(39)
      acc83(33)=abb83(40)
      acc83(34)=abb83(41)
      acc83(35)=abb83(42)
      acc83(36)=abb83(43)
      acc83(37)=abb83(44)
      acc83(38)=abb83(45)
      acc83(39)=abb83(46)
      acc83(40)=abb83(47)
      acc83(41)=abb83(48)
      acc83(42)=abb83(49)
      acc83(43)=abb83(50)
      acc83(44)=abb83(51)
      acc83(45)=abb83(52)
      acc83(46)=abb83(53)
      acc83(47)=abb83(54)
      acc83(48)=abb83(55)
      acc83(49)=abb83(56)
      acc83(50)=abb83(57)
      acc83(51)=abb83(58)
      acc83(52)=abb83(59)
      acc83(53)=abb83(60)
      acc83(54)=abb83(61)
      acc83(55)=abb83(62)
      acc83(56)=abb83(63)
      acc83(57)=abb83(64)
      acc83(58)=abb83(65)
      acc83(59)=abb83(66)
      acc83(60)=abb83(67)
      acc83(61)=abb83(69)
      acc83(62)=abb83(73)
      acc83(63)=abb83(74)
      acc83(64)=abb83(75)
      acc83(65)=abb83(78)
      acc83(66)=abb83(79)
      acc83(67)=abb83(80)
      acc83(68)=abb83(81)
      acc83(69)=abb83(82)
      acc83(70)=abb83(85)
      acc83(71)=abb83(86)
      acc83(72)=abb83(87)
      acc83(73)=abb83(89)
      acc83(74)=abb83(90)
      acc83(75)=abb83(91)
      acc83(76)=abb83(92)
      acc83(77)=abb83(93)
      acc83(78)=abb83(94)
      acc83(79)=abb83(95)
      acc83(80)=abb83(96)
      acc83(81)=abb83(97)
      acc83(82)=abb83(98)
      acc83(83)=abb83(99)
      acc83(84)=abb83(100)
      acc83(85)=Qspval6l5*acc83(62)
      acc83(85)=acc83(85)+acc83(1)
      acc83(85)=Qspvak1k2*acc83(85)
      acc83(86)=acc83(28)*Qspvak3k2
      acc83(87)=Qspval6k2*acc83(21)
      acc83(88)=Qspk1*acc83(77)
      acc83(89)=Qspvak1l5*acc83(67)
      acc83(90)=Qspvak7k2*acc83(64)
      acc83(91)=Qspvak4k2*acc83(48)
      acc83(85)=acc83(91)+acc83(90)+acc83(89)+acc83(88)+acc83(86)+acc83(87)+acc&
      &83(85)
      acc83(85)=Qspvak4k3*acc83(85)
      acc83(86)=Qspk4+Qspk3
      acc83(87)=Qspk7+acc83(86)
      acc83(88)=acc83(33)*acc83(87)
      acc83(89)=Qspvak1k7*acc83(73)
      acc83(90)=Qspvak1k3*acc83(42)
      acc83(91)=-Qspvak7k2*acc83(51)
      acc83(92)=Qspvak4k2*acc83(6)
      acc83(93)=Qspvak1k2*acc83(2)
      acc83(93)=acc83(5)+acc83(93)
      acc83(93)=Qspvak4k3*acc83(93)
      acc83(94)=QspQ*acc83(75)
      acc83(88)=acc83(94)+acc83(93)+acc83(92)+acc83(91)+acc83(89)+acc83(90)+acc&
      &83(88)
      acc83(88)=Qspk2*acc83(88)
      acc83(89)=Qspval6k2*acc83(72)
      acc83(90)=Qspvak1l5*acc83(81)
      acc83(91)=-Qspvak1k2*acc83(29)
      acc83(92)=-Qspvak4k2*acc83(26)
      acc83(90)=acc83(92)+acc83(91)-acc83(89)+acc83(90)
      acc83(90)=Qspk7*acc83(90)
      acc83(91)=Qspvak1k7*acc83(76)
      acc83(92)=Qspvak1k3*acc83(16)
      acc83(93)=Qspvak7k2*acc83(59)
      acc83(94)=Qspvak4k2*acc83(37)
      acc83(91)=acc83(94)+acc83(93)+acc83(91)+acc83(92)
      acc83(91)=Qspval6l5*acc83(91)
      acc83(92)=Qspval6k2*acc83(34)
      acc83(93)=Qspvak1l5*acc83(80)
      acc83(94)=Qspvak1k2*acc83(45)
      acc83(95)=Qspvak4k2*acc83(28)
      acc83(92)=acc83(95)+acc83(94)+acc83(92)+acc83(93)
      acc83(92)=QspQ*acc83(92)
      acc83(89)=-acc83(89)*acc83(86)
      acc83(93)=Qspvak3k2*acc83(31)
      acc83(94)=Qspk1*acc83(30)
      acc83(95)=acc83(81)*acc83(86)
      acc83(95)=acc83(78)+acc83(95)
      acc83(95)=Qspvak1l5*acc83(95)
      acc83(96)=Qspvak7k2*acc83(20)
      acc83(97)=-acc83(29)*acc83(86)
      acc83(97)=acc83(25)+acc83(97)
      acc83(97)=Qspvak1k2*acc83(97)
      acc83(98)=-acc83(26)*acc83(86)
      acc83(98)=acc83(23)+acc83(98)
      acc83(98)=Qspvak4k2*acc83(98)
      acc83(85)=acc83(88)+acc83(92)+acc83(85)+acc83(91)+acc83(90)+acc83(98)+acc&
      &83(97)+acc83(96)+acc83(95)+acc83(93)+acc83(94)+acc83(89)
      acc83(85)=Qspvak2k7*acc83(85)
      acc83(88)=Qspvak1k3*acc83(84)
      acc83(89)=Qspvak4k2*acc83(60)
      acc83(88)=acc83(89)+acc83(7)+acc83(88)
      acc83(88)=Qspval6l5*acc83(88)
      acc83(87)=-acc83(50)*acc83(87)
      acc83(89)=Qspk1*acc83(12)
      acc83(90)=Qspvak1l5*acc83(47)
      acc83(91)=Qspvak7k2*acc83(32)
      acc83(92)=Qspvak1k2*acc83(11)
      acc83(93)=Qspvak4k2*acc83(13)
      acc83(94)=Qspval6l5*acc83(63)
      acc83(94)=acc83(68)+acc83(94)
      acc83(94)=Qspvak4k3*acc83(94)
      acc83(95)=QspQ*acc83(49)
      acc83(87)=acc83(95)+acc83(94)+acc83(88)+acc83(93)+acc83(92)+acc83(91)+acc&
      &83(90)+acc83(10)+acc83(89)+acc83(87)
      acc83(87)=QspQ*acc83(87)
      acc83(88)=Qspvak1k3*acc83(83)
      acc83(89)=Qspvak4k2*acc83(52)
      acc83(90)=Qspval6l5*acc83(59)
      acc83(91)=Qspvak4k3*acc83(69)
      acc83(88)=acc83(91)+acc83(90)+acc83(89)+acc83(8)+acc83(88)
      acc83(88)=QspQ*acc83(88)
      acc83(89)=Qspvak1k3*acc83(82)
      acc83(90)=Qspvak4k2*acc83(55)
      acc83(89)=acc83(90)+acc83(36)+acc83(89)
      acc83(89)=Qspk7*acc83(89)
      acc83(90)=Qspk7*acc83(41)
      acc83(91)=-QspQ*acc83(51)
      acc83(90)=acc83(91)+acc83(40)+acc83(90)
      acc83(90)=Qspk2*acc83(90)
      acc83(91)=acc83(27)*acc83(86)
      acc83(92)=Qspvak1k7*acc83(58)
      acc83(93)=Qspvak1k3*acc83(35)
      acc83(94)=Qspvak7k2*acc83(39)
      acc83(95)=Qspk7*acc83(56)
      acc83(95)=acc83(54)+acc83(95)
      acc83(95)=Qspval6l5*acc83(95)
      acc83(96)=Qspvak1k7*acc83(71)
      acc83(96)=acc83(61)+acc83(96)
      acc83(96)=Qspvak4k3*acc83(96)
      acc83(88)=acc83(90)+acc83(88)+acc83(96)+acc83(95)+acc83(89)+acc83(94)+acc&
      &83(93)+acc83(15)+acc83(92)+acc83(91)
      acc83(88)=Qspk2*acc83(88)
      acc83(89)=Qspk1*acc83(46)
      acc83(90)=Qspvak1l5*acc83(79)
      acc83(91)=-Qspvak7k2*acc83(53)
      acc83(92)=Qspvak1k2*acc83(17)
      acc83(93)=Qspvak4k2*acc83(22)
      acc83(89)=acc83(93)+acc83(92)+acc83(91)+acc83(89)+acc83(90)
      acc83(89)=Qspk7*acc83(89)
      acc83(90)=Qspk1*acc83(65)
      acc83(91)=Qspvak1l5*acc83(66)
      acc83(92)=Qspvak7k2*acc83(14)
      acc83(93)=Qspvak1k2*acc83(43)
      acc83(94)=Qspval6l5*Qspvak1k7*acc83(74)
      acc83(90)=acc83(94)+acc83(93)+acc83(92)+acc83(90)+acc83(91)
      acc83(90)=Qspvak4k3*acc83(90)
      acc83(91)=Qspvak1k3*acc83(44)
      acc83(92)=Qspvak4k2*acc83(70)
      acc83(91)=acc83(91)+acc83(92)
      acc83(91)=Qspk7*acc83(91)
      acc83(92)=Qspvak1k7*acc83(57)
      acc83(93)=Qspvak1k3*acc83(18)
      acc83(94)=Qspvak7k2*acc83(38)
      acc83(91)=acc83(91)+acc83(94)+acc83(92)+acc83(93)
      acc83(91)=Qspval6l5*acc83(91)
      acc83(92)=Qspk1*acc83(9)
      acc83(93)=-Qspvak1l5*acc83(24)*acc83(86)
      acc83(94)=-acc83(53)*acc83(86)
      acc83(94)=acc83(4)+acc83(94)
      acc83(94)=Qspvak7k2*acc83(94)
      acc83(86)=-acc83(19)*acc83(86)
      acc83(86)=acc83(3)+acc83(86)
      acc83(86)=Qspvak1k2*acc83(86)
      brack=acc83(85)+acc83(86)+acc83(87)+acc83(88)+acc83(89)+acc83(90)+acc83(9&
      &1)+acc83(92)+acc83(93)+acc83(94)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd83h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d83
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d83 = 0.0_ki
      d83 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d83, ki), aimag(d83), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d83h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd83h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d83
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d83 = 0.0_ki
      d83 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d83, ki), aimag(d83), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d83h1l1
