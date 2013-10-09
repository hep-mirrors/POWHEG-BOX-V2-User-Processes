module     p5_usbar_epnebbbarg_d240h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d240h3l1.f90
   ! generator: buildfortran.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd240h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc240(130)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak4k2
      complex(ki) :: QspQ
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      QspQ = dotproduct(Q,Q)
      acc240(1)=abb240(14)
      acc240(2)=abb240(15)
      acc240(3)=abb240(16)
      acc240(4)=abb240(17)
      acc240(5)=abb240(18)
      acc240(6)=abb240(19)
      acc240(7)=abb240(20)
      acc240(8)=abb240(21)
      acc240(9)=abb240(22)
      acc240(10)=abb240(23)
      acc240(11)=abb240(24)
      acc240(12)=abb240(25)
      acc240(13)=abb240(26)
      acc240(14)=abb240(27)
      acc240(15)=abb240(28)
      acc240(16)=abb240(29)
      acc240(17)=abb240(30)
      acc240(18)=abb240(31)
      acc240(19)=abb240(32)
      acc240(20)=abb240(33)
      acc240(21)=abb240(34)
      acc240(22)=abb240(35)
      acc240(23)=abb240(37)
      acc240(24)=abb240(39)
      acc240(25)=abb240(40)
      acc240(26)=abb240(41)
      acc240(27)=abb240(42)
      acc240(28)=abb240(43)
      acc240(29)=abb240(44)
      acc240(30)=abb240(45)
      acc240(31)=abb240(46)
      acc240(32)=abb240(47)
      acc240(33)=abb240(48)
      acc240(34)=abb240(49)
      acc240(35)=abb240(52)
      acc240(36)=abb240(53)
      acc240(37)=abb240(54)
      acc240(38)=abb240(55)
      acc240(39)=abb240(56)
      acc240(40)=abb240(58)
      acc240(41)=abb240(59)
      acc240(42)=abb240(60)
      acc240(43)=abb240(61)
      acc240(44)=abb240(62)
      acc240(45)=abb240(63)
      acc240(46)=abb240(65)
      acc240(47)=abb240(67)
      acc240(48)=abb240(68)
      acc240(49)=abb240(69)
      acc240(50)=abb240(70)
      acc240(51)=abb240(71)
      acc240(52)=abb240(74)
      acc240(53)=abb240(78)
      acc240(54)=abb240(79)
      acc240(55)=abb240(82)
      acc240(56)=abb240(83)
      acc240(57)=abb240(86)
      acc240(58)=abb240(87)
      acc240(59)=abb240(89)
      acc240(60)=abb240(92)
      acc240(61)=abb240(97)
      acc240(62)=abb240(100)
      acc240(63)=abb240(103)
      acc240(64)=abb240(104)
      acc240(65)=abb240(105)
      acc240(66)=abb240(108)
      acc240(67)=abb240(113)
      acc240(68)=abb240(117)
      acc240(69)=abb240(119)
      acc240(70)=abb240(122)
      acc240(71)=abb240(130)
      acc240(72)=abb240(133)
      acc240(73)=abb240(134)
      acc240(74)=abb240(137)
      acc240(75)=abb240(163)
      acc240(76)=abb240(166)
      acc240(77)=abb240(172)
      acc240(78)=abb240(174)
      acc240(79)=abb240(178)
      acc240(80)=abb240(183)
      acc240(81)=abb240(185)
      acc240(82)=abb240(188)
      acc240(83)=abb240(189)
      acc240(84)=abb240(211)
      acc240(85)=abb240(233)
      acc240(86)=abb240(235)
      acc240(87)=abb240(242)
      acc240(88)=abb240(244)
      acc240(89)=abb240(245)
      acc240(90)=abb240(247)
      acc240(91)=abb240(271)
      acc240(92)=abb240(301)
      acc240(93)=abb240(302)
      acc240(94)=abb240(358)
      acc240(95)=abb240(387)
      acc240(96)=abb240(405)
      acc240(97)=abb240(496)
      acc240(98)=abb240(514)
      acc240(99)=abb240(521)
      acc240(100)=acc240(15)*Qspvak2l5
      acc240(101)=acc240(30)*Qspk2
      acc240(102)=acc240(34)*Qspvak2k7
      acc240(103)=acc240(36)*Qspvae7l6
      acc240(104)=acc240(41)*Qspe7
      acc240(105)=acc240(44)*Qspvak2e7
      acc240(106)=acc240(57)*Qspl6
      acc240(107)=acc240(58)*Qspvak7l6
      acc240(108)=acc240(61)*Qspvae7l5
      acc240(109)=acc240(67)*Qspvak2l6
      acc240(110)=acc240(70)*Qspk7
      acc240(111)=acc240(73)*Qspl5
      acc240(112)=acc240(74)*Qspval5l6
      acc240(113)=acc240(82)*Qspval6l5
      acc240(114)=acc240(83)*Qspvak7l5
      acc240(100)=acc240(114)+acc240(113)+acc240(112)+acc240(111)+acc240(110)+a&
      &cc240(109)+acc240(108)+acc240(107)+acc240(106)+acc240(105)+acc240(104)+a&
      &cc240(103)+acc240(102)+acc240(101)+acc240(28)+acc240(100)
      acc240(100)=Qspvak4k1*acc240(100)
      acc240(101)=acc240(6)*Qspe7
      acc240(102)=acc240(12)*Qspl5
      acc240(103)=acc240(18)*Qspvak2e7
      acc240(104)=acc240(19)*Qspvak2l6
      acc240(105)=acc240(20)*Qspk2
      acc240(106)=acc240(22)*Qspvak2l5
      acc240(107)=acc240(23)*Qspvae7l5
      acc240(108)=acc240(24)*Qspvae7l6
      acc240(109)=acc240(26)*Qspvak7l6
      acc240(110)=acc240(31)*Qspvak2k7
      acc240(111)=acc240(32)*Qspl6
      acc240(112)=acc240(35)*Qspval5l6
      acc240(113)=acc240(37)*Qspvak7l5
      acc240(114)=acc240(42)*Qspval6l5
      acc240(115)=acc240(53)*Qspk7
      acc240(101)=acc240(115)+acc240(114)+acc240(113)+acc240(112)+acc240(111)+a&
      &cc240(110)+acc240(109)+acc240(108)+acc240(107)+acc240(106)+acc240(105)+a&
      &cc240(104)+acc240(103)+acc240(102)+acc240(101)+acc240(3)
      acc240(101)=Qspvak2k1*acc240(101)
      acc240(102)=-Qspl5+Qspk7-Qspl6
      acc240(102)=acc240(16)*acc240(102)
      acc240(103)=acc240(10)*Qspvak2e7
      acc240(104)=acc240(38)*Qspvak2l6
      acc240(105)=acc240(43)*Qspk2
      acc240(106)=acc240(48)*Qspe7
      acc240(107)=acc240(52)*Qspval6l5
      acc240(108)=acc240(54)*Qspvae7l6
      acc240(109)=acc240(56)*Qspvae7l5
      acc240(110)=acc240(62)*Qspval5l6
      acc240(111)=acc240(63)*Qspvak2l5
      acc240(112)=acc240(64)*Qspvak2k7
      acc240(113)=acc240(65)*Qspvak7l6
      acc240(114)=acc240(69)*Qspvak7l5
      acc240(102)=acc240(102)+acc240(114)+acc240(113)+acc240(112)+acc240(111)+a&
      &cc240(110)+acc240(109)+acc240(108)+acc240(107)+acc240(106)+acc240(105)+a&
      &cc240(40)+acc240(104)+acc240(103)
      acc240(102)=Qspvak2k3*acc240(102)
      acc240(103)=acc240(4)*Qspvak2l5
      acc240(104)=-acc240(17)*Qspvak2l6
      acc240(105)=acc240(50)*Qspval5l6
      acc240(106)=acc240(68)*Qspvak2k7
      acc240(107)=acc240(76)*Qspvae7l6
      acc240(108)=acc240(78)*Qspvak2e7
      acc240(109)=acc240(84)*Qspk2
      acc240(110)=-acc240(86)*Qspvak7l6
      acc240(111)=acc240(96)*Qspe7
      acc240(112)=-acc240(97)*Qspk7
      acc240(113)=acc240(98)*Qspl6
      acc240(114)=acc240(99)*Qspl5
      acc240(103)=acc240(114)+acc240(113)+acc240(112)+acc240(111)+acc240(110)+a&
      &cc240(109)+acc240(108)+acc240(107)+acc240(106)+acc240(60)+acc240(105)+ac&
      &c240(104)+acc240(103)
      acc240(104)=-Qspk4+Qspk1-Qspk3
      acc240(103)=acc240(104)*acc240(103)
      acc240(104)=acc240(14)*Qspvak2l5
      acc240(105)=acc240(45)*Qspl6
      acc240(106)=acc240(55)*Qspvak2l6
      acc240(107)=acc240(66)*Qspvak2e7
      acc240(108)=acc240(71)*Qspvak2k7
      acc240(109)=acc240(79)*Qspe7
      acc240(110)=acc240(85)*Qspl5
      acc240(111)=acc240(88)*Qspval5l6
      acc240(112)=acc240(89)*Qspvak7l6
      acc240(113)=acc240(90)*Qspk7
      acc240(114)=acc240(91)*Qspk2
      acc240(115)=acc240(92)*Qspvae7l6
      acc240(104)=acc240(115)+acc240(114)+acc240(113)+acc240(112)+acc240(111)+a&
      &cc240(110)+acc240(109)+acc240(108)+acc240(107)+acc240(106)+acc240(49)+ac&
      &c240(105)+acc240(104)
      acc240(104)=Qspvak4k3*acc240(104)
      acc240(105)=acc240(1)*Qspvak2l5
      acc240(106)=acc240(2)*Qspvak2l6
      acc240(107)=acc240(7)*Qspk2
      acc240(108)=acc240(8)*Qspval5l6
      acc240(109)=acc240(9)*Qspk7
      acc240(110)=acc240(11)*Qspe7
      acc240(111)=acc240(25)*Qspl5
      acc240(112)=acc240(29)*Qspvak2k7
      acc240(113)=acc240(33)*Qspval6l5
      acc240(114)=acc240(39)*Qspl6
      acc240(115)=acc240(51)*Qspvae7l6
      acc240(116)=acc240(59)*Qspvak2e7
      acc240(117)=acc240(72)*Qspvak7l6
      acc240(118)=acc240(87)*Qspvae7l5
      acc240(119)=acc240(93)*Qspvak7l5
      acc240(120)=Qspvak7k3*acc240(95)
      acc240(121)=Qspvak7k1*acc240(47)
      acc240(122)=Qspval6k3*acc240(94)
      acc240(123)=Qspval6k1*acc240(27)
      acc240(124)=Qspval5k3*acc240(77)
      acc240(125)=Qspval5k1*acc240(81)
      acc240(126)=Qspvak4k7*acc240(75)
      acc240(127)=Qspvak4l6*acc240(80)
      acc240(128)=Qspvak4l5*acc240(21)
      acc240(129)=Qspvak4k2*acc240(46)
      acc240(130)=QspQ*acc240(13)
      brack=acc240(5)+acc240(100)+acc240(101)+acc240(102)+acc240(103)+acc240(10&
      &4)+acc240(105)+acc240(106)+acc240(107)+acc240(108)+acc240(109)+acc240(11&
      &0)+acc240(111)+acc240(112)+acc240(113)+acc240(114)+acc240(115)+acc240(11&
      &6)+acc240(117)+acc240(118)+acc240(119)+acc240(120)+acc240(121)+acc240(12&
      &2)+acc240(123)+acc240(124)+acc240(125)+acc240(126)+acc240(127)+acc240(12&
      &8)+acc240(129)+acc240(130)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram240_sign, shift => diagram240_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd240h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d240
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d240 = 0.0_ki
      d240 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d240, ki), aimag(d240), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd240h3
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
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d240h3l1
