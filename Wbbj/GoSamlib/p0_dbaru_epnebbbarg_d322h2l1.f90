module     p0_dbaru_epnebbbarg_d322h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d322h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd322h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc322(80)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k7
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspl5 = dotproduct(Q,l5)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      acc322(1)=abb322(12)
      acc322(2)=abb322(13)
      acc322(3)=abb322(14)
      acc322(4)=abb322(15)
      acc322(5)=abb322(16)
      acc322(6)=abb322(17)
      acc322(7)=abb322(18)
      acc322(8)=abb322(19)
      acc322(9)=abb322(20)
      acc322(10)=abb322(21)
      acc322(11)=abb322(22)
      acc322(12)=abb322(23)
      acc322(13)=abb322(24)
      acc322(14)=abb322(25)
      acc322(15)=abb322(26)
      acc322(16)=abb322(27)
      acc322(17)=abb322(28)
      acc322(18)=abb322(29)
      acc322(19)=abb322(30)
      acc322(20)=abb322(31)
      acc322(21)=abb322(33)
      acc322(22)=abb322(34)
      acc322(23)=abb322(35)
      acc322(24)=abb322(36)
      acc322(25)=abb322(37)
      acc322(26)=abb322(38)
      acc322(27)=abb322(40)
      acc322(28)=abb322(41)
      acc322(29)=abb322(42)
      acc322(30)=abb322(44)
      acc322(31)=abb322(45)
      acc322(32)=abb322(47)
      acc322(33)=abb322(48)
      acc322(34)=abb322(49)
      acc322(35)=abb322(50)
      acc322(36)=abb322(51)
      acc322(37)=abb322(52)
      acc322(38)=abb322(53)
      acc322(39)=abb322(54)
      acc322(40)=abb322(55)
      acc322(41)=abb322(58)
      acc322(42)=abb322(59)
      acc322(43)=abb322(60)
      acc322(44)=abb322(62)
      acc322(45)=abb322(63)
      acc322(46)=abb322(65)
      acc322(47)=abb322(66)
      acc322(48)=abb322(68)
      acc322(49)=abb322(70)
      acc322(50)=abb322(72)
      acc322(51)=abb322(73)
      acc322(52)=abb322(74)
      acc322(53)=abb322(81)
      acc322(54)=abb322(97)
      acc322(55)=abb322(101)
      acc322(56)=abb322(105)
      acc322(57)=abb322(107)
      acc322(58)=abb322(109)
      acc322(59)=abb322(124)
      acc322(60)=abb322(129)
      acc322(61)=abb322(132)
      acc322(62)=abb322(137)
      acc322(63)=Qspvak1k2*acc322(9)
      acc322(64)=Qspvak1k3*acc322(27)
      acc322(65)=Qspvak4k2*acc322(47)
      acc322(63)=acc322(65)+acc322(64)+acc322(17)+acc322(63)
      acc322(63)=Qspk2*acc322(63)
      acc322(64)=acc322(45)*Qspval5k2
      acc322(65)=acc322(39)*Qspvak2l5
      acc322(66)=acc322(31)*Qspval5k3
      acc322(67)=acc322(20)*Qspvak7l6
      acc322(68)=Qspl5*acc322(16)
      acc322(69)=Qspval5l6*acc322(28)
      acc322(70)=Qspvak1l6*acc322(11)
      acc322(71)=Qspvak2k3*acc322(44)
      acc322(72)=Qspvak4l6*acc322(50)
      acc322(73)=Qspval5l6*acc322(12)
      acc322(73)=acc322(8)+acc322(73)
      acc322(73)=Qspvak1k2*acc322(73)
      acc322(74)=Qspval5l6*acc322(33)
      acc322(74)=acc322(29)+acc322(74)
      acc322(74)=Qspvak1k3*acc322(74)
      acc322(75)=Qspvak2l6*acc322(32)
      acc322(76)=Qspval5l6*acc322(48)
      acc322(76)=acc322(24)+acc322(76)
      acc322(76)=Qspvak4k2*acc322(76)
      acc322(77)=Qspl6*acc322(6)
      acc322(78)=Qspk7*acc322(5)
      acc322(79)=QspQ*acc322(3)
      acc322(80)=Qspvak2k7*acc322(55)
      acc322(63)=acc322(80)+acc322(63)+acc322(79)+acc322(78)+acc322(77)+acc322(&
      &76)+acc322(75)+acc322(74)+acc322(73)+acc322(72)+acc322(71)+acc322(70)+ac&
      &c322(69)+acc322(68)+acc322(67)+acc322(1)+acc322(66)+acc322(64)+acc322(65)
      acc322(63)=Qspvak2k7*acc322(63)
      acc322(64)=Qspvak1l6*acc322(38)
      acc322(65)=Qspvak2k3*acc322(36)
      acc322(66)=Qspvak4l6*acc322(53)
      acc322(67)=Qspvak1k2*acc322(40)
      acc322(68)=Qspvak1k3*acc322(52)
      acc322(69)=Qspvak2l6*acc322(26)
      acc322(70)=Qspvak4k2*acc322(61)
      acc322(64)=acc322(70)+acc322(69)+acc322(68)+acc322(67)+acc322(66)+acc322(&
      &65)+acc322(19)+acc322(64)
      acc322(64)=QspQ*acc322(64)
      acc322(65)=-Qspk7-Qspl6
      acc322(65)=acc322(4)*acc322(65)
      acc322(66)=Qspvak1l6*acc322(46)
      acc322(67)=Qspvak2k3*acc322(42)
      acc322(68)=Qspvak4l6*acc322(59)
      acc322(69)=Qspvak2l6*acc322(21)
      acc322(70)=QspQ*acc322(25)
      acc322(71)=Qspk2*acc322(7)
      acc322(65)=acc322(71)+acc322(70)+acc322(69)+acc322(68)+acc322(67)+acc322(&
      &2)+acc322(66)+acc322(65)
      acc322(65)=Qspk2*acc322(65)
      acc322(66)=Qspvak1l6*acc322(43)
      acc322(67)=Qspvak2k3*acc322(34)
      acc322(68)=Qspvak4l6*acc322(57)
      acc322(66)=acc322(68)+acc322(66)+acc322(67)
      acc322(67)=Qspvak1k2*acc322(37)
      acc322(68)=Qspvak1k3*acc322(51)
      acc322(69)=Qspvak4k2*acc322(62)
      acc322(67)=-acc322(69)+acc322(67)-acc322(68)
      acc322(68)=acc322(22)+acc322(67)+acc322(66)
      acc322(68)=Qspl6*acc322(68)
      acc322(66)=acc322(58)-acc322(67)+acc322(66)
      acc322(66)=Qspk7*acc322(66)
      acc322(67)=Qspl5*acc322(20)
      acc322(69)=Qspvak1k2*acc322(14)
      acc322(70)=Qspvak1k3*acc322(35)
      acc322(67)=acc322(70)+acc322(69)+acc322(15)+acc322(67)
      acc322(67)=Qspvak2l6*acc322(67)
      acc322(69)=Qspvak7l6*acc322(41)
      acc322(70)=Qspl5*acc322(54)
      acc322(71)=Qspvak1l6*acc322(13)
      acc322(72)=Qspvak2k3*acc322(23)
      acc322(73)=Qspvak4l6*acc322(56)
      acc322(74)=Qspvak1k2*acc322(18)
      acc322(75)=Qspvak1k3*acc322(49)
      acc322(76)=Qspvak2l6*acc322(30)
      acc322(76)=acc322(60)+acc322(76)
      acc322(76)=Qspvak4k2*acc322(76)
      brack=acc322(10)+acc322(63)+acc322(64)+acc322(65)+acc322(66)+acc322(67)+a&
      &cc322(68)+acc322(69)+acc322(70)+acc322(71)+acc322(72)+acc322(73)+acc322(&
      &74)+acc322(75)+acc322(76)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd322h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d322
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d322 = 0.0_ki
      d322 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d322, ki), aimag(d322), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d322h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd322h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d322
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d322 = 0.0_ki
      d322 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d322, ki), aimag(d322), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d322h2l1
