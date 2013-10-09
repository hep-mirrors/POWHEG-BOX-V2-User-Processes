module     p0_dbaru_epnebbbarg_d298h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d298h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd298h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc298(164)
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspval5e7
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk1 = dotproduct(Q,k1)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspl5 = dotproduct(Q,l5)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspe7 = dotproduct(Q,e7)
      Qspval5e7 = dotproduct(Q,spval5e7)
      acc298(1)=abb298(8)
      acc298(2)=abb298(9)
      acc298(3)=abb298(10)
      acc298(4)=abb298(11)
      acc298(5)=abb298(12)
      acc298(6)=abb298(13)
      acc298(7)=abb298(14)
      acc298(8)=abb298(15)
      acc298(9)=abb298(16)
      acc298(10)=abb298(17)
      acc298(11)=abb298(18)
      acc298(12)=abb298(19)
      acc298(13)=abb298(20)
      acc298(14)=abb298(21)
      acc298(15)=abb298(22)
      acc298(16)=abb298(23)
      acc298(17)=abb298(24)
      acc298(18)=abb298(25)
      acc298(19)=abb298(26)
      acc298(20)=abb298(27)
      acc298(21)=abb298(28)
      acc298(22)=abb298(29)
      acc298(23)=abb298(30)
      acc298(24)=abb298(31)
      acc298(25)=abb298(32)
      acc298(26)=abb298(33)
      acc298(27)=abb298(34)
      acc298(28)=abb298(35)
      acc298(29)=abb298(36)
      acc298(30)=abb298(37)
      acc298(31)=abb298(38)
      acc298(32)=abb298(39)
      acc298(33)=abb298(40)
      acc298(34)=abb298(41)
      acc298(35)=abb298(42)
      acc298(36)=abb298(43)
      acc298(37)=abb298(44)
      acc298(38)=abb298(45)
      acc298(39)=abb298(46)
      acc298(40)=abb298(47)
      acc298(41)=abb298(48)
      acc298(42)=abb298(49)
      acc298(43)=abb298(50)
      acc298(44)=abb298(51)
      acc298(45)=abb298(52)
      acc298(46)=abb298(53)
      acc298(47)=abb298(54)
      acc298(48)=abb298(55)
      acc298(49)=abb298(56)
      acc298(50)=abb298(57)
      acc298(51)=abb298(59)
      acc298(52)=abb298(60)
      acc298(53)=abb298(61)
      acc298(54)=abb298(62)
      acc298(55)=abb298(63)
      acc298(56)=abb298(64)
      acc298(57)=abb298(65)
      acc298(58)=abb298(66)
      acc298(59)=abb298(67)
      acc298(60)=abb298(68)
      acc298(61)=abb298(69)
      acc298(62)=abb298(70)
      acc298(63)=abb298(71)
      acc298(64)=abb298(72)
      acc298(65)=abb298(73)
      acc298(66)=abb298(74)
      acc298(67)=abb298(76)
      acc298(68)=abb298(77)
      acc298(69)=abb298(78)
      acc298(70)=abb298(79)
      acc298(71)=abb298(80)
      acc298(72)=abb298(81)
      acc298(73)=abb298(82)
      acc298(74)=abb298(83)
      acc298(75)=abb298(84)
      acc298(76)=abb298(85)
      acc298(77)=abb298(86)
      acc298(78)=abb298(87)
      acc298(79)=abb298(88)
      acc298(80)=abb298(89)
      acc298(81)=abb298(90)
      acc298(82)=abb298(91)
      acc298(83)=abb298(92)
      acc298(84)=abb298(93)
      acc298(85)=abb298(94)
      acc298(86)=abb298(95)
      acc298(87)=abb298(96)
      acc298(88)=abb298(97)
      acc298(89)=abb298(98)
      acc298(90)=abb298(99)
      acc298(91)=abb298(100)
      acc298(92)=abb298(101)
      acc298(93)=abb298(102)
      acc298(94)=abb298(103)
      acc298(95)=abb298(104)
      acc298(96)=abb298(105)
      acc298(97)=abb298(106)
      acc298(98)=abb298(107)
      acc298(99)=abb298(108)
      acc298(100)=abb298(109)
      acc298(101)=abb298(110)
      acc298(102)=abb298(111)
      acc298(103)=abb298(112)
      acc298(104)=abb298(113)
      acc298(105)=abb298(114)
      acc298(106)=abb298(115)
      acc298(107)=abb298(116)
      acc298(108)=abb298(117)
      acc298(109)=abb298(118)
      acc298(110)=abb298(119)
      acc298(111)=abb298(120)
      acc298(112)=abb298(121)
      acc298(113)=abb298(122)
      acc298(114)=abb298(123)
      acc298(115)=abb298(124)
      acc298(116)=abb298(125)
      acc298(117)=abb298(126)
      acc298(118)=abb298(127)
      acc298(119)=abb298(128)
      acc298(120)=abb298(129)
      acc298(121)=abb298(130)
      acc298(122)=abb298(131)
      acc298(123)=abb298(132)
      acc298(124)=abb298(133)
      acc298(125)=abb298(134)
      acc298(126)=abb298(135)
      acc298(127)=abb298(136)
      acc298(128)=abb298(137)
      acc298(129)=abb298(138)
      acc298(130)=abb298(139)
      acc298(131)=abb298(140)
      acc298(132)=abb298(141)
      acc298(133)=abb298(142)
      acc298(134)=abb298(145)
      acc298(135)=abb298(146)
      acc298(136)=abb298(147)
      acc298(137)=abb298(148)
      acc298(138)=abb298(149)
      acc298(139)=abb298(150)
      acc298(140)=abb298(151)
      acc298(141)=abb298(153)
      acc298(142)=abb298(154)
      acc298(143)=abb298(156)
      acc298(144)=acc298(127)*Qspvak2e7
      acc298(145)=Qspvak7l6*acc298(115)
      acc298(146)=Qspk7*acc298(123)
      acc298(147)=QspQ*acc298(119)
      acc298(148)=Qspk2*acc298(38)
      acc298(149)=Qspvae7l6*acc298(116)
      acc298(144)=acc298(149)+acc298(148)+acc298(147)+acc298(146)+acc298(145)+a&
      &cc298(144)+acc298(101)
      acc298(144)=Qspvak4k3*acc298(144)
      acc298(145)=Qspk1-Qspl6
      acc298(146)=Qspk7-acc298(145)
      acc298(146)=acc298(16)*acc298(146)
      acc298(147)=QspQ*acc298(32)
      acc298(148)=Qspk2*acc298(17)
      acc298(146)=acc298(148)+acc298(147)+acc298(12)+acc298(146)
      acc298(146)=Qspvae7l6*acc298(146)
      acc298(147)=-acc298(106)*Qspvak2l5
      acc298(148)=acc298(22)*Qspvak2k3
      acc298(149)=Qspvak2l6*acc298(61)
      acc298(150)=Qspvak4l6*acc298(80)
      acc298(151)=Qspvak1k7*acc298(131)
      acc298(152)=Qspl6*acc298(120)
      acc298(153)=Qspk1*acc298(57)
      acc298(154)=Qspvak1k2*acc298(28)
      acc298(155)=Qspvak1k3*acc298(125)
      acc298(156)=Qspvak7l6*acc298(29)
      acc298(157)=Qspk7*acc298(36)
      acc298(158)=Qspvak1l6*acc298(89)
      acc298(159)=QspQ*acc298(23)
      acc298(160)=Qspk2*acc298(9)
      acc298(161)=Qspval5l6*acc298(74)
      acc298(144)=acc298(144)+acc298(161)+acc298(146)+acc298(160)+acc298(159)+a&
      &cc298(158)+acc298(157)+acc298(156)+acc298(155)+acc298(154)+acc298(153)+a&
      &cc298(152)+acc298(151)+acc298(150)+acc298(149)+acc298(7)+acc298(147)+acc&
      &298(148)
      acc298(144)=Qspval5k2*acc298(144)
      acc298(146)=Qspk7+Qspk1
      acc298(147)=-acc298(42)*acc298(146)
      acc298(148)=Qspvak2l6*acc298(55)
      acc298(149)=Qspvak4l6*acc298(78)
      acc298(150)=Qspvak1k7*acc298(124)
      acc298(151)=Qspl6*acc298(132)
      acc298(152)=Qspvak1k2*acc298(25)
      acc298(153)=Qspvak1k3*acc298(37)
      acc298(154)=Qspvak7l6*acc298(33)
      acc298(155)=Qspvak1l6*acc298(72)
      acc298(156)=QspQ*acc298(27)
      acc298(157)=Qspk2*acc298(34)
      acc298(158)=Qspval5l6*acc298(54)
      acc298(159)=Qspvak4k3*acc298(118)
      acc298(147)=acc298(159)+acc298(158)+acc298(157)+acc298(156)+acc298(155)+a&
      &cc298(154)+acc298(153)+acc298(152)+acc298(151)+acc298(150)+acc298(149)+a&
      &cc298(6)+acc298(148)+acc298(147)
      acc298(147)=Qspval5k2*acc298(147)
      acc298(146)=acc298(146)+Qspl6
      acc298(148)=-acc298(67)*acc298(146)
      acc298(149)=-Qspvak1k7*acc298(105)
      acc298(150)=Qspvak1k2*acc298(79)
      acc298(151)=-Qspvak1k3*acc298(136)
      acc298(152)=-QspQ*acc298(114)
      acc298(153)=Qspk2*acc298(30)
      acc298(148)=acc298(153)+acc298(152)+acc298(151)+acc298(150)+acc298(64)+ac&
      &c298(149)+acc298(148)
      acc298(148)=Qspval5l6*acc298(148)
      acc298(149)=Qspval5k3*acc298(136)
      acc298(150)=acc298(67)*Qspval5k1
      acc298(151)=Qspval5k7*acc298(105)
      acc298(152)=Qspl5*acc298(88)
      acc298(149)=acc298(152)+acc298(151)+acc298(150)+acc298(46)+acc298(149)
      acc298(149)=Qspvak1l6*acc298(149)
      acc298(150)=-Qspvak1k3*acc298(97)
      acc298(151)=Qspvak1l6*acc298(69)
      acc298(150)=acc298(151)+acc298(51)+acc298(150)
      acc298(150)=QspQ*acc298(150)
      acc298(151)=Qspvak1k3*acc298(35)
      acc298(152)=Qspvak1l6*acc298(90)
      acc298(151)=acc298(152)+acc298(5)+acc298(151)
      acc298(151)=Qspk2*acc298(151)
      acc298(152)=Qspvak1k2*acc298(91)
      acc298(153)=Qspvak1k2*acc298(14)
      acc298(153)=acc298(92)+acc298(153)
      acc298(153)=Qspval5l6*acc298(153)
      acc298(152)=acc298(153)+acc298(96)+acc298(152)
      acc298(152)=Qspvak4k3*acc298(152)
      acc298(146)=-acc298(98)*acc298(146)
      acc298(153)=Qspvak4k2*acc298(10)
      acc298(154)=Qspval6k2*acc298(139)
      acc298(155)=Qspvak7k2*acc298(137)
      acc298(156)=Qspval5k1*acc298(41)
      acc298(157)=Qspval5k3*acc298(108)
      acc298(158)=Qspvak1k7*acc298(100)
      acc298(159)=Qspval5k7*acc298(56)
      acc298(160)=Qspvak1k2*acc298(62)
      acc298(161)=Qspvak1k3*acc298(142)
      acc298(161)=acc298(128)+acc298(161)
      acc298(161)=Qspl5*acc298(161)
      acc298(146)=acc298(147)+acc298(152)+acc298(148)+acc298(151)+acc298(150)+a&
      &cc298(149)+acc298(161)+acc298(160)+acc298(159)+acc298(158)+acc298(157)+a&
      &cc298(156)+acc298(155)+acc298(154)+acc298(52)+acc298(153)+acc298(146)
      acc298(146)=Qspe7*acc298(146)
      acc298(147)=Qspvak1k2*acc298(49)
      acc298(148)=Qspk7*acc298(113)
      acc298(149)=QspQ*acc298(75)
      acc298(150)=Qspk2*acc298(68)
      acc298(147)=acc298(150)+acc298(149)+acc298(148)+acc298(111)+acc298(147)
      acc298(147)=Qspval5l6*acc298(147)
      acc298(148)=Qspval5k7*acc298(109)
      acc298(149)=Qspvak1k2*acc298(8)
      acc298(150)=Qspval5k7*acc298(110)
      acc298(150)=acc298(21)+acc298(150)
      acc298(150)=Qspvak7l6*acc298(150)
      acc298(151)=Qspval5e7*acc298(84)
      acc298(152)=Qspk7*acc298(103)
      acc298(153)=QspQ*acc298(39)
      acc298(154)=Qspk2*acc298(4)
      acc298(155)=Qspval5e7*acc298(104)
      acc298(155)=acc298(83)+acc298(155)
      acc298(155)=Qspvae7l6*acc298(155)
      acc298(147)=acc298(147)+acc298(155)+acc298(154)+acc298(153)+acc298(152)+a&
      &cc298(151)+acc298(150)+acc298(149)+acc298(19)+acc298(148)
      acc298(147)=Qspvak4k3*acc298(147)
      acc298(148)=Qspvak1k3*acc298(133)
      acc298(149)=Qspvak7l6*acc298(129)
      acc298(150)=Qspl5*acc298(45)
      acc298(151)=Qspval5e7*acc298(99)
      acc298(152)=Qspk7*acc298(44)
      acc298(153)=Qspvak1l6*acc298(134)
      acc298(154)=QspQ*acc298(40)
      acc298(155)=Qspk2*acc298(13)
      acc298(148)=acc298(155)+acc298(154)+acc298(153)+acc298(152)+acc298(151)+a&
      &cc298(150)+acc298(149)+acc298(2)+acc298(148)
      acc298(148)=Qspk2*acc298(148)
      acc298(149)=Qspvak1k3*acc298(126)
      acc298(150)=Qspvak7l6*acc298(71)
      acc298(151)=Qspl5*acc298(59)
      acc298(152)=Qspval5e7*acc298(93)
      acc298(153)=Qspk7*acc298(53)
      acc298(154)=Qspvak1l6*acc298(15)
      acc298(155)=QspQ*acc298(43)
      acc298(149)=acc298(155)+acc298(154)+acc298(153)+acc298(152)+acc298(151)+a&
      &cc298(150)+acc298(26)+acc298(149)
      acc298(149)=QspQ*acc298(149)
      acc298(150)=-Qspvak1k7*acc298(107)
      acc298(151)=Qspk1*acc298(50)
      acc298(152)=Qspvak1k2*acc298(77)
      acc298(153)=-Qspvak1k3*acc298(140)
      acc298(154)=Qspk7*acc298(66)
      acc298(155)=QspQ*acc298(60)
      acc298(156)=Qspk2*acc298(18)
      acc298(150)=acc298(156)+acc298(155)+acc298(154)+acc298(153)+acc298(152)+a&
      &cc298(151)+acc298(31)+acc298(150)
      acc298(150)=Qspval5l6*acc298(150)
      acc298(151)=-acc298(70)*acc298(145)
      acc298(152)=Qspl5*acc298(73)
      acc298(153)=-acc298(114)*acc298(145)
      acc298(153)=acc298(85)+acc298(153)
      acc298(153)=Qspval5e7*acc298(153)
      acc298(154)=Qspval5e7*acc298(114)
      acc298(154)=acc298(70)+acc298(154)
      acc298(154)=Qspk7*acc298(154)
      acc298(155)=Qspval5e7*acc298(121)
      acc298(155)=acc298(48)+acc298(155)
      acc298(155)=QspQ*acc298(155)
      acc298(156)=Qspval5e7*acc298(117)
      acc298(156)=acc298(3)+acc298(156)
      acc298(156)=Qspk2*acc298(156)
      acc298(151)=acc298(156)+acc298(155)+acc298(154)+acc298(153)+acc298(152)+a&
      &cc298(63)+acc298(151)
      acc298(151)=Qspvae7l6*acc298(151)
      acc298(152)=Qspval5k1*acc298(87)
      acc298(153)=Qspval5k3*acc298(140)
      acc298(154)=Qspval5k7*acc298(107)
      acc298(155)=Qspl5*acc298(81)
      acc298(152)=acc298(155)+acc298(154)+acc298(153)+acc298(20)+acc298(152)
      acc298(152)=Qspvak1l6*acc298(152)
      acc298(153)=Qspvak1k3*acc298(141)
      acc298(154)=Qspvak7l6*acc298(122)
      acc298(153)=acc298(154)+acc298(112)+acc298(153)
      acc298(153)=Qspl5*acc298(153)
      acc298(154)=Qspl5*acc298(130)
      acc298(155)=Qspval5e7*acc298(95)
      acc298(154)=acc298(155)+acc298(94)+acc298(154)
      acc298(154)=Qspk7*acc298(154)
      acc298(155)=Qspvak4k2*acc298(65)
      acc298(156)=Qspval6k2*acc298(138)
      acc298(157)=Qspvak7k2*acc298(135)
      acc298(158)=Qspval5k1*acc298(76)
      acc298(159)=Qspval5k3*acc298(102)
      acc298(160)=Qspvak1k7*acc298(82)
      acc298(161)=Qspval5k7*acc298(24)
      acc298(162)=Qspk1*acc298(47)
      acc298(163)=Qspvak1k2*acc298(58)
      acc298(164)=Qspval5k7*acc298(143)
      acc298(164)=acc298(11)+acc298(164)
      acc298(164)=Qspvak7l6*acc298(164)
      acc298(145)=-acc298(95)*acc298(145)
      acc298(145)=acc298(86)+acc298(145)
      acc298(145)=Qspval5e7*acc298(145)
      brack=acc298(1)+acc298(144)+acc298(145)+acc298(146)+acc298(147)+acc298(14&
      &8)+acc298(149)+acc298(150)+acc298(151)+acc298(152)+acc298(153)+acc298(15&
      &4)+acc298(155)+acc298(156)+acc298(157)+acc298(158)+acc298(159)+acc298(16&
      &0)+acc298(161)+acc298(162)+acc298(163)+acc298(164)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram298_sign, shift => diagram298_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd298h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d298
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d298 = 0.0_ki
      d298 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d298, ki), aimag(d298), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd298h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d298
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d298 = 0.0_ki
      d298 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d298, ki), aimag(d298), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d298h2l1
