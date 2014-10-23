module     p0_dbaru_epnebbbarg_d127h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d127h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd127h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc127(78)
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5k2
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k2
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc127(1)=abb127(13)
      acc127(2)=abb127(14)
      acc127(3)=abb127(15)
      acc127(4)=abb127(16)
      acc127(5)=abb127(17)
      acc127(6)=abb127(18)
      acc127(7)=abb127(19)
      acc127(8)=abb127(20)
      acc127(9)=abb127(21)
      acc127(10)=abb127(22)
      acc127(11)=abb127(23)
      acc127(12)=abb127(24)
      acc127(13)=abb127(25)
      acc127(14)=abb127(26)
      acc127(15)=abb127(27)
      acc127(16)=abb127(28)
      acc127(17)=abb127(29)
      acc127(18)=abb127(30)
      acc127(19)=abb127(31)
      acc127(20)=abb127(32)
      acc127(21)=abb127(33)
      acc127(22)=abb127(34)
      acc127(23)=abb127(35)
      acc127(24)=abb127(36)
      acc127(25)=abb127(37)
      acc127(26)=abb127(38)
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
      acc127(52)=abb127(68)
      acc127(53)=abb127(73)
      acc127(54)=abb127(75)
      acc127(55)=abb127(77)
      acc127(56)=abb127(82)
      acc127(57)=abb127(95)
      acc127(58)=abb127(97)
      acc127(59)=abb127(112)
      acc127(60)=abb127(119)
      acc127(61)=abb127(122)
      acc127(62)=abb127(124)
      acc127(63)=abb127(125)
      acc127(64)=acc127(11)*Qspvak7k2
      acc127(65)=acc127(16)*Qspvak1k3
      acc127(66)=acc127(26)*Qspval6k2
      acc127(67)=acc127(30)*Qspvak4k2
      acc127(68)=acc127(38)*Qspval5k2
      acc127(69)=acc127(47)*QspQ
      acc127(70)=acc127(55)*Qspk2
      acc127(71)=acc127(58)*Qspk1
      acc127(72)=-Qspvak3k2*acc127(18)
      acc127(73)=Qspvak1k4*acc127(49)
      acc127(64)=acc127(70)+acc127(68)+acc127(73)+acc127(72)+acc127(71)+acc127(&
      &69)+acc127(67)+acc127(66)+acc127(23)+acc127(65)+acc127(64)
      acc127(64)=Qspvak4k3*acc127(64)
      acc127(65)=Qspk3+Qspk4
      acc127(66)=acc127(65)-Qspk1
      acc127(67)=-acc127(39)*acc127(66)
      acc127(68)=acc127(1)*Qspvak7k2
      acc127(69)=acc127(2)*Qspval6k2
      acc127(70)=acc127(32)*Qspval5k2
      acc127(71)=acc127(45)*Qspk2
      acc127(72)=acc127(51)*Qspvak7l6
      acc127(73)=acc127(52)*Qspval5l6
      acc127(67)=acc127(67)+acc127(73)+acc127(72)+acc127(71)+acc127(70)+acc127(&
      &69)+acc127(68)
      acc127(67)=Qspvak1k3*acc127(67)
      acc127(68)=-Qspk7+Qspl5+Qspl6
      acc127(69)=acc127(8)*acc127(68)
      acc127(70)=acc127(12)*Qspval5l6
      acc127(71)=acc127(22)*Qspval5k2
      acc127(72)=acc127(28)*Qspk2
      acc127(73)=acc127(33)*Qspvak7l6
      acc127(74)=acc127(40)*Qspvak7k2
      acc127(75)=acc127(50)*Qspval6k2
      acc127(69)=acc127(73)+acc127(72)+acc127(71)+acc127(70)+acc127(69)+acc127(&
      &75)+acc127(74)+acc127(17)
      acc127(69)=Qspvak1k2*acc127(69)
      acc127(70)=acc127(13)*Qspval5k2
      acc127(71)=acc127(15)*Qspvak7k2
      acc127(72)=acc127(27)*Qspval5l6
      acc127(73)=acc127(29)*Qspk2
      acc127(74)=acc127(53)*Qspvak7l6
      acc127(75)=acc127(59)*Qspval6k2
      acc127(70)=acc127(75)+acc127(74)+acc127(73)+acc127(72)+acc127(71)+acc127(&
      &14)+acc127(70)
      acc127(70)=Qspk1*acc127(70)
      acc127(71)=acc127(18)*Qspvak4k2
      acc127(72)=-acc127(49)*Qspvak1k3
      acc127(73)=acc127(20)*Qspval5k2
      acc127(74)=acc127(41)*Qspk2
      acc127(75)=acc127(60)*Qspvak7k2
      acc127(76)=acc127(61)*Qspval6k2
      acc127(71)=acc127(76)+acc127(75)+acc127(74)+acc127(73)+acc127(10)+acc127(&
      &72)+acc127(71)
      acc127(71)=QspQ*acc127(71)
      acc127(72)=acc127(3)*Qspval5k2
      acc127(73)=acc127(5)*Qspvak7k2
      acc127(74)=acc127(31)*Qspk2
      acc127(75)=acc127(43)*Qspvak7l6
      acc127(76)=acc127(44)*Qspval6k2
      acc127(77)=acc127(46)*Qspval5l6
      acc127(72)=acc127(77)+acc127(76)+acc127(75)+acc127(74)+acc127(19)+acc127(&
      &73)+acc127(72)
      acc127(73)=Qspvak1k2*Qspvak4k3
      acc127(72)=acc127(73)*acc127(72)
      acc127(74)=acc127(54)*Qspk2
      acc127(75)=acc127(56)*Qspval5k2
      acc127(76)=acc127(62)*Qspval6k2
      acc127(77)=-acc127(63)*Qspvak7k2
      acc127(74)=acc127(77)+acc127(76)+acc127(75)+acc127(74)+acc127(42)
      acc127(65)=acc127(65)*acc127(74)
      acc127(73)=-acc127(6)*acc127(73)
      acc127(74)=acc127(21)*Qspk1
      acc127(75)=-acc127(37)*Qspvak1k3
      acc127(73)=acc127(75)-acc127(35)+acc127(74)+acc127(73)
      acc127(68)=acc127(68)*acc127(73)
      acc127(66)=acc127(25)*acc127(66)
      acc127(66)=acc127(36)+acc127(66)
      acc127(66)=Qspvak4k2*acc127(66)
      acc127(73)=acc127(4)*Qspval5k2
      acc127(74)=acc127(7)*Qspvak7k2
      acc127(75)=acc127(9)*Qspval5l6
      acc127(76)=acc127(34)*Qspvak7l6
      acc127(77)=acc127(48)*Qspk2
      acc127(78)=acc127(57)*Qspval6k2
      brack=acc127(24)+acc127(64)+acc127(65)+acc127(66)+acc127(67)+acc127(68)+a&
      &cc127(69)+acc127(70)+acc127(71)+acc127(72)+acc127(73)+acc127(74)+acc127(&
      &75)+acc127(76)+acc127(77)+acc127(78)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd127h6
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
   & bind(c, name="p0_dbaru_epnebbbarg_d127h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd127h6
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
end module p0_dbaru_epnebbbarg_d127h6l1
