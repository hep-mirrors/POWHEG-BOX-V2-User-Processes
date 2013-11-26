module     p1_dbarc_epnebbbarg_d316h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d316h1l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd316h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc316(120)
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval6k7
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7l5
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval6k7 = dotproduct(Q,spval6k7)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      acc316(1)=abb316(8)
      acc316(2)=abb316(9)
      acc316(3)=abb316(10)
      acc316(4)=abb316(11)
      acc316(5)=abb316(12)
      acc316(6)=abb316(13)
      acc316(7)=abb316(14)
      acc316(8)=abb316(15)
      acc316(9)=abb316(16)
      acc316(10)=abb316(17)
      acc316(11)=abb316(18)
      acc316(12)=abb316(19)
      acc316(13)=abb316(20)
      acc316(14)=abb316(21)
      acc316(15)=abb316(22)
      acc316(16)=abb316(23)
      acc316(17)=abb316(24)
      acc316(18)=abb316(25)
      acc316(19)=abb316(26)
      acc316(20)=abb316(27)
      acc316(21)=abb316(28)
      acc316(22)=abb316(29)
      acc316(23)=abb316(30)
      acc316(24)=abb316(31)
      acc316(25)=abb316(32)
      acc316(26)=abb316(33)
      acc316(27)=abb316(34)
      acc316(28)=abb316(35)
      acc316(29)=abb316(36)
      acc316(30)=abb316(37)
      acc316(31)=abb316(38)
      acc316(32)=abb316(39)
      acc316(33)=abb316(40)
      acc316(34)=abb316(41)
      acc316(35)=abb316(42)
      acc316(36)=abb316(43)
      acc316(37)=abb316(44)
      acc316(38)=abb316(45)
      acc316(39)=abb316(46)
      acc316(40)=abb316(47)
      acc316(41)=abb316(48)
      acc316(42)=abb316(49)
      acc316(43)=abb316(50)
      acc316(44)=abb316(51)
      acc316(45)=abb316(52)
      acc316(46)=abb316(53)
      acc316(47)=abb316(54)
      acc316(48)=abb316(55)
      acc316(49)=abb316(56)
      acc316(50)=abb316(57)
      acc316(51)=abb316(58)
      acc316(52)=abb316(59)
      acc316(53)=abb316(60)
      acc316(54)=abb316(61)
      acc316(55)=abb316(62)
      acc316(56)=abb316(63)
      acc316(57)=abb316(64)
      acc316(58)=abb316(65)
      acc316(59)=abb316(66)
      acc316(60)=abb316(67)
      acc316(61)=abb316(68)
      acc316(62)=abb316(69)
      acc316(63)=abb316(70)
      acc316(64)=abb316(71)
      acc316(65)=abb316(72)
      acc316(66)=abb316(73)
      acc316(67)=abb316(74)
      acc316(68)=abb316(75)
      acc316(69)=abb316(76)
      acc316(70)=abb316(77)
      acc316(71)=abb316(79)
      acc316(72)=abb316(80)
      acc316(73)=abb316(81)
      acc316(74)=abb316(82)
      acc316(75)=abb316(83)
      acc316(76)=abb316(85)
      acc316(77)=abb316(87)
      acc316(78)=abb316(89)
      acc316(79)=abb316(91)
      acc316(80)=abb316(92)
      acc316(81)=abb316(94)
      acc316(82)=abb316(95)
      acc316(83)=abb316(96)
      acc316(84)=abb316(99)
      acc316(85)=abb316(103)
      acc316(86)=abb316(107)
      acc316(87)=abb316(112)
      acc316(88)=abb316(114)
      acc316(89)=abb316(117)
      acc316(90)=abb316(120)
      acc316(91)=abb316(124)
      acc316(92)=abb316(126)
      acc316(93)=abb316(131)
      acc316(94)=abb316(133)
      acc316(95)=abb316(138)
      acc316(96)=abb316(139)
      acc316(97)=abb316(140)
      acc316(98)=Qspvak1l5*acc316(60)
      acc316(99)=Qspvak1k2*acc316(12)
      acc316(100)=Qspval6l5*acc316(97)
      acc316(98)=acc316(100)+acc316(98)+acc316(99)
      acc316(99)=acc316(98)-acc316(20)
      acc316(100)=Qspk4+Qspk3
      acc316(99)=-acc316(99)*acc316(100)
      acc316(101)=Qspvak1l5*acc316(2)
      acc316(102)=Qspvak1k2*acc316(67)
      acc316(103)=Qspval6l5*acc316(91)
      acc316(101)=acc316(103)+acc316(102)+acc316(1)+acc316(101)
      acc316(101)=Qspvak4k3*acc316(101)
      acc316(102)=Qspvak1l5*acc316(8)
      acc316(103)=Qspvak1k2*acc316(19)
      acc316(104)=Qspval6l5*acc316(4)
      acc316(102)=acc316(104)+acc316(103)+acc316(9)+acc316(102)
      acc316(102)=Qspvak4k2*acc316(102)
      acc316(103)=Qspvak1k3*acc316(18)
      acc316(98)=acc316(26)+acc316(103)+acc316(98)
      acc316(98)=Qspk2*acc316(98)
      acc316(103)=acc316(62)*Qspval6k3
      acc316(104)=Qspval6k2*acc316(14)
      acc316(103)=acc316(104)+acc316(49)+acc316(103)
      acc316(103)=Qspvak1l5*acc316(103)
      acc316(104)=-acc316(62)*Qspvak1k3
      acc316(105)=-Qspvak1k2*acc316(14)
      acc316(104)=acc316(105)+acc316(74)+acc316(104)
      acc316(104)=Qspval6l5*acc316(104)
      acc316(105)=-Qspk7-Qspk1
      acc316(105)=acc316(31)*acc316(105)
      acc316(106)=acc316(51)*Qspvak1k7
      acc316(107)=Qspvak2k3*acc316(30)
      acc316(108)=Qspvak2l5*acc316(50)
      acc316(109)=Qspvak2l6*acc316(81)
      acc316(110)=Qspval6k7*acc316(85)
      acc316(111)=Qspvak2k3*acc316(69)
      acc316(111)=acc316(66)+acc316(111)
      acc316(111)=Qspvak1k2*acc316(111)
      acc316(112)=QspQ*acc316(11)
      acc316(98)=acc316(98)+acc316(102)+acc316(101)+acc316(104)+acc316(112)+acc&
      &316(111)+acc316(110)+acc316(109)+acc316(108)+acc316(107)+acc316(106)+acc&
      &316(7)+acc316(103)+acc316(105)+acc316(99)
      acc316(98)=Qspe7*acc316(98)
      acc316(99)=acc316(23)*acc316(100)
      acc316(101)=Qspl6*acc316(21)
      acc316(102)=Qspvak7k2*acc316(52)
      acc316(103)=Qspval6k7*acc316(38)
      acc316(104)=Qspval6k2*acc316(46)
      acc316(105)=QspQ*acc316(15)
      acc316(106)=Qspk7*acc316(22)
      acc316(107)=Qspvae7k2*acc316(43)
      acc316(108)=Qspval6e7*acc316(29)
      acc316(109)=Qspvak4k3*acc316(59)
      acc316(110)=Qspvak4k2*acc316(55)
      acc316(99)=acc316(110)+acc316(109)+acc316(108)+acc316(107)+acc316(106)+ac&
      &c316(105)+acc316(104)+acc316(103)+acc316(102)+acc316(16)+acc316(101)+acc&
      &316(99)
      acc316(99)=Qspvak4k2*acc316(99)
      acc316(101)=acc316(72)*Qspvak3k2
      acc316(102)=Qspl6*acc316(70)
      acc316(103)=Qspvak7k2*acc316(3)
      acc316(104)=Qspval6k7*acc316(89)
      acc316(105)=Qspval6k2*acc316(65)
      acc316(106)=QspQ*acc316(25)
      acc316(107)=Qspk7*acc316(83)
      acc316(108)=Qspvae7k2*acc316(84)
      acc316(109)=Qspval6e7*acc316(68)
      acc316(101)=acc316(109)+acc316(108)+acc316(107)+acc316(106)+acc316(105)+a&
      &cc316(104)+acc316(103)+acc316(102)+acc316(101)+acc316(5)
      acc316(101)=Qspvak4k3*acc316(101)
      acc316(102)=Qspl6*acc316(96)
      acc316(103)=Qspvak7k2*acc316(63)
      acc316(104)=Qspval6k7*acc316(87)
      acc316(105)=Qspval6k2*acc316(61)
      acc316(106)=Qspvae7k2*acc316(86)
      acc316(107)=Qspval6e7*acc316(42)
      acc316(102)=-acc316(107)-acc316(104)-acc316(102)-acc316(103)+acc316(105)+&
      &acc316(106)
      acc316(103)=acc316(93)*acc316(100)
      acc316(104)=QspQ*acc316(28)
      acc316(105)=Qspk7*acc316(90)
      acc316(106)=Qspvak4k3*acc316(77)
      acc316(107)=Qspvak4k2*acc316(39)
      acc316(108)=Qspk2*acc316(6)
      acc316(103)=acc316(108)+acc316(107)+acc316(106)+acc316(105)+acc316(104)+a&
      &cc316(53)+acc316(103)-acc316(102)
      acc316(103)=Qspk2*acc316(103)
      acc316(104)=QspQ*acc316(27)
      acc316(105)=Qspk7*acc316(95)
      acc316(102)=acc316(104)-acc316(105)+acc316(92)+acc316(102)
      acc316(100)=acc316(102)*acc316(100)
      acc316(102)=Qspk7-Qspk1
      acc316(104)=acc316(13)*acc316(102)
      acc316(105)=Qspvak2e7*acc316(82)
      acc316(106)=-QspQ*acc316(79)
      acc316(104)=acc316(106)+acc316(80)+acc316(105)+acc316(104)
      acc316(104)=Qspvae7k2*acc316(104)
      acc316(102)=acc316(54)*acc316(102)
      acc316(105)=Qspvae7l5*acc316(78)
      acc316(106)=QspQ*acc316(64)
      acc316(102)=acc316(106)+acc316(34)+acc316(105)+acc316(102)
      acc316(102)=Qspval6e7*acc316(102)
      acc316(105)=Qspl6*acc316(37)
      acc316(106)=QspQ*acc316(36)
      acc316(107)=Qspk7*acc316(94)
      acc316(105)=acc316(107)+acc316(106)+acc316(88)+acc316(105)
      acc316(105)=Qspval6l5*acc316(105)
      acc316(106)=Qspvak2l5*acc316(48)
      acc316(107)=Qspvak2l6*acc316(73)
      acc316(106)=acc316(107)+acc316(40)+acc316(106)
      acc316(106)=Qspval6k2*acc316(106)
      acc316(107)=Qspvak2k7*acc316(41)
      acc316(108)=Qspval6k3*acc316(32)
      acc316(109)=Qspvak7l5*acc316(58)
      acc316(110)=Qspvak2e7*acc316(24)
      acc316(111)=Qspvae7l5*acc316(57)
      acc316(112)=Qspvak2l5*acc316(47)
      acc316(113)=Qspvak2l6*acc316(76)
      acc316(114)=Qspk1*acc316(33)
      acc316(115)=Qspl6*acc316(44)
      acc316(116)=Qspvak2k7*acc316(75)
      acc316(116)=acc316(56)+acc316(116)
      acc316(116)=Qspvak7k2*acc316(116)
      acc316(117)=acc316(37)*Qspvak7l5
      acc316(117)=acc316(71)+acc316(117)
      acc316(117)=Qspval6k7*acc316(117)
      acc316(118)=Qspvak1k2*acc316(10)
      acc316(119)=QspQ*acc316(17)
      acc316(120)=Qspk7*acc316(35)
      brack=acc316(45)+acc316(98)+acc316(99)+acc316(100)+acc316(101)+acc316(102&
      &)+acc316(103)+acc316(104)+acc316(105)+acc316(106)+acc316(107)+acc316(108&
      &)+acc316(109)+acc316(110)+acc316(111)+acc316(112)+acc316(113)+acc316(114&
      &)+acc316(115)+acc316(116)+acc316(117)+acc316(118)+acc316(119)+acc316(120)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram316_sign, shift => diagram316_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd316h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d316
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d316 = 0.0_ki
      d316 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d316, ki), aimag(d316), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd316h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d316
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d316 = 0.0_ki
      d316 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d316, ki), aimag(d316), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d316h1l1
