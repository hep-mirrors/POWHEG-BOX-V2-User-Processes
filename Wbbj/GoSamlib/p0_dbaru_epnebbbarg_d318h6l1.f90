module     p0_dbaru_epnebbbarg_d318h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d318h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd318h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc318(85)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspval5k7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      QspQ = dotproduct(Q,Q)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspl5 = dotproduct(Q,l5)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc318(1)=abb318(13)
      acc318(2)=abb318(15)
      acc318(3)=abb318(16)
      acc318(4)=abb318(17)
      acc318(5)=abb318(18)
      acc318(6)=abb318(19)
      acc318(7)=abb318(20)
      acc318(8)=abb318(21)
      acc318(9)=abb318(22)
      acc318(10)=abb318(23)
      acc318(11)=abb318(24)
      acc318(12)=abb318(25)
      acc318(13)=abb318(26)
      acc318(14)=abb318(27)
      acc318(15)=abb318(28)
      acc318(16)=abb318(29)
      acc318(17)=abb318(30)
      acc318(18)=abb318(31)
      acc318(19)=abb318(32)
      acc318(20)=abb318(33)
      acc318(21)=abb318(34)
      acc318(22)=abb318(35)
      acc318(23)=abb318(36)
      acc318(24)=abb318(37)
      acc318(25)=abb318(38)
      acc318(26)=abb318(39)
      acc318(27)=abb318(40)
      acc318(28)=abb318(41)
      acc318(29)=abb318(42)
      acc318(30)=abb318(43)
      acc318(31)=abb318(44)
      acc318(32)=abb318(45)
      acc318(33)=abb318(46)
      acc318(34)=abb318(47)
      acc318(35)=abb318(50)
      acc318(36)=abb318(51)
      acc318(37)=abb318(54)
      acc318(38)=abb318(55)
      acc318(39)=abb318(56)
      acc318(40)=abb318(57)
      acc318(41)=abb318(58)
      acc318(42)=abb318(60)
      acc318(43)=abb318(62)
      acc318(44)=abb318(63)
      acc318(45)=abb318(65)
      acc318(46)=abb318(66)
      acc318(47)=abb318(68)
      acc318(48)=abb318(70)
      acc318(49)=abb318(71)
      acc318(50)=abb318(72)
      acc318(51)=abb318(73)
      acc318(52)=abb318(74)
      acc318(53)=abb318(76)
      acc318(54)=abb318(77)
      acc318(55)=abb318(78)
      acc318(56)=abb318(79)
      acc318(57)=abb318(80)
      acc318(58)=abb318(81)
      acc318(59)=abb318(83)
      acc318(60)=abb318(84)
      acc318(61)=abb318(86)
      acc318(62)=abb318(88)
      acc318(63)=abb318(107)
      acc318(64)=abb318(110)
      acc318(65)=abb318(112)
      acc318(66)=abb318(123)
      acc318(67)=Qspvak1k2*acc318(34)
      acc318(68)=Qspvak1k3*acc318(47)
      acc318(69)=Qspvak4k2*acc318(57)
      acc318(67)=acc318(69)+acc318(68)+acc318(38)+acc318(67)
      acc318(67)=Qspval5l6*acc318(67)
      acc318(68)=Qspvak1k2*acc318(21)
      acc318(69)=Qspvak1k3*acc318(7)
      acc318(70)=Qspvak4k2*acc318(53)
      acc318(68)=acc318(70)+acc318(69)+acc318(14)+acc318(68)
      acc318(68)=Qspk2*acc318(68)
      acc318(69)=-Qspk7-Qspl6
      acc318(69)=acc318(24)*acc318(69)
      acc318(70)=acc318(43)*Qspval5k3
      acc318(71)=acc318(41)*Qspvak2k7
      acc318(72)=Qspvak2k3*acc318(22)
      acc318(73)=Qspvak2l5*acc318(12)
      acc318(74)=Qspvak2l6*acc318(60)
      acc318(75)=Qspvak4l6*acc318(33)
      acc318(76)=acc318(32)*Qspval5k7
      acc318(77)=QspQ*acc318(26)
      acc318(78)=Qspvak1l6*acc318(3)
      acc318(79)=Qspvak7l6*acc318(27)
      acc318(80)=Qspvak1k2*acc318(23)
      acc318(81)=Qspvak1k3*acc318(46)
      acc318(82)=Qspvak4k2*acc318(51)
      acc318(83)=Qspl5*acc318(15)
      acc318(84)=Qspval5k2*acc318(11)
      acc318(85)=Qspvak7k2*acc318(28)
      acc318(67)=acc318(85)+acc318(68)+acc318(84)+acc318(83)+acc318(67)+acc318(&
      &82)+acc318(81)+acc318(80)+acc318(79)+acc318(78)+acc318(77)+acc318(76)+ac&
      &c318(75)+acc318(74)+acc318(73)+acc318(72)+acc318(6)+acc318(70)+acc318(71&
      &)+acc318(69)
      acc318(67)=Qspvak7k2*acc318(67)
      acc318(68)=Qspl5+Qspk7
      acc318(69)=acc318(44)*acc318(68)
      acc318(70)=QspQ*acc318(19)
      acc318(71)=Qspvak1l6*acc318(55)
      acc318(72)=Qspvak7l6*acc318(66)
      acc318(73)=Qspvak1k2*acc318(39)
      acc318(74)=Qspvak1k3*acc318(52)
      acc318(75)=Qspvak4k2*acc318(50)
      acc318(76)=Qspval5k2*acc318(30)
      acc318(77)=Qspk2*acc318(58)
      acc318(69)=acc318(77)+acc318(76)+acc318(75)+acc318(74)+acc318(73)+acc318(&
      &72)+acc318(71)+acc318(18)+acc318(70)+acc318(69)
      acc318(69)=Qspk2*acc318(69)
      acc318(70)=-Qspvak1l6*acc318(59)
      acc318(71)=-Qspvak7l6*acc318(64)
      acc318(72)=Qspvak1k2*acc318(36)
      acc318(73)=Qspvak1k3*acc318(40)
      acc318(74)=Qspvak4k2*acc318(49)
      acc318(70)=acc318(74)+acc318(73)+acc318(72)+acc318(71)+acc318(9)+acc318(7&
      &0)
      acc318(70)=Qspl5*acc318(70)
      acc318(68)=-acc318(29)*acc318(68)
      acc318(71)=-QspQ*acc318(32)
      acc318(72)=Qspvak1k2*acc318(1)
      acc318(73)=Qspvak1k3*acc318(2)
      acc318(74)=Qspvak4k2*acc318(42)
      acc318(68)=acc318(74)+acc318(73)+acc318(72)+acc318(20)+acc318(71)+acc318(&
      &68)
      acc318(68)=Qspval5k2*acc318(68)
      acc318(71)=Qspvak1k2*acc318(4)
      acc318(72)=Qspvak1k3*acc318(37)
      acc318(73)=Qspvak4k2*acc318(56)
      acc318(71)=acc318(73)+acc318(72)+acc318(10)+acc318(71)
      acc318(71)=Qspval5l6*acc318(71)
      acc318(72)=QspQ*acc318(61)
      acc318(73)=-Qspk7*acc318(59)
      acc318(72)=acc318(73)+acc318(13)+acc318(72)
      acc318(72)=Qspvak1l6*acc318(72)
      acc318(73)=QspQ*acc318(65)
      acc318(74)=-Qspk7*acc318(64)
      acc318(73)=acc318(74)+acc318(62)+acc318(73)
      acc318(73)=Qspvak7l6*acc318(73)
      acc318(74)=Qspl6*acc318(63)
      acc318(75)=Qspvak2k3*acc318(45)
      acc318(76)=Qspvak2l5*acc318(54)
      acc318(77)=Qspvak2l6*acc318(8)
      acc318(78)=Qspvak4l6*acc318(25)
      acc318(79)=QspQ*acc318(16)
      acc318(80)=Qspk7*acc318(35)
      acc318(81)=Qspvak1k2*acc318(17)
      acc318(82)=Qspvak1k3*acc318(31)
      acc318(83)=Qspvak4k2*acc318(48)
      brack=acc318(5)+acc318(67)+acc318(68)+acc318(69)+acc318(70)+acc318(71)+ac&
      &c318(72)+acc318(73)+acc318(74)+acc318(75)+acc318(76)+acc318(77)+acc318(7&
      &8)+acc318(79)+acc318(80)+acc318(81)+acc318(82)+acc318(83)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd318h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d318
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d318 = 0.0_ki
      d318 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d318, ki), aimag(d318), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d318h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd318h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d318
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d318 = 0.0_ki
      d318 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d318, ki), aimag(d318), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d318h6l1
