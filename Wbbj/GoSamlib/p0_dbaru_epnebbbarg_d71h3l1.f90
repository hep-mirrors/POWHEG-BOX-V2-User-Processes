module     p0_dbaru_epnebbbarg_d71h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d71h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd71h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc71(96)
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k7
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      acc71(1)=abb71(9)
      acc71(2)=abb71(10)
      acc71(3)=abb71(11)
      acc71(4)=abb71(12)
      acc71(5)=abb71(13)
      acc71(6)=abb71(14)
      acc71(7)=abb71(15)
      acc71(8)=abb71(16)
      acc71(9)=abb71(17)
      acc71(10)=abb71(18)
      acc71(11)=abb71(19)
      acc71(12)=abb71(20)
      acc71(13)=abb71(21)
      acc71(14)=abb71(22)
      acc71(15)=abb71(23)
      acc71(16)=abb71(24)
      acc71(17)=abb71(25)
      acc71(18)=abb71(26)
      acc71(19)=abb71(27)
      acc71(20)=abb71(28)
      acc71(21)=abb71(29)
      acc71(22)=abb71(30)
      acc71(23)=abb71(31)
      acc71(24)=abb71(32)
      acc71(25)=abb71(33)
      acc71(26)=abb71(34)
      acc71(27)=abb71(35)
      acc71(28)=abb71(36)
      acc71(29)=abb71(37)
      acc71(30)=abb71(38)
      acc71(31)=abb71(39)
      acc71(32)=abb71(40)
      acc71(33)=abb71(41)
      acc71(34)=abb71(42)
      acc71(35)=abb71(43)
      acc71(36)=abb71(44)
      acc71(37)=abb71(45)
      acc71(38)=abb71(46)
      acc71(39)=abb71(47)
      acc71(40)=abb71(48)
      acc71(41)=abb71(49)
      acc71(42)=abb71(50)
      acc71(43)=abb71(51)
      acc71(44)=abb71(52)
      acc71(45)=abb71(53)
      acc71(46)=abb71(54)
      acc71(47)=abb71(55)
      acc71(48)=abb71(56)
      acc71(49)=abb71(57)
      acc71(50)=abb71(58)
      acc71(51)=abb71(59)
      acc71(52)=abb71(60)
      acc71(53)=abb71(61)
      acc71(54)=abb71(62)
      acc71(55)=abb71(63)
      acc71(56)=abb71(64)
      acc71(57)=abb71(65)
      acc71(58)=abb71(66)
      acc71(59)=abb71(67)
      acc71(60)=abb71(68)
      acc71(61)=abb71(69)
      acc71(62)=abb71(70)
      acc71(63)=abb71(71)
      acc71(64)=abb71(72)
      acc71(65)=abb71(73)
      acc71(66)=abb71(74)
      acc71(67)=abb71(75)
      acc71(68)=abb71(76)
      acc71(69)=abb71(77)
      acc71(70)=abb71(78)
      acc71(71)=abb71(79)
      acc71(72)=abb71(80)
      acc71(73)=abb71(81)
      acc71(74)=abb71(82)
      acc71(75)=abb71(83)
      acc71(76)=abb71(86)
      acc71(77)=abb71(88)
      acc71(78)=abb71(90)
      acc71(79)=abb71(91)
      acc71(80)=abb71(92)
      acc71(81)=abb71(95)
      acc71(82)=abb71(99)
      acc71(83)=abb71(101)
      acc71(84)=abb71(103)
      acc71(85)=Qspvak4k2*acc71(42)
      acc71(86)=Qspvak1k3*acc71(18)
      acc71(87)=Qspk2*acc71(54)
      acc71(88)=Qspvak4k3*acc71(31)
      acc71(85)=acc71(88)+acc71(87)+acc71(86)+acc71(25)+acc71(85)
      acc71(85)=QspQ*acc71(85)
      acc71(86)=Qspvak4k2*acc71(14)
      acc71(87)=Qspvak1k3*acc71(35)
      acc71(86)=acc71(87)+acc71(22)+acc71(86)
      acc71(86)=Qspk7*acc71(86)
      acc71(87)=Qspk4+Qspk3
      acc71(88)=acc71(51)*acc71(87)
      acc71(89)=Qspvak7k2*acc71(55)
      acc71(90)=Qspvak1k7*acc71(52)
      acc71(91)=Qspvak1k3*acc71(6)
      acc71(92)=Qspk7*acc71(75)
      acc71(92)=acc71(74)+acc71(92)
      acc71(92)=Qspk2*acc71(92)
      acc71(93)=Qspvak1k7*acc71(56)
      acc71(93)=acc71(27)+acc71(93)
      acc71(93)=Qspvak4k3*acc71(93)
      acc71(85)=acc71(85)+acc71(93)+acc71(92)+acc71(86)+acc71(91)+acc71(90)+acc&
      &71(2)+acc71(89)+acc71(88)
      acc71(85)=Qspvak2l5*acc71(85)
      acc71(86)=Qspvak4k2*acc71(77)
      acc71(88)=Qspvak1k3*acc71(16)
      acc71(89)=Qspk2*acc71(76)
      acc71(90)=Qspvak4k3*acc71(29)
      acc71(86)=acc71(90)+acc71(89)+acc71(88)+acc71(69)+acc71(86)
      acc71(86)=QspQ*acc71(86)
      acc71(88)=Qspvak4k2*acc71(62)
      acc71(89)=Qspvak1k3*acc71(71)
      acc71(88)=acc71(89)+acc71(80)+acc71(88)
      acc71(88)=Qspk7*acc71(88)
      acc71(89)=acc71(81)*acc71(87)
      acc71(90)=Qspvak7k2*acc71(78)
      acc71(91)=Qspvak1k7*acc71(36)
      acc71(92)=Qspvak1k3*acc71(64)
      acc71(93)=Qspk7*acc71(83)
      acc71(93)=acc71(50)+acc71(93)
      acc71(93)=Qspk2*acc71(93)
      acc71(94)=Qspvak1k7*acc71(45)
      acc71(94)=acc71(1)+acc71(94)
      acc71(94)=Qspvak4k3*acc71(94)
      acc71(86)=acc71(86)+acc71(94)+acc71(93)+acc71(88)+acc71(92)+acc71(91)+acc&
      &71(73)+acc71(90)+acc71(89)
      acc71(86)=Qspvak2l6*acc71(86)
      acc71(88)=acc71(87)+Qspk7
      acc71(89)=acc71(11)*acc71(88)
      acc71(90)=-Qspvak7k2*acc71(54)
      acc71(91)=Qspvak1k7*acc71(7)
      acc71(92)=Qspvak4k2*acc71(34)
      acc71(93)=Qspvak1k3*acc71(20)
      acc71(94)=Qspvak1k2*acc71(60)
      acc71(94)=acc71(12)+acc71(94)
      acc71(94)=Qspvak4k3*acc71(94)
      acc71(95)=QspQ*acc71(26)
      acc71(89)=acc71(95)+acc71(94)+acc71(93)+acc71(92)+acc71(91)+acc71(5)+acc7&
      &1(90)+acc71(89)
      acc71(89)=Qspvak2l5*acc71(89)
      acc71(90)=acc71(79)*acc71(88)
      acc71(91)=-Qspvak7k2*acc71(76)
      acc71(92)=Qspvak1k7*acc71(47)
      acc71(93)=Qspvak4k2*acc71(8)
      acc71(94)=Qspvak1k3*acc71(68)
      acc71(95)=Qspvak1k2*acc71(72)
      acc71(95)=acc71(84)+acc71(95)
      acc71(95)=Qspvak4k3*acc71(95)
      acc71(96)=QspQ*acc71(82)
      acc71(90)=acc71(96)+acc71(95)+acc71(94)+acc71(93)+acc71(92)+acc71(37)+acc&
      &71(91)+acc71(90)
      acc71(90)=Qspvak2l6*acc71(90)
      acc71(91)=Qspl6+Qspl5
      acc71(92)=-acc71(59)*acc71(91)
      acc71(93)=Qspval5k2*acc71(63)
      acc71(94)=Qspval6k2*acc71(41)
      acc71(95)=Qspk2*acc71(61)
      acc71(92)=acc71(95)+acc71(94)+acc71(93)+acc71(92)
      acc71(92)=Qspvak4k3*acc71(92)
      acc71(93)=Qspk2*acc71(15)
      acc71(94)=Qspvak4k3*acc71(13)
      acc71(93)=acc71(94)+acc71(40)+acc71(93)
      acc71(93)=QspQ*acc71(93)
      acc71(94)=-acc71(67)*acc71(91)
      acc71(95)=Qspval5k2*acc71(30)
      acc71(96)=Qspval6k2*acc71(43)
      acc71(88)=acc71(39)*acc71(88)
      acc71(88)=acc71(32)+acc71(88)
      acc71(88)=Qspk2*acc71(88)
      acc71(88)=acc71(90)+acc71(89)+acc71(93)+acc71(92)+acc71(88)+acc71(96)+acc&
      &71(95)+acc71(94)
      acc71(88)=Qspvak2k7*acc71(88)
      acc71(89)=-acc71(66)*acc71(91)
      acc71(90)=Qspval5k2*acc71(44)
      acc71(92)=Qspval6k2*acc71(49)
      acc71(93)=Qspk7*acc71(65)
      acc71(94)=Qspk2*acc71(23)
      acc71(95)=Qspk2*acc71(33)
      acc71(95)=acc71(28)+acc71(95)
      acc71(95)=Qspvak4k3*acc71(95)
      acc71(96)=QspQ*acc71(17)
      acc71(89)=acc71(96)+acc71(95)+acc71(94)+acc71(93)+acc71(92)+acc71(90)+acc&
      &71(53)+acc71(89)
      acc71(89)=QspQ*acc71(89)
      acc71(90)=-acc71(70)*acc71(91)
      acc71(92)=Qspval5k2*acc71(9)
      acc71(93)=Qspval6k2*acc71(48)
      acc71(94)=Qspk2*acc71(21)
      acc71(90)=acc71(94)+acc71(93)+acc71(92)+acc71(90)
      acc71(90)=Qspvak4k3*acc71(90)
      acc71(92)=-acc71(19)*acc71(91)
      acc71(93)=Qspval5k2*acc71(46)
      acc71(94)=Qspval6k2*acc71(58)
      acc71(92)=acc71(94)+acc71(93)+acc71(92)
      acc71(92)=Qspk7*acc71(92)
      acc71(87)=-acc71(10)*acc71(87)
      acc71(93)=Qspk7*acc71(24)
      acc71(87)=acc71(93)+acc71(4)+acc71(87)
      acc71(87)=Qspk2*acc71(87)
      acc71(91)=-acc71(3)*acc71(91)
      acc71(93)=Qspval5k2*acc71(57)
      acc71(94)=Qspval6k2*acc71(38)
      brack=acc71(85)+acc71(86)+acc71(87)+acc71(88)+acc71(89)+acc71(90)+acc71(9&
      &1)+acc71(92)+acc71(93)+acc71(94)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd71h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d71
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d71 = 0.0_ki
      d71 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d71, ki), aimag(d71), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d71h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd71h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d71
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d71 = 0.0_ki
      d71 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d71, ki), aimag(d71), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d71h3l1
