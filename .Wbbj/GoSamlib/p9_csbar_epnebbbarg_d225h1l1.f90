module     p9_csbar_epnebbbarg_d225h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d225h1l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd225h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc225(137)
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspe7
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: QspQ
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspe7 = dotproduct(Q,e7)
      Qspk2 = dotproduct(Q,k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspl5 = dotproduct(Q,l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      QspQ = dotproduct(Q,Q)
      acc225(1)=abb225(13)
      acc225(2)=abb225(14)
      acc225(3)=abb225(15)
      acc225(4)=abb225(16)
      acc225(5)=abb225(17)
      acc225(6)=abb225(18)
      acc225(7)=abb225(19)
      acc225(8)=abb225(20)
      acc225(9)=abb225(21)
      acc225(10)=abb225(23)
      acc225(11)=abb225(24)
      acc225(12)=abb225(25)
      acc225(13)=abb225(26)
      acc225(14)=abb225(27)
      acc225(15)=abb225(28)
      acc225(16)=abb225(29)
      acc225(17)=abb225(30)
      acc225(18)=abb225(31)
      acc225(19)=abb225(32)
      acc225(20)=abb225(33)
      acc225(21)=abb225(34)
      acc225(22)=abb225(35)
      acc225(23)=abb225(36)
      acc225(24)=abb225(37)
      acc225(25)=abb225(38)
      acc225(26)=abb225(39)
      acc225(27)=abb225(40)
      acc225(28)=abb225(41)
      acc225(29)=abb225(42)
      acc225(30)=abb225(43)
      acc225(31)=abb225(44)
      acc225(32)=abb225(45)
      acc225(33)=abb225(46)
      acc225(34)=abb225(47)
      acc225(35)=abb225(48)
      acc225(36)=abb225(49)
      acc225(37)=abb225(50)
      acc225(38)=abb225(51)
      acc225(39)=abb225(52)
      acc225(40)=abb225(53)
      acc225(41)=abb225(54)
      acc225(42)=abb225(55)
      acc225(43)=abb225(56)
      acc225(44)=abb225(57)
      acc225(45)=abb225(58)
      acc225(46)=abb225(59)
      acc225(47)=abb225(60)
      acc225(48)=abb225(61)
      acc225(49)=abb225(62)
      acc225(50)=abb225(63)
      acc225(51)=abb225(64)
      acc225(52)=abb225(65)
      acc225(53)=abb225(66)
      acc225(54)=abb225(68)
      acc225(55)=abb225(69)
      acc225(56)=abb225(70)
      acc225(57)=abb225(71)
      acc225(58)=abb225(72)
      acc225(59)=abb225(73)
      acc225(60)=abb225(74)
      acc225(61)=abb225(75)
      acc225(62)=abb225(76)
      acc225(63)=abb225(77)
      acc225(64)=abb225(78)
      acc225(65)=abb225(79)
      acc225(66)=abb225(80)
      acc225(67)=abb225(81)
      acc225(68)=abb225(82)
      acc225(69)=abb225(83)
      acc225(70)=abb225(84)
      acc225(71)=abb225(87)
      acc225(72)=abb225(88)
      acc225(73)=abb225(92)
      acc225(74)=abb225(93)
      acc225(75)=abb225(94)
      acc225(76)=abb225(96)
      acc225(77)=abb225(99)
      acc225(78)=abb225(101)
      acc225(79)=abb225(103)
      acc225(80)=abb225(106)
      acc225(81)=abb225(108)
      acc225(82)=abb225(109)
      acc225(83)=abb225(112)
      acc225(84)=abb225(113)
      acc225(85)=abb225(114)
      acc225(86)=abb225(118)
      acc225(87)=abb225(119)
      acc225(88)=abb225(121)
      acc225(89)=abb225(122)
      acc225(90)=abb225(123)
      acc225(91)=abb225(124)
      acc225(92)=abb225(125)
      acc225(93)=abb225(127)
      acc225(94)=abb225(128)
      acc225(95)=abb225(129)
      acc225(96)=abb225(136)
      acc225(97)=abb225(143)
      acc225(98)=abb225(144)
      acc225(99)=abb225(149)
      acc225(100)=abb225(150)
      acc225(101)=abb225(153)
      acc225(102)=abb225(154)
      acc225(103)=abb225(170)
      acc225(104)=abb225(182)
      acc225(105)=abb225(196)
      acc225(106)=abb225(202)
      acc225(107)=abb225(204)
      acc225(108)=abb225(205)
      acc225(109)=abb225(209)
      acc225(110)=abb225(215)
      acc225(111)=abb225(289)
      acc225(112)=abb225(326)
      acc225(113)=abb225(423)
      acc225(114)=abb225(436)
      acc225(115)=acc225(9)*Qspval6l5
      acc225(116)=-acc225(12)*Qspval6k7
      acc225(117)=acc225(39)*Qspvak2l5
      acc225(118)=acc225(46)*Qspvak2k7
      acc225(119)=-acc225(65)*Qspvae7k2
      acc225(120)=-acc225(69)*Qspval6k2
      acc225(121)=-acc225(76)*Qspvak7k2
      acc225(122)=acc225(79)*Qspvak2l6
      acc225(123)=acc225(84)*Qspe7
      acc225(124)=acc225(86)*Qspk2
      acc225(125)=acc225(90)*Qspval6e7
      acc225(126)=-acc225(92)*Qspl5
      acc225(127)=-acc225(101)*Qspvak7l5
      acc225(128)=acc225(103)*Qspval5k2
      acc225(129)=-acc225(108)*Qspvak2e7
      acc225(130)=-acc225(111)*Qspl6
      acc225(131)=-acc225(112)*Qspk7
      acc225(132)=acc225(114)*Qspvae7l5
      acc225(115)=acc225(132)+acc225(131)+acc225(130)+acc225(129)+acc225(128)+a&
      &cc225(127)+acc225(126)+acc225(125)+acc225(124)+acc225(123)+acc225(122)+a&
      &cc225(121)+acc225(120)+acc225(119)+acc225(118)+acc225(117)+acc225(34)+ac&
      &c225(115)+acc225(116)
      acc225(116)=-Qspk4+Qspk1-Qspk3
      acc225(115)=acc225(116)*acc225(115)
      acc225(116)=acc225(10)*Qspval6k7
      acc225(117)=acc225(21)*Qspval6l5
      acc225(118)=acc225(33)*Qspvak2l5
      acc225(119)=acc225(38)*Qspval6k2
      acc225(120)=acc225(50)*Qspvak2k7
      acc225(121)=acc225(58)*Qspval5k2
      acc225(122)=acc225(59)*Qspk2
      acc225(123)=acc225(62)*Qspvae7k2
      acc225(124)=acc225(63)*Qspe7
      acc225(125)=acc225(68)*Qspval6e7
      acc225(126)=acc225(77)*Qspvak7k2
      acc225(127)=acc225(80)*Qspvak2l6
      acc225(128)=acc225(89)*Qspvak2e7
      acc225(129)=acc225(91)*Qspvae7l5
      acc225(130)=acc225(93)*Qspk7
      acc225(131)=acc225(106)*Qspl6
      acc225(132)=acc225(107)*Qspl5
      acc225(133)=acc225(109)*Qspvak7l5
      acc225(116)=acc225(133)+acc225(132)+acc225(131)+acc225(130)+acc225(129)+a&
      &cc225(128)+acc225(127)+acc225(126)+acc225(125)+acc225(124)+acc225(123)+a&
      &cc225(122)+acc225(121)+acc225(120)+acc225(119)+acc225(118)+acc225(24)+ac&
      &c225(117)+acc225(116)
      acc225(116)=Qspvak4k3*acc225(116)
      acc225(117)=acc225(3)*Qspval6e7
      acc225(118)=acc225(4)*Qspvae7l5
      acc225(119)=acc225(11)*Qspvak2l5
      acc225(120)=acc225(17)*Qspval6k2
      acc225(121)=acc225(20)*Qspk2
      acc225(122)=acc225(22)*Qspval6l5
      acc225(123)=acc225(26)*Qspe7
      acc225(124)=acc225(29)*Qspvae7k2
      acc225(125)=acc225(30)*Qspk7
      acc225(126)=acc225(31)*Qspl6
      acc225(127)=acc225(32)*Qspl5
      acc225(128)=acc225(35)*Qspvak2e7
      acc225(129)=acc225(36)*Qspvak7l5
      acc225(130)=acc225(40)*Qspvak7k2
      acc225(131)=acc225(41)*Qspval6k7
      acc225(132)=acc225(43)*Qspval5k2
      acc225(133)=acc225(61)*Qspvak2k7
      acc225(134)=acc225(78)*Qspvak2l6
      acc225(117)=acc225(134)+acc225(133)+acc225(132)+acc225(131)+acc225(130)+a&
      &cc225(129)+acc225(128)+acc225(127)+acc225(126)+acc225(125)+acc225(124)+a&
      &cc225(123)+acc225(122)+acc225(121)+acc225(19)+acc225(120)+acc225(119)+ac&
      &c225(118)+acc225(117)
      acc225(117)=Qspvak4k1*acc225(117)
      acc225(118)=acc225(25)*Qspe7
      acc225(119)=acc225(45)*Qspk7
      acc225(120)=acc225(47)*Qspvae7k2
      acc225(121)=acc225(52)*Qspvak2k7
      acc225(122)=acc225(54)*Qspk2
      acc225(123)=acc225(64)*Qspvak2e7
      acc225(124)=acc225(70)*Qspl6
      acc225(125)=acc225(73)*Qspval5k2
      acc225(126)=acc225(74)*Qspl5
      acc225(127)=acc225(75)*Qspval6e7
      acc225(128)=acc225(81)*Qspvae7l5
      acc225(129)=acc225(82)*Qspvak7l5
      acc225(130)=acc225(83)*Qspvak7k2
      acc225(131)=acc225(85)*Qspval6k7
      acc225(132)=acc225(87)*Qspval6l5
      acc225(133)=acc225(88)*Qspval6k2
      acc225(134)=acc225(94)*Qspvak2l6
      acc225(135)=acc225(95)*Qspvak2l5
      acc225(118)=acc225(135)+acc225(134)+acc225(133)+acc225(132)+acc225(131)+a&
      &cc225(130)+acc225(129)+acc225(128)+acc225(127)+acc225(126)+acc225(125)+a&
      &cc225(124)+acc225(123)+acc225(122)+acc225(121)+acc225(120)+acc225(119)+a&
      &cc225(118)+acc225(2)
      acc225(118)=Qspvak2k3*acc225(118)
      acc225(119)=acc225(5)*Qspk2
      acc225(120)=acc225(6)*Qspval6k7
      acc225(121)=acc225(8)*Qspvae7k2
      acc225(122)=acc225(14)*Qspval5k2
      acc225(123)=acc225(15)*Qspval6l5
      acc225(124)=acc225(16)*Qspl5
      acc225(125)=acc225(18)*Qspe7
      acc225(126)=acc225(27)*Qspval6k2
      acc225(127)=acc225(37)*Qspvak2k7
      acc225(128)=acc225(42)*Qspvak2e7
      acc225(129)=acc225(48)*Qspvak2l6
      acc225(130)=acc225(49)*Qspvak2l5
      acc225(131)=acc225(51)*Qspvak7l5
      acc225(132)=acc225(53)*Qspvak7k2
      acc225(133)=acc225(57)*Qspval6e7
      acc225(134)=acc225(60)*Qspk7
      acc225(135)=acc225(66)*Qspl6
      acc225(136)=acc225(67)*Qspvae7l5
      acc225(119)=acc225(136)+acc225(135)+acc225(134)+acc225(133)+acc225(56)+ac&
      &c225(132)+acc225(131)+acc225(130)+acc225(129)+acc225(128)+acc225(127)+ac&
      &c225(126)+acc225(125)+acc225(124)+acc225(123)+acc225(122)+acc225(121)+ac&
      &c225(120)+acc225(119)
      acc225(119)=Qspvak2k1*acc225(119)
      acc225(120)=Qspl6+Qspl5
      acc225(120)=acc225(98)*acc225(120)
      acc225(121)=acc225(1)*Qspval6l5
      acc225(122)=acc225(7)*Qspval6e7
      acc225(123)=acc225(13)*Qspvak2l5
      acc225(124)=acc225(23)*Qspval6k2
      acc225(125)=acc225(28)*Qspvak2e7
      acc225(126)=acc225(44)*Qspvak2k7
      acc225(127)=acc225(55)*Qspk2
      acc225(128)=acc225(71)*Qspvak2l6
      acc225(129)=acc225(72)*Qspval5k2
      acc225(130)=acc225(96)*Qspvae7l5
      acc225(131)=acc225(97)*Qspk7
      acc225(132)=acc225(99)*Qspval6k7
      acc225(133)=acc225(100)*Qspvak7l5
      acc225(134)=acc225(105)*Qspvak7k2
      acc225(135)=acc225(110)*Qspe7
      acc225(136)=acc225(113)*Qspvae7k2
      acc225(137)=QspQ*acc225(104)
      brack=acc225(102)+acc225(115)+acc225(116)+acc225(117)+acc225(118)+acc225(&
      &119)+acc225(120)+acc225(121)+acc225(122)+acc225(123)+acc225(124)+acc225(&
      &125)+acc225(126)+acc225(127)+acc225(128)+acc225(129)+acc225(130)+acc225(&
      &131)+acc225(132)+acc225(133)+acc225(134)+acc225(135)+acc225(136)+acc225(&
      &137)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram225_sign, shift => diagram225_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd225h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d225
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d225 = 0.0_ki
      d225 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d225, ki), aimag(d225), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd225h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d225
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d225 = 0.0_ki
      d225 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d225, ki), aimag(d225), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d225h1l1
