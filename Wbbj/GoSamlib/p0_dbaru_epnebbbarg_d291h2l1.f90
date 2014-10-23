module     p0_dbaru_epnebbbarg_d291h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d291h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd291h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc291(123)
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval6k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      acc291(1)=abb291(10)
      acc291(2)=abb291(11)
      acc291(3)=abb291(12)
      acc291(4)=abb291(13)
      acc291(5)=abb291(14)
      acc291(6)=abb291(15)
      acc291(7)=abb291(16)
      acc291(8)=abb291(17)
      acc291(9)=abb291(18)
      acc291(10)=abb291(19)
      acc291(11)=abb291(20)
      acc291(12)=abb291(21)
      acc291(13)=abb291(22)
      acc291(14)=abb291(23)
      acc291(15)=abb291(24)
      acc291(16)=abb291(25)
      acc291(17)=abb291(26)
      acc291(18)=abb291(27)
      acc291(19)=abb291(28)
      acc291(20)=abb291(29)
      acc291(21)=abb291(30)
      acc291(22)=abb291(31)
      acc291(23)=abb291(32)
      acc291(24)=abb291(33)
      acc291(25)=abb291(34)
      acc291(26)=abb291(35)
      acc291(27)=abb291(36)
      acc291(28)=abb291(37)
      acc291(29)=abb291(38)
      acc291(30)=abb291(39)
      acc291(31)=abb291(40)
      acc291(32)=abb291(41)
      acc291(33)=abb291(42)
      acc291(34)=abb291(43)
      acc291(35)=abb291(44)
      acc291(36)=abb291(45)
      acc291(37)=abb291(46)
      acc291(38)=abb291(47)
      acc291(39)=abb291(48)
      acc291(40)=abb291(49)
      acc291(41)=abb291(50)
      acc291(42)=abb291(51)
      acc291(43)=abb291(52)
      acc291(44)=abb291(53)
      acc291(45)=abb291(54)
      acc291(46)=abb291(55)
      acc291(47)=abb291(56)
      acc291(48)=abb291(57)
      acc291(49)=abb291(58)
      acc291(50)=abb291(59)
      acc291(51)=abb291(60)
      acc291(52)=abb291(61)
      acc291(53)=abb291(62)
      acc291(54)=abb291(63)
      acc291(55)=abb291(64)
      acc291(56)=abb291(65)
      acc291(57)=abb291(66)
      acc291(58)=abb291(67)
      acc291(59)=abb291(68)
      acc291(60)=abb291(69)
      acc291(61)=abb291(70)
      acc291(62)=abb291(71)
      acc291(63)=abb291(72)
      acc291(64)=abb291(73)
      acc291(65)=abb291(74)
      acc291(66)=abb291(75)
      acc291(67)=abb291(76)
      acc291(68)=abb291(78)
      acc291(69)=abb291(81)
      acc291(70)=abb291(82)
      acc291(71)=abb291(83)
      acc291(72)=abb291(84)
      acc291(73)=abb291(85)
      acc291(74)=abb291(86)
      acc291(75)=abb291(89)
      acc291(76)=abb291(92)
      acc291(77)=abb291(93)
      acc291(78)=abb291(97)
      acc291(79)=abb291(98)
      acc291(80)=abb291(103)
      acc291(81)=abb291(109)
      acc291(82)=abb291(134)
      acc291(83)=abb291(141)
      acc291(84)=abb291(156)
      acc291(85)=abb291(159)
      acc291(86)=abb291(162)
      acc291(87)=abb291(164)
      acc291(88)=abb291(167)
      acc291(89)=abb291(192)
      acc291(90)=abb291(208)
      acc291(91)=abb291(209)
      acc291(92)=abb291(214)
      acc291(93)=abb291(217)
      acc291(94)=abb291(235)
      acc291(95)=abb291(253)
      acc291(96)=abb291(265)
      acc291(97)=abb291(296)
      acc291(98)=abb291(305)
      acc291(99)=acc291(63)*Qspvak2k3
      acc291(99)=acc291(99)+acc291(43)
      acc291(99)=Qspvak1k2*acc291(99)
      acc291(100)=Qspk2*Qspvak2k7
      acc291(101)=acc291(10)*acc291(100)
      acc291(102)=acc291(14)*Qspval5k2
      acc291(103)=acc291(19)*Qspvak2l6
      acc291(104)=acc291(44)*Qspvak4k2
      acc291(105)=acc291(51)*Qspvak4k3
      acc291(106)=acc291(67)*Qspvak1l6
      acc291(107)=acc291(69)*Qspvak2l5
      acc291(108)=acc291(79)*Qspk2
      acc291(109)=acc291(87)*Qspl6
      acc291(110)=acc291(88)*Qspvak4l6
      acc291(111)=acc291(91)*Qspval5l6
      acc291(112)=acc291(94)*Qspval6k2
      acc291(99)=acc291(112)+acc291(111)+acc291(110)+acc291(109)+acc291(108)+ac&
      &c291(107)+acc291(106)+acc291(57)+acc291(105)+acc291(104)+acc291(103)+acc&
      &291(102)+acc291(101)+acc291(99)
      acc291(99)=QspQ*acc291(99)
      acc291(101)=acc291(15)*Qspvak2l5
      acc291(102)=acc291(60)*Qspvak2l6
      acc291(103)=acc291(65)*Qspvak2k3
      acc291(101)=acc291(103)+acc291(102)+acc291(28)+acc291(101)
      acc291(101)=acc291(101)*Qspvak1k2
      acc291(102)=acc291(36)*Qspvak4k2
      acc291(103)=acc291(70)*Qspvak4l6
      acc291(102)=acc291(103)+acc291(41)+acc291(102)
      acc291(102)=acc291(102)*QspQ
      acc291(103)=acc291(4)*Qspvak1l6
      acc291(104)=acc291(8)*Qspvak2l6
      acc291(105)=Qspk2**2
      acc291(106)=acc291(13)*acc291(105)
      acc291(107)=acc291(20)*Qspval5k2
      acc291(108)=acc291(25)*Qspval5l6
      acc291(109)=acc291(42)*Qspval6k2
      acc291(110)=acc291(52)*Qspvak2k1
      acc291(111)=acc291(56)*Qspvak2k3
      acc291(112)=acc291(59)*Qspvak2l5
      acc291(101)=acc291(101)+acc291(102)+acc291(112)+acc291(111)+acc291(110)+a&
      &cc291(109)+acc291(108)+acc291(107)+acc291(106)+acc291(104)+acc291(7)+acc&
      &291(103)
      acc291(101)=Qspvak2k7*acc291(101)
      acc291(102)=-acc291(38)*Qspvak2k3
      acc291(102)=-acc291(45)+acc291(102)
      acc291(102)=-acc291(102)*Qspvak1k2
      acc291(103)=acc291(22)*Qspvak1l6
      acc291(104)=acc291(29)*Qspvak2k7
      acc291(106)=acc291(39)*Qspval5k2
      acc291(107)=-acc291(40)*Qspvak2l5
      acc291(108)=-acc291(71)*Qspvak2l6
      acc291(109)=-acc291(84)*QspQ
      acc291(110)=acc291(86)*Qspk2
      acc291(111)=acc291(93)*Qspl6
      acc291(112)=-acc291(96)*Qspval6k2
      acc291(113)=-acc291(98)*Qspval5l6
      acc291(102)=acc291(111)+acc291(110)+acc291(109)+acc291(104)+acc291(102)+a&
      &cc291(113)+acc291(112)+acc291(82)+acc291(108)+acc291(107)+acc291(106)+ac&
      &c291(103)
      acc291(103)=Qspk1-Qspk7
      acc291(102)=acc291(103)*acc291(102)
      acc291(103)=acc291(12)*acc291(100)
      acc291(104)=acc291(24)*Qspl6
      acc291(106)=acc291(30)*Qspvak2k1
      acc291(107)=acc291(47)*Qspk2
      acc291(108)=acc291(62)*Qspval5k2
      acc291(109)=acc291(64)*Qspval6k2
      acc291(110)=acc291(68)*Qspval5l6
      acc291(111)=acc291(73)*Qspvak1l6
      acc291(112)=acc291(75)*Qspvak2l6
      acc291(113)=acc291(76)*Qspvak2l5
      acc291(103)=acc291(113)+acc291(112)+acc291(111)+acc291(110)+acc291(109)+a&
      &cc291(108)+acc291(107)+acc291(106)+acc291(104)+acc291(103)+acc291(3)
      acc291(103)=Qspvak4k3*acc291(103)
      acc291(104)=acc291(16)*Qspvak2k3
      acc291(106)=acc291(23)*Qspvak2l5
      acc291(107)=Qspvak4k3*Qspvak2k7
      acc291(108)=acc291(35)*acc291(107)
      acc291(109)=acc291(50)*Qspk2
      acc291(110)=acc291(54)*acc291(100)
      acc291(111)=acc291(58)*Qspvak2l6
      acc291(104)=acc291(111)+acc291(110)+acc291(109)+acc291(108)+acc291(106)+a&
      &cc291(104)+acc291(1)
      acc291(104)=Qspvak1k2*acc291(104)
      acc291(106)=QspQ+Qspl6
      acc291(106)=acc291(31)*acc291(106)
      acc291(108)=acc291(21)*Qspval6k2
      acc291(109)=acc291(27)*Qspval5l6
      acc291(110)=acc291(32)*Qspval5k2
      acc291(106)=acc291(106)+acc291(110)+acc291(109)+acc291(26)+acc291(108)
      acc291(106)=acc291(107)*acc291(106)
      acc291(107)=acc291(11)*acc291(100)
      acc291(108)=acc291(77)*Qspvak4k2
      acc291(109)=-acc291(80)*Qspvak4l6
      acc291(110)=-acc291(97)*Qspk2
      acc291(107)=acc291(110)+acc291(109)+acc291(108)+acc291(107)
      acc291(108)=Qspl5+Qspl6
      acc291(107)=acc291(108)*acc291(107)
      acc291(108)=acc291(37)*Qspvak4k2
      acc291(109)=acc291(48)*Qspvak4l6
      acc291(108)=acc291(109)+acc291(108)
      acc291(109)=Qspl5*Qspvak2k7
      acc291(110)=Qspl6*Qspvak2k7
      acc291(111)=acc291(109)+acc291(110)
      acc291(108)=acc291(111)*acc291(108)
      acc291(111)=acc291(34)*Qspvak4k2
      acc291(112)=acc291(53)*Qspvak4l6
      acc291(113)=Qspvak1k2*Qspvak4k3
      acc291(114)=acc291(55)*acc291(113)
      acc291(111)=acc291(114)+acc291(112)+acc291(111)+acc291(5)
      acc291(100)=acc291(100)*acc291(111)
      acc291(111)=acc291(66)*Qspvak2k1
      acc291(111)=acc291(111)+acc291(61)
      acc291(111)=acc291(113)*acc291(111)
      acc291(112)=acc291(9)*Qspvak4k2
      acc291(113)=acc291(78)*Qspvak4l6
      acc291(112)=acc291(113)+acc291(74)+acc291(112)
      acc291(112)=Qspk2*acc291(112)
      acc291(113)=acc291(2)*Qspvak2k1
      acc291(114)=acc291(6)*Qspval5k2
      acc291(115)=acc291(17)*Qspvak2l5
      acc291(116)=acc291(18)*Qspvak1l6
      acc291(117)=acc291(46)*Qspvak2k7**2
      acc291(118)=acc291(49)*Qspvak2l6
      acc291(109)=acc291(72)*acc291(109)
      acc291(110)=acc291(81)*acc291(110)
      acc291(119)=acc291(83)*QspQ**2
      acc291(120)=acc291(85)*Qspl5
      acc291(121)=acc291(89)*Qspval6k2
      acc291(122)=acc291(90)*Qspval5l6
      acc291(123)=acc291(92)*Qspl6
      acc291(105)=acc291(95)*acc291(105)
      brack=acc291(33)+acc291(99)+acc291(100)+acc291(101)+acc291(102)+acc291(10&
      &3)+acc291(104)+acc291(105)+acc291(106)+acc291(107)+acc291(108)+acc291(10&
      &9)+acc291(110)+acc291(111)+acc291(112)+acc291(113)+acc291(114)+acc291(11&
      &5)+acc291(116)+acc291(117)+acc291(118)+acc291(119)+acc291(120)+acc291(12&
      &1)+acc291(122)+acc291(123)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd291h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d291
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d291 = 0.0_ki
      d291 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d291, ki), aimag(d291), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d291h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd291h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d291
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d291 = 0.0_ki
      d291 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d291, ki), aimag(d291), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d291h2l1
