module     p5_usbar_epnebbbarg_d145h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d145h3l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd145h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc145(106)
      complex(ki) :: Qspvak2k7
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvae7k3
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval5k3
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspk2 = dotproduct(Q,k2)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      acc145(1)=abb145(36)
      acc145(2)=abb145(37)
      acc145(3)=abb145(38)
      acc145(4)=abb145(39)
      acc145(5)=abb145(40)
      acc145(6)=abb145(41)
      acc145(7)=abb145(42)
      acc145(8)=abb145(43)
      acc145(9)=abb145(44)
      acc145(10)=abb145(45)
      acc145(11)=abb145(46)
      acc145(12)=abb145(47)
      acc145(13)=abb145(48)
      acc145(14)=abb145(49)
      acc145(15)=abb145(50)
      acc145(16)=abb145(52)
      acc145(17)=abb145(53)
      acc145(18)=abb145(54)
      acc145(19)=abb145(55)
      acc145(20)=abb145(56)
      acc145(21)=abb145(57)
      acc145(22)=abb145(58)
      acc145(23)=abb145(59)
      acc145(24)=abb145(60)
      acc145(25)=abb145(62)
      acc145(26)=abb145(63)
      acc145(27)=abb145(64)
      acc145(28)=abb145(65)
      acc145(29)=abb145(66)
      acc145(30)=abb145(69)
      acc145(31)=abb145(70)
      acc145(32)=abb145(72)
      acc145(33)=abb145(73)
      acc145(34)=abb145(74)
      acc145(35)=abb145(75)
      acc145(36)=abb145(77)
      acc145(37)=abb145(81)
      acc145(38)=abb145(82)
      acc145(39)=abb145(83)
      acc145(40)=abb145(84)
      acc145(41)=abb145(86)
      acc145(42)=abb145(87)
      acc145(43)=abb145(88)
      acc145(44)=abb145(89)
      acc145(45)=abb145(90)
      acc145(46)=abb145(92)
      acc145(47)=abb145(93)
      acc145(48)=abb145(95)
      acc145(49)=abb145(96)
      acc145(50)=abb145(97)
      acc145(51)=abb145(113)
      acc145(52)=abb145(120)
      acc145(53)=abb145(122)
      acc145(54)=abb145(127)
      acc145(55)=abb145(128)
      acc145(56)=abb145(132)
      acc145(57)=abb145(133)
      acc145(58)=abb145(135)
      acc145(59)=abb145(142)
      acc145(60)=abb145(146)
      acc145(61)=abb145(150)
      acc145(62)=abb145(154)
      acc145(63)=abb145(157)
      acc145(64)=abb145(163)
      acc145(65)=abb145(165)
      acc145(66)=abb145(175)
      acc145(67)=abb145(177)
      acc145(68)=abb145(179)
      acc145(69)=abb145(180)
      acc145(70)=abb145(185)
      acc145(71)=abb145(191)
      acc145(72)=abb145(193)
      acc145(73)=abb145(196)
      acc145(74)=abb145(198)
      acc145(75)=abb145(207)
      acc145(76)=abb145(225)
      acc145(77)=abb145(227)
      acc145(78)=abb145(231)
      acc145(79)=abb145(234)
      acc145(80)=abb145(237)
      acc145(81)=abb145(242)
      acc145(82)=abb145(257)
      acc145(83)=acc145(21)*Qspvak2k7
      acc145(84)=acc145(42)*QspQ
      acc145(85)=acc145(56)*Qspk7
      acc145(86)=acc145(58)*Qspvak4e7
      acc145(87)=acc145(62)*Qspvak7k1
      acc145(88)=acc145(66)*Qspvak4k7
      acc145(89)=acc145(74)*Qspk2
      acc145(90)=acc145(76)*Qspvae7k3
      acc145(91)=acc145(77)*Qspvak2e7
      acc145(92)=acc145(79)*Qspvak7k3
      acc145(93)=acc145(81)*Qspvae7k1
      acc145(83)=acc145(93)+acc145(92)+acc145(91)+acc145(90)+acc145(89)+acc145(&
      &88)+acc145(87)+acc145(86)+acc145(85)+acc145(84)+acc145(83)+acc145(18)
      acc145(83)=Qspvak2l6*acc145(83)
      acc145(84)=acc145(1)*Qspvak2k7
      acc145(85)=acc145(12)*Qspk7
      acc145(86)=acc145(20)*Qspk2
      acc145(87)=acc145(23)*QspQ
      acc145(88)=acc145(24)*Qspvak4e7
      acc145(89)=acc145(27)*Qspvae7k3
      acc145(90)=acc145(31)*Qspvak2e7
      acc145(91)=acc145(36)*Qspvak4k7
      acc145(92)=acc145(38)*Qspvae7k1
      acc145(93)=acc145(41)*Qspvak7k3
      acc145(94)=acc145(43)*Qspvak7k1
      acc145(84)=acc145(94)+acc145(93)+acc145(92)+acc145(91)+acc145(90)+acc145(&
      &89)+acc145(88)+acc145(87)+acc145(86)+acc145(85)+acc145(4)+acc145(84)
      acc145(84)=Qspvak2l5*acc145(84)
      acc145(85)=acc145(14)*Qspvak2k1
      acc145(86)=acc145(25)*Qspvak2e7
      acc145(87)=acc145(29)*Qspe7
      acc145(88)=acc145(40)*Qspvak4l5
      acc145(89)=acc145(44)*Qspvak4e7
      acc145(90)=acc145(47)*Qspvak2k3
      acc145(91)=acc145(52)*Qspvak4l6
      acc145(92)=acc145(54)*Qspvae7k1
      acc145(85)=acc145(92)+acc145(91)+acc145(90)+acc145(89)+acc145(88)+acc145(&
      &87)+acc145(86)+acc145(19)+acc145(85)
      acc145(85)=QspQ*acc145(85)
      acc145(86)=acc145(8)*Qspvak4l5
      acc145(87)=acc145(37)*Qspvak4l6
      acc145(88)=acc145(39)*Qspk2
      acc145(89)=acc145(57)*Qspk7
      acc145(90)=acc145(70)*Qspval5k1
      acc145(91)=acc145(78)*Qspval6k1
      acc145(86)=acc145(91)+acc145(90)+acc145(89)+acc145(88)+acc145(87)+acc145(&
      &15)+acc145(86)
      acc145(86)=Qspe7*acc145(86)
      acc145(87)=Qspl5+Qspl6
      acc145(88)=acc145(87)-Qspk7
      acc145(89)=acc145(88)-QspQ
      acc145(90)=acc145(22)*acc145(89)
      acc145(91)=Qspvak2l5*Qspe7
      acc145(92)=-acc145(13)*acc145(91)
      acc145(93)=acc145(59)*Qspk2
      acc145(94)=Qspvak2l6*Qspe7
      acc145(95)=-acc145(72)*acc145(94)
      acc145(90)=acc145(95)+acc145(93)+acc145(92)+acc145(64)+acc145(90)
      acc145(92)=-Qspk4+Qspk1-Qspk3
      acc145(90)=acc145(92)*acc145(90)
      acc145(92)=acc145(9)*Qspvak2k1
      acc145(93)=acc145(10)*Qspvak4k1
      acc145(95)=acc145(45)*Qspvak4k3
      acc145(96)=acc145(48)*Qspvak2k3
      acc145(92)=acc145(96)+acc145(95)+acc145(93)+acc145(92)+acc145(5)
      acc145(91)=acc145(91)*acc145(92)
      acc145(92)=acc145(17)*Qspvak2k1
      acc145(93)=acc145(46)*Qspvak4k1
      acc145(95)=acc145(50)*Qspvak2k3
      acc145(96)=acc145(80)*Qspvak4k3
      acc145(92)=acc145(96)+acc145(95)+acc145(93)+acc145(26)+acc145(92)
      acc145(92)=acc145(94)*acc145(92)
      acc145(93)=-acc145(6)*Qspvak2l5
      acc145(94)=-acc145(34)*Qspvak2l6
      acc145(95)=-acc145(82)*Qspe7
      acc145(93)=acc145(95)+acc145(49)+acc145(94)+acc145(93)
      acc145(87)=acc145(87)*acc145(93)
      acc145(93)=acc145(3)*Qspvak2k1
      acc145(94)=acc145(53)*Qspvak4k1
      acc145(95)=acc145(60)*Qspvak4k3
      acc145(93)=acc145(95)+acc145(94)+acc145(93)+acc145(2)
      acc145(93)=Qspk2*acc145(93)
      acc145(88)=acc145(32)*acc145(88)
      acc145(94)=acc145(16)*Qspe7
      acc145(88)=acc145(94)+acc145(35)+acc145(88)
      acc145(88)=Qspvak2k1*acc145(88)
      acc145(94)=-acc145(51)*Qspvak4k1
      acc145(95)=-acc145(65)*Qspvak4k3
      acc145(94)=acc145(95)+acc145(94)
      acc145(89)=acc145(89)*acc145(94)
      acc145(94)=acc145(7)*Qspvak4k1
      acc145(95)=acc145(28)*Qspvak2k7
      acc145(96)=acc145(30)*Qspvak2k3
      acc145(97)=acc145(33)*Qspk7
      acc145(98)=acc145(55)*Qspvak4k7
      acc145(99)=acc145(61)*Qspvak7k1
      acc145(100)=acc145(63)*Qspvak4l6
      acc145(101)=acc145(68)*Qspvak4k3
      acc145(102)=acc145(69)*Qspvak4l5
      acc145(103)=acc145(71)*Qspval5k1
      acc145(104)=acc145(75)*Qspval6k1
      acc145(105)=Qspval6k3*acc145(73)
      acc145(106)=Qspval5k3*acc145(67)
      brack=acc145(11)+acc145(83)+acc145(84)+acc145(85)+acc145(86)+acc145(87)+a&
      &cc145(88)+acc145(89)+acc145(90)+acc145(91)+acc145(92)+acc145(93)+acc145(&
      &94)+acc145(95)+acc145(96)+acc145(97)+acc145(98)+acc145(99)+acc145(100)+a&
      &cc145(101)+acc145(102)+acc145(103)+acc145(104)+acc145(105)+acc145(106)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram145_sign, shift => diagram145_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd145h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d145
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d145 = 0.0_ki
      d145 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d145, ki), aimag(d145), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd145h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d145
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d145 = 0.0_ki
      d145 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d145, ki), aimag(d145), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d145h3l1
