module     p0_dbaru_epnebbbarg_d145h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d145h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd145h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc145(82)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4l6
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      acc145(1)=abb145(26)
      acc145(2)=abb145(27)
      acc145(3)=abb145(28)
      acc145(4)=abb145(29)
      acc145(5)=abb145(30)
      acc145(6)=abb145(31)
      acc145(7)=abb145(32)
      acc145(8)=abb145(33)
      acc145(9)=abb145(34)
      acc145(10)=abb145(35)
      acc145(11)=abb145(36)
      acc145(12)=abb145(37)
      acc145(13)=abb145(38)
      acc145(14)=abb145(39)
      acc145(15)=abb145(40)
      acc145(16)=abb145(41)
      acc145(17)=abb145(42)
      acc145(18)=abb145(44)
      acc145(19)=abb145(45)
      acc145(20)=abb145(46)
      acc145(21)=abb145(47)
      acc145(22)=abb145(48)
      acc145(23)=abb145(49)
      acc145(24)=abb145(50)
      acc145(25)=abb145(51)
      acc145(26)=abb145(52)
      acc145(27)=abb145(53)
      acc145(28)=abb145(54)
      acc145(29)=abb145(55)
      acc145(30)=abb145(56)
      acc145(31)=abb145(58)
      acc145(32)=abb145(60)
      acc145(33)=abb145(61)
      acc145(34)=abb145(63)
      acc145(35)=abb145(64)
      acc145(36)=abb145(67)
      acc145(37)=abb145(68)
      acc145(38)=abb145(69)
      acc145(39)=abb145(70)
      acc145(40)=abb145(71)
      acc145(41)=abb145(73)
      acc145(42)=abb145(76)
      acc145(43)=abb145(77)
      acc145(44)=abb145(78)
      acc145(45)=abb145(83)
      acc145(46)=abb145(86)
      acc145(47)=abb145(88)
      acc145(48)=abb145(89)
      acc145(49)=abb145(91)
      acc145(50)=abb145(100)
      acc145(51)=abb145(102)
      acc145(52)=abb145(103)
      acc145(53)=abb145(107)
      acc145(54)=abb145(114)
      acc145(55)=abb145(120)
      acc145(56)=abb145(146)
      acc145(57)=abb145(147)
      acc145(58)=abb145(155)
      acc145(59)=abb145(179)
      acc145(60)=abb145(184)
      acc145(61)=abb145(209)
      acc145(62)=abb145(217)
      acc145(63)=abb145(255)
      acc145(64)=abb145(258)
      acc145(65)=abb145(262)
      acc145(66)=Qspk4+Qspk3
      acc145(67)=-Qspk2+acc145(66)
      acc145(67)=acc145(23)*acc145(67)
      acc145(68)=Qspvak1k3*acc145(48)
      acc145(69)=Qspvak4k3*acc145(42)
      acc145(70)=Qspvak1k2*acc145(12)
      acc145(71)=Qspvak4k2*acc145(47)
      acc145(72)=Qspval6l5*acc145(15)
      acc145(67)=acc145(72)+acc145(71)+acc145(70)+acc145(69)+acc145(6)+acc145(6&
      &8)+acc145(67)
      acc145(67)=Qspk2*acc145(67)
      acc145(68)=-acc145(15)*acc145(66)
      acc145(69)=Qspvak1k3*acc145(39)
      acc145(70)=Qspvak4k3*acc145(38)
      acc145(71)=Qspvak1k2*acc145(11)
      acc145(72)=Qspvak4k2*acc145(43)
      acc145(68)=acc145(72)+acc145(71)+acc145(70)+acc145(14)+acc145(69)+acc145(&
      &68)
      acc145(68)=Qspval6l5*acc145(68)
      acc145(69)=Qspl6+Qspl5
      acc145(70)=-acc145(19)*acc145(69)
      acc145(71)=acc145(29)*Qspval5k2
      acc145(72)=acc145(21)*Qspval5k3
      acc145(73)=acc145(20)*Qspval6k2
      acc145(74)=acc145(17)*Qspval6k3
      acc145(75)=acc145(1)*Qspvak2k3
      acc145(76)=Qspvak1l5*acc145(22)
      acc145(77)=Qspvak1l6*acc145(41)
      acc145(78)=Qspvak4l5*acc145(35)
      acc145(79)=Qspk7*acc145(27)
      acc145(80)=Qspvak1k2*acc145(7)
      acc145(81)=Qspvak4k2*acc145(46)
      acc145(82)=QspQ*acc145(28)
      acc145(67)=acc145(67)+acc145(68)+acc145(82)+acc145(81)+acc145(80)+acc145(&
      &79)+acc145(78)+acc145(77)+acc145(76)+acc145(75)+acc145(4)+acc145(74)+acc&
      &145(73)+acc145(71)+acc145(72)+acc145(70)
      acc145(67)=Qspvak2k7*acc145(67)
      acc145(68)=-acc145(65)*acc145(66)
      acc145(70)=acc145(50)*acc145(69)
      acc145(71)=Qspvak1k7*acc145(45)
      acc145(72)=Qspvak4k7*acc145(55)
      acc145(73)=Qspvak4k3*acc145(59)
      acc145(74)=Qspk7*acc145(63)
      acc145(75)=Qspvak1k2*acc145(32)
      acc145(76)=Qspvak4k2*acc145(60)
      acc145(77)=QspQ*acc145(25)
      acc145(78)=Qspval6l5*acc145(34)
      acc145(79)=Qspk2*acc145(64)
      acc145(68)=acc145(79)+acc145(78)+acc145(77)+acc145(76)+acc145(75)+acc145(&
      &74)+acc145(73)+acc145(72)+acc145(2)+acc145(71)+acc145(70)+acc145(68)
      acc145(68)=Qspk2*acc145(68)
      acc145(70)=acc145(8)*acc145(69)
      acc145(71)=Qspvak1k7*acc145(53)
      acc145(72)=Qspvak4k7*acc145(54)
      acc145(73)=Qspk7*acc145(10)
      acc145(74)=QspQ*acc145(40)
      acc145(70)=acc145(74)+acc145(73)+acc145(72)+acc145(3)+acc145(71)+acc145(7&
      &0)
      acc145(70)=Qspval6l5*acc145(70)
      acc145(71)=acc145(66)*acc145(62)
      acc145(72)=Qspvak4k3*acc145(58)
      acc145(71)=acc145(71)+acc145(72)
      acc145(72)=Qspvak1k3*acc145(37)
      acc145(73)=Qspvak1k2*acc145(33)
      acc145(74)=Qspvak4k2*acc145(44)
      acc145(72)=acc145(74)+acc145(73)+acc145(26)+acc145(72)+acc145(71)
      acc145(72)=QspQ*acc145(72)
      acc145(73)=-acc145(31)+acc145(71)
      acc145(73)=-acc145(73)*acc145(69)
      acc145(71)=acc145(9)+acc145(71)
      acc145(71)=Qspk7*acc145(71)
      acc145(66)=acc145(61)*acc145(66)
      acc145(74)=acc145(57)*Qspvak4l6
      acc145(75)=Qspvak1l5*acc145(24)
      acc145(76)=Qspvak1l6*acc145(36)
      acc145(77)=Qspvak4l5*acc145(13)
      acc145(78)=Qspvak1k7*acc145(5)
      acc145(79)=Qspvak4k7*acc145(49)
      acc145(80)=Qspvak4k3*acc145(30)
      acc145(69)=acc145(69)-Qspk7
      acc145(81)=acc145(18)*acc145(69)
      acc145(81)=acc145(16)+acc145(81)
      acc145(81)=Qspvak1k2*acc145(81)
      acc145(69)=acc145(52)*acc145(69)
      acc145(69)=acc145(51)+acc145(69)
      acc145(69)=Qspvak4k2*acc145(69)
      brack=acc145(56)+acc145(66)+acc145(67)+acc145(68)+acc145(69)+acc145(70)+a&
      &cc145(71)+acc145(72)+acc145(73)+acc145(74)+acc145(75)+acc145(76)+acc145(&
      &77)+acc145(78)+acc145(79)+acc145(80)+acc145(81)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd145h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d145
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d145 = 0.0_ki
      d145 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d145, ki), aimag(d145), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d145h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd145h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d145
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d145 = 0.0_ki
      d145 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d145, ki), aimag(d145), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d145h1l1
