module     p0_dbaru_epnebbbarg_d66h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d66h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd66h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc66(122)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l6
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      acc66(1)=abb66(10)
      acc66(2)=abb66(11)
      acc66(3)=abb66(12)
      acc66(4)=abb66(13)
      acc66(5)=abb66(14)
      acc66(6)=abb66(15)
      acc66(7)=abb66(16)
      acc66(8)=abb66(17)
      acc66(9)=abb66(18)
      acc66(10)=abb66(19)
      acc66(11)=abb66(20)
      acc66(12)=abb66(21)
      acc66(13)=abb66(22)
      acc66(14)=abb66(23)
      acc66(15)=abb66(24)
      acc66(16)=abb66(25)
      acc66(17)=abb66(26)
      acc66(18)=abb66(27)
      acc66(19)=abb66(28)
      acc66(20)=abb66(29)
      acc66(21)=abb66(30)
      acc66(22)=abb66(31)
      acc66(23)=abb66(32)
      acc66(24)=abb66(33)
      acc66(25)=abb66(34)
      acc66(26)=abb66(35)
      acc66(27)=abb66(36)
      acc66(28)=abb66(37)
      acc66(29)=abb66(38)
      acc66(30)=abb66(39)
      acc66(31)=abb66(40)
      acc66(32)=abb66(41)
      acc66(33)=abb66(42)
      acc66(34)=abb66(43)
      acc66(35)=abb66(44)
      acc66(36)=abb66(45)
      acc66(37)=abb66(46)
      acc66(38)=abb66(47)
      acc66(39)=abb66(48)
      acc66(40)=abb66(49)
      acc66(41)=abb66(50)
      acc66(42)=abb66(51)
      acc66(43)=abb66(52)
      acc66(44)=abb66(53)
      acc66(45)=abb66(54)
      acc66(46)=abb66(55)
      acc66(47)=abb66(56)
      acc66(48)=abb66(57)
      acc66(49)=abb66(58)
      acc66(50)=abb66(59)
      acc66(51)=abb66(60)
      acc66(52)=abb66(61)
      acc66(53)=abb66(62)
      acc66(54)=abb66(63)
      acc66(55)=abb66(64)
      acc66(56)=abb66(65)
      acc66(57)=abb66(66)
      acc66(58)=abb66(67)
      acc66(59)=abb66(68)
      acc66(60)=abb66(69)
      acc66(61)=abb66(70)
      acc66(62)=abb66(71)
      acc66(63)=abb66(72)
      acc66(64)=abb66(73)
      acc66(65)=abb66(74)
      acc66(66)=abb66(75)
      acc66(67)=abb66(76)
      acc66(68)=abb66(80)
      acc66(69)=abb66(81)
      acc66(70)=abb66(82)
      acc66(71)=abb66(83)
      acc66(72)=abb66(84)
      acc66(73)=abb66(85)
      acc66(74)=abb66(86)
      acc66(75)=abb66(87)
      acc66(76)=abb66(88)
      acc66(77)=abb66(89)
      acc66(78)=abb66(90)
      acc66(79)=abb66(91)
      acc66(80)=abb66(94)
      acc66(81)=abb66(95)
      acc66(82)=abb66(96)
      acc66(83)=abb66(97)
      acc66(84)=abb66(98)
      acc66(85)=abb66(99)
      acc66(86)=abb66(100)
      acc66(87)=abb66(101)
      acc66(88)=abb66(102)
      acc66(89)=abb66(103)
      acc66(90)=abb66(104)
      acc66(91)=abb66(105)
      acc66(92)=abb66(106)
      acc66(93)=abb66(107)
      acc66(94)=abb66(108)
      acc66(95)=abb66(109)
      acc66(96)=abb66(110)
      acc66(97)=abb66(111)
      acc66(98)=abb66(112)
      acc66(99)=abb66(113)
      acc66(100)=abb66(114)
      acc66(101)=abb66(115)
      acc66(102)=abb66(116)
      acc66(103)=abb66(120)
      acc66(104)=abb66(121)
      acc66(105)=abb66(122)
      acc66(106)=abb66(123)
      acc66(107)=Qspl6+Qspl5
      acc66(108)=acc66(101)*acc66(107)
      acc66(109)=acc66(91)*Qspvak3k2
      acc66(110)=-Qspvak1k4*acc66(93)
      acc66(111)=Qspvak1k7*acc66(57)
      acc66(112)=Qspvak1k2*acc66(38)
      acc66(113)=Qspvak4k2*acc66(96)
      acc66(114)=Qspval6k2*acc66(106)
      acc66(115)=Qspval5k2*acc66(26)
      acc66(116)=Qspk1*acc66(103)
      acc66(117)=QspQ*acc66(95)
      acc66(118)=Qspvak1k3*acc66(75)
      acc66(119)=-Qspvak1k2*acc66(5)
      acc66(119)=acc66(13)+acc66(119)
      acc66(119)=Qspvak2k7*acc66(119)
      acc66(120)=Qspval5l6*acc66(82)
      acc66(108)=acc66(120)+acc66(119)+acc66(118)+acc66(117)+acc66(116)+acc66(1&
      &15)+acc66(114)+acc66(113)+acc66(112)+acc66(111)+acc66(110)+acc66(66)+acc&
      &66(109)+acc66(108)
      acc66(108)=Qspvak4k3*acc66(108)
      acc66(109)=Qspvak1k2*acc66(11)
      acc66(110)=Qspk1*acc66(14)
      acc66(111)=Qspvak1k3*acc66(9)
      acc66(109)=acc66(111)+acc66(110)+acc66(3)+acc66(109)
      acc66(109)=Qspvak2k7*acc66(109)
      acc66(110)=Qspk4+Qspk3
      acc66(111)=acc66(110)-Qspk1
      acc66(112)=-acc66(74)*acc66(111)
      acc66(113)=QspQ*acc66(60)
      acc66(114)=Qspvak4k3*acc66(69)
      acc66(112)=acc66(114)+acc66(113)+acc66(73)+acc66(112)
      acc66(112)=Qspk2*acc66(112)
      acc66(113)=Qspvak4k2*acc66(25)
      acc66(114)=acc66(113)+acc66(72)
      acc66(114)=-acc66(114)*acc66(110)
      acc66(115)=acc66(47)*acc66(111)
      acc66(116)=QspQ*acc66(93)
      acc66(115)=acc66(116)+acc66(35)+acc66(115)
      acc66(115)=Qspvak1k3*acc66(115)
      acc66(116)=-acc66(83)*acc66(111)
      acc66(117)=QspQ*acc66(45)
      acc66(116)=acc66(117)+acc66(80)+acc66(116)
      acc66(116)=Qspval5l6*acc66(116)
      acc66(117)=-acc66(65)*acc66(107)
      acc66(118)=Qspvak1k2*acc66(12)
      acc66(119)=Qspvak4k2*acc66(87)
      acc66(120)=Qspval6k2*acc66(77)
      acc66(121)=Qspval5k2*acc66(76)
      acc66(113)=acc66(46)+acc66(113)
      acc66(113)=Qspk1*acc66(113)
      acc66(122)=-Qspvak4k2*acc66(91)
      acc66(122)=acc66(59)+acc66(122)
      acc66(122)=QspQ*acc66(122)
      acc66(108)=acc66(112)+acc66(108)+acc66(116)+acc66(109)+acc66(115)+acc66(1&
      &22)+acc66(113)+acc66(121)+acc66(120)+acc66(119)+acc66(118)+acc66(21)+acc&
      &66(117)+acc66(114)
      acc66(108)=Qspk2*acc66(108)
      acc66(109)=Qspvak1k2*acc66(56)
      acc66(112)=Qspk1*acc66(68)
      acc66(113)=Qspvak1k3*acc66(10)
      acc66(109)=acc66(113)+acc66(112)+acc66(63)+acc66(109)
      acc66(109)=Qspvak2k7*acc66(109)
      acc66(112)=Qspvak4k2*acc66(61)
      acc66(113)=acc66(112)-acc66(86)
      acc66(113)=-acc66(113)*acc66(110)
      acc66(114)=acc66(15)*acc66(111)
      acc66(115)=QspQ*acc66(99)
      acc66(114)=acc66(115)+acc66(31)+acc66(114)
      acc66(114)=Qspvak1k3*acc66(114)
      acc66(115)=Qspvak1k2*acc66(18)
      acc66(116)=Qspvak4k2*acc66(92)
      acc66(117)=Qspval6k2*acc66(88)
      acc66(118)=Qspval5k2*acc66(23)
      acc66(112)=acc66(55)+acc66(112)
      acc66(112)=Qspk1*acc66(112)
      acc66(119)=-Qspvak4k2*acc66(94)
      acc66(119)=acc66(48)+acc66(119)
      acc66(119)=QspQ*acc66(119)
      acc66(109)=acc66(109)+acc66(114)+acc66(119)+acc66(112)+acc66(118)+acc66(1&
      &17)+acc66(116)+acc66(44)+acc66(115)+acc66(113)
      acc66(109)=Qspval5l6*acc66(109)
      acc66(112)=-Qspvak2k7*acc66(90)
      acc66(112)=acc66(112)+acc66(43)
      acc66(112)=Qspvak1k2*acc66(112)
      acc66(113)=acc66(94)*Qspvak3k2
      acc66(114)=-Qspvak1k4*acc66(99)
      acc66(115)=Qspvak1k7*acc66(71)
      acc66(116)=Qspvak4k2*acc66(97)
      acc66(117)=-Qspval6k2*acc66(105)
      acc66(118)=Qspval5k2*acc66(64)
      acc66(119)=Qspk1*acc66(104)
      acc66(120)=Qspvak1k3*acc66(62)
      acc66(112)=acc66(120)+acc66(119)+acc66(118)+acc66(117)+acc66(116)+acc66(1&
      &15)+acc66(114)+acc66(85)+acc66(113)+acc66(112)
      acc66(112)=Qspval5l6*acc66(112)
      acc66(113)=acc66(79)*Qspvak1l6
      acc66(114)=Qspvak1k2*acc66(67)
      acc66(115)=Qspval6k2*acc66(2)
      acc66(116)=Qspval5k2*acc66(24)
      acc66(117)=QspQ*acc66(20)
      acc66(113)=acc66(117)+acc66(116)+acc66(115)+acc66(114)+acc66(113)+acc66(6)
      acc66(113)=Qspvak2k7*acc66(113)
      acc66(114)=Qspvak1k7*acc66(41)
      acc66(114)=acc66(114)+acc66(100)
      acc66(114)=acc66(114)*acc66(107)
      acc66(115)=Qspvak1k7*acc66(70)
      acc66(116)=-Qspval5k2*acc66(105)
      acc66(115)=acc66(116)+acc66(81)+acc66(115)
      acc66(115)=QspQ*acc66(115)
      acc66(116)=Qspvak1k4*acc66(89)
      acc66(117)=Qspval6k2*acc66(36)
      acc66(118)=acc66(53)*acc66(107)
      acc66(118)=acc66(22)+acc66(118)
      acc66(118)=Qspval5k2*acc66(118)
      acc66(119)=Qspk1*acc66(98)
      acc66(120)=Qspvak1k3*acc66(39)
      acc66(112)=acc66(112)+acc66(113)+acc66(120)+acc66(115)+acc66(119)+acc66(1&
      &18)+acc66(117)+acc66(49)+acc66(116)+acc66(114)
      acc66(112)=Qspvak4k3*acc66(112)
      acc66(113)=acc66(51)*acc66(110)
      acc66(114)=Qspval6k2*acc66(78)
      acc66(115)=Qspval5k2*acc66(50)
      acc66(116)=Qspk1*acc66(34)
      acc66(117)=QspQ*acc66(28)
      acc66(113)=acc66(117)+acc66(116)+acc66(115)+acc66(19)+acc66(114)+acc66(11&
      &3)
      acc66(113)=QspQ*acc66(113)
      acc66(114)=Qspval6k2*acc66(7)
      acc66(115)=Qspval5k2*acc66(4)
      acc66(116)=Qspk1*acc66(8)
      acc66(117)=QspQ*acc66(54)
      acc66(118)=Qspvak1k3*acc66(1)
      acc66(114)=acc66(118)+acc66(117)+acc66(116)+acc66(115)+acc66(42)+acc66(11&
      &4)
      acc66(114)=Qspvak2k7*acc66(114)
      acc66(115)=acc66(33)*acc66(107)
      acc66(116)=Qspval6k2*acc66(84)
      acc66(117)=Qspval5k2*acc66(58)
      acc66(115)=acc66(117)-acc66(116)+acc66(16)+acc66(115)
      acc66(115)=Qspk1*acc66(115)
      acc66(117)=-acc66(30)*acc66(107)
      acc66(111)=acc66(102)*acc66(111)
      acc66(118)=QspQ*acc66(27)
      acc66(111)=acc66(118)+acc66(111)+acc66(117)
      acc66(111)=Qspvak1k3*acc66(111)
      acc66(116)=acc66(116)+acc66(52)
      acc66(116)=acc66(116)*acc66(110)
      acc66(117)=acc66(40)*acc66(107)
      acc66(110)=-acc66(58)*acc66(110)
      acc66(110)=acc66(29)+acc66(110)+acc66(117)
      acc66(110)=Qspval5k2*acc66(110)
      acc66(107)=acc66(37)*acc66(107)
      acc66(117)=Qspval6k2*acc66(32)
      brack=acc66(17)+acc66(107)+acc66(108)+acc66(109)+acc66(110)+acc66(111)+ac&
      &c66(112)+acc66(113)+acc66(114)+acc66(115)+acc66(116)+acc66(117)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd66h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d66
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d66 = 0.0_ki
      d66 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d66, ki), aimag(d66), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d66h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd66h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d66
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d66 = 0.0_ki
      d66 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d66, ki), aimag(d66), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d66h2l1
