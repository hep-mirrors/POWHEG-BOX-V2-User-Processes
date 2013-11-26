module     p1_dbarc_epnebbbarg_d70h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d70h3l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd70h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc70(140)
      complex(ki) :: Qspk1
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak1e7
      Qspk1 = dotproduct(Q,k1)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      QspQ = dotproduct(Q,Q)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      acc70(1)=abb70(7)
      acc70(2)=abb70(8)
      acc70(3)=abb70(9)
      acc70(4)=abb70(10)
      acc70(5)=abb70(11)
      acc70(6)=abb70(12)
      acc70(7)=abb70(13)
      acc70(8)=abb70(14)
      acc70(9)=abb70(15)
      acc70(10)=abb70(16)
      acc70(11)=abb70(17)
      acc70(12)=abb70(18)
      acc70(13)=abb70(19)
      acc70(14)=abb70(20)
      acc70(15)=abb70(21)
      acc70(16)=abb70(22)
      acc70(17)=abb70(23)
      acc70(18)=abb70(24)
      acc70(19)=abb70(25)
      acc70(20)=abb70(26)
      acc70(21)=abb70(27)
      acc70(22)=abb70(28)
      acc70(23)=abb70(29)
      acc70(24)=abb70(30)
      acc70(25)=abb70(31)
      acc70(26)=abb70(32)
      acc70(27)=abb70(33)
      acc70(28)=abb70(34)
      acc70(29)=abb70(35)
      acc70(30)=abb70(36)
      acc70(31)=abb70(37)
      acc70(32)=abb70(38)
      acc70(33)=abb70(39)
      acc70(34)=abb70(40)
      acc70(35)=abb70(41)
      acc70(36)=abb70(42)
      acc70(37)=abb70(43)
      acc70(38)=abb70(44)
      acc70(39)=abb70(45)
      acc70(40)=abb70(46)
      acc70(41)=abb70(47)
      acc70(42)=abb70(48)
      acc70(43)=abb70(49)
      acc70(44)=abb70(50)
      acc70(45)=abb70(51)
      acc70(46)=abb70(52)
      acc70(47)=abb70(53)
      acc70(48)=abb70(54)
      acc70(49)=abb70(55)
      acc70(50)=abb70(56)
      acc70(51)=abb70(57)
      acc70(52)=abb70(58)
      acc70(53)=abb70(59)
      acc70(54)=abb70(60)
      acc70(55)=abb70(61)
      acc70(56)=abb70(62)
      acc70(57)=abb70(63)
      acc70(58)=abb70(64)
      acc70(59)=abb70(65)
      acc70(60)=abb70(66)
      acc70(61)=abb70(67)
      acc70(62)=abb70(68)
      acc70(63)=abb70(69)
      acc70(64)=abb70(70)
      acc70(65)=abb70(71)
      acc70(66)=abb70(72)
      acc70(67)=abb70(73)
      acc70(68)=abb70(74)
      acc70(69)=abb70(75)
      acc70(70)=abb70(76)
      acc70(71)=abb70(77)
      acc70(72)=abb70(78)
      acc70(73)=abb70(79)
      acc70(74)=abb70(80)
      acc70(75)=abb70(81)
      acc70(76)=abb70(82)
      acc70(77)=abb70(83)
      acc70(78)=abb70(84)
      acc70(79)=abb70(87)
      acc70(80)=abb70(88)
      acc70(81)=abb70(89)
      acc70(82)=abb70(90)
      acc70(83)=abb70(91)
      acc70(84)=abb70(92)
      acc70(85)=abb70(93)
      acc70(86)=abb70(97)
      acc70(87)=abb70(99)
      acc70(88)=abb70(103)
      acc70(89)=abb70(104)
      acc70(90)=abb70(105)
      acc70(91)=abb70(106)
      acc70(92)=abb70(107)
      acc70(93)=abb70(108)
      acc70(94)=abb70(109)
      acc70(95)=abb70(110)
      acc70(96)=abb70(111)
      acc70(97)=abb70(113)
      acc70(98)=abb70(115)
      acc70(99)=abb70(116)
      acc70(100)=abb70(119)
      acc70(101)=abb70(120)
      acc70(102)=abb70(121)
      acc70(103)=abb70(122)
      acc70(104)=abb70(124)
      acc70(105)=abb70(125)
      acc70(106)=abb70(126)
      acc70(107)=abb70(129)
      acc70(108)=abb70(130)
      acc70(109)=abb70(131)
      acc70(110)=abb70(133)
      acc70(111)=abb70(135)
      acc70(112)=abb70(137)
      acc70(113)=abb70(138)
      acc70(114)=abb70(139)
      acc70(115)=abb70(141)
      acc70(116)=abb70(142)
      acc70(117)=abb70(144)
      acc70(118)=abb70(145)
      acc70(119)=abb70(146)
      acc70(120)=abb70(148)
      acc70(121)=abb70(149)
      acc70(122)=abb70(151)
      acc70(123)=abb70(152)
      acc70(124)=Qspk1+Qspl6+Qspl5
      acc70(125)=acc70(36)*acc70(124)
      acc70(126)=Qspvak3k2*acc70(91)
      acc70(127)=Qspval5k2*acc70(64)
      acc70(128)=Qspval6k2*acc70(67)
      acc70(129)=Qspk2*acc70(23)
      acc70(130)=Qspvak1k2*acc70(101)
      acc70(131)=Qspvak7k2*acc70(45)
      acc70(132)=Qspvak4k2*acc70(95)
      acc70(133)=Qspvak1k2*acc70(83)
      acc70(133)=acc70(8)+acc70(133)
      acc70(133)=Qspvak2l5*acc70(133)
      acc70(134)=Qspvak1k2*acc70(116)
      acc70(134)=acc70(5)+acc70(134)
      acc70(134)=Qspvak2l6*acc70(134)
      acc70(135)=QspQ*acc70(19)
      acc70(125)=acc70(135)+acc70(134)+acc70(133)+acc70(132)+acc70(131)+acc70(1&
      &30)+acc70(129)+acc70(128)+acc70(127)+acc70(11)+acc70(126)+acc70(125)
      acc70(125)=Qspvak4k3*acc70(125)
      acc70(126)=Qspk4+Qspk3
      acc70(127)=acc70(126)+Qspk7
      acc70(128)=-acc70(42)*acc70(127)
      acc70(129)=Qspvak1k3*acc70(41)
      acc70(130)=Qspvak1k7*acc70(58)
      acc70(131)=Qspvak7k2*acc70(96)
      acc70(132)=Qspvak4k2*acc70(32)
      acc70(128)=acc70(132)+acc70(131)+acc70(130)+acc70(1)+acc70(129)+acc70(128)
      acc70(128)=Qspvak2l5*acc70(128)
      acc70(127)=-acc70(103)*acc70(127)
      acc70(129)=Qspvak1k3*acc70(39)
      acc70(130)=Qspvak1k7*acc70(33)
      acc70(131)=Qspvak7k2*acc70(120)
      acc70(132)=Qspvak4k2*acc70(111)
      acc70(127)=acc70(132)+acc70(131)+acc70(130)+acc70(71)+acc70(129)+acc70(12&
      &7)
      acc70(127)=Qspvak2l6*acc70(127)
      acc70(129)=-Qspvak4k2*acc70(91)
      acc70(130)=Qspvak2l5*acc70(68)
      acc70(131)=Qspvak2l6*acc70(114)
      acc70(129)=acc70(131)+acc70(130)+acc70(16)+acc70(129)
      acc70(129)=QspQ*acc70(129)
      acc70(130)=-acc70(22)*acc70(126)
      acc70(131)=acc70(100)*acc70(124)
      acc70(132)=Qspvak1k3*acc70(37)
      acc70(133)=Qspvak1k7*acc70(72)
      acc70(134)=Qspval5k2*acc70(48)
      acc70(135)=Qspval6k2*acc70(46)
      acc70(136)=Qspk2*acc70(26)
      acc70(137)=Qspvak1k2*acc70(49)
      acc70(138)=Qspvak7k2*acc70(104)
      acc70(139)=-acc70(82)*acc70(126)
      acc70(139)=acc70(50)+acc70(139)
      acc70(139)=Qspvak4k2*acc70(139)
      acc70(140)=-Qspvak4k2*acc70(82)
      acc70(140)=-acc70(22)+acc70(140)
      acc70(140)=Qspk7*acc70(140)
      acc70(125)=acc70(125)+acc70(129)+acc70(127)+acc70(128)+acc70(140)+acc70(1&
      &39)+acc70(138)+acc70(137)+acc70(136)+acc70(135)+acc70(134)+acc70(133)+ac&
      &c70(12)+acc70(132)+acc70(131)+acc70(130)
      acc70(125)=Qspe7*acc70(125)
      acc70(127)=Qspvae7k2*acc70(70)
      acc70(128)=Qspvak1e7*acc70(86)
      acc70(129)=Qspvak4k2*acc70(27)
      acc70(127)=acc70(129)+acc70(128)+acc70(18)+acc70(127)
      acc70(127)=Qspvak2l5*acc70(127)
      acc70(128)=Qspvae7k2*acc70(115)
      acc70(129)=Qspvak1e7*acc70(119)
      acc70(130)=Qspvak4k2*acc70(118)
      acc70(128)=acc70(130)+acc70(129)+acc70(15)+acc70(128)
      acc70(128)=Qspvak2l6*acc70(128)
      acc70(129)=acc70(34)*acc70(126)
      acc70(130)=-acc70(63)*acc70(124)
      acc70(131)=Qspval5k2*acc70(110)
      acc70(132)=Qspval6k2*acc70(108)
      acc70(133)=Qspk2*acc70(14)
      acc70(134)=Qspvak1k2*acc70(76)
      acc70(135)=Qspvak7k2*acc70(77)
      acc70(136)=Qspvae7k2*acc70(88)
      acc70(137)=Qspvak1e7*acc70(31)
      acc70(138)=Qspvak4k2*acc70(38)
      acc70(139)=Qspk7*acc70(57)
      acc70(140)=QspQ*acc70(44)
      acc70(127)=acc70(140)+acc70(128)+acc70(127)+acc70(139)+acc70(138)+acc70(1&
      &37)+acc70(136)+acc70(135)+acc70(134)+acc70(133)+acc70(132)+acc70(131)+ac&
      &c70(10)+acc70(130)+acc70(129)
      acc70(127)=QspQ*acc70(127)
      acc70(128)=Qspvak7k2*acc70(28)
      acc70(129)=Qspvae7k2*acc70(13)
      acc70(130)=Qspvak1e7*acc70(21)
      acc70(128)=acc70(130)+acc70(129)+acc70(6)+acc70(128)
      acc70(128)=Qspvak2l5*acc70(128)
      acc70(129)=Qspvak7k2*acc70(121)
      acc70(130)=Qspvae7k2*acc70(40)
      acc70(131)=Qspvak1e7*acc70(106)
      acc70(129)=acc70(131)+acc70(130)+acc70(3)+acc70(129)
      acc70(129)=Qspvak2l6*acc70(129)
      acc70(130)=Qspk2*acc70(20)
      acc70(131)=Qspvak2l5*acc70(7)
      acc70(132)=Qspvak2l6*acc70(4)
      acc70(130)=acc70(132)+acc70(131)+acc70(9)+acc70(130)
      acc70(130)=QspQ*acc70(130)
      acc70(131)=-acc70(35)*acc70(124)
      acc70(132)=Qspvak3k2*acc70(79)
      acc70(133)=Qspval5k2*acc70(74)
      acc70(134)=Qspval6k2*acc70(47)
      acc70(135)=Qspk2*acc70(24)
      acc70(136)=Qspvak1k2*acc70(25)
      acc70(137)=Qspvak7k2*acc70(53)
      acc70(138)=Qspvae7k2*acc70(56)
      acc70(139)=Qspvak1e7*acc70(61)
      acc70(140)=Qspvak4k2*acc70(94)
      acc70(128)=acc70(130)+acc70(129)+acc70(128)+acc70(140)+acc70(139)+acc70(1&
      &38)+acc70(137)+acc70(136)+acc70(135)+acc70(134)+acc70(133)+acc70(2)+acc7&
      &0(132)+acc70(131)
      acc70(128)=Qspvak4k3*acc70(128)
      acc70(129)=-acc70(102)*acc70(124)
      acc70(130)=Qspval5k2*acc70(89)
      acc70(131)=Qspval6k2*acc70(90)
      acc70(132)=Qspk2*acc70(17)
      acc70(133)=Qspvak1k2*acc70(75)
      acc70(134)=Qspvak7k2*acc70(105)
      acc70(135)=Qspvae7k2*acc70(93)
      acc70(136)=Qspvak1e7*acc70(54)
      acc70(137)=Qspvak4k2*acc70(78)
      acc70(129)=acc70(137)+acc70(136)+acc70(135)+acc70(134)+acc70(133)+acc70(1&
      &32)+acc70(131)+acc70(130)+acc70(87)+acc70(129)
      acc70(129)=Qspk7*acc70(129)
      acc70(130)=Qspvae7k2*acc70(59)
      acc70(131)=Qspvak1e7*acc70(85)
      acc70(132)=Qspvak4k2*acc70(52)
      acc70(130)=acc70(132)+acc70(131)+acc70(30)+acc70(130)
      acc70(130)=Qspk7*acc70(130)
      acc70(131)=-acc70(51)*acc70(126)
      acc70(132)=Qspvak3k2*acc70(55)
      acc70(133)=Qspvak1e7*acc70(81)
      acc70(134)=Qspvak4k2*acc70(29)
      acc70(130)=acc70(130)+acc70(134)+acc70(133)+acc70(60)+acc70(132)+acc70(13&
      &1)
      acc70(130)=Qspvak2l5*acc70(130)
      acc70(131)=Qspvae7k2*acc70(113)
      acc70(132)=Qspvak1e7*acc70(117)
      acc70(133)=Qspvak4k2*acc70(123)
      acc70(131)=acc70(133)+acc70(132)+acc70(84)+acc70(131)
      acc70(131)=Qspk7*acc70(131)
      acc70(132)=-acc70(112)*acc70(126)
      acc70(133)=Qspvak3k2*acc70(66)
      acc70(134)=Qspvak1e7*acc70(97)
      acc70(135)=Qspvak4k2*acc70(122)
      acc70(131)=acc70(131)+acc70(135)+acc70(134)+acc70(69)+acc70(133)+acc70(13&
      &2)
      acc70(131)=Qspvak2l6*acc70(131)
      acc70(132)=acc70(62)*acc70(126)
      acc70(124)=acc70(99)*acc70(124)
      acc70(133)=Qspvak3k2*acc70(65)
      acc70(134)=Qspval5k2*acc70(109)
      acc70(135)=Qspval6k2*acc70(107)
      acc70(136)=Qspk2*acc70(43)
      acc70(137)=Qspvak1k2*acc70(73)
      acc70(138)=Qspvak1e7*acc70(98)
      acc70(126)=acc70(92)*acc70(126)
      acc70(126)=acc70(80)+acc70(126)
      acc70(126)=Qspvak4k2*acc70(126)
      brack=acc70(124)+acc70(125)+acc70(126)+acc70(127)+acc70(128)+acc70(129)+a&
      &cc70(130)+acc70(131)+acc70(132)+acc70(133)+acc70(134)+acc70(135)+acc70(1&
      &36)+acc70(137)+acc70(138)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram70_sign, shift => diagram70_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd70h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d70
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3-k2+k7+k4
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d70 = 0.0_ki
      d70 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d70, ki), aimag(d70), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd70h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d70
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3-k2+k7+k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d70 = 0.0_ki
      d70 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d70, ki), aimag(d70), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d70h3l1
