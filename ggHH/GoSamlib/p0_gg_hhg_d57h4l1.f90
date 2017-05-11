module     p0_gg_hhg_d57h4l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d57h4l1.f90
   ! generator: buildfortran.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd57h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc57(136)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk5
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspl3
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak1k2
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk5 = dotproduct(Q,k5)
      Qspl4 = dotproduct(Q,l4)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspl3 = dotproduct(Q,l3)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc57(1)=abb57(9)
      acc57(2)=abb57(10)
      acc57(3)=abb57(11)
      acc57(4)=abb57(12)
      acc57(5)=abb57(13)
      acc57(6)=abb57(14)
      acc57(7)=abb57(15)
      acc57(8)=abb57(16)
      acc57(9)=abb57(17)
      acc57(10)=abb57(18)
      acc57(11)=abb57(19)
      acc57(12)=abb57(20)
      acc57(13)=abb57(21)
      acc57(14)=abb57(22)
      acc57(15)=abb57(23)
      acc57(16)=abb57(24)
      acc57(17)=abb57(25)
      acc57(18)=abb57(26)
      acc57(19)=abb57(27)
      acc57(20)=abb57(28)
      acc57(21)=abb57(29)
      acc57(22)=abb57(30)
      acc57(23)=abb57(31)
      acc57(24)=abb57(32)
      acc57(25)=abb57(33)
      acc57(26)=abb57(34)
      acc57(27)=abb57(35)
      acc57(28)=abb57(36)
      acc57(29)=abb57(37)
      acc57(30)=abb57(38)
      acc57(31)=abb57(39)
      acc57(32)=abb57(40)
      acc57(33)=abb57(41)
      acc57(34)=abb57(42)
      acc57(35)=abb57(43)
      acc57(36)=abb57(44)
      acc57(37)=abb57(45)
      acc57(38)=abb57(46)
      acc57(39)=abb57(47)
      acc57(40)=abb57(48)
      acc57(41)=abb57(49)
      acc57(42)=abb57(50)
      acc57(43)=abb57(51)
      acc57(44)=abb57(52)
      acc57(45)=abb57(53)
      acc57(46)=abb57(54)
      acc57(47)=abb57(55)
      acc57(48)=abb57(56)
      acc57(49)=abb57(57)
      acc57(50)=abb57(58)
      acc57(51)=abb57(59)
      acc57(52)=abb57(60)
      acc57(53)=abb57(61)
      acc57(54)=abb57(62)
      acc57(55)=abb57(63)
      acc57(56)=abb57(64)
      acc57(57)=abb57(65)
      acc57(58)=abb57(66)
      acc57(59)=abb57(67)
      acc57(60)=abb57(68)
      acc57(61)=abb57(69)
      acc57(62)=abb57(70)
      acc57(63)=abb57(73)
      acc57(64)=abb57(75)
      acc57(65)=abb57(76)
      acc57(66)=abb57(77)
      acc57(67)=abb57(78)
      acc57(68)=abb57(79)
      acc57(69)=abb57(80)
      acc57(70)=abb57(82)
      acc57(71)=abb57(83)
      acc57(72)=abb57(85)
      acc57(73)=abb57(86)
      acc57(74)=abb57(87)
      acc57(75)=abb57(90)
      acc57(76)=abb57(95)
      acc57(77)=abb57(96)
      acc57(78)=abb57(97)
      acc57(79)=abb57(98)
      acc57(80)=abb57(100)
      acc57(81)=abb57(101)
      acc57(82)=abb57(102)
      acc57(83)=abb57(106)
      acc57(84)=abb57(108)
      acc57(85)=abb57(109)
      acc57(86)=abb57(110)
      acc57(87)=abb57(111)
      acc57(88)=abb57(112)
      acc57(89)=abb57(113)
      acc57(90)=abb57(114)
      acc57(91)=abb57(117)
      acc57(92)=abb57(121)
      acc57(93)=abb57(123)
      acc57(94)=abb57(124)
      acc57(95)=abb57(125)
      acc57(96)=abb57(126)
      acc57(97)=abb57(127)
      acc57(98)=abb57(128)
      acc57(99)=abb57(133)
      acc57(100)=abb57(137)
      acc57(101)=abb57(138)
      acc57(102)=abb57(142)
      acc57(103)=abb57(143)
      acc57(104)=abb57(145)
      acc57(105)=abb57(148)
      acc57(106)=abb57(149)
      acc57(107)=abb57(150)
      acc57(108)=abb57(152)
      acc57(109)=abb57(153)
      acc57(110)=abb57(154)
      acc57(111)=abb57(156)
      acc57(112)=abb57(158)
      acc57(113)=abb57(159)
      acc57(114)=abb57(160)
      acc57(115)=abb57(174)
      acc57(116)=abb57(176)
      acc57(117)=Qspvak2k1*acc57(52)
      acc57(118)=Qspk5*acc57(67)
      acc57(119)=Qspl4*acc57(85)
      acc57(120)=Qspvak1k5*acc57(26)
      acc57(121)=Qspvak2k5*acc57(37)
      acc57(122)=Qspl3*acc57(87)
      acc57(123)=Qspk1*acc57(76)
      acc57(124)=Qspk2*acc57(78)
      acc57(117)=acc57(124)+acc57(123)+acc57(122)+acc57(121)+acc57(120)+acc57(1&
      &19)+acc57(118)+acc57(35)+acc57(117)
      acc57(117)=Qspk2*acc57(117)
      acc57(118)=Qspk5*acc57(9)
      acc57(119)=Qspl4*acc57(27)
      acc57(120)=Qspvak2k5*acc57(43)
      acc57(121)=Qspl3*acc57(44)
      acc57(122)=Qspk1*acc57(72)
      acc57(123)=Qspk2*acc57(4)
      acc57(124)=QspQ*acc57(23)
      acc57(118)=acc57(124)+acc57(123)+acc57(122)+acc57(121)+acc57(120)+acc57(1&
      &19)+acc57(2)+acc57(118)
      acc57(118)=QspQ*acc57(118)
      acc57(119)=Qspvak2k1*acc57(54)
      acc57(120)=Qspvak2l3*acc57(45)
      acc57(121)=Qspval3k5*acc57(66)
      acc57(122)=Qspvak1k5*acc57(15)
      acc57(123)=Qspvak2k5*acc57(11)
      acc57(124)=Qspk2*acc57(56)
      acc57(119)=acc57(124)+acc57(123)+acc57(122)+acc57(121)+acc57(120)+acc57(2&
      &0)+acc57(119)
      acc57(119)=Qspvak5k2*acc57(119)
      acc57(120)=Qspvak5l4*acc57(74)
      acc57(121)=-acc57(68)*Qspvak5k1
      acc57(122)=Qspval4k2*acc57(17)
      acc57(120)=acc57(122)+acc57(121)+acc57(1)+acc57(120)
      acc57(120)=Qspvak2k5*acc57(120)
      acc57(121)=Qspvak2k1*acc57(49)
      acc57(122)=Qspk5*acc57(113)
      acc57(123)=Qspvak1k5*acc57(42)
      acc57(121)=acc57(123)+acc57(122)+acc57(83)+acc57(121)
      acc57(121)=Qspl3*acc57(121)
      acc57(122)=Qspk5*acc57(116)
      acc57(123)=Qspl3*acc57(114)
      acc57(123)=acc57(123)+acc57(89)+acc57(122)
      acc57(123)=Qspk1*acc57(123)
      acc57(124)=Qspval4k5*acc57(80)
      acc57(125)=Qspvak5k1*acc57(62)
      acc57(126)=Qspvak5l4*acc57(73)
      acc57(127)=Qspval3k2*acc57(22)
      acc57(128)=Qspvak5l3*acc57(77)
      acc57(129)=Qspvak2k1*acc57(46)
      acc57(130)=Qspval4k2*acc57(86)
      acc57(131)=Qspvak2l4*acc57(18)
      acc57(132)=Qspvak2l3*acc57(25)
      acc57(133)=Qspval3k5*acc57(55)
      acc57(134)=Qspk5*acc57(21)
      acc57(122)=acc57(115)-acc57(122)
      acc57(122)=Qspl4*acc57(122)
      acc57(135)=Qspvak1k5*acc57(19)
      acc57(136)=Qspvak2k5*acc57(61)
      acc57(136)=acc57(38)+acc57(136)
      acc57(136)=Qspvak1k2*acc57(136)
      acc57(117)=acc57(136)+acc57(119)+acc57(118)+acc57(117)+acc57(123)+acc57(1&
      &21)+acc57(120)+acc57(135)+acc57(122)+acc57(134)+acc57(133)+acc57(132)+ac&
      &c57(131)+acc57(130)+acc57(129)+acc57(128)+acc57(127)+acc57(126)+acc57(12&
      &5)+acc57(3)+acc57(124)
      acc57(117)=Qspvak1k2*acc57(117)
      acc57(118)=Qspval3k2*acc57(57)
      acc57(119)=Qspvak5l3*acc57(50)
      acc57(120)=Qspvak2l3*acc57(107)
      acc57(121)=Qspval3k5*acc57(32)
      acc57(122)=Qspk5*acc57(14)
      acc57(123)=Qspl4*acc57(53)
      acc57(124)=Qspvak1k5*acc57(105)
      acc57(125)=Qspval4k2*acc57(70)
      acc57(125)=acc57(103)+acc57(125)
      acc57(125)=Qspvak2k5*acc57(125)
      acc57(126)=Qspl3*acc57(58)
      acc57(127)=Qspk1*acc57(36)
      acc57(128)=Qspk2*acc57(28)
      acc57(129)=QspQ*acc57(30)
      acc57(118)=acc57(129)+acc57(128)+acc57(127)+acc57(126)+acc57(125)+acc57(1&
      &24)+acc57(123)+acc57(122)+acc57(121)+acc57(120)+acc57(119)+acc57(8)+acc5&
      &7(118)
      acc57(118)=QspQ*acc57(118)
      acc57(119)=Qspvak2l3*acc57(110)
      acc57(120)=Qspval3k5*acc57(96)
      acc57(121)=Qspl4*acc57(12)
      acc57(122)=Qspvak1k5*acc57(112)
      acc57(123)=Qspvak2k5*acc57(68)
      acc57(124)=Qspl3*acc57(93)
      acc57(125)=Qspk1*acc57(97)
      acc57(126)=Qspk2*acc57(94)
      acc57(127)=QspQ*acc57(48)
      acc57(119)=acc57(127)+acc57(126)+acc57(125)+acc57(124)+acc57(123)+acc57(1&
      &22)+acc57(121)+acc57(120)+acc57(6)+acc57(119)
      acc57(119)=QspQ*acc57(119)
      acc57(120)=Qspvak2l3*acc57(69)
      acc57(121)=Qspval3k5*acc57(102)
      acc57(122)=Qspvak1k5*acc57(111)
      acc57(123)=Qspl3*acc57(31)
      acc57(120)=acc57(123)+acc57(122)+acc57(121)+acc57(10)+acc57(120)
      acc57(120)=Qspk1*acc57(120)
      acc57(121)=Qspvak2l4*acc57(41)
      acc57(122)=Qspvak2l3*acc57(7)
      acc57(123)=Qspval3k5*acc57(101)
      acc57(124)=Qspl4*acc57(95)
      acc57(125)=Qspvak1k5*acc57(40)
      acc57(126)=Qspvak2k5*acc57(88)
      acc57(127)=Qspl3*acc57(98)
      acc57(128)=Qspk1*acc57(99)
      acc57(128)=acc57(79)+acc57(128)
      acc57(128)=Qspk2*acc57(128)
      acc57(119)=acc57(119)+acc57(128)+acc57(120)+acc57(127)+acc57(126)+acc57(1&
      &25)+acc57(124)+acc57(123)+acc57(122)+acc57(60)+acc57(121)
      acc57(119)=Qspvak5k2*acc57(119)
      acc57(120)=Qspvak2l3*acc57(92)
      acc57(121)=Qspval3k5*acc57(47)
      acc57(122)=Qspk5*acc57(90)
      acc57(123)=Qspvak1k5*acc57(34)
      acc57(124)=Qspl3*acc57(91)
      acc57(120)=acc57(124)+acc57(123)+acc57(122)+acc57(121)+acc57(16)+acc57(12&
      &0)
      acc57(120)=Qspk1*acc57(120)
      acc57(121)=Qspvak2l4*acc57(109)
      acc57(122)=Qspl4*acc57(81)
      acc57(123)=Qspl3*acc57(84)
      acc57(124)=Qspk1*acc57(75)
      acc57(125)=Qspk2*acc57(51)
      acc57(121)=acc57(125)+acc57(124)+acc57(123)+acc57(122)+acc57(39)+acc57(12&
      &1)
      acc57(121)=Qspk2*acc57(121)
      acc57(122)=-Qspvak2l4*acc57(108)
      acc57(123)=Qspl4*acc57(71)
      acc57(122)=acc57(123)+acc57(5)+acc57(122)
      acc57(122)=Qspl3*acc57(122)
      acc57(123)=Qspval4k5*acc57(100)
      acc57(124)=Qspval3k2*acc57(63)
      acc57(125)=Qspvak5l3*acc57(24)
      acc57(126)=Qspvak2l4*acc57(59)
      acc57(127)=Qspvak2l3*acc57(82)
      acc57(128)=Qspval3k5*acc57(29)
      acc57(129)=Qspk5*acc57(65)
      acc57(130)=Qspl4*acc57(64)
      acc57(131)=Qspvak1k5*acc57(33)
      acc57(132)=Qspval4k2*acc57(106)
      acc57(132)=acc57(104)+acc57(132)
      acc57(132)=Qspvak2k5*acc57(132)
      brack=acc57(13)+acc57(117)+acc57(118)+acc57(119)+acc57(120)+acc57(121)+ac&
      &c57(122)+acc57(123)+acc57(124)+acc57(125)+acc57(126)+acc57(127)+acc57(12&
      &8)+acc57(129)+acc57(130)+acc57(131)+acc57(132)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd57h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d57
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d57 = 0.0_ki
      d57 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d57, ki), aimag(d57), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d57h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd57h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d57
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d57 = 0.0_ki
      d57 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d57, ki), aimag(d57), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d57h4l1
