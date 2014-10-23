module     p0_dbaru_epnebbbarg_d94h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d94h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd94h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc94(81)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspval6k2
      complex(ki) :: QspQ
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      QspQ = dotproduct(Q,Q)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      acc94(1)=abb94(11)
      acc94(2)=abb94(12)
      acc94(3)=abb94(13)
      acc94(4)=abb94(14)
      acc94(5)=abb94(15)
      acc94(6)=abb94(16)
      acc94(7)=abb94(17)
      acc94(8)=abb94(18)
      acc94(9)=abb94(19)
      acc94(10)=abb94(20)
      acc94(11)=abb94(21)
      acc94(12)=abb94(22)
      acc94(13)=abb94(23)
      acc94(14)=abb94(24)
      acc94(15)=abb94(25)
      acc94(16)=abb94(26)
      acc94(17)=abb94(27)
      acc94(18)=abb94(28)
      acc94(19)=abb94(29)
      acc94(20)=abb94(30)
      acc94(21)=abb94(31)
      acc94(22)=abb94(32)
      acc94(23)=abb94(33)
      acc94(24)=abb94(34)
      acc94(25)=abb94(35)
      acc94(26)=abb94(36)
      acc94(27)=abb94(37)
      acc94(28)=abb94(38)
      acc94(29)=abb94(39)
      acc94(30)=abb94(40)
      acc94(31)=abb94(41)
      acc94(32)=abb94(42)
      acc94(33)=abb94(43)
      acc94(34)=abb94(44)
      acc94(35)=abb94(45)
      acc94(36)=abb94(46)
      acc94(37)=abb94(47)
      acc94(38)=abb94(48)
      acc94(39)=abb94(52)
      acc94(40)=abb94(54)
      acc94(41)=abb94(59)
      acc94(42)=abb94(61)
      acc94(43)=abb94(62)
      acc94(44)=abb94(63)
      acc94(45)=abb94(65)
      acc94(46)=abb94(66)
      acc94(47)=abb94(69)
      acc94(48)=abb94(72)
      acc94(49)=abb94(73)
      acc94(50)=abb94(76)
      acc94(51)=abb94(78)
      acc94(52)=abb94(79)
      acc94(53)=abb94(80)
      acc94(54)=abb94(82)
      acc94(55)=abb94(83)
      acc94(56)=abb94(85)
      acc94(57)=abb94(87)
      acc94(58)=abb94(90)
      acc94(59)=abb94(92)
      acc94(60)=abb94(96)
      acc94(61)=abb94(97)
      acc94(62)=abb94(100)
      acc94(63)=abb94(102)
      acc94(64)=abb94(105)
      acc94(65)=Qspvak1k2*acc94(20)
      acc94(66)=Qspvak4k2*acc94(14)
      acc94(65)=acc94(66)+acc94(61)+acc94(65)
      acc94(65)=Qspvak2k7*acc94(65)
      acc94(66)=Qspl6+Qspl5
      acc94(67)=acc94(63)*acc94(66)
      acc94(68)=Qspvak1l6*acc94(4)
      acc94(69)=Qspvak4l6*acc94(52)
      acc94(70)=Qspk7*acc94(58)
      acc94(71)=Qspvak1l5*acc94(30)
      acc94(72)=Qspvak4l5*acc94(60)
      acc94(73)=Qspval5k2*acc94(24)
      acc94(74)=Qspvak1k2*acc94(22)
      acc94(75)=Qspvak1k7*acc94(28)
      acc94(76)=Qspvak4k2*acc94(35)
      acc94(77)=Qspvak4k7*acc94(47)
      acc94(78)=Qspval6k2*acc94(26)
      acc94(79)=QspQ*acc94(49)
      acc94(80)=Qspval6l5*acc94(55)
      acc94(81)=Qspk2*acc94(64)
      acc94(65)=acc94(81)+acc94(80)+acc94(65)+acc94(79)+acc94(78)+acc94(77)+acc&
      &94(76)+acc94(75)+acc94(74)+acc94(73)+acc94(72)+acc94(71)+acc94(70)+acc94&
      &(69)+acc94(57)+acc94(68)+acc94(67)
      acc94(65)=Qspk2*acc94(65)
      acc94(67)=Qspvak1k2*acc94(38)
      acc94(68)=Qspvak4k2*acc94(17)
      acc94(67)=acc94(68)+acc94(37)+acc94(67)
      acc94(67)=Qspvak2k7*acc94(67)
      acc94(68)=Qspvak1l6*acc94(25)
      acc94(69)=Qspvak4l6*acc94(59)
      acc94(70)=Qspk7*acc94(50)
      acc94(71)=Qspvak1l5*acc94(32)
      acc94(72)=Qspvak4l5*acc94(43)
      acc94(73)=-Qspval5k2*acc94(12)
      acc94(74)=Qspvak1k2*acc94(33)
      acc94(75)=Qspvak1k7*acc94(29)
      acc94(76)=Qspvak4k2*acc94(54)
      acc94(77)=Qspvak4k7*acc94(51)
      acc94(78)=Qspval6k2*acc94(44)
      acc94(79)=QspQ*acc94(53)
      acc94(67)=acc94(67)+acc94(79)+acc94(78)+acc94(77)+acc94(76)+acc94(75)+acc&
      &94(74)+acc94(73)+acc94(72)+acc94(71)+acc94(70)+acc94(69)+acc94(40)+acc94&
      &(68)
      acc94(67)=Qspval6l5*acc94(67)
      acc94(68)=-acc94(56)*acc94(66)
      acc94(69)=Qspvak1l5*acc94(11)
      acc94(70)=Qspvak4l5*acc94(13)
      acc94(71)=Qspval5k2*acc94(8)
      acc94(72)=Qspvak1k2*acc94(19)
      acc94(73)=Qspvak4k2*acc94(7)
      acc94(74)=Qspval6k2*acc94(6)
      acc94(75)=QspQ*acc94(39)
      acc94(68)=acc94(75)+acc94(74)+acc94(73)+acc94(72)+acc94(71)+acc94(70)+acc&
      &94(36)+acc94(69)+acc94(68)
      acc94(68)=Qspvak2k7*acc94(68)
      acc94(69)=Qspvak1k2*acc94(31)
      acc94(70)=Qspvak1k7*acc94(23)
      acc94(71)=Qspvak4k2*acc94(42)
      acc94(72)=Qspvak4k7*acc94(41)
      acc94(73)=Qspval6k2*acc94(34)
      acc94(69)=acc94(73)+acc94(72)+acc94(71)+acc94(70)+acc94(21)+acc94(69)
      acc94(69)=QspQ*acc94(69)
      acc94(70)=acc94(12)*acc94(66)
      acc94(71)=Qspk7*acc94(10)
      acc94(70)=acc94(9)+acc94(71)+acc94(70)
      acc94(70)=Qspval6k2*acc94(70)
      acc94(71)=-acc94(62)*acc94(66)
      acc94(72)=Qspvak1l6*acc94(2)
      acc94(73)=Qspvak4l6*acc94(5)
      acc94(74)=Qspk7*acc94(45)
      acc94(75)=Qspvak1l5*acc94(1)
      acc94(76)=Qspvak4l5*acc94(48)
      acc94(77)=Qspval5k2*acc94(18)
      acc94(78)=-acc94(27)*acc94(66)
      acc94(78)=acc94(3)+acc94(78)
      acc94(78)=Qspvak1k7*acc94(78)
      acc94(66)=-acc94(46)*acc94(66)
      acc94(66)=acc94(15)+acc94(66)
      acc94(66)=Qspvak4k7*acc94(66)
      brack=acc94(16)+acc94(65)+acc94(66)+acc94(67)+acc94(68)+acc94(69)+acc94(7&
      &0)+acc94(71)+acc94(72)+acc94(73)+acc94(74)+acc94(75)+acc94(76)+acc94(77)&
      &+acc94(78)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd94h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d94
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d94 = 0.0_ki
      d94 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d94, ki), aimag(d94), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d94h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd94h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d94
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d94 = 0.0_ki
      d94 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d94, ki), aimag(d94), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d94h1l1
