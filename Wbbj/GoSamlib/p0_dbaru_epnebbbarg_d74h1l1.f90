module     p0_dbaru_epnebbbarg_d74h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d74h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd74h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc74(108)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      QspQ = dotproduct(Q,Q)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      acc74(1)=abb74(10)
      acc74(2)=abb74(11)
      acc74(3)=abb74(12)
      acc74(4)=abb74(13)
      acc74(5)=abb74(14)
      acc74(6)=abb74(15)
      acc74(7)=abb74(16)
      acc74(8)=abb74(17)
      acc74(9)=abb74(18)
      acc74(10)=abb74(19)
      acc74(11)=abb74(20)
      acc74(12)=abb74(21)
      acc74(13)=abb74(22)
      acc74(14)=abb74(23)
      acc74(15)=abb74(24)
      acc74(16)=abb74(25)
      acc74(17)=abb74(26)
      acc74(18)=abb74(27)
      acc74(19)=abb74(28)
      acc74(20)=abb74(29)
      acc74(21)=abb74(30)
      acc74(22)=abb74(31)
      acc74(23)=abb74(32)
      acc74(24)=abb74(33)
      acc74(25)=abb74(34)
      acc74(26)=abb74(35)
      acc74(27)=abb74(36)
      acc74(28)=abb74(37)
      acc74(29)=abb74(38)
      acc74(30)=abb74(39)
      acc74(31)=abb74(40)
      acc74(32)=abb74(41)
      acc74(33)=abb74(44)
      acc74(34)=abb74(45)
      acc74(35)=abb74(46)
      acc74(36)=abb74(47)
      acc74(37)=abb74(49)
      acc74(38)=abb74(50)
      acc74(39)=abb74(51)
      acc74(40)=abb74(52)
      acc74(41)=abb74(53)
      acc74(42)=abb74(54)
      acc74(43)=abb74(55)
      acc74(44)=abb74(57)
      acc74(45)=abb74(58)
      acc74(46)=abb74(59)
      acc74(47)=abb74(60)
      acc74(48)=abb74(61)
      acc74(49)=abb74(62)
      acc74(50)=abb74(63)
      acc74(51)=abb74(64)
      acc74(52)=abb74(65)
      acc74(53)=abb74(66)
      acc74(54)=abb74(70)
      acc74(55)=abb74(72)
      acc74(56)=abb74(73)
      acc74(57)=abb74(75)
      acc74(58)=abb74(79)
      acc74(59)=abb74(80)
      acc74(60)=abb74(83)
      acc74(61)=abb74(85)
      acc74(62)=abb74(87)
      acc74(63)=abb74(88)
      acc74(64)=abb74(89)
      acc74(65)=abb74(90)
      acc74(66)=abb74(91)
      acc74(67)=abb74(95)
      acc74(68)=abb74(97)
      acc74(69)=abb74(99)
      acc74(70)=abb74(102)
      acc74(71)=abb74(104)
      acc74(72)=abb74(105)
      acc74(73)=abb74(106)
      acc74(74)=abb74(107)
      acc74(75)=abb74(108)
      acc74(76)=abb74(109)
      acc74(77)=abb74(110)
      acc74(78)=abb74(112)
      acc74(79)=abb74(116)
      acc74(80)=abb74(122)
      acc74(81)=abb74(124)
      acc74(82)=abb74(125)
      acc74(83)=abb74(129)
      acc74(84)=abb74(130)
      acc74(85)=abb74(133)
      acc74(86)=abb74(134)
      acc74(87)=Qspk7+Qspl6
      acc74(88)=acc74(20)*acc74(87)
      acc74(89)=Qspval6k2*acc74(42)
      acc74(90)=Qspvak1k2*acc74(21)
      acc74(91)=Qspvak1k7*acc74(23)
      acc74(92)=Qspval6k7*acc74(19)
      acc74(88)=acc74(92)+acc74(91)+acc74(90)+acc74(13)+acc74(89)+acc74(88)
      acc74(88)=Qspk2*acc74(88)
      acc74(89)=Qspvak7k2*acc74(8)
      acc74(90)=Qspval6k2*acc74(18)
      acc74(91)=Qspvak1k2*acc74(27)
      acc74(92)=Qspvak1k7*acc74(75)
      acc74(89)=acc74(92)+acc74(91)+acc74(90)+acc74(3)+acc74(89)
      acc74(89)=Qspvak2k7*acc74(89)
      acc74(90)=Qspvak1l6*acc74(49)
      acc74(91)=Qspvak1k2*acc74(1)
      acc74(92)=Qspvak1k7*acc74(36)
      acc74(90)=acc74(92)+acc74(91)+acc74(11)+acc74(90)
      acc74(90)=Qspval6k7*acc74(90)
      acc74(91)=Qspvak1k2*acc74(15)
      acc74(92)=Qspvak1k7*acc74(70)
      acc74(91)=acc74(7)+acc74(91)+acc74(92)
      acc74(91)=acc74(91)*acc74(87)
      acc74(92)=Qspvak2l5*acc74(26)
      acc74(93)=Qspval5k2*acc74(59)
      acc74(94)=Qspval5l6*acc74(58)
      acc74(95)=Qspval5k7*acc74(51)
      acc74(96)=Qspval6l5*acc74(41)
      acc74(97)=-acc74(69)*Qspvak3k2
      acc74(98)=Qspvak1l6*acc74(56)
      acc74(99)=Qspvak4k2*acc74(74)
      acc74(100)=Qspval6k2*acc74(22)
      acc74(101)=QspQ*acc74(25)
      acc74(102)=Qspvak1k2*acc74(2)
      acc74(103)=Qspvak1k7*acc74(48)
      acc74(88)=acc74(88)+acc74(89)+acc74(90)+acc74(103)+acc74(102)+acc74(101)+&
      &acc74(100)+acc74(99)+acc74(98)+acc74(97)+acc74(96)+acc74(95)+acc74(94)+a&
      &cc74(93)+acc74(6)+acc74(92)+acc74(91)
      acc74(88)=Qspvak4k3*acc74(88)
      acc74(89)=-Qspk1+Qspk4+Qspk3
      acc74(90)=acc74(61)*acc74(89)
      acc74(91)=acc74(78)*Qspvak7k1
      acc74(92)=acc74(71)*Qspvak7k3
      acc74(93)=Qspvak7k2*acc74(77)
      acc74(94)=Qspval6k1*acc74(17)
      acc74(95)=Qspval6k3*acc74(40)
      acc74(96)=Qspval6k2*acc74(62)
      acc74(97)=QspQ*acc74(50)
      acc74(98)=Qspvak1k2*acc74(5)
      acc74(99)=Qspvak1k7*acc74(67)
      acc74(90)=acc74(99)+acc74(98)+acc74(97)+acc74(96)+acc74(95)+acc74(94)+acc&
      &74(93)+acc74(16)+acc74(91)+acc74(92)+acc74(90)
      acc74(90)=Qspvak2k7*acc74(90)
      acc74(91)=-acc74(33)*acc74(87)
      acc74(92)=acc74(82)*acc74(89)
      acc74(93)=Qspval6k1*acc74(43)
      acc74(94)=Qspval6k3*acc74(55)
      acc74(95)=Qspval6k2*acc74(86)
      acc74(96)=QspQ*acc74(60)
      acc74(97)=Qspvak1k2*acc74(53)
      acc74(98)=Qspvak1k7*acc74(64)
      acc74(99)=Qspval6k7*acc74(80)
      acc74(91)=acc74(99)+acc74(98)+acc74(97)+acc74(96)+acc74(95)+acc74(94)+acc&
      &74(32)+acc74(93)+acc74(92)+acc74(91)
      acc74(91)=Qspk2*acc74(91)
      acc74(92)=acc74(76)*acc74(89)
      acc74(93)=Qspvak1l6*acc74(44)
      acc74(94)=Qspvak2k1*acc74(47)
      acc74(95)=Qspvak2k3*acc74(14)
      acc74(96)=QspQ*acc74(72)
      acc74(97)=Qspvak1k2*acc74(4)
      acc74(98)=Qspvak1k7*acc74(65)
      acc74(92)=acc74(98)+acc74(97)+acc74(96)+acc74(95)+acc74(94)+acc74(9)+acc7&
      &4(93)+acc74(92)
      acc74(92)=Qspval6k7*acc74(92)
      acc74(93)=-acc74(79)*acc74(89)
      acc74(94)=Qspvak2k1*acc74(45)
      acc74(95)=Qspvak2k3*acc74(35)
      acc74(96)=QspQ*acc74(57)
      acc74(97)=Qspvak1k2*acc74(52)
      acc74(98)=Qspvak1k7*acc74(63)
      acc74(93)=-acc74(96)-acc74(97)+acc74(98)-acc74(38)+acc74(94)+acc74(95)+ac&
      &c74(93)
      acc74(87)=acc74(93)*acc74(87)
      acc74(93)=Qspvak4k2*acc74(73)
      acc74(93)=acc74(93)+acc74(66)
      acc74(89)=acc74(93)*acc74(89)
      acc74(93)=acc74(30)*Qspvak2l6
      acc74(94)=Qspvak2l5*acc74(31)
      acc74(95)=Qspval5k2*acc74(46)
      acc74(96)=Qspval5l6*acc74(34)
      acc74(97)=Qspval5k7*acc74(84)
      acc74(98)=Qspval6l5*acc74(81)
      acc74(99)=Qspval6k1*acc74(85)
      acc74(100)=Qspval6k3*acc74(83)
      acc74(101)=Qspvak1l6*acc74(29)
      acc74(102)=Qspvak2k1*acc74(39)
      acc74(103)=Qspvak2k3*acc74(28)
      acc74(104)=Qspvak4k2*acc74(68)
      acc74(105)=Qspval6k2*acc74(12)
      acc74(106)=Qspvak4k2*acc74(69)
      acc74(106)=acc74(37)+acc74(106)
      acc74(106)=QspQ*acc74(106)
      acc74(107)=Qspvak1k2*acc74(24)
      acc74(108)=Qspvak1k7*acc74(54)
      brack=acc74(10)+acc74(87)+acc74(88)+acc74(89)+acc74(90)+acc74(91)+acc74(9&
      &2)+acc74(93)+acc74(94)+acc74(95)+acc74(96)+acc74(97)+acc74(98)+acc74(99)&
      &+acc74(100)+acc74(101)+acc74(102)+acc74(103)+acc74(104)+acc74(105)+acc74&
      &(106)+acc74(107)+acc74(108)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd74h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d74
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d74 = 0.0_ki
      d74 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d74, ki), aimag(d74), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d74h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd74h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d74
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d74 = 0.0_ki
      d74 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d74, ki), aimag(d74), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d74h1l1
