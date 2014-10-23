module     p0_dbaru_epnebbbarg_d320h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d320h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd320h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc320(97)
      complex(ki) :: Qspk2
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: QspQ
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspk7
      Qspk2 = dotproduct(Q,k2)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      QspQ = dotproduct(Q,Q)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspk7 = dotproduct(Q,k7)
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
      acc320(26)=abb320(38)
      acc320(27)=abb320(39)
      acc320(28)=abb320(40)
      acc320(29)=abb320(41)
      acc320(30)=abb320(42)
      acc320(31)=abb320(43)
      acc320(32)=abb320(44)
      acc320(33)=abb320(45)
      acc320(34)=abb320(46)
      acc320(35)=abb320(47)
      acc320(36)=abb320(48)
      acc320(37)=abb320(49)
      acc320(38)=abb320(50)
      acc320(39)=abb320(51)
      acc320(40)=abb320(53)
      acc320(41)=abb320(55)
      acc320(42)=abb320(59)
      acc320(43)=abb320(60)
      acc320(44)=abb320(62)
      acc320(45)=abb320(63)
      acc320(46)=abb320(64)
      acc320(47)=abb320(65)
      acc320(48)=abb320(66)
      acc320(49)=abb320(69)
      acc320(50)=abb320(71)
      acc320(51)=abb320(72)
      acc320(52)=abb320(73)
      acc320(53)=abb320(75)
      acc320(54)=abb320(76)
      acc320(55)=abb320(77)
      acc320(56)=abb320(79)
      acc320(57)=abb320(80)
      acc320(58)=abb320(81)
      acc320(59)=abb320(83)
      acc320(60)=abb320(84)
      acc320(61)=abb320(85)
      acc320(62)=abb320(89)
      acc320(63)=abb320(92)
      acc320(64)=abb320(93)
      acc320(65)=abb320(94)
      acc320(66)=abb320(96)
      acc320(67)=abb320(97)
      acc320(68)=abb320(98)
      acc320(69)=abb320(101)
      acc320(70)=abb320(103)
      acc320(71)=abb320(104)
      acc320(72)=abb320(105)
      acc320(73)=abb320(107)
      acc320(74)=abb320(108)
      acc320(75)=abb320(109)
      acc320(76)=abb320(110)
      acc320(77)=acc320(5)*Qspk2
      acc320(78)=acc320(7)*Qspl6
      acc320(79)=acc320(13)*Qspvak2k3
      acc320(80)=acc320(16)*Qspvak1k2
      acc320(81)=acc320(18)*Qspvak7l6
      acc320(82)=acc320(21)*Qspl5
      acc320(83)=acc320(23)*Qspvak1l6
      acc320(84)=acc320(26)*Qspvak1k3
      acc320(85)=acc320(28)*Qspvak2k7
      acc320(86)=acc320(47)*Qspvak1l5
      acc320(87)=acc320(49)*Qspvak4k2
      acc320(88)=acc320(51)*Qspvak4l5
      acc320(89)=Qspval5l6*acc320(20)
      acc320(90)=Qspvak4l6*acc320(32)
      acc320(77)=acc320(87)+acc320(84)+acc320(80)+acc320(90)+acc320(89)+acc320(&
      &88)+acc320(86)+acc320(85)+acc320(83)+acc320(82)+acc320(81)+acc320(79)+ac&
      &c320(78)+acc320(77)+acc320(3)
      acc320(77)=Qspvak7k2*acc320(77)
      acc320(78)=acc320(12)*Qspvak1k2
      acc320(79)=acc320(25)*Qspvak1l5
      acc320(80)=acc320(44)*Qspk2
      acc320(81)=acc320(56)*Qspvak2k3
      acc320(82)=acc320(62)*Qspvak4k2
      acc320(83)=-acc320(64)*Qspvak1l6
      acc320(84)=acc320(69)*Qspvak1k3
      acc320(85)=acc320(73)*Qspvak7l6
      acc320(78)=acc320(85)+acc320(84)+acc320(83)+acc320(82)+acc320(81)+acc320(&
      &80)+acc320(43)+acc320(79)+acc320(78)
      acc320(78)=QspQ*acc320(78)
      acc320(79)=acc320(15)*Qspk2
      acc320(80)=acc320(31)*Qspval6l5
      acc320(81)=Qspvak2l5*Qspvak7k2
      acc320(82)=acc320(33)*acc320(81)
      acc320(83)=Qspvak2l6*Qspvak7k2
      acc320(84)=acc320(34)*acc320(83)
      acc320(85)=acc320(45)*Qspvak7l5
      acc320(86)=acc320(65)*Qspvak7l6
      acc320(87)=acc320(67)*Qspl6
      acc320(79)=acc320(87)+acc320(86)+acc320(85)+acc320(84)+acc320(82)+acc320(&
      &80)+acc320(79)+acc320(6)
      acc320(79)=Qspvak4k2*acc320(79)
      acc320(80)=acc320(46)*acc320(83)
      acc320(82)=acc320(48)*Qspval6l5
      acc320(84)=acc320(52)*acc320(81)
      acc320(85)=acc320(55)*Qspl6
      acc320(86)=acc320(71)*Qspk2
      acc320(87)=acc320(72)*Qspvak7l6
      acc320(88)=acc320(76)*Qspvak7l5
      acc320(80)=acc320(88)+acc320(87)+acc320(86)+acc320(85)+acc320(84)+acc320(&
      &50)+acc320(82)+acc320(80)
      acc320(80)=Qspvak1k3*acc320(80)
      acc320(82)=acc320(11)*Qspk2
      acc320(84)=acc320(17)*Qspval6l5
      acc320(85)=acc320(27)*acc320(83)
      acc320(86)=acc320(35)*Qspvak7l5
      acc320(87)=acc320(36)*Qspl6
      acc320(88)=acc320(37)*acc320(81)
      acc320(89)=acc320(39)*Qspvak7l6
      acc320(82)=acc320(89)+acc320(88)+acc320(87)+acc320(86)+acc320(85)+acc320(&
      &84)+acc320(82)+acc320(10)
      acc320(82)=Qspvak1k2*acc320(82)
      acc320(84)=-acc320(1)*Qspvak1l6
      acc320(85)=-acc320(40)*Qspvak1l5
      acc320(86)=-acc320(53)*Qspk2
      acc320(87)=acc320(57)*Qspvak2k3
      acc320(88)=-acc320(68)*Qspvak7l6
      acc320(84)=acc320(88)+acc320(87)+acc320(86)+acc320(84)+acc320(85)
      acc320(85)=Qspk7+Qspl6
      acc320(84)=acc320(85)*acc320(84)
      acc320(85)=acc320(41)*Qspvak1l5
      acc320(86)=acc320(60)*Qspvak2k3
      acc320(87)=acc320(70)*Qspvak1l6
      acc320(88)=acc320(74)*Qspvak7l6
      acc320(85)=acc320(88)+acc320(87)+acc320(86)+acc320(85)+acc320(8)
      acc320(85)=Qspk2*acc320(85)
      acc320(86)=acc320(9)*Qspvak1k3
      acc320(87)=acc320(14)*Qspvak1k2
      acc320(88)=acc320(29)*Qspvak4k2
      acc320(86)=acc320(30)+acc320(88)+acc320(87)+acc320(86)
      acc320(86)=Qspvak2l6*acc320(86)
      acc320(87)=acc320(2)*Qspvak2l5
      acc320(83)=acc320(4)*acc320(83)
      acc320(81)=acc320(19)*acc320(81)
      acc320(88)=acc320(24)*Qspvak1l5
      acc320(89)=acc320(38)*Qspvak2k3
      acc320(90)=acc320(42)*Qspvak4l5
      acc320(91)=acc320(54)*Qspl5
      acc320(92)=acc320(58)*Qspvak2k7
      acc320(93)=acc320(59)*Qspk7
      acc320(94)=acc320(61)*Qspk2**2
      acc320(95)=acc320(63)*Qspvak7l6
      acc320(96)=acc320(66)*Qspvak1l6
      acc320(97)=acc320(75)*Qspl6
      brack=acc320(22)+acc320(77)+acc320(78)+acc320(79)+acc320(80)+acc320(81)+a&
      &cc320(82)+acc320(83)+acc320(84)+acc320(85)+acc320(86)+acc320(87)+acc320(&
      &88)+acc320(89)+acc320(90)+acc320(91)+acc320(92)+acc320(93)+acc320(94)+ac&
      &c320(95)+acc320(96)+acc320(97)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd320h7
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
   & bind(c, name="p0_dbaru_epnebbbarg_d320h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd320h7
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
end module p0_dbaru_epnebbbarg_d320h7l1
