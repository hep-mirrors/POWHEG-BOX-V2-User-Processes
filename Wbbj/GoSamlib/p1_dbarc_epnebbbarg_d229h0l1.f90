module     p1_dbarc_epnebbbarg_d229h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d229h0l1.f90
   ! generator: buildfortran.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd229h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc229(126)
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1e7
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      acc229(1)=abb229(13)
      acc229(2)=abb229(14)
      acc229(3)=abb229(15)
      acc229(4)=abb229(16)
      acc229(5)=abb229(17)
      acc229(6)=abb229(18)
      acc229(7)=abb229(19)
      acc229(8)=abb229(20)
      acc229(9)=abb229(21)
      acc229(10)=abb229(22)
      acc229(11)=abb229(23)
      acc229(12)=abb229(24)
      acc229(13)=abb229(25)
      acc229(14)=abb229(26)
      acc229(15)=abb229(27)
      acc229(16)=abb229(28)
      acc229(17)=abb229(29)
      acc229(18)=abb229(30)
      acc229(19)=abb229(32)
      acc229(20)=abb229(33)
      acc229(21)=abb229(34)
      acc229(22)=abb229(35)
      acc229(23)=abb229(36)
      acc229(24)=abb229(37)
      acc229(25)=abb229(38)
      acc229(26)=abb229(39)
      acc229(27)=abb229(40)
      acc229(28)=abb229(41)
      acc229(29)=abb229(42)
      acc229(30)=abb229(43)
      acc229(31)=abb229(44)
      acc229(32)=abb229(45)
      acc229(33)=abb229(46)
      acc229(34)=abb229(47)
      acc229(35)=abb229(48)
      acc229(36)=abb229(49)
      acc229(37)=abb229(50)
      acc229(38)=abb229(51)
      acc229(39)=abb229(52)
      acc229(40)=abb229(53)
      acc229(41)=abb229(54)
      acc229(42)=abb229(55)
      acc229(43)=abb229(56)
      acc229(44)=abb229(57)
      acc229(45)=abb229(58)
      acc229(46)=abb229(59)
      acc229(47)=abb229(60)
      acc229(48)=abb229(61)
      acc229(49)=abb229(62)
      acc229(50)=abb229(63)
      acc229(51)=abb229(64)
      acc229(52)=abb229(66)
      acc229(53)=abb229(67)
      acc229(54)=abb229(68)
      acc229(55)=abb229(70)
      acc229(56)=abb229(72)
      acc229(57)=abb229(73)
      acc229(58)=abb229(74)
      acc229(59)=abb229(76)
      acc229(60)=abb229(79)
      acc229(61)=abb229(81)
      acc229(62)=abb229(86)
      acc229(63)=abb229(87)
      acc229(64)=abb229(89)
      acc229(65)=abb229(90)
      acc229(66)=abb229(91)
      acc229(67)=abb229(92)
      acc229(68)=abb229(94)
      acc229(69)=abb229(95)
      acc229(70)=abb229(108)
      acc229(71)=abb229(115)
      acc229(72)=abb229(117)
      acc229(73)=abb229(118)
      acc229(74)=abb229(133)
      acc229(75)=abb229(134)
      acc229(76)=abb229(139)
      acc229(77)=abb229(141)
      acc229(78)=abb229(143)
      acc229(79)=abb229(147)
      acc229(80)=abb229(152)
      acc229(81)=abb229(154)
      acc229(82)=abb229(158)
      acc229(83)=abb229(159)
      acc229(84)=abb229(165)
      acc229(85)=abb229(166)
      acc229(86)=abb229(175)
      acc229(87)=abb229(179)
      acc229(88)=abb229(182)
      acc229(89)=abb229(186)
      acc229(90)=abb229(197)
      acc229(91)=abb229(206)
      acc229(92)=abb229(223)
      acc229(93)=abb229(229)
      acc229(94)=abb229(243)
      acc229(95)=abb229(245)
      acc229(96)=abb229(248)
      acc229(97)=abb229(253)
      acc229(98)=abb229(256)
      acc229(99)=abb229(385)
      acc229(100)=abb229(526)
      acc229(101)=abb229(712)
      acc229(102)=Qspl5*acc229(75)
      acc229(103)=Qspl6*acc229(100)
      acc229(104)=Qspk7*acc229(101)
      acc229(105)=Qspe7*acc229(99)
      acc229(106)=Qspval5k2*acc229(65)
      acc229(107)=Qspval5l6*acc229(27)
      acc229(108)=Qspval5k7*acc229(91)
      acc229(109)=Qspval6k2*acc229(89)
      acc229(110)=Qspval6l5*acc229(78)
      acc229(111)=Qspval6k7*acc229(83)
      acc229(112)=Qspvak7k2*acc229(98)
      acc229(113)=Qspvae7k2*acc229(96)
      acc229(114)=Qspval5e7*acc229(95)
      acc229(115)=Qspval6e7*acc229(93)
      acc229(102)=-acc229(111)-acc229(110)+acc229(109)-acc229(108)-acc229(105)-&
      &acc229(104)-acc229(103)+acc229(102)+acc229(106)+acc229(107)+acc229(112)-&
      &acc229(113)+acc229(114)+acc229(115)
      acc229(103)=acc229(102)+acc229(97)
      acc229(104)=Qspk4+Qspk3
      acc229(103)=acc229(103)*acc229(104)
      acc229(105)=Qspl5*acc229(33)
      acc229(106)=Qspl6*acc229(31)
      acc229(107)=Qspk7*acc229(23)
      acc229(108)=Qspe7*acc229(21)
      acc229(109)=Qspval5k2*acc229(51)
      acc229(110)=Qspval5l6*acc229(18)
      acc229(111)=Qspval5k7*acc229(50)
      acc229(112)=Qspval6k2*acc229(45)
      acc229(113)=Qspval6l5*acc229(39)
      acc229(114)=Qspval6k7*acc229(49)
      acc229(115)=Qspvak7k2*acc229(42)
      acc229(116)=Qspvae7k2*acc229(8)
      acc229(117)=Qspval5e7*acc229(40)
      acc229(118)=Qspval6e7*acc229(35)
      acc229(105)=acc229(118)+acc229(117)+acc229(116)+acc229(115)+acc229(114)+a&
      &cc229(113)+acc229(112)+acc229(111)+acc229(110)+acc229(109)+acc229(108)+a&
      &cc229(107)+acc229(106)+acc229(3)+acc229(105)
      acc229(105)=Qspvak1k2*acc229(105)
      acc229(106)=Qspl5*acc229(57)
      acc229(107)=Qspl6*acc229(55)
      acc229(108)=Qspk7*acc229(53)
      acc229(109)=Qspe7*acc229(47)
      acc229(110)=Qspval5k2*acc229(69)
      acc229(111)=Qspval5l6*acc229(52)
      acc229(112)=Qspval5k7*acc229(68)
      acc229(113)=Qspval6k2*acc229(67)
      acc229(114)=Qspval6l5*acc229(66)
      acc229(115)=Qspval6k7*acc229(64)
      acc229(116)=Qspvak7k2*acc229(63)
      acc229(117)=Qspvae7k2*acc229(61)
      acc229(118)=Qspval5e7*acc229(60)
      acc229(119)=Qspval6e7*acc229(59)
      acc229(106)=acc229(119)+acc229(118)+acc229(117)+acc229(116)+acc229(115)+a&
      &cc229(114)+acc229(113)+acc229(112)+acc229(111)+acc229(110)+acc229(109)+a&
      &cc229(108)+acc229(107)+acc229(34)+acc229(106)
      acc229(106)=Qspvak1k3*acc229(106)
      acc229(107)=Qspl5*acc229(17)
      acc229(108)=Qspl6*acc229(10)
      acc229(109)=Qspk7*acc229(9)
      acc229(110)=Qspe7*acc229(4)
      acc229(111)=Qspval5k2*acc229(5)
      acc229(112)=Qspval5l6*acc229(48)
      acc229(113)=Qspval5k7*acc229(46)
      acc229(114)=Qspval6k2*acc229(44)
      acc229(115)=Qspval6l5*acc229(41)
      acc229(116)=Qspval6k7*acc229(36)
      acc229(117)=Qspvak7k2*acc229(30)
      acc229(118)=Qspvae7k2*acc229(12)
      acc229(119)=Qspval5e7*acc229(32)
      acc229(120)=Qspval6e7*acc229(20)
      acc229(107)=acc229(120)+acc229(119)+acc229(118)+acc229(117)+acc229(116)+a&
      &cc229(115)+acc229(114)+acc229(113)+acc229(112)+acc229(111)+acc229(110)+a&
      &cc229(109)+acc229(108)+acc229(1)+acc229(107)
      acc229(107)=Qspvak4k2*acc229(107)
      acc229(108)=Qspl5*acc229(80)
      acc229(109)=Qspl6*acc229(79)
      acc229(110)=Qspk7*acc229(74)
      acc229(111)=Qspe7*acc229(38)
      acc229(112)=Qspval5k2*acc229(29)
      acc229(113)=Qspval5l6*acc229(90)
      acc229(114)=Qspval5k7*acc229(87)
      acc229(115)=Qspval6k2*acc229(72)
      acc229(116)=Qspval6l5*acc229(77)
      acc229(117)=Qspval6k7*acc229(82)
      acc229(118)=Qspvak7k2*acc229(86)
      acc229(119)=Qspvae7k2*acc229(81)
      acc229(120)=Qspval5e7*acc229(70)
      acc229(121)=Qspval6e7*acc229(62)
      acc229(108)=acc229(121)+acc229(120)+acc229(119)+acc229(118)+acc229(117)+a&
      &cc229(116)+acc229(115)+acc229(114)+acc229(113)+acc229(112)+acc229(111)+a&
      &cc229(110)+acc229(109)+acc229(2)+acc229(108)
      acc229(108)=Qspvak4k3*acc229(108)
      acc229(104)=-Qspk2+acc229(104)
      acc229(104)=acc229(24)*acc229(104)
      acc229(109)=Qspvak1k2*acc229(15)
      acc229(110)=Qspvak1k3*acc229(43)
      acc229(111)=Qspvak4k2*acc229(16)
      acc229(112)=Qspvak4k3*acc229(28)
      acc229(102)=acc229(112)+acc229(111)+acc229(110)+acc229(109)+acc229(13)+ac&
      &c229(104)-acc229(102)
      acc229(102)=Qspk2*acc229(102)
      acc229(104)=Qspl6+Qspl5
      acc229(104)=acc229(84)*acc229(104)
      acc229(109)=acc229(85)*QspQ
      acc229(110)=acc229(76)*Qspk1
      acc229(111)=acc229(37)*Qspvak1l6
      acc229(112)=acc229(19)*Qspvak1k7
      acc229(113)=acc229(14)*Qspvak1l5
      acc229(114)=acc229(7)*Qspvak1e7
      acc229(115)=Qspk7*acc229(94)
      acc229(116)=Qspe7*acc229(56)
      acc229(117)=Qspval5k2*acc229(26)
      acc229(118)=Qspval5l6*acc229(6)
      acc229(119)=Qspval5k7*acc229(25)
      acc229(120)=Qspval6k2*acc229(73)
      acc229(121)=Qspval6l5*acc229(11)
      acc229(122)=Qspval6k7*acc229(71)
      acc229(123)=Qspvak7k2*acc229(54)
      acc229(124)=Qspvae7k2*acc229(22)
      acc229(125)=Qspval5e7*acc229(92)
      acc229(126)=Qspval6e7*acc229(88)
      brack=acc229(58)+acc229(102)+acc229(103)+acc229(104)+acc229(105)+acc229(1&
      &06)+acc229(107)+acc229(108)+acc229(109)+acc229(110)+acc229(111)+acc229(1&
      &12)+acc229(113)+acc229(114)+acc229(115)+acc229(116)+acc229(117)+acc229(1&
      &18)+acc229(119)+acc229(120)+acc229(121)+acc229(122)+acc229(123)+acc229(1&
      &24)+acc229(125)+acc229(126)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram229_sign, shift => diagram229_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd229h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d229
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d229 = 0.0_ki
      d229 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d229, ki), aimag(d229), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd229h0
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
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d229h0l1
