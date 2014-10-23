module     p0_dbaru_epnebbbarg_d319h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d319h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd319h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc319(99)
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: QspQ
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspl6 = dotproduct(Q,l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      QspQ = dotproduct(Q,Q)
      acc319(1)=abb319(12)
      acc319(2)=abb319(13)
      acc319(3)=abb319(14)
      acc319(4)=abb319(15)
      acc319(5)=abb319(16)
      acc319(6)=abb319(17)
      acc319(7)=abb319(18)
      acc319(8)=abb319(19)
      acc319(9)=abb319(20)
      acc319(10)=abb319(21)
      acc319(11)=abb319(22)
      acc319(12)=abb319(23)
      acc319(13)=abb319(24)
      acc319(14)=abb319(25)
      acc319(15)=abb319(26)
      acc319(16)=abb319(27)
      acc319(17)=abb319(28)
      acc319(18)=abb319(29)
      acc319(19)=abb319(30)
      acc319(20)=abb319(31)
      acc319(21)=abb319(32)
      acc319(22)=abb319(33)
      acc319(23)=abb319(34)
      acc319(24)=abb319(35)
      acc319(25)=abb319(36)
      acc319(26)=abb319(37)
      acc319(27)=abb319(38)
      acc319(28)=abb319(39)
      acc319(29)=abb319(40)
      acc319(30)=abb319(41)
      acc319(31)=abb319(42)
      acc319(32)=abb319(43)
      acc319(33)=abb319(44)
      acc319(34)=abb319(45)
      acc319(35)=abb319(46)
      acc319(36)=abb319(47)
      acc319(37)=abb319(48)
      acc319(38)=abb319(49)
      acc319(39)=abb319(50)
      acc319(40)=abb319(51)
      acc319(41)=abb319(52)
      acc319(42)=abb319(53)
      acc319(43)=abb319(54)
      acc319(44)=abb319(55)
      acc319(45)=abb319(56)
      acc319(46)=abb319(57)
      acc319(47)=abb319(58)
      acc319(48)=abb319(59)
      acc319(49)=abb319(60)
      acc319(50)=abb319(63)
      acc319(51)=abb319(65)
      acc319(52)=abb319(67)
      acc319(53)=abb319(68)
      acc319(54)=abb319(70)
      acc319(55)=abb319(71)
      acc319(56)=abb319(72)
      acc319(57)=abb319(73)
      acc319(58)=abb319(76)
      acc319(59)=abb319(78)
      acc319(60)=abb319(80)
      acc319(61)=abb319(81)
      acc319(62)=abb319(85)
      acc319(63)=abb319(99)
      acc319(64)=abb319(112)
      acc319(65)=abb319(116)
      acc319(66)=abb319(118)
      acc319(67)=abb319(119)
      acc319(68)=abb319(128)
      acc319(69)=abb319(130)
      acc319(70)=abb319(144)
      acc319(71)=abb319(147)
      acc319(72)=abb319(164)
      acc319(73)=abb319(165)
      acc319(74)=abb319(182)
      acc319(75)=abb319(190)
      acc319(76)=abb319(201)
      acc319(77)=abb319(203)
      acc319(78)=abb319(204)
      acc319(79)=Qspk3+Qspk4
      acc319(80)=-acc319(12)*acc319(79)
      acc319(81)=Qspl5+Qspk7
      acc319(82)=-acc319(32)*acc319(81)
      acc319(83)=acc319(2)*Qspvak4k2
      acc319(84)=acc319(11)*Qspk2
      acc319(85)=acc319(13)*Qspvak1k3
      acc319(86)=acc319(16)*Qspvak4k3
      acc319(87)=acc319(19)*Qspvak1k2
      acc319(88)=acc319(24)*Qspl6
      acc319(89)=acc319(35)*Qspvak7k2
      acc319(90)=acc319(40)*Qspval6k7
      acc319(91)=acc319(43)*Qspval6k3
      acc319(92)=acc319(74)*Qspval6l5
      acc319(80)=acc319(87)+acc319(86)+acc319(84)+acc319(83)+acc319(82)+acc319(&
      &80)+acc319(92)+acc319(91)+acc319(90)+acc319(89)+acc319(88)+acc319(17)+ac&
      &c319(85)
      acc319(80)=Qspvak2k7*acc319(80)
      acc319(82)=acc319(58)*acc319(79)
      acc319(83)=acc319(9)*Qspvak4k2
      acc319(84)=acc319(28)*Qspvak1k2
      acc319(85)=acc319(33)*Qspvak2k7
      acc319(86)=acc319(34)*Qspval6k2
      acc319(87)=acc319(52)*Qspval5k2
      acc319(88)=acc319(53)*Qspvak4k3
      acc319(89)=acc319(60)*Qspk2
      acc319(90)=acc319(72)*Qspval6k7
      acc319(82)=acc319(90)+acc319(89)+acc319(88)+acc319(87)+acc319(41)+acc319(&
      &86)+acc319(85)+acc319(84)+acc319(83)+acc319(82)
      acc319(82)=QspQ*acc319(82)
      acc319(83)=Qspval5k2*Qspvak2k7
      acc319(84)=-acc319(23)*acc319(83)
      acc319(85)=Qspval6k2*Qspvak2k7
      acc319(86)=acc319(39)*acc319(85)
      acc319(87)=acc319(59)*Qspk2
      acc319(88)=acc319(65)*Qspl6
      acc319(89)=acc319(66)*Qspk7
      acc319(90)=acc319(70)*Qspval6k7
      acc319(91)=acc319(71)*Qspval6k2
      acc319(92)=acc319(73)*Qspval5k2
      acc319(84)=acc319(92)+acc319(91)+acc319(90)+acc319(89)+acc319(88)+acc319(&
      &87)+acc319(86)+acc319(36)+acc319(84)
      acc319(84)=Qspvak4k3*acc319(84)
      acc319(86)=acc319(3)*acc319(83)
      acc319(87)=acc319(5)*acc319(85)
      acc319(88)=acc319(7)*Qspk2
      acc319(89)=acc319(22)*Qspval5k2
      acc319(90)=acc319(26)*Qspval6k2
      acc319(91)=acc319(27)*Qspval6k7
      acc319(92)=acc319(29)*Qspk7
      acc319(93)=acc319(37)*Qspl6
      acc319(86)=acc319(93)+acc319(92)+acc319(91)+acc319(90)+acc319(89)+acc319(&
      &8)+acc319(88)+acc319(87)+acc319(86)
      acc319(86)=Qspvak4k2*acc319(86)
      acc319(87)=acc319(38)*acc319(85)
      acc319(88)=acc319(42)*Qspk2
      acc319(89)=acc319(48)*Qspval6k2
      acc319(90)=acc319(50)*Qspk7
      acc319(91)=acc319(51)*acc319(83)
      acc319(92)=acc319(54)*Qspl6
      acc319(93)=acc319(55)*Qspval6k7
      acc319(94)=acc319(56)*Qspval5k2
      acc319(87)=acc319(94)+acc319(93)+acc319(92)+acc319(91)+acc319(90)+acc319(&
      &89)+acc319(88)+acc319(87)+acc319(14)
      acc319(87)=Qspvak1k2*acc319(87)
      acc319(88)=-acc319(18)*acc319(83)
      acc319(89)=-acc319(21)*Qspval6k2
      acc319(90)=acc319(25)*Qspval5k2
      acc319(91)=acc319(45)*acc319(85)
      acc319(88)=acc319(91)+acc319(90)+acc319(88)+acc319(89)
      acc319(89)=acc319(79)-Qspk2
      acc319(88)=acc319(89)*acc319(88)
      acc319(90)=acc319(61)*Qspk2
      acc319(91)=-acc319(68)*Qspval6k7
      acc319(92)=acc319(78)*Qspk7
      acc319(90)=acc319(91)+acc319(90)+acc319(92)+acc319(75)
      acc319(79)=acc319(79)*acc319(90)
      acc319(90)=acc319(4)*Qspk7
      acc319(91)=acc319(30)*Qspl5
      acc319(92)=acc319(67)*Qspval6k7
      acc319(90)=acc319(92)+acc319(91)+acc319(90)+acc319(1)
      acc319(90)=Qspk2*acc319(90)
      acc319(81)=-acc319(64)*acc319(81)
      acc319(81)=acc319(63)+acc319(81)
      acc319(81)=Qspval6k7*acc319(81)
      acc319(89)=acc319(77)*acc319(89)
      acc319(89)=acc319(31)+acc319(89)
      acc319(89)=Qspl6*acc319(89)
      acc319(91)=acc319(6)*Qspvak1k3
      acc319(92)=acc319(10)*Qspval5k2
      acc319(93)=acc319(20)*Qspval6k2
      acc319(85)=acc319(44)*acc319(85)
      acc319(94)=acc319(46)*Qspvak7k2
      acc319(83)=acc319(47)*acc319(83)
      acc319(95)=acc319(49)*Qspk2**2
      acc319(96)=acc319(57)*Qspl5
      acc319(97)=acc319(62)*Qspk7
      acc319(98)=acc319(69)*Qspval6k3
      acc319(99)=acc319(76)*Qspval6l5
      brack=acc319(15)+acc319(79)+acc319(80)+acc319(81)+acc319(82)+acc319(83)+a&
      &cc319(84)+acc319(85)+acc319(86)+acc319(87)+acc319(88)+acc319(89)+acc319(&
      &90)+acc319(91)+acc319(92)+acc319(93)+acc319(94)+acc319(95)+acc319(96)+ac&
      &c319(97)+acc319(98)+acc319(99)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd319h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d319
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d319 = 0.0_ki
      d319 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d319, ki), aimag(d319), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d319h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd319h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d319
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d319 = 0.0_ki
      d319 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d319, ki), aimag(d319), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d319h0l1
