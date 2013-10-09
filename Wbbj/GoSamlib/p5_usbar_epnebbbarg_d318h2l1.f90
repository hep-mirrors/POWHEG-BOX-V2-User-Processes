module     p5_usbar_epnebbbarg_d318h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d318h2l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd318h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc318(122)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspk7
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5l6
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      QspQ = dotproduct(Q,Q)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspk7 = dotproduct(Q,k7)
      Qspk2 = dotproduct(Q,k2)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      acc318(1)=abb318(11)
      acc318(2)=abb318(12)
      acc318(3)=abb318(13)
      acc318(4)=abb318(14)
      acc318(5)=abb318(15)
      acc318(6)=abb318(16)
      acc318(7)=abb318(17)
      acc318(8)=abb318(18)
      acc318(9)=abb318(19)
      acc318(10)=abb318(20)
      acc318(11)=abb318(21)
      acc318(12)=abb318(22)
      acc318(13)=abb318(23)
      acc318(14)=abb318(24)
      acc318(15)=abb318(25)
      acc318(16)=abb318(26)
      acc318(17)=abb318(27)
      acc318(18)=abb318(28)
      acc318(19)=abb318(29)
      acc318(20)=abb318(30)
      acc318(21)=abb318(31)
      acc318(22)=abb318(32)
      acc318(23)=abb318(33)
      acc318(24)=abb318(34)
      acc318(25)=abb318(35)
      acc318(26)=abb318(36)
      acc318(27)=abb318(37)
      acc318(28)=abb318(38)
      acc318(29)=abb318(39)
      acc318(30)=abb318(40)
      acc318(31)=abb318(41)
      acc318(32)=abb318(42)
      acc318(33)=abb318(43)
      acc318(34)=abb318(44)
      acc318(35)=abb318(45)
      acc318(36)=abb318(46)
      acc318(37)=abb318(47)
      acc318(38)=abb318(48)
      acc318(39)=abb318(49)
      acc318(40)=abb318(50)
      acc318(41)=abb318(51)
      acc318(42)=abb318(52)
      acc318(43)=abb318(54)
      acc318(44)=abb318(57)
      acc318(45)=abb318(58)
      acc318(46)=abb318(59)
      acc318(47)=abb318(63)
      acc318(48)=abb318(64)
      acc318(49)=abb318(65)
      acc318(50)=abb318(66)
      acc318(51)=abb318(67)
      acc318(52)=abb318(68)
      acc318(53)=abb318(71)
      acc318(54)=abb318(72)
      acc318(55)=abb318(73)
      acc318(56)=abb318(76)
      acc318(57)=abb318(78)
      acc318(58)=abb318(79)
      acc318(59)=abb318(80)
      acc318(60)=abb318(82)
      acc318(61)=abb318(86)
      acc318(62)=abb318(87)
      acc318(63)=abb318(89)
      acc318(64)=abb318(90)
      acc318(65)=abb318(91)
      acc318(66)=abb318(92)
      acc318(67)=abb318(93)
      acc318(68)=abb318(94)
      acc318(69)=abb318(95)
      acc318(70)=abb318(96)
      acc318(71)=abb318(99)
      acc318(72)=abb318(102)
      acc318(73)=abb318(103)
      acc318(74)=abb318(105)
      acc318(75)=abb318(107)
      acc318(76)=abb318(108)
      acc318(77)=abb318(110)
      acc318(78)=abb318(111)
      acc318(79)=abb318(113)
      acc318(80)=abb318(114)
      acc318(81)=abb318(115)
      acc318(82)=abb318(118)
      acc318(83)=abb318(120)
      acc318(84)=abb318(122)
      acc318(85)=abb318(123)
      acc318(86)=abb318(124)
      acc318(87)=abb318(125)
      acc318(88)=abb318(126)
      acc318(89)=abb318(127)
      acc318(90)=abb318(129)
      acc318(91)=abb318(130)
      acc318(92)=abb318(137)
      acc318(93)=abb318(138)
      acc318(94)=abb318(148)
      acc318(95)=abb318(151)
      acc318(96)=abb318(164)
      acc318(97)=abb318(166)
      acc318(98)=abb318(172)
      acc318(99)=abb318(174)
      acc318(100)=acc318(3)*Qspvak2k1
      acc318(101)=acc318(17)*Qspvak2l5
      acc318(102)=acc318(19)*QspQ
      acc318(103)=acc318(25)*Qspvak2l6
      acc318(104)=acc318(28)*Qspval5k2
      acc318(105)=acc318(43)*Qspvak4k1
      acc318(106)=acc318(47)*Qspvak2k3
      acc318(107)=acc318(50)*Qspvak4l6
      acc318(108)=acc318(52)*Qspl5
      acc318(109)=acc318(92)*Qspvak7l6
      acc318(110)=acc318(96)*Qspl6
      acc318(111)=acc318(98)*Qspvak2k7
      acc318(112)=Qspvak7k2*acc318(95)
      acc318(113)=Qspval5k7*acc318(22)
      acc318(114)=Qspval5k1*acc318(27)
      acc318(115)=Qspvak4k2*acc318(75)
      acc318(100)=acc318(106)+acc318(105)+acc318(100)+acc318(115)+acc318(114)+a&
      &cc318(113)+acc318(112)+acc318(111)+acc318(110)+acc318(109)+acc318(108)+a&
      &cc318(107)+acc318(104)+acc318(103)+acc318(102)+acc318(101)+acc318(8)
      acc318(100)=Qspe7*acc318(100)
      acc318(101)=acc318(5)*Qspvak2e7
      acc318(102)=acc318(11)*QspQ
      acc318(103)=acc318(14)*Qspvae7l6
      acc318(104)=acc318(15)*Qspk7
      acc318(105)=acc318(16)*Qspl5
      acc318(106)=acc318(20)*Qspvak2l6
      acc318(107)=Qspk2*Qspe7
      acc318(108)=acc318(24)*acc318(107)
      acc318(109)=acc318(29)*Qspval5e7
      acc318(110)=acc318(33)*Qspvak7l6
      acc318(111)=acc318(34)*Qspvae7k2
      acc318(112)=Qspval5l6*Qspe7
      acc318(113)=acc318(38)*acc318(112)
      acc318(114)=acc318(40)*Qspval5k2
      acc318(115)=acc318(41)*Qspvak2k7
      acc318(116)=acc318(42)*Qspvak2l5
      acc318(101)=acc318(116)+acc318(115)+acc318(114)+acc318(113)+acc318(111)+a&
      &cc318(110)+acc318(109)+acc318(108)+acc318(106)+acc318(105)+acc318(104)+a&
      &cc318(103)+acc318(102)+acc318(9)+acc318(101)
      acc318(101)=Qspvak2k1*acc318(101)
      acc318(102)=acc318(32)*Qspvak2e7
      acc318(103)=acc318(56)*acc318(112)
      acc318(104)=acc318(59)*Qspvak2l6
      acc318(105)=acc318(71)*Qspl5
      acc318(106)=acc318(73)*acc318(107)
      acc318(108)=acc318(77)*Qspvae7l6
      acc318(109)=acc318(84)*Qspval5e7
      acc318(110)=acc318(86)*Qspvak2l5
      acc318(111)=acc318(90)*Qspval5k2
      acc318(113)=acc318(91)*Qspvae7k2
      acc318(114)=acc318(93)*Qspvak7l6
      acc318(115)=acc318(99)*Qspvak2k7
      acc318(102)=acc318(115)+acc318(114)+acc318(113)+acc318(111)+acc318(110)+a&
      &cc318(109)+acc318(108)+acc318(106)+acc318(105)+acc318(104)+acc318(103)+a&
      &cc318(36)+acc318(102)
      acc318(102)=Qspvak4k1*acc318(102)
      acc318(103)=acc318(35)*Qspvak2e7
      acc318(104)=acc318(48)*Qspl5
      acc318(105)=acc318(57)*acc318(107)
      acc318(106)=acc318(63)*Qspvae7l6
      acc318(108)=acc318(68)*Qspval5e7
      acc318(109)=acc318(72)*Qspvae7k2
      acc318(110)=acc318(74)*Qspvak7l6
      acc318(111)=acc318(79)*Qspvak2l6
      acc318(113)=acc318(82)*Qspval5k2
      acc318(114)=acc318(85)*acc318(112)
      acc318(115)=acc318(87)*Qspvak2k7
      acc318(116)=acc318(88)*Qspvak2l5
      acc318(103)=acc318(116)+acc318(115)+acc318(114)+acc318(113)+acc318(111)+a&
      &cc318(110)+acc318(109)+acc318(108)+acc318(106)+acc318(105)+acc318(104)+a&
      &cc318(44)+acc318(103)
      acc318(103)=Qspvak2k3*acc318(103)
      acc318(104)=acc318(7)*Qspvak2e7
      acc318(105)=acc318(23)*Qspvak2k1
      acc318(106)=acc318(39)*Qspvae7l6
      acc318(108)=acc318(45)*Qspvak2l6
      acc318(109)=acc318(58)*Qspvak4l6
      acc318(110)=acc318(65)*Qspval5e7
      acc318(111)=acc318(78)*Qspvae7k2
      acc318(104)=acc318(105)+acc318(111)+acc318(110)+acc318(109)+acc318(108)+a&
      &cc318(106)+acc318(104)+acc318(4)
      acc318(104)=Qspk2*acc318(104)
      acc318(105)=acc318(21)*Qspvae7l6
      acc318(106)=acc318(26)*Qspval5e7
      acc318(108)=acc318(46)*Qspvak2l6
      acc318(109)=acc318(64)*Qspvae7k2
      acc318(110)=acc318(67)*Qspvak4l6
      acc318(111)=acc318(81)*Qspvak2e7
      acc318(105)=acc318(111)+acc318(110)+acc318(109)+acc318(108)+acc318(106)+a&
      &cc318(105)+acc318(12)
      acc318(105)=QspQ*acc318(105)
      acc318(106)=acc318(31)*Qspvae7l6
      acc318(108)=acc318(55)*Qspval5e7
      acc318(109)=-acc318(62)*Qspvak2l6
      acc318(110)=-acc318(70)*Qspvae7k2
      acc318(111)=-acc318(83)*Qspvak2e7
      acc318(106)=acc318(111)+acc318(110)+acc318(109)+acc318(106)+acc318(108)
      acc318(108)=Qspk7+Qspl5
      acc318(106)=acc318(108)*acc318(106)
      acc318(109)=acc318(37)*Qspvak2k1
      acc318(110)=acc318(60)*Qspvak4k1
      acc318(111)=acc318(76)*Qspvak2k3
      acc318(109)=acc318(111)+acc318(110)+acc318(49)+acc318(109)
      acc318(109)=Qspval5l6*acc318(109)
      acc318(108)=-acc318(66)*acc318(108)
      acc318(108)=acc318(54)+acc318(108)
      acc318(108)=Qspvak4l6*acc318(108)
      acc318(110)=acc318(1)*Qspvak2l5
      acc318(111)=acc318(2)*Qspvae7k2
      acc318(113)=acc318(6)*Qspval5k2
      acc318(114)=acc318(13)*Qspl5
      acc318(107)=acc318(18)*acc318(107)
      acc318(115)=acc318(30)*Qspvae7l6
      acc318(116)=acc318(51)*Qspvak2l6
      acc318(117)=acc318(53)*Qspk7
      acc318(118)=acc318(61)*Qspval5e7
      acc318(112)=acc318(69)*acc318(112)
      acc318(119)=acc318(80)*Qspvak2e7
      acc318(120)=acc318(89)*Qspvak7l6
      acc318(121)=acc318(94)*Qspl6
      acc318(122)=acc318(97)*Qspvak2k7
      brack=acc318(10)+acc318(100)+acc318(101)+acc318(102)+acc318(103)+acc318(1&
      &04)+acc318(105)+acc318(106)+acc318(107)+acc318(108)+acc318(109)+acc318(1&
      &10)+acc318(111)+acc318(112)+acc318(113)+acc318(114)+acc318(115)+acc318(1&
      &16)+acc318(117)+acc318(118)+acc318(119)+acc318(120)+acc318(121)+acc318(1&
      &22)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram318_sign, shift => diagram318_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd318h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d318
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d318 = 0.0_ki
      d318 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d318, ki), aimag(d318), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd318h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d318
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d318 = 0.0_ki
      d318 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d318, ki), aimag(d318), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d318h2l1
