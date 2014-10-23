module     p0_dbaru_epnebbbarg_d240h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d240h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd240h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc240(91)
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: QspQ
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      QspQ = dotproduct(Q,Q)
      acc240(1)=abb240(16)
      acc240(2)=abb240(17)
      acc240(3)=abb240(18)
      acc240(4)=abb240(19)
      acc240(5)=abb240(20)
      acc240(6)=abb240(21)
      acc240(7)=abb240(22)
      acc240(8)=abb240(23)
      acc240(9)=abb240(24)
      acc240(10)=abb240(25)
      acc240(11)=abb240(26)
      acc240(12)=abb240(27)
      acc240(13)=abb240(28)
      acc240(14)=abb240(29)
      acc240(15)=abb240(30)
      acc240(16)=abb240(31)
      acc240(17)=abb240(32)
      acc240(18)=abb240(33)
      acc240(19)=abb240(34)
      acc240(20)=abb240(36)
      acc240(21)=abb240(37)
      acc240(22)=abb240(43)
      acc240(23)=abb240(44)
      acc240(24)=abb240(45)
      acc240(25)=abb240(46)
      acc240(26)=abb240(47)
      acc240(27)=abb240(48)
      acc240(28)=abb240(49)
      acc240(29)=abb240(53)
      acc240(30)=abb240(55)
      acc240(31)=abb240(57)
      acc240(32)=abb240(60)
      acc240(33)=abb240(62)
      acc240(34)=abb240(63)
      acc240(35)=abb240(64)
      acc240(36)=abb240(67)
      acc240(37)=abb240(68)
      acc240(38)=abb240(69)
      acc240(39)=abb240(70)
      acc240(40)=abb240(71)
      acc240(41)=abb240(73)
      acc240(42)=abb240(78)
      acc240(43)=abb240(79)
      acc240(44)=abb240(80)
      acc240(45)=abb240(81)
      acc240(46)=abb240(82)
      acc240(47)=abb240(83)
      acc240(48)=abb240(93)
      acc240(49)=abb240(94)
      acc240(50)=abb240(96)
      acc240(51)=abb240(108)
      acc240(52)=abb240(118)
      acc240(53)=abb240(140)
      acc240(54)=abb240(143)
      acc240(55)=abb240(148)
      acc240(56)=abb240(162)
      acc240(57)=abb240(165)
      acc240(58)=abb240(184)
      acc240(59)=abb240(199)
      acc240(60)=abb240(200)
      acc240(61)=abb240(203)
      acc240(62)=abb240(367)
      acc240(63)=abb240(370)
      acc240(64)=abb240(371)
      acc240(65)=acc240(1)*Qspval5l6
      acc240(66)=acc240(5)*Qspvak7k2
      acc240(67)=acc240(20)*Qspval5k2
      acc240(68)=acc240(26)*Qspvak7l6
      acc240(69)=acc240(35)*Qspk2
      acc240(70)=acc240(47)*Qspval6k2
      acc240(71)=acc240(56)*Qspl5
      acc240(72)=acc240(57)*Qspk7
      acc240(73)=acc240(59)*Qspl6
      acc240(65)=acc240(73)+acc240(72)+acc240(71)+acc240(70)+acc240(69)+acc240(&
      &29)+acc240(68)+acc240(67)+acc240(66)+acc240(65)
      acc240(65)=Qspvak4k2*acc240(65)
      acc240(66)=acc240(2)*Qspvak7l6
      acc240(67)=acc240(9)*Qspvak7k2
      acc240(68)=acc240(10)*Qspval5l6
      acc240(69)=acc240(13)*Qspval6k2
      acc240(70)=acc240(15)*Qspl5
      acc240(71)=acc240(17)*Qspk2
      acc240(72)=acc240(18)*Qspval5k2
      acc240(73)=acc240(45)*Qspk7
      acc240(74)=acc240(46)*Qspl6
      acc240(66)=acc240(74)+acc240(73)+acc240(72)+acc240(71)+acc240(70)+acc240(&
      &69)+acc240(68)+acc240(67)+acc240(6)+acc240(66)
      acc240(66)=Qspvak1k2*acc240(66)
      acc240(67)=-Qspl5+Qspk7-Qspl6
      acc240(67)=acc240(38)*acc240(67)
      acc240(68)=acc240(11)*Qspvak7k2
      acc240(69)=acc240(23)*Qspval5l6
      acc240(70)=acc240(36)*Qspval5k2
      acc240(71)=acc240(44)*Qspk2
      acc240(72)=acc240(48)*Qspvak7l6
      acc240(73)=acc240(50)*Qspval6k2
      acc240(67)=acc240(67)+acc240(73)+acc240(72)+acc240(71)+acc240(70)+acc240(&
      &69)+acc240(68)
      acc240(67)=Qspvak1k3*acc240(67)
      acc240(68)=acc240(49)*Qspvak7k2
      acc240(69)=acc240(52)*Qspk2
      acc240(70)=acc240(54)*Qspval5l6
      acc240(71)=acc240(55)*Qspvak7l6
      acc240(72)=acc240(58)*Qspk7
      acc240(73)=acc240(60)*Qspl6
      acc240(74)=acc240(61)*Qspl5
      acc240(68)=acc240(74)+acc240(73)+acc240(72)+acc240(71)+acc240(70)+acc240(&
      &69)+acc240(68)+acc240(22)
      acc240(68)=Qspvak4k3*acc240(68)
      acc240(69)=acc240(24)*Qspval5l6
      acc240(70)=acc240(28)*Qspvak7k2
      acc240(71)=acc240(43)*Qspvak7l6
      acc240(72)=-acc240(62)*Qspk7
      acc240(73)=acc240(63)*Qspl5
      acc240(74)=acc240(64)*Qspl6
      acc240(69)=acc240(74)+acc240(73)+acc240(72)+acc240(71)+acc240(70)+acc240(&
      &69)
      acc240(70)=Qspk3+Qspk4
      acc240(71)=acc240(70)-Qspk2
      acc240(69)=acc240(71)*acc240(69)
      acc240(71)=Qspk2*acc240(70)
      acc240(72)=Qspk2**2
      acc240(71)=-acc240(72)+acc240(71)
      acc240(71)=acc240(21)*acc240(71)
      acc240(70)=acc240(37)*acc240(70)
      acc240(72)=acc240(4)*Qspval5k2
      acc240(73)=acc240(7)*Qspk2
      acc240(74)=acc240(8)*Qspvak7k2
      acc240(75)=acc240(16)*Qspval5l6
      acc240(76)=acc240(19)*Qspl5
      acc240(77)=acc240(25)*Qspk7
      acc240(78)=acc240(32)*Qspvak7l6
      acc240(79)=acc240(33)*Qspval6k2
      acc240(80)=acc240(53)*Qspl6
      acc240(81)=Qspvak7k3*acc240(40)
      acc240(82)=Qspval6k3*acc240(39)
      acc240(83)=Qspval5k3*acc240(31)
      acc240(84)=Qspvak4k7*acc240(41)
      acc240(85)=Qspvak4l6*acc240(30)
      acc240(86)=Qspvak4l5*acc240(51)
      acc240(87)=Qspvak2k3*acc240(3)
      acc240(88)=Qspvak1k7*acc240(42)
      acc240(89)=Qspvak1l6*acc240(27)
      acc240(90)=Qspvak1l5*acc240(34)
      acc240(91)=QspQ*acc240(14)
      brack=acc240(12)+acc240(65)+acc240(66)+acc240(67)+acc240(68)+acc240(69)+a&
      &cc240(70)+acc240(71)+acc240(72)+acc240(73)+acc240(74)+acc240(75)+acc240(&
      &76)+acc240(77)+acc240(78)+acc240(79)+acc240(80)+acc240(81)+acc240(82)+ac&
      &c240(83)+acc240(84)+acc240(85)+acc240(86)+acc240(87)+acc240(88)+acc240(8&
      &9)+acc240(90)+acc240(91)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd240h6
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
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d240h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd240h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d240
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d240 = 0.0_ki
      d240 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d240, ki), aimag(d240), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d240h6l1
