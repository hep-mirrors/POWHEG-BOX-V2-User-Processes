module     p1_dbarc_epnebbbarg_d244h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d244h2l1.f90
   ! generator: buildfortran.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd244h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc244(110)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspval6k3
      complex(ki) :: QspQ
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l6
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      QspQ = dotproduct(Q,Q)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      acc244(1)=abb244(14)
      acc244(2)=abb244(15)
      acc244(3)=abb244(17)
      acc244(4)=abb244(18)
      acc244(5)=abb244(19)
      acc244(6)=abb244(20)
      acc244(7)=abb244(21)
      acc244(8)=abb244(22)
      acc244(9)=abb244(23)
      acc244(10)=abb244(24)
      acc244(11)=abb244(25)
      acc244(12)=abb244(26)
      acc244(13)=abb244(27)
      acc244(14)=abb244(28)
      acc244(15)=abb244(29)
      acc244(16)=abb244(30)
      acc244(17)=abb244(31)
      acc244(18)=abb244(32)
      acc244(19)=abb244(33)
      acc244(20)=abb244(34)
      acc244(21)=abb244(35)
      acc244(22)=abb244(36)
      acc244(23)=abb244(37)
      acc244(24)=abb244(38)
      acc244(25)=abb244(39)
      acc244(26)=abb244(40)
      acc244(27)=abb244(41)
      acc244(28)=abb244(42)
      acc244(29)=abb244(43)
      acc244(30)=abb244(44)
      acc244(31)=abb244(45)
      acc244(32)=abb244(46)
      acc244(33)=abb244(47)
      acc244(34)=abb244(48)
      acc244(35)=abb244(49)
      acc244(36)=abb244(50)
      acc244(37)=abb244(51)
      acc244(38)=abb244(52)
      acc244(39)=abb244(53)
      acc244(40)=abb244(54)
      acc244(41)=abb244(55)
      acc244(42)=abb244(56)
      acc244(43)=abb244(57)
      acc244(44)=abb244(58)
      acc244(45)=abb244(59)
      acc244(46)=abb244(60)
      acc244(47)=abb244(61)
      acc244(48)=abb244(62)
      acc244(49)=abb244(63)
      acc244(50)=abb244(64)
      acc244(51)=abb244(65)
      acc244(52)=abb244(66)
      acc244(53)=abb244(67)
      acc244(54)=abb244(68)
      acc244(55)=abb244(69)
      acc244(56)=abb244(70)
      acc244(57)=abb244(71)
      acc244(58)=abb244(72)
      acc244(59)=abb244(73)
      acc244(60)=abb244(74)
      acc244(61)=abb244(76)
      acc244(62)=abb244(80)
      acc244(63)=abb244(81)
      acc244(64)=abb244(82)
      acc244(65)=abb244(83)
      acc244(66)=abb244(84)
      acc244(67)=abb244(92)
      acc244(68)=abb244(93)
      acc244(69)=abb244(94)
      acc244(70)=abb244(95)
      acc244(71)=abb244(97)
      acc244(72)=abb244(101)
      acc244(73)=abb244(103)
      acc244(74)=abb244(113)
      acc244(75)=abb244(127)
      acc244(76)=abb244(136)
      acc244(77)=abb244(199)
      acc244(78)=abb244(207)
      acc244(79)=abb244(260)
      acc244(80)=Qspl6+Qspl5
      acc244(81)=acc244(80)-Qspk7
      acc244(82)=acc244(19)*acc244(81)
      acc244(83)=Qspk2*acc244(20)
      acc244(84)=Qspe7*acc244(7)
      acc244(85)=Qspvak2l5*acc244(52)
      acc244(86)=Qspvak2l6*acc244(51)
      acc244(87)=Qspvak2k7*acc244(47)
      acc244(88)=Qspval5k2*acc244(44)
      acc244(89)=Qspval5l6*acc244(41)
      acc244(90)=Qspval5k7*acc244(39)
      acc244(91)=Qspval6k2*acc244(36)
      acc244(92)=Qspvak7k2*acc244(35)
      acc244(93)=Qspvak7l6*acc244(31)
      acc244(94)=Qspvak2e7*acc244(30)
      acc244(95)=Qspvae7k2*acc244(27)
      acc244(96)=Qspval5e7*acc244(24)
      acc244(97)=Qspvae7l6*acc244(8)
      acc244(82)=acc244(97)+acc244(96)+acc244(95)+acc244(94)+acc244(93)+acc244(&
      &92)+acc244(91)+acc244(90)+acc244(89)+acc244(88)+acc244(87)+acc244(86)+ac&
      &c244(85)+acc244(84)+acc244(83)+acc244(82)
      acc244(82)=Qspvak1k3*acc244(82)
      acc244(83)=acc244(22)*acc244(81)
      acc244(84)=Qspk2*acc244(23)
      acc244(85)=Qspe7*acc244(14)
      acc244(86)=Qspvak2l5*acc244(60)
      acc244(87)=Qspvak2l6*acc244(59)
      acc244(88)=Qspvak2k7*acc244(28)
      acc244(89)=Qspval5k2*acc244(43)
      acc244(90)=Qspval5l6*acc244(57)
      acc244(91)=Qspval5k7*acc244(40)
      acc244(92)=Qspval6k2*acc244(56)
      acc244(93)=Qspvak7k2*acc244(55)
      acc244(94)=Qspvak7l6*acc244(54)
      acc244(95)=Qspvak2e7*acc244(42)
      acc244(96)=Qspvae7k2*acc244(26)
      acc244(97)=Qspval5e7*acc244(38)
      acc244(98)=Qspvae7l6*acc244(34)
      acc244(83)=acc244(98)+acc244(97)+acc244(96)+acc244(95)+acc244(94)+acc244(&
      &93)+acc244(92)+acc244(91)+acc244(90)+acc244(89)+acc244(88)+acc244(87)+ac&
      &c244(86)+acc244(85)+acc244(9)+acc244(84)+acc244(83)
      acc244(83)=Qspvak1k2*acc244(83)
      acc244(81)=acc244(53)*acc244(81)
      acc244(84)=Qspk2*acc244(50)
      acc244(85)=Qspe7*acc244(49)
      acc244(86)=Qspvak2l5*acc244(16)
      acc244(87)=Qspvak2l6*acc244(33)
      acc244(88)=Qspvak2k7*acc244(17)
      acc244(89)=Qspval5k2*acc244(73)
      acc244(90)=Qspval5l6*acc244(72)
      acc244(91)=Qspval5k7*acc244(71)
      acc244(92)=Qspval6k2*acc244(70)
      acc244(93)=Qspvak7k2*acc244(69)
      acc244(94)=Qspvak7l6*acc244(68)
      acc244(95)=Qspvak2e7*acc244(64)
      acc244(96)=Qspvae7k2*acc244(63)
      acc244(97)=Qspval5e7*acc244(62)
      acc244(98)=Qspvae7l6*acc244(10)
      acc244(81)=acc244(98)+acc244(97)+acc244(96)+acc244(95)+acc244(94)+acc244(&
      &93)+acc244(92)+acc244(91)+acc244(90)+acc244(89)+acc244(88)+acc244(87)+ac&
      &c244(86)+acc244(85)+acc244(46)+acc244(84)+acc244(81)
      acc244(81)=Qspvak4k2*acc244(81)
      acc244(80)=acc244(74)*acc244(80)
      acc244(84)=acc244(79)*Qspvak7k3
      acc244(85)=acc244(66)*Qspval6k3
      acc244(86)=acc244(48)*QspQ
      acc244(87)=acc244(45)*Qspval5k3
      acc244(88)=acc244(37)*Qspvak4l5
      acc244(89)=acc244(25)*Qspvak4l6
      acc244(90)=acc244(21)*Qspvak4k7
      acc244(91)=acc244(12)*Qspvak2k3
      acc244(92)=acc244(6)*Qspvak1l5
      acc244(93)=acc244(4)*Qspvak1k7
      acc244(94)=acc244(2)*Qspvak1l6
      acc244(95)=Qspk2*acc244(29)
      acc244(96)=Qspk7*acc244(75)
      acc244(97)=Qspe7*acc244(1)
      acc244(98)=Qspvak2l5*acc244(15)
      acc244(99)=Qspvak2l6*acc244(18)
      acc244(100)=Qspvak2k7*acc244(5)
      acc244(101)=Qspval5k2*acc244(13)
      acc244(102)=Qspval5l6*acc244(32)
      acc244(103)=Qspval5k7*acc244(11)
      acc244(104)=Qspval6k2*acc244(3)
      acc244(105)=Qspvak7k2*acc244(65)
      acc244(106)=Qspvak7l6*acc244(76)
      acc244(107)=Qspvak2e7*acc244(78)
      acc244(108)=Qspvae7k2*acc244(58)
      acc244(109)=Qspval5e7*acc244(67)
      acc244(110)=Qspvae7l6*acc244(61)
      brack=acc244(77)+acc244(80)+acc244(81)+acc244(82)+acc244(83)+acc244(84)+a&
      &cc244(85)+acc244(86)+acc244(87)+acc244(88)+acc244(89)+acc244(90)+acc244(&
      &91)+acc244(92)+acc244(93)+acc244(94)+acc244(95)+acc244(96)+acc244(97)+ac&
      &c244(98)+acc244(99)+acc244(100)+acc244(101)+acc244(102)+acc244(103)+acc2&
      &44(104)+acc244(105)+acc244(106)+acc244(107)+acc244(108)+acc244(109)+acc2&
      &44(110)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram244_sign, shift => diagram244_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd244h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d244
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d244 = 0.0_ki
      d244 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d244, ki), aimag(d244), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd244h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d244
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d244 = 0.0_ki
      d244 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d244, ki), aimag(d244), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d244h2l1
