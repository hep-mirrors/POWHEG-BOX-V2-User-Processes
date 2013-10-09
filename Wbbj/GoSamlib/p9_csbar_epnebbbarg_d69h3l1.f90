module     p9_csbar_epnebbbarg_d69h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d69h3l1.f90
   ! generator: buildfortran.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd69h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc69(143)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k3
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspk7 = dotproduct(Q,k7)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      acc69(1)=abb69(7)
      acc69(2)=abb69(8)
      acc69(3)=abb69(9)
      acc69(4)=abb69(10)
      acc69(5)=abb69(11)
      acc69(6)=abb69(12)
      acc69(7)=abb69(13)
      acc69(8)=abb69(14)
      acc69(9)=abb69(15)
      acc69(10)=abb69(16)
      acc69(11)=abb69(17)
      acc69(12)=abb69(18)
      acc69(13)=abb69(19)
      acc69(14)=abb69(20)
      acc69(15)=abb69(21)
      acc69(16)=abb69(22)
      acc69(17)=abb69(23)
      acc69(18)=abb69(24)
      acc69(19)=abb69(25)
      acc69(20)=abb69(26)
      acc69(21)=abb69(27)
      acc69(22)=abb69(28)
      acc69(23)=abb69(29)
      acc69(24)=abb69(30)
      acc69(25)=abb69(31)
      acc69(26)=abb69(32)
      acc69(27)=abb69(33)
      acc69(28)=abb69(34)
      acc69(29)=abb69(35)
      acc69(30)=abb69(36)
      acc69(31)=abb69(37)
      acc69(32)=abb69(38)
      acc69(33)=abb69(39)
      acc69(34)=abb69(40)
      acc69(35)=abb69(41)
      acc69(36)=abb69(42)
      acc69(37)=abb69(43)
      acc69(38)=abb69(44)
      acc69(39)=abb69(45)
      acc69(40)=abb69(46)
      acc69(41)=abb69(47)
      acc69(42)=abb69(48)
      acc69(43)=abb69(49)
      acc69(44)=abb69(50)
      acc69(45)=abb69(51)
      acc69(46)=abb69(52)
      acc69(47)=abb69(53)
      acc69(48)=abb69(54)
      acc69(49)=abb69(55)
      acc69(50)=abb69(56)
      acc69(51)=abb69(57)
      acc69(52)=abb69(58)
      acc69(53)=abb69(59)
      acc69(54)=abb69(60)
      acc69(55)=abb69(61)
      acc69(56)=abb69(63)
      acc69(57)=abb69(64)
      acc69(58)=abb69(65)
      acc69(59)=abb69(67)
      acc69(60)=abb69(69)
      acc69(61)=abb69(70)
      acc69(62)=abb69(72)
      acc69(63)=abb69(73)
      acc69(64)=abb69(74)
      acc69(65)=abb69(75)
      acc69(66)=abb69(76)
      acc69(67)=abb69(77)
      acc69(68)=abb69(78)
      acc69(69)=abb69(79)
      acc69(70)=abb69(80)
      acc69(71)=abb69(81)
      acc69(72)=abb69(82)
      acc69(73)=abb69(83)
      acc69(74)=abb69(84)
      acc69(75)=abb69(85)
      acc69(76)=abb69(86)
      acc69(77)=abb69(87)
      acc69(78)=abb69(89)
      acc69(79)=abb69(90)
      acc69(80)=abb69(91)
      acc69(81)=abb69(92)
      acc69(82)=abb69(93)
      acc69(83)=abb69(96)
      acc69(84)=abb69(97)
      acc69(85)=abb69(99)
      acc69(86)=abb69(100)
      acc69(87)=abb69(101)
      acc69(88)=abb69(102)
      acc69(89)=abb69(103)
      acc69(90)=abb69(107)
      acc69(91)=abb69(109)
      acc69(92)=abb69(111)
      acc69(93)=abb69(113)
      acc69(94)=abb69(116)
      acc69(95)=abb69(117)
      acc69(96)=abb69(119)
      acc69(97)=abb69(120)
      acc69(98)=abb69(122)
      acc69(99)=abb69(125)
      acc69(100)=abb69(126)
      acc69(101)=abb69(130)
      acc69(102)=abb69(131)
      acc69(103)=abb69(132)
      acc69(104)=abb69(134)
      acc69(105)=abb69(136)
      acc69(106)=abb69(137)
      acc69(107)=abb69(138)
      acc69(108)=abb69(139)
      acc69(109)=abb69(140)
      acc69(110)=abb69(141)
      acc69(111)=abb69(143)
      acc69(112)=abb69(144)
      acc69(113)=abb69(146)
      acc69(114)=abb69(147)
      acc69(115)=abb69(149)
      acc69(116)=abb69(150)
      acc69(117)=abb69(152)
      acc69(118)=abb69(153)
      acc69(119)=abb69(154)
      acc69(120)=abb69(155)
      acc69(121)=abb69(156)
      acc69(122)=abb69(159)
      acc69(123)=abb69(161)
      acc69(124)=abb69(162)
      acc69(125)=abb69(163)
      acc69(126)=abb69(164)
      acc69(127)=abb69(167)
      acc69(128)=Qspl6+Qspl5
      acc69(129)=acc69(127)*acc69(128)
      acc69(130)=Qspvak3k1*acc69(121)
      acc69(131)=Qspk7*acc69(49)
      acc69(132)=Qspval5k1*acc69(84)
      acc69(133)=Qspval6k1*acc69(77)
      acc69(134)=Qspvak7k1*acc69(76)
      acc69(135)=Qspvae7k1*acc69(25)
      acc69(136)=Qspvak4k1*acc69(9)
      acc69(137)=-QspQ*acc69(47)
      acc69(138)=Qspk2*acc69(22)
      acc69(139)=Qspvak2k1*acc69(1)
      acc69(139)=acc69(18)+acc69(139)
      acc69(139)=Qspe7*acc69(139)
      acc69(129)=acc69(139)+acc69(138)+acc69(137)+acc69(136)+acc69(135)+acc69(1&
      &34)+acc69(133)+acc69(132)+acc69(131)+acc69(24)+acc69(130)+acc69(129)
      acc69(129)=Qspvak2l5*acc69(129)
      acc69(130)=acc69(119)*acc69(128)
      acc69(131)=Qspvak3k1*acc69(126)
      acc69(132)=Qspk7*acc69(87)
      acc69(133)=Qspval5k1*acc69(124)
      acc69(134)=Qspval6k1*acc69(123)
      acc69(135)=Qspvak7k1*acc69(122)
      acc69(136)=Qspvae7k1*acc69(120)
      acc69(137)=Qspvak4k1*acc69(3)
      acc69(138)=-QspQ*acc69(80)
      acc69(139)=Qspk2*acc69(118)
      acc69(140)=Qspvak2k1*acc69(56)
      acc69(140)=acc69(21)+acc69(140)
      acc69(140)=Qspe7*acc69(140)
      acc69(130)=acc69(140)+acc69(139)+acc69(138)+acc69(137)+acc69(136)+acc69(1&
      &35)+acc69(134)+acc69(133)+acc69(132)+acc69(13)+acc69(131)+acc69(130)
      acc69(130)=Qspvak2l6*acc69(130)
      acc69(131)=-acc69(69)*acc69(128)
      acc69(132)=Qspvak3k1*acc69(66)
      acc69(133)=Qspk7*acc69(26)
      acc69(134)=Qspval5k1*acc69(15)
      acc69(135)=Qspval6k1*acc69(51)
      acc69(136)=Qspvak7k1*acc69(50)
      acc69(137)=Qspvae7k1*acc69(37)
      acc69(138)=Qspvak4k1*acc69(75)
      acc69(139)=-acc69(38)*acc69(128)
      acc69(139)=acc69(32)+acc69(139)
      acc69(139)=Qspvak2k1*acc69(139)
      acc69(140)=Qspvak2k1*acc69(28)
      acc69(140)=acc69(16)+acc69(140)
      acc69(140)=QspQ*acc69(140)
      acc69(141)=Qspvak2k1*acc69(17)
      acc69(141)=acc69(27)+acc69(141)
      acc69(141)=Qspk2*acc69(141)
      acc69(142)=Qspvak2k1*acc69(5)
      acc69(142)=acc69(6)+acc69(142)
      acc69(142)=Qspe7*acc69(142)
      acc69(129)=acc69(130)+acc69(129)+acc69(142)+acc69(141)+acc69(140)+acc69(1&
      &39)+acc69(138)+acc69(137)+acc69(136)+acc69(135)+acc69(134)+acc69(133)+ac&
      &c69(4)+acc69(132)+acc69(131)
      acc69(129)=Qspvak4k3*acc69(129)
      acc69(130)=Qspk4+Qspk3
      acc69(131)=-acc69(100)*acc69(130)
      acc69(132)=Qspvak2k3*acc69(63)
      acc69(133)=Qspvak2k1*acc69(30)
      acc69(134)=-QspQ*acc69(70)
      acc69(135)=Qspk2*acc69(65)
      acc69(131)=acc69(135)+acc69(134)+acc69(133)+acc69(35)+acc69(132)+acc69(13&
      &1)
      acc69(131)=Qspe7*acc69(131)
      acc69(132)=Qspvae7k1*acc69(97)
      acc69(133)=-Qspvak4k1*acc69(121)
      acc69(132)=acc69(133)+acc69(62)+acc69(132)
      acc69(132)=QspQ*acc69(132)
      acc69(133)=Qspvak4k1*acc69(88)
      acc69(134)=Qspvae7k1*acc69(91)
      acc69(133)=acc69(133)+acc69(53)+acc69(134)
      acc69(133)=Qspk2*acc69(133)
      acc69(134)=-acc69(67)*acc69(130)
      acc69(135)=acc69(54)*acc69(128)
      acc69(136)=Qspk7*acc69(40)
      acc69(137)=-Qspval5k1*acc69(113)
      acc69(138)=Qspval6k1*acc69(111)
      acc69(139)=Qspvak7k1*acc69(103)
      acc69(140)=Qspvae7k1*acc69(64)
      acc69(141)=acc69(130)*Qspvak4k1
      acc69(142)=-acc69(88)*acc69(141)
      acc69(143)=Qspvak2k1*acc69(45)
      acc69(131)=acc69(131)+acc69(133)+acc69(132)+acc69(143)+acc69(142)+acc69(1&
      &40)+acc69(139)+acc69(138)+acc69(137)+acc69(57)+acc69(136)+acc69(135)+acc&
      &69(134)
      acc69(131)=Qspvak2l5*acc69(131)
      acc69(132)=acc69(110)*acc69(130)
      acc69(133)=Qspvak2k3*acc69(44)
      acc69(134)=Qspvak2k1*acc69(43)
      acc69(135)=QspQ*acc69(112)
      acc69(136)=Qspk2*acc69(85)
      acc69(132)=acc69(136)+acc69(135)+acc69(134)+acc69(46)+acc69(133)+acc69(13&
      &2)
      acc69(132)=Qspe7*acc69(132)
      acc69(133)=Qspvae7k1*acc69(114)
      acc69(134)=-Qspvak4k1*acc69(126)
      acc69(133)=acc69(134)+acc69(90)+acc69(133)
      acc69(133)=QspQ*acc69(133)
      acc69(134)=Qspvak4k1*acc69(125)
      acc69(135)=Qspvae7k1*acc69(98)
      acc69(134)=acc69(134)+acc69(7)+acc69(135)
      acc69(134)=Qspk2*acc69(134)
      acc69(135)=-acc69(101)*acc69(130)
      acc69(136)=acc69(96)*acc69(128)
      acc69(137)=Qspk7*acc69(81)
      acc69(138)=Qspval5k1*acc69(117)
      acc69(139)=-Qspval6k1*acc69(116)
      acc69(140)=Qspvak7k1*acc69(115)
      acc69(142)=Qspvae7k1*acc69(94)
      acc69(141)=-acc69(125)*acc69(141)
      acc69(143)=Qspvak2k1*acc69(48)
      acc69(132)=acc69(132)+acc69(134)+acc69(133)+acc69(143)+acc69(141)+acc69(1&
      &42)+acc69(140)+acc69(139)+acc69(138)+acc69(52)+acc69(137)+acc69(136)+acc&
      &69(135)
      acc69(132)=Qspvak2l6*acc69(132)
      acc69(133)=acc69(109)*acc69(130)
      acc69(134)=-acc69(107)*acc69(128)
      acc69(135)=Qspk7*acc69(95)
      acc69(136)=Qspval5k1*acc69(86)
      acc69(137)=Qspval6k1*acc69(105)
      acc69(138)=Qspvak7k1*acc69(93)
      acc69(139)=Qspvae7k1*acc69(61)
      acc69(140)=Qspvak4k1*acc69(78)
      acc69(141)=Qspvak2k1*acc69(31)
      acc69(142)=QspQ*acc69(72)
      acc69(143)=Qspk2*acc69(104)
      acc69(133)=acc69(143)+acc69(142)+acc69(141)+acc69(140)+acc69(139)+acc69(1&
      &38)+acc69(137)+acc69(136)+acc69(42)+acc69(135)+acc69(134)+acc69(133)
      acc69(133)=Qspk2*acc69(133)
      acc69(134)=-acc69(34)*acc69(130)
      acc69(135)=acc69(29)*acc69(128)
      acc69(136)=Qspk7*acc69(71)
      acc69(137)=Qspval5k1*acc69(106)
      acc69(138)=Qspval6k1*acc69(108)
      acc69(139)=Qspvak7k1*acc69(102)
      acc69(140)=Qspvae7k1*acc69(83)
      acc69(141)=-Qspvak4k1*acc69(20)
      acc69(142)=Qspvak2k1*acc69(10)
      acc69(143)=-QspQ*acc69(60)
      acc69(134)=acc69(143)+acc69(142)+acc69(141)+acc69(140)+acc69(139)+acc69(1&
      &38)+acc69(137)+acc69(2)+acc69(136)+acc69(135)+acc69(134)
      acc69(134)=QspQ*acc69(134)
      acc69(135)=acc69(92)*acc69(130)
      acc69(136)=Qspvak2k3*acc69(41)
      acc69(137)=Qspvak2k1*acc69(8)
      acc69(138)=Qspvak2k1*acc69(14)
      acc69(138)=acc69(11)+acc69(138)
      acc69(138)=QspQ*acc69(138)
      acc69(139)=Qspvak2k1*acc69(82)
      acc69(139)=acc69(58)+acc69(139)
      acc69(139)=Qspk2*acc69(139)
      acc69(135)=acc69(139)+acc69(138)+acc69(137)+acc69(33)+acc69(136)+acc69(13&
      &5)
      acc69(135)=Qspe7*acc69(135)
      acc69(136)=acc69(99)*acc69(128)
      acc69(136)=acc69(136)-acc69(79)
      acc69(136)=acc69(136)*acc69(130)
      acc69(137)=-acc69(73)*acc69(128)
      acc69(138)=Qspk7*acc69(74)
      acc69(139)=Qspval5k1*acc69(12)
      acc69(140)=Qspval6k1*acc69(19)
      acc69(141)=Qspvak7k1*acc69(89)
      acc69(142)=Qspvae7k1*acc69(59)
      acc69(130)=-acc69(68)*acc69(130)
      acc69(130)=acc69(39)+acc69(130)
      acc69(130)=Qspvak4k1*acc69(130)
      acc69(128)=acc69(55)*acc69(128)
      acc69(128)=acc69(23)+acc69(128)
      acc69(128)=Qspvak2k1*acc69(128)
      brack=acc69(36)+acc69(128)+acc69(129)+acc69(130)+acc69(131)+acc69(132)+ac&
      &c69(133)+acc69(134)+acc69(135)+acc69(136)+acc69(137)+acc69(138)+acc69(13&
      &9)+acc69(140)+acc69(141)+acc69(142)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram69_sign, shift => diagram69_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd69h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d69
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d69 = 0.0_ki
      d69 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d69, ki), aimag(d69), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd69h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d69
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d69 = 0.0_ki
      d69 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d69, ki), aimag(d69), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d69h3l1
