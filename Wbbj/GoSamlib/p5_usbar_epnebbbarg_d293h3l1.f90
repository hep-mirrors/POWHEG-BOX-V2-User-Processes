module     p5_usbar_epnebbbarg_d293h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d293h3l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd293h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc293(123)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspk1
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak4k3
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspk1 = dotproduct(Q,k1)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      acc293(1)=abb293(8)
      acc293(2)=abb293(9)
      acc293(3)=abb293(10)
      acc293(4)=abb293(11)
      acc293(5)=abb293(12)
      acc293(6)=abb293(13)
      acc293(7)=abb293(14)
      acc293(8)=abb293(15)
      acc293(9)=abb293(16)
      acc293(10)=abb293(17)
      acc293(11)=abb293(18)
      acc293(12)=abb293(19)
      acc293(13)=abb293(20)
      acc293(14)=abb293(21)
      acc293(15)=abb293(22)
      acc293(16)=abb293(23)
      acc293(17)=abb293(24)
      acc293(18)=abb293(25)
      acc293(19)=abb293(26)
      acc293(20)=abb293(27)
      acc293(21)=abb293(28)
      acc293(22)=abb293(29)
      acc293(23)=abb293(30)
      acc293(24)=abb293(31)
      acc293(25)=abb293(32)
      acc293(26)=abb293(33)
      acc293(27)=abb293(34)
      acc293(28)=abb293(35)
      acc293(29)=abb293(36)
      acc293(30)=abb293(37)
      acc293(31)=abb293(38)
      acc293(32)=abb293(39)
      acc293(33)=abb293(41)
      acc293(34)=abb293(42)
      acc293(35)=abb293(43)
      acc293(36)=abb293(45)
      acc293(37)=abb293(47)
      acc293(38)=abb293(48)
      acc293(39)=abb293(49)
      acc293(40)=abb293(50)
      acc293(41)=abb293(51)
      acc293(42)=abb293(52)
      acc293(43)=abb293(53)
      acc293(44)=abb293(54)
      acc293(45)=abb293(55)
      acc293(46)=abb293(56)
      acc293(47)=abb293(59)
      acc293(48)=abb293(60)
      acc293(49)=abb293(61)
      acc293(50)=abb293(62)
      acc293(51)=abb293(63)
      acc293(52)=abb293(64)
      acc293(53)=abb293(66)
      acc293(54)=abb293(67)
      acc293(55)=abb293(68)
      acc293(56)=abb293(82)
      acc293(57)=abb293(85)
      acc293(58)=abb293(86)
      acc293(59)=abb293(87)
      acc293(60)=abb293(89)
      acc293(61)=abb293(91)
      acc293(62)=abb293(95)
      acc293(63)=abb293(97)
      acc293(64)=abb293(100)
      acc293(65)=abb293(101)
      acc293(66)=abb293(106)
      acc293(67)=abb293(109)
      acc293(68)=abb293(111)
      acc293(69)=abb293(118)
      acc293(70)=abb293(122)
      acc293(71)=abb293(125)
      acc293(72)=abb293(126)
      acc293(73)=abb293(127)
      acc293(74)=abb293(131)
      acc293(75)=abb293(132)
      acc293(76)=abb293(142)
      acc293(77)=abb293(146)
      acc293(78)=abb293(148)
      acc293(79)=abb293(152)
      acc293(80)=abb293(153)
      acc293(81)=abb293(154)
      acc293(82)=abb293(155)
      acc293(83)=abb293(157)
      acc293(84)=abb293(158)
      acc293(85)=abb293(163)
      acc293(86)=abb293(164)
      acc293(87)=abb293(167)
      acc293(88)=abb293(171)
      acc293(89)=abb293(172)
      acc293(90)=abb293(175)
      acc293(91)=abb293(176)
      acc293(92)=abb293(177)
      acc293(93)=abb293(178)
      acc293(94)=abb293(181)
      acc293(95)=abb293(182)
      acc293(96)=abb293(198)
      acc293(97)=abb293(200)
      acc293(98)=abb293(202)
      acc293(99)=abb293(204)
      acc293(100)=abb293(218)
      acc293(101)=abb293(219)
      acc293(102)=abb293(224)
      acc293(103)=abb293(226)
      acc293(104)=abb293(227)
      acc293(105)=abb293(228)
      acc293(106)=Qspk7+Qspl5
      acc293(107)=-acc293(24)*acc293(106)
      acc293(108)=Qspvak4k1*acc293(84)
      acc293(109)=Qspvak4l6*acc293(79)
      acc293(110)=Qspvak1l6*acc293(29)
      acc293(111)=Qspvak2l5*acc293(31)
      acc293(112)=Qspval6k1*acc293(63)
      acc293(113)=Qspvae7l6*acc293(66)
      acc293(114)=Qspvak2e7*acc293(40)
      acc293(115)=Qspk1*acc293(42)
      acc293(116)=Qspl6*acc293(44)
      acc293(117)=Qspvak2l6*acc293(37)
      acc293(118)=Qspvak2k3*acc293(98)
      acc293(118)=acc293(57)+acc293(118)
      acc293(118)=Qspvae7k1*acc293(118)
      acc293(119)=Qspk2*acc293(46)
      acc293(120)=Qspe7*acc293(22)
      acc293(121)=QspQ*acc293(41)
      acc293(107)=acc293(121)+acc293(120)+acc293(119)+acc293(118)+acc293(117)+a&
      &cc293(116)+acc293(115)+acc293(114)+acc293(113)+acc293(112)+acc293(111)+a&
      &cc293(110)+acc293(109)+acc293(19)+acc293(108)+acc293(107)
      acc293(107)=QspQ*acc293(107)
      acc293(108)=Qspvak2l5*acc293(55)
      acc293(109)=Qspvak2e7*acc293(34)
      acc293(110)=Qspvak2l5*acc293(39)
      acc293(110)=acc293(9)+acc293(110)
      acc293(110)=Qspe7*acc293(110)
      acc293(111)=QspQ*acc293(28)
      acc293(108)=acc293(111)+acc293(110)+acc293(109)+acc293(20)+acc293(108)
      acc293(108)=Qspvak2k1*acc293(108)
      acc293(109)=Qspvak2l5*acc293(74)
      acc293(110)=Qspvak2l6*acc293(85)
      acc293(109)=acc293(110)+acc293(73)+acc293(109)
      acc293(109)=QspQ*acc293(109)
      acc293(110)=Qspvak7l6*acc293(104)
      acc293(111)=Qspvak2k7*acc293(88)
      acc293(112)=Qspvak1l6*acc293(30)
      acc293(113)=Qspvak2l5*acc293(70)
      acc293(114)=Qspval6k1*acc293(100)
      acc293(115)=Qspvae7l6*acc293(91)
      acc293(116)=Qspvak7k1*acc293(59)
      acc293(117)=Qspvak7k1*acc293(105)
      acc293(117)=acc293(103)+acc293(117)
      acc293(117)=Qspvak2e7*acc293(117)
      acc293(118)=Qspk1*acc293(101)
      acc293(119)=Qspl6*acc293(95)
      acc293(120)=Qspvak2l6*acc293(62)
      acc293(121)=Qspvak2k7*acc293(102)
      acc293(121)=acc293(86)+acc293(121)
      acc293(121)=Qspvae7k1*acc293(121)
      acc293(122)=Qspvak2l6*acc293(78)
      acc293(122)=acc293(93)+acc293(122)
      acc293(122)=Qspe7*acc293(122)
      acc293(108)=acc293(108)+acc293(109)+acc293(122)+acc293(121)+acc293(120)+a&
      &cc293(119)+acc293(118)+acc293(117)+acc293(116)+acc293(115)+acc293(114)+a&
      &cc293(113)+acc293(112)+acc293(111)+acc293(72)+acc293(110)
      acc293(108)=Qspvak4k3*acc293(108)
      acc293(109)=Qspvak4k1*acc293(67)
      acc293(110)=Qspvak4l6*acc293(81)
      acc293(111)=Qspvak1l6*acc293(27)
      acc293(112)=Qspval6k1*acc293(77)
      acc293(113)=Qspvae7l6*acc293(45)
      acc293(114)=Qspvak7k1*acc293(71)
      acc293(115)=Qspvak2e7*acc293(35)
      acc293(116)=Qspk1*acc293(82)
      acc293(117)=Qspl6*acc293(89)
      acc293(118)=Qspvak2l6*acc293(43)
      acc293(119)=Qspvak2k3*acc293(94)
      acc293(119)=acc293(58)+acc293(119)
      acc293(119)=Qspvae7k1*acc293(119)
      acc293(109)=acc293(119)+acc293(118)+acc293(117)+acc293(116)+acc293(115)+a&
      &cc293(114)+acc293(113)+acc293(112)+acc293(111)+acc293(110)+acc293(13)+ac&
      &c293(109)
      acc293(109)=Qspk2*acc293(109)
      acc293(110)=Qspl6-Qspk1
      acc293(111)=-acc293(10)*acc293(110)
      acc293(112)=Qspvak2k3*acc293(1)
      acc293(113)=Qspvak2l6*acc293(54)
      acc293(111)=acc293(113)+acc293(2)+acc293(112)+acc293(111)
      acc293(111)=Qspe7*acc293(111)
      acc293(112)=acc293(14)*acc293(110)
      acc293(113)=-acc293(8)*acc293(106)
      acc293(114)=Qspvak7k1*acc293(15)
      acc293(115)=Qspvak2k3*acc293(11)
      acc293(116)=Qspvak2l6*acc293(38)
      acc293(117)=Qspvae7k1*acc293(12)
      acc293(118)=Qspk2*acc293(4)
      acc293(119)=Qspe7*acc293(5)
      acc293(119)=acc293(3)+acc293(119)
      acc293(119)=QspQ*acc293(119)
      acc293(120)=Qspe7*acc293(17)
      acc293(120)=acc293(16)+acc293(120)
      acc293(120)=Qspvak2k1*acc293(120)
      acc293(111)=acc293(120)+acc293(119)+acc293(111)+acc293(118)+acc293(117)+a&
      &cc293(116)+acc293(115)+acc293(6)+acc293(114)+acc293(113)+acc293(112)
      acc293(111)=Qspvak2k1*acc293(111)
      acc293(112)=Qspvak1l6*acc293(26)
      acc293(113)=Qspval6k1*acc293(75)
      acc293(114)=Qspvae7l6*acc293(64)
      acc293(115)=Qspvak2e7*acc293(48)
      acc293(116)=Qspk1*acc293(61)
      acc293(117)=Qspl6*acc293(90)
      acc293(112)=-acc293(114)-acc293(112)-acc293(113)-acc293(115)+acc293(116)+&
      &acc293(117)-acc293(47)
      acc293(112)=acc293(112)*acc293(106)
      acc293(113)=Qspvak2k3*acc293(97)
      acc293(113)=acc293(113)-acc293(52)
      acc293(113)=-acc293(113)*acc293(106)
      acc293(114)=Qspvak2k3*acc293(96)
      acc293(115)=Qspvak2l6*acc293(65)
      acc293(113)=acc293(115)+acc293(51)+acc293(114)+acc293(113)
      acc293(113)=Qspvae7k1*acc293(113)
      acc293(110)=acc293(87)*acc293(110)
      acc293(114)=Qspvak2l6*acc293(36)
      acc293(115)=Qspk2*acc293(25)
      acc293(110)=acc293(115)+acc293(114)+acc293(53)+acc293(110)
      acc293(110)=Qspe7*acc293(110)
      acc293(114)=Qspvak4k1*acc293(92)
      acc293(115)=Qspvak4l6*acc293(80)
      acc293(114)=acc293(114)-acc293(115)
      acc293(115)=acc293(32)+acc293(114)
      acc293(115)=Qspk1*acc293(115)
      acc293(114)=acc293(33)-acc293(114)
      acc293(114)=Qspl6*acc293(114)
      acc293(106)=-acc293(56)*acc293(106)
      acc293(116)=Qspvak7k1*acc293(83)
      acc293(106)=acc293(49)+acc293(116)+acc293(106)
      acc293(106)=Qspvak2l6*acc293(106)
      acc293(116)=Qspvak2k3*acc293(99)
      acc293(116)=acc293(116)+acc293(69)
      acc293(116)=Qspvak7k1*acc293(116)
      acc293(117)=Qspvak7l6*acc293(68)
      acc293(118)=Qspvak2k7*acc293(76)
      acc293(119)=Qspvak1l6*acc293(23)
      acc293(120)=Qspvak2l5*acc293(50)
      acc293(121)=Qspval6k1*acc293(21)
      acc293(122)=Qspvae7l6*acc293(60)
      acc293(123)=Qspvak2e7*acc293(7)
      brack=acc293(18)+acc293(106)+acc293(107)+acc293(108)+acc293(109)+acc293(1&
      &10)+acc293(111)+acc293(112)+acc293(113)+acc293(114)+acc293(115)+acc293(1&
      &16)+acc293(117)+acc293(118)+acc293(119)+acc293(120)+acc293(121)+acc293(1&
      &22)+acc293(123)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram293_sign, shift => diagram293_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd293h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d293
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d293 = 0.0_ki
      d293 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d293, ki), aimag(d293), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd293h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d293
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d293 = 0.0_ki
      d293 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d293, ki), aimag(d293), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d293h3l1
