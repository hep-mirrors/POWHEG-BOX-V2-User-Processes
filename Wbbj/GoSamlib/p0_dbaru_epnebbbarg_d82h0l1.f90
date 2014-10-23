module     p0_dbaru_epnebbbarg_d82h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d82h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd82h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc82(93)
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1k4
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      acc82(1)=abb82(8)
      acc82(2)=abb82(9)
      acc82(3)=abb82(10)
      acc82(4)=abb82(11)
      acc82(5)=abb82(12)
      acc82(6)=abb82(13)
      acc82(7)=abb82(14)
      acc82(8)=abb82(15)
      acc82(9)=abb82(16)
      acc82(10)=abb82(17)
      acc82(11)=abb82(18)
      acc82(12)=abb82(19)
      acc82(13)=abb82(20)
      acc82(14)=abb82(21)
      acc82(15)=abb82(22)
      acc82(16)=abb82(23)
      acc82(17)=abb82(24)
      acc82(18)=abb82(25)
      acc82(19)=abb82(26)
      acc82(20)=abb82(27)
      acc82(21)=abb82(28)
      acc82(22)=abb82(29)
      acc82(23)=abb82(30)
      acc82(24)=abb82(33)
      acc82(25)=abb82(34)
      acc82(26)=abb82(35)
      acc82(27)=abb82(36)
      acc82(28)=abb82(37)
      acc82(29)=abb82(38)
      acc82(30)=abb82(39)
      acc82(31)=abb82(40)
      acc82(32)=abb82(41)
      acc82(33)=abb82(42)
      acc82(34)=abb82(43)
      acc82(35)=abb82(44)
      acc82(36)=abb82(45)
      acc82(37)=abb82(46)
      acc82(38)=abb82(47)
      acc82(39)=abb82(48)
      acc82(40)=abb82(49)
      acc82(41)=abb82(50)
      acc82(42)=abb82(51)
      acc82(43)=abb82(52)
      acc82(44)=abb82(53)
      acc82(45)=abb82(54)
      acc82(46)=abb82(55)
      acc82(47)=abb82(56)
      acc82(48)=abb82(57)
      acc82(49)=abb82(58)
      acc82(50)=abb82(59)
      acc82(51)=abb82(60)
      acc82(52)=abb82(61)
      acc82(53)=abb82(62)
      acc82(54)=abb82(63)
      acc82(55)=abb82(64)
      acc82(56)=abb82(65)
      acc82(57)=abb82(66)
      acc82(58)=abb82(67)
      acc82(59)=abb82(68)
      acc82(60)=abb82(69)
      acc82(61)=abb82(70)
      acc82(62)=abb82(71)
      acc82(63)=abb82(72)
      acc82(64)=abb82(73)
      acc82(65)=abb82(74)
      acc82(66)=abb82(75)
      acc82(67)=abb82(77)
      acc82(68)=abb82(78)
      acc82(69)=abb82(79)
      acc82(70)=abb82(80)
      acc82(71)=abb82(81)
      acc82(72)=abb82(82)
      acc82(73)=abb82(83)
      acc82(74)=abb82(84)
      acc82(75)=abb82(85)
      acc82(76)=abb82(86)
      acc82(77)=abb82(88)
      acc82(78)=abb82(89)
      acc82(79)=abb82(90)
      acc82(80)=abb82(91)
      acc82(81)=abb82(92)
      acc82(82)=-acc82(43)*Qspvak3k2
      acc82(83)=Qspvak4k2*acc82(78)
      acc82(84)=Qspvak1k2*acc82(20)
      acc82(85)=Qspvak7k2*acc82(63)
      acc82(86)=-Qspvak1k2*acc82(19)
      acc82(86)=acc82(71)+acc82(86)
      acc82(86)=Qspval5k2*acc82(86)
      acc82(87)=-Qspvak1k2*acc82(7)
      acc82(87)=acc82(69)+acc82(87)
      acc82(87)=Qspval6k2*acc82(87)
      acc82(82)=acc82(87)+acc82(86)+acc82(85)+acc82(84)+acc82(82)+acc82(83)
      acc82(82)=Qspvak4k3*acc82(82)
      acc82(83)=Qspk4+Qspk3
      acc82(84)=-acc82(51)*acc82(83)
      acc82(85)=Qspvak1k2*acc82(35)
      acc82(86)=Qspvak1k3*acc82(10)
      acc82(87)=Qspk1*acc82(65)
      acc82(88)=QspQ*acc82(36)
      acc82(84)=acc82(88)+acc82(87)+acc82(86)+acc82(85)+acc82(39)+acc82(84)
      acc82(84)=Qspval5k2*acc82(84)
      acc82(85)=acc82(37)*acc82(83)
      acc82(86)=Qspvak1k2*acc82(6)
      acc82(87)=Qspvak1k3*acc82(2)
      acc82(88)=Qspk1*acc82(76)
      acc82(89)=QspQ*acc82(38)
      acc82(85)=acc82(89)+acc82(88)+acc82(87)+acc82(86)+acc82(24)+acc82(85)
      acc82(85)=Qspval6k2*acc82(85)
      acc82(86)=Qspvak4k2*acc82(77)
      acc82(87)=acc82(86)*acc82(83)
      acc82(88)=-QspQ*acc82(43)
      acc82(88)=acc82(88)+acc82(41)
      acc82(88)=Qspvak4k2*acc82(88)
      acc82(89)=Qspvak1k2*acc82(55)
      acc82(90)=Qspvak7k2*acc82(3)
      acc82(91)=Qspvak1k3*acc82(4)
      acc82(86)=acc82(1)-acc82(86)
      acc82(86)=Qspk1*acc82(86)
      acc82(92)=Qspk2*acc82(21)
      acc82(82)=acc82(82)+acc82(85)+acc82(84)+acc82(92)+acc82(86)+acc82(91)+acc&
      &82(90)+acc82(89)+acc82(22)+acc82(87)+acc82(88)
      acc82(82)=Qspvak2k7*acc82(82)
      acc82(84)=Qspk2-Qspk7
      acc82(85)=acc82(67)*acc82(84)
      acc82(86)=Qspvak1k2*acc82(46)
      acc82(87)=QspQ*acc82(62)
      acc82(85)=acc82(87)+acc82(45)-acc82(86)+acc82(85)
      acc82(85)=Qspk2*acc82(85)
      acc82(87)=QspQ+Qspk7
      acc82(88)=acc82(75)*acc82(87)
      acc82(89)=Qspvak1k7*acc82(66)
      acc82(90)=Qspk2*acc82(70)
      acc82(88)=acc82(90)+acc82(74)+acc82(89)+acc82(88)
      acc82(88)=Qspval5k2*acc82(88)
      acc82(87)=acc82(73)*acc82(87)
      acc82(89)=Qspvak1k7*acc82(79)
      acc82(90)=Qspk2*acc82(64)
      acc82(87)=acc82(90)+acc82(72)+acc82(89)+acc82(87)
      acc82(87)=Qspval6k2*acc82(87)
      acc82(89)=acc82(80)*Qspvak1k4
      acc82(86)=Qspk7*acc82(86)
      acc82(90)=Qspvak7k2*acc82(25)
      acc82(91)=Qspvak1k3*acc82(29)
      acc82(92)=Qspk1*acc82(68)
      acc82(93)=Qspvak1k2*acc82(42)
      acc82(93)=acc82(59)+acc82(93)
      acc82(93)=QspQ*acc82(93)
      acc82(85)=acc82(87)+acc82(88)+acc82(85)+acc82(93)+acc82(92)+acc82(91)+acc&
      &82(90)+acc82(86)+acc82(89)+acc82(13)
      acc82(85)=Qspvak4k3*acc82(85)
      acc82(86)=Qspk7*acc82(54)
      acc82(87)=Qspvak7k2*acc82(58)
      acc82(88)=Qspvak1k3*acc82(18)
      acc82(89)=Qspk1*acc82(56)
      acc82(90)=QspQ*acc82(50)
      acc82(91)=Qspk2*acc82(34)
      acc82(86)=acc82(91)+acc82(90)+acc82(89)+acc82(88)+acc82(87)+acc82(52)+acc&
      &82(86)
      acc82(86)=Qspval5k2*acc82(86)
      acc82(87)=Qspk7*acc82(57)
      acc82(88)=Qspvak7k2*acc82(61)
      acc82(89)=Qspvak1k3*acc82(44)
      acc82(90)=Qspk1*acc82(48)
      acc82(91)=QspQ*acc82(53)
      acc82(92)=Qspk2*acc82(60)
      acc82(87)=acc82(92)+acc82(91)+acc82(90)+acc82(89)+acc82(88)+acc82(49)+acc&
      &82(87)
      acc82(87)=Qspval6k2*acc82(87)
      acc82(88)=-acc82(16)*acc82(83)
      acc82(89)=Qspvak7k2*acc82(28)
      acc82(90)=Qspvak1k3*acc82(12)
      acc82(91)=Qspk1*acc82(5)
      acc82(92)=QspQ*acc82(26)
      acc82(88)=acc82(92)+acc82(91)+acc82(90)+acc82(89)+acc82(15)+acc82(88)
      acc82(88)=QspQ*acc82(88)
      acc82(89)=-acc82(47)*acc82(83)
      acc82(84)=acc82(40)*acc82(84)
      acc82(90)=-Qspvak1k3*acc82(27)
      acc82(91)=Qspk1*acc82(9)
      acc82(92)=QspQ*acc82(17)
      acc82(84)=acc82(92)+acc82(91)+acc82(90)+acc82(33)+acc82(84)+acc82(89)
      acc82(84)=Qspk2*acc82(84)
      acc82(89)=Qspk7*acc82(8)
      acc82(90)=-Qspvak7k2*acc82(32)
      acc82(91)=-Qspvak1k3*acc82(81)
      acc82(89)=acc82(91)+acc82(90)+acc82(11)+acc82(89)
      acc82(89)=Qspk1*acc82(89)
      acc82(90)=acc82(81)*acc82(83)
      acc82(91)=Qspk7*acc82(27)
      acc82(90)=acc82(91)+acc82(90)
      acc82(90)=Qspvak1k3*acc82(90)
      acc82(91)=acc82(31)*acc82(83)
      acc82(92)=Qspk7*acc82(23)
      acc82(83)=acc82(32)*acc82(83)
      acc82(83)=acc82(30)+acc82(83)
      acc82(83)=Qspvak7k2*acc82(83)
      brack=acc82(14)+acc82(82)+acc82(83)+acc82(84)+acc82(85)+acc82(86)+acc82(8&
      &7)+acc82(88)+acc82(89)+acc82(90)+acc82(91)+acc82(92)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd82h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d82
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d82 = 0.0_ki
      d82 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d82, ki), aimag(d82), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d82h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd82h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d82
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d82 = 0.0_ki
      d82 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d82, ki), aimag(d82), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d82h0l1
