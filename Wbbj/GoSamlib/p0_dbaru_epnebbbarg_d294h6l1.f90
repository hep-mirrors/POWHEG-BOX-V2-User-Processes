module     p0_dbaru_epnebbbarg_d294h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d294h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd294h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc294(95)
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak7l6
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      acc294(1)=abb294(10)
      acc294(2)=abb294(11)
      acc294(3)=abb294(12)
      acc294(4)=abb294(13)
      acc294(5)=abb294(14)
      acc294(6)=abb294(15)
      acc294(7)=abb294(16)
      acc294(8)=abb294(17)
      acc294(9)=abb294(18)
      acc294(10)=abb294(19)
      acc294(11)=abb294(20)
      acc294(12)=abb294(21)
      acc294(13)=abb294(22)
      acc294(14)=abb294(23)
      acc294(15)=abb294(24)
      acc294(16)=abb294(25)
      acc294(17)=abb294(26)
      acc294(18)=abb294(27)
      acc294(19)=abb294(28)
      acc294(20)=abb294(29)
      acc294(21)=abb294(30)
      acc294(22)=abb294(31)
      acc294(23)=abb294(32)
      acc294(24)=abb294(33)
      acc294(25)=abb294(34)
      acc294(26)=abb294(35)
      acc294(27)=abb294(36)
      acc294(28)=abb294(37)
      acc294(29)=abb294(38)
      acc294(30)=abb294(39)
      acc294(31)=abb294(40)
      acc294(32)=abb294(41)
      acc294(33)=abb294(42)
      acc294(34)=abb294(43)
      acc294(35)=abb294(44)
      acc294(36)=abb294(45)
      acc294(37)=abb294(46)
      acc294(38)=abb294(47)
      acc294(39)=abb294(48)
      acc294(40)=abb294(49)
      acc294(41)=abb294(50)
      acc294(42)=abb294(51)
      acc294(43)=abb294(52)
      acc294(44)=abb294(53)
      acc294(45)=abb294(54)
      acc294(46)=abb294(55)
      acc294(47)=abb294(56)
      acc294(48)=abb294(57)
      acc294(49)=abb294(58)
      acc294(50)=abb294(61)
      acc294(51)=abb294(62)
      acc294(52)=abb294(63)
      acc294(53)=abb294(64)
      acc294(54)=abb294(65)
      acc294(55)=abb294(67)
      acc294(56)=abb294(69)
      acc294(57)=abb294(70)
      acc294(58)=abb294(71)
      acc294(59)=abb294(73)
      acc294(60)=abb294(76)
      acc294(61)=abb294(79)
      acc294(62)=abb294(81)
      acc294(63)=abb294(82)
      acc294(64)=abb294(84)
      acc294(65)=abb294(90)
      acc294(66)=abb294(92)
      acc294(67)=abb294(94)
      acc294(68)=abb294(96)
      acc294(69)=abb294(97)
      acc294(70)=abb294(100)
      acc294(71)=abb294(101)
      acc294(72)=abb294(103)
      acc294(73)=abb294(106)
      acc294(74)=abb294(108)
      acc294(75)=abb294(121)
      acc294(76)=abb294(127)
      acc294(77)=abb294(133)
      acc294(78)=abb294(138)
      acc294(79)=abb294(175)
      acc294(80)=Qspvak4k2*acc294(45)
      acc294(81)=Qspvak4l6*acc294(76)
      acc294(82)=Qspl6*acc294(69)
      acc294(83)=Qspvak1k2*acc294(23)
      acc294(84)=Qspvak1k2*acc294(29)
      acc294(84)=acc294(66)+acc294(84)
      acc294(84)=Qspvak4k3*acc294(84)
      acc294(85)=QspQ*acc294(30)
      acc294(86)=Qspk2*acc294(78)
      acc294(80)=acc294(86)+acc294(85)+acc294(84)+acc294(83)+acc294(82)+acc294(&
      &81)+acc294(24)+acc294(80)
      acc294(80)=Qspk2*acc294(80)
      acc294(81)=Qspval6k2*acc294(28)
      acc294(82)=Qspl6*acc294(65)
      acc294(83)=Qspvak1k2*acc294(47)
      acc294(81)=acc294(83)+acc294(82)+acc294(60)+acc294(81)
      acc294(81)=Qspvak4k3*acc294(81)
      acc294(82)=Qspvak4k2*acc294(18)
      acc294(83)=Qspvak4l6*acc294(74)
      acc294(84)=-Qspvak4k3*acc294(65)
      acc294(82)=acc294(84)+acc294(83)+acc294(42)+acc294(82)
      acc294(82)=QspQ*acc294(82)
      acc294(83)=Qspvak4k2*acc294(20)
      acc294(84)=Qspvak4l6*acc294(75)
      acc294(83)=acc294(84)+acc294(61)+acc294(83)
      acc294(83)=Qspl6*acc294(83)
      acc294(84)=Qspvak2k3*acc294(43)
      acc294(85)=Qspvak2l6*acc294(11)
      acc294(84)=acc294(85)+acc294(5)+acc294(84)
      acc294(84)=Qspvak1k2*acc294(84)
      acc294(85)=Qspvak1l6*acc294(6)
      acc294(86)=Qspvak2k1*acc294(59)
      acc294(87)=Qspvak2l5*acc294(51)
      acc294(88)=Qspvak2k7*acc294(71)
      acc294(89)=Qspvak2k3*acc294(13)
      acc294(90)=Qspvak2l6*acc294(1)
      acc294(91)=Qspval6k2*acc294(17)
      acc294(80)=acc294(80)+acc294(82)+acc294(81)+acc294(84)+acc294(83)+acc294(&
      &91)+acc294(90)+acc294(89)+acc294(88)+acc294(87)+acc294(86)+acc294(8)+acc&
      &294(85)
      acc294(80)=Qspvak7k2*acc294(80)
      acc294(81)=Qspval5k2*acc294(52)
      acc294(82)=Qspvak1k2*acc294(39)
      acc294(81)=acc294(82)+acc294(40)+acc294(81)
      acc294(81)=Qspvak4k3*acc294(81)
      acc294(82)=-Qspk1+Qspk7+Qspl5
      acc294(83)=acc294(26)*acc294(82)
      acc294(84)=Qspvak4k2*acc294(2)
      acc294(85)=Qspvak4l6*acc294(70)
      acc294(86)=Qspval5k2*acc294(63)
      acc294(87)=Qspval6k2*acc294(55)
      acc294(88)=Qspl6*acc294(79)
      acc294(89)=Qspvak1k2*acc294(44)
      acc294(90)=QspQ*acc294(4)
      acc294(91)=Qspk2*acc294(50)
      acc294(81)=acc294(91)+acc294(90)+acc294(81)+acc294(89)+acc294(88)+acc294(&
      &87)+acc294(86)+acc294(85)+acc294(84)+acc294(10)+acc294(83)
      acc294(81)=Qspk2*acc294(81)
      acc294(83)=Qspval5l6*acc294(7)
      acc294(84)=-acc294(32)*acc294(82)
      acc294(85)=Qspvak4k2*acc294(9)
      acc294(86)=Qspvak4l6*acc294(72)
      acc294(87)=Qspval5k2*acc294(64)
      acc294(88)=Qspval6k2*acc294(41)
      acc294(89)=Qspl6*acc294(73)
      acc294(90)=Qspval5k2*acc294(57)
      acc294(90)=acc294(56)+acc294(90)
      acc294(90)=Qspvak4k3*acc294(90)
      acc294(91)=QspQ*acc294(19)
      acc294(83)=acc294(91)+acc294(90)+acc294(89)+acc294(88)+acc294(87)+acc294(&
      &86)+acc294(85)+acc294(84)+acc294(31)+acc294(83)
      acc294(83)=QspQ*acc294(83)
      acc294(84)=Qspval5k2*acc294(46)
      acc294(85)=Qspval6k2*acc294(38)
      acc294(86)=Qspl6*acc294(77)
      acc294(87)=Qspvak1k2*acc294(35)
      acc294(84)=acc294(87)+acc294(86)+acc294(85)+acc294(58)+acc294(84)
      acc294(84)=Qspvak4k3*acc294(84)
      acc294(85)=Qspvak2k3*acc294(21)
      acc294(86)=Qspvak2l6*acc294(22)
      acc294(85)=acc294(86)+acc294(37)+acc294(85)
      acc294(85)=Qspval5k2*acc294(85)
      acc294(86)=Qspvak4k2*acc294(67)
      acc294(87)=Qspvak4l6*acc294(68)
      acc294(86)=acc294(87)+acc294(33)+acc294(86)
      acc294(86)=Qspl6*acc294(86)
      acc294(87)=Qspvak2k3*acc294(49)
      acc294(88)=Qspvak2l6*acc294(48)
      acc294(87)=acc294(88)+acc294(15)+acc294(87)
      acc294(87)=Qspvak1k2*acc294(87)
      acc294(88)=acc294(27)*Qspvak7l6
      acc294(89)=Qspvak1l6*acc294(34)
      acc294(90)=Qspvak2k1*acc294(53)
      acc294(91)=Qspvak2l5*acc294(25)
      acc294(92)=Qspvak2k7*acc294(62)
      acc294(93)=Qspval5l6*acc294(3)
      acc294(94)=Qspvak2k3*acc294(54)
      acc294(95)=Qspvak2l6*acc294(14)
      acc294(82)=acc294(36)*acc294(82)
      acc294(82)=acc294(16)+acc294(82)
      acc294(82)=Qspval6k2*acc294(82)
      brack=acc294(12)+acc294(80)+acc294(81)+acc294(82)+acc294(83)+acc294(84)+a&
      &cc294(85)+acc294(86)+acc294(87)+acc294(88)+acc294(89)+acc294(90)+acc294(&
      &91)+acc294(92)+acc294(93)+acc294(94)+acc294(95)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd294h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d294
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d294 = 0.0_ki
      d294 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d294, ki), aimag(d294), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d294h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd294h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d294
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d294 = 0.0_ki
      d294 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d294, ki), aimag(d294), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d294h6l1
