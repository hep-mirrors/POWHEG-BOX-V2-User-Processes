module     p0_dbaru_epnebbbarg_d319h5l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d319h5l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd319h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc319(82)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k7
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k7 = dotproduct(Q,spval6k7)
      QspQ = dotproduct(Q,Q)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc319(1)=abb319(12)
      acc319(2)=abb319(13)
      acc319(3)=abb319(14)
      acc319(4)=abb319(15)
      acc319(5)=abb319(16)
      acc319(6)=abb319(17)
      acc319(7)=abb319(18)
      acc319(8)=abb319(19)
      acc319(9)=abb319(20)
      acc319(10)=abb319(21)
      acc319(11)=abb319(22)
      acc319(12)=abb319(23)
      acc319(13)=abb319(24)
      acc319(14)=abb319(25)
      acc319(15)=abb319(26)
      acc319(16)=abb319(27)
      acc319(17)=abb319(28)
      acc319(18)=abb319(29)
      acc319(19)=abb319(30)
      acc319(20)=abb319(31)
      acc319(21)=abb319(32)
      acc319(22)=abb319(33)
      acc319(23)=abb319(34)
      acc319(24)=abb319(35)
      acc319(25)=abb319(36)
      acc319(26)=abb319(37)
      acc319(27)=abb319(38)
      acc319(28)=abb319(39)
      acc319(29)=abb319(40)
      acc319(30)=abb319(41)
      acc319(31)=abb319(42)
      acc319(32)=abb319(43)
      acc319(33)=abb319(44)
      acc319(34)=abb319(45)
      acc319(35)=abb319(46)
      acc319(36)=abb319(47)
      acc319(37)=abb319(48)
      acc319(38)=abb319(50)
      acc319(39)=abb319(51)
      acc319(40)=abb319(52)
      acc319(41)=abb319(53)
      acc319(42)=abb319(55)
      acc319(43)=abb319(56)
      acc319(44)=abb319(57)
      acc319(45)=abb319(58)
      acc319(46)=abb319(59)
      acc319(47)=abb319(60)
      acc319(48)=abb319(61)
      acc319(49)=abb319(62)
      acc319(50)=abb319(65)
      acc319(51)=abb319(66)
      acc319(52)=abb319(67)
      acc319(53)=abb319(71)
      acc319(54)=abb319(73)
      acc319(55)=abb319(74)
      acc319(56)=abb319(79)
      acc319(57)=abb319(80)
      acc319(58)=abb319(84)
      acc319(59)=abb319(91)
      acc319(60)=abb319(99)
      acc319(61)=abb319(112)
      acc319(62)=abb319(149)
      acc319(63)=abb319(169)
      acc319(64)=abb319(171)
      acc319(65)=Qspk4+Qspk3
      acc319(66)=acc319(65)-Qspk2
      acc319(67)=acc319(21)*acc319(66)
      acc319(68)=Qspvak1k2*acc319(31)
      acc319(69)=Qspvak4k2*acc319(37)
      acc319(70)=Qspvak4k3*acc319(57)
      acc319(71)=Qspval6l5*acc319(49)
      acc319(67)=acc319(71)+acc319(70)+acc319(69)+acc319(68)+acc319(12)+acc319(&
      &67)
      acc319(67)=Qspk2*acc319(67)
      acc319(68)=-acc319(49)*acc319(65)
      acc319(69)=Qspvak1k2*acc319(36)
      acc319(70)=Qspvak4k2*acc319(1)
      acc319(71)=Qspvak4k3*acc319(48)
      acc319(68)=acc319(71)+acc319(70)+acc319(69)+acc319(40)+acc319(68)
      acc319(68)=Qspval6l5*acc319(68)
      acc319(69)=-acc319(59)*acc319(65)
      acc319(70)=Qspk7+Qspl5
      acc319(71)=acc319(13)*acc319(70)
      acc319(72)=Qspl6*acc319(47)
      acc319(73)=Qspvak1k3*acc319(26)
      acc319(74)=Qspval5k2*acc319(41)
      acc319(75)=Qspval6k3*acc319(53)
      acc319(76)=acc319(56)*Qspval6k7
      acc319(77)=Qspvak1k2*acc319(24)
      acc319(78)=Qspvak4k2*acc319(44)
      acc319(79)=Qspvak4k3*acc319(52)
      acc319(80)=QspQ*acc319(33)
      acc319(81)=Qspval6k2*acc319(38)
      acc319(82)=Qspvak7k2*acc319(45)
      acc319(67)=acc319(82)+acc319(67)+acc319(68)+acc319(81)+acc319(80)+acc319(&
      &79)+acc319(78)+acc319(77)+acc319(76)+acc319(75)+acc319(74)+acc319(73)+ac&
      &c319(5)+acc319(72)+acc319(71)+acc319(69)
      acc319(67)=Qspvak7k2*acc319(67)
      acc319(66)=-acc319(61)*acc319(66)
      acc319(68)=-Qspk7*acc319(64)
      acc319(69)=Qspvak1k2*acc319(11)
      acc319(71)=Qspvak4k2*acc319(27)
      acc319(72)=Qspvak4k3*acc319(55)
      acc319(73)=QspQ*acc319(39)
      acc319(74)=Qspval6k2*acc319(20)
      acc319(75)=-Qspval6l5*acc319(29)
      acc319(66)=acc319(75)+acc319(74)+acc319(73)+acc319(72)+acc319(71)+acc319(&
      &69)+acc319(68)+acc319(22)+acc319(66)
      acc319(66)=Qspk2*acc319(66)
      acc319(68)=-acc319(32)*acc319(65)
      acc319(69)=-acc319(56)*acc319(70)
      acc319(70)=Qspvak1k2*acc319(30)
      acc319(71)=Qspvak4k2*acc319(3)
      acc319(72)=Qspvak4k3*acc319(23)
      acc319(73)=QspQ*acc319(18)
      acc319(68)=acc319(73)+acc319(72)+acc319(71)+acc319(70)+acc319(8)+acc319(6&
      &9)+acc319(68)
      acc319(68)=Qspval6k2*acc319(68)
      acc319(69)=acc319(29)*acc319(65)
      acc319(70)=Qspvak1k2*acc319(34)
      acc319(71)=Qspvak4k2*acc319(2)
      acc319(72)=Qspvak4k3*acc319(58)
      acc319(73)=QspQ*acc319(35)
      acc319(69)=acc319(73)+acc319(72)+acc319(71)+acc319(70)+acc319(17)+acc319(&
      &69)
      acc319(69)=Qspval6l5*acc319(69)
      acc319(70)=acc319(16)*acc319(65)
      acc319(71)=Qspvak1k2*acc319(19)
      acc319(72)=Qspvak4k2*acc319(15)
      acc319(73)=Qspvak4k3*acc319(46)
      acc319(70)=acc319(73)+acc319(72)+acc319(71)+acc319(14)+acc319(70)
      acc319(70)=QspQ*acc319(70)
      acc319(71)=acc319(63)*acc319(65)
      acc319(72)=Qspl6*acc319(43)
      acc319(73)=Qspvak1k3*acc319(7)
      acc319(74)=Qspval5k2*acc319(25)
      acc319(75)=Qspval6k3*acc319(51)
      acc319(76)=Qspval6k7*acc319(6)
      acc319(77)=Qspl5*acc319(62)
      acc319(65)=acc319(64)*acc319(65)
      acc319(65)=acc319(60)+acc319(65)
      acc319(65)=Qspk7*acc319(65)
      acc319(78)=Qspk7*acc319(9)
      acc319(78)=acc319(4)+acc319(78)
      acc319(78)=Qspvak1k2*acc319(78)
      acc319(79)=Qspk7*acc319(50)
      acc319(79)=acc319(28)+acc319(79)
      acc319(79)=Qspvak4k2*acc319(79)
      acc319(80)=Qspk7*acc319(54)
      acc319(80)=acc319(42)+acc319(80)
      acc319(80)=Qspvak4k3*acc319(80)
      brack=acc319(10)+acc319(65)+acc319(66)+acc319(67)+acc319(68)+acc319(69)+a&
      &cc319(70)+acc319(71)+acc319(72)+acc319(73)+acc319(74)+acc319(75)+acc319(&
      &76)+acc319(77)+acc319(78)+acc319(79)+acc319(80)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd319h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d319
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d319 = 0.0_ki
      d319 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d319, ki), aimag(d319), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d319h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd319h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d319
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d319 = 0.0_ki
      d319 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d319, ki), aimag(d319), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d319h5l1
