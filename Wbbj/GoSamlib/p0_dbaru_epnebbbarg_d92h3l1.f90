module     p0_dbaru_epnebbbarg_d92h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d92h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd92h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc92(83)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspl5 = dotproduct(Q,l5)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
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
      acc92(30)=abb92(44)
      acc92(31)=abb92(45)
      acc92(32)=abb92(46)
      acc92(33)=abb92(48)
      acc92(34)=abb92(49)
      acc92(35)=abb92(51)
      acc92(36)=abb92(52)
      acc92(37)=abb92(54)
      acc92(38)=abb92(68)
      acc92(39)=abb92(72)
      acc92(40)=abb92(73)
      acc92(41)=abb92(75)
      acc92(42)=abb92(79)
      acc92(43)=abb92(87)
      acc92(44)=abb92(88)
      acc92(45)=abb92(89)
      acc92(46)=abb92(90)
      acc92(47)=abb92(95)
      acc92(48)=abb92(101)
      acc92(49)=abb92(106)
      acc92(50)=abb92(115)
      acc92(51)=abb92(121)
      acc92(52)=abb92(123)
      acc92(53)=abb92(128)
      acc92(54)=abb92(131)
      acc92(55)=abb92(135)
      acc92(56)=abb92(139)
      acc92(57)=abb92(141)
      acc92(58)=abb92(154)
      acc92(59)=abb92(158)
      acc92(60)=abb92(161)
      acc92(61)=abb92(167)
      acc92(62)=abb92(168)
      acc92(63)=abb92(174)
      acc92(64)=abb92(182)
      acc92(65)=abb92(186)
      acc92(66)=acc92(2)*Qspvak2l5
      acc92(67)=acc92(10)*Qspvak1l6
      acc92(68)=acc92(20)*Qspvak1l5
      acc92(69)=acc92(30)*Qspl6
      acc92(70)=acc92(36)*Qspvak2l6
      acc92(71)=acc92(52)*Qspval6l5
      acc92(72)=acc92(60)*Qspl5
      acc92(73)=acc92(65)*Qspval5l6
      acc92(66)=acc92(73)+acc92(72)+acc92(71)+acc92(70)+acc92(69)+acc92(21)+acc&
      &92(68)+acc92(67)+acc92(66)
      acc92(66)=Qspvak4k3*acc92(66)
      acc92(67)=acc92(18)*Qspvak1l6
      acc92(68)=acc92(25)*Qspvak2l5
      acc92(69)=acc92(27)*Qspvak1l5
      acc92(70)=acc92(40)*Qspvak2l6
      acc92(71)=acc92(53)*Qspl5
      acc92(72)=acc92(55)*Qspl6
      acc92(73)=acc92(56)*Qspval6l5
      acc92(74)=acc92(62)*Qspval5l6
      acc92(67)=acc92(74)+acc92(73)+acc92(72)+acc92(71)+acc92(43)+acc92(70)+acc&
      &92(69)+acc92(68)+acc92(67)
      acc92(67)=Qspvak4k2*acc92(67)
      acc92(68)=acc92(1)*Qspvak2l5
      acc92(69)=acc92(17)*Qspvak2l6
      acc92(70)=acc92(19)*Qspvak1l6
      acc92(71)=acc92(28)*Qspvak1l5
      acc92(72)=acc92(44)*Qspl6
      acc92(73)=acc92(46)*Qspl5
      acc92(74)=acc92(47)*Qspval6l5
      acc92(75)=acc92(48)*Qspval5l6
      acc92(68)=acc92(75)+acc92(74)+acc92(73)+acc92(72)+acc92(71)+acc92(26)+acc&
      &92(70)+acc92(69)+acc92(68)
      acc92(68)=Qspvak2k7*acc92(68)
      acc92(69)=acc92(4)*Qspvak1l6
      acc92(70)=acc92(13)*Qspvak1l5
      acc92(71)=acc92(15)*Qspvak2l5
      acc92(72)=acc92(34)*Qspvak2l6
      acc92(73)=acc92(39)*Qspval5l6
      acc92(74)=acc92(42)*Qspval6l5
      acc92(75)=acc92(58)*Qspl6
      acc92(76)=acc92(59)*Qspl5
      acc92(69)=acc92(76)+acc92(75)+acc92(74)+acc92(73)+acc92(72)+acc92(24)+acc&
      &92(71)+acc92(70)+acc92(69)
      acc92(69)=Qspk7*acc92(69)
      acc92(70)=acc92(32)*Qspvak2l5
      acc92(71)=acc92(37)*Qspvak2l6
      acc92(72)=acc92(51)*Qspvak4l6
      acc92(73)=-acc92(54)*Qspvak4l5
      acc92(70)=acc92(71)+acc92(70)+acc92(73)+acc92(72)
      acc92(71)=Qspl5+Qspl6
      acc92(72)=acc92(71)-Qspk1
      acc92(70)=acc92(72)*acc92(70)
      acc92(72)=acc92(22)*Qspvak2l5
      acc92(73)=acc92(31)*Qspvak2l6
      acc92(74)=acc92(33)*Qspvak4l5
      acc92(75)=acc92(49)*Qspvak4l6
      acc92(72)=acc92(75)+acc92(74)+acc92(73)+acc92(72)+acc92(8)
      acc92(72)=Qspk2*acc92(72)
      acc92(73)=acc92(50)*Qspval6l5
      acc92(74)=acc92(63)*Qspl6
      acc92(75)=acc92(64)*Qspl5
      acc92(73)=acc92(75)+acc92(74)+acc92(73)
      acc92(74)=Qspk3+Qspk4
      acc92(75)=acc92(74)-Qspk2
      acc92(73)=acc92(75)*acc92(73)
      acc92(76)=-acc92(38)*Qspvak2l6
      acc92(77)=acc92(41)*Qspvak2l5
      acc92(76)=acc92(61)+acc92(77)+acc92(76)
      acc92(74)=acc92(74)*acc92(76)
      acc92(76)=acc92(45)*acc92(75)
      acc92(76)=acc92(35)+acc92(76)
      acc92(76)=Qspval5l6*acc92(76)
      acc92(77)=-acc92(5)*acc92(75)
      acc92(77)=acc92(3)+acc92(77)
      acc92(77)=Qspvak1l6*acc92(77)
      acc92(75)=-acc92(16)*acc92(75)
      acc92(75)=acc92(7)+acc92(75)
      acc92(75)=Qspvak1l5*acc92(75)
      acc92(71)=acc92(57)*acc92(71)
      acc92(78)=acc92(9)*Qspvak2l6
      acc92(79)=acc92(11)*Qspvak2l5
      acc92(80)=acc92(14)*Qspk1
      acc92(81)=Qspvak2k1*acc92(6)
      acc92(82)=Qspvak1k2*acc92(29)
      acc92(83)=QspQ*acc92(23)
      brack=acc92(12)+acc92(66)+acc92(67)+acc92(68)+acc92(69)+acc92(70)+acc92(7&
      &1)+acc92(72)+acc92(73)+acc92(74)+acc92(75)+acc92(76)+acc92(77)+acc92(78)&
      &+acc92(79)+acc92(80)+acc92(81)+acc92(82)+acc92(83)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd92h3
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
   & bind(c, name="p0_dbaru_epnebbbarg_d92h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd92h3
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
end module p0_dbaru_epnebbbarg_d92h3l1
