module     p0_dbaru_epnebbbarg_d292h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d292h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd292h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc292(104)
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspl5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k2
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspk1 = dotproduct(Q,k1)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspl5 = dotproduct(Q,l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc292(1)=abb292(10)
      acc292(2)=abb292(11)
      acc292(3)=abb292(12)
      acc292(4)=abb292(13)
      acc292(5)=abb292(14)
      acc292(6)=abb292(15)
      acc292(7)=abb292(16)
      acc292(8)=abb292(17)
      acc292(9)=abb292(18)
      acc292(10)=abb292(19)
      acc292(11)=abb292(20)
      acc292(12)=abb292(21)
      acc292(13)=abb292(22)
      acc292(14)=abb292(23)
      acc292(15)=abb292(24)
      acc292(16)=abb292(25)
      acc292(17)=abb292(26)
      acc292(18)=abb292(27)
      acc292(19)=abb292(28)
      acc292(20)=abb292(29)
      acc292(21)=abb292(30)
      acc292(22)=abb292(31)
      acc292(23)=abb292(32)
      acc292(24)=abb292(33)
      acc292(25)=abb292(34)
      acc292(26)=abb292(35)
      acc292(27)=abb292(36)
      acc292(28)=abb292(37)
      acc292(29)=abb292(38)
      acc292(30)=abb292(39)
      acc292(31)=abb292(40)
      acc292(32)=abb292(41)
      acc292(33)=abb292(43)
      acc292(34)=abb292(44)
      acc292(35)=abb292(45)
      acc292(36)=abb292(46)
      acc292(37)=abb292(47)
      acc292(38)=abb292(48)
      acc292(39)=abb292(49)
      acc292(40)=abb292(50)
      acc292(41)=abb292(51)
      acc292(42)=abb292(52)
      acc292(43)=abb292(53)
      acc292(44)=abb292(54)
      acc292(45)=abb292(55)
      acc292(46)=abb292(56)
      acc292(47)=abb292(57)
      acc292(48)=abb292(58)
      acc292(49)=abb292(59)
      acc292(50)=abb292(60)
      acc292(51)=abb292(61)
      acc292(52)=abb292(62)
      acc292(53)=abb292(63)
      acc292(54)=abb292(64)
      acc292(55)=abb292(65)
      acc292(56)=abb292(67)
      acc292(57)=abb292(68)
      acc292(58)=abb292(70)
      acc292(59)=abb292(72)
      acc292(60)=abb292(73)
      acc292(61)=abb292(76)
      acc292(62)=abb292(78)
      acc292(63)=abb292(80)
      acc292(64)=abb292(83)
      acc292(65)=abb292(84)
      acc292(66)=abb292(85)
      acc292(67)=abb292(86)
      acc292(68)=abb292(87)
      acc292(69)=abb292(90)
      acc292(70)=abb292(91)
      acc292(71)=abb292(92)
      acc292(72)=abb292(94)
      acc292(73)=abb292(96)
      acc292(74)=abb292(100)
      acc292(75)=abb292(101)
      acc292(76)=abb292(102)
      acc292(77)=abb292(106)
      acc292(78)=abb292(107)
      acc292(79)=abb292(110)
      acc292(80)=abb292(111)
      acc292(81)=abb292(113)
      acc292(82)=abb292(114)
      acc292(83)=abb292(115)
      acc292(84)=abb292(117)
      acc292(85)=abb292(118)
      acc292(86)=abb292(119)
      acc292(87)=abb292(120)
      acc292(88)=abb292(121)
      acc292(89)=abb292(122)
      acc292(90)=acc292(77)*Qspval5l6
      acc292(91)=acc292(65)*Qspl6
      acc292(92)=Qspvak4l6*acc292(83)
      acc292(93)=Qspk1*acc292(61)
      acc292(94)=Qspvak7l6*acc292(78)
      acc292(95)=Qspvak1l6*acc292(44)
      acc292(96)=Qspvak1k3*acc292(23)
      acc292(97)=Qspvak1l5*acc292(8)
      acc292(98)=Qspvak2l6*acc292(67)
      acc292(99)=Qspvak1l5*acc292(48)
      acc292(99)=acc292(20)+acc292(99)
      acc292(99)=Qspvak4k3*acc292(99)
      acc292(100)=Qspvak1k2*acc292(13)
      acc292(90)=acc292(100)+acc292(99)+acc292(98)+acc292(97)+acc292(96)+acc292&
      &(95)+acc292(94)+acc292(93)+acc292(92)+acc292(59)+acc292(90)+acc292(91)
      acc292(90)=Qspk2*acc292(90)
      acc292(91)=Qspvak2l5*acc292(39)
      acc292(92)=Qspvak2l6*acc292(37)
      acc292(91)=acc292(92)+acc292(17)+acc292(91)
      acc292(91)=Qspvak4k3*acc292(91)
      acc292(92)=Qspvak2k1*acc292(25)
      acc292(93)=Qspvak2l5*acc292(5)
      acc292(94)=Qspvak2l6*acc292(32)
      acc292(95)=Qspvak2k3*acc292(19)
      acc292(91)=acc292(91)+acc292(95)+acc292(94)+acc292(93)+acc292(3)+acc292(9&
      &2)
      acc292(91)=Qspvak1k2*acc292(91)
      acc292(92)=Qspk1*acc292(7)
      acc292(93)=Qspvak1l6*acc292(52)
      acc292(94)=Qspvak1k3*acc292(38)
      acc292(92)=acc292(94)+acc292(93)+acc292(1)+acc292(92)
      acc292(92)=Qspvak2l5*acc292(92)
      acc292(93)=-Qspk1*acc292(73)
      acc292(94)=Qspvak1k3*acc292(12)
      acc292(95)=-Qspvak1l5*acc292(52)
      acc292(93)=acc292(95)+acc292(94)+acc292(87)+acc292(93)
      acc292(93)=Qspvak2l6*acc292(93)
      acc292(94)=Qspl5*acc292(85)
      acc292(95)=Qspvak1l5*acc292(43)
      acc292(96)=Qspvak2l5*acc292(30)
      acc292(94)=acc292(96)+acc292(95)+acc292(9)+acc292(94)
      acc292(94)=Qspvak4k3*acc292(94)
      acc292(95)=-Qspvak1l6*acc292(12)
      acc292(96)=-Qspvak1l5*acc292(38)
      acc292(95)=acc292(96)+acc292(11)+acc292(95)
      acc292(95)=Qspvak2k3*acc292(95)
      acc292(96)=acc292(79)*Qspval6k2
      acc292(97)=Qspl5*acc292(36)
      acc292(98)=Qspvak4k2*acc292(68)
      acc292(99)=Qspval5k2*acc292(6)
      acc292(100)=Qspvak1l6*acc292(46)
      acc292(100)=acc292(26)+acc292(100)
      acc292(100)=Qspvak2k1*acc292(100)
      acc292(101)=Qspk7*acc292(53)
      acc292(102)=Qspvak2k1*acc292(29)
      acc292(102)=acc292(2)+acc292(102)
      acc292(102)=Qspvak1l5*acc292(102)
      acc292(103)=QspQ*acc292(49)
      acc292(104)=Qspvak7k2*acc292(80)
      acc292(90)=acc292(104)+acc292(90)+acc292(103)+acc292(91)+acc292(94)+acc29&
      &2(95)+acc292(93)+acc292(92)+acc292(102)+acc292(101)+acc292(100)+acc292(9&
      &9)+acc292(98)+acc292(97)+acc292(96)+acc292(10)
      acc292(90)=Qspvak7k2*acc292(90)
      acc292(91)=Qspvak4l6*acc292(34)
      acc292(92)=-Qspvak7l6*acc292(73)
      acc292(93)=Qspvak1k3*acc292(54)
      acc292(94)=Qspvak4k3*acc292(84)
      acc292(91)=acc292(94)+acc292(93)+acc292(92)+acc292(40)+acc292(91)
      acc292(91)=QspQ*acc292(91)
      acc292(92)=Qspvak4l6*acc292(22)
      acc292(93)=Qspvak7l6*acc292(71)
      acc292(94)=Qspvak1k3*acc292(56)
      acc292(92)=-acc292(94)+acc292(92)-acc292(93)
      acc292(93)=acc292(66)-acc292(92)
      acc292(93)=Qspk7*acc292(93)
      acc292(94)=Qspvak4k3*acc292(14)
      acc292(92)=acc292(94)+acc292(70)+acc292(92)
      acc292(92)=Qspk2*acc292(92)
      acc292(94)=Qspvak4k2*acc292(76)
      acc292(95)=Qspval5k2*acc292(82)
      acc292(94)=acc292(94)+acc292(95)
      acc292(95)=Qspvak2k3*acc292(51)
      acc292(96)=Qspvak4k3*acc292(18)
      acc292(95)=acc292(96)+acc292(58)+acc292(95)
      acc292(95)=Qspvak1k2*acc292(95)
      acc292(96)=Qspk1*acc292(72)
      acc292(97)=Qspvak7l6*acc292(69)
      acc292(98)=Qspvak1l6*acc292(33)
      acc292(99)=Qspvak2k1*acc292(21)
      acc292(100)=Qspvak1l5*acc292(31)
      acc292(101)=Qspvak2l5*acc292(89)
      acc292(102)=Qspvak2l6*acc292(64)
      acc292(103)=Qspvak2k3*acc292(35)
      acc292(104)=Qspvak4k3*acc292(63)
      acc292(91)=acc292(92)+acc292(91)+acc292(95)+acc292(104)+acc292(103)+acc29&
      &2(102)+acc292(101)+acc292(100)+acc292(93)+acc292(99)+acc292(98)+acc292(9&
      &7)+acc292(96)+acc292(47)-acc292(94)
      acc292(91)=Qspk2*acc292(91)
      acc292(92)=Qspvak2k3*acc292(55)
      acc292(93)=Qspvak4k3*acc292(15)
      acc292(92)=acc292(93)+acc292(16)+acc292(92)
      acc292(92)=Qspvak1k2*acc292(92)
      acc292(93)=Qspvak4k2*acc292(74)
      acc292(95)=Qspk1*acc292(41)
      acc292(96)=Qspval5k2*acc292(75)
      acc292(97)=Qspvak1l6*acc292(27)
      acc292(98)=Qspvak2k1*acc292(24)
      acc292(99)=Qspvak1k3*acc292(57)
      acc292(100)=Qspvak1l5*acc292(4)
      acc292(101)=Qspvak2l5*acc292(88)
      acc292(102)=Qspvak2l6*acc292(86)
      acc292(103)=Qspvak2k3*acc292(42)
      acc292(104)=Qspvak4k3*acc292(50)
      acc292(92)=acc292(92)+acc292(104)+acc292(103)+acc292(102)+acc292(101)+acc&
      &292(100)+acc292(99)+acc292(98)+acc292(97)+acc292(96)+acc292(95)+acc292(2&
      &8)+acc292(93)
      acc292(92)=QspQ*acc292(92)
      acc292(93)=Qspk7*acc292(94)
      acc292(94)=Qspk7*acc292(62)
      acc292(95)=-Qspk7*acc292(51)
      acc292(95)=acc292(45)+acc292(95)
      acc292(95)=Qspvak2k3*acc292(95)
      acc292(94)=acc292(95)+acc292(60)+acc292(94)
      acc292(94)=Qspvak1k2*acc292(94)
      acc292(95)=Qspval5k2*acc292(81)
      brack=acc292(90)+acc292(91)+acc292(92)+acc292(93)+acc292(94)+acc292(95)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd292h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d292
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d292 = 0.0_ki
      d292 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d292, ki), aimag(d292), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d292h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd292h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d292
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d292 = 0.0_ki
      d292 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d292, ki), aimag(d292), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d292h7l1
