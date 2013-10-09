module     p1_dbarc_epnebbbarg_d87h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d87h2l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd87h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc87(99)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      QspQ = dotproduct(Q,Q)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      acc87(1)=abb87(16)
      acc87(2)=abb87(17)
      acc87(3)=abb87(18)
      acc87(4)=abb87(19)
      acc87(5)=abb87(20)
      acc87(6)=abb87(21)
      acc87(7)=abb87(22)
      acc87(8)=abb87(23)
      acc87(9)=abb87(24)
      acc87(10)=abb87(25)
      acc87(11)=abb87(26)
      acc87(12)=abb87(27)
      acc87(13)=abb87(28)
      acc87(14)=abb87(29)
      acc87(15)=abb87(30)
      acc87(16)=abb87(31)
      acc87(17)=abb87(32)
      acc87(18)=abb87(33)
      acc87(19)=abb87(34)
      acc87(20)=abb87(35)
      acc87(21)=abb87(36)
      acc87(22)=abb87(37)
      acc87(23)=abb87(38)
      acc87(24)=abb87(39)
      acc87(25)=abb87(40)
      acc87(26)=abb87(41)
      acc87(27)=abb87(42)
      acc87(28)=abb87(43)
      acc87(29)=abb87(44)
      acc87(30)=abb87(45)
      acc87(31)=abb87(46)
      acc87(32)=abb87(47)
      acc87(33)=abb87(48)
      acc87(34)=abb87(49)
      acc87(35)=abb87(50)
      acc87(36)=abb87(51)
      acc87(37)=abb87(53)
      acc87(38)=abb87(54)
      acc87(39)=abb87(55)
      acc87(40)=abb87(56)
      acc87(41)=abb87(64)
      acc87(42)=abb87(66)
      acc87(43)=abb87(67)
      acc87(44)=abb87(71)
      acc87(45)=abb87(74)
      acc87(46)=abb87(75)
      acc87(47)=abb87(85)
      acc87(48)=abb87(86)
      acc87(49)=abb87(92)
      acc87(50)=abb87(94)
      acc87(51)=abb87(95)
      acc87(52)=abb87(96)
      acc87(53)=abb87(98)
      acc87(54)=abb87(102)
      acc87(55)=abb87(107)
      acc87(56)=abb87(132)
      acc87(57)=abb87(135)
      acc87(58)=abb87(141)
      acc87(59)=abb87(165)
      acc87(60)=abb87(168)
      acc87(61)=abb87(171)
      acc87(62)=abb87(212)
      acc87(63)=abb87(214)
      acc87(64)=abb87(218)
      acc87(65)=abb87(230)
      acc87(66)=abb87(252)
      acc87(67)=Qspl6+Qspl5
      acc87(68)=-acc87(60)*acc87(67)
      acc87(69)=Qspk1*acc87(52)
      acc87(70)=Qspk7*acc87(59)
      acc87(71)=Qspe7*acc87(58)
      acc87(72)=Qspvak1k2*acc87(34)
      acc87(73)=Qspvak1k3*acc87(38)
      acc87(74)=Qspvak1l5*acc87(30)
      acc87(75)=Qspvak1l6*acc87(13)
      acc87(76)=Qspvak1k7*acc87(29)
      acc87(77)=Qspvak4k2*acc87(47)
      acc87(78)=Qspvak4k7*acc87(35)
      acc87(79)=Qspval5k2*acc87(6)
      acc87(80)=Qspval6k2*acc87(63)
      acc87(81)=Qspvak7k2*acc87(65)
      acc87(82)=Qspvak7k3*acc87(62)
      acc87(83)=Qspval5l6*acc87(39)
      acc87(84)=Qspk2*acc87(3)
      acc87(68)=acc87(84)+acc87(83)+acc87(82)+acc87(81)+acc87(80)+acc87(79)+acc&
      &87(78)+acc87(77)+acc87(76)+acc87(75)+acc87(74)+acc87(73)+acc87(72)+acc87&
      &(71)+acc87(70)+acc87(23)+acc87(69)+acc87(68)
      acc87(68)=Qspk2*acc87(68)
      acc87(67)=acc87(16)*acc87(67)
      acc87(69)=Qspk1*acc87(41)
      acc87(70)=Qspk7*acc87(12)
      acc87(71)=Qspe7*acc87(8)
      acc87(72)=Qspvak1k2*acc87(36)
      acc87(73)=Qspvak1k3*acc87(11)
      acc87(74)=Qspvak1l5*acc87(32)
      acc87(75)=Qspvak1l6*acc87(15)
      acc87(76)=Qspvak1k7*acc87(31)
      acc87(77)=Qspvak4k2*acc87(48)
      acc87(78)=Qspvak4k7*acc87(42)
      acc87(79)=Qspval5k2*acc87(18)
      acc87(80)=Qspval6k2*acc87(50)
      acc87(81)=Qspvak7k2*acc87(49)
      acc87(82)=Qspvak7k3*acc87(43)
      acc87(67)=acc87(82)+acc87(81)+acc87(80)+acc87(79)+acc87(78)+acc87(77)+acc&
      &87(76)+acc87(75)+acc87(74)+acc87(73)+acc87(72)+acc87(71)+acc87(70)+acc87&
      &(4)+acc87(69)+acc87(67)
      acc87(67)=Qspval5l6*acc87(67)
      acc87(69)=acc87(66)*Qspval5k7
      acc87(70)=acc87(55)*QspQ
      acc87(71)=acc87(54)*Qspvak7l6
      acc87(72)=acc87(53)*Qspvae7l6
      acc87(73)=acc87(51)*Qspval5k3
      acc87(74)=acc87(46)*Qspvak2e7
      acc87(75)=acc87(44)*Qspvak4l6
      acc87(76)=acc87(40)*Qspvae7k2
      acc87(77)=acc87(28)*Qspvak2k1
      acc87(78)=acc87(27)*Qspval5e7
      acc87(79)=acc87(25)*Qspval5k1
      acc87(80)=acc87(22)*Qspvak2k7
      acc87(81)=acc87(14)*Qspvak2k3
      acc87(82)=acc87(5)*Qspvak2l5
      acc87(83)=acc87(2)*Qspvak2l6
      acc87(84)=Qspk1*acc87(20)
      acc87(85)=Qspl5*acc87(17)
      acc87(86)=Qspl6*acc87(7)
      acc87(87)=Qspk7*acc87(61)
      acc87(88)=Qspe7*acc87(24)
      acc87(89)=Qspvak1k2*acc87(21)
      acc87(90)=Qspvak1k3*acc87(37)
      acc87(91)=Qspvak1l5*acc87(19)
      acc87(92)=Qspvak1l6*acc87(9)
      acc87(93)=Qspvak1k7*acc87(26)
      acc87(94)=Qspvak4k2*acc87(45)
      acc87(95)=Qspvak4k7*acc87(33)
      acc87(96)=Qspval5k2*acc87(1)
      acc87(97)=Qspval6k2*acc87(57)
      acc87(98)=Qspvak7k2*acc87(64)
      acc87(99)=Qspvak7k3*acc87(56)
      brack=acc87(10)+acc87(67)+acc87(68)+acc87(69)+acc87(70)+acc87(71)+acc87(7&
      &2)+acc87(73)+acc87(74)+acc87(75)+acc87(76)+acc87(77)+acc87(78)+acc87(79)&
      &+acc87(80)+acc87(81)+acc87(82)+acc87(83)+acc87(84)+acc87(85)+acc87(86)+a&
      &cc87(87)+acc87(88)+acc87(89)+acc87(90)+acc87(91)+acc87(92)+acc87(93)+acc&
      &87(94)+acc87(95)+acc87(96)+acc87(97)+acc87(98)+acc87(99)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram87_sign, shift => diagram87_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd87h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d87
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d87 = 0.0_ki
      d87 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d87, ki), aimag(d87), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd87h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d87
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d87 = 0.0_ki
      d87 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d87, ki), aimag(d87), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d87h2l1
