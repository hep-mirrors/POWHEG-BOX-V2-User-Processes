module     p0_dbaru_epnebbbarg_d28h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d28h3l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd28h3
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
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval6l5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k7
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      QspQ = dotproduct(Q,Q)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
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
      acc28(21)=abb28(37)
      acc28(22)=abb28(38)
      acc28(23)=abb28(39)
      acc28(24)=abb28(41)
      acc28(25)=abb28(42)
      acc28(26)=abb28(43)
      acc28(27)=abb28(44)
      acc28(28)=abb28(45)
      acc28(29)=abb28(46)
      acc28(30)=abb28(48)
      acc28(31)=abb28(49)
      acc28(32)=abb28(50)
      acc28(33)=abb28(51)
      acc28(34)=abb28(52)
      acc28(35)=abb28(53)
      acc28(36)=abb28(54)
      acc28(37)=abb28(65)
      acc28(38)=abb28(72)
      acc28(39)=abb28(74)
      acc28(40)=abb28(76)
      acc28(41)=abb28(81)
      acc28(42)=abb28(84)
      acc28(43)=abb28(85)
      acc28(44)=abb28(87)
      acc28(45)=abb28(97)
      acc28(46)=abb28(99)
      acc28(47)=abb28(101)
      acc28(48)=abb28(104)
      acc28(49)=abb28(110)
      acc28(50)=abb28(112)
      acc28(51)=abb28(127)
      acc28(52)=abb28(130)
      acc28(53)=abb28(135)
      acc28(54)=abb28(138)
      acc28(55)=abb28(152)
      acc28(56)=abb28(169)
      acc28(57)=abb28(171)
      acc28(58)=abb28(175)
      acc28(59)=abb28(187)
      acc28(60)=abb28(189)
      acc28(61)=abb28(201)
      acc28(62)=abb28(216)
      acc28(63)=abb28(251)
      acc28(64)=Qspl6+Qspl5
      acc28(65)=-acc28(12)*acc28(64)
      acc28(66)=Qspk1*acc28(18)
      acc28(67)=Qspk7*acc28(10)
      acc28(68)=Qspe7*acc28(7)
      acc28(69)=Qspvak1k2*acc28(8)
      acc28(70)=Qspvak1k3*acc28(23)
      acc28(71)=Qspvak1k7*acc28(3)
      acc28(72)=Qspvak4k2*acc28(36)
      acc28(73)=Qspvak4k7*acc28(34)
      acc28(74)=Qspvak7k2*acc28(24)
      acc28(75)=Qspvak7k3*acc28(25)
      acc28(76)=Qspk2*acc28(16)
      acc28(77)=Qspvak1l5*acc28(22)
      acc28(78)=Qspvak1l6*acc28(41)
      acc28(79)=Qspval5k2*acc28(31)
      acc28(80)=Qspval6k2*acc28(29)
      acc28(65)=acc28(80)+acc28(79)+acc28(78)+acc28(77)+acc28(76)+acc28(75)+acc&
      &28(74)+acc28(73)+acc28(72)+acc28(71)+acc28(70)+acc28(69)+acc28(68)+acc28&
      &(67)+acc28(2)+acc28(66)+acc28(65)
      acc28(65)=Qspvak2l5*acc28(65)
      acc28(64)=-acc28(61)*acc28(64)
      acc28(66)=Qspk1*acc28(50)
      acc28(67)=Qspk7*acc28(55)
      acc28(68)=Qspe7*acc28(40)
      acc28(69)=Qspvak1k2*acc28(35)
      acc28(70)=Qspvak1k3*acc28(30)
      acc28(71)=Qspvak1k7*acc28(32)
      acc28(72)=Qspvak4k2*acc28(53)
      acc28(73)=Qspvak4k7*acc28(51)
      acc28(74)=Qspvak7k2*acc28(39)
      acc28(75)=Qspvak7k3*acc28(63)
      acc28(76)=Qspk2*acc28(58)
      acc28(77)=Qspvak1l5*acc28(33)
      acc28(78)=Qspvak1l6*acc28(42)
      acc28(79)=Qspval5k2*acc28(46)
      acc28(80)=Qspval6k2*acc28(38)
      acc28(64)=acc28(80)+acc28(79)+acc28(78)+acc28(77)+acc28(76)+acc28(75)+acc&
      &28(74)+acc28(73)+acc28(72)+acc28(71)+acc28(70)+acc28(69)+acc28(68)+acc28&
      &(67)+acc28(11)+acc28(66)+acc28(64)
      acc28(64)=Qspvak2l6*acc28(64)
      acc28(66)=acc28(62)*Qspval6e7
      acc28(67)=acc28(60)*Qspval6k3
      acc28(68)=acc28(57)*Qspvak4l6
      acc28(69)=acc28(56)*Qspval6k7
      acc28(70)=acc28(54)*Qspvak4l5
      acc28(71)=acc28(52)*Qspvak7l5
      acc28(72)=acc28(49)*Qspvak7l6
      acc28(73)=acc28(48)*Qspval5k3
      acc28(74)=acc28(47)*Qspval5e7
      acc28(75)=acc28(45)*Qspval5l6
      acc28(76)=acc28(44)*Qspvae7l5
      acc28(77)=acc28(43)*Qspval6k1
      acc28(78)=acc28(28)*Qspvak2e7
      acc28(79)=acc28(27)*Qspvak2k1
      acc28(80)=acc28(26)*Qspval5k1
      acc28(81)=acc28(21)*Qspval5k7
      acc28(82)=acc28(20)*Qspvae7l6
      acc28(83)=acc28(14)*Qspvak2k3
      acc28(84)=acc28(13)*Qspval6l5
      acc28(85)=acc28(6)*QspQ
      acc28(86)=acc28(5)*Qspvak2k7
      acc28(87)=Qspk2*acc28(4)
      acc28(88)=Qspl5*acc28(17)
      acc28(89)=Qspl6*acc28(15)
      acc28(90)=Qspvak1l5*acc28(1)
      acc28(91)=Qspvak1l6*acc28(19)
      acc28(92)=Qspval5k2*acc28(37)
      acc28(93)=Qspval6k2*acc28(59)
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
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram28_sign, shift => diagram28_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd28h3
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
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd28h3
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
end module p0_dbaru_epnebbbarg_d28h3l1
