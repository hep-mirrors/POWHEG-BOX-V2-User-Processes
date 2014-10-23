module     p0_dbaru_epnebbbarg_d309h5l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d309h5l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd309h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc309(77)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak3l5
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval5k2
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak3k1
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak3l5 = dotproduct(Q,spvak3l5)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      QspQ = dotproduct(Q,Q)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      acc309(1)=abb309(10)
      acc309(2)=abb309(11)
      acc309(3)=abb309(12)
      acc309(4)=abb309(13)
      acc309(5)=abb309(14)
      acc309(6)=abb309(15)
      acc309(7)=abb309(16)
      acc309(8)=abb309(17)
      acc309(9)=abb309(18)
      acc309(10)=abb309(19)
      acc309(11)=abb309(20)
      acc309(12)=abb309(21)
      acc309(13)=abb309(22)
      acc309(14)=abb309(23)
      acc309(15)=abb309(24)
      acc309(16)=abb309(25)
      acc309(17)=abb309(26)
      acc309(18)=abb309(27)
      acc309(19)=abb309(28)
      acc309(20)=abb309(30)
      acc309(21)=abb309(31)
      acc309(22)=abb309(32)
      acc309(23)=abb309(33)
      acc309(24)=abb309(34)
      acc309(25)=abb309(35)
      acc309(26)=abb309(36)
      acc309(27)=abb309(37)
      acc309(28)=abb309(38)
      acc309(29)=abb309(39)
      acc309(30)=abb309(40)
      acc309(31)=abb309(41)
      acc309(32)=abb309(42)
      acc309(33)=abb309(43)
      acc309(34)=abb309(44)
      acc309(35)=abb309(45)
      acc309(36)=abb309(47)
      acc309(37)=abb309(49)
      acc309(38)=abb309(50)
      acc309(39)=abb309(51)
      acc309(40)=abb309(52)
      acc309(41)=abb309(53)
      acc309(42)=abb309(54)
      acc309(43)=abb309(55)
      acc309(44)=abb309(56)
      acc309(45)=abb309(57)
      acc309(46)=abb309(58)
      acc309(47)=abb309(59)
      acc309(48)=abb309(60)
      acc309(49)=abb309(61)
      acc309(50)=abb309(63)
      acc309(51)=abb309(64)
      acc309(52)=abb309(68)
      acc309(53)=abb309(69)
      acc309(54)=abb309(73)
      acc309(55)=abb309(75)
      acc309(56)=abb309(77)
      acc309(57)=abb309(79)
      acc309(58)=abb309(86)
      acc309(59)=abb309(91)
      acc309(60)=abb309(93)
      acc309(61)=abb309(96)
      acc309(62)=Qspk4+Qspk3
      acc309(63)=-acc309(19)*acc309(62)
      acc309(64)=-acc309(43)*Qspvak2l5
      acc309(65)=Qspvak4l5*acc309(31)
      acc309(66)=Qspval6l5*acc309(3)
      acc309(67)=Qspvak4k3*acc309(14)
      acc309(68)=Qspvak4k2*acc309(11)
      acc309(63)=acc309(68)+acc309(67)+acc309(66)+acc309(65)+acc309(4)+acc309(6&
      &4)+acc309(63)
      acc309(63)=Qspvak4k2*acc309(63)
      acc309(64)=Qspvak3k2*acc309(18)
      acc309(65)=acc309(43)*Qspvak3l5
      acc309(66)=Qspvak4l5*acc309(54)
      acc309(67)=Qspval6l5*acc309(41)
      acc309(64)=acc309(67)+acc309(66)+acc309(65)+acc309(6)+acc309(64)
      acc309(64)=Qspvak4k3*acc309(64)
      acc309(65)=Qspval6l5*acc309(46)
      acc309(66)=Qspvak4l5*acc309(47)
      acc309(65)=acc309(52)+acc309(65)-acc309(66)
      acc309(65)=acc309(65)*acc309(62)
      acc309(67)=Qspk7-Qspk1
      acc309(68)=acc309(5)*acc309(67)
      acc309(69)=Qspvak1k2*acc309(16)
      acc309(70)=Qspvak1k3*acc309(23)
      acc309(71)=Qspval5k2*acc309(35)
      acc309(72)=QspQ*acc309(49)
      acc309(73)=Qspval6k3*acc309(30)
      acc309(74)=Qspvak7k3*acc309(56)
      acc309(66)=acc309(1)+acc309(66)
      acc309(66)=Qspk2*acc309(66)
      acc309(75)=-Qspk2*acc309(46)
      acc309(75)=acc309(34)+acc309(75)
      acc309(75)=Qspval6l5*acc309(75)
      acc309(76)=Qspval6k2*acc309(12)
      acc309(77)=Qspvak7k2*acc309(40)
      acc309(63)=acc309(77)+acc309(63)+acc309(64)+acc309(76)+acc309(75)+acc309(&
      &66)+acc309(74)+acc309(73)+acc309(72)+acc309(71)+acc309(70)+acc309(2)+acc&
      &309(69)+acc309(68)+acc309(65)
      acc309(63)=Qspvak7k2*acc309(63)
      acc309(64)=acc309(57)*acc309(62)
      acc309(65)=-acc309(51)*Qspvak2k1
      acc309(66)=Qspvak4k1*acc309(36)
      acc309(68)=Qspval6k1*acc309(17)
      acc309(69)=Qspval6k2*acc309(15)
      acc309(70)=Qspvak4k3*acc309(33)
      acc309(71)=Qspvak4k2*acc309(20)
      acc309(64)=acc309(71)+acc309(70)+acc309(69)+acc309(68)+acc309(66)+acc309(&
      &22)+acc309(65)+acc309(64)
      acc309(64)=Qspvak4k2*acc309(64)
      acc309(65)=Qspvak3k2*acc309(50)
      acc309(66)=acc309(51)*Qspvak3k1
      acc309(68)=Qspvak4k1*acc309(39)
      acc309(69)=Qspval6k1*acc309(9)
      acc309(70)=Qspval6k2*acc309(42)
      acc309(65)=acc309(70)+acc309(69)+acc309(68)+acc309(66)+acc309(37)+acc309(&
      &65)
      acc309(65)=Qspvak4k3*acc309(65)
      acc309(66)=-acc309(38)*acc309(67)
      acc309(68)=Qspk2-acc309(62)
      acc309(68)=acc309(45)*acc309(68)
      acc309(69)=QspQ*acc309(27)
      acc309(66)=acc309(7)+acc309(69)+acc309(68)+acc309(66)
      acc309(66)=Qspval6k2*acc309(66)
      acc309(68)=Qspvak4k1*acc309(32)
      acc309(69)=Qspval6k1*acc309(28)
      acc309(68)=acc309(68)-acc309(69)
      acc309(69)=acc309(68)-acc309(58)
      acc309(62)=-acc309(69)*acc309(62)
      acc309(69)=-acc309(61)*acc309(67)
      acc309(70)=QspQ*acc309(59)
      acc309(69)=acc309(13)+acc309(70)+acc309(69)
      acc309(69)=Qspval6k3*acc309(69)
      acc309(70)=acc309(60)*acc309(67)
      acc309(71)=QspQ*acc309(55)
      acc309(70)=acc309(44)+acc309(71)+acc309(70)
      acc309(70)=Qspvak7k3*acc309(70)
      acc309(68)=acc309(29)+acc309(68)
      acc309(68)=Qspk2*acc309(68)
      acc309(67)=acc309(53)*acc309(67)
      acc309(71)=Qspvak1k2*acc309(10)
      acc309(72)=Qspvak1k3*acc309(48)
      acc309(73)=Qspval5k2*acc309(21)
      acc309(74)=QspQ*acc309(24)
      acc309(75)=Qspval6k1*acc309(26)
      acc309(76)=Qspval6l5*acc309(25)
      brack=acc309(8)+acc309(62)+acc309(63)+acc309(64)+acc309(65)+acc309(66)+ac&
      &c309(67)+acc309(68)+acc309(69)+acc309(70)+acc309(71)+acc309(72)+acc309(7&
      &3)+acc309(74)+acc309(75)+acc309(76)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd309h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d309
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d309 = 0.0_ki
      d309 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d309, ki), aimag(d309), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d309h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd309h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d309
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d309 = 0.0_ki
      d309 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d309, ki), aimag(d309), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d309h5l1
