module     p0_dbaru_epnebbbarg_d127h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d127h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd127h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc127(92)
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k2
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc127(1)=abb127(14)
      acc127(2)=abb127(15)
      acc127(3)=abb127(16)
      acc127(4)=abb127(17)
      acc127(5)=abb127(18)
      acc127(6)=abb127(19)
      acc127(7)=abb127(20)
      acc127(8)=abb127(21)
      acc127(9)=abb127(22)
      acc127(10)=abb127(23)
      acc127(11)=abb127(24)
      acc127(12)=abb127(25)
      acc127(13)=abb127(26)
      acc127(14)=abb127(27)
      acc127(15)=abb127(28)
      acc127(16)=abb127(29)
      acc127(17)=abb127(30)
      acc127(18)=abb127(31)
      acc127(19)=abb127(32)
      acc127(20)=abb127(33)
      acc127(21)=abb127(34)
      acc127(22)=abb127(35)
      acc127(23)=abb127(36)
      acc127(24)=abb127(37)
      acc127(25)=abb127(38)
      acc127(26)=abb127(39)
      acc127(27)=abb127(40)
      acc127(28)=abb127(41)
      acc127(29)=abb127(42)
      acc127(30)=abb127(43)
      acc127(31)=abb127(44)
      acc127(32)=abb127(45)
      acc127(33)=abb127(46)
      acc127(34)=abb127(47)
      acc127(35)=abb127(48)
      acc127(36)=abb127(49)
      acc127(37)=abb127(50)
      acc127(38)=abb127(51)
      acc127(39)=abb127(52)
      acc127(40)=abb127(53)
      acc127(41)=abb127(54)
      acc127(42)=abb127(55)
      acc127(43)=abb127(56)
      acc127(44)=abb127(57)
      acc127(45)=abb127(58)
      acc127(46)=abb127(59)
      acc127(47)=abb127(60)
      acc127(48)=abb127(61)
      acc127(49)=abb127(62)
      acc127(50)=abb127(63)
      acc127(51)=abb127(65)
      acc127(52)=abb127(72)
      acc127(53)=abb127(76)
      acc127(54)=abb127(81)
      acc127(55)=abb127(86)
      acc127(56)=abb127(87)
      acc127(57)=abb127(88)
      acc127(58)=abb127(90)
      acc127(59)=abb127(95)
      acc127(60)=abb127(104)
      acc127(61)=abb127(105)
      acc127(62)=abb127(108)
      acc127(63)=abb127(113)
      acc127(64)=abb127(115)
      acc127(65)=abb127(117)
      acc127(66)=abb127(118)
      acc127(67)=abb127(119)
      acc127(68)=abb127(122)
      acc127(69)=abb127(125)
      acc127(70)=abb127(132)
      acc127(71)=abb127(146)
      acc127(72)=abb127(164)
      acc127(73)=abb127(165)
      acc127(74)=abb127(179)
      acc127(75)=Qspk3+Qspk4
      acc127(76)=acc127(75)-Qspk1
      acc127(77)=-acc127(31)*acc127(76)
      acc127(78)=-acc127(35)*QspQ
      acc127(79)=acc127(3)*Qspval5k2
      acc127(80)=acc127(12)*Qspval6k2
      acc127(81)=acc127(18)*Qspvak2k7
      acc127(82)=acc127(25)*Qspk2
      acc127(83)=acc127(33)*Qspval5k7
      acc127(84)=acc127(41)*Qspval5l6
      acc127(85)=acc127(42)*Qspval6k7
      acc127(86)=acc127(47)*Qspval6l5
      acc127(77)=acc127(77)+acc127(86)+acc127(85)+acc127(84)+acc127(83)+acc127(&
      &82)+acc127(81)+acc127(80)+acc127(79)+acc127(78)
      acc127(77)=Qspvak1k3*acc127(77)
      acc127(78)=acc127(6)*Qspval5k2
      acc127(79)=acc127(14)*Qspvak1k3
      acc127(80)=acc127(23)*Qspval6k2
      acc127(81)=acc127(51)*Qspvak4k2
      acc127(82)=acc127(53)*Qspk2
      acc127(83)=acc127(64)*QspQ
      acc127(84)=acc127(66)*Qspk1
      acc127(85)=acc127(67)*Qspvak7k2
      acc127(86)=Qspvak3k2*acc127(34)
      acc127(87)=Qspvak1k4*acc127(35)
      acc127(78)=acc127(87)+acc127(86)+acc127(85)+acc127(84)+acc127(83)+acc127(&
      &82)+acc127(81)+acc127(80)+acc127(22)+acc127(79)+acc127(78)
      acc127(78)=Qspvak4k3*acc127(78)
      acc127(79)=-Qspk7+Qspl5+Qspl6
      acc127(80)=acc127(38)*acc127(79)
      acc127(81)=acc127(13)*Qspval6k7
      acc127(82)=acc127(16)*Qspval6k2
      acc127(83)=acc127(20)*Qspval5k2
      acc127(84)=acc127(21)*Qspk2
      acc127(85)=acc127(28)*Qspvak2k7
      acc127(86)=acc127(30)*Qspval5k7
      acc127(87)=acc127(36)*Qspval5l6
      acc127(88)=acc127(46)*Qspval6l5
      acc127(80)=acc127(88)+acc127(87)+acc127(86)+acc127(85)+acc127(81)+acc127(&
      &80)+acc127(24)+acc127(84)+acc127(83)+acc127(82)
      acc127(80)=Qspvak1k2*acc127(80)
      acc127(81)=acc127(8)*Qspval5k2
      acc127(82)=acc127(32)*Qspk2
      acc127(83)=acc127(56)*Qspval5k7
      acc127(84)=acc127(58)*Qspvak2k7
      acc127(85)=acc127(61)*Qspval6k2
      acc127(86)=acc127(65)*Qspval5l6
      acc127(87)=acc127(72)*Qspval6k7
      acc127(88)=acc127(73)*Qspval6l5
      acc127(81)=acc127(88)+acc127(87)+acc127(86)+acc127(85)+acc127(84)+acc127(&
      &83)+acc127(82)+acc127(81)+acc127(7)
      acc127(81)=Qspk1*acc127(81)
      acc127(82)=acc127(4)*Qspval6l5
      acc127(83)=acc127(5)*Qspval5l6
      acc127(84)=acc127(9)*Qspk2
      acc127(85)=acc127(37)*Qspval6k2
      acc127(86)=acc127(45)*Qspval6k7
      acc127(87)=acc127(48)*Qspval5k7
      acc127(88)=acc127(49)*Qspval5k2
      acc127(89)=acc127(52)*Qspvak2k7
      acc127(82)=acc127(89)+acc127(88)+acc127(87)+acc127(86)+acc127(85)+acc127(&
      &84)+acc127(83)+acc127(82)+acc127(1)
      acc127(83)=Qspvak4k3*Qspvak1k2
      acc127(82)=acc127(83)*acc127(82)
      acc127(84)=-acc127(34)*Qspvak4k2
      acc127(85)=acc127(26)*Qspk2
      acc127(86)=acc127(29)*Qspval5k2
      acc127(87)=acc127(60)*Qspvak7k2
      acc127(88)=acc127(70)*Qspval6k2
      acc127(84)=acc127(88)+acc127(87)+acc127(86)+acc127(85)+acc127(17)+acc127(&
      &84)
      acc127(84)=QspQ*acc127(84)
      acc127(85)=-acc127(69)*Qspval5k2
      acc127(86)=acc127(71)*Qspk2
      acc127(87)=-acc127(74)*Qspval6k2
      acc127(85)=acc127(87)+acc127(86)+acc127(85)+acc127(63)
      acc127(75)=acc127(75)*acc127(85)
      acc127(85)=-acc127(15)*Qspk1
      acc127(86)=-acc127(39)*Qspvak1k3
      acc127(83)=-acc127(44)*acc127(83)
      acc127(83)=acc127(57)+acc127(83)+acc127(86)+acc127(85)
      acc127(79)=acc127(79)*acc127(83)
      acc127(83)=acc127(59)*acc127(76)
      acc127(83)=acc127(43)+acc127(83)
      acc127(83)=Qspvak7k2*acc127(83)
      acc127(76)=-acc127(50)*acc127(76)
      acc127(76)=acc127(27)+acc127(76)
      acc127(76)=Qspvak4k2*acc127(76)
      acc127(85)=acc127(2)*Qspval5k2
      acc127(86)=acc127(10)*Qspval6k2
      acc127(87)=acc127(11)*Qspval6l5
      acc127(88)=acc127(40)*Qspval5k7
      acc127(89)=acc127(54)*Qspvak2k7
      acc127(90)=acc127(55)*Qspval5l6
      acc127(91)=acc127(62)*Qspval6k7
      acc127(92)=acc127(68)*Qspk2
      brack=acc127(19)+acc127(75)+acc127(76)+acc127(77)+acc127(78)+acc127(79)+a&
      &cc127(80)+acc127(81)+acc127(82)+acc127(83)+acc127(84)+acc127(85)+acc127(&
      &86)+acc127(87)+acc127(88)+acc127(89)+acc127(90)+acc127(91)+acc127(92)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd127h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d127
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d127 = 0.0_ki
      d127 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d127, ki), aimag(d127), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d127h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd127h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d127
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d127 = 0.0_ki
      d127 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d127, ki), aimag(d127), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d127h0l1
