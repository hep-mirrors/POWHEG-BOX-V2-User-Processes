module     p5_usbar_epnebbbarg_d75h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d75h2l1.f90
   ! generator: buildfortran.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd75h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc75(140)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvae7k3
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspe7 = dotproduct(Q,e7)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      acc75(1)=abb75(8)
      acc75(2)=abb75(9)
      acc75(3)=abb75(10)
      acc75(4)=abb75(11)
      acc75(5)=abb75(12)
      acc75(6)=abb75(13)
      acc75(7)=abb75(14)
      acc75(8)=abb75(15)
      acc75(9)=abb75(16)
      acc75(10)=abb75(17)
      acc75(11)=abb75(18)
      acc75(12)=abb75(19)
      acc75(13)=abb75(20)
      acc75(14)=abb75(21)
      acc75(15)=abb75(22)
      acc75(16)=abb75(23)
      acc75(17)=abb75(24)
      acc75(18)=abb75(25)
      acc75(19)=abb75(26)
      acc75(20)=abb75(27)
      acc75(21)=abb75(28)
      acc75(22)=abb75(29)
      acc75(23)=abb75(30)
      acc75(24)=abb75(31)
      acc75(25)=abb75(32)
      acc75(26)=abb75(33)
      acc75(27)=abb75(34)
      acc75(28)=abb75(35)
      acc75(29)=abb75(37)
      acc75(30)=abb75(38)
      acc75(31)=abb75(40)
      acc75(32)=abb75(43)
      acc75(33)=abb75(44)
      acc75(34)=abb75(46)
      acc75(35)=abb75(47)
      acc75(36)=abb75(48)
      acc75(37)=abb75(49)
      acc75(38)=abb75(50)
      acc75(39)=abb75(51)
      acc75(40)=abb75(52)
      acc75(41)=abb75(53)
      acc75(42)=abb75(55)
      acc75(43)=abb75(56)
      acc75(44)=abb75(57)
      acc75(45)=abb75(58)
      acc75(46)=abb75(59)
      acc75(47)=abb75(61)
      acc75(48)=abb75(62)
      acc75(49)=abb75(63)
      acc75(50)=abb75(65)
      acc75(51)=abb75(66)
      acc75(52)=abb75(67)
      acc75(53)=abb75(68)
      acc75(54)=abb75(69)
      acc75(55)=abb75(71)
      acc75(56)=abb75(72)
      acc75(57)=abb75(73)
      acc75(58)=abb75(74)
      acc75(59)=abb75(75)
      acc75(60)=abb75(79)
      acc75(61)=abb75(80)
      acc75(62)=abb75(81)
      acc75(63)=abb75(82)
      acc75(64)=abb75(84)
      acc75(65)=abb75(85)
      acc75(66)=abb75(86)
      acc75(67)=abb75(87)
      acc75(68)=abb75(88)
      acc75(69)=abb75(89)
      acc75(70)=abb75(91)
      acc75(71)=abb75(92)
      acc75(72)=abb75(93)
      acc75(73)=abb75(94)
      acc75(74)=abb75(96)
      acc75(75)=abb75(97)
      acc75(76)=abb75(98)
      acc75(77)=abb75(99)
      acc75(78)=abb75(100)
      acc75(79)=abb75(101)
      acc75(80)=abb75(104)
      acc75(81)=abb75(105)
      acc75(82)=abb75(106)
      acc75(83)=abb75(107)
      acc75(84)=abb75(109)
      acc75(85)=abb75(110)
      acc75(86)=abb75(116)
      acc75(87)=abb75(117)
      acc75(88)=abb75(120)
      acc75(89)=abb75(124)
      acc75(90)=abb75(133)
      acc75(91)=abb75(136)
      acc75(92)=abb75(137)
      acc75(93)=abb75(138)
      acc75(94)=abb75(141)
      acc75(95)=abb75(144)
      acc75(96)=abb75(149)
      acc75(97)=abb75(150)
      acc75(98)=abb75(152)
      acc75(99)=abb75(155)
      acc75(100)=abb75(162)
      acc75(101)=abb75(167)
      acc75(102)=abb75(170)
      acc75(103)=abb75(171)
      acc75(104)=abb75(173)
      acc75(105)=abb75(174)
      acc75(106)=abb75(175)
      acc75(107)=abb75(176)
      acc75(108)=abb75(177)
      acc75(109)=abb75(178)
      acc75(110)=abb75(180)
      acc75(111)=abb75(181)
      acc75(112)=Qspk7+Qspl6
      acc75(113)=acc75(24)*acc75(112)
      acc75(114)=Qspvak2l6*acc75(46)
      acc75(115)=Qspvak2k7*acc75(82)
      acc75(116)=Qspvae7k1*acc75(56)
      acc75(117)=Qspvak2k1*acc75(22)
      acc75(118)=Qspvae7l6*acc75(50)
      acc75(113)=acc75(118)+acc75(117)+acc75(116)+acc75(115)+acc75(5)+acc75(114&
      &)+acc75(113)
      acc75(113)=Qspvak2e7*acc75(113)
      acc75(114)=Qspvak2l6*acc75(14)
      acc75(115)=Qspvak2k7*acc75(81)
      acc75(116)=Qspvak7k1*acc75(18)
      acc75(117)=Qspvak2k1*acc75(2)
      acc75(114)=acc75(117)+acc75(116)+acc75(115)+acc75(10)+acc75(114)
      acc75(114)=Qspe7*acc75(114)
      acc75(115)=Qspval6k1*acc75(32)
      acc75(116)=Qspvak7k1*acc75(36)
      acc75(117)=Qspvak2k1*acc75(12)
      acc75(115)=acc75(117)+acc75(116)+acc75(29)+acc75(115)
      acc75(115)=Qspvae7l6*acc75(115)
      acc75(116)=Qspvae7k1*acc75(51)
      acc75(116)=acc75(116)+acc75(31)
      acc75(116)=acc75(116)*acc75(112)
      acc75(117)=Qspval5k1*acc75(60)
      acc75(118)=Qspval5k2*acc75(54)
      acc75(119)=Qspval5l6*acc75(57)
      acc75(120)=Qspval5k7*acc75(35)
      acc75(121)=Qspval6l5*acc75(34)
      acc75(122)=Qspvak7l5*acc75(23)
      acc75(123)=Qspval5e7*acc75(64)
      acc75(124)=Qspvae7l5*acc75(8)
      acc75(125)=acc75(67)*Qspvak3k1
      acc75(126)=Qspval6k1*acc75(9)
      acc75(127)=Qspvak2l6*acc75(77)
      acc75(128)=Qspvak2k7*acc75(79)
      acc75(129)=Qspvak4k1*acc75(21)
      acc75(130)=Qspvak7k1*acc75(16)
      acc75(131)=QspQ*acc75(68)
      acc75(132)=Qspvae7k1*acc75(44)
      acc75(133)=Qspvak2k1*acc75(7)
      acc75(134)=Qspvae7k1*acc75(52)
      acc75(134)=acc75(6)+acc75(134)
      acc75(134)=Qspk2*acc75(134)
      acc75(113)=acc75(113)+acc75(115)+acc75(114)+acc75(134)+acc75(133)+acc75(1&
      &32)+acc75(131)+acc75(130)+acc75(129)+acc75(128)+acc75(127)+acc75(126)+ac&
      &c75(125)+acc75(124)+acc75(123)+acc75(122)+acc75(121)+acc75(120)+acc75(11&
      &9)+acc75(118)+acc75(1)+acc75(117)+acc75(116)
      acc75(113)=Qspvak4k3*acc75(113)
      acc75(114)=Qspk4+Qspk3
      acc75(115)=acc75(102)*acc75(114)
      acc75(116)=Qspvak2k3*acc75(19)
      acc75(117)=Qspval6k2*acc75(105)
      acc75(118)=Qspval6k3*acc75(111)
      acc75(119)=Qspvak7k2*acc75(13)
      acc75(120)=Qspvak7k3*acc75(107)
      acc75(121)=Qspval6k1*acc75(95)
      acc75(122)=Qspvak7k1*acc75(63)
      acc75(123)=QspQ*acc75(91)
      acc75(124)=Qspvak2k1*acc75(15)
      acc75(125)=Qspk2*acc75(66)
      acc75(115)=acc75(125)+acc75(124)+acc75(123)+acc75(122)+acc75(121)+acc75(1&
      &20)+acc75(119)+acc75(118)+acc75(117)+acc75(61)+acc75(116)+acc75(115)
      acc75(115)=Qspvae7l6*acc75(115)
      acc75(116)=-acc75(92)*acc75(114)
      acc75(117)=Qspvak2k3*acc75(83)
      acc75(118)=Qspvak7k2*acc75(108)
      acc75(119)=Qspvak7k3*acc75(109)
      acc75(120)=Qspvak2l6*acc75(71)
      acc75(121)=Qspvak2k7*acc75(73)
      acc75(122)=Qspvak7k1*acc75(110)
      acc75(123)=QspQ*acc75(84)
      acc75(124)=Qspvak2k1*acc75(28)
      acc75(125)=Qspk2*acc75(89)
      acc75(116)=acc75(125)+acc75(124)+acc75(123)+acc75(122)+acc75(121)+acc75(1&
      &20)+acc75(119)+acc75(118)+acc75(62)+acc75(117)+acc75(116)
      acc75(116)=Qspe7*acc75(116)
      acc75(117)=acc75(47)*acc75(112)
      acc75(118)=acc75(114)-Qspk2
      acc75(119)=acc75(78)*acc75(118)
      acc75(120)=Qspvae7k2*acc75(40)
      acc75(121)=Qspvae7k3*acc75(88)
      acc75(122)=Qspvak2l6*acc75(55)
      acc75(123)=Qspvak2k7*acc75(75)
      acc75(124)=QspQ*acc75(59)
      acc75(125)=Qspvae7k1*acc75(72)
      acc75(126)=Qspvak2k1*acc75(25)
      acc75(127)=Qspvae7l6*acc75(80)
      acc75(117)=acc75(127)+acc75(126)+acc75(125)+acc75(124)+acc75(123)+acc75(1&
      &22)+acc75(121)+acc75(27)+acc75(120)+acc75(119)+acc75(117)
      acc75(117)=Qspvak2e7*acc75(117)
      acc75(119)=-acc75(93)*acc75(112)
      acc75(118)=acc75(99)*acc75(118)
      acc75(120)=Qspvak4k1*acc75(69)
      acc75(121)=Qspvae7k2*acc75(96)
      acc75(122)=Qspvae7k3*acc75(97)
      acc75(123)=QspQ*acc75(85)
      acc75(124)=Qspvae7k1*acc75(100)
      acc75(125)=Qspvak2k1*acc75(11)
      acc75(118)=acc75(125)+acc75(124)+acc75(123)+acc75(120)+acc75(122)+acc75(9&
      &4)+acc75(121)+acc75(118)+acc75(119)
      acc75(118)=Qspk2*acc75(118)
      acc75(119)=-acc75(93)*acc75(114)
      acc75(121)=Qspvae7k2*acc75(106)
      acc75(122)=Qspvae7k3*acc75(104)
      acc75(123)=QspQ*acc75(20)
      acc75(124)=Qspvae7k1*acc75(90)
      acc75(125)=Qspvak2k1*acc75(37)
      acc75(119)=-acc75(123)+acc75(124)+acc75(125)+acc75(48)+acc75(121)-acc75(1&
      &22)+acc75(119)
      acc75(112)=-acc75(119)*acc75(112)
      acc75(119)=acc75(120)+acc75(86)
      acc75(114)=-acc75(119)*acc75(114)
      acc75(119)=Qspval5k1*acc75(39)
      acc75(120)=Qspval5k2*acc75(38)
      acc75(121)=Qspval5l6*acc75(65)
      acc75(122)=Qspval5k7*acc75(98)
      acc75(123)=Qspval6k2*acc75(58)
      acc75(124)=Qspval6k3*acc75(76)
      acc75(125)=Qspval6l5*acc75(74)
      acc75(126)=Qspvak7l5*acc75(17)
      acc75(127)=Qspval5e7*acc75(103)
      acc75(128)=Qspvae7l5*acc75(101)
      acc75(129)=Qspvak7k2*acc75(41)
      acc75(130)=Qspvak7k3*acc75(45)
      acc75(131)=Qspval6k1*acc75(87)
      acc75(132)=Qspvae7k2*acc75(42)
      acc75(133)=Qspvae7k3*acc75(43)
      acc75(134)=Qspvak2l6*acc75(30)
      acc75(135)=Qspvak2k7*acc75(53)
      acc75(136)=Qspvak4k1*acc75(33)
      acc75(137)=Qspvak7k1*acc75(26)
      acc75(138)=-Qspvak4k1*acc75(67)
      acc75(138)=acc75(70)+acc75(138)
      acc75(138)=QspQ*acc75(138)
      acc75(139)=Qspvae7k1*acc75(49)
      acc75(140)=Qspvak2k1*acc75(3)
      brack=acc75(4)+acc75(112)+acc75(113)+acc75(114)+acc75(115)+acc75(116)+acc&
      &75(117)+acc75(118)+acc75(119)+acc75(120)+acc75(121)+acc75(122)+acc75(123&
      &)+acc75(124)+acc75(125)+acc75(126)+acc75(127)+acc75(128)+acc75(129)+acc7&
      &5(130)+acc75(131)+acc75(132)+acc75(133)+acc75(134)+acc75(135)+acc75(136)&
      &+acc75(137)+acc75(138)+acc75(139)+acc75(140)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram75_sign, shift => diagram75_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd75h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d75
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d75 = 0.0_ki
      d75 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d75, ki), aimag(d75), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd75h2
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
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d75h2l1
