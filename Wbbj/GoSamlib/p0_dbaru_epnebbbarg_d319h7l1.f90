module     p0_dbaru_epnebbbarg_d319h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d319h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd319h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc319(105)
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: QspQ
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspl6 = dotproduct(Q,l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
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
      acc319(50)=abb319(61)
      acc319(51)=abb319(62)
      acc319(52)=abb319(63)
      acc319(53)=abb319(64)
      acc319(54)=abb319(65)
      acc319(55)=abb319(66)
      acc319(56)=abb319(67)
      acc319(57)=abb319(68)
      acc319(58)=abb319(69)
      acc319(59)=abb319(70)
      acc319(60)=abb319(72)
      acc319(61)=abb319(73)
      acc319(62)=abb319(74)
      acc319(63)=abb319(75)
      acc319(64)=abb319(78)
      acc319(65)=abb319(79)
      acc319(66)=abb319(82)
      acc319(67)=abb319(88)
      acc319(68)=abb319(93)
      acc319(69)=abb319(98)
      acc319(70)=abb319(104)
      acc319(71)=abb319(112)
      acc319(72)=abb319(123)
      acc319(73)=abb319(132)
      acc319(74)=abb319(140)
      acc319(75)=abb319(143)
      acc319(76)=abb319(146)
      acc319(77)=abb319(151)
      acc319(78)=abb319(160)
      acc319(79)=abb319(186)
      acc319(80)=abb319(206)
      acc319(81)=abb319(208)
      acc319(82)=abb319(256)
      acc319(83)=Qspl5+Qspk7
      acc319(84)=-acc319(7)*acc319(83)
      acc319(85)=Qspk3+Qspk4
      acc319(86)=acc319(44)*acc319(85)
      acc319(87)=acc319(2)*Qspvak4k2
      acc319(88)=acc319(3)*Qspvak1k2
      acc319(89)=acc319(10)*Qspl6
      acc319(90)=acc319(14)*Qspk2
      acc319(91)=acc319(21)*Qspvak2k7
      acc319(92)=acc319(31)*Qspval5l6
      acc319(93)=acc319(33)*Qspvak4k3
      acc319(94)=acc319(47)*Qspvak1l6
      acc319(95)=acc319(50)*Qspvak7l6
      acc319(96)=acc319(63)*Qspvak2k3
      acc319(97)=acc319(65)*Qspvak1k3
      acc319(98)=acc319(73)*Qspvak4l6
      acc319(84)=acc319(93)+acc319(90)+acc319(88)+acc319(87)+acc319(86)+acc319(&
      &84)+acc319(98)+acc319(97)+acc319(96)+acc319(95)+acc319(94)+acc319(92)+ac&
      &c319(91)+acc319(89)+acc319(6)
      acc319(84)=Qspvak7k2*acc319(84)
      acc319(86)=acc319(39)*acc319(85)
      acc319(87)=acc319(13)*Qspvak1k2
      acc319(88)=acc319(25)*Qspvak4k2
      acc319(89)=acc319(43)*Qspvak2l6
      acc319(90)=acc319(49)*Qspvak7k2
      acc319(91)=-acc319(53)*Qspvak2l5
      acc319(92)=acc319(61)*Qspk2
      acc319(93)=acc319(70)*Qspvak4k3
      acc319(94)=acc319(82)*Qspvak7l6
      acc319(86)=acc319(94)+acc319(93)+acc319(92)+acc319(91)+acc319(90)+acc319(&
      &89)+acc319(88)+acc319(24)+acc319(87)+acc319(86)
      acc319(86)=QspQ*acc319(86)
      acc319(87)=acc319(22)*Qspvak2l5
      acc319(88)=acc319(26)*Qspvak2l6
      acc319(89)=Qspvak2l6*Qspvak7k2
      acc319(90)=acc319(54)*acc319(89)
      acc319(91)=Qspvak2l5*Qspvak7k2
      acc319(92)=acc319(58)*acc319(91)
      acc319(93)=acc319(68)*Qspk2
      acc319(94)=acc319(76)*Qspvak7l6
      acc319(95)=acc319(77)*Qspk7
      acc319(96)=acc319(78)*Qspl6
      acc319(87)=acc319(96)+acc319(95)+acc319(94)+acc319(93)+acc319(92)+acc319(&
      &90)+acc319(27)+acc319(88)+acc319(87)
      acc319(87)=Qspvak4k3*acc319(87)
      acc319(88)=acc319(20)*Qspk2
      acc319(90)=acc319(32)*Qspvak7l6
      acc319(92)=acc319(40)*acc319(89)
      acc319(93)=acc319(42)*acc319(91)
      acc319(94)=acc319(57)*Qspvak2l6
      acc319(95)=acc319(60)*Qspvak2l5
      acc319(96)=acc319(69)*Qspk7
      acc319(97)=acc319(74)*Qspl6
      acc319(88)=acc319(97)+acc319(96)+acc319(95)+acc319(94)+acc319(93)+acc319(&
      &92)+acc319(90)+acc319(88)+acc319(1)
      acc319(88)=Qspvak4k2*acc319(88)
      acc319(90)=acc319(8)*Qspvak2l6
      acc319(92)=acc319(19)*acc319(89)
      acc319(93)=acc319(29)*Qspvak2l5
      acc319(94)=acc319(30)*Qspk7
      acc319(95)=acc319(35)*Qspl6
      acc319(96)=acc319(38)*acc319(91)
      acc319(97)=acc319(55)*Qspk2
      acc319(98)=acc319(59)*Qspvak7l6
      acc319(90)=acc319(98)+acc319(97)+acc319(96)+acc319(95)+acc319(94)+acc319(&
      &93)+acc319(92)+acc319(9)+acc319(90)
      acc319(90)=Qspvak1k2*acc319(90)
      acc319(92)=-acc319(36)*acc319(91)
      acc319(93)=acc319(37)*Qspvak2l6
      acc319(94)=-acc319(41)*acc319(89)
      acc319(95)=acc319(48)*Qspvak2l5
      acc319(92)=acc319(95)+acc319(94)+acc319(92)+acc319(93)
      acc319(93)=acc319(85)-Qspk2
      acc319(92)=acc319(93)*acc319(92)
      acc319(94)=-acc319(66)*Qspk2
      acc319(95)=-acc319(67)*Qspvak7l6
      acc319(96)=acc319(80)*Qspk7
      acc319(94)=acc319(95)+acc319(94)+acc319(96)+acc319(79)
      acc319(85)=acc319(85)*acc319(94)
      acc319(94)=acc319(11)*Qspvak7l6
      acc319(95)=acc319(34)*Qspk7
      acc319(96)=acc319(45)*Qspl5
      acc319(94)=acc319(96)+acc319(95)+acc319(28)+acc319(94)
      acc319(94)=Qspk2*acc319(94)
      acc319(83)=-acc319(5)*acc319(83)
      acc319(83)=acc319(4)+acc319(83)
      acc319(83)=Qspvak7l6*acc319(83)
      acc319(93)=acc319(81)*acc319(93)
      acc319(93)=acc319(72)+acc319(93)
      acc319(93)=Qspl6*acc319(93)
      acc319(95)=acc319(15)*Qspvak2l5
      acc319(96)=acc319(16)*Qspvak2k7
      acc319(89)=acc319(17)*acc319(89)
      acc319(97)=acc319(18)*Qspvak4l6
      acc319(98)=acc319(23)*Qspvak2l6
      acc319(99)=acc319(46)*Qspvak2k3
      acc319(91)=acc319(51)*acc319(91)
      acc319(100)=acc319(52)*Qspk2**2
      acc319(101)=acc319(56)*Qspvak1l6
      acc319(102)=acc319(62)*Qspval5l6
      acc319(103)=acc319(64)*Qspvak1k3
      acc319(104)=acc319(71)*Qspl5
      acc319(105)=acc319(75)*Qspk7
      brack=acc319(12)+acc319(83)+acc319(84)+acc319(85)+acc319(86)+acc319(87)+a&
      &cc319(88)+acc319(89)+acc319(90)+acc319(91)+acc319(92)+acc319(93)+acc319(&
      &94)+acc319(95)+acc319(96)+acc319(97)+acc319(98)+acc319(99)+acc319(100)+a&
      &cc319(101)+acc319(102)+acc319(103)+acc319(104)+acc319(105)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd319h7
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
   & bind(c, name="p0_dbaru_epnebbbarg_d319h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd319h7
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
end module p0_dbaru_epnebbbarg_d319h7l1
