module     p9_csbar_epnebbbarg_d311h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d311h1l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd311h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc311(101)
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k1
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2k7
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk7 = dotproduct(Q,k7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      acc311(1)=abb311(9)
      acc311(2)=abb311(10)
      acc311(3)=abb311(11)
      acc311(4)=abb311(12)
      acc311(5)=abb311(13)
      acc311(6)=abb311(14)
      acc311(7)=abb311(15)
      acc311(8)=abb311(16)
      acc311(9)=abb311(17)
      acc311(10)=abb311(18)
      acc311(11)=abb311(19)
      acc311(12)=abb311(20)
      acc311(13)=abb311(21)
      acc311(14)=abb311(22)
      acc311(15)=abb311(23)
      acc311(16)=abb311(25)
      acc311(17)=abb311(27)
      acc311(18)=abb311(31)
      acc311(19)=abb311(35)
      acc311(20)=abb311(37)
      acc311(21)=abb311(39)
      acc311(22)=abb311(42)
      acc311(23)=abb311(43)
      acc311(24)=abb311(44)
      acc311(25)=abb311(45)
      acc311(26)=abb311(46)
      acc311(27)=abb311(48)
      acc311(28)=abb311(49)
      acc311(29)=abb311(50)
      acc311(30)=abb311(51)
      acc311(31)=abb311(52)
      acc311(32)=abb311(55)
      acc311(33)=abb311(57)
      acc311(34)=abb311(59)
      acc311(35)=abb311(60)
      acc311(36)=abb311(61)
      acc311(37)=abb311(62)
      acc311(38)=abb311(63)
      acc311(39)=abb311(64)
      acc311(40)=abb311(65)
      acc311(41)=abb311(67)
      acc311(42)=abb311(68)
      acc311(43)=abb311(69)
      acc311(44)=abb311(70)
      acc311(45)=abb311(72)
      acc311(46)=abb311(73)
      acc311(47)=abb311(74)
      acc311(48)=abb311(76)
      acc311(49)=abb311(77)
      acc311(50)=abb311(78)
      acc311(51)=abb311(79)
      acc311(52)=abb311(80)
      acc311(53)=abb311(83)
      acc311(54)=abb311(84)
      acc311(55)=abb311(85)
      acc311(56)=abb311(86)
      acc311(57)=abb311(87)
      acc311(58)=abb311(89)
      acc311(59)=abb311(90)
      acc311(60)=abb311(91)
      acc311(61)=abb311(94)
      acc311(62)=abb311(95)
      acc311(63)=abb311(97)
      acc311(64)=abb311(98)
      acc311(65)=abb311(99)
      acc311(66)=abb311(101)
      acc311(67)=abb311(103)
      acc311(68)=abb311(104)
      acc311(69)=abb311(105)
      acc311(70)=abb311(110)
      acc311(71)=abb311(114)
      acc311(72)=abb311(124)
      acc311(73)=abb311(127)
      acc311(74)=abb311(129)
      acc311(75)=abb311(131)
      acc311(76)=Qspvak4l5*acc311(40)
      acc311(77)=-Qspvak2l5*acc311(52)
      acc311(76)=acc311(77)+acc311(19)+acc311(76)
      acc311(76)=Qspval6k1*acc311(76)
      acc311(77)=Qspval6l5*acc311(52)
      acc311(78)=Qspk2*acc311(10)
      acc311(77)=acc311(78)+acc311(4)+acc311(77)
      acc311(77)=Qspvak2k1*acc311(77)
      acc311(78)=Qspl5-Qspk1
      acc311(79)=-acc311(75)*acc311(78)
      acc311(80)=Qspvak4k2*acc311(30)
      acc311(81)=Qspvak4l5*acc311(24)
      acc311(82)=Qspvak2l5*acc311(67)
      acc311(83)=Qspval6k2*acc311(35)
      acc311(84)=Qspvak4k1*acc311(32)
      acc311(85)=QspQ*acc311(25)
      acc311(86)=-Qspvak4k1*acc311(40)
      acc311(86)=acc311(51)+acc311(86)
      acc311(86)=Qspval6l5*acc311(86)
      acc311(87)=Qspvak4k1*acc311(65)
      acc311(87)=acc311(26)+acc311(87)
      acc311(87)=Qspk2*acc311(87)
      acc311(76)=acc311(77)+acc311(87)+acc311(86)+acc311(76)+acc311(85)+acc311(&
      &84)+acc311(83)+acc311(82)+acc311(81)+acc311(29)+acc311(80)+acc311(79)
      acc311(76)=Qspe7*acc311(76)
      acc311(77)=Qspl6*acc311(7)
      acc311(79)=Qspvak7k2*acc311(13)
      acc311(80)=Qspk7*acc311(6)
      acc311(81)=Qspval6k2*acc311(12)
      acc311(82)=Qspvae7k2*acc311(11)
      acc311(83)=QspQ*acc311(5)
      acc311(84)=Qspval6e7*acc311(8)
      acc311(85)=-Qspval6l5*acc311(68)
      acc311(86)=Qspk2*acc311(9)
      acc311(77)=acc311(86)+acc311(85)+acc311(84)+acc311(83)+acc311(82)+acc311(&
      &81)+acc311(80)+acc311(79)+acc311(1)+acc311(77)
      acc311(77)=Qspvak2k1*acc311(77)
      acc311(79)=Qspl6*acc311(69)
      acc311(80)=Qspk7*acc311(54)
      acc311(81)=Qspvak4k1*acc311(64)
      acc311(82)=Qspvae7k2*acc311(34)
      acc311(83)=-QspQ*acc311(43)
      acc311(84)=Qspval6e7*acc311(45)
      acc311(85)=Qspval6k1*acc311(55)
      acc311(86)=Qspval6l5*acc311(27)
      acc311(79)=acc311(86)+acc311(85)+acc311(84)+acc311(83)+acc311(82)+acc311(&
      &81)+acc311(80)+acc311(15)+acc311(79)
      acc311(79)=Qspk2*acc311(79)
      acc311(80)=acc311(38)*acc311(78)
      acc311(81)=Qspvae7k1*acc311(36)
      acc311(82)=Qspvae7l5*acc311(70)
      acc311(83)=QspQ*acc311(46)
      acc311(80)=acc311(83)+acc311(82)+acc311(23)+acc311(81)+acc311(80)
      acc311(80)=Qspval6e7*acc311(80)
      acc311(81)=-Qspvak4l5*acc311(61)
      acc311(82)=Qspk7*acc311(20)
      acc311(83)=Qspvak2l5*acc311(68)
      acc311(84)=QspQ*acc311(50)
      acc311(81)=acc311(84)+acc311(83)+acc311(82)+acc311(21)+acc311(81)
      acc311(81)=Qspval6k1*acc311(81)
      acc311(82)=Qspk7*acc311(59)
      acc311(83)=Qspvak4k1*acc311(61)
      acc311(84)=QspQ*acc311(41)
      acc311(82)=acc311(84)+acc311(83)+acc311(18)+acc311(82)
      acc311(82)=Qspval6l5*acc311(82)
      acc311(83)=Qspvak7k1*acc311(57)
      acc311(84)=Qspvak7l5*acc311(48)
      acc311(83)=acc311(84)+acc311(33)+acc311(83)
      acc311(83)=Qspval6k7*acc311(83)
      acc311(84)=acc311(66)*Qspvak2l6
      acc311(85)=Qspvak2l5*acc311(22)
      acc311(84)=acc311(85)+acc311(84)+acc311(28)
      acc311(84)=Qspval6k2*acc311(84)
      acc311(85)=acc311(71)*acc311(78)
      acc311(86)=Qspvak2e7*acc311(2)
      acc311(85)=acc311(63)+acc311(86)+acc311(85)
      acc311(85)=Qspvae7k2*acc311(85)
      acc311(78)=-acc311(73)*acc311(78)
      acc311(86)=-acc311(58)*Qspvak1k2
      acc311(87)=acc311(53)*Qspval5k2
      acc311(88)=Qspvak2k7*acc311(47)
      acc311(89)=Qspvak4k2*acc311(62)
      acc311(90)=Qspvak7k1*acc311(37)
      acc311(91)=Qspvak7l5*acc311(31)
      acc311(92)=Qspvae7k1*acc311(3)
      acc311(93)=Qspvak2e7*acc311(14)
      acc311(94)=Qspvae7l5*acc311(49)
      acc311(95)=Qspl6*acc311(72)
      acc311(96)=-acc311(43)*Qspvak2k7
      acc311(96)=acc311(44)+acc311(96)
      acc311(96)=Qspvak7k2*acc311(96)
      acc311(97)=Qspvak4l5*acc311(60)
      acc311(98)=Qspk7*acc311(74)
      acc311(99)=Qspvak2l5*acc311(56)
      acc311(100)=Qspvak4k1*acc311(39)
      acc311(101)=Qspvae7k2*acc311(17)
      acc311(101)=acc311(42)+acc311(101)
      acc311(101)=QspQ*acc311(101)
      brack=acc311(16)+acc311(76)+acc311(77)+acc311(78)+acc311(79)+acc311(80)+a&
      &cc311(81)+acc311(82)+acc311(83)+acc311(84)+acc311(85)+acc311(86)+acc311(&
      &87)+acc311(88)+acc311(89)+acc311(90)+acc311(91)+acc311(92)+acc311(93)+ac&
      &c311(94)+acc311(95)+acc311(96)+acc311(97)+acc311(98)+acc311(99)+acc311(1&
      &00)+acc311(101)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram311_sign, shift => diagram311_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd311h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d311
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d311 = 0.0_ki
      d311 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d311, ki), aimag(d311), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd311h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d311
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d311 = 0.0_ki
      d311 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d311, ki), aimag(d311), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d311h1l1
