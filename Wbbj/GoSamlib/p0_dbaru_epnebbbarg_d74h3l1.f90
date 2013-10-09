module     p0_dbaru_epnebbbarg_d74h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d74h3l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd74h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc74(152)
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvae7k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      QspQ = dotproduct(Q,Q)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      acc74(1)=abb74(9)
      acc74(2)=abb74(10)
      acc74(3)=abb74(11)
      acc74(4)=abb74(12)
      acc74(5)=abb74(13)
      acc74(6)=abb74(14)
      acc74(7)=abb74(15)
      acc74(8)=abb74(16)
      acc74(9)=abb74(17)
      acc74(10)=abb74(18)
      acc74(11)=abb74(19)
      acc74(12)=abb74(20)
      acc74(13)=abb74(21)
      acc74(14)=abb74(22)
      acc74(15)=abb74(23)
      acc74(16)=abb74(24)
      acc74(17)=abb74(25)
      acc74(18)=abb74(26)
      acc74(19)=abb74(27)
      acc74(20)=abb74(28)
      acc74(21)=abb74(29)
      acc74(22)=abb74(30)
      acc74(23)=abb74(31)
      acc74(24)=abb74(32)
      acc74(25)=abb74(33)
      acc74(26)=abb74(34)
      acc74(27)=abb74(35)
      acc74(28)=abb74(36)
      acc74(29)=abb74(37)
      acc74(30)=abb74(38)
      acc74(31)=abb74(39)
      acc74(32)=abb74(40)
      acc74(33)=abb74(41)
      acc74(34)=abb74(43)
      acc74(35)=abb74(44)
      acc74(36)=abb74(46)
      acc74(37)=abb74(47)
      acc74(38)=abb74(49)
      acc74(39)=abb74(50)
      acc74(40)=abb74(51)
      acc74(41)=abb74(52)
      acc74(42)=abb74(53)
      acc74(43)=abb74(54)
      acc74(44)=abb74(55)
      acc74(45)=abb74(57)
      acc74(46)=abb74(61)
      acc74(47)=abb74(65)
      acc74(48)=abb74(66)
      acc74(49)=abb74(67)
      acc74(50)=abb74(70)
      acc74(51)=abb74(71)
      acc74(52)=abb74(72)
      acc74(53)=abb74(73)
      acc74(54)=abb74(74)
      acc74(55)=abb74(75)
      acc74(56)=abb74(76)
      acc74(57)=abb74(80)
      acc74(58)=abb74(81)
      acc74(59)=abb74(82)
      acc74(60)=abb74(84)
      acc74(61)=abb74(85)
      acc74(62)=abb74(87)
      acc74(63)=abb74(88)
      acc74(64)=abb74(89)
      acc74(65)=abb74(90)
      acc74(66)=abb74(91)
      acc74(67)=abb74(92)
      acc74(68)=abb74(93)
      acc74(69)=abb74(94)
      acc74(70)=abb74(95)
      acc74(71)=abb74(96)
      acc74(72)=abb74(97)
      acc74(73)=abb74(98)
      acc74(74)=abb74(101)
      acc74(75)=abb74(102)
      acc74(76)=abb74(103)
      acc74(77)=abb74(104)
      acc74(78)=abb74(105)
      acc74(79)=abb74(106)
      acc74(80)=abb74(107)
      acc74(81)=abb74(108)
      acc74(82)=abb74(110)
      acc74(83)=abb74(111)
      acc74(84)=abb74(113)
      acc74(85)=abb74(114)
      acc74(86)=abb74(115)
      acc74(87)=abb74(116)
      acc74(88)=abb74(117)
      acc74(89)=abb74(118)
      acc74(90)=abb74(119)
      acc74(91)=abb74(120)
      acc74(92)=abb74(121)
      acc74(93)=abb74(124)
      acc74(94)=abb74(126)
      acc74(95)=abb74(128)
      acc74(96)=abb74(129)
      acc74(97)=abb74(130)
      acc74(98)=abb74(132)
      acc74(99)=abb74(133)
      acc74(100)=abb74(134)
      acc74(101)=abb74(135)
      acc74(102)=abb74(136)
      acc74(103)=abb74(138)
      acc74(104)=abb74(140)
      acc74(105)=abb74(141)
      acc74(106)=abb74(143)
      acc74(107)=abb74(144)
      acc74(108)=abb74(145)
      acc74(109)=abb74(146)
      acc74(110)=abb74(147)
      acc74(111)=abb74(149)
      acc74(112)=abb74(152)
      acc74(113)=abb74(153)
      acc74(114)=abb74(155)
      acc74(115)=abb74(157)
      acc74(116)=abb74(158)
      acc74(117)=abb74(161)
      acc74(118)=abb74(163)
      acc74(119)=abb74(164)
      acc74(120)=abb74(168)
      acc74(121)=abb74(170)
      acc74(122)=Qspvak1l6*acc74(93)
      acc74(123)=Qspvak1k7*acc74(95)
      acc74(124)=Qspvak7k2*acc74(73)
      acc74(125)=Qspvak1k2*acc74(1)
      acc74(126)=Qspk2*acc74(38)
      acc74(122)=acc74(126)+acc74(125)+acc74(124)+acc74(123)+acc74(15)+acc74(12&
      &2)
      acc74(122)=Qspe7*acc74(122)
      acc74(123)=Qspval6k2*acc74(18)
      acc74(124)=Qspvak7k2*acc74(74)
      acc74(125)=Qspvak1e7*acc74(70)
      acc74(126)=Qspvak1k2*acc74(27)
      acc74(127)=Qspk2*acc74(5)
      acc74(123)=acc74(127)+acc74(126)+acc74(125)+acc74(124)+acc74(4)+acc74(123)
      acc74(123)=Qspvae7l6*acc74(123)
      acc74(124)=Qspvak1l6*acc74(49)
      acc74(125)=Qspvak1k7*acc74(96)
      acc74(126)=Qspvae7k2*acc74(14)
      acc74(127)=Qspvak1k2*acc74(8)
      acc74(124)=acc74(127)+acc74(126)+acc74(125)+acc74(13)+acc74(124)
      acc74(124)=Qspvak2e7*acc74(124)
      acc74(125)=Qspvak1e7*acc74(68)
      acc74(126)=-Qspvae7k2*acc74(98)
      acc74(127)=Qspvak1k2*acc74(21)
      acc74(125)=acc74(127)+acc74(126)+acc74(37)+acc74(125)
      acc74(125)=Qspk2*acc74(125)
      acc74(126)=Qspvak1e7*acc74(63)
      acc74(127)=Qspvae7k2*acc74(94)
      acc74(126)=-acc74(31)+acc74(126)+acc74(127)
      acc74(127)=Qspk7+Qspl6
      acc74(126)=acc74(126)*acc74(127)
      acc74(128)=Qspval5k2*acc74(81)
      acc74(129)=Qspval5l6*acc74(79)
      acc74(130)=Qspval5k7*acc74(76)
      acc74(131)=Qspval6l5*acc74(75)
      acc74(132)=Qspvak7l5*acc74(71)
      acc74(133)=Qspval5e7*acc74(50)
      acc74(134)=Qspvae7l5*acc74(6)
      acc74(135)=-acc74(80)*Qspvak3k2
      acc74(136)=Qspval6k2*acc74(10)
      acc74(137)=Qspvak1l6*acc74(89)
      acc74(138)=Qspvak1k7*acc74(90)
      acc74(139)=Qspvak4k2*acc74(35)
      acc74(140)=Qspvak7k2*acc74(72)
      acc74(141)=QspQ*acc74(42)
      acc74(142)=Qspvak1e7*acc74(25)
      acc74(143)=Qspvae7k2*acc74(51)
      acc74(144)=acc74(19)*acc74(127)
      acc74(144)=acc74(12)+acc74(144)
      acc74(144)=Qspvak1k2*acc74(144)
      acc74(122)=acc74(123)+acc74(122)+acc74(125)+acc74(124)+acc74(144)+acc74(1&
      &43)+acc74(142)+acc74(141)+acc74(140)+acc74(139)+acc74(138)+acc74(137)+ac&
      &c74(136)+acc74(135)+acc74(134)+acc74(133)+acc74(132)+acc74(131)+acc74(13&
      &0)+acc74(129)+acc74(3)+acc74(128)+acc74(126)
      acc74(122)=Qspvak4k3*acc74(122)
      acc74(123)=-Qspk1+Qspk4+Qspk3
      acc74(124)=-acc74(78)*acc74(123)
      acc74(125)=Qspvak2k1*acc74(44)
      acc74(126)=Qspvak2k3*acc74(40)
      acc74(128)=Qspval6k1*acc74(110)
      acc74(129)=Qspval6k3*acc74(103)
      acc74(130)=Qspvak7k1*acc74(57)
      acc74(131)=Qspvak7k3*acc74(28)
      acc74(132)=Qspval6k2*acc74(58)
      acc74(133)=Qspvak7k2*acc74(88)
      acc74(134)=QspQ*acc74(66)
      acc74(135)=Qspvak1e7*acc74(119)
      acc74(136)=Qspvak1k2*acc74(33)
      acc74(137)=Qspk2*acc74(104)
      acc74(124)=acc74(137)+acc74(136)+acc74(135)+acc74(134)+acc74(133)+acc74(1&
      &32)+acc74(131)+acc74(130)+acc74(129)+acc74(128)+acc74(126)+acc74(16)+acc&
      &74(125)+acc74(124)
      acc74(124)=Qspvae7l6*acc74(124)
      acc74(125)=-acc74(77)*acc74(123)
      acc74(126)=Qspvak2k1*acc74(55)
      acc74(128)=Qspvak2k3*acc74(29)
      acc74(129)=Qspvak7k1*acc74(102)
      acc74(130)=Qspvak7k3*acc74(120)
      acc74(131)=Qspvak1l6*acc74(108)
      acc74(132)=Qspvak1k7*acc74(85)
      acc74(133)=Qspvak7k2*acc74(65)
      acc74(134)=QspQ*acc74(43)
      acc74(135)=Qspvak1k2*acc74(2)
      acc74(136)=Qspk2*acc74(52)
      acc74(125)=acc74(136)+acc74(135)+acc74(134)+acc74(133)+acc74(132)+acc74(1&
      &31)+acc74(130)+acc74(129)+acc74(128)+acc74(47)+acc74(126)+acc74(125)
      acc74(125)=Qspe7*acc74(125)
      acc74(126)=-acc74(83)*acc74(123)
      acc74(128)=Qspvae7k1*acc74(116)
      acc74(129)=Qspvae7k3*acc74(41)
      acc74(130)=Qspvak1l6*acc74(84)
      acc74(131)=Qspvak1k7*acc74(86)
      acc74(132)=QspQ*acc74(64)
      acc74(133)=Qspvae7k2*acc74(109)
      acc74(134)=Qspvak1k2*acc74(24)
      acc74(126)=acc74(134)+acc74(133)+acc74(132)+acc74(131)+acc74(130)+acc74(1&
      &29)+acc74(62)+acc74(128)+acc74(126)
      acc74(126)=Qspvak2e7*acc74(126)
      acc74(128)=-acc74(91)*acc74(123)
      acc74(129)=Qspvae7k1*acc74(45)
      acc74(130)=Qspvae7k3*acc74(60)
      acc74(131)=QspQ*acc74(101)
      acc74(132)=Qspvak1e7*acc74(100)
      acc74(133)=Qspvae7k2*acc74(48)
      acc74(134)=Qspvak1k2*acc74(26)
      acc74(128)=acc74(134)+acc74(133)+acc74(132)+acc74(131)+acc74(130)+acc74(9&
      &)+acc74(129)+acc74(128)
      acc74(128)=Qspk2*acc74(128)
      acc74(129)=acc74(92)*acc74(123)
      acc74(130)=Qspvae7k1*acc74(115)
      acc74(131)=Qspvae7k3*acc74(111)
      acc74(132)=QspQ*acc74(97)
      acc74(133)=Qspvak1e7*acc74(118)
      acc74(134)=Qspvae7k2*acc74(114)
      acc74(129)=acc74(132)+acc74(133)+acc74(134)-acc74(67)-acc74(130)+acc74(13&
      &1)+acc74(129)
      acc74(129)=acc74(129)*acc74(127)
      acc74(130)=Qspvak4k2*acc74(82)
      acc74(130)=acc74(130)+acc74(69)
      acc74(123)=acc74(130)*acc74(123)
      acc74(130)=acc74(54)*Qspvak2k7
      acc74(131)=acc74(53)*Qspvak2l6
      acc74(132)=Qspval5k2*acc74(39)
      acc74(133)=Qspval5l6*acc74(30)
      acc74(134)=Qspval5k7*acc74(106)
      acc74(135)=Qspval6k1*acc74(22)
      acc74(136)=Qspval6k3*acc74(20)
      acc74(137)=Qspval6l5*acc74(46)
      acc74(138)=Qspvak7l5*acc74(99)
      acc74(139)=Qspval5e7*acc74(107)
      acc74(140)=Qspvae7l5*acc74(105)
      acc74(141)=Qspvak7k1*acc74(87)
      acc74(142)=Qspvak7k3*acc74(36)
      acc74(143)=Qspval6k2*acc74(34)
      acc74(144)=Qspvae7k1*acc74(113)
      acc74(145)=Qspvae7k3*acc74(32)
      acc74(146)=Qspvak1l6*acc74(56)
      acc74(147)=Qspvak1k7*acc74(61)
      acc74(148)=Qspvak4k2*acc74(59)
      acc74(149)=Qspvak7k2*acc74(121)
      acc74(150)=Qspvak4k2*acc74(80)
      acc74(150)=acc74(11)+acc74(150)
      acc74(150)=QspQ*acc74(150)
      acc74(151)=Qspvak1e7*acc74(117)
      acc74(152)=Qspvae7k2*acc74(112)
      acc74(127)=acc74(7)*acc74(127)
      acc74(127)=acc74(23)+acc74(127)
      acc74(127)=Qspvak1k2*acc74(127)
      brack=acc74(17)+acc74(122)+acc74(123)+acc74(124)+acc74(125)+acc74(126)+ac&
      &c74(127)+acc74(128)+acc74(129)+acc74(130)+acc74(131)+acc74(132)+acc74(13&
      &3)+acc74(134)+acc74(135)+acc74(136)+acc74(137)+acc74(138)+acc74(139)+acc&
      &74(140)+acc74(141)+acc74(142)+acc74(143)+acc74(144)+acc74(145)+acc74(146&
      &)+acc74(147)+acc74(148)+acc74(149)+acc74(150)+acc74(151)+acc74(152)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram74_sign, shift => diagram74_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd74h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d74
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d74 = 0.0_ki
      d74 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d74, ki), aimag(d74), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd74h3
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
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d74h3l1
