module     p0_dbaru_epnebbbarg_d296h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d296h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd296h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc296(73)
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2l6
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      acc296(1)=abb296(10)
      acc296(2)=abb296(11)
      acc296(3)=abb296(12)
      acc296(4)=abb296(13)
      acc296(5)=abb296(14)
      acc296(6)=abb296(15)
      acc296(7)=abb296(16)
      acc296(8)=abb296(17)
      acc296(9)=abb296(18)
      acc296(10)=abb296(19)
      acc296(11)=abb296(20)
      acc296(12)=abb296(21)
      acc296(13)=abb296(22)
      acc296(14)=abb296(23)
      acc296(15)=abb296(24)
      acc296(16)=abb296(25)
      acc296(17)=abb296(26)
      acc296(18)=abb296(27)
      acc296(19)=abb296(28)
      acc296(20)=abb296(29)
      acc296(21)=abb296(30)
      acc296(22)=abb296(31)
      acc296(23)=abb296(32)
      acc296(24)=abb296(33)
      acc296(25)=abb296(34)
      acc296(26)=abb296(35)
      acc296(27)=abb296(36)
      acc296(28)=abb296(37)
      acc296(29)=abb296(38)
      acc296(30)=abb296(39)
      acc296(31)=abb296(40)
      acc296(32)=abb296(41)
      acc296(33)=abb296(42)
      acc296(34)=abb296(43)
      acc296(35)=abb296(44)
      acc296(36)=abb296(45)
      acc296(37)=abb296(46)
      acc296(38)=abb296(47)
      acc296(39)=abb296(48)
      acc296(40)=abb296(49)
      acc296(41)=abb296(50)
      acc296(42)=abb296(51)
      acc296(43)=abb296(52)
      acc296(44)=abb296(53)
      acc296(45)=abb296(54)
      acc296(46)=abb296(55)
      acc296(47)=abb296(56)
      acc296(48)=abb296(57)
      acc296(49)=abb296(59)
      acc296(50)=abb296(62)
      acc296(51)=abb296(64)
      acc296(52)=abb296(65)
      acc296(53)=abb296(68)
      acc296(54)=abb296(72)
      acc296(55)=abb296(75)
      acc296(56)=abb296(81)
      acc296(57)=abb296(92)
      acc296(58)=abb296(93)
      acc296(59)=abb296(101)
      acc296(60)=abb296(108)
      acc296(61)=abb296(126)
      acc296(62)=Qspvak2k3*acc296(24)
      acc296(63)=Qspk7*acc296(27)
      acc296(64)=Qspvak2k7*acc296(46)
      acc296(62)=acc296(64)+acc296(63)+acc296(8)+acc296(62)
      acc296(62)=Qspvak1k2*acc296(62)
      acc296(63)=QspQ+Qspl6
      acc296(63)=acc296(2)*acc296(63)
      acc296(64)=Qspvak1k2*acc296(32)
      acc296(65)=-Qspvak1k2*acc296(37)
      acc296(65)=acc296(16)+acc296(65)
      acc296(65)=Qspk2*acc296(65)
      acc296(63)=acc296(65)+acc296(64)+acc296(1)+acc296(63)
      acc296(63)=Qspvak4k3*acc296(63)
      acc296(64)=Qspvak2k1*acc296(33)
      acc296(65)=Qspvak2l5*acc296(50)
      acc296(66)=Qspvak2k3*acc296(52)
      acc296(67)=Qspvak1l6*acc296(36)
      acc296(68)=Qspval6k2*acc296(13)
      acc296(69)=Qspl6*acc296(53)
      acc296(70)=Qspvak2l6*acc296(12)
      acc296(71)=Qspvak1k2*acc296(26)
      acc296(71)=acc296(6)+acc296(71)
      acc296(71)=QspQ*acc296(71)
      acc296(72)=Qspk2*acc296(17)
      acc296(62)=acc296(63)+acc296(72)+acc296(71)+acc296(70)+acc296(69)+acc296(&
      &68)+acc296(67)+acc296(66)+acc296(65)+acc296(5)+acc296(64)+acc296(62)
      acc296(62)=Qspvak2k7*acc296(62)
      acc296(63)=Qspvak2k3*acc296(51)
      acc296(64)=Qspvak1l6*acc296(31)
      acc296(65)=Qspval6k2*acc296(34)
      acc296(66)=Qspl6*acc296(23)
      acc296(67)=Qspvak2l6*acc296(20)
      acc296(68)=Qspk7*acc296(22)
      acc296(69)=Qspvak1k2*acc296(29)
      acc296(70)=QspQ*acc296(14)
      acc296(63)=acc296(70)+acc296(69)+acc296(68)+acc296(67)+acc296(66)+acc296(&
      &65)+acc296(64)+acc296(11)+acc296(63)
      acc296(63)=QspQ*acc296(63)
      acc296(64)=Qspvak2l6*acc296(45)
      acc296(65)=QspQ*acc296(56)
      acc296(66)=Qspk2*acc296(55)
      acc296(64)=acc296(66)+acc296(65)+acc296(60)+acc296(64)
      acc296(64)=Qspk2*acc296(64)
      acc296(65)=Qspvak1l6*acc296(40)
      acc296(66)=Qspval6k2*acc296(59)
      acc296(67)=Qspl6*acc296(57)
      acc296(68)=Qspvak2l6*acc296(42)
      acc296(69)=Qspvak1k2*acc296(47)
      acc296(70)=Qspvak2l6*acc296(43)
      acc296(70)=acc296(49)+acc296(70)
      acc296(70)=QspQ*acc296(70)
      acc296(64)=acc296(64)+acc296(70)+acc296(69)+acc296(68)+acc296(67)+acc296(&
      &66)+acc296(44)+acc296(65)
      acc296(64)=Qspvak4k3*acc296(64)
      acc296(65)=Qspvak2k3*acc296(7)
      acc296(66)=Qspvak1l6*acc296(28)
      acc296(67)=Qspval6k2*acc296(48)
      acc296(68)=Qspl6*acc296(58)
      acc296(65)=-acc296(65)+acc296(66)+acc296(67)-acc296(68)
      acc296(66)=Qspvak2l6*acc296(30)
      acc296(67)=Qspk7*acc296(61)
      acc296(68)=Qspvak1k2*acc296(15)
      acc296(69)=QspQ*acc296(9)
      acc296(70)=Qspk2*acc296(39)
      acc296(66)=acc296(70)+acc296(69)+acc296(68)+acc296(67)+acc296(66)+acc296(&
      &19)-acc296(65)
      acc296(66)=Qspk2*acc296(66)
      acc296(67)=Qspvak2l6*acc296(25)
      acc296(65)=acc296(67)+acc296(54)+acc296(65)
      acc296(65)=Qspk7*acc296(65)
      acc296(67)=Qspvak2k1*acc296(21)
      acc296(68)=Qspvak2l5*acc296(41)
      acc296(69)=Qspvak1l6*acc296(10)
      acc296(70)=Qspval6k2*acc296(18)
      acc296(71)=Qspl6*acc296(38)
      acc296(72)=Qspvak2l6*acc296(4)
      acc296(73)=-Qspk7*acc296(15)
      acc296(73)=acc296(3)+acc296(73)
      acc296(73)=Qspvak1k2*acc296(73)
      brack=acc296(35)+acc296(62)+acc296(63)+acc296(64)+acc296(65)+acc296(66)+a&
      &cc296(67)+acc296(68)+acc296(69)+acc296(70)+acc296(71)+acc296(72)+acc296(&
      &73)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd296h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d296
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d296 = 0.0_ki
      d296 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d296, ki), aimag(d296), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d296h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd296h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d296
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d296 = 0.0_ki
      d296 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d296, ki), aimag(d296), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d296h2l1
