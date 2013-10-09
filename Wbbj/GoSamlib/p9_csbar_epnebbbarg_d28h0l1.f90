module     p9_csbar_epnebbbarg_d28h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d28h0l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd28h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc28(93)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k2
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      QspQ = dotproduct(Q,Q)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc28(1)=abb28(16)
      acc28(2)=abb28(17)
      acc28(3)=abb28(18)
      acc28(4)=abb28(19)
      acc28(5)=abb28(20)
      acc28(6)=abb28(21)
      acc28(7)=abb28(22)
      acc28(8)=abb28(23)
      acc28(9)=abb28(24)
      acc28(10)=abb28(25)
      acc28(11)=abb28(26)
      acc28(12)=abb28(27)
      acc28(13)=abb28(28)
      acc28(14)=abb28(29)
      acc28(15)=abb28(30)
      acc28(16)=abb28(31)
      acc28(17)=abb28(32)
      acc28(18)=abb28(33)
      acc28(19)=abb28(34)
      acc28(20)=abb28(35)
      acc28(21)=abb28(36)
      acc28(22)=abb28(37)
      acc28(23)=abb28(38)
      acc28(24)=abb28(39)
      acc28(25)=abb28(40)
      acc28(26)=abb28(42)
      acc28(27)=abb28(44)
      acc28(28)=abb28(45)
      acc28(29)=abb28(46)
      acc28(30)=abb28(47)
      acc28(31)=abb28(48)
      acc28(32)=abb28(49)
      acc28(33)=abb28(51)
      acc28(34)=abb28(52)
      acc28(35)=abb28(53)
      acc28(36)=abb28(54)
      acc28(37)=abb28(56)
      acc28(38)=abb28(57)
      acc28(39)=abb28(58)
      acc28(40)=abb28(59)
      acc28(41)=abb28(63)
      acc28(42)=abb28(64)
      acc28(43)=abb28(65)
      acc28(44)=abb28(68)
      acc28(45)=abb28(69)
      acc28(46)=abb28(71)
      acc28(47)=abb28(74)
      acc28(48)=abb28(77)
      acc28(49)=abb28(87)
      acc28(50)=abb28(97)
      acc28(51)=abb28(101)
      acc28(52)=abb28(110)
      acc28(53)=abb28(133)
      acc28(54)=abb28(151)
      acc28(55)=abb28(153)
      acc28(56)=abb28(164)
      acc28(57)=abb28(175)
      acc28(58)=abb28(176)
      acc28(59)=abb28(197)
      acc28(60)=abb28(217)
      acc28(61)=abb28(234)
      acc28(62)=abb28(263)
      acc28(63)=abb28(266)
      acc28(64)=Qspl6+Qspl5
      acc28(65)=-acc28(23)*acc28(64)
      acc28(66)=Qspk1*acc28(26)
      acc28(67)=Qspk7*acc28(16)
      acc28(68)=Qspe7*acc28(10)
      acc28(69)=Qspvak2k1*acc28(8)
      acc28(70)=Qspvak2k3*acc28(28)
      acc28(71)=Qspvak2k7*acc28(43)
      acc28(72)=Qspvak4k1*acc28(27)
      acc28(73)=Qspvak4k7*acc28(39)
      acc28(74)=Qspvak7k1*acc28(3)
      acc28(75)=Qspvak7k3*acc28(33)
      acc28(76)=Qspk2*acc28(24)
      acc28(77)=Qspvak2l5*acc28(2)
      acc28(78)=Qspvak2l6*acc28(47)
      acc28(79)=Qspval5k1*acc28(34)
      acc28(80)=Qspval6k1*acc28(30)
      acc28(65)=acc28(80)+acc28(79)+acc28(78)+acc28(77)+acc28(76)+acc28(75)+acc&
      &28(74)+acc28(73)+acc28(72)+acc28(71)+acc28(70)+acc28(69)+acc28(68)+acc28&
      &(67)+acc28(7)+acc28(66)+acc28(65)
      acc28(65)=Qspval5k2*acc28(65)
      acc28(64)=-acc28(60)*acc28(64)
      acc28(66)=Qspk1*acc28(62)
      acc28(67)=Qspk7*acc28(54)
      acc28(68)=Qspe7*acc28(32)
      acc28(69)=Qspvak2k1*acc28(38)
      acc28(70)=Qspvak2k3*acc28(44)
      acc28(71)=Qspvak2k7*acc28(40)
      acc28(72)=Qspvak4k1*acc28(31)
      acc28(73)=Qspvak4k7*acc28(42)
      acc28(74)=Qspvak7k1*acc28(49)
      acc28(75)=Qspvak7k3*acc28(63)
      acc28(76)=Qspk2*acc28(57)
      acc28(77)=Qspvak2l5*acc28(41)
      acc28(78)=Qspvak2l6*acc28(48)
      acc28(79)=Qspval5k1*acc28(36)
      acc28(80)=Qspval6k1*acc28(61)
      acc28(64)=acc28(80)+acc28(79)+acc28(78)+acc28(77)+acc28(76)+acc28(75)+acc&
      &28(74)+acc28(73)+acc28(72)+acc28(71)+acc28(70)+acc28(69)+acc28(68)+acc28&
      &(67)+acc28(11)+acc28(66)+acc28(64)
      acc28(64)=Qspval6k2*acc28(64)
      acc28(66)=acc28(59)*Qspvae7l6
      acc28(67)=acc28(58)*Qspvae7l5
      acc28(68)=acc28(56)*Qspval5k7
      acc28(69)=acc28(55)*Qspval6k7
      acc28(70)=acc28(53)*Qspval6k3
      acc28(71)=acc28(52)*Qspvak7l6
      acc28(72)=acc28(51)*Qspval5e7
      acc28(73)=acc28(50)*Qspval6l5
      acc28(74)=acc28(46)*Qspvak4l6
      acc28(75)=acc28(45)*Qspvak4l5
      acc28(76)=acc28(37)*Qspvae7k2
      acc28(77)=acc28(29)*Qspval5k3
      acc28(78)=acc28(25)*Qspvak1k2
      acc28(79)=acc28(22)*Qspvak7l5
      acc28(80)=acc28(21)*Qspvak1l5
      acc28(81)=acc28(20)*Qspval6e7
      acc28(82)=acc28(14)*Qspvak4k2
      acc28(83)=acc28(13)*Qspval5l6
      acc28(84)=acc28(12)*Qspvak1l6
      acc28(85)=acc28(6)*QspQ
      acc28(86)=acc28(5)*Qspvak7k2
      acc28(87)=Qspk2*acc28(4)
      acc28(88)=Qspl5*acc28(17)
      acc28(89)=Qspl6*acc28(15)
      acc28(90)=Qspvak2l5*acc28(35)
      acc28(91)=Qspvak2l6*acc28(18)
      acc28(92)=Qspval5k1*acc28(1)
      acc28(93)=Qspval6k1*acc28(19)
      brack=acc28(9)+acc28(64)+acc28(65)+acc28(66)+acc28(67)+acc28(68)+acc28(69&
      &)+acc28(70)+acc28(71)+acc28(72)+acc28(73)+acc28(74)+acc28(75)+acc28(76)+&
      &acc28(77)+acc28(78)+acc28(79)+acc28(80)+acc28(81)+acc28(82)+acc28(83)+ac&
      &c28(84)+acc28(85)+acc28(86)+acc28(87)+acc28(88)+acc28(89)+acc28(90)+acc2&
      &8(91)+acc28(92)+acc28(93)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram28_sign, shift => diagram28_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd28h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d28
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d28 = 0.0_ki
      d28 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d28, ki), aimag(d28), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd28h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d28
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d28 = 0.0_ki
      d28 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d28, ki), aimag(d28), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d28h0l1
