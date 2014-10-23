module     p0_dbaru_epnebbbarg_d310h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d310h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd310h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc310(82)
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k7
      complex(ki) :: QspQ
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspk7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak1k3
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k7 = dotproduct(Q,spval5k7)
      QspQ = dotproduct(Q,Q)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspk7 = dotproduct(Q,k7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      acc310(1)=abb310(10)
      acc310(2)=abb310(11)
      acc310(3)=abb310(12)
      acc310(4)=abb310(13)
      acc310(5)=abb310(14)
      acc310(6)=abb310(15)
      acc310(7)=abb310(16)
      acc310(8)=abb310(17)
      acc310(9)=abb310(18)
      acc310(10)=abb310(19)
      acc310(11)=abb310(20)
      acc310(12)=abb310(21)
      acc310(13)=abb310(22)
      acc310(14)=abb310(23)
      acc310(15)=abb310(24)
      acc310(16)=abb310(25)
      acc310(17)=abb310(27)
      acc310(18)=abb310(28)
      acc310(19)=abb310(29)
      acc310(20)=abb310(30)
      acc310(21)=abb310(31)
      acc310(22)=abb310(33)
      acc310(23)=abb310(35)
      acc310(24)=abb310(36)
      acc310(25)=abb310(38)
      acc310(26)=abb310(39)
      acc310(27)=abb310(40)
      acc310(28)=abb310(41)
      acc310(29)=abb310(42)
      acc310(30)=abb310(43)
      acc310(31)=abb310(44)
      acc310(32)=abb310(45)
      acc310(33)=abb310(46)
      acc310(34)=abb310(48)
      acc310(35)=abb310(49)
      acc310(36)=abb310(50)
      acc310(37)=abb310(51)
      acc310(38)=abb310(53)
      acc310(39)=abb310(54)
      acc310(40)=abb310(55)
      acc310(41)=abb310(56)
      acc310(42)=abb310(58)
      acc310(43)=abb310(59)
      acc310(44)=abb310(60)
      acc310(45)=abb310(61)
      acc310(46)=abb310(62)
      acc310(47)=abb310(63)
      acc310(48)=abb310(66)
      acc310(49)=abb310(68)
      acc310(50)=abb310(72)
      acc310(51)=abb310(73)
      acc310(52)=abb310(81)
      acc310(53)=abb310(89)
      acc310(54)=abb310(92)
      acc310(55)=abb310(93)
      acc310(56)=abb310(96)
      acc310(57)=abb310(101)
      acc310(58)=abb310(103)
      acc310(59)=abb310(104)
      acc310(60)=abb310(107)
      acc310(61)=abb310(114)
      acc310(62)=abb310(115)
      acc310(63)=Qspk3+Qspk4
      acc310(64)=-acc310(21)*acc310(63)
      acc310(65)=acc310(4)*Qspvak4k2
      acc310(66)=acc310(6)*Qspval5k2
      acc310(67)=acc310(17)*Qspk2
      acc310(68)=acc310(23)*Qspk1
      acc310(69)=acc310(24)*Qspvak1k7
      acc310(70)=acc310(26)*Qspval6k7
      acc310(71)=acc310(33)*Qspval5l6
      acc310(72)=acc310(34)*Qspval5k3
      acc310(73)=acc310(36)*Qspvak4k3
      acc310(64)=acc310(73)+acc310(72)+acc310(67)+acc310(65)+acc310(64)+acc310(&
      &71)+acc310(70)+acc310(69)+acc310(68)+acc310(12)+acc310(66)
      acc310(64)=Qspvak2k7*acc310(64)
      acc310(65)=Qspvak1k2*Qspvak2k7
      acc310(66)=acc310(5)*acc310(65)
      acc310(67)=Qspval6k2*Qspvak2k7
      acc310(68)=acc310(18)*acc310(67)
      acc310(69)=acc310(31)*Qspvak1k2
      acc310(70)=acc310(45)*Qspvak1k7
      acc310(71)=-acc310(46)*Qspk1
      acc310(72)=acc310(60)*Qspval6k7
      acc310(73)=-acc310(62)*Qspval6k1
      acc310(66)=acc310(73)+acc310(72)+acc310(71)+acc310(70)+acc310(69)+acc310(&
      &66)+acc310(68)
      acc310(68)=acc310(63)-Qspk2
      acc310(66)=acc310(68)*acc310(66)
      acc310(68)=acc310(20)*acc310(65)
      acc310(69)=acc310(29)*Qspvak1k2
      acc310(70)=acc310(38)*acc310(67)
      acc310(71)=acc310(49)*Qspvak1k7
      acc310(72)=acc310(52)*Qspk1
      acc310(73)=acc310(54)*Qspval6k7
      acc310(74)=acc310(55)*Qspval6k1
      acc310(68)=acc310(74)+acc310(73)+acc310(72)+acc310(71)+acc310(70)+acc310(&
      &32)+acc310(69)+acc310(68)
      acc310(68)=Qspvak4k3*acc310(68)
      acc310(69)=acc310(9)*acc310(65)
      acc310(70)=acc310(10)*Qspk1
      acc310(71)=acc310(11)*Qspval6k7
      acc310(72)=acc310(13)*Qspval6k1
      acc310(73)=acc310(22)*Qspvak1k2
      acc310(74)=acc310(27)*acc310(67)
      acc310(75)=acc310(48)*Qspvak1k7
      acc310(69)=acc310(75)+acc310(74)+acc310(73)+acc310(72)+acc310(71)+acc310(&
      &70)+acc310(69)+acc310(1)
      acc310(69)=Qspvak4k2*acc310(69)
      acc310(70)=Qspval5k7*acc310(7)
      acc310(71)=acc310(14)*QspQ
      acc310(72)=acc310(15)*Qspval5k1
      acc310(73)=acc310(39)*Qspval6k1
      acc310(70)=acc310(73)+acc310(72)+acc310(71)+acc310(8)+acc310(70)
      acc310(70)=Qspvak1k2*acc310(70)
      acc310(71)=-acc310(19)*Qspvak1k2
      acc310(72)=acc310(42)*Qspvak1k7
      acc310(73)=acc310(59)*Qspval6k7
      acc310(71)=acc310(73)+acc310(72)+acc310(71)
      acc310(72)=Qspk7-Qspk1
      acc310(71)=acc310(72)*acc310(71)
      acc310(72)=-acc310(7)*Qspvak1k7
      acc310(73)=acc310(35)*Qspk1
      acc310(72)=acc310(73)+acc310(3)+acc310(72)
      acc310(72)=Qspval5k2*acc310(72)
      acc310(73)=acc310(41)*Qspvak1k7
      acc310(74)=acc310(58)*Qspval6k7
      acc310(73)=acc310(74)+acc310(50)+acc310(73)
      acc310(73)=QspQ*acc310(73)
      acc310(74)=-Qspval5k3*acc310(25)
      acc310(75)=-Qspval6k3*acc310(40)
      acc310(74)=acc310(75)+acc310(2)+acc310(74)
      acc310(65)=acc310(65)*acc310(74)
      acc310(74)=Qspval6k7*Qspvak1k2
      acc310(75)=-Qspval6k2*Qspvak1k7
      acc310(74)=acc310(74)+acc310(75)
      acc310(74)=acc310(37)*acc310(74)
      acc310(75)=Qspval5k2*acc310(25)*Qspvak2k7
      acc310(76)=acc310(40)*acc310(67)
      acc310(75)=acc310(75)+acc310(76)
      acc310(75)=Qspvak1k3*acc310(75)
      acc310(76)=acc310(61)*Qspk1
      acc310(76)=acc310(76)+acc310(53)
      acc310(76)=Qspval6k2*acc310(76)
      acc310(63)=-acc310(56)*acc310(63)
      acc310(67)=acc310(16)*acc310(67)
      acc310(77)=acc310(30)*Qspval5k7
      acc310(78)=acc310(43)*Qspval5k1
      acc310(79)=acc310(44)*Qspk1
      acc310(80)=acc310(47)*Qspk2
      acc310(81)=acc310(51)*Qspk7
      acc310(82)=acc310(57)*Qspval5l6
      brack=acc310(28)+acc310(63)+acc310(64)+acc310(65)+acc310(66)+acc310(67)+a&
      &cc310(68)+acc310(69)+acc310(70)+acc310(71)+acc310(72)+acc310(73)+acc310(&
      &74)+acc310(75)+acc310(76)+acc310(77)+acc310(78)+acc310(79)+acc310(80)+ac&
      &c310(81)+acc310(82)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd310h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d310
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d310 = 0.0_ki
      d310 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d310, ki), aimag(d310), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d310h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd310h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d310
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d310 = 0.0_ki
      d310 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d310, ki), aimag(d310), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d310h0l1
