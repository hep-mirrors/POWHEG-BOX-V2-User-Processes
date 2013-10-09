module     p5_usbar_epnebbbarg_d321h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d321h2l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd321h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc321(106)
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5e7
      Qspk2 = dotproduct(Q,k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5e7 = dotproduct(Q,spval5e7)
      acc321(1)=abb321(10)
      acc321(2)=abb321(11)
      acc321(3)=abb321(12)
      acc321(4)=abb321(13)
      acc321(5)=abb321(14)
      acc321(6)=abb321(15)
      acc321(7)=abb321(16)
      acc321(8)=abb321(17)
      acc321(9)=abb321(18)
      acc321(10)=abb321(19)
      acc321(11)=abb321(20)
      acc321(12)=abb321(21)
      acc321(13)=abb321(22)
      acc321(14)=abb321(23)
      acc321(15)=abb321(24)
      acc321(16)=abb321(25)
      acc321(17)=abb321(26)
      acc321(18)=abb321(27)
      acc321(19)=abb321(28)
      acc321(20)=abb321(29)
      acc321(21)=abb321(30)
      acc321(22)=abb321(31)
      acc321(23)=abb321(32)
      acc321(24)=abb321(33)
      acc321(25)=abb321(34)
      acc321(26)=abb321(35)
      acc321(27)=abb321(36)
      acc321(28)=abb321(37)
      acc321(29)=abb321(38)
      acc321(30)=abb321(39)
      acc321(31)=abb321(40)
      acc321(32)=abb321(41)
      acc321(33)=abb321(42)
      acc321(34)=abb321(43)
      acc321(35)=abb321(44)
      acc321(36)=abb321(45)
      acc321(37)=abb321(46)
      acc321(38)=abb321(47)
      acc321(39)=abb321(48)
      acc321(40)=abb321(49)
      acc321(41)=abb321(50)
      acc321(42)=abb321(51)
      acc321(43)=abb321(52)
      acc321(44)=abb321(54)
      acc321(45)=abb321(55)
      acc321(46)=abb321(57)
      acc321(47)=abb321(58)
      acc321(48)=abb321(59)
      acc321(49)=abb321(60)
      acc321(50)=abb321(62)
      acc321(51)=abb321(63)
      acc321(52)=abb321(64)
      acc321(53)=abb321(65)
      acc321(54)=abb321(66)
      acc321(55)=abb321(67)
      acc321(56)=abb321(68)
      acc321(57)=abb321(69)
      acc321(58)=abb321(70)
      acc321(59)=abb321(72)
      acc321(60)=abb321(77)
      acc321(61)=abb321(78)
      acc321(62)=abb321(79)
      acc321(63)=abb321(80)
      acc321(64)=abb321(81)
      acc321(65)=abb321(82)
      acc321(66)=abb321(90)
      acc321(67)=abb321(96)
      acc321(68)=abb321(97)
      acc321(69)=abb321(98)
      acc321(70)=abb321(106)
      acc321(71)=abb321(109)
      acc321(72)=abb321(110)
      acc321(73)=abb321(112)
      acc321(74)=abb321(115)
      acc321(75)=abb321(117)
      acc321(76)=abb321(125)
      acc321(77)=abb321(135)
      acc321(78)=abb321(138)
      acc321(79)=abb321(154)
      acc321(80)=abb321(164)
      acc321(81)=abb321(168)
      acc321(82)=abb321(182)
      acc321(83)=abb321(184)
      acc321(84)=abb321(186)
      acc321(85)=abb321(201)
      acc321(86)=Qspk2*acc321(43)
      acc321(87)=Qspval5l6*acc321(67)
      acc321(86)=acc321(83)+acc321(86)-acc321(87)
      acc321(87)=-Qspk1+Qspk4+Qspk3
      acc321(86)=-acc321(86)*acc321(87)
      acc321(88)=Qspk2*acc321(35)
      acc321(89)=Qspval5l6*acc321(9)
      acc321(88)=acc321(89)+acc321(6)+acc321(88)
      acc321(88)=Qspvak2k1*acc321(88)
      acc321(89)=Qspk2*acc321(33)
      acc321(90)=Qspval5l6*acc321(4)
      acc321(89)=acc321(90)+acc321(1)+acc321(89)
      acc321(89)=Qspvak4k1*acc321(89)
      acc321(90)=Qspk2*acc321(70)
      acc321(91)=Qspval5l6*acc321(76)
      acc321(90)=acc321(91)+acc321(42)+acc321(90)
      acc321(90)=Qspvak4k3*acc321(90)
      acc321(91)=Qspl5*acc321(82)
      acc321(92)=Qspl6*acc321(46)
      acc321(93)=Qspvak2l5*acc321(53)
      acc321(94)=Qspvak2k3*acc321(19)
      acc321(95)=Qspvak2l6*acc321(40)
      acc321(96)=Qspvak4l6*acc321(39)
      acc321(97)=Qspk2*acc321(17)
      acc321(98)=Qspvak2k7*acc321(20)
      acc321(99)=Qspval5l6*acc321(50)
      acc321(100)=Qspvak7l6*acc321(63)
      acc321(101)=Qspk7*acc321(74)
      acc321(102)=QspQ*acc321(32)
      acc321(86)=acc321(102)+acc321(90)+acc321(89)+acc321(88)+acc321(101)+acc32&
      &1(100)+acc321(99)+acc321(98)+acc321(97)+acc321(96)+acc321(95)+acc321(94)&
      &+acc321(93)+acc321(92)+acc321(7)+acc321(91)+acc321(86)
      acc321(86)=Qspe7*acc321(86)
      acc321(88)=-acc321(52)*acc321(87)
      acc321(89)=Qspvak2k3*acc321(57)
      acc321(90)=Qspvak2l6*acc321(31)
      acc321(91)=Qspvak4l6*acc321(62)
      acc321(92)=Qspvak2e7*acc321(48)
      acc321(93)=Qspvae7l6*acc321(64)
      acc321(94)=Qspvak2k1*acc321(28)
      acc321(95)=Qspvak4k1*acc321(34)
      acc321(96)=Qspvak4k3*acc321(60)
      acc321(88)=acc321(96)+acc321(95)+acc321(94)+acc321(93)+acc321(92)+acc321(&
      &91)+acc321(90)+acc321(11)+acc321(89)+acc321(88)
      acc321(88)=QspQ*acc321(88)
      acc321(89)=Qspvae7k2*acc321(49)
      acc321(90)=Qspval5e7*acc321(73)
      acc321(91)=Qspvak2k7*acc321(12)
      acc321(92)=Qspvak7l6*acc321(2)
      acc321(93)=Qspvak2e7*acc321(68)
      acc321(94)=Qspvae7l6*acc321(71)
      acc321(95)=Qspk7*acc321(85)
      acc321(89)=acc321(84)-acc321(93)-acc321(92)+acc321(91)+acc321(89)-acc321(&
      &90)+acc321(94)-acc321(95)
      acc321(87)=acc321(89)*acc321(87)
      acc321(89)=Qspvae7k2*acc321(14)
      acc321(90)=Qspval5e7*acc321(37)
      acc321(91)=Qspvak2k7*acc321(29)
      acc321(92)=Qspvak7l6*acc321(38)
      acc321(93)=Qspvak2e7*acc321(24)
      acc321(94)=Qspvae7l6*acc321(30)
      acc321(95)=Qspk7*acc321(21)
      acc321(89)=acc321(95)+acc321(94)+acc321(93)+acc321(92)+acc321(91)+acc321(&
      &90)+acc321(16)+acc321(89)
      acc321(89)=Qspvak2k1*acc321(89)
      acc321(90)=Qspvae7k2*acc321(13)
      acc321(91)=Qspval5e7*acc321(44)
      acc321(92)=Qspvak2k7*acc321(3)
      acc321(93)=Qspvak7l6*acc321(61)
      acc321(94)=Qspvak2e7*acc321(54)
      acc321(95)=Qspvae7l6*acc321(36)
      acc321(96)=Qspk7*acc321(23)
      acc321(90)=acc321(96)+acc321(95)+acc321(94)+acc321(93)+acc321(92)+acc321(&
      &91)+acc321(26)+acc321(90)
      acc321(90)=Qspvak4k1*acc321(90)
      acc321(91)=Qspvae7k2*acc321(65)
      acc321(92)=Qspval5e7*acc321(78)
      acc321(93)=Qspvak2k7*acc321(10)
      acc321(94)=Qspvak7l6*acc321(55)
      acc321(95)=Qspvak2e7*acc321(51)
      acc321(96)=Qspvae7l6*acc321(77)
      acc321(97)=Qspk7*acc321(75)
      acc321(91)=acc321(97)+acc321(96)+acc321(95)+acc321(94)+acc321(93)+acc321(&
      &92)+acc321(41)+acc321(91)
      acc321(91)=Qspvak4k3*acc321(91)
      acc321(92)=Qspvak2e7*acc321(59)
      acc321(93)=Qspvae7l6*acc321(66)
      acc321(92)=acc321(93)+acc321(25)+acc321(92)
      acc321(92)=Qspk7*acc321(92)
      acc321(93)=Qspl5*acc321(79)
      acc321(94)=Qspl6*acc321(80)
      acc321(95)=Qspvak2l5*acc321(45)
      acc321(96)=Qspvak2k3*acc321(18)
      acc321(97)=Qspvak2l6*acc321(27)
      acc321(98)=Qspvak4l6*acc321(15)
      acc321(99)=Qspvae7k2*acc321(8)
      acc321(100)=Qspval5e7*acc321(72)
      acc321(101)=Qspk2*acc321(81)
      acc321(102)=Qspvak2k7*acc321(22)
      acc321(103)=Qspval5l6*acc321(69)
      acc321(104)=Qspvak7l6*acc321(56)
      acc321(105)=Qspvak2e7*acc321(47)
      acc321(106)=Qspvae7l6*acc321(58)
      brack=acc321(5)+acc321(86)+acc321(87)+acc321(88)+acc321(89)+acc321(90)+ac&
      &c321(91)+acc321(92)+acc321(93)+acc321(94)+acc321(95)+acc321(96)+acc321(9&
      &7)+acc321(98)+acc321(99)+acc321(100)+acc321(101)+acc321(102)+acc321(103)&
      &+acc321(104)+acc321(105)+acc321(106)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram321_sign, shift => diagram321_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd321h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d321
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d321 = 0.0_ki
      d321 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d321, ki), aimag(d321), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd321h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d321
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d321 = 0.0_ki
      d321 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d321, ki), aimag(d321), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d321h2l1
