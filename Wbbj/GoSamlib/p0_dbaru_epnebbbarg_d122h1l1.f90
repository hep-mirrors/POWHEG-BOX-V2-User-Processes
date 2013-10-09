module     p0_dbaru_epnebbbarg_d122h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d122h1l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd122h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc122(116)
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak3e7
      complex(ki) :: Qspvak3k7
      complex(ki) :: Qspvak3l6
      complex(ki) :: Qspvak3l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvae7k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak1k3
      complex(ki) :: QspQ
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspe7 = dotproduct(Q,e7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak3e7 = dotproduct(Q,spvak3e7)
      Qspvak3k7 = dotproduct(Q,spvak3k7)
      Qspvak3l6 = dotproduct(Q,spvak3l6)
      Qspvak3l5 = dotproduct(Q,spvak3l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      QspQ = dotproduct(Q,Q)
      acc122(1)=abb122(10)
      acc122(2)=abb122(11)
      acc122(3)=abb122(12)
      acc122(4)=abb122(13)
      acc122(5)=abb122(14)
      acc122(6)=abb122(15)
      acc122(7)=abb122(16)
      acc122(8)=abb122(17)
      acc122(9)=abb122(18)
      acc122(10)=abb122(19)
      acc122(11)=abb122(20)
      acc122(12)=abb122(21)
      acc122(13)=abb122(22)
      acc122(14)=abb122(23)
      acc122(15)=abb122(24)
      acc122(16)=abb122(25)
      acc122(17)=abb122(26)
      acc122(18)=abb122(27)
      acc122(19)=abb122(28)
      acc122(20)=abb122(29)
      acc122(21)=abb122(30)
      acc122(22)=abb122(31)
      acc122(23)=abb122(32)
      acc122(24)=abb122(33)
      acc122(25)=abb122(34)
      acc122(26)=abb122(35)
      acc122(27)=abb122(36)
      acc122(28)=abb122(37)
      acc122(29)=abb122(38)
      acc122(30)=abb122(39)
      acc122(31)=abb122(40)
      acc122(32)=abb122(41)
      acc122(33)=abb122(42)
      acc122(34)=abb122(43)
      acc122(35)=abb122(44)
      acc122(36)=abb122(45)
      acc122(37)=abb122(46)
      acc122(38)=abb122(47)
      acc122(39)=abb122(48)
      acc122(40)=abb122(49)
      acc122(41)=abb122(64)
      acc122(42)=abb122(68)
      acc122(43)=abb122(69)
      acc122(44)=abb122(71)
      acc122(45)=abb122(75)
      acc122(46)=abb122(77)
      acc122(47)=abb122(82)
      acc122(48)=abb122(85)
      acc122(49)=abb122(88)
      acc122(50)=abb122(89)
      acc122(51)=abb122(95)
      acc122(52)=abb122(96)
      acc122(53)=abb122(100)
      acc122(54)=abb122(102)
      acc122(55)=abb122(103)
      acc122(56)=abb122(104)
      acc122(57)=abb122(111)
      acc122(58)=abb122(112)
      acc122(59)=abb122(114)
      acc122(60)=abb122(122)
      acc122(61)=abb122(124)
      acc122(62)=abb122(125)
      acc122(63)=abb122(126)
      acc122(64)=abb122(129)
      acc122(65)=abb122(131)
      acc122(66)=abb122(136)
      acc122(67)=abb122(138)
      acc122(68)=abb122(141)
      acc122(69)=abb122(143)
      acc122(70)=abb122(144)
      acc122(71)=abb122(146)
      acc122(72)=abb122(157)
      acc122(73)=abb122(160)
      acc122(74)=abb122(165)
      acc122(75)=abb122(166)
      acc122(76)=abb122(168)
      acc122(77)=abb122(169)
      acc122(78)=abb122(170)
      acc122(79)=abb122(171)
      acc122(80)=abb122(172)
      acc122(81)=abb122(173)
      acc122(82)=abb122(174)
      acc122(83)=abb122(175)
      acc122(84)=abb122(176)
      acc122(85)=acc122(17)*Qspvae7k2
      acc122(86)=acc122(29)*Qspe7
      acc122(87)=acc122(31)*Qspval6e7
      acc122(88)=acc122(43)*Qspvak4e7
      acc122(89)=acc122(47)*Qspvak4k7
      acc122(90)=acc122(52)*Qspvak4l6
      acc122(91)=acc122(54)*Qspvak4l5
      acc122(92)=acc122(56)*Qspk2
      acc122(93)=-Qspvak3e7*acc122(50)
      acc122(94)=-Qspvak3k7*acc122(18)
      acc122(95)=-Qspvak3l6*acc122(22)
      acc122(96)=-Qspvak3l5*acc122(23)
      acc122(85)=acc122(96)+acc122(95)+acc122(94)+acc122(93)+acc122(92)+acc122(&
      &91)+acc122(90)+acc122(89)+acc122(88)+acc122(87)+acc122(86)+acc122(85)+ac&
      &c122(4)
      acc122(85)=Qspvak4k3*acc122(85)
      acc122(86)=Qspvak2e7*acc122(50)
      acc122(87)=Qspvak2k7*acc122(18)
      acc122(88)=Qspvak2l6*acc122(22)
      acc122(89)=Qspvak2l5*acc122(23)
      acc122(90)=acc122(1)*Qspe7
      acc122(91)=acc122(7)*Qspval6e7
      acc122(92)=acc122(8)*Qspvak4e7
      acc122(93)=acc122(9)*Qspk2
      acc122(94)=acc122(10)*Qspvae7k2
      acc122(95)=acc122(11)*Qspvak4k7
      acc122(96)=acc122(13)*Qspvak4l6
      acc122(97)=acc122(15)*Qspvak4l5
      acc122(86)=acc122(97)+acc122(96)+acc122(95)+acc122(94)+acc122(93)+acc122(&
      &92)+acc122(91)+acc122(2)+acc122(90)+acc122(89)+acc122(88)+acc122(87)+acc&
      &122(86)
      acc122(86)=Qspvak4k2*acc122(86)
      acc122(87)=-acc122(48)*Qspvae7k2
      acc122(88)=acc122(57)*Qspvak4l5
      acc122(89)=-acc122(62)*Qspval6e7
      acc122(90)=-acc122(69)*Qspe7
      acc122(91)=acc122(75)*Qspvak4e7
      acc122(92)=acc122(83)*Qspvak4k7
      acc122(93)=acc122(84)*Qspvak4l6
      acc122(87)=acc122(90)+acc122(89)+acc122(87)+acc122(93)+acc122(92)+acc122(&
      &91)+acc122(88)
      acc122(88)=Qspk3+Qspk4
      acc122(89)=acc122(88)-Qspk2
      acc122(87)=acc122(89)*acc122(87)
      acc122(90)=acc122(3)*Qspval6k2
      acc122(91)=acc122(28)*Qspvak2k3
      acc122(92)=acc122(58)*Qspvak7k2
      acc122(93)=acc122(59)*Qspval6e7
      acc122(94)=acc122(70)*Qspvak1e7
      acc122(95)=acc122(76)*Qspval6k3
      acc122(96)=acc122(82)*Qspvak7k3
      acc122(90)=acc122(96)+acc122(95)+acc122(94)+acc122(93)+acc122(92)+acc122(&
      &91)+acc122(16)+acc122(90)
      acc122(90)=Qspvae7k2*acc122(90)
      acc122(89)=acc122(72)*acc122(89)
      acc122(91)=acc122(6)*Qspvak4k2
      acc122(92)=-acc122(51)*Qspvak4k3
      acc122(93)=-acc122(53)*Qspvae7k2
      acc122(94)=acc122(64)*Qspvak1e7
      acc122(95)=acc122(77)*Qspvae7k3
      acc122(89)=acc122(93)+acc122(92)+acc122(91)+acc122(89)+acc122(95)+acc122(&
      &94)+acc122(45)
      acc122(91)=Qspl6+Qspk7
      acc122(89)=acc122(91)*acc122(89)
      acc122(91)=acc122(12)*Qspvak1k2
      acc122(92)=acc122(32)*Qspvak1k7
      acc122(93)=acc122(33)*Qspvak7k2
      acc122(94)=acc122(44)*Qspval6k2
      acc122(95)=acc122(71)*Qspval6k3
      acc122(96)=acc122(80)*Qspvak7k3
      acc122(91)=acc122(96)+acc122(95)+acc122(46)+acc122(94)+acc122(93)+acc122(&
      &92)+acc122(91)
      acc122(91)=Qspe7*acc122(91)
      acc122(92)=acc122(21)*Qspvak1k7
      acc122(93)=acc122(34)*Qspvak1l6
      acc122(94)=acc122(40)*Qspvak1k2
      acc122(95)=acc122(79)*Qspvae7k3
      acc122(92)=acc122(95)+acc122(42)+acc122(94)+acc122(93)+acc122(92)
      acc122(92)=Qspval6e7*acc122(92)
      acc122(93)=acc122(68)*Qspvak1e7
      acc122(94)=acc122(78)*Qspvae7k3
      acc122(93)=acc122(94)+acc122(93)+acc122(25)
      acc122(93)=Qspk2*acc122(93)
      acc122(94)=-Qspk2*acc122(88)
      acc122(95)=Qspk2**2
      acc122(94)=acc122(95)+acc122(94)
      acc122(94)=acc122(49)*acc122(94)
      acc122(88)=acc122(41)*acc122(88)
      acc122(95)=acc122(5)*Qspvak2l5
      acc122(96)=acc122(14)*Qspval6k2
      acc122(97)=acc122(19)*Qspvak2k3
      acc122(98)=acc122(20)*Qspvak7k2
      acc122(99)=acc122(24)*Qspvak2k7
      acc122(100)=acc122(27)*Qspvak2l6
      acc122(101)=acc122(30)*Qspvak1k7
      acc122(102)=acc122(37)*Qspvak1l6
      acc122(103)=acc122(38)*Qspvak1k2
      acc122(104)=acc122(55)*Qspvak2e7
      acc122(105)=acc122(60)*Qspvak1e7
      acc122(106)=acc122(61)*Qspvae7k3
      acc122(107)=acc122(66)*Qspval6k3
      acc122(108)=acc122(73)*Qspvak7k3
      acc122(109)=Qspvae7l5*acc122(67)
      acc122(110)=Qspval5e7*acc122(74)
      acc122(111)=Qspvak7l5*acc122(65)
      acc122(112)=Qspval6l5*acc122(35)
      acc122(113)=Qspval5k7*acc122(63)
      acc122(114)=Qspval5l6*acc122(81)
      acc122(115)=Qspvak1k3*acc122(39)
      acc122(116)=QspQ*acc122(26)
      brack=acc122(36)+acc122(85)+acc122(86)+acc122(87)+acc122(88)+acc122(89)+a&
      &cc122(90)+acc122(91)+acc122(92)+acc122(93)+acc122(94)+acc122(95)+acc122(&
      &96)+acc122(97)+acc122(98)+acc122(99)+acc122(100)+acc122(101)+acc122(102)&
      &+acc122(103)+acc122(104)+acc122(105)+acc122(106)+acc122(107)+acc122(108)&
      &+acc122(109)+acc122(110)+acc122(111)+acc122(112)+acc122(113)+acc122(114)&
      &+acc122(115)+acc122(116)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram122_sign, shift => diagram122_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd122h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d122
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d122 = 0.0_ki
      d122 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d122, ki), aimag(d122), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd122h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d122
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d122 = 0.0_ki
      d122 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d122, ki), aimag(d122), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d122h1l1
