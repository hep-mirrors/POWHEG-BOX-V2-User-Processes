module     p0_dbaru_epnebbbarg_d240h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d240h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd240h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc240(105)
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1l6
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      QspQ = dotproduct(Q,Q)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      acc240(1)=abb240(16)
      acc240(2)=abb240(17)
      acc240(3)=abb240(18)
      acc240(4)=abb240(19)
      acc240(5)=abb240(20)
      acc240(6)=abb240(21)
      acc240(7)=abb240(22)
      acc240(8)=abb240(23)
      acc240(9)=abb240(24)
      acc240(10)=abb240(25)
      acc240(11)=abb240(26)
      acc240(12)=abb240(27)
      acc240(13)=abb240(28)
      acc240(14)=abb240(29)
      acc240(15)=abb240(30)
      acc240(16)=abb240(31)
      acc240(17)=abb240(32)
      acc240(18)=abb240(33)
      acc240(19)=abb240(34)
      acc240(20)=abb240(35)
      acc240(21)=abb240(36)
      acc240(22)=abb240(37)
      acc240(23)=abb240(38)
      acc240(24)=abb240(40)
      acc240(25)=abb240(42)
      acc240(26)=abb240(44)
      acc240(27)=abb240(45)
      acc240(28)=abb240(48)
      acc240(29)=abb240(49)
      acc240(30)=abb240(50)
      acc240(31)=abb240(54)
      acc240(32)=abb240(55)
      acc240(33)=abb240(58)
      acc240(34)=abb240(59)
      acc240(35)=abb240(61)
      acc240(36)=abb240(64)
      acc240(37)=abb240(65)
      acc240(38)=abb240(67)
      acc240(39)=abb240(68)
      acc240(40)=abb240(70)
      acc240(41)=abb240(72)
      acc240(42)=abb240(74)
      acc240(43)=abb240(75)
      acc240(44)=abb240(80)
      acc240(45)=abb240(81)
      acc240(46)=abb240(82)
      acc240(47)=abb240(86)
      acc240(48)=abb240(88)
      acc240(49)=abb240(89)
      acc240(50)=abb240(90)
      acc240(51)=abb240(91)
      acc240(52)=abb240(92)
      acc240(53)=abb240(97)
      acc240(54)=abb240(98)
      acc240(55)=abb240(99)
      acc240(56)=abb240(100)
      acc240(57)=abb240(101)
      acc240(58)=abb240(104)
      acc240(59)=abb240(109)
      acc240(60)=abb240(110)
      acc240(61)=abb240(115)
      acc240(62)=abb240(120)
      acc240(63)=abb240(124)
      acc240(64)=abb240(137)
      acc240(65)=abb240(140)
      acc240(66)=abb240(144)
      acc240(67)=abb240(148)
      acc240(68)=abb240(188)
      acc240(69)=abb240(205)
      acc240(70)=abb240(225)
      acc240(71)=abb240(228)
      acc240(72)=abb240(232)
      acc240(73)=abb240(233)
      acc240(74)=abb240(234)
      acc240(75)=abb240(287)
      acc240(76)=abb240(356)
      acc240(77)=abb240(373)
      acc240(78)=Qspval5l6*acc240(21)
      acc240(79)=Qspval5k7*acc240(8)
      acc240(80)=Qspl5*acc240(30)
      acc240(81)=Qspl6*acc240(24)
      acc240(82)=Qspk7*acc240(33)
      acc240(83)=Qspvak2k7*acc240(22)
      acc240(84)=Qspval5k2*acc240(13)
      acc240(85)=Qspval6k2*acc240(19)
      acc240(86)=Qspval6l5*acc240(10)
      acc240(87)=Qspval6k7*acc240(4)
      acc240(78)=acc240(87)+acc240(86)+acc240(85)+acc240(84)+acc240(83)+acc240(&
      &82)+acc240(81)+acc240(80)+acc240(79)+acc240(2)+acc240(78)
      acc240(78)=Qspvak1k2*acc240(78)
      acc240(79)=Qspval5l6*acc240(61)
      acc240(80)=Qspval5k7*acc240(58)
      acc240(81)=Qspl5*acc240(40)
      acc240(82)=Qspl6*acc240(25)
      acc240(83)=Qspk7*acc240(50)
      acc240(84)=Qspvak2k7*acc240(16)
      acc240(85)=Qspval5k2*acc240(55)
      acc240(86)=Qspval6k2*acc240(57)
      acc240(87)=Qspval6l5*acc240(52)
      acc240(88)=Qspval6k7*acc240(34)
      acc240(79)=acc240(88)+acc240(87)+acc240(86)+acc240(85)+acc240(84)+acc240(&
      &83)+acc240(82)+acc240(81)+acc240(80)+acc240(9)+acc240(79)
      acc240(79)=Qspvak4k2*acc240(79)
      acc240(80)=Qspl5*acc240(77)
      acc240(81)=Qspl6*acc240(76)
      acc240(82)=Qspk7*acc240(75)
      acc240(83)=Qspvak2k7*acc240(43)
      acc240(84)=Qspval5k2*acc240(28)
      acc240(85)=Qspval6k2*acc240(60)
      acc240(86)=Qspval6l5*acc240(45)
      acc240(87)=Qspval6k7*acc240(37)
      acc240(80)=-acc240(83)-acc240(82)+acc240(80)+acc240(81)-acc240(84)-acc240&
      &(85)+acc240(86)+acc240(87)
      acc240(81)=acc240(80)+acc240(35)
      acc240(82)=Qspk4+Qspk3
      acc240(81)=acc240(81)*acc240(82)
      acc240(83)=Qspl5*acc240(71)
      acc240(84)=Qspl6*acc240(66)
      acc240(85)=Qspk7*acc240(68)
      acc240(86)=Qspvak2k7*acc240(56)
      acc240(87)=Qspval5k2*acc240(73)
      acc240(88)=Qspval6k2*acc240(74)
      acc240(89)=Qspval6l5*acc240(72)
      acc240(90)=Qspval6k7*acc240(69)
      acc240(83)=acc240(90)+acc240(89)+acc240(88)+acc240(87)+acc240(86)+acc240(&
      &85)+acc240(84)+acc240(51)+acc240(83)
      acc240(83)=Qspvak4k3*acc240(83)
      acc240(84)=Qspk7-Qspl6-Qspl5
      acc240(84)=acc240(27)*acc240(84)
      acc240(85)=Qspval5l6*acc240(63)
      acc240(86)=Qspval5k7*acc240(62)
      acc240(87)=Qspvak2k7*acc240(44)
      acc240(88)=Qspval5k2*acc240(48)
      acc240(89)=Qspval6k2*acc240(54)
      acc240(90)=Qspval6l5*acc240(31)
      acc240(91)=Qspval6k7*acc240(47)
      acc240(84)=acc240(91)+acc240(90)+acc240(89)+acc240(88)+acc240(87)+acc240(&
      &85)+acc240(86)+acc240(84)
      acc240(84)=Qspvak1k3*acc240(84)
      acc240(82)=Qspk2-acc240(82)
      acc240(82)=acc240(20)*acc240(82)
      acc240(85)=Qspvak4k3*acc240(70)
      acc240(86)=Qspvak1k3*acc240(32)
      acc240(87)=Qspvak1k2*acc240(12)
      acc240(88)=Qspvak4k2*acc240(39)
      acc240(80)=acc240(88)+acc240(87)+acc240(86)+acc240(85)+acc240(1)+acc240(8&
      &2)-acc240(80)
      acc240(80)=Qspk2*acc240(80)
      acc240(82)=acc240(67)*Qspvak7k3
      acc240(85)=acc240(65)*Qspval6k3
      acc240(86)=acc240(64)*Qspvak4l6
      acc240(87)=acc240(59)*Qspvak7k2
      acc240(88)=acc240(53)*Qspval5k3
      acc240(89)=acc240(49)*Qspvak4l5
      acc240(90)=acc240(41)*Qspvak4k7
      acc240(91)=acc240(26)*Qspvak1k7
      acc240(92)=acc240(18)*Qspvak1l5
      acc240(93)=acc240(17)*Qspvak2k3
      acc240(94)=acc240(11)*QspQ
      acc240(95)=acc240(7)*Qspvak1l6
      acc240(96)=Qspval5l6*acc240(29)
      acc240(97)=Qspval5k7*acc240(5)
      acc240(98)=Qspl5*acc240(3)
      acc240(99)=Qspl6*acc240(15)
      acc240(100)=Qspk7*acc240(42)
      acc240(101)=Qspvak2k7*acc240(46)
      acc240(102)=Qspval5k2*acc240(23)
      acc240(103)=Qspval6k2*acc240(38)
      acc240(104)=Qspval6l5*acc240(36)
      acc240(105)=Qspval6k7*acc240(6)
      brack=acc240(14)+acc240(78)+acc240(79)+acc240(80)+acc240(81)+acc240(82)+a&
      &cc240(83)+acc240(84)+acc240(85)+acc240(86)+acc240(87)+acc240(88)+acc240(&
      &89)+acc240(90)+acc240(91)+acc240(92)+acc240(93)+acc240(94)+acc240(95)+ac&
      &c240(96)+acc240(97)+acc240(98)+acc240(99)+acc240(100)+acc240(101)+acc240&
      &(102)+acc240(103)+acc240(104)+acc240(105)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd240h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d240
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d240 = 0.0_ki
      d240 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d240, ki), aimag(d240), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d240h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd240h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d240
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d240 = 0.0_ki
      d240 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d240, ki), aimag(d240), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d240h0l1
