module     p0_dbaru_epnebbbarg_d311h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d311h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd311h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc311(95)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak3l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k1
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak3l6 = dotproduct(Q,spvak3l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc311(1)=abb311(11)
      acc311(2)=abb311(12)
      acc311(3)=abb311(13)
      acc311(4)=abb311(14)
      acc311(5)=abb311(15)
      acc311(6)=abb311(16)
      acc311(7)=abb311(17)
      acc311(8)=abb311(18)
      acc311(9)=abb311(19)
      acc311(10)=abb311(20)
      acc311(11)=abb311(21)
      acc311(12)=abb311(22)
      acc311(13)=abb311(23)
      acc311(14)=abb311(24)
      acc311(15)=abb311(25)
      acc311(16)=abb311(26)
      acc311(17)=abb311(27)
      acc311(18)=abb311(28)
      acc311(19)=abb311(29)
      acc311(20)=abb311(30)
      acc311(21)=abb311(31)
      acc311(22)=abb311(32)
      acc311(23)=abb311(33)
      acc311(24)=abb311(34)
      acc311(25)=abb311(35)
      acc311(26)=abb311(36)
      acc311(27)=abb311(38)
      acc311(28)=abb311(39)
      acc311(29)=abb311(40)
      acc311(30)=abb311(41)
      acc311(31)=abb311(42)
      acc311(32)=abb311(43)
      acc311(33)=abb311(44)
      acc311(34)=abb311(45)
      acc311(35)=abb311(46)
      acc311(36)=abb311(47)
      acc311(37)=abb311(48)
      acc311(38)=abb311(49)
      acc311(39)=abb311(52)
      acc311(40)=abb311(55)
      acc311(41)=abb311(56)
      acc311(42)=abb311(57)
      acc311(43)=abb311(58)
      acc311(44)=abb311(59)
      acc311(45)=abb311(61)
      acc311(46)=abb311(64)
      acc311(47)=abb311(68)
      acc311(48)=abb311(69)
      acc311(49)=abb311(70)
      acc311(50)=abb311(72)
      acc311(51)=abb311(73)
      acc311(52)=abb311(77)
      acc311(53)=abb311(79)
      acc311(54)=abb311(80)
      acc311(55)=abb311(83)
      acc311(56)=abb311(87)
      acc311(57)=abb311(93)
      acc311(58)=abb311(97)
      acc311(59)=abb311(99)
      acc311(60)=abb311(102)
      acc311(61)=abb311(103)
      acc311(62)=abb311(104)
      acc311(63)=abb311(106)
      acc311(64)=abb311(108)
      acc311(65)=abb311(111)
      acc311(66)=abb311(113)
      acc311(67)=abb311(115)
      acc311(68)=abb311(116)
      acc311(69)=abb311(117)
      acc311(70)=abb311(121)
      acc311(71)=abb311(126)
      acc311(72)=abb311(128)
      acc311(73)=abb311(132)
      acc311(74)=abb311(135)
      acc311(75)=abb311(142)
      acc311(76)=abb311(148)
      acc311(77)=Qspk4+Qspk3
      acc311(78)=acc311(43)*acc311(77)
      acc311(79)=Qspvak4l6*acc311(1)
      acc311(80)=Qspvak2l6*acc311(53)
      acc311(81)=Qspvak4k3*acc311(49)
      acc311(82)=Qspk2*acc311(45)
      acc311(83)=Qspvak4k2*acc311(48)
      acc311(78)=acc311(83)+acc311(82)+acc311(81)+acc311(80)+acc311(40)+acc311(&
      &79)+acc311(78)
      acc311(78)=Qspvak4k2*acc311(78)
      acc311(79)=Qspvak3k2*acc311(28)
      acc311(80)=-acc311(53)*Qspvak3l6
      acc311(81)=Qspvak4l6*acc311(76)
      acc311(79)=acc311(81)+acc311(80)+acc311(42)+acc311(79)
      acc311(79)=Qspvak4k3*acc311(79)
      acc311(80)=acc311(77)-Qspk2
      acc311(81)=-acc311(19)*acc311(80)
      acc311(82)=Qspvak4l6*acc311(72)
      acc311(83)=Qspvak4k3*acc311(18)
      acc311(81)=acc311(83)+acc311(5)-acc311(82)+acc311(81)
      acc311(81)=Qspk2*acc311(81)
      acc311(82)=acc311(82)-acc311(51)
      acc311(82)=acc311(82)*acc311(77)
      acc311(83)=Qspvak1k2*acc311(9)
      acc311(84)=Qspvak1k3*acc311(22)
      acc311(85)=Qspvak2k3*acc311(4)
      acc311(86)=Qspval5k2*acc311(61)
      acc311(87)=Qspval5k3*acc311(64)
      acc311(88)=Qspval5l6*acc311(67)
      acc311(89)=-acc311(44)*Qspvak7l6
      acc311(90)=Qspvak1l6*acc311(6)
      acc311(91)=QspQ*acc311(31)
      acc311(92)=Qspl6*acc311(41)
      acc311(93)=Qspk7*acc311(39)
      acc311(94)=Qspvak2l6*acc311(33)
      acc311(95)=Qspvak2k7*acc311(56)
      acc311(78)=acc311(95)+acc311(78)+acc311(81)+acc311(79)+acc311(94)+acc311(&
      &93)+acc311(92)+acc311(91)+acc311(90)+acc311(89)+acc311(88)+acc311(87)+ac&
      &c311(86)+acc311(85)+acc311(84)+acc311(30)+acc311(83)+acc311(82)
      acc311(78)=Qspvak2k7*acc311(78)
      acc311(79)=-acc311(54)*acc311(77)
      acc311(81)=Qspvak1l6*acc311(16)
      acc311(82)=QspQ*acc311(35)
      acc311(83)=Qspl6*acc311(52)
      acc311(84)=Qspk7*acc311(46)
      acc311(85)=Qspvak4l6*acc311(60)
      acc311(86)=Qspvak2l6*acc311(14)
      acc311(87)=Qspvak4k3*acc311(68)
      acc311(88)=Qspk2*acc311(12)
      acc311(89)=Qspvak4k2*acc311(62)
      acc311(79)=acc311(89)+acc311(88)+acc311(87)+acc311(86)+acc311(85)+acc311(&
      &84)+acc311(83)+acc311(82)+acc311(13)+acc311(81)+acc311(79)
      acc311(79)=Qspvak4k2*acc311(79)
      acc311(81)=Qspvak3k2*acc311(27)
      acc311(82)=Qspvak3l6*acc311(70)
      acc311(83)=Qspvak1l6*acc311(23)
      acc311(84)=QspQ*acc311(66)
      acc311(85)=Qspl6*acc311(34)
      acc311(86)=Qspk7*acc311(69)
      acc311(87)=Qspvak4l6*acc311(75)
      acc311(88)=Qspvak2l6*acc311(38)
      acc311(81)=acc311(88)+acc311(87)+acc311(86)+acc311(85)+acc311(84)+acc311(&
      &83)+acc311(82)+acc311(32)+acc311(81)
      acc311(81)=Qspvak4k3*acc311(81)
      acc311(82)=Qspvak1l6*acc311(11)
      acc311(83)=QspQ*acc311(24)
      acc311(84)=Qspl6*acc311(55)
      acc311(85)=Qspk7*acc311(57)
      acc311(86)=Qspvak4l6*acc311(74)
      acc311(82)=-acc311(86)+acc311(82)+acc311(83)+acc311(84)-acc311(85)
      acc311(83)=Qspvak2l6*acc311(21)
      acc311(83)=-acc311(65)+acc311(83)-acc311(82)
      acc311(77)=-acc311(83)*acc311(77)
      acc311(80)=-acc311(25)*acc311(80)
      acc311(83)=Qspvak2l6*acc311(10)
      acc311(84)=Qspvak4k3*acc311(71)
      acc311(80)=acc311(84)+acc311(83)+acc311(8)+acc311(80)-acc311(82)
      acc311(80)=Qspk2*acc311(80)
      acc311(82)=Qspk7-Qspl6
      acc311(82)=acc311(44)*acc311(82)
      acc311(83)=QspQ*acc311(50)
      acc311(82)=acc311(2)+acc311(83)+acc311(82)
      acc311(82)=Qspvak2l6*acc311(82)
      acc311(83)=acc311(47)*Qspvak2l5
      acc311(84)=acc311(17)*Qspvak2k1
      acc311(85)=Qspvak1k2*acc311(37)
      acc311(86)=Qspvak1k3*acc311(26)
      acc311(87)=Qspvak2k3*acc311(7)
      acc311(88)=Qspval5k2*acc311(73)
      acc311(89)=Qspval5k3*acc311(63)
      acc311(90)=Qspval5l6*acc311(36)
      acc311(91)=Qspvak7l6*acc311(20)
      acc311(92)=Qspvak1l6*acc311(3)
      acc311(93)=QspQ*acc311(29)
      acc311(94)=Qspl6*acc311(59)
      acc311(95)=Qspk7*acc311(58)
      brack=acc311(15)+acc311(77)+acc311(78)+acc311(79)+acc311(80)+acc311(81)+a&
      &cc311(82)+acc311(83)+acc311(84)+acc311(85)+acc311(86)+acc311(87)+acc311(&
      &88)+acc311(89)+acc311(90)+acc311(91)+acc311(92)+acc311(93)+acc311(94)+ac&
      &c311(95)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd311h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d311
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d311 = 0.0_ki
      d311 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d311, ki), aimag(d311), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d311h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd311h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d311
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d311 = 0.0_ki
      d311 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d311, ki), aimag(d311), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d311h2l1
