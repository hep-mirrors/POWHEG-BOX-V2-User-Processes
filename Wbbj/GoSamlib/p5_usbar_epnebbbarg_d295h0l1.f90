module     p5_usbar_epnebbbarg_d295h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d295h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd295h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc295(88)
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspk7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak2k1
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak4k3
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspk7 = dotproduct(Q,k7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      QspQ = dotproduct(Q,Q)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk1 = dotproduct(Q,k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      acc295(1)=abb295(8)
      acc295(2)=abb295(9)
      acc295(3)=abb295(10)
      acc295(4)=abb295(11)
      acc295(5)=abb295(12)
      acc295(6)=abb295(13)
      acc295(7)=abb295(14)
      acc295(8)=abb295(15)
      acc295(9)=abb295(16)
      acc295(10)=abb295(17)
      acc295(11)=abb295(18)
      acc295(12)=abb295(19)
      acc295(13)=abb295(20)
      acc295(14)=abb295(21)
      acc295(15)=abb295(22)
      acc295(16)=abb295(23)
      acc295(17)=abb295(24)
      acc295(18)=abb295(25)
      acc295(19)=abb295(26)
      acc295(20)=abb295(27)
      acc295(21)=abb295(28)
      acc295(22)=abb295(29)
      acc295(23)=abb295(30)
      acc295(24)=abb295(31)
      acc295(25)=abb295(32)
      acc295(26)=abb295(33)
      acc295(27)=abb295(34)
      acc295(28)=abb295(37)
      acc295(29)=abb295(39)
      acc295(30)=abb295(40)
      acc295(31)=abb295(41)
      acc295(32)=abb295(43)
      acc295(33)=abb295(44)
      acc295(34)=abb295(46)
      acc295(35)=abb295(48)
      acc295(36)=abb295(49)
      acc295(37)=abb295(51)
      acc295(38)=abb295(52)
      acc295(39)=abb295(54)
      acc295(40)=abb295(56)
      acc295(41)=abb295(61)
      acc295(42)=abb295(64)
      acc295(43)=abb295(67)
      acc295(44)=abb295(68)
      acc295(45)=abb295(69)
      acc295(46)=abb295(72)
      acc295(47)=abb295(77)
      acc295(48)=abb295(80)
      acc295(49)=abb295(81)
      acc295(50)=abb295(83)
      acc295(51)=abb295(88)
      acc295(52)=abb295(90)
      acc295(53)=abb295(93)
      acc295(54)=abb295(95)
      acc295(55)=abb295(96)
      acc295(56)=abb295(97)
      acc295(57)=abb295(99)
      acc295(58)=abb295(101)
      acc295(59)=abb295(105)
      acc295(60)=abb295(107)
      acc295(61)=abb295(108)
      acc295(62)=abb295(109)
      acc295(63)=abb295(110)
      acc295(64)=abb295(113)
      acc295(65)=abb295(114)
      acc295(66)=abb295(115)
      acc295(67)=abb295(118)
      acc295(68)=abb295(119)
      acc295(69)=abb295(129)
      acc295(70)=abb295(135)
      acc295(71)=abb295(136)
      acc295(72)=abb295(142)
      acc295(73)=abb295(167)
      acc295(74)=abb295(173)
      acc295(75)=abb295(175)
      acc295(76)=abb295(211)
      acc295(77)=Qspvae7k1*acc295(61)
      acc295(78)=Qspvae7k2*acc295(35)
      acc295(79)=Qspval6k3*acc295(71)
      acc295(80)=Qspvak1k2*acc295(12)
      acc295(81)=Qspk2*acc295(53)
      acc295(82)=Qspl6*acc295(37)
      acc295(83)=Qspval6k2*acc295(65)
      acc295(84)=Qspval6k1*acc295(8)
      acc295(85)=Qspk7*acc295(45)
      acc295(86)=Qspval6e7*acc295(22)
      acc295(86)=acc295(19)+acc295(86)
      acc295(86)=Qspvak2k1*acc295(86)
      acc295(87)=QspQ*acc295(42)
      acc295(77)=acc295(87)+acc295(86)+acc295(85)+acc295(84)+acc295(83)+acc295(&
      &82)+acc295(81)+acc295(80)+acc295(79)+acc295(78)+acc295(3)+acc295(77)
      acc295(77)=QspQ*acc295(77)
      acc295(78)=Qspval6k7*acc295(33)
      acc295(79)=Qspval6k3*acc295(34)
      acc295(80)=Qspval6k1*acc295(28)
      acc295(78)=acc295(80)+acc295(79)+acc295(15)+acc295(78)
      acc295(78)=Qspvak2k1*acc295(78)
      acc295(79)=Qspval6l5*acc295(64)
      acc295(80)=Qspval6k3*acc295(67)
      acc295(81)=Qspvak1k2*acc295(5)
      acc295(82)=Qspk2*acc295(72)
      acc295(83)=Qspl6*acc295(69)
      acc295(84)=Qspval6k2*acc295(46)
      acc295(85)=Qspval6k1*acc295(6)
      acc295(86)=QspQ*acc295(40)
      acc295(87)=Qspk1*acc295(54)
      acc295(78)=acc295(87)+acc295(86)+acc295(78)+acc295(85)+acc295(84)+acc295(&
      &83)+acc295(82)+acc295(81)+acc295(80)+acc295(66)+acc295(79)
      acc295(78)=Qspe7*acc295(78)
      acc295(79)=Qspvak2k1*acc295(36)
      acc295(79)=acc295(79)+acc295(63)
      acc295(79)=Qspval6k2*acc295(79)
      acc295(80)=Qspk2*acc295(38)
      acc295(81)=Qspl6*acc295(49)
      acc295(82)=Qspval6k1*acc295(4)
      acc295(83)=QspQ*acc295(51)
      acc295(84)=Qspk1*acc295(50)
      acc295(79)=acc295(84)+acc295(83)+acc295(82)+acc295(81)+acc295(39)+acc295(&
      &80)+acc295(79)
      acc295(79)=Qspe7*acc295(79)
      acc295(80)=Qspval6e7*acc295(30)
      acc295(81)=Qspval6k1*acc295(13)
      acc295(80)=acc295(81)+acc295(29)+acc295(80)
      acc295(80)=Qspvak2k1*acc295(80)
      acc295(81)=Qspvae7k1*acc295(59)
      acc295(82)=Qspvae7k2*acc295(56)
      acc295(81)=acc295(82)+acc295(43)+acc295(81)
      acc295(81)=QspQ*acc295(81)
      acc295(82)=Qspvae7k1*acc295(58)
      acc295(83)=Qspvae7k2*acc295(55)
      acc295(82)=acc295(83)+acc295(32)+acc295(82)
      acc295(82)=Qspk1*acc295(82)
      acc295(83)=Qspval6k7*acc295(41)
      acc295(84)=Qspvak1k2*acc295(27)
      acc295(85)=Qspk2*acc295(24)
      acc295(86)=Qspl6*acc295(44)
      acc295(87)=Qspval6k2*acc295(60)
      acc295(88)=Qspval6k1*acc295(9)
      acc295(79)=acc295(79)+acc295(82)+acc295(81)+acc295(80)+acc295(88)+acc295(&
      &87)+acc295(86)+acc295(85)+acc295(84)+acc295(31)+acc295(83)
      acc295(79)=Qspvak4k3*acc295(79)
      acc295(80)=Qspval6k3*acc295(70)
      acc295(81)=Qspvak1k2*acc295(11)
      acc295(82)=Qspk2*acc295(73)
      acc295(83)=Qspl6*acc295(75)
      acc295(84)=Qspval6k2*acc295(68)
      acc295(80)=-acc295(84)-acc295(80)-acc295(81)+acc295(82)+acc295(83)
      acc295(81)=-Qspk1+Qspk7
      acc295(81)=acc295(76)*acc295(81)
      acc295(82)=Qspvae7k1*acc295(62)
      acc295(83)=Qspvae7k2*acc295(52)
      acc295(84)=Qspval6k1*acc295(18)
      acc295(85)=Qspval6e7*acc295(23)
      acc295(85)=acc295(85)-acc295(17)
      acc295(86)=-Qspvak2k1*acc295(85)
      acc295(87)=QspQ*acc295(57)
      acc295(81)=acc295(87)+acc295(86)+acc295(84)+acc295(83)+acc295(25)+acc295(&
      &82)+acc295(81)-acc295(80)
      acc295(81)=Qspk1*acc295(81)
      acc295(82)=Qspval6k1*acc295(10)
      acc295(80)=acc295(82)+acc295(74)+acc295(80)
      acc295(80)=Qspk7*acc295(80)
      acc295(82)=Qspval6e7*acc295(21)
      acc295(83)=Qspval6k1*acc295(26)
      acc295(84)=Qspk7*acc295(85)
      acc295(82)=acc295(84)+acc295(83)+acc295(7)+acc295(82)
      acc295(82)=Qspvak2k1*acc295(82)
      acc295(83)=Qspval6l5*acc295(47)
      acc295(84)=Qspvak1k2*acc295(1)
      acc295(85)=Qspk2*acc295(48)
      acc295(86)=Qspl6*acc295(16)
      acc295(87)=Qspval6k2*acc295(2)
      acc295(88)=Qspval6k1*acc295(14)
      brack=acc295(20)+acc295(77)+acc295(78)+acc295(79)+acc295(80)+acc295(81)+a&
      &cc295(82)+acc295(83)+acc295(84)+acc295(85)+acc295(86)+acc295(87)+acc295(&
      &88)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram295_sign, shift => diagram295_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd295h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d295
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d295 = 0.0_ki
      d295 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d295, ki), aimag(d295), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd295h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d295
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d295 = 0.0_ki
      d295 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d295, ki), aimag(d295), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d295h0l1
