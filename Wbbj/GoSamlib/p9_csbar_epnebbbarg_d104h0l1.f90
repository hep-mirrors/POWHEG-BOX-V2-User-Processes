module     p9_csbar_epnebbbarg_d104h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d104h0l1.f90
   ! generator: buildfortran.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd104h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc104(133)
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspl5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k3
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspl5 = dotproduct(Q,l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      acc104(1)=abb104(11)
      acc104(2)=abb104(12)
      acc104(3)=abb104(13)
      acc104(4)=abb104(14)
      acc104(5)=abb104(15)
      acc104(6)=abb104(16)
      acc104(7)=abb104(17)
      acc104(8)=abb104(18)
      acc104(9)=abb104(19)
      acc104(10)=abb104(20)
      acc104(11)=abb104(21)
      acc104(12)=abb104(22)
      acc104(13)=abb104(23)
      acc104(14)=abb104(24)
      acc104(15)=abb104(25)
      acc104(16)=abb104(26)
      acc104(17)=abb104(27)
      acc104(18)=abb104(28)
      acc104(19)=abb104(29)
      acc104(20)=abb104(30)
      acc104(21)=abb104(31)
      acc104(22)=abb104(32)
      acc104(23)=abb104(33)
      acc104(24)=abb104(34)
      acc104(25)=abb104(35)
      acc104(26)=abb104(36)
      acc104(27)=abb104(37)
      acc104(28)=abb104(38)
      acc104(29)=abb104(39)
      acc104(30)=abb104(40)
      acc104(31)=abb104(41)
      acc104(32)=abb104(42)
      acc104(33)=abb104(43)
      acc104(34)=abb104(44)
      acc104(35)=abb104(45)
      acc104(36)=abb104(46)
      acc104(37)=abb104(49)
      acc104(38)=abb104(50)
      acc104(39)=abb104(52)
      acc104(40)=abb104(53)
      acc104(41)=abb104(56)
      acc104(42)=abb104(58)
      acc104(43)=abb104(59)
      acc104(44)=abb104(60)
      acc104(45)=abb104(61)
      acc104(46)=abb104(65)
      acc104(47)=abb104(66)
      acc104(48)=abb104(67)
      acc104(49)=abb104(70)
      acc104(50)=abb104(71)
      acc104(51)=abb104(72)
      acc104(52)=abb104(74)
      acc104(53)=abb104(77)
      acc104(54)=abb104(79)
      acc104(55)=abb104(80)
      acc104(56)=abb104(85)
      acc104(57)=abb104(86)
      acc104(58)=abb104(88)
      acc104(59)=abb104(91)
      acc104(60)=abb104(93)
      acc104(61)=abb104(97)
      acc104(62)=abb104(105)
      acc104(63)=abb104(106)
      acc104(64)=abb104(111)
      acc104(65)=abb104(112)
      acc104(66)=abb104(116)
      acc104(67)=abb104(121)
      acc104(68)=abb104(125)
      acc104(69)=abb104(126)
      acc104(70)=abb104(131)
      acc104(71)=abb104(132)
      acc104(72)=abb104(133)
      acc104(73)=abb104(136)
      acc104(74)=abb104(140)
      acc104(75)=abb104(141)
      acc104(76)=abb104(142)
      acc104(77)=abb104(143)
      acc104(78)=abb104(153)
      acc104(79)=abb104(155)
      acc104(80)=abb104(157)
      acc104(81)=abb104(160)
      acc104(82)=abb104(166)
      acc104(83)=abb104(170)
      acc104(84)=abb104(171)
      acc104(85)=abb104(172)
      acc104(86)=abb104(217)
      acc104(87)=abb104(229)
      acc104(88)=abb104(243)
      acc104(89)=abb104(245)
      acc104(90)=abb104(254)
      acc104(91)=abb104(262)
      acc104(92)=abb104(263)
      acc104(93)=abb104(264)
      acc104(94)=abb104(287)
      acc104(95)=abb104(289)
      acc104(96)=abb104(301)
      acc104(97)=abb104(315)
      acc104(98)=abb104(317)
      acc104(99)=abb104(331)
      acc104(100)=abb104(342)
      acc104(101)=abb104(347)
      acc104(102)=abb104(348)
      acc104(103)=abb104(349)
      acc104(104)=abb104(358)
      acc104(105)=abb104(363)
      acc104(106)=abb104(367)
      acc104(107)=abb104(369)
      acc104(108)=abb104(370)
      acc104(109)=acc104(5)*Qspe7
      acc104(110)=acc104(6)*Qspvae7k2
      acc104(111)=acc104(7)*Qspl6
      acc104(112)=acc104(8)*Qspk7
      acc104(113)=acc104(14)*Qspval6e7
      acc104(114)=acc104(15)*Qspl5
      acc104(115)=acc104(17)*Qspk2
      acc104(116)=acc104(18)*Qspvak7k2
      acc104(117)=acc104(29)*Qspval6k7
      acc104(118)=acc104(31)*Qspval6l5
      acc104(119)=acc104(32)*Qspval6k2
      acc104(120)=acc104(33)*Qspval5k2
      acc104(109)=acc104(120)+acc104(119)+acc104(118)+acc104(117)+acc104(116)+a&
      &cc104(115)+acc104(114)+acc104(113)+acc104(112)+acc104(111)+acc104(110)+a&
      &cc104(109)+acc104(4)
      acc104(109)=acc104(109)*Qspvak2k1
      acc104(110)=Qspl5+Qspl6
      acc104(111)=-acc104(66)*acc104(110)
      acc104(112)=Qspk3+Qspk4
      acc104(113)=acc104(97)*acc104(112)
      acc104(114)=acc104(9)*Qspval5k1
      acc104(115)=acc104(25)*Qspvak7k1
      acc104(116)=acc104(26)*Qspe7
      acc104(117)=acc104(30)*Qspvae7k1
      acc104(118)=acc104(38)*Qspval6k1
      acc104(119)=acc104(40)*Qspval6k7
      acc104(120)=acc104(47)*Qspval5k2
      acc104(121)=acc104(51)*Qspk2
      acc104(122)=acc104(55)*Qspval5l6
      acc104(123)=acc104(56)*Qspval6l5
      acc104(124)=acc104(57)*Qspval5k7
      acc104(125)=acc104(61)*Qspval6e7
      acc104(126)=acc104(62)*Qspval6k2
      acc104(127)=acc104(79)*Qspvak7k2
      acc104(128)=acc104(81)*Qspvak4k1
      acc104(129)=acc104(83)*Qspval5e7
      acc104(130)=acc104(85)*Qspvae7k2
      acc104(131)=acc104(101)*Qspk7
      acc104(132)=-Qspvak3k1*acc104(58)
      acc104(109)=acc104(131)+acc104(126)+acc104(123)+acc104(121)+acc104(120)+a&
      &cc104(116)+acc104(113)+acc104(111)+acc104(109)+acc104(132)+acc104(130)+a&
      &cc104(129)+acc104(128)+acc104(127)+acc104(125)+acc104(124)+acc104(122)+a&
      &cc104(119)+acc104(118)+acc104(117)+acc104(115)+acc104(114)
      acc104(109)=Qspvak4k3*acc104(109)
      acc104(111)=acc104(58)*Qspvak4k1
      acc104(113)=acc104(1)*Qspval6k7
      acc104(114)=acc104(11)*Qspe7
      acc104(115)=-acc104(16)*Qspvak2k1
      acc104(116)=acc104(23)*Qspvae7k2
      acc104(117)=acc104(27)*Qspvae7k1
      acc104(118)=acc104(35)*Qspval6k2
      acc104(119)=acc104(43)*Qspval6e7
      acc104(120)=acc104(49)*Qspvak7k2
      acc104(121)=-acc104(64)*Qspval5k1
      acc104(122)=-acc104(68)*Qspval6k1
      acc104(123)=acc104(71)*Qspval5k2
      acc104(124)=acc104(78)*Qspl6
      acc104(125)=acc104(80)*Qspk2
      acc104(126)=acc104(82)*Qspk7
      acc104(127)=acc104(87)*Qspval5e7
      acc104(128)=-acc104(90)*Qspvak4k3
      acc104(129)=acc104(98)*Qspvak7k1
      acc104(130)=-acc104(100)*Qspval6l5
      acc104(131)=acc104(104)*Qspl5
      acc104(132)=-acc104(105)*Qspval5l6
      acc104(133)=acc104(108)*Qspval5k7
      acc104(111)=acc104(133)+acc104(132)+acc104(131)+acc104(130)+acc104(129)+a&
      &cc104(128)+acc104(127)+acc104(126)+acc104(125)+acc104(124)+acc104(123)+a&
      &cc104(122)+acc104(121)+acc104(120)+acc104(119)+acc104(118)+acc104(117)+a&
      &cc104(116)+acc104(115)+acc104(114)+acc104(2)+acc104(113)+acc104(111)
      acc104(111)=QspQ*acc104(111)
      acc104(113)=-Qspk7+acc104(110)
      acc104(113)=acc104(77)*acc104(113)
      acc104(114)=acc104(45)*Qspvak2k1
      acc104(115)=-acc104(48)*Qspval5k2
      acc104(116)=-acc104(65)*Qspk2
      acc104(117)=acc104(73)*Qspval5k1
      acc104(118)=acc104(74)*Qspe7
      acc104(119)=acc104(75)*Qspval5l6
      acc104(120)=-acc104(84)*Qspval6e7
      acc104(121)=-acc104(86)*Qspval5e7
      acc104(122)=-acc104(88)*Qspval6k7
      acc104(123)=-acc104(91)*Qspvae7k2
      acc104(124)=acc104(92)*Qspvae7k1
      acc104(125)=acc104(95)*Qspval6k2
      acc104(126)=-acc104(96)*Qspvak7k2
      acc104(127)=-acc104(99)*Qspvak7k1
      acc104(128)=-acc104(102)*Qspval6l5
      acc104(129)=acc104(103)*Qspval6k1
      acc104(130)=-acc104(107)*Qspval5k7
      acc104(113)=acc104(113)+acc104(130)+acc104(129)+acc104(128)+acc104(127)+a&
      &cc104(126)+acc104(125)+acc104(124)+acc104(123)+acc104(122)+acc104(121)+a&
      &cc104(120)+acc104(119)+acc104(118)+acc104(117)+acc104(70)+acc104(116)+ac&
      &c104(115)+acc104(114)
      acc104(112)=acc104(112)*acc104(113)
      acc104(113)=acc104(12)*Qspe7
      acc104(114)=acc104(19)*Qspl6
      acc104(115)=acc104(24)*Qspval6e7
      acc104(116)=acc104(36)*Qspval6k2
      acc104(117)=acc104(37)*Qspvae7k2
      acc104(118)=acc104(39)*Qspk2
      acc104(119)=acc104(41)*Qspvak7k2
      acc104(120)=acc104(42)*Qspk7
      acc104(121)=acc104(44)*Qspval5k2
      acc104(122)=acc104(50)*Qspval6k7
      acc104(123)=acc104(53)*Qspl5
      acc104(124)=acc104(54)*Qspval6l5
      acc104(113)=acc104(124)+acc104(123)+acc104(122)+acc104(121)+acc104(120)+a&
      &cc104(119)+acc104(118)+acc104(117)+acc104(116)+acc104(28)+acc104(115)+ac&
      &c104(114)+acc104(113)
      acc104(113)=Qspvak2k3*acc104(113)
      acc104(110)=-acc104(60)*acc104(110)
      acc104(114)=acc104(3)*Qspk2
      acc104(115)=acc104(10)*Qspvak2k1
      acc104(116)=acc104(13)*Qspe7
      acc104(117)=acc104(20)*Qspval5k1
      acc104(118)=acc104(21)*Qspval6k1
      acc104(119)=acc104(22)*Qspvae7k1
      acc104(120)=acc104(34)*Qspval5e7
      acc104(121)=acc104(46)*Qspval5k2
      acc104(122)=acc104(52)*Qspvak7k1
      acc104(123)=acc104(59)*Qspval6k7
      acc104(124)=acc104(63)*Qspval6e7
      acc104(125)=acc104(67)*Qspk7
      acc104(126)=acc104(69)*Qspval6l5
      acc104(127)=acc104(72)*Qspval5l6
      acc104(128)=acc104(76)*Qspvak4k1
      acc104(129)=acc104(89)*Qspvae7k2
      acc104(130)=acc104(93)*Qspvak7k2
      acc104(131)=acc104(94)*Qspval6k2
      acc104(132)=acc104(106)*Qspval5k7
      brack=acc104(109)+acc104(110)+acc104(111)+acc104(112)+acc104(113)+acc104(&
      &114)+acc104(115)+acc104(116)+acc104(117)+acc104(118)+acc104(119)+acc104(&
      &120)+acc104(121)+acc104(122)+acc104(123)+acc104(124)+acc104(125)+acc104(&
      &126)+acc104(127)+acc104(128)+acc104(129)+acc104(130)+acc104(131)+acc104(&
      &132)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram104_sign, shift => diagram104_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd104h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d104
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d104 = 0.0_ki
      d104 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d104, ki), aimag(d104), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd104h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d104
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d104 = 0.0_ki
      d104 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d104, ki), aimag(d104), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d104h0l1
