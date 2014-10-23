module     p0_dbaru_epnebbbarg_d79h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d79h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd79h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc79(75)
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k7
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspl6 = dotproduct(Q,l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      QspQ = dotproduct(Q,Q)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      acc79(1)=abb79(11)
      acc79(2)=abb79(12)
      acc79(3)=abb79(13)
      acc79(4)=abb79(14)
      acc79(5)=abb79(15)
      acc79(6)=abb79(16)
      acc79(7)=abb79(17)
      acc79(8)=abb79(18)
      acc79(9)=abb79(19)
      acc79(10)=abb79(20)
      acc79(11)=abb79(21)
      acc79(12)=abb79(22)
      acc79(13)=abb79(23)
      acc79(14)=abb79(24)
      acc79(15)=abb79(25)
      acc79(16)=abb79(26)
      acc79(17)=abb79(29)
      acc79(18)=abb79(30)
      acc79(19)=abb79(31)
      acc79(20)=abb79(33)
      acc79(21)=abb79(34)
      acc79(22)=abb79(35)
      acc79(23)=abb79(36)
      acc79(24)=abb79(37)
      acc79(25)=abb79(39)
      acc79(26)=abb79(41)
      acc79(27)=abb79(42)
      acc79(28)=abb79(43)
      acc79(29)=abb79(44)
      acc79(30)=abb79(45)
      acc79(31)=abb79(48)
      acc79(32)=abb79(49)
      acc79(33)=abb79(50)
      acc79(34)=abb79(51)
      acc79(35)=abb79(52)
      acc79(36)=abb79(53)
      acc79(37)=abb79(54)
      acc79(38)=abb79(56)
      acc79(39)=abb79(57)
      acc79(40)=abb79(58)
      acc79(41)=abb79(59)
      acc79(42)=abb79(61)
      acc79(43)=abb79(65)
      acc79(44)=abb79(66)
      acc79(45)=abb79(70)
      acc79(46)=abb79(71)
      acc79(47)=abb79(72)
      acc79(48)=abb79(73)
      acc79(49)=abb79(75)
      acc79(50)=abb79(76)
      acc79(51)=abb79(83)
      acc79(52)=abb79(84)
      acc79(53)=abb79(86)
      acc79(54)=abb79(87)
      acc79(55)=abb79(91)
      acc79(56)=abb79(93)
      acc79(57)=abb79(94)
      acc79(58)=abb79(96)
      acc79(59)=abb79(97)
      acc79(60)=abb79(98)
      acc79(61)=-Qspvak1l5*acc79(55)
      acc79(62)=Qspvak2l5*acc79(35)
      acc79(61)=acc79(62)+acc79(41)+acc79(61)
      acc79(61)=Qspvak4k3*acc79(61)
      acc79(62)=acc79(46)*Qspval5l6
      acc79(63)=acc79(30)*Qspvak4l6
      acc79(64)=acc79(27)*Qspl6
      acc79(65)=-acc79(42)*Qspvak7l6
      acc79(66)=Qspk1*acc79(18)
      acc79(67)=Qspvak1k2*acc79(2)
      acc79(68)=Qspvak2k1*acc79(44)
      acc79(69)=Qspvak1k3*acc79(7)
      acc79(70)=Qspk2*acc79(28)
      acc79(71)=Qspvak2k3*acc79(4)
      acc79(72)=Qspvak2l6*acc79(51)
      acc79(73)=Qspvak1l6*acc79(17)
      acc79(61)=acc79(61)+acc79(73)+acc79(72)+acc79(71)+acc79(70)+acc79(69)+acc&
      &79(68)+acc79(67)+acc79(66)+acc79(65)+acc79(12)+acc79(64)+acc79(62)+acc79&
      &(63)
      acc79(61)=Qspvak2k7*acc79(61)
      acc79(62)=Qspk7+Qspl5
      acc79(62)=acc79(31)*acc79(62)
      acc79(63)=QspQ*acc79(9)
      acc79(64)=Qspvak2k1*acc79(42)
      acc79(65)=Qspk2*acc79(49)
      acc79(66)=Qspvak2k3*acc79(3)
      acc79(67)=Qspvak2l5*acc79(24)
      acc79(62)=acc79(67)+acc79(66)+acc79(65)+acc79(64)+acc79(22)+acc79(63)+acc&
      &79(62)
      acc79(62)=Qspvak1l6*acc79(62)
      acc79(63)=-Qspvak2l6*acc79(38)
      acc79(63)=acc79(63)+acc79(47)
      acc79(63)=Qspvak1k7*acc79(63)
      acc79(64)=Qspvak1l5*acc79(5)
      acc79(65)=Qspk2*acc79(53)
      acc79(66)=Qspvak1k7*acc79(48)
      acc79(66)=acc79(59)+acc79(66)
      acc79(66)=Qspvak2l5*acc79(66)
      acc79(67)=-Qspvak2l5*acc79(54)
      acc79(67)=acc79(29)+acc79(67)
      acc79(67)=Qspk7*acc79(67)
      acc79(68)=Qspvak1l6*acc79(8)
      acc79(63)=acc79(68)+acc79(67)+acc79(66)+acc79(65)+acc79(64)+acc79(26)+acc&
      &79(63)
      acc79(63)=Qspvak4k3*acc79(63)
      acc79(64)=Qspvak2k1*acc79(37)
      acc79(65)=-Qspvak1k3*acc79(39)
      acc79(66)=Qspk2*acc79(40)
      acc79(67)=Qspvak2k3*acc79(45)
      acc79(68)=Qspvak2l6*acc79(56)
      acc79(64)=acc79(68)+acc79(67)+acc79(66)+acc79(65)+acc79(19)+acc79(64)
      acc79(64)=Qspk7*acc79(64)
      acc79(65)=QspQ*acc79(52)
      acc79(66)=Qspl5*acc79(60)
      acc79(67)=Qspvak1l5*acc79(21)
      acc79(68)=Qspk2*acc79(16)
      acc79(65)=acc79(68)+acc79(67)+acc79(66)+acc79(15)+acc79(65)
      acc79(65)=Qspvak2k3*acc79(65)
      acc79(66)=Qspk1*acc79(57)
      acc79(67)=Qspvak1k2*acc79(6)
      acc79(68)=-Qspvak1k3*acc79(3)
      acc79(69)=-Qspvak1l5*acc79(24)
      acc79(66)=acc79(69)+acc79(68)+acc79(67)+acc79(34)+acc79(66)
      acc79(66)=Qspvak2l6*acc79(66)
      acc79(67)=Qspk1*acc79(58)
      acc79(68)=Qspvak1k2*acc79(13)
      acc79(69)=-Qspvak1k3*acc79(21)
      acc79(67)=acc79(69)+acc79(67)+acc79(68)
      acc79(67)=Qspvak2l5*acc79(67)
      acc79(68)=QspQ*acc79(32)
      acc79(69)=-Qspl5*acc79(39)
      acc79(68)=acc79(68)+acc79(69)
      acc79(68)=Qspvak1k3*acc79(68)
      acc79(69)=Qspvak1k3*acc79(25)
      acc79(70)=Qspvak1l5*acc79(20)
      acc79(69)=acc79(70)+acc79(11)+acc79(69)
      acc79(69)=Qspk2*acc79(69)
      acc79(70)=QspQ*acc79(33)
      acc79(71)=Qspk1*acc79(50)
      acc79(72)=Qspl5*acc79(43)
      acc79(73)=Qspvak1k2*acc79(1)
      acc79(74)=Qspvak2k1*acc79(36)
      acc79(75)=Qspvak2k1*acc79(23)
      acc79(75)=acc79(14)+acc79(75)
      acc79(75)=Qspvak1l5*acc79(75)
      brack=acc79(10)+acc79(61)+acc79(62)+acc79(63)+acc79(64)+acc79(65)+acc79(6&
      &6)+acc79(67)+acc79(68)+acc79(69)+acc79(70)+acc79(71)+acc79(72)+acc79(73)&
      &+acc79(74)+acc79(75)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd79h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d79
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d79 = 0.0_ki
      d79 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d79, ki), aimag(d79), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d79h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd79h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d79
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d79 = 0.0_ki
      d79 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d79, ki), aimag(d79), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d79h3l1
