module     p0_dbaru_epnebbbarg_d240h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d240h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd240h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc240(135)
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4l5
      complex(ki) :: QspQ
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1l5
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      QspQ = dotproduct(Q,Q)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      acc240(1)=abb240(14)
      acc240(2)=abb240(15)
      acc240(3)=abb240(16)
      acc240(4)=abb240(17)
      acc240(5)=abb240(18)
      acc240(6)=abb240(19)
      acc240(7)=abb240(20)
      acc240(8)=abb240(21)
      acc240(9)=abb240(22)
      acc240(10)=abb240(23)
      acc240(11)=abb240(24)
      acc240(12)=abb240(25)
      acc240(13)=abb240(26)
      acc240(14)=abb240(27)
      acc240(15)=abb240(28)
      acc240(16)=abb240(29)
      acc240(17)=abb240(30)
      acc240(18)=abb240(31)
      acc240(19)=abb240(32)
      acc240(20)=abb240(33)
      acc240(21)=abb240(34)
      acc240(22)=abb240(35)
      acc240(23)=abb240(36)
      acc240(24)=abb240(37)
      acc240(25)=abb240(38)
      acc240(26)=abb240(39)
      acc240(27)=abb240(40)
      acc240(28)=abb240(41)
      acc240(29)=abb240(42)
      acc240(30)=abb240(43)
      acc240(31)=abb240(44)
      acc240(32)=abb240(45)
      acc240(33)=abb240(47)
      acc240(34)=abb240(48)
      acc240(35)=abb240(49)
      acc240(36)=abb240(50)
      acc240(37)=abb240(52)
      acc240(38)=abb240(53)
      acc240(39)=abb240(57)
      acc240(40)=abb240(59)
      acc240(41)=abb240(61)
      acc240(42)=abb240(63)
      acc240(43)=abb240(64)
      acc240(44)=abb240(65)
      acc240(45)=abb240(66)
      acc240(46)=abb240(67)
      acc240(47)=abb240(68)
      acc240(48)=abb240(69)
      acc240(49)=abb240(70)
      acc240(50)=abb240(72)
      acc240(51)=abb240(74)
      acc240(52)=abb240(75)
      acc240(53)=abb240(77)
      acc240(54)=abb240(78)
      acc240(55)=abb240(80)
      acc240(56)=abb240(81)
      acc240(57)=abb240(82)
      acc240(58)=abb240(83)
      acc240(59)=abb240(85)
      acc240(60)=abb240(87)
      acc240(61)=abb240(89)
      acc240(62)=abb240(101)
      acc240(63)=abb240(103)
      acc240(64)=abb240(104)
      acc240(65)=abb240(108)
      acc240(66)=abb240(109)
      acc240(67)=abb240(112)
      acc240(68)=abb240(114)
      acc240(69)=abb240(116)
      acc240(70)=abb240(118)
      acc240(71)=abb240(120)
      acc240(72)=abb240(121)
      acc240(73)=abb240(123)
      acc240(74)=abb240(124)
      acc240(75)=abb240(131)
      acc240(76)=abb240(132)
      acc240(77)=abb240(142)
      acc240(78)=abb240(149)
      acc240(79)=abb240(150)
      acc240(80)=abb240(156)
      acc240(81)=abb240(159)
      acc240(82)=abb240(172)
      acc240(83)=abb240(190)
      acc240(84)=abb240(192)
      acc240(85)=abb240(194)
      acc240(86)=abb240(211)
      acc240(87)=abb240(217)
      acc240(88)=abb240(237)
      acc240(89)=abb240(255)
      acc240(90)=abb240(267)
      acc240(91)=abb240(282)
      acc240(92)=abb240(325)
      acc240(93)=abb240(336)
      acc240(94)=abb240(339)
      acc240(95)=abb240(345)
      acc240(96)=abb240(383)
      acc240(97)=abb240(456)
      acc240(98)=abb240(464)
      acc240(99)=abb240(465)
      acc240(100)=abb240(469)
      acc240(101)=abb240(471)
      acc240(102)=Qspval6l5*acc240(35)
      acc240(103)=Qspvak7l5*acc240(34)
      acc240(104)=Qspvae7l5*acc240(21)
      acc240(105)=Qspl5*acc240(14)
      acc240(106)=Qspl6*acc240(23)
      acc240(107)=Qspk7*acc240(26)
      acc240(108)=Qspe7*acc240(8)
      acc240(109)=Qspvak2l5*acc240(17)
      acc240(110)=Qspvak2l6*acc240(33)
      acc240(111)=Qspvak2k7*acc240(27)
      acc240(112)=Qspval5l6*acc240(11)
      acc240(113)=Qspvak7l6*acc240(25)
      acc240(114)=Qspvak2e7*acc240(10)
      acc240(115)=Qspvae7l6*acc240(20)
      acc240(102)=acc240(115)+acc240(114)+acc240(113)+acc240(112)+acc240(111)+a&
      &cc240(110)+acc240(109)+acc240(108)+acc240(107)+acc240(106)+acc240(105)+a&
      &cc240(104)+acc240(103)+acc240(12)+acc240(102)
      acc240(102)=Qspvak1k2*acc240(102)
      acc240(103)=Qspval6l5*acc240(76)
      acc240(104)=Qspvak7l5*acc240(73)
      acc240(105)=Qspvae7l5*acc240(82)
      acc240(106)=Qspl5*acc240(69)
      acc240(107)=Qspl6*acc240(54)
      acc240(108)=Qspk7*acc240(64)
      acc240(109)=Qspe7*acc240(47)
      acc240(110)=Qspvak2l5*acc240(51)
      acc240(111)=Qspvak2l6*acc240(38)
      acc240(112)=Qspvak2k7*acc240(63)
      acc240(113)=Qspval5l6*acc240(41)
      acc240(114)=Qspvak7l6*acc240(71)
      acc240(115)=Qspvak2e7*acc240(66)
      acc240(116)=Qspvae7l6*acc240(80)
      acc240(103)=acc240(116)+acc240(115)+acc240(114)+acc240(113)+acc240(112)+a&
      &cc240(111)+acc240(110)+acc240(109)+acc240(108)+acc240(107)+acc240(106)+a&
      &cc240(105)+acc240(104)+acc240(29)+acc240(103)
      acc240(103)=Qspvak4k2*acc240(103)
      acc240(104)=Qspk7-Qspl6-Qspl5
      acc240(104)=acc240(36)*acc240(104)
      acc240(105)=Qspval6l5*acc240(60)
      acc240(106)=Qspvak7l5*acc240(59)
      acc240(107)=Qspvae7l5*acc240(39)
      acc240(108)=Qspe7*acc240(18)
      acc240(109)=Qspvak2l5*acc240(16)
      acc240(110)=Qspvak2l6*acc240(61)
      acc240(111)=Qspvak2k7*acc240(30)
      acc240(112)=Qspval5l6*acc240(57)
      acc240(113)=Qspvak7l6*acc240(58)
      acc240(114)=Qspvak2e7*acc240(56)
      acc240(115)=Qspvae7l6*acc240(52)
      acc240(104)=acc240(115)+acc240(114)+acc240(113)+acc240(112)+acc240(111)+a&
      &cc240(110)+acc240(109)+acc240(108)+acc240(107)+acc240(105)+acc240(106)+a&
      &cc240(104)
      acc240(104)=Qspvak1k3*acc240(104)
      acc240(105)=Qspl5*acc240(72)
      acc240(106)=Qspl6*acc240(96)
      acc240(107)=Qspk7*acc240(95)
      acc240(108)=Qspe7*acc240(86)
      acc240(109)=Qspvak2l5*acc240(45)
      acc240(110)=Qspvak2l6*acc240(81)
      acc240(111)=Qspvak2k7*acc240(13)
      acc240(112)=Qspval5l6*acc240(70)
      acc240(113)=Qspvak7l6*acc240(94)
      acc240(114)=Qspvak2e7*acc240(88)
      acc240(115)=Qspvae7l6*acc240(90)
      acc240(105)=acc240(111)+acc240(110)-acc240(109)+acc240(108)+acc240(105)-a&
      &cc240(106)-acc240(107)+acc240(112)+acc240(113)+acc240(114)-acc240(115)
      acc240(106)=acc240(105)-acc240(48)
      acc240(107)=Qspk4+Qspk3
      acc240(106)=acc240(106)*acc240(107)
      acc240(108)=Qspl5*acc240(99)
      acc240(109)=Qspl6*acc240(92)
      acc240(110)=Qspk7*acc240(101)
      acc240(111)=Qspe7*acc240(89)
      acc240(112)=Qspvak2l5*acc240(46)
      acc240(113)=Qspvak2l6*acc240(43)
      acc240(114)=Qspvak2k7*acc240(68)
      acc240(115)=Qspval5l6*acc240(98)
      acc240(116)=Qspvak7l6*acc240(97)
      acc240(117)=Qspvak2e7*acc240(91)
      acc240(118)=Qspvae7l6*acc240(100)
      acc240(108)=acc240(118)+acc240(117)+acc240(116)+acc240(115)+acc240(114)+a&
      &cc240(113)+acc240(112)+acc240(111)+acc240(110)+acc240(109)+acc240(84)+ac&
      &c240(108)
      acc240(108)=Qspvak4k3*acc240(108)
      acc240(107)=Qspk2-acc240(107)
      acc240(107)=acc240(32)*acc240(107)
      acc240(109)=Qspvak4k3*acc240(78)
      acc240(110)=Qspvak1k3*acc240(37)
      acc240(111)=Qspvak1k2*acc240(19)
      acc240(112)=Qspvak4k2*acc240(50)
      acc240(105)=acc240(112)+acc240(111)+acc240(110)+acc240(109)+acc240(31)+ac&
      &c240(107)-acc240(105)
      acc240(105)=Qspk2*acc240(105)
      acc240(107)=acc240(85)*Qspvak4l6
      acc240(109)=acc240(83)*Qspval6k3
      acc240(110)=acc240(79)*Qspvak7k3
      acc240(111)=acc240(65)*Qspvak4k7
      acc240(112)=acc240(62)*Qspval6k2
      acc240(113)=acc240(55)*Qspvak7k2
      acc240(114)=acc240(28)*Qspvak1k7
      acc240(115)=acc240(24)*Qspvak2k3
      acc240(116)=acc240(22)*Qspvak4l5
      acc240(117)=acc240(9)*QspQ
      acc240(118)=acc240(5)*Qspval5k3
      acc240(119)=acc240(4)*Qspvak1l6
      acc240(120)=acc240(2)*Qspval5k2
      acc240(121)=acc240(1)*Qspvak1l5
      acc240(122)=Qspval6l5*acc240(77)
      acc240(123)=Qspvak7l5*acc240(40)
      acc240(124)=Qspvae7l5*acc240(87)
      acc240(125)=Qspl5*acc240(3)
      acc240(126)=Qspl6*acc240(53)
      acc240(127)=Qspk7*acc240(15)
      acc240(128)=Qspe7*acc240(49)
      acc240(129)=Qspvak2l5*acc240(42)
      acc240(130)=Qspvak2l6*acc240(6)
      acc240(131)=Qspvak2k7*acc240(7)
      acc240(132)=Qspval5l6*acc240(67)
      acc240(133)=Qspvak7l6*acc240(93)
      acc240(134)=Qspvak2e7*acc240(74)
      acc240(135)=Qspvae7l6*acc240(75)
      brack=acc240(44)+acc240(102)+acc240(103)+acc240(104)+acc240(105)+acc240(1&
      &06)+acc240(107)+acc240(108)+acc240(109)+acc240(110)+acc240(111)+acc240(1&
      &12)+acc240(113)+acc240(114)+acc240(115)+acc240(116)+acc240(117)+acc240(1&
      &18)+acc240(119)+acc240(120)+acc240(121)+acc240(122)+acc240(123)+acc240(1&
      &24)+acc240(125)+acc240(126)+acc240(127)+acc240(128)+acc240(129)+acc240(1&
      &30)+acc240(131)+acc240(132)+acc240(133)+acc240(134)+acc240(135)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram240_sign, shift => diagram240_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd240h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d240
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d240 = 0.0_ki
      d240 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d240, ki), aimag(d240), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd240h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d240
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d240 = 0.0_ki
      d240 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d240, ki), aimag(d240), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d240h3l1
