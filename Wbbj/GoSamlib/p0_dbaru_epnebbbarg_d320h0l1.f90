module     p0_dbaru_epnebbbarg_d320h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d320h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd320h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc320(95)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval5k2
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5l6
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspl5 = dotproduct(Q,l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      QspQ = dotproduct(Q,Q)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      acc320(1)=abb320(13)
      acc320(2)=abb320(14)
      acc320(3)=abb320(15)
      acc320(4)=abb320(16)
      acc320(5)=abb320(17)
      acc320(6)=abb320(18)
      acc320(7)=abb320(19)
      acc320(8)=abb320(20)
      acc320(9)=abb320(21)
      acc320(10)=abb320(22)
      acc320(11)=abb320(23)
      acc320(12)=abb320(24)
      acc320(13)=abb320(25)
      acc320(14)=abb320(26)
      acc320(15)=abb320(27)
      acc320(16)=abb320(28)
      acc320(17)=abb320(29)
      acc320(18)=abb320(30)
      acc320(19)=abb320(31)
      acc320(20)=abb320(32)
      acc320(21)=abb320(33)
      acc320(22)=abb320(34)
      acc320(23)=abb320(35)
      acc320(24)=abb320(36)
      acc320(25)=abb320(37)
      acc320(26)=abb320(39)
      acc320(27)=abb320(40)
      acc320(28)=abb320(41)
      acc320(29)=abb320(42)
      acc320(30)=abb320(44)
      acc320(31)=abb320(45)
      acc320(32)=abb320(46)
      acc320(33)=abb320(47)
      acc320(34)=abb320(48)
      acc320(35)=abb320(49)
      acc320(36)=abb320(51)
      acc320(37)=abb320(52)
      acc320(38)=abb320(53)
      acc320(39)=abb320(54)
      acc320(40)=abb320(55)
      acc320(41)=abb320(56)
      acc320(42)=abb320(57)
      acc320(43)=abb320(58)
      acc320(44)=abb320(59)
      acc320(45)=abb320(60)
      acc320(46)=abb320(61)
      acc320(47)=abb320(62)
      acc320(48)=abb320(63)
      acc320(49)=abb320(64)
      acc320(50)=abb320(67)
      acc320(51)=abb320(68)
      acc320(52)=abb320(70)
      acc320(53)=abb320(71)
      acc320(54)=abb320(72)
      acc320(55)=abb320(74)
      acc320(56)=abb320(76)
      acc320(57)=abb320(80)
      acc320(58)=abb320(82)
      acc320(59)=abb320(84)
      acc320(60)=abb320(86)
      acc320(61)=abb320(87)
      acc320(62)=abb320(88)
      acc320(63)=abb320(91)
      acc320(64)=abb320(92)
      acc320(65)=abb320(93)
      acc320(66)=abb320(94)
      acc320(67)=abb320(95)
      acc320(68)=abb320(98)
      acc320(69)=abb320(99)
      acc320(70)=abb320(104)
      acc320(71)=abb320(108)
      acc320(72)=abb320(112)
      acc320(73)=abb320(122)
      acc320(74)=abb320(124)
      acc320(75)=abb320(126)
      acc320(76)=abb320(131)
      acc320(77)=acc320(1)*Qspvak1k2
      acc320(78)=acc320(15)*Qspl6
      acc320(79)=acc320(19)*Qspvak1k3
      acc320(80)=acc320(25)*Qspl5
      acc320(81)=acc320(27)*Qspvak7k2
      acc320(82)=acc320(31)*Qspval6k7
      acc320(83)=acc320(37)*Qspval6k3
      acc320(84)=acc320(38)*Qspval5k3
      acc320(85)=acc320(46)*Qspvak4k2
      acc320(86)=Qspval6l5*acc320(7)
      acc320(77)=acc320(85)+acc320(79)+acc320(77)+acc320(86)+acc320(84)+acc320(&
      &83)+acc320(82)+acc320(81)+acc320(80)+acc320(78)+acc320(4)
      acc320(77)=Qspvak2k7*acc320(77)
      acc320(78)=acc320(23)*Qspval5k2
      acc320(79)=acc320(26)*Qspvak2k7
      acc320(80)=acc320(28)*Qspvak1k3
      acc320(81)=acc320(29)*Qspvak1k2
      acc320(82)=acc320(32)*Qspval5k3
      acc320(83)=acc320(41)*QspQ
      acc320(84)=acc320(43)*Qspval6k2
      acc320(85)=acc320(68)*Qspval6k7
      acc320(86)=acc320(70)*Qspvak4k2
      acc320(87)=acc320(75)*Qspval6k3
      acc320(78)=acc320(87)+acc320(86)+acc320(85)+acc320(84)+acc320(83)+acc320(&
      &82)+acc320(81)+acc320(80)+acc320(79)+acc320(78)+acc320(18)
      acc320(78)=Qspk2*acc320(78)
      acc320(79)=acc320(9)*Qspval6k2
      acc320(80)=acc320(12)*Qspvak1k3
      acc320(81)=acc320(33)*Qspvak1k2
      acc320(82)=acc320(52)*Qspval5k2
      acc320(83)=acc320(61)*Qspval5k3
      acc320(84)=acc320(66)*Qspvak4k2
      acc320(85)=acc320(73)*Qspval6k7
      acc320(86)=acc320(76)*Qspval6k3
      acc320(79)=acc320(86)+acc320(85)+acc320(84)+acc320(83)+acc320(82)+acc320(&
      &40)+acc320(81)+acc320(80)+acc320(79)
      acc320(79)=QspQ*acc320(79)
      acc320(80)=Qspval6k2*Qspvak2k7
      acc320(81)=acc320(6)*acc320(80)
      acc320(82)=acc320(48)*Qspval6k7
      acc320(83)=Qspval5k2*Qspvak2k7
      acc320(84)=acc320(49)*acc320(83)
      acc320(85)=acc320(62)*Qspl6
      acc320(86)=acc320(67)*Qspk7
      acc320(87)=acc320(69)*Qspval5k7
      acc320(88)=acc320(72)*Qspval5l6
      acc320(81)=acc320(88)+acc320(87)+acc320(86)+acc320(85)+acc320(58)+acc320(&
      &84)+acc320(82)+acc320(81)
      acc320(81)=Qspvak4k2*acc320(81)
      acc320(82)=acc320(8)*acc320(80)
      acc320(84)=acc320(11)*acc320(83)
      acc320(85)=acc320(16)*Qspl6
      acc320(86)=acc320(20)*Qspk7
      acc320(87)=acc320(34)*Qspval6k7
      acc320(88)=acc320(45)*Qspval5k7
      acc320(89)=acc320(47)*Qspval5l6
      acc320(82)=acc320(89)+acc320(88)+acc320(87)+acc320(86)+acc320(85)+acc320(&
      &13)+acc320(84)+acc320(82)
      acc320(82)=Qspvak1k2*acc320(82)
      acc320(84)=acc320(21)*Qspk2
      acc320(85)=acc320(42)*Qspval6k2
      acc320(86)=acc320(50)*Qspval5k3
      acc320(87)=acc320(54)*Qspval6k7
      acc320(88)=acc320(63)*Qspval5k2
      acc320(89)=-acc320(74)*Qspval6k3
      acc320(84)=acc320(88)+acc320(87)+acc320(84)+acc320(85)+acc320(89)+acc320(&
      &86)
      acc320(85)=Qspk7+Qspl6
      acc320(84)=acc320(85)*acc320(84)
      acc320(85)=acc320(35)*Qspval5l6
      acc320(86)=acc320(55)*Qspval6k7
      acc320(87)=acc320(56)*Qspl6
      acc320(88)=acc320(60)*Qspval5k7
      acc320(89)=acc320(64)*acc320(80)
      acc320(90)=acc320(65)*acc320(83)
      acc320(85)=acc320(90)+acc320(89)+acc320(88)+acc320(87)+acc320(86)+acc320(&
      &53)+acc320(85)
      acc320(85)=Qspvak1k3*acc320(85)
      acc320(86)=acc320(36)*Qspvak1k2
      acc320(87)=acc320(51)*Qspvak4k2
      acc320(88)=acc320(59)*Qspvak1k3
      acc320(86)=acc320(88)+acc320(87)+acc320(86)+acc320(3)
      acc320(86)=Qspval6k2*acc320(86)
      acc320(87)=acc320(2)*Qspval6k7
      acc320(88)=acc320(5)*Qspvak7k2
      acc320(80)=acc320(10)*acc320(80)
      acc320(89)=acc320(14)*Qspval6k3
      acc320(90)=acc320(22)*Qspval5k3
      acc320(91)=acc320(24)*Qspval5k2
      acc320(92)=acc320(30)*Qspk2**2
      acc320(93)=acc320(39)*Qspl6
      acc320(83)=acc320(44)*acc320(83)
      acc320(94)=acc320(57)*Qspk7
      acc320(95)=acc320(71)*Qspl5
      brack=acc320(17)+acc320(77)+acc320(78)+acc320(79)+acc320(80)+acc320(81)+a&
      &cc320(82)+acc320(83)+acc320(84)+acc320(85)+acc320(86)+acc320(87)+acc320(&
      &88)+acc320(89)+acc320(90)+acc320(91)+acc320(92)+acc320(93)+acc320(94)+ac&
      &c320(95)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd320h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d320
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d320 = 0.0_ki
      d320 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d320, ki), aimag(d320), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d320h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd320h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d320
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d320 = 0.0_ki
      d320 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d320, ki), aimag(d320), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d320h0l1
