module     p0_dbaru_epnebbbarg_d314h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d314h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd314h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc314(86)
      complex(ki) :: Qspvak3l5
      complex(ki) :: Qspvak3l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak2k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak3k7
      Qspvak3l5 = dotproduct(Q,spvak3l5)
      Qspvak3l6 = dotproduct(Q,spvak3l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      QspQ = dotproduct(Q,Q)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak3k7 = dotproduct(Q,spvak3k7)
      acc314(1)=abb314(10)
      acc314(2)=abb314(11)
      acc314(3)=abb314(12)
      acc314(4)=abb314(13)
      acc314(5)=abb314(14)
      acc314(6)=abb314(15)
      acc314(7)=abb314(16)
      acc314(8)=abb314(17)
      acc314(9)=abb314(18)
      acc314(10)=abb314(19)
      acc314(11)=abb314(20)
      acc314(12)=abb314(21)
      acc314(13)=abb314(22)
      acc314(14)=abb314(23)
      acc314(15)=abb314(24)
      acc314(16)=abb314(25)
      acc314(17)=abb314(26)
      acc314(18)=abb314(27)
      acc314(19)=abb314(28)
      acc314(20)=abb314(29)
      acc314(21)=abb314(30)
      acc314(22)=abb314(31)
      acc314(23)=abb314(32)
      acc314(24)=abb314(33)
      acc314(25)=abb314(34)
      acc314(26)=abb314(35)
      acc314(27)=abb314(36)
      acc314(28)=abb314(37)
      acc314(29)=abb314(38)
      acc314(30)=abb314(39)
      acc314(31)=abb314(40)
      acc314(32)=abb314(41)
      acc314(33)=abb314(42)
      acc314(34)=abb314(43)
      acc314(35)=abb314(44)
      acc314(36)=abb314(45)
      acc314(37)=abb314(46)
      acc314(38)=abb314(47)
      acc314(39)=abb314(48)
      acc314(40)=abb314(49)
      acc314(41)=abb314(50)
      acc314(42)=abb314(51)
      acc314(43)=abb314(52)
      acc314(44)=abb314(53)
      acc314(45)=abb314(54)
      acc314(46)=abb314(55)
      acc314(47)=abb314(56)
      acc314(48)=abb314(59)
      acc314(49)=abb314(64)
      acc314(50)=abb314(66)
      acc314(51)=abb314(72)
      acc314(52)=abb314(74)
      acc314(53)=abb314(82)
      acc314(54)=abb314(84)
      acc314(55)=abb314(89)
      acc314(56)=abb314(94)
      acc314(57)=abb314(96)
      acc314(58)=abb314(98)
      acc314(59)=abb314(99)
      acc314(60)=abb314(103)
      acc314(61)=abb314(106)
      acc314(62)=abb314(108)
      acc314(63)=abb314(109)
      acc314(64)=abb314(112)
      acc314(65)=abb314(113)
      acc314(66)=abb314(116)
      acc314(67)=abb314(123)
      acc314(68)=abb314(124)
      acc314(69)=acc314(36)*Qspvak3l5
      acc314(70)=acc314(30)*Qspvak3l6
      acc314(71)=Qspvak4l5*acc314(5)
      acc314(72)=Qspvak2l5*acc314(4)
      acc314(73)=Qspvak4l6*acc314(13)
      acc314(69)=acc314(73)+acc314(72)+acc314(71)+acc314(70)+acc314(69)+acc314(&
      &1)
      acc314(69)=Qspvak4k3*acc314(69)
      acc314(70)=Qspvak4l5*acc314(28)
      acc314(71)=-Qspvak2l6*acc314(30)
      acc314(72)=Qspvak2l5*acc314(3)
      acc314(73)=Qspvak4l6*acc314(8)
      acc314(70)=acc314(73)+acc314(72)+acc314(71)+acc314(7)+acc314(70)
      acc314(70)=Qspvak4k2*acc314(70)
      acc314(71)=Qspvak4l6*acc314(61)
      acc314(72)=Qspvak4l5*acc314(64)
      acc314(73)=Qspvak2l5*acc314(40)
      acc314(71)=acc314(71)+acc314(73)+acc314(25)+acc314(72)
      acc314(71)=Qspk2*acc314(71)
      acc314(73)=Qspk4+Qspk3
      acc314(72)=acc314(72)+acc314(46)
      acc314(72)=-acc314(72)*acc314(73)
      acc314(74)=acc314(57)*Qspvak7k3
      acc314(75)=Qspvak1k2*acc314(34)
      acc314(76)=Qspvak1k3*acc314(18)
      acc314(77)=Qspvak1l6*acc314(45)
      acc314(78)=Qspval5l6*acc314(59)
      acc314(79)=acc314(52)*Qspvak7l6
      acc314(80)=-acc314(24)*Qspvak7k2
      acc314(81)=Qspvak2k3*acc314(21)
      acc314(82)=Qspvak2l6*acc314(43)
      acc314(83)=QspQ*acc314(22)
      acc314(84)=-acc314(40)*acc314(73)
      acc314(84)=acc314(23)+acc314(84)
      acc314(84)=Qspvak2l5*acc314(84)
      acc314(85)=acc314(73)*Qspvak4l6
      acc314(86)=-acc314(61)*acc314(85)
      acc314(69)=acc314(71)+acc314(69)+acc314(70)+acc314(86)+acc314(84)+acc314(&
      &83)+acc314(82)+acc314(81)+acc314(80)+acc314(79)+acc314(78)+acc314(77)+ac&
      &c314(76)+acc314(75)+acc314(74)+acc314(17)+acc314(72)
      acc314(69)=Qspvak2k7*acc314(69)
      acc314(70)=Qspvak4k7*acc314(55)
      acc314(71)=Qspl5*acc314(65)
      acc314(70)=acc314(70)-acc314(71)
      acc314(71)=Qspvak4l6*acc314(63)
      acc314(72)=Qspk7-Qspk1
      acc314(74)=-acc314(42)*acc314(72)
      acc314(75)=-Qspk2+acc314(73)
      acc314(75)=acc314(56)*acc314(75)
      acc314(76)=Qspvak2l6*acc314(9)
      acc314(77)=QspQ*acc314(48)
      acc314(78)=Qspvak2l5*acc314(29)
      acc314(79)=Qspvak4k2*acc314(31)
      acc314(80)=Qspvak4k3*acc314(58)
      acc314(71)=acc314(80)+acc314(79)+acc314(71)+acc314(78)+acc314(77)+acc314(&
      &76)+acc314(33)+acc314(75)+acc314(74)+acc314(70)
      acc314(71)=Qspk2*acc314(71)
      acc314(74)=acc314(44)*Qspvak3k7
      acc314(75)=acc314(50)*Qspvak3l6
      acc314(76)=Qspvak4k7*acc314(68)
      acc314(77)=Qspl5*acc314(67)
      acc314(78)=QspQ*acc314(62)
      acc314(79)=Qspvak4l6*acc314(66)
      acc314(74)=acc314(79)+acc314(78)+acc314(77)+acc314(76)+acc314(75)+acc314(&
      &53)+acc314(74)
      acc314(74)=Qspvak4k3*acc314(74)
      acc314(75)=Qspvak4k7*acc314(51)
      acc314(76)=-Qspvak2l6*acc314(50)
      acc314(77)=Qspl5*acc314(41)
      acc314(78)=QspQ*acc314(20)
      acc314(79)=Qspvak4l6*acc314(2)
      acc314(75)=acc314(79)+acc314(78)+acc314(77)+acc314(76)+acc314(6)+acc314(7&
      &5)
      acc314(75)=Qspvak4k2*acc314(75)
      acc314(76)=QspQ*acc314(24)
      acc314(70)=-acc314(70)+acc314(76)+acc314(60)
      acc314(70)=acc314(70)*acc314(73)
      acc314(73)=Qspvak2k3*acc314(39)
      acc314(76)=Qspvak2l6*acc314(38)
      acc314(73)=acc314(76)+acc314(15)+acc314(73)
      acc314(73)=QspQ*acc314(73)
      acc314(76)=Qspl5*acc314(19)
      acc314(77)=QspQ*acc314(14)
      acc314(76)=acc314(77)+acc314(10)+acc314(76)
      acc314(76)=Qspvak2l5*acc314(76)
      acc314(77)=acc314(16)*acc314(72)
      acc314(78)=Qspvak1k2*acc314(26)
      acc314(79)=Qspvak1k3*acc314(47)
      acc314(80)=Qspvak1l6*acc314(12)
      acc314(81)=Qspval5l6*acc314(49)
      acc314(82)=Qspvak7l6*acc314(27)
      acc314(72)=-acc314(32)*acc314(72)
      acc314(72)=acc314(11)+acc314(72)
      acc314(72)=Qspvak2k3*acc314(72)
      acc314(83)=Qspvak2l6*acc314(37)
      acc314(84)=Qspvak2l6*acc314(52)
      acc314(84)=acc314(54)+acc314(84)
      acc314(84)=Qspl5*acc314(84)
      acc314(85)=-acc314(63)*acc314(85)
      brack=acc314(35)+acc314(69)+acc314(70)+acc314(71)+acc314(72)+acc314(73)+a&
      &cc314(74)+acc314(75)+acc314(76)+acc314(77)+acc314(78)+acc314(79)+acc314(&
      &80)+acc314(81)+acc314(82)+acc314(83)+acc314(84)+acc314(85)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd314h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d314
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d314 = 0.0_ki
      d314 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d314, ki), aimag(d314), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d314h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd314h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d314
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d314 = 0.0_ki
      d314 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d314, ki), aimag(d314), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d314h3l1
