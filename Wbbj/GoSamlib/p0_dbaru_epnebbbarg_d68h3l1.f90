module     p0_dbaru_epnebbbarg_d68h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d68h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd68h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc68(115)
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      QspQ = dotproduct(Q,Q)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      acc68(1)=abb68(8)
      acc68(2)=abb68(9)
      acc68(3)=abb68(10)
      acc68(4)=abb68(11)
      acc68(5)=abb68(12)
      acc68(6)=abb68(13)
      acc68(7)=abb68(14)
      acc68(8)=abb68(15)
      acc68(9)=abb68(16)
      acc68(10)=abb68(17)
      acc68(11)=abb68(18)
      acc68(12)=abb68(19)
      acc68(13)=abb68(20)
      acc68(14)=abb68(21)
      acc68(15)=abb68(22)
      acc68(16)=abb68(23)
      acc68(17)=abb68(24)
      acc68(18)=abb68(25)
      acc68(19)=abb68(26)
      acc68(20)=abb68(27)
      acc68(21)=abb68(28)
      acc68(22)=abb68(29)
      acc68(23)=abb68(30)
      acc68(24)=abb68(31)
      acc68(25)=abb68(32)
      acc68(26)=abb68(33)
      acc68(27)=abb68(34)
      acc68(28)=abb68(35)
      acc68(29)=abb68(36)
      acc68(30)=abb68(37)
      acc68(31)=abb68(38)
      acc68(32)=abb68(39)
      acc68(33)=abb68(40)
      acc68(34)=abb68(41)
      acc68(35)=abb68(42)
      acc68(36)=abb68(43)
      acc68(37)=abb68(44)
      acc68(38)=abb68(45)
      acc68(39)=abb68(46)
      acc68(40)=abb68(47)
      acc68(41)=abb68(48)
      acc68(42)=abb68(49)
      acc68(43)=abb68(50)
      acc68(44)=abb68(51)
      acc68(45)=abb68(52)
      acc68(46)=abb68(53)
      acc68(47)=abb68(54)
      acc68(48)=abb68(55)
      acc68(49)=abb68(56)
      acc68(50)=abb68(57)
      acc68(51)=abb68(58)
      acc68(52)=abb68(60)
      acc68(53)=abb68(61)
      acc68(54)=abb68(62)
      acc68(55)=abb68(63)
      acc68(56)=abb68(64)
      acc68(57)=abb68(65)
      acc68(58)=abb68(66)
      acc68(59)=abb68(67)
      acc68(60)=abb68(68)
      acc68(61)=abb68(69)
      acc68(62)=abb68(70)
      acc68(63)=abb68(71)
      acc68(64)=abb68(72)
      acc68(65)=abb68(74)
      acc68(66)=abb68(75)
      acc68(67)=abb68(77)
      acc68(68)=abb68(79)
      acc68(69)=abb68(80)
      acc68(70)=abb68(81)
      acc68(71)=abb68(82)
      acc68(72)=abb68(83)
      acc68(73)=abb68(84)
      acc68(74)=abb68(85)
      acc68(75)=abb68(87)
      acc68(76)=abb68(88)
      acc68(77)=abb68(89)
      acc68(78)=abb68(90)
      acc68(79)=abb68(91)
      acc68(80)=abb68(92)
      acc68(81)=abb68(93)
      acc68(82)=abb68(94)
      acc68(83)=abb68(95)
      acc68(84)=abb68(96)
      acc68(85)=abb68(97)
      acc68(86)=abb68(98)
      acc68(87)=abb68(99)
      acc68(88)=abb68(100)
      acc68(89)=abb68(102)
      acc68(90)=abb68(103)
      acc68(91)=abb68(104)
      acc68(92)=abb68(105)
      acc68(93)=abb68(106)
      acc68(94)=abb68(107)
      acc68(95)=abb68(108)
      acc68(96)=abb68(109)
      acc68(97)=abb68(110)
      acc68(98)=abb68(111)
      acc68(99)=abb68(112)
      acc68(100)=abb68(113)
      acc68(101)=abb68(115)
      acc68(102)=abb68(118)
      acc68(103)=Qspval5k2*acc68(20)
      acc68(104)=Qspval6k2*acc68(89)
      acc68(105)=Qspvak3k2*acc68(25)
      acc68(106)=Qspvak1k2*acc68(34)
      acc68(107)=Qspvak1k7*acc68(95)
      acc68(108)=Qspvak1l5*acc68(39)
      acc68(109)=-Qspvak1l6*acc68(102)
      acc68(110)=Qspk1*acc68(87)
      acc68(111)=Qspvak4k2*acc68(41)
      acc68(112)=Qspk2*acc68(63)
      acc68(113)=Qspvak2k7*Qspvak1k2
      acc68(114)=acc68(7)*acc68(113)
      acc68(103)=acc68(114)+acc68(112)+acc68(111)+acc68(110)+acc68(109)+acc68(1&
      &08)+acc68(107)+acc68(106)+acc68(105)+acc68(104)+acc68(57)+acc68(103)
      acc68(103)=Qspvak2l5*acc68(103)
      acc68(104)=Qspval5k2*acc68(91)
      acc68(105)=Qspval6k2*acc68(23)
      acc68(106)=Qspvak3k2*acc68(60)
      acc68(107)=Qspvak1k2*acc68(37)
      acc68(108)=Qspvak1k7*acc68(86)
      acc68(109)=-Qspvak1l5*acc68(102)
      acc68(110)=Qspvak1l6*acc68(43)
      acc68(111)=Qspk1*acc68(90)
      acc68(112)=Qspvak4k2*acc68(72)
      acc68(114)=Qspk2*acc68(88)
      acc68(113)=acc68(11)*acc68(113)
      acc68(104)=acc68(113)+acc68(114)+acc68(112)+acc68(111)+acc68(110)+acc68(1&
      &09)+acc68(108)+acc68(107)+acc68(106)+acc68(105)+acc68(26)+acc68(104)
      acc68(104)=Qspvak2l6*acc68(104)
      acc68(105)=Qspval5k2*acc68(76)
      acc68(106)=Qspval6k2*acc68(73)
      acc68(107)=Qspvak1k2*acc68(46)
      acc68(108)=Qspvak1l5*acc68(5)
      acc68(109)=Qspvak1l6*acc68(64)
      acc68(110)=Qspk1*acc68(61)
      acc68(111)=Qspk2*acc68(59)
      acc68(105)=acc68(111)+acc68(110)+acc68(109)+acc68(108)+acc68(107)+acc68(1&
      &06)+acc68(67)+acc68(105)
      acc68(105)=Qspvak2k7*acc68(105)
      acc68(106)=Qspval5k2*acc68(36)
      acc68(107)=Qspval6k2*acc68(53)
      acc68(108)=Qspvak3k2*acc68(27)
      acc68(109)=Qspvak1k2*acc68(50)
      acc68(110)=Qspvak1l5*acc68(40)
      acc68(111)=Qspvak1l6*acc68(54)
      acc68(112)=Qspk1*acc68(30)
      acc68(113)=Qspvak4k2*acc68(16)
      acc68(114)=Qspk2*acc68(33)
      acc68(103)=acc68(104)+acc68(103)+acc68(105)+acc68(114)+acc68(113)+acc68(1&
      &12)+acc68(111)+acc68(110)+acc68(109)+acc68(108)+acc68(107)+acc68(52)+acc&
      &68(106)
      acc68(103)=Qspvak4k3*acc68(103)
      acc68(104)=Qspvak1k3*acc68(51)
      acc68(105)=Qspvak1k2*acc68(93)
      acc68(106)=QspQ*acc68(49)
      acc68(107)=Qspvak4k2*acc68(62)
      acc68(108)=Qspk2*acc68(55)
      acc68(104)=acc68(108)+acc68(107)+acc68(106)+acc68(105)+acc68(48)+acc68(10&
      &4)
      acc68(104)=Qspvak2k7*acc68(104)
      acc68(105)=Qspk4+Qspk3
      acc68(106)=acc68(105)-Qspk2
      acc68(107)=acc68(99)*acc68(106)
      acc68(108)=Qspvak1k7*acc68(92)
      acc68(109)=QspQ*acc68(31)
      acc68(110)=Qspvak4k2*acc68(15)
      acc68(107)=acc68(110)+acc68(109)+acc68(6)-acc68(108)+acc68(107)
      acc68(107)=Qspk2*acc68(107)
      acc68(108)=acc68(108)+acc68(98)
      acc68(108)=acc68(108)*acc68(105)
      acc68(109)=-acc68(15)*acc68(105)
      acc68(110)=-QspQ*acc68(25)
      acc68(109)=acc68(110)+acc68(9)+acc68(109)
      acc68(109)=Qspvak4k2*acc68(109)
      acc68(110)=Qspvak3k2*acc68(18)
      acc68(111)=Qspvak1l5*acc68(28)
      acc68(112)=Qspvak1l6*acc68(4)
      acc68(113)=Qspk1*acc68(1)
      acc68(114)=Qspvak1k7*acc68(93)
      acc68(114)=acc68(3)+acc68(114)
      acc68(114)=QspQ*acc68(114)
      acc68(104)=acc68(104)+acc68(107)+acc68(109)+acc68(114)+acc68(113)+acc68(1&
      &12)+acc68(111)+acc68(97)+acc68(110)+acc68(108)
      acc68(104)=Qspvak2l5*acc68(104)
      acc68(107)=Qspvak1k3*acc68(56)
      acc68(108)=Qspvak1k2*acc68(85)
      acc68(109)=QspQ*acc68(47)
      acc68(110)=Qspvak4k2*acc68(96)
      acc68(111)=Qspk2*acc68(94)
      acc68(107)=acc68(111)+acc68(110)+acc68(109)+acc68(108)+acc68(74)+acc68(10&
      &7)
      acc68(107)=Qspvak2k7*acc68(107)
      acc68(108)=acc68(83)*acc68(106)
      acc68(109)=Qspvak1k7*acc68(69)
      acc68(110)=QspQ*acc68(82)
      acc68(111)=Qspvak4k2*acc68(70)
      acc68(108)=acc68(111)+acc68(110)+acc68(45)-acc68(109)+acc68(108)
      acc68(108)=Qspk2*acc68(108)
      acc68(109)=acc68(109)+acc68(80)
      acc68(109)=acc68(109)*acc68(105)
      acc68(110)=-acc68(70)*acc68(105)
      acc68(111)=-QspQ*acc68(60)
      acc68(110)=acc68(111)+acc68(8)+acc68(110)
      acc68(110)=Qspvak4k2*acc68(110)
      acc68(111)=Qspvak3k2*acc68(78)
      acc68(112)=Qspvak1l5*acc68(4)
      acc68(113)=Qspvak1l6*acc68(101)
      acc68(114)=Qspk1*acc68(84)
      acc68(115)=Qspvak1k7*acc68(85)
      acc68(115)=acc68(81)+acc68(115)
      acc68(115)=QspQ*acc68(115)
      acc68(107)=acc68(107)+acc68(108)+acc68(110)+acc68(115)+acc68(114)+acc68(1&
      &13)+acc68(112)+acc68(79)+acc68(111)+acc68(109)
      acc68(107)=Qspvak2l6*acc68(107)
      acc68(108)=Qspvak3k2*acc68(77)
      acc68(109)=Qspvak1l5*acc68(19)
      acc68(110)=Qspvak1l6*acc68(22)
      acc68(111)=Qspk1*acc68(66)
      acc68(112)=QspQ*acc68(71)
      acc68(113)=Qspvak4k2*acc68(68)
      acc68(114)=Qspk2*acc68(75)
      acc68(108)=acc68(114)+acc68(113)+acc68(112)+acc68(111)+acc68(110)+acc68(1&
      &09)+acc68(65)+acc68(108)
      acc68(108)=Qspvak2k7*acc68(108)
      acc68(109)=Qspvak1l5*acc68(13)
      acc68(110)=Qspvak1l6*acc68(100)
      acc68(111)=Qspk1*acc68(38)
      acc68(109)=-acc68(111)+acc68(109)+acc68(110)
      acc68(106)=acc68(35)*acc68(106)
      acc68(110)=QspQ*acc68(32)
      acc68(111)=Qspvak4k2*acc68(58)
      acc68(106)=acc68(111)+acc68(110)+acc68(29)+acc68(106)-acc68(109)
      acc68(106)=Qspk2*acc68(106)
      acc68(109)=acc68(109)+acc68(17)
      acc68(109)=acc68(109)*acc68(105)
      acc68(110)=Qspvak1l5*acc68(2)
      acc68(111)=Qspvak1l6*acc68(44)
      acc68(112)=Qspk1*acc68(21)
      acc68(110)=acc68(112)+acc68(111)+acc68(14)+acc68(110)
      acc68(110)=QspQ*acc68(110)
      acc68(105)=-acc68(58)*acc68(105)
      acc68(111)=-QspQ*acc68(27)
      acc68(105)=acc68(111)+acc68(42)+acc68(105)
      acc68(105)=Qspvak4k2*acc68(105)
      acc68(111)=Qspvak3k2*acc68(24)
      acc68(112)=Qspk1*acc68(10)
      brack=acc68(12)+acc68(103)+acc68(104)+acc68(105)+acc68(106)+acc68(107)+ac&
      &c68(108)+acc68(109)+acc68(110)+acc68(111)+acc68(112)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd68h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d68
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d68 = 0.0_ki
      d68 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d68, ki), aimag(d68), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d68h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd68h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d68
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d68 = 0.0_ki
      d68 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d68, ki), aimag(d68), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d68h3l1
