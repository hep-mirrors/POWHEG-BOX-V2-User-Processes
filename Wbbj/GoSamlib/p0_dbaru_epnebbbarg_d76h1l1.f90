module     p0_dbaru_epnebbbarg_d76h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d76h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd76h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc76(82)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k7
      complex(ki) :: QspQ
      complex(ki) :: Qspl5
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l5
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k7 = dotproduct(Q,spval6k7)
      QspQ = dotproduct(Q,Q)
      Qspl5 = dotproduct(Q,l5)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      acc76(1)=abb76(11)
      acc76(2)=abb76(12)
      acc76(3)=abb76(13)
      acc76(4)=abb76(14)
      acc76(5)=abb76(15)
      acc76(6)=abb76(16)
      acc76(7)=abb76(17)
      acc76(8)=abb76(18)
      acc76(9)=abb76(19)
      acc76(10)=abb76(20)
      acc76(11)=abb76(21)
      acc76(12)=abb76(22)
      acc76(13)=abb76(23)
      acc76(14)=abb76(24)
      acc76(15)=abb76(25)
      acc76(16)=abb76(26)
      acc76(17)=abb76(27)
      acc76(18)=abb76(28)
      acc76(19)=abb76(29)
      acc76(20)=abb76(30)
      acc76(21)=abb76(31)
      acc76(22)=abb76(32)
      acc76(23)=abb76(33)
      acc76(24)=abb76(34)
      acc76(25)=abb76(35)
      acc76(26)=abb76(36)
      acc76(27)=abb76(38)
      acc76(28)=abb76(39)
      acc76(29)=abb76(44)
      acc76(30)=abb76(45)
      acc76(31)=abb76(46)
      acc76(32)=abb76(47)
      acc76(33)=abb76(48)
      acc76(34)=abb76(50)
      acc76(35)=abb76(53)
      acc76(36)=abb76(55)
      acc76(37)=abb76(56)
      acc76(38)=abb76(60)
      acc76(39)=abb76(61)
      acc76(40)=abb76(62)
      acc76(41)=abb76(63)
      acc76(42)=abb76(65)
      acc76(43)=abb76(66)
      acc76(44)=abb76(67)
      acc76(45)=abb76(68)
      acc76(46)=abb76(69)
      acc76(47)=abb76(75)
      acc76(48)=abb76(77)
      acc76(49)=abb76(79)
      acc76(50)=abb76(84)
      acc76(51)=abb76(85)
      acc76(52)=abb76(89)
      acc76(53)=abb76(90)
      acc76(54)=abb76(92)
      acc76(55)=abb76(93)
      acc76(56)=abb76(94)
      acc76(57)=abb76(95)
      acc76(58)=abb76(97)
      acc76(59)=abb76(98)
      acc76(60)=Qspvak2k1*acc76(26)
      acc76(61)=Qspvak2k3*acc76(22)
      acc76(62)=Qspvak2l6*acc76(10)
      acc76(63)=Qspvak2k7*acc76(23)
      acc76(64)=Qspl6*acc76(12)
      acc76(65)=Qspval6k1*acc76(24)
      acc76(66)=Qspval6k7*acc76(27)
      acc76(67)=QspQ*acc76(18)
      acc76(68)=Qspl5*acc76(14)
      acc76(69)=Qspval6k3*acc76(39)
      acc76(70)=Qspval6l5*acc76(34)
      acc76(71)=-Qspval6l5*acc76(46)
      acc76(71)=acc76(20)+acc76(71)
      acc76(71)=Qspvak4k3*acc76(71)
      acc76(72)=Qspvak4k3*acc76(52)
      acc76(72)=acc76(15)+acc76(72)
      acc76(72)=Qspk2*acc76(72)
      acc76(60)=acc76(72)+acc76(71)+acc76(70)+acc76(69)+acc76(68)+acc76(67)+acc&
      &76(66)+acc76(65)+acc76(64)+acc76(63)+acc76(62)+acc76(61)+acc76(4)+acc76(&
      &60)
      acc76(60)=Qspvak1k2*acc76(60)
      acc76(61)=Qspvak4k2*acc76(3)
      acc76(62)=Qspval5k2*acc76(57)
      acc76(63)=Qspvak7k2*acc76(53)
      acc76(64)=Qspvak1k3*acc76(38)
      acc76(65)=Qspval6k3*acc76(21)
      acc76(66)=Qspvak4k3*acc76(58)
      acc76(67)=Qspval6k2*acc76(44)
      acc76(68)=Qspk2*acc76(47)
      acc76(61)=acc76(68)+acc76(67)+acc76(66)+acc76(65)+acc76(64)+acc76(63)+acc&
      &76(62)+acc76(45)+acc76(61)
      acc76(61)=Qspk2*acc76(61)
      acc76(62)=Qspk1*acc76(49)
      acc76(63)=Qspvak1l6*acc76(41)
      acc76(64)=-Qspvak1k7*acc76(27)
      acc76(65)=-Qspvak1k3*acc76(39)
      acc76(66)=-Qspvak1l5*acc76(34)
      acc76(67)=Qspvak1l5*acc76(46)
      acc76(67)=acc76(7)+acc76(67)
      acc76(67)=Qspvak4k3*acc76(67)
      acc76(62)=acc76(67)+acc76(66)+acc76(65)+acc76(64)+acc76(63)+acc76(9)+acc7&
      &6(62)
      acc76(62)=Qspval6k2*acc76(62)
      acc76(63)=Qspk1*acc76(55)
      acc76(64)=Qspvak1l6*acc76(32)
      acc76(65)=-Qspvak1k7*acc76(25)
      acc76(66)=-Qspvak1k3*acc76(17)
      acc76(63)=acc76(66)+acc76(65)+acc76(63)+acc76(64)
      acc76(63)=Qspval6l5*acc76(63)
      acc76(64)=Qspl6*acc76(6)
      acc76(65)=Qspval6k1*acc76(33)
      acc76(66)=Qspval6k7*acc76(25)
      acc76(67)=Qspval6k3*acc76(17)
      acc76(64)=acc76(67)+acc76(66)+acc76(65)+acc76(2)+acc76(64)
      acc76(64)=Qspvak1l5*acc76(64)
      acc76(65)=QspQ*acc76(28)
      acc76(66)=Qspl5*acc76(37)
      acc76(65)=acc76(65)+acc76(66)
      acc76(65)=Qspvak1k3*acc76(65)
      acc76(66)=QspQ*acc76(31)
      acc76(67)=Qspl5*acc76(56)
      acc76(66)=acc76(66)+acc76(67)
      acc76(66)=Qspval6k3*acc76(66)
      acc76(67)=Qspval6l5*acc76(59)
      acc76(68)=Qspvak1l5*acc76(35)
      acc76(67)=acc76(68)+acc76(30)+acc76(67)
      acc76(67)=Qspvak4k3*acc76(67)
      acc76(68)=Qspvak2k1*acc76(5)
      acc76(69)=Qspvak2k3*acc76(16)
      acc76(70)=Qspvak2l6*acc76(11)
      acc76(71)=Qspvak2k7*acc76(8)
      acc76(72)=Qspvak4k2*acc76(1)
      acc76(73)=Qspval5k2*acc76(50)
      acc76(74)=Qspvak7k2*acc76(51)
      acc76(75)=Qspk1*acc76(48)
      acc76(76)=Qspl6*acc76(40)
      acc76(77)=Qspvak1l6*acc76(29)
      acc76(78)=Qspvak1k7*acc76(19)
      acc76(79)=Qspval6k1*acc76(36)
      acc76(80)=Qspval6k7*acc76(54)
      acc76(81)=QspQ*acc76(42)
      acc76(82)=Qspl5*acc76(43)
      brack=acc76(13)+acc76(60)+acc76(61)+acc76(62)+acc76(63)+acc76(64)+acc76(6&
      &5)+acc76(66)+acc76(67)+acc76(68)+acc76(69)+acc76(70)+acc76(71)+acc76(72)&
      &+acc76(73)+acc76(74)+acc76(75)+acc76(76)+acc76(77)+acc76(78)+acc76(79)+a&
      &cc76(80)+acc76(81)+acc76(82)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd76h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d76
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d76 = 0.0_ki
      d76 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d76, ki), aimag(d76), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d76h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd76h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d76
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d76 = 0.0_ki
      d76 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d76, ki), aimag(d76), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d76h1l1
