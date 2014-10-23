module     p0_dbaru_epnebbbarg_d92h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d92h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd92h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc92(82)
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1l5
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      acc92(1)=abb92(13)
      acc92(2)=abb92(14)
      acc92(3)=abb92(15)
      acc92(4)=abb92(16)
      acc92(5)=abb92(17)
      acc92(6)=abb92(18)
      acc92(7)=abb92(19)
      acc92(8)=abb92(20)
      acc92(9)=abb92(21)
      acc92(10)=abb92(22)
      acc92(11)=abb92(23)
      acc92(12)=abb92(24)
      acc92(13)=abb92(25)
      acc92(14)=abb92(26)
      acc92(15)=abb92(27)
      acc92(16)=abb92(28)
      acc92(17)=abb92(29)
      acc92(18)=abb92(30)
      acc92(19)=abb92(31)
      acc92(20)=abb92(32)
      acc92(21)=abb92(33)
      acc92(22)=abb92(34)
      acc92(23)=abb92(35)
      acc92(24)=abb92(36)
      acc92(25)=abb92(37)
      acc92(26)=abb92(38)
      acc92(27)=abb92(39)
      acc92(28)=abb92(40)
      acc92(29)=abb92(41)
      acc92(30)=abb92(42)
      acc92(31)=abb92(43)
      acc92(32)=abb92(44)
      acc92(33)=abb92(46)
      acc92(34)=abb92(47)
      acc92(35)=abb92(48)
      acc92(36)=abb92(49)
      acc92(37)=abb92(51)
      acc92(38)=abb92(54)
      acc92(39)=abb92(55)
      acc92(40)=abb92(63)
      acc92(41)=abb92(66)
      acc92(42)=abb92(67)
      acc92(43)=abb92(68)
      acc92(44)=abb92(70)
      acc92(45)=abb92(73)
      acc92(46)=abb92(75)
      acc92(47)=abb92(78)
      acc92(48)=abb92(79)
      acc92(49)=abb92(82)
      acc92(50)=abb92(84)
      acc92(51)=abb92(88)
      acc92(52)=abb92(101)
      acc92(53)=abb92(113)
      acc92(54)=abb92(118)
      acc92(55)=abb92(120)
      acc92(56)=abb92(122)
      acc92(57)=abb92(125)
      acc92(58)=abb92(126)
      acc92(59)=abb92(136)
      acc92(60)=abb92(144)
      acc92(61)=abb92(154)
      acc92(62)=abb92(158)
      acc92(63)=abb92(176)
      acc92(64)=abb92(183)
      acc92(65)=abb92(190)
      acc92(66)=Qspval5k2*acc92(62)
      acc92(67)=Qspval6k2*acc92(52)
      acc92(68)=Qspvak1k2*acc92(36)
      acc92(69)=Qspvak1l6*acc92(26)
      acc92(70)=Qspval5l6*acc92(60)
      acc92(66)=acc92(70)-acc92(66)-acc92(67)+acc92(68)-acc92(69)
      acc92(67)=Qspk4+Qspk3
      acc92(68)=-acc92(59)*acc92(67)
      acc92(69)=Qspl5-Qspk1
      acc92(70)=-acc92(51)*acc92(69)
      acc92(71)=Qspvak4l6*acc92(54)
      acc92(72)=Qspk7*acc92(49)
      acc92(73)=Qspvak2k7*acc92(25)
      acc92(74)=Qspvak4k3*acc92(5)
      acc92(75)=Qspl6*acc92(55)
      acc92(76)=Qspvak2l6*acc92(46)
      acc92(77)=Qspvak4k2*acc92(24)
      acc92(78)=Qspk2*acc92(53)
      acc92(68)=acc92(78)+acc92(77)+acc92(76)+acc92(75)+acc92(74)+acc92(73)+acc&
      &92(72)+acc92(12)+acc92(71)+acc92(70)+acc92(68)+acc92(66)
      acc92(68)=Qspk2*acc92(68)
      acc92(70)=acc92(42)*acc92(69)
      acc92(71)=Qspval5k2*acc92(48)
      acc92(72)=Qspval6k2*acc92(43)
      acc92(73)=Qspvak1k2*acc92(31)
      acc92(74)=Qspvak1l6*acc92(32)
      acc92(75)=Qspval5l6*acc92(47)
      acc92(76)=Qspl6*acc92(35)
      acc92(77)=Qspvak2l6*acc92(23)
      acc92(70)=acc92(77)+acc92(76)+acc92(75)+acc92(74)+acc92(73)+acc92(72)+acc&
      &92(71)+acc92(15)+acc92(70)
      acc92(70)=Qspvak4k2*acc92(70)
      acc92(66)=acc92(17)+acc92(66)
      acc92(66)=-acc92(66)*acc92(67)
      acc92(71)=Qspval5k2*acc92(61)
      acc92(72)=Qspval6k2*acc92(39)
      acc92(73)=Qspvak1k2*acc92(34)
      acc92(74)=Qspvak1l6*acc92(22)
      acc92(75)=Qspval5l6*acc92(56)
      acc92(71)=acc92(75)+acc92(74)+acc92(73)+acc92(72)+acc92(57)+acc92(71)
      acc92(71)=Qspk7*acc92(71)
      acc92(72)=Qspval5k2*acc92(10)
      acc92(73)=Qspval6k2*acc92(30)
      acc92(74)=Qspvak1k2*acc92(14)
      acc92(75)=Qspvak1l6*acc92(33)
      acc92(76)=Qspval5l6*acc92(37)
      acc92(72)=acc92(76)+acc92(75)+acc92(74)+acc92(73)+acc92(20)+acc92(72)
      acc92(72)=Qspvak2k7*acc92(72)
      acc92(73)=Qspval5k2*acc92(29)
      acc92(74)=Qspval6k2*acc92(11)
      acc92(75)=Qspvak1k2*acc92(9)
      acc92(76)=Qspvak1l6*acc92(3)
      acc92(77)=Qspval5l6*acc92(13)
      acc92(73)=acc92(77)+acc92(76)+acc92(75)+acc92(74)+acc92(2)+acc92(73)
      acc92(73)=Qspvak4k3*acc92(73)
      acc92(74)=-acc92(65)*acc92(67)
      acc92(75)=Qspvak4l6*acc92(58)
      acc92(76)=acc92(75)+acc92(63)
      acc92(77)=Qspk7*acc92(64)
      acc92(78)=Qspvak2k7*acc92(28)
      acc92(79)=Qspvak4k3*acc92(4)
      acc92(74)=acc92(79)+acc92(78)+acc92(77)-acc92(76)+acc92(74)
      acc92(74)=Qspl6*acc92(74)
      acc92(67)=acc92(45)*acc92(67)
      acc92(69)=-Qspl6-acc92(69)
      acc92(69)=acc92(44)*acc92(69)
      acc92(77)=Qspk7*acc92(38)
      acc92(78)=Qspvak2k7*acc92(16)
      acc92(79)=Qspvak4k3*acc92(50)
      acc92(67)=acc92(79)+acc92(78)+acc92(77)+acc92(7)+acc92(69)+acc92(67)
      acc92(67)=Qspvak2l6*acc92(67)
      acc92(69)=acc92(21)*QspQ
      acc92(77)=acc92(18)*Qspvak2k1
      acc92(78)=acc92(8)*Qspvak2l5
      acc92(79)=acc92(6)*Qspvak1l5
      acc92(75)=acc92(41)+acc92(75)
      acc92(75)=Qspk1*acc92(75)
      acc92(76)=-Qspl5*acc92(76)
      acc92(80)=Qspvak1k2*acc92(27)
      acc92(81)=Qspvak1l6*acc92(1)
      acc92(82)=Qspval5l6*acc92(40)
      brack=acc92(19)+acc92(66)+acc92(67)+acc92(68)+acc92(69)+acc92(70)+acc92(7&
      &1)+acc92(72)+acc92(73)+acc92(74)+acc92(75)+acc92(76)+acc92(77)+acc92(78)&
      &+acc92(79)+acc92(80)+acc92(81)+acc92(82)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd92h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d92
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d92 = 0.0_ki
      d92 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d92, ki), aimag(d92), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d92h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd92h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d92
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d92 = 0.0_ki
      d92 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d92, ki), aimag(d92), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d92h2l1
