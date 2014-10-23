module     p0_dbaru_epnebbbarg_d297h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d297h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd297h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc297(116)
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2k7
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      acc297(1)=abb297(10)
      acc297(2)=abb297(11)
      acc297(3)=abb297(12)
      acc297(4)=abb297(13)
      acc297(5)=abb297(14)
      acc297(6)=abb297(15)
      acc297(7)=abb297(16)
      acc297(8)=abb297(17)
      acc297(9)=abb297(18)
      acc297(10)=abb297(19)
      acc297(11)=abb297(20)
      acc297(12)=abb297(21)
      acc297(13)=abb297(22)
      acc297(14)=abb297(23)
      acc297(15)=abb297(24)
      acc297(16)=abb297(25)
      acc297(17)=abb297(26)
      acc297(18)=abb297(27)
      acc297(19)=abb297(28)
      acc297(20)=abb297(29)
      acc297(21)=abb297(30)
      acc297(22)=abb297(31)
      acc297(23)=abb297(32)
      acc297(24)=abb297(33)
      acc297(25)=abb297(34)
      acc297(26)=abb297(35)
      acc297(27)=abb297(36)
      acc297(28)=abb297(37)
      acc297(29)=abb297(38)
      acc297(30)=abb297(39)
      acc297(31)=abb297(40)
      acc297(32)=abb297(41)
      acc297(33)=abb297(42)
      acc297(34)=abb297(43)
      acc297(35)=abb297(44)
      acc297(36)=abb297(45)
      acc297(37)=abb297(46)
      acc297(38)=abb297(47)
      acc297(39)=abb297(48)
      acc297(40)=abb297(49)
      acc297(41)=abb297(50)
      acc297(42)=abb297(51)
      acc297(43)=abb297(52)
      acc297(44)=abb297(53)
      acc297(45)=abb297(54)
      acc297(46)=abb297(55)
      acc297(47)=abb297(56)
      acc297(48)=abb297(57)
      acc297(49)=abb297(58)
      acc297(50)=abb297(59)
      acc297(51)=abb297(60)
      acc297(52)=abb297(61)
      acc297(53)=abb297(62)
      acc297(54)=abb297(63)
      acc297(55)=abb297(64)
      acc297(56)=abb297(65)
      acc297(57)=abb297(66)
      acc297(58)=abb297(67)
      acc297(59)=abb297(68)
      acc297(60)=abb297(69)
      acc297(61)=abb297(70)
      acc297(62)=abb297(71)
      acc297(63)=abb297(73)
      acc297(64)=abb297(74)
      acc297(65)=abb297(75)
      acc297(66)=abb297(79)
      acc297(67)=abb297(81)
      acc297(68)=abb297(82)
      acc297(69)=abb297(83)
      acc297(70)=abb297(84)
      acc297(71)=abb297(86)
      acc297(72)=abb297(88)
      acc297(73)=abb297(94)
      acc297(74)=abb297(100)
      acc297(75)=abb297(104)
      acc297(76)=abb297(107)
      acc297(77)=abb297(111)
      acc297(78)=abb297(113)
      acc297(79)=abb297(115)
      acc297(80)=abb297(117)
      acc297(81)=abb297(118)
      acc297(82)=abb297(119)
      acc297(83)=abb297(121)
      acc297(84)=abb297(122)
      acc297(85)=abb297(123)
      acc297(86)=abb297(127)
      acc297(87)=abb297(132)
      acc297(88)=abb297(133)
      acc297(89)=abb297(140)
      acc297(90)=abb297(142)
      acc297(91)=abb297(155)
      acc297(92)=abb297(159)
      acc297(93)=abb297(162)
      acc297(94)=abb297(164)
      acc297(95)=abb297(165)
      acc297(96)=abb297(168)
      acc297(97)=abb297(175)
      acc297(98)=abb297(176)
      acc297(99)=abb297(183)
      acc297(100)=abb297(187)
      acc297(101)=abb297(206)
      acc297(102)=abb297(215)
      acc297(103)=abb297(231)
      acc297(104)=Qspval6k1*acc297(84)
      acc297(105)=Qspval6l5*acc297(71)
      acc297(106)=Qspval6k3*acc297(100)
      acc297(107)=Qspvak7k2*acc297(77)
      acc297(108)=Qspvak4k2*acc297(9)
      acc297(109)=Qspval6k2*acc297(67)
      acc297(110)=Qspvak1k2*acc297(26)
      acc297(111)=Qspvak4k2*acc297(89)
      acc297(111)=acc297(62)+acc297(111)
      acc297(111)=QspQ*acc297(111)
      acc297(112)=Qspvak4k2*acc297(59)
      acc297(113)=acc297(94)-acc297(112)
      acc297(113)=Qspl6*acc297(113)
      acc297(112)=acc297(87)-acc297(112)
      acc297(112)=Qspk7*acc297(112)
      acc297(114)=Qspvak4k2*acc297(82)
      acc297(114)=acc297(68)+acc297(114)
      acc297(114)=Qspval6k7*acc297(114)
      acc297(115)=Qspvak4k2*acc297(69)
      acc297(115)=acc297(90)+acc297(115)
      acc297(115)=Qspk2*acc297(115)
      acc297(104)=acc297(115)+acc297(114)+acc297(112)+acc297(113)+acc297(111)+a&
      &cc297(110)+acc297(109)+acc297(108)+acc297(107)+acc297(106)+acc297(105)+a&
      &cc297(12)+acc297(104)
      acc297(104)=Qspk2*acc297(104)
      acc297(105)=-Qspk2-Qspk7-Qspl6-QspQ
      acc297(105)=acc297(20)*acc297(105)
      acc297(106)=Qspvak7k2*acc297(45)
      acc297(107)=Qspval6k2*acc297(1)
      acc297(108)=Qspval6l5*acc297(43)
      acc297(108)=acc297(57)+acc297(108)
      acc297(108)=Qspvak1k2*acc297(108)
      acc297(109)=Qspval6k7*acc297(46)
      acc297(105)=acc297(109)+acc297(108)+acc297(107)+acc297(18)+acc297(106)+ac&
      &c297(105)
      acc297(105)=Qspvak4k3*acc297(105)
      acc297(106)=Qspval6k3*acc297(36)
      acc297(107)=Qspval6k2*acc297(50)
      acc297(106)=acc297(107)+acc297(11)+acc297(106)
      acc297(106)=Qspvak1k2*acc297(106)
      acc297(107)=Qspvak4k2*acc297(5)
      acc297(108)=Qspval6k2*acc297(41)
      acc297(107)=acc297(108)+acc297(16)+acc297(107)
      acc297(107)=QspQ*acc297(107)
      acc297(108)=Qspvak4k2*acc297(13)
      acc297(109)=Qspval6k2*acc297(19)
      acc297(108)=acc297(108)-acc297(109)
      acc297(109)=Qspvak1k2*acc297(24)
      acc297(109)=acc297(109)+acc297(7)-acc297(108)
      acc297(109)=Qspl6*acc297(109)
      acc297(108)=acc297(49)-acc297(108)
      acc297(108)=Qspk7*acc297(108)
      acc297(110)=Qspvak4k2*acc297(47)
      acc297(111)=Qspval6k2*acc297(39)
      acc297(110)=acc297(111)+acc297(23)+acc297(110)
      acc297(110)=Qspk2*acc297(110)
      acc297(111)=Qspval6k1*acc297(42)
      acc297(112)=Qspval6l5*acc297(37)
      acc297(113)=Qspval6k3*acc297(38)
      acc297(114)=Qspvak7k2*acc297(15)
      acc297(115)=Qspval6k2*acc297(14)
      acc297(116)=Qspvak1k2*acc297(29)
      acc297(116)=acc297(27)+acc297(116)
      acc297(116)=Qspval6k7*acc297(116)
      acc297(105)=acc297(105)+acc297(110)+acc297(116)+acc297(108)+acc297(109)+a&
      &cc297(107)+acc297(106)+acc297(115)+acc297(114)+acc297(113)+acc297(112)+a&
      &cc297(4)+acc297(111)
      acc297(105)=Qspvak2k7*acc297(105)
      acc297(106)=Qspval6k2*acc297(35)
      acc297(107)=Qspvak1k2*acc297(64)
      acc297(108)=QspQ*acc297(74)
      acc297(109)=Qspk7*acc297(25)
      acc297(110)=Qspval6k7*acc297(97)
      acc297(111)=Qspk2*acc297(52)
      acc297(106)=acc297(111)+acc297(110)+acc297(109)+acc297(108)+acc297(107)+a&
      &cc297(22)+acc297(106)
      acc297(106)=Qspk2*acc297(106)
      acc297(107)=-Qspk7+Qspl6
      acc297(107)=acc297(91)*acc297(107)
      acc297(108)=Qspvak7k2*acc297(102)
      acc297(109)=QspQ*acc297(101)
      acc297(107)=acc297(109)+acc297(75)+acc297(108)+acc297(107)
      acc297(107)=Qspval6k7*acc297(107)
      acc297(108)=Qspvak7k2*acc297(33)
      acc297(109)=Qspval6k2*acc297(2)
      acc297(110)=Qspval6l5*acc297(55)
      acc297(110)=acc297(61)+acc297(110)
      acc297(110)=Qspvak1k2*acc297(110)
      acc297(111)=QspQ*acc297(21)
      acc297(112)=Qspl6*acc297(85)
      acc297(113)=Qspk7*acc297(83)
      acc297(106)=acc297(106)+acc297(107)+acc297(113)+acc297(112)+acc297(111)+a&
      &cc297(110)+acc297(109)+acc297(10)+acc297(108)
      acc297(106)=Qspvak4k3*acc297(106)
      acc297(107)=Qspval6k3*acc297(80)
      acc297(108)=Qspvak7k2*acc297(28)
      acc297(109)=Qspvak4k2*acc297(66)
      acc297(110)=Qspval6k2*acc297(65)
      acc297(111)=Qspvak1k2*acc297(31)
      acc297(112)=QspQ*acc297(92)
      acc297(107)=acc297(112)+acc297(111)+acc297(110)+acc297(109)+acc297(108)+a&
      &cc297(34)+acc297(107)
      acc297(107)=QspQ*acc297(107)
      acc297(108)=Qspvak7k2*acc297(3)
      acc297(109)=Qspval6k2*acc297(88)
      acc297(110)=Qspvak1k2*acc297(53)
      acc297(111)=Qspvak4k2*acc297(44)
      acc297(111)=acc297(40)+acc297(111)
      acc297(111)=QspQ*acc297(111)
      acc297(112)=Qspvak4k2*acc297(93)
      acc297(113)=acc297(73)-acc297(112)
      acc297(113)=Qspl6*acc297(113)
      acc297(112)=acc297(78)-acc297(112)
      acc297(112)=Qspk7*acc297(112)
      acc297(108)=acc297(112)+acc297(113)+acc297(111)+acc297(110)+acc297(109)+a&
      &cc297(17)+acc297(108)
      acc297(108)=Qspval6k7*acc297(108)
      acc297(109)=Qspval6k3*acc297(103)
      acc297(110)=Qspvak7k2*acc297(58)
      acc297(111)=Qspvak4k2*acc297(79)
      acc297(112)=Qspval6k2*acc297(70)
      acc297(109)=acc297(109)+acc297(110)+acc297(111)-acc297(112)
      acc297(110)=Qspvak1k2*acc297(32)
      acc297(111)=QspQ*acc297(81)
      acc297(112)=Qspl6*acc297(56)
      acc297(113)=Qspk7*acc297(99)
      acc297(110)=acc297(113)+acc297(112)+acc297(111)+acc297(110)+acc297(95)+ac&
      &c297(109)
      acc297(110)=Qspk7*acc297(110)
      acc297(111)=Qspvak1k2*acc297(48)
      acc297(112)=QspQ*acc297(86)
      acc297(113)=Qspl6*acc297(96)
      acc297(109)=acc297(113)+acc297(112)+acc297(111)+acc297(51)+acc297(109)
      acc297(109)=Qspl6*acc297(109)
      acc297(111)=Qspval6k3*acc297(54)
      acc297(112)=Qspval6k2*acc297(60)
      acc297(111)=acc297(112)+acc297(30)+acc297(111)
      acc297(111)=Qspvak1k2*acc297(111)
      acc297(112)=Qspval6k1*acc297(76)
      acc297(113)=Qspval6l5*acc297(72)
      acc297(114)=Qspval6k3*acc297(98)
      acc297(115)=Qspvak7k2*acc297(8)
      acc297(116)=Qspval6k2*acc297(63)
      brack=acc297(6)+acc297(104)+acc297(105)+acc297(106)+acc297(107)+acc297(10&
      &8)+acc297(109)+acc297(110)+acc297(111)+acc297(112)+acc297(113)+acc297(11&
      &4)+acc297(115)+acc297(116)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd297h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d297
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d297 = 0.0_ki
      d297 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d297, ki), aimag(d297), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d297h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd297h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d297
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d297 = 0.0_ki
      d297 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d297, ki), aimag(d297), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d297h1l1
