module     p0_dbaru_epnebbbarg_d293h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d293h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd293h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc293(105)
      complex(ki) :: Qspk1
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k7
      Qspk1 = dotproduct(Q,k1)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      acc293(1)=abb293(10)
      acc293(2)=abb293(11)
      acc293(3)=abb293(12)
      acc293(4)=abb293(13)
      acc293(5)=abb293(14)
      acc293(6)=abb293(15)
      acc293(7)=abb293(16)
      acc293(8)=abb293(17)
      acc293(9)=abb293(18)
      acc293(10)=abb293(19)
      acc293(11)=abb293(20)
      acc293(12)=abb293(21)
      acc293(13)=abb293(22)
      acc293(14)=abb293(23)
      acc293(15)=abb293(24)
      acc293(16)=abb293(25)
      acc293(17)=abb293(26)
      acc293(18)=abb293(27)
      acc293(19)=abb293(28)
      acc293(20)=abb293(29)
      acc293(21)=abb293(30)
      acc293(22)=abb293(31)
      acc293(23)=abb293(32)
      acc293(24)=abb293(33)
      acc293(25)=abb293(34)
      acc293(26)=abb293(35)
      acc293(27)=abb293(36)
      acc293(28)=abb293(37)
      acc293(29)=abb293(38)
      acc293(30)=abb293(39)
      acc293(31)=abb293(40)
      acc293(32)=abb293(41)
      acc293(33)=abb293(42)
      acc293(34)=abb293(43)
      acc293(35)=abb293(44)
      acc293(36)=abb293(46)
      acc293(37)=abb293(48)
      acc293(38)=abb293(49)
      acc293(39)=abb293(50)
      acc293(40)=abb293(53)
      acc293(41)=abb293(54)
      acc293(42)=abb293(55)
      acc293(43)=abb293(57)
      acc293(44)=abb293(58)
      acc293(45)=abb293(59)
      acc293(46)=abb293(60)
      acc293(47)=abb293(61)
      acc293(48)=abb293(62)
      acc293(49)=abb293(63)
      acc293(50)=abb293(64)
      acc293(51)=abb293(66)
      acc293(52)=abb293(67)
      acc293(53)=abb293(68)
      acc293(54)=abb293(69)
      acc293(55)=abb293(70)
      acc293(56)=abb293(71)
      acc293(57)=abb293(72)
      acc293(58)=abb293(73)
      acc293(59)=abb293(75)
      acc293(60)=abb293(76)
      acc293(61)=abb293(77)
      acc293(62)=abb293(78)
      acc293(63)=abb293(79)
      acc293(64)=abb293(80)
      acc293(65)=abb293(81)
      acc293(66)=abb293(82)
      acc293(67)=abb293(83)
      acc293(68)=abb293(84)
      acc293(69)=abb293(85)
      acc293(70)=abb293(86)
      acc293(71)=abb293(88)
      acc293(72)=abb293(89)
      acc293(73)=abb293(90)
      acc293(74)=abb293(91)
      acc293(75)=abb293(92)
      acc293(76)=abb293(93)
      acc293(77)=abb293(94)
      acc293(78)=abb293(95)
      acc293(79)=abb293(96)
      acc293(80)=abb293(99)
      acc293(81)=abb293(100)
      acc293(82)=abb293(102)
      acc293(83)=abb293(104)
      acc293(84)=abb293(106)
      acc293(85)=abb293(108)
      acc293(86)=abb293(110)
      acc293(87)=abb293(111)
      acc293(88)=abb293(112)
      acc293(89)=abb293(114)
      acc293(90)=Qspk1+Qspl6
      acc293(91)=-acc293(66)*acc293(90)
      acc293(92)=Qspvak2l6*acc293(38)
      acc293(93)=Qspvak4l6*acc293(81)
      acc293(94)=Qspvak7l6*acc293(77)
      acc293(95)=Qspvak4k3*acc293(84)
      acc293(96)=Qspval5l6*acc293(76)
      acc293(97)=Qspvak1k3*acc293(83)
      acc293(98)=Qspvak1k2*acc293(9)
      acc293(99)=Qspvak1l6*acc293(53)
      acc293(91)=acc293(99)+acc293(98)+acc293(97)+acc293(96)+acc293(95)+acc293(&
      &94)+acc293(93)+acc293(39)+acc293(92)+acc293(91)
      acc293(91)=Qspval5k2*acc293(91)
      acc293(92)=Qspl5+Qspk7
      acc293(93)=-acc293(58)*acc293(92)
      acc293(94)=Qspval5k1*acc293(51)
      acc293(95)=Qspval5k3*acc293(27)
      acc293(96)=QspQ*acc293(56)
      acc293(97)=Qspk2*acc293(82)
      acc293(93)=acc293(97)+acc293(96)+acc293(95)+acc293(36)+acc293(94)+acc293(&
      &93)
      acc293(93)=Qspvak1l6*acc293(93)
      acc293(94)=acc293(88)*acc293(92)
      acc293(95)=QspQ*acc293(69)
      acc293(96)=Qspk2*acc293(89)
      acc293(97)=-Qspval5l6*acc293(27)
      acc293(94)=acc293(97)+acc293(96)+acc293(95)+acc293(54)+acc293(94)
      acc293(94)=Qspvak1k3*acc293(94)
      acc293(95)=Qspvak4k3*acc293(22)
      acc293(96)=Qspvak4k3*acc293(34)
      acc293(96)=acc293(32)+acc293(96)
      acc293(96)=Qspval5l6*acc293(96)
      acc293(95)=acc293(96)+acc293(2)+acc293(95)
      acc293(95)=Qspvak1k2*acc293(95)
      acc293(96)=acc293(35)*acc293(92)
      acc293(97)=Qspval6k2*acc293(60)
      acc293(98)=Qspval5k1*acc293(79)
      acc293(99)=Qspval5k3*acc293(23)
      acc293(100)=Qspk1*acc293(45)
      acc293(101)=QspQ*acc293(33)
      acc293(102)=Qspk2*acc293(55)
      acc293(103)=Qspk1*acc293(67)
      acc293(103)=acc293(62)+acc293(103)
      acc293(103)=Qspval5l6*acc293(103)
      acc293(104)=Qspvak4k2*acc293(7)
      acc293(105)=Qspvak7k2*acc293(59)
      acc293(91)=acc293(105)+acc293(91)+acc293(93)+acc293(95)+acc293(94)+acc293&
      &(104)+acc293(103)+acc293(102)+acc293(101)+acc293(100)+acc293(99)+acc293(&
      &98)+acc293(8)+acc293(97)+acc293(96)
      acc293(91)=Qspvak7k2*acc293(91)
      acc293(90)=acc293(71)*acc293(90)
      acc293(93)=Qspvak2l6*acc293(30)
      acc293(94)=Qspvak4l6*acc293(80)
      acc293(95)=Qspvak7l6*acc293(75)
      acc293(96)=Qspvak4k3*acc293(78)
      acc293(97)=Qspval5l6*acc293(74)
      acc293(98)=Qspvak1k3*acc293(72)
      acc293(99)=Qspvak1k2*acc293(3)
      acc293(100)=Qspvak1l6*acc293(40)
      acc293(90)=acc293(100)+acc293(99)+acc293(98)+acc293(97)+acc293(96)+acc293&
      &(95)+acc293(94)+acc293(28)+acc293(93)+acc293(90)
      acc293(90)=Qspval5k2*acc293(90)
      acc293(93)=acc293(73)*acc293(92)
      acc293(94)=QspQ*acc293(5)
      acc293(95)=Qspk2*acc293(43)
      acc293(93)=acc293(95)+acc293(94)+acc293(93)
      acc293(93)=Qspvak4k2*acc293(93)
      acc293(94)=Qspval5k1*acc293(64)
      acc293(95)=-Qspval5k3*acc293(68)
      acc293(96)=Qspk7*acc293(48)
      acc293(97)=QspQ*acc293(46)
      acc293(98)=Qspk2*acc293(12)
      acc293(99)=Qspl5*acc293(57)
      acc293(93)=acc293(93)+acc293(99)+acc293(98)+acc293(97)+acc293(96)+acc293(&
      &95)+acc293(41)+acc293(94)
      acc293(93)=Qspvak1l6*acc293(93)
      acc293(94)=QspQ*acc293(52)
      acc293(95)=Qspk2*acc293(29)
      acc293(96)=Qspl5*acc293(86)
      acc293(94)=acc293(96)+acc293(94)-acc293(95)
      acc293(95)=Qspk7*acc293(86)
      acc293(96)=acc293(95)+acc293(94)
      acc293(96)=Qspvak4k2*acc293(96)
      acc293(97)=QspQ*acc293(70)
      acc293(98)=Qspk2*acc293(87)
      acc293(99)=Qspl5*acc293(85)
      acc293(100)=Qspval5l6*acc293(68)
      acc293(96)=acc293(96)+acc293(100)+acc293(99)+acc293(97)+acc293(98)
      acc293(96)=Qspvak1k3*acc293(96)
      acc293(94)=acc293(20)+acc293(95)-acc293(94)
      acc293(94)=Qspvak4k3*acc293(94)
      acc293(95)=-Qspl5+Qspk7
      acc293(95)=acc293(11)*acc293(95)
      acc293(97)=QspQ*acc293(4)
      acc293(98)=Qspk2*acc293(6)
      acc293(99)=Qspvak4k3*acc293(24)
      acc293(99)=acc293(31)+acc293(99)
      acc293(99)=Qspval5l6*acc293(99)
      acc293(94)=acc293(99)+acc293(94)+acc293(98)+acc293(97)+acc293(1)+acc293(9&
      &5)
      acc293(94)=Qspvak1k2*acc293(94)
      acc293(92)=acc293(26)*acc293(92)
      acc293(95)=QspQ*acc293(17)
      acc293(97)=Qspk2*acc293(19)
      acc293(92)=acc293(97)+acc293(95)+acc293(25)+acc293(92)
      acc293(92)=Qspvak4k2*acc293(92)
      acc293(95)=acc293(42)*Qspvak1l5
      acc293(97)=acc293(37)*Qspvak1k7
      acc293(95)=acc293(95)+acc293(97)
      acc293(95)=Qspvak4k3*acc293(95)
      acc293(97)=Qspval6k2*acc293(61)
      acc293(98)=Qspval5k1*acc293(16)
      acc293(99)=Qspval5k3*acc293(14)
      acc293(100)=Qspk1*acc293(44)
      acc293(101)=Qspk1*acc293(50)
      acc293(102)=acc293(18)-acc293(101)
      acc293(102)=Qspk7*acc293(102)
      acc293(103)=Qspk1*acc293(49)
      acc293(103)=acc293(13)+acc293(103)
      acc293(103)=QspQ*acc293(103)
      acc293(104)=Qspk1*acc293(47)
      acc293(104)=acc293(21)+acc293(104)
      acc293(104)=Qspk2*acc293(104)
      acc293(101)=acc293(15)+acc293(101)
      acc293(101)=Qspl5*acc293(101)
      acc293(105)=Qspk1*acc293(65)
      acc293(105)=acc293(63)+acc293(105)
      acc293(105)=Qspval5l6*acc293(105)
      brack=acc293(10)+acc293(90)+acc293(91)+acc293(92)+acc293(93)+acc293(94)+a&
      &cc293(95)+acc293(96)+acc293(97)+acc293(98)+acc293(99)+acc293(100)+acc293&
      &(101)+acc293(102)+acc293(103)+acc293(104)+acc293(105)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd293h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d293
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d293 = 0.0_ki
      d293 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d293, ki), aimag(d293), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d293h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd293h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d293
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d293 = 0.0_ki
      d293 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d293, ki), aimag(d293), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d293h6l1
