module     p0_dbaru_epnebbbarg_d127h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d127h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd127h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc127(135)
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k4
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspk2 = dotproduct(Q,k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      acc127(1)=abb127(12)
      acc127(2)=abb127(13)
      acc127(3)=abb127(14)
      acc127(4)=abb127(15)
      acc127(5)=abb127(16)
      acc127(6)=abb127(17)
      acc127(7)=abb127(18)
      acc127(8)=abb127(19)
      acc127(9)=abb127(20)
      acc127(10)=abb127(21)
      acc127(11)=abb127(22)
      acc127(12)=abb127(23)
      acc127(13)=abb127(24)
      acc127(14)=abb127(25)
      acc127(15)=abb127(26)
      acc127(16)=abb127(27)
      acc127(17)=abb127(28)
      acc127(18)=abb127(29)
      acc127(19)=abb127(30)
      acc127(20)=abb127(31)
      acc127(21)=abb127(32)
      acc127(22)=abb127(33)
      acc127(23)=abb127(34)
      acc127(24)=abb127(35)
      acc127(25)=abb127(36)
      acc127(26)=abb127(37)
      acc127(27)=abb127(38)
      acc127(28)=abb127(39)
      acc127(29)=abb127(40)
      acc127(30)=abb127(41)
      acc127(31)=abb127(42)
      acc127(32)=abb127(43)
      acc127(33)=abb127(44)
      acc127(34)=abb127(45)
      acc127(35)=abb127(46)
      acc127(36)=abb127(47)
      acc127(37)=abb127(48)
      acc127(38)=abb127(49)
      acc127(39)=abb127(50)
      acc127(40)=abb127(51)
      acc127(41)=abb127(52)
      acc127(42)=abb127(53)
      acc127(43)=abb127(54)
      acc127(44)=abb127(55)
      acc127(45)=abb127(56)
      acc127(46)=abb127(57)
      acc127(47)=abb127(58)
      acc127(48)=abb127(59)
      acc127(49)=abb127(60)
      acc127(50)=abb127(61)
      acc127(51)=abb127(62)
      acc127(52)=abb127(63)
      acc127(53)=abb127(64)
      acc127(54)=abb127(65)
      acc127(55)=abb127(67)
      acc127(56)=abb127(68)
      acc127(57)=abb127(69)
      acc127(58)=abb127(70)
      acc127(59)=abb127(71)
      acc127(60)=abb127(72)
      acc127(61)=abb127(73)
      acc127(62)=abb127(74)
      acc127(63)=abb127(75)
      acc127(64)=abb127(76)
      acc127(65)=abb127(77)
      acc127(66)=abb127(78)
      acc127(67)=abb127(79)
      acc127(68)=abb127(80)
      acc127(69)=abb127(81)
      acc127(70)=abb127(82)
      acc127(71)=abb127(83)
      acc127(72)=abb127(84)
      acc127(73)=abb127(85)
      acc127(74)=abb127(86)
      acc127(75)=abb127(87)
      acc127(76)=abb127(88)
      acc127(77)=abb127(89)
      acc127(78)=abb127(90)
      acc127(79)=abb127(91)
      acc127(80)=abb127(92)
      acc127(81)=abb127(93)
      acc127(82)=abb127(94)
      acc127(83)=abb127(95)
      acc127(84)=abb127(96)
      acc127(85)=abb127(97)
      acc127(86)=abb127(98)
      acc127(87)=abb127(99)
      acc127(88)=abb127(100)
      acc127(89)=abb127(101)
      acc127(90)=abb127(102)
      acc127(91)=abb127(103)
      acc127(92)=abb127(104)
      acc127(93)=abb127(105)
      acc127(94)=abb127(106)
      acc127(95)=abb127(108)
      acc127(96)=abb127(110)
      acc127(97)=abb127(120)
      acc127(98)=abb127(125)
      acc127(99)=abb127(127)
      acc127(100)=abb127(139)
      acc127(101)=abb127(142)
      acc127(102)=abb127(146)
      acc127(103)=abb127(147)
      acc127(104)=abb127(162)
      acc127(105)=abb127(164)
      acc127(106)=abb127(175)
      acc127(107)=abb127(176)
      acc127(108)=abb127(194)
      acc127(109)=abb127(209)
      acc127(110)=abb127(215)
      acc127(111)=abb127(217)
      acc127(112)=Qspk3+Qspk4
      acc127(113)=acc127(112)-Qspk1
      acc127(114)=acc127(10)*acc127(113)
      acc127(115)=acc127(56)*QspQ
      acc127(116)=acc127(14)*Qspval6k2
      acc127(117)=acc127(18)*Qspe7
      acc127(118)=acc127(24)*Qspvae7k2
      acc127(119)=acc127(29)*Qspvak4k3
      acc127(120)=acc127(40)*Qspval5k2
      acc127(121)=acc127(47)*Qspvak2k7
      acc127(122)=acc127(51)*Qspvak7k2
      acc127(123)=acc127(53)*Qspvak2l6
      acc127(124)=acc127(62)*Qspval6k7
      acc127(125)=acc127(66)*Qspk2
      acc127(126)=acc127(69)*Qspval6e7
      acc127(127)=acc127(71)*Qspvak2l5
      acc127(128)=acc127(72)*Qspvae7l5
      acc127(129)=acc127(76)*Qspvak2e7
      acc127(130)=acc127(92)*Qspvak7l5
      acc127(131)=acc127(93)*Qspval6l5
      acc127(114)=acc127(114)+acc127(131)+acc127(130)+acc127(129)+acc127(128)+a&
      &cc127(127)+acc127(126)+acc127(125)+acc127(124)+acc127(123)+acc127(122)+a&
      &cc127(121)+acc127(120)+acc127(119)+acc127(118)+acc127(117)+acc127(116)+a&
      &cc127(115)
      acc127(114)=Qspvak1k3*acc127(114)
      acc127(115)=-Qspk7+Qspl5+Qspl6
      acc127(116)=acc127(31)*acc127(115)
      acc127(117)=acc127(7)*Qspvae7l5
      acc127(118)=acc127(17)*Qspvae7k2
      acc127(119)=acc127(21)*Qspval5k2
      acc127(120)=acc127(22)*Qspe7
      acc127(121)=acc127(23)*Qspval6e7
      acc127(122)=acc127(25)*Qspvak7k2
      acc127(123)=acc127(26)*Qspvak2l5
      acc127(124)=acc127(27)*Qspval6l5
      acc127(125)=acc127(36)*Qspk2
      acc127(126)=acc127(38)*Qspvak7l5
      acc127(127)=acc127(46)*Qspvak2e7
      acc127(128)=acc127(48)*Qspval6k7
      acc127(129)=acc127(49)*Qspval6k2
      acc127(130)=acc127(84)*Qspvak2k7
      acc127(131)=acc127(85)*Qspvak2l6
      acc127(116)=acc127(131)+acc127(130)+acc127(128)+acc127(124)+acc127(123)+a&
      &cc127(120)+acc127(116)+acc127(129)+acc127(127)+acc127(126)+acc127(125)+a&
      &cc127(122)+acc127(121)+acc127(119)+acc127(20)+acc127(118)+acc127(117)
      acc127(116)=Qspvak1k2*acc127(116)
      acc127(117)=acc127(1)*Qspvae7l5
      acc127(118)=acc127(9)*Qspval6k2
      acc127(119)=acc127(13)*Qspvae7k2
      acc127(120)=acc127(35)*Qspvak7l5
      acc127(121)=acc127(39)*Qspval6l5
      acc127(122)=acc127(61)*Qspvak2l5
      acc127(123)=acc127(67)*Qspe7
      acc127(124)=acc127(77)*Qspvak2k7
      acc127(125)=acc127(78)*Qspval6e7
      acc127(126)=acc127(80)*Qspvak2l6
      acc127(127)=acc127(88)*Qspvak2e7
      acc127(128)=acc127(94)*Qspk2
      acc127(129)=acc127(96)*Qspvak4k3
      acc127(130)=acc127(101)*Qspval5k2
      acc127(131)=acc127(104)*Qspvak7k2
      acc127(132)=acc127(106)*Qspval6k7
      acc127(117)=acc127(132)+acc127(131)+acc127(130)+acc127(129)+acc127(128)+a&
      &cc127(127)+acc127(126)+acc127(125)+acc127(124)+acc127(123)+acc127(122)+a&
      &cc127(121)+acc127(120)+acc127(119)+acc127(11)+acc127(118)+acc127(117)
      acc127(117)=Qspk1*acc127(117)
      acc127(118)=acc127(42)*Qspvak2l5
      acc127(119)=acc127(45)*Qspk2
      acc127(120)=acc127(50)*Qspval6e7
      acc127(121)=acc127(52)*Qspvae7l5
      acc127(122)=acc127(54)*Qspvae7k2
      acc127(123)=acc127(55)*Qspvak2e7
      acc127(124)=acc127(57)*Qspvak7l5
      acc127(125)=acc127(58)*Qspvak7k2
      acc127(126)=acc127(63)*Qspval6k7
      acc127(127)=acc127(65)*Qspval6l5
      acc127(128)=acc127(70)*Qspval6k2
      acc127(129)=-acc127(75)*Qspe7
      acc127(130)=acc127(82)*Qspvak2k7
      acc127(131)=acc127(83)*Qspval5k2
      acc127(132)=acc127(89)*Qspvak2l6
      acc127(118)=acc127(132)+acc127(131)+acc127(130)+acc127(129)+acc127(128)+a&
      &cc127(127)+acc127(126)+acc127(125)+acc127(124)+acc127(123)+acc127(122)+a&
      &cc127(121)+acc127(120)+acc127(119)+acc127(118)+acc127(4)
      acc127(119)=Qspvak4k3*Qspvak1k2
      acc127(118)=acc127(119)*acc127(118)
      acc127(120)=acc127(2)*Qspvae7k2
      acc127(121)=acc127(8)*Qspval6k2
      acc127(122)=acc127(28)*Qspval5k2
      acc127(123)=acc127(32)*Qspk2
      acc127(124)=acc127(41)*QspQ
      acc127(125)=acc127(59)*Qspvak4k2
      acc127(126)=acc127(74)*Qspvak7k2
      acc127(127)=Qspvak3k2*acc127(43)
      acc127(128)=-Qspvak1k4*acc127(56)
      acc127(120)=acc127(128)+acc127(127)+acc127(126)+acc127(125)+acc127(124)+a&
      &cc127(33)+acc127(123)+acc127(122)+acc127(121)+acc127(120)
      acc127(120)=Qspvak4k3*acc127(120)
      acc127(121)=-acc127(43)*Qspvak4k2
      acc127(122)=acc127(37)*Qspval6k2
      acc127(123)=acc127(60)*Qspk2
      acc127(124)=acc127(91)*Qspvae7k2
      acc127(125)=acc127(103)*Qspval5k2
      acc127(126)=acc127(108)*Qspvak7k2
      acc127(121)=acc127(126)+acc127(125)+acc127(124)+acc127(123)+acc127(122)+a&
      &cc127(6)+acc127(121)
      acc127(121)=QspQ*acc127(121)
      acc127(122)=acc127(98)*Qspvae7k2
      acc127(123)=acc127(102)*Qspval6k2
      acc127(124)=-acc127(105)*Qspval5k2
      acc127(125)=-acc127(107)*Qspk2
      acc127(126)=acc127(111)*Qspvak7k2
      acc127(122)=acc127(126)+acc127(125)+acc127(124)+acc127(123)+acc127(99)+ac&
      &c127(122)
      acc127(112)=acc127(112)*acc127(122)
      acc127(119)=acc127(34)*acc127(119)
      acc127(122)=acc127(64)*Qspvak1k3
      acc127(123)=-acc127(73)*Qspk1
      acc127(119)=-acc127(81)+acc127(123)+acc127(122)+acc127(119)
      acc127(115)=acc127(115)*acc127(119)
      acc127(113)=-acc127(44)*acc127(113)
      acc127(113)=acc127(30)+acc127(113)
      acc127(113)=Qspvak4k2*acc127(113)
      acc127(119)=acc127(3)*Qspvak2k7
      acc127(122)=acc127(5)*Qspval6k2
      acc127(123)=acc127(12)*Qspvae7k2
      acc127(124)=acc127(15)*Qspvak2l5
      acc127(125)=acc127(16)*Qspvak2l6
      acc127(126)=acc127(68)*Qspval6e7
      acc127(127)=acc127(79)*Qspe7
      acc127(128)=acc127(86)*Qspvae7l5
      acc127(129)=acc127(87)*Qspvak2e7
      acc127(130)=acc127(90)*Qspval5k2
      acc127(131)=acc127(95)*Qspvak7l5
      acc127(132)=acc127(97)*Qspvak7k2
      acc127(133)=acc127(100)*Qspk2
      acc127(134)=acc127(109)*Qspval6l5
      acc127(135)=acc127(110)*Qspval6k7
      brack=acc127(19)+acc127(112)+acc127(113)+acc127(114)+acc127(115)+acc127(1&
      &16)+acc127(117)+acc127(118)+acc127(119)+acc127(120)+acc127(121)+acc127(1&
      &22)+acc127(123)+acc127(124)+acc127(125)+acc127(126)+acc127(127)+acc127(1&
      &28)+acc127(129)+acc127(130)+acc127(131)+acc127(132)+acc127(133)+acc127(1&
      &34)+acc127(135)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram127_sign, shift => diagram127_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd127h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d127
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d127 = 0.0_ki
      d127 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d127, ki), aimag(d127), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd127h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d127
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d127 = 0.0_ki
      d127 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d127, ki), aimag(d127), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d127h1l1
