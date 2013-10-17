module     p5_usbar_epnebbbarg_d308h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d308h1l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd308h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc308(105)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval6k7
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak2e7
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk2 = dotproduct(Q,k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspl6 = dotproduct(Q,l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      acc308(1)=abb308(8)
      acc308(2)=abb308(9)
      acc308(3)=abb308(10)
      acc308(4)=abb308(11)
      acc308(5)=abb308(12)
      acc308(6)=abb308(13)
      acc308(7)=abb308(14)
      acc308(8)=abb308(15)
      acc308(9)=abb308(16)
      acc308(10)=abb308(17)
      acc308(11)=abb308(18)
      acc308(12)=abb308(19)
      acc308(13)=abb308(20)
      acc308(14)=abb308(21)
      acc308(15)=abb308(22)
      acc308(16)=abb308(23)
      acc308(17)=abb308(24)
      acc308(18)=abb308(25)
      acc308(19)=abb308(26)
      acc308(20)=abb308(27)
      acc308(21)=abb308(28)
      acc308(22)=abb308(29)
      acc308(23)=abb308(30)
      acc308(24)=abb308(31)
      acc308(25)=abb308(32)
      acc308(26)=abb308(33)
      acc308(27)=abb308(34)
      acc308(28)=abb308(35)
      acc308(29)=abb308(36)
      acc308(30)=abb308(37)
      acc308(31)=abb308(38)
      acc308(32)=abb308(39)
      acc308(33)=abb308(40)
      acc308(34)=abb308(41)
      acc308(35)=abb308(42)
      acc308(36)=abb308(43)
      acc308(37)=abb308(44)
      acc308(38)=abb308(45)
      acc308(39)=abb308(46)
      acc308(40)=abb308(47)
      acc308(41)=abb308(48)
      acc308(42)=abb308(49)
      acc308(43)=abb308(50)
      acc308(44)=abb308(51)
      acc308(45)=abb308(52)
      acc308(46)=abb308(53)
      acc308(47)=abb308(54)
      acc308(48)=abb308(55)
      acc308(49)=abb308(56)
      acc308(50)=abb308(57)
      acc308(51)=abb308(58)
      acc308(52)=abb308(59)
      acc308(53)=abb308(60)
      acc308(54)=abb308(61)
      acc308(55)=abb308(65)
      acc308(56)=abb308(66)
      acc308(57)=abb308(67)
      acc308(58)=abb308(68)
      acc308(59)=abb308(71)
      acc308(60)=abb308(73)
      acc308(61)=abb308(74)
      acc308(62)=abb308(75)
      acc308(63)=abb308(77)
      acc308(64)=abb308(79)
      acc308(65)=abb308(80)
      acc308(66)=abb308(83)
      acc308(67)=abb308(84)
      acc308(68)=abb308(86)
      acc308(69)=abb308(88)
      acc308(70)=abb308(89)
      acc308(71)=abb308(90)
      acc308(72)=abb308(91)
      acc308(73)=abb308(93)
      acc308(74)=abb308(95)
      acc308(75)=abb308(96)
      acc308(76)=abb308(98)
      acc308(77)=abb308(99)
      acc308(78)=abb308(100)
      acc308(79)=abb308(102)
      acc308(80)=abb308(104)
      acc308(81)=abb308(105)
      acc308(82)=abb308(106)
      acc308(83)=abb308(107)
      acc308(84)=abb308(108)
      acc308(85)=abb308(110)
      acc308(86)=Qspvak2l5*acc308(44)
      acc308(87)=Qspk2*acc308(70)
      acc308(88)=Qspval6l5*acc308(79)
      acc308(86)=acc308(10)+acc308(88)+acc308(86)+acc308(87)
      acc308(87)=-Qspk1+Qspk4+Qspk3
      acc308(86)=acc308(86)*acc308(87)
      acc308(88)=Qspvak2l5*acc308(25)
      acc308(89)=Qspk2*acc308(26)
      acc308(90)=Qspval6l5*acc308(6)
      acc308(88)=acc308(90)+acc308(89)+acc308(2)+acc308(88)
      acc308(88)=Qspvak4k1*acc308(88)
      acc308(89)=Qspvak2l5*acc308(50)
      acc308(90)=Qspk2*acc308(67)
      acc308(91)=Qspval6l5*acc308(71)
      acc308(89)=acc308(91)+acc308(90)+acc308(51)+acc308(89)
      acc308(89)=Qspvak4k3*acc308(89)
      acc308(90)=-acc308(48)*Qspval6k3
      acc308(91)=acc308(45)*Qspval6k1
      acc308(90)=acc308(91)+acc308(42)+acc308(90)
      acc308(90)=Qspvak2l5*acc308(90)
      acc308(91)=acc308(48)*Qspvak2k3
      acc308(92)=-acc308(45)*Qspvak2k1
      acc308(91)=acc308(92)+acc308(46)+acc308(91)
      acc308(91)=Qspval6l5*acc308(91)
      acc308(92)=Qspvak2k1*acc308(43)
      acc308(93)=Qspvak2k3*acc308(54)
      acc308(94)=Qspvak2l6*acc308(14)
      acc308(95)=Qspvak2k7*acc308(9)
      acc308(96)=Qspval6k7*acc308(47)
      acc308(97)=QspQ*acc308(27)
      acc308(98)=Qspk7*acc308(57)
      acc308(99)=Qspk2*acc308(63)
      acc308(86)=acc308(89)+acc308(88)+acc308(91)+acc308(99)+acc308(90)+acc308(&
      &98)+acc308(97)+acc308(96)+acc308(95)+acc308(94)+acc308(93)+acc308(1)+acc&
      &308(92)+acc308(86)
      acc308(86)=Qspe7*acc308(86)
      acc308(88)=-acc308(33)*Qspvak1k2
      acc308(89)=Qspvak4k2*acc308(24)
      acc308(90)=Qspvae7k2*acc308(12)
      acc308(91)=Qspl6*acc308(11)
      acc308(92)=Qspval6k7*acc308(4)
      acc308(93)=Qspvak7k2*acc308(15)
      acc308(94)=Qspval6k2*acc308(16)
      acc308(95)=QspQ*acc308(7)
      acc308(96)=Qspk7*acc308(8)
      acc308(97)=Qspval6e7*acc308(30)
      acc308(88)=acc308(97)+acc308(96)+acc308(95)+acc308(94)+acc308(93)+acc308(&
      &92)+acc308(91)+acc308(90)+acc308(89)+acc308(17)+acc308(88)
      acc308(88)=Qspvak4k1*acc308(88)
      acc308(89)=acc308(33)*Qspvak3k2
      acc308(90)=Qspvak4k2*acc308(85)
      acc308(91)=Qspvae7k2*acc308(66)
      acc308(92)=Qspl6*acc308(65)
      acc308(93)=Qspval6k7*acc308(82)
      acc308(94)=Qspvak7k2*acc308(81)
      acc308(95)=Qspval6k2*acc308(83)
      acc308(96)=QspQ*acc308(53)
      acc308(97)=Qspk7*acc308(59)
      acc308(98)=Qspval6e7*acc308(69)
      acc308(89)=acc308(98)+acc308(97)+acc308(96)+acc308(95)+acc308(94)+acc308(&
      &93)+acc308(92)+acc308(91)+acc308(90)+acc308(52)+acc308(89)
      acc308(89)=Qspvak4k3*acc308(89)
      acc308(90)=Qspvak4k2*acc308(84)
      acc308(91)=Qspvae7k2*acc308(61)
      acc308(92)=Qspl6*acc308(35)
      acc308(93)=Qspval6k7*acc308(77)
      acc308(94)=Qspvak7k2*acc308(22)
      acc308(95)=Qspval6k2*acc308(20)
      acc308(96)=QspQ*acc308(56)
      acc308(97)=Qspk7*acc308(13)
      acc308(98)=Qspval6e7*acc308(29)
      acc308(90)=-acc308(95)-acc308(94)-acc308(91)-acc308(90)+acc308(92)+acc308&
      &(93)+acc308(96)-acc308(97)+acc308(98)-acc308(60)
      acc308(87)=acc308(90)*acc308(87)
      acc308(90)=QspQ*acc308(64)
      acc308(91)=Qspk7*acc308(68)
      acc308(92)=Qspval6e7*acc308(40)
      acc308(93)=Qspk2*acc308(32)
      acc308(90)=acc308(93)+acc308(92)+acc308(91)+acc308(3)+acc308(90)
      acc308(90)=Qspk2*acc308(90)
      acc308(91)=Qspvae7l5*acc308(76)
      acc308(92)=QspQ*acc308(73)
      acc308(93)=-Qspk7*acc308(40)
      acc308(91)=acc308(93)+acc308(92)+acc308(74)+acc308(91)
      acc308(91)=Qspval6e7*acc308(91)
      acc308(92)=-Qspl6*acc308(78)
      acc308(93)=QspQ*acc308(31)
      acc308(94)=Qspk7*acc308(49)
      acc308(92)=acc308(94)+acc308(93)+acc308(72)+acc308(92)
      acc308(92)=Qspval6l5*acc308(92)
      acc308(93)=-Qspval6k7*acc308(78)
      acc308(93)=acc308(93)+acc308(75)
      acc308(93)=Qspvak7l5*acc308(93)
      acc308(94)=-Qspvae7k2*acc308(34)
      acc308(94)=acc308(94)+acc308(62)
      acc308(94)=Qspvak2e7*acc308(94)
      acc308(95)=Qspval6k1*acc308(41)
      acc308(96)=Qspval6k3*acc308(80)
      acc308(97)=Qspvae7l5*acc308(5)
      acc308(98)=Qspvak2l6*acc308(37)
      acc308(99)=Qspvak2k7*acc308(36)
      acc308(100)=Qspl6*acc308(58)
      acc308(101)=Qspvak2k7*acc308(64)
      acc308(101)=acc308(19)+acc308(101)
      acc308(101)=Qspvak7k2*acc308(101)
      acc308(102)=Qspvak2l6*acc308(39)
      acc308(102)=acc308(23)+acc308(102)
      acc308(102)=Qspval6k2*acc308(102)
      acc308(103)=QspQ*acc308(28)
      acc308(104)=Qspk7*acc308(55)
      acc308(105)=Qspval6k2*acc308(21)
      acc308(105)=acc308(38)+acc308(105)
      acc308(105)=Qspvak2l5*acc308(105)
      brack=acc308(18)+acc308(86)+acc308(87)+acc308(88)+acc308(89)+acc308(90)+a&
      &cc308(91)+acc308(92)+acc308(93)+acc308(94)+acc308(95)+acc308(96)+acc308(&
      &97)+acc308(98)+acc308(99)+acc308(100)+acc308(101)+acc308(102)+acc308(103&
      &)+acc308(104)+acc308(105)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram308_sign, shift => diagram308_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd308h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d308
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d308 = 0.0_ki
      d308 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d308, ki), aimag(d308), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd308h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d308
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d308 = 0.0_ki
      d308 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d308, ki), aimag(d308), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d308h1l1