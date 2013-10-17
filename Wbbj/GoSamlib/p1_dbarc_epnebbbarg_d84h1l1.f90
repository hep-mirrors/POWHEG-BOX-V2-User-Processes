module     p1_dbarc_epnebbbarg_d84h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d84h1l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd84h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc84(105)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6l5
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      acc84(1)=abb84(5)
      acc84(2)=abb84(6)
      acc84(3)=abb84(7)
      acc84(4)=abb84(8)
      acc84(5)=abb84(9)
      acc84(6)=abb84(10)
      acc84(7)=abb84(11)
      acc84(8)=abb84(12)
      acc84(9)=abb84(13)
      acc84(10)=abb84(14)
      acc84(11)=abb84(15)
      acc84(12)=abb84(16)
      acc84(13)=abb84(17)
      acc84(14)=abb84(18)
      acc84(15)=abb84(19)
      acc84(16)=abb84(20)
      acc84(17)=abb84(21)
      acc84(18)=abb84(22)
      acc84(19)=abb84(23)
      acc84(20)=abb84(24)
      acc84(21)=abb84(25)
      acc84(22)=abb84(26)
      acc84(23)=abb84(27)
      acc84(24)=abb84(28)
      acc84(25)=abb84(29)
      acc84(26)=abb84(30)
      acc84(27)=abb84(31)
      acc84(28)=abb84(32)
      acc84(29)=abb84(33)
      acc84(30)=abb84(34)
      acc84(31)=abb84(35)
      acc84(32)=abb84(36)
      acc84(33)=abb84(37)
      acc84(34)=abb84(38)
      acc84(35)=abb84(39)
      acc84(36)=abb84(40)
      acc84(37)=abb84(41)
      acc84(38)=abb84(42)
      acc84(39)=abb84(43)
      acc84(40)=abb84(44)
      acc84(41)=abb84(45)
      acc84(42)=abb84(46)
      acc84(43)=abb84(47)
      acc84(44)=abb84(48)
      acc84(45)=abb84(49)
      acc84(46)=abb84(50)
      acc84(47)=abb84(51)
      acc84(48)=abb84(53)
      acc84(49)=abb84(54)
      acc84(50)=abb84(55)
      acc84(51)=abb84(56)
      acc84(52)=abb84(57)
      acc84(53)=abb84(58)
      acc84(54)=abb84(60)
      acc84(55)=abb84(61)
      acc84(56)=abb84(63)
      acc84(57)=abb84(64)
      acc84(58)=abb84(65)
      acc84(59)=abb84(66)
      acc84(60)=abb84(67)
      acc84(61)=abb84(68)
      acc84(62)=abb84(69)
      acc84(63)=abb84(70)
      acc84(64)=abb84(71)
      acc84(65)=abb84(72)
      acc84(66)=abb84(73)
      acc84(67)=abb84(74)
      acc84(68)=abb84(75)
      acc84(69)=abb84(77)
      acc84(70)=abb84(78)
      acc84(71)=abb84(79)
      acc84(72)=abb84(81)
      acc84(73)=abb84(82)
      acc84(74)=abb84(83)
      acc84(75)=abb84(84)
      acc84(76)=abb84(85)
      acc84(77)=abb84(86)
      acc84(78)=abb84(87)
      acc84(79)=abb84(88)
      acc84(80)=abb84(89)
      acc84(81)=abb84(90)
      acc84(82)=abb84(91)
      acc84(83)=abb84(92)
      acc84(84)=abb84(93)
      acc84(85)=abb84(94)
      acc84(86)=abb84(95)
      acc84(87)=abb84(96)
      acc84(88)=abb84(97)
      acc84(89)=abb84(98)
      acc84(90)=abb84(105)
      acc84(91)=abb84(107)
      acc84(92)=abb84(108)
      acc84(93)=-Qspk1-Qspk7
      acc84(93)=acc84(60)*acc84(93)
      acc84(94)=acc84(30)*Qspvak1l5
      acc84(95)=acc84(89)*Qspvak1k4
      acc84(96)=-acc84(34)*Qspvak3k2
      acc84(97)=Qspvak1k2*acc84(7)
      acc84(98)=Qspvak4k2*acc84(87)
      acc84(99)=Qspvak1k3*acc84(50)
      acc84(100)=Qspval6k2*acc84(69)
      acc84(101)=Qspvak7k2*acc84(8)
      acc84(102)=Qspvak1k2*acc84(36)
      acc84(102)=acc84(25)+acc84(102)
      acc84(102)=Qspval6l5*acc84(102)
      acc84(103)=QspQ*acc84(37)
      acc84(104)=-Qspvak1k2*acc84(91)
      acc84(104)=acc84(71)+acc84(104)
      acc84(104)=Qspk2*acc84(104)
      acc84(93)=acc84(104)+acc84(103)+acc84(102)+acc84(101)+acc84(100)+acc84(99&
      &)+acc84(98)+acc84(97)+acc84(96)+acc84(95)+acc84(43)+acc84(94)+acc84(93)
      acc84(93)=Qspvak4k3*acc84(93)
      acc84(94)=Qspk4+Qspk3
      acc84(95)=-acc84(78)*acc84(94)
      acc84(96)=Qspvak1k2*acc84(14)
      acc84(97)=Qspvak1k3*acc84(31)
      acc84(98)=Qspk1*acc84(77)
      acc84(99)=QspQ*acc84(54)
      acc84(95)=acc84(99)+acc84(98)+acc84(97)+acc84(70)+acc84(96)+acc84(95)
      acc84(95)=Qspk2*acc84(95)
      acc84(96)=-Qspvak4k2*acc84(34)
      acc84(97)=Qspvak1k3*acc84(89)
      acc84(98)=Qspval6k2*acc84(88)
      acc84(99)=Qspval6l5*acc84(74)
      acc84(96)=acc84(99)+acc84(98)+acc84(97)+acc84(39)+acc84(96)
      acc84(96)=QspQ*acc84(96)
      acc84(97)=Qspvak1k2*acc84(22)
      acc84(98)=Qspvak1k3*acc84(41)
      acc84(99)=Qspk1*acc84(76)
      acc84(97)=acc84(99)+acc84(98)+acc84(26)+acc84(97)
      acc84(97)=Qspval6l5*acc84(97)
      acc84(98)=Qspvak4k2*acc84(49)
      acc84(99)=Qspvak1k3*acc84(29)
      acc84(98)=acc84(98)-acc84(99)
      acc84(99)=acc84(98)-acc84(63)
      acc84(99)=acc84(99)*acc84(94)
      acc84(100)=Qspval6k2*acc84(75)
      acc84(98)=acc84(100)+acc84(32)-acc84(98)
      acc84(98)=Qspk1*acc84(98)
      acc84(100)=Qspvak1k2*acc84(10)
      acc84(101)=Qspvak4k2*acc84(17)
      acc84(102)=Qspvak1k3*acc84(28)
      acc84(103)=-acc84(75)*acc84(94)
      acc84(103)=acc84(23)+acc84(103)
      acc84(103)=Qspval6k2*acc84(103)
      acc84(104)=Qspvak7k2*acc84(20)
      acc84(105)=Qspk7*acc84(47)
      acc84(93)=acc84(93)+acc84(95)+acc84(96)+acc84(97)+acc84(98)+acc84(105)+ac&
      &c84(104)+acc84(103)+acc84(102)+acc84(101)+acc84(6)+acc84(100)+acc84(99)
      acc84(93)=Qspe7*acc84(93)
      acc84(95)=acc84(52)*acc84(94)
      acc84(96)=Qspval6k2*acc84(35)
      acc84(97)=Qspvak7k2*acc84(51)
      acc84(98)=Qspk7*acc84(48)
      acc84(99)=Qspvae7k2*acc84(5)
      acc84(100)=Qspk1*acc84(58)
      acc84(101)=Qspvae7k2*acc84(15)
      acc84(101)=acc84(33)+acc84(101)
      acc84(101)=Qspval6l5*acc84(101)
      acc84(102)=QspQ*acc84(56)
      acc84(95)=acc84(102)+acc84(101)+acc84(100)+acc84(99)+acc84(98)+acc84(97)+&
      &acc84(96)+acc84(4)+acc84(95)
      acc84(95)=QspQ*acc84(95)
      acc84(96)=acc84(64)*acc84(94)
      acc84(97)=Qspval6k2*acc84(67)
      acc84(98)=Qspvak7k2*acc84(86)
      acc84(99)=Qspk7*acc84(73)
      acc84(100)=Qspvae7k2*acc84(62)
      acc84(101)=Qspvae7k2*acc84(68)
      acc84(101)=acc84(65)+acc84(101)
      acc84(101)=Qspk1*acc84(101)
      acc84(102)=-Qspval6l5*acc84(46)
      acc84(103)=Qspvae7k2*acc84(79)
      acc84(103)=acc84(40)+acc84(103)
      acc84(103)=QspQ*acc84(103)
      acc84(98)=acc84(103)+acc84(102)+acc84(101)+acc84(100)+acc84(99)+acc84(98)&
      &-acc84(97)+acc84(38)-acc84(96)
      acc84(98)=Qspk2*acc84(98)
      acc84(99)=Qspval6k2*acc84(84)
      acc84(100)=Qspvak7k2*acc84(21)
      acc84(101)=Qspk7*acc84(92)
      acc84(102)=Qspvae7k2*acc84(66)
      acc84(103)=-Qspval6l5*acc84(27)
      acc84(100)=acc84(103)+acc84(102)+acc84(101)+acc84(100)+acc84(90)+acc84(99)
      acc84(100)=Qspk2*acc84(100)
      acc84(101)=Qspvak7k2*acc84(61)
      acc84(102)=-Qspk7*acc84(27)
      acc84(103)=Qspvae7k2*acc84(45)
      acc84(101)=acc84(103)+acc84(102)+acc84(24)+acc84(101)
      acc84(101)=Qspval6l5*acc84(101)
      acc84(102)=Qspval6k2*acc84(16)
      acc84(103)=Qspval6l5*acc84(53)
      acc84(102)=acc84(103)+acc84(3)+acc84(102)
      acc84(102)=QspQ*acc84(102)
      acc84(103)=Qspvak7k2*acc84(2)
      acc84(99)=acc84(18)-acc84(99)
      acc84(99)=Qspk7*acc84(99)
      acc84(104)=Qspvae7k2*acc84(59)
      acc84(99)=acc84(100)+acc84(102)+acc84(101)+acc84(104)+acc84(99)+acc84(1)+&
      &acc84(103)
      acc84(99)=Qspvak4k3*acc84(99)
      acc84(100)=Qspvak7k2*acc84(85)
      acc84(101)=-Qspk7*acc84(46)
      acc84(102)=Qspvae7k2*acc84(82)
      acc84(103)=Qspvae7k2*acc84(55)
      acc84(103)=acc84(72)+acc84(103)
      acc84(103)=Qspk1*acc84(103)
      acc84(100)=acc84(103)+acc84(102)+acc84(101)+acc84(19)+acc84(100)
      acc84(100)=Qspval6l5*acc84(100)
      acc84(101)=Qspvak7k2*acc84(83)
      acc84(102)=Qspk7*acc84(80)
      acc84(103)=Qspvae7k2*acc84(42)
      acc84(101)=acc84(103)+acc84(102)+acc84(12)+acc84(101)
      acc84(101)=Qspk1*acc84(101)
      acc84(96)=acc84(97)+acc84(44)-acc84(96)
      acc84(96)=Qspk7*acc84(96)
      acc84(97)=acc84(57)*acc84(94)
      acc84(102)=-acc84(83)*acc84(94)
      acc84(102)=acc84(9)+acc84(102)
      acc84(102)=Qspvak7k2*acc84(102)
      acc84(94)=acc84(81)*acc84(94)
      acc84(94)=acc84(11)+acc84(94)
      acc84(94)=Qspvae7k2*acc84(94)
      brack=acc84(13)+acc84(93)+acc84(94)+acc84(95)+acc84(96)+acc84(97)+acc84(9&
      &8)+acc84(99)+acc84(100)+acc84(101)+acc84(102)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram84_sign, shift => diagram84_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd84h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d84
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d84 = 0.0_ki
      d84 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d84, ki), aimag(d84), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd84h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d84
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d84 = 0.0_ki
      d84 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d84, ki), aimag(d84), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d84h1l1