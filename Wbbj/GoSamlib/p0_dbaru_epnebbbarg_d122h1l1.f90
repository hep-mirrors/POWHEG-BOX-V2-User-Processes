module     p0_dbaru_epnebbbarg_d122h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d122h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd122h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc122(81)
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak3k7
      complex(ki) :: Qspvak3l5
      complex(ki) :: Qspvak3l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvak1k3
      complex(ki) :: QspQ
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak3k7 = dotproduct(Q,spvak3k7)
      Qspvak3l5 = dotproduct(Q,spvak3l5)
      Qspvak3l6 = dotproduct(Q,spvak3l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      QspQ = dotproduct(Q,Q)
      acc122(1)=abb122(11)
      acc122(2)=abb122(12)
      acc122(3)=abb122(13)
      acc122(4)=abb122(14)
      acc122(5)=abb122(15)
      acc122(6)=abb122(16)
      acc122(7)=abb122(17)
      acc122(8)=abb122(18)
      acc122(9)=abb122(19)
      acc122(10)=abb122(20)
      acc122(11)=abb122(21)
      acc122(12)=abb122(22)
      acc122(13)=abb122(23)
      acc122(14)=abb122(24)
      acc122(15)=abb122(25)
      acc122(16)=abb122(26)
      acc122(17)=abb122(27)
      acc122(18)=abb122(28)
      acc122(19)=abb122(29)
      acc122(20)=abb122(30)
      acc122(21)=abb122(31)
      acc122(22)=abb122(32)
      acc122(23)=abb122(33)
      acc122(24)=abb122(34)
      acc122(25)=abb122(35)
      acc122(26)=abb122(36)
      acc122(27)=abb122(37)
      acc122(28)=abb122(38)
      acc122(29)=abb122(39)
      acc122(30)=abb122(40)
      acc122(31)=abb122(41)
      acc122(32)=abb122(42)
      acc122(33)=abb122(43)
      acc122(34)=abb122(44)
      acc122(35)=abb122(45)
      acc122(36)=abb122(48)
      acc122(37)=abb122(49)
      acc122(38)=abb122(50)
      acc122(39)=abb122(52)
      acc122(40)=abb122(55)
      acc122(41)=abb122(57)
      acc122(42)=abb122(58)
      acc122(43)=abb122(63)
      acc122(44)=abb122(67)
      acc122(45)=abb122(70)
      acc122(46)=abb122(71)
      acc122(47)=abb122(76)
      acc122(48)=abb122(87)
      acc122(49)=abb122(88)
      acc122(50)=abb122(89)
      acc122(51)=abb122(94)
      acc122(52)=abb122(103)
      acc122(53)=abb122(109)
      acc122(54)=abb122(115)
      acc122(55)=abb122(131)
      acc122(56)=abb122(139)
      acc122(57)=abb122(144)
      acc122(58)=abb122(145)
      acc122(59)=abb122(147)
      acc122(60)=abb122(148)
      acc122(61)=abb122(149)
      acc122(62)=Qspvak4l5*acc122(61)
      acc122(63)=Qspvak4l6*acc122(60)
      acc122(64)=Qspvak4k7*acc122(59)
      acc122(62)=-acc122(64)+acc122(62)+acc122(63)
      acc122(63)=Qspk7+Qspl6
      acc122(64)=acc122(44)*acc122(63)
      acc122(65)=Qspk4+Qspk3
      acc122(66)=-Qspk2+acc122(65)
      acc122(66)=acc122(52)*acc122(66)
      acc122(67)=Qspval6k2*acc122(57)
      acc122(68)=Qspval6k3*acc122(50)
      acc122(69)=Qspvak1k7*acc122(26)
      acc122(70)=Qspval6k7*acc122(54)
      acc122(71)=Qspvak4k2*acc122(19)
      acc122(72)=Qspvak2k7*acc122(25)
      acc122(73)=Qspvak4k3*acc122(33)
      acc122(64)=acc122(73)+acc122(72)+acc122(71)+acc122(70)+acc122(69)+acc122(&
      &68)+acc122(17)+acc122(67)+acc122(66)+acc122(64)-acc122(62)
      acc122(64)=Qspk2*acc122(64)
      acc122(66)=-acc122(38)*acc122(63)
      acc122(67)=acc122(31)*Qspvak3k7
      acc122(68)=-acc122(37)*Qspvak3l5
      acc122(69)=-acc122(36)*Qspvak3l6
      acc122(70)=Qspvak4l5*acc122(32)
      acc122(71)=Qspvak4l6*acc122(47)
      acc122(72)=Qspvak4k7*acc122(23)
      acc122(73)=Qspval6k7*acc122(3)
      acc122(74)=Qspvak2k7*acc122(14)
      acc122(66)=acc122(74)+acc122(73)+acc122(72)+acc122(71)+acc122(70)+acc122(&
      &69)+acc122(68)+acc122(67)+acc122(10)+acc122(66)
      acc122(66)=Qspvak4k3*acc122(66)
      acc122(67)=-acc122(25)*acc122(65)
      acc122(68)=acc122(42)*Qspvak7k2
      acc122(69)=acc122(39)*Qspvak7k3
      acc122(70)=Qspvak1k2*acc122(22)
      acc122(71)=Qspval6k2*acc122(46)
      acc122(72)=Qspval6k3*acc122(45)
      acc122(73)=Qspvak1k7*acc122(29)
      acc122(74)=Qspvak4k2*acc122(4)
      acc122(67)=acc122(74)+acc122(73)+acc122(72)+acc122(71)+acc122(70)+acc122(&
      &20)+acc122(68)+acc122(69)+acc122(67)
      acc122(67)=Qspvak2k7*acc122(67)
      acc122(68)=acc122(18)*acc122(63)
      acc122(69)=acc122(37)*Qspvak2l5
      acc122(70)=acc122(36)*Qspvak2l6
      acc122(71)=Qspvak4l5*acc122(7)
      acc122(72)=Qspvak4l6*acc122(24)
      acc122(73)=Qspvak4k7*acc122(21)
      acc122(74)=Qspval6k7*acc122(2)
      acc122(68)=acc122(74)+acc122(73)+acc122(72)+acc122(71)+acc122(70)+acc122(&
      &6)+acc122(69)+acc122(68)
      acc122(68)=Qspvak4k2*acc122(68)
      acc122(69)=acc122(55)*acc122(65)
      acc122(70)=Qspvak1l6*acc122(15)
      acc122(71)=-Qspvak2k3*acc122(48)
      acc122(72)=Qspvak1k7*acc122(27)
      acc122(69)=acc122(72)+acc122(71)+acc122(49)+acc122(70)+acc122(69)
      acc122(69)=Qspval6k7*acc122(69)
      acc122(70)=acc122(53)*acc122(63)
      acc122(62)=-acc122(62)+acc122(70)+acc122(51)
      acc122(62)=-acc122(62)*acc122(65)
      acc122(65)=Qspvak2k3*acc122(12)
      acc122(70)=Qspvak1k7*acc122(16)
      acc122(65)=-acc122(40)+acc122(65)+acc122(70)
      acc122(63)=acc122(65)*acc122(63)
      acc122(65)=acc122(58)*Qspval5l6
      acc122(70)=acc122(43)*Qspval6l5
      acc122(71)=acc122(41)*Qspval5k7
      acc122(72)=acc122(34)*Qspvak1k3
      acc122(73)=acc122(28)*QspQ
      acc122(74)=Qspvak1k2*acc122(35)
      acc122(75)=Qspvak1l6*acc122(30)
      acc122(76)=Qspvak2l5*acc122(8)
      acc122(77)=Qspvak2l6*acc122(5)
      acc122(78)=Qspval6k2*acc122(11)
      acc122(79)=Qspval6k3*acc122(56)
      acc122(80)=Qspvak2k3*acc122(9)
      acc122(81)=Qspvak1k7*acc122(13)
      brack=acc122(1)+acc122(62)+acc122(63)+acc122(64)+acc122(65)+acc122(66)+ac&
      &c122(67)+acc122(68)+acc122(69)+acc122(70)+acc122(71)+acc122(72)+acc122(7&
      &3)+acc122(74)+acc122(75)+acc122(76)+acc122(77)+acc122(78)+acc122(79)+acc&
      &122(80)+acc122(81)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd122h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d122
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d122 = 0.0_ki
      d122 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d122, ki), aimag(d122), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d122h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd122h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d122
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d122 = 0.0_ki
      d122 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d122, ki), aimag(d122), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d122h1l1
