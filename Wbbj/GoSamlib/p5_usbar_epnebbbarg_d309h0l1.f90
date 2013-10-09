module     p5_usbar_epnebbbarg_d309h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d309h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd309h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc309(84)
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspl5
      complex(ki) :: Qspe7
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k7
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvae7k1
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspl5 = dotproduct(Q,l5)
      Qspe7 = dotproduct(Q,e7)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      acc309(1)=abb309(8)
      acc309(2)=abb309(9)
      acc309(3)=abb309(10)
      acc309(4)=abb309(11)
      acc309(5)=abb309(12)
      acc309(6)=abb309(13)
      acc309(7)=abb309(14)
      acc309(8)=abb309(15)
      acc309(9)=abb309(16)
      acc309(10)=abb309(17)
      acc309(11)=abb309(18)
      acc309(12)=abb309(19)
      acc309(13)=abb309(20)
      acc309(14)=abb309(21)
      acc309(15)=abb309(22)
      acc309(16)=abb309(23)
      acc309(17)=abb309(24)
      acc309(18)=abb309(25)
      acc309(19)=abb309(26)
      acc309(20)=abb309(27)
      acc309(21)=abb309(28)
      acc309(22)=abb309(29)
      acc309(23)=abb309(30)
      acc309(24)=abb309(31)
      acc309(25)=abb309(32)
      acc309(26)=abb309(34)
      acc309(27)=abb309(36)
      acc309(28)=abb309(38)
      acc309(29)=abb309(39)
      acc309(30)=abb309(40)
      acc309(31)=abb309(41)
      acc309(32)=abb309(42)
      acc309(33)=abb309(43)
      acc309(34)=abb309(44)
      acc309(35)=abb309(47)
      acc309(36)=abb309(48)
      acc309(37)=abb309(49)
      acc309(38)=abb309(50)
      acc309(39)=abb309(51)
      acc309(40)=abb309(53)
      acc309(41)=abb309(55)
      acc309(42)=abb309(56)
      acc309(43)=abb309(57)
      acc309(44)=abb309(58)
      acc309(45)=abb309(59)
      acc309(46)=abb309(60)
      acc309(47)=abb309(61)
      acc309(48)=abb309(75)
      acc309(49)=abb309(76)
      acc309(50)=abb309(78)
      acc309(51)=abb309(79)
      acc309(52)=abb309(80)
      acc309(53)=abb309(81)
      acc309(54)=abb309(82)
      acc309(55)=abb309(83)
      acc309(56)=abb309(84)
      acc309(57)=abb309(85)
      acc309(58)=abb309(87)
      acc309(59)=abb309(88)
      acc309(60)=abb309(89)
      acc309(61)=abb309(90)
      acc309(62)=abb309(91)
      acc309(63)=abb309(92)
      acc309(64)=abb309(94)
      acc309(65)=abb309(95)
      acc309(66)=abb309(96)
      acc309(67)=acc309(26)*Qspvak7k2
      acc309(68)=acc309(25)*Qspvak1k2
      acc309(69)=acc309(23)*Qspvae7k2
      acc309(70)=Qspvak2e7*acc309(24)
      acc309(71)=Qspvak4e7*acc309(17)
      acc309(72)=Qspvak2k7*acc309(35)
      acc309(73)=Qspvak4k7*acc309(42)
      acc309(74)=Qspk2*acc309(9)
      acc309(75)=Qspvak2k1*acc309(19)
      acc309(76)=Qspvak4k1*acc309(40)
      acc309(77)=Qspvak4k2*acc309(45)
      acc309(67)=acc309(77)+acc309(76)+acc309(75)+acc309(74)+acc309(73)+acc309(&
      &72)+acc309(71)+acc309(70)+acc309(7)+acc309(69)+acc309(67)+acc309(68)
      acc309(67)=Qspval5k1*acc309(67)
      acc309(68)=Qspval6k2*acc309(11)
      acc309(69)=Qspval5k2*acc309(16)
      acc309(68)=acc309(69)+acc309(5)+acc309(68)
      acc309(68)=Qspvak2k1*acc309(68)
      acc309(69)=Qspval6k2*acc309(10)
      acc309(70)=Qspval5k2*acc309(22)
      acc309(69)=acc309(70)+acc309(18)+acc309(69)
      acc309(69)=Qspvak4k1*acc309(69)
      acc309(70)=Qspk2*acc309(63)
      acc309(71)=-Qspvak4k2*acc309(10)
      acc309(70)=acc309(71)+acc309(62)+acc309(70)
      acc309(70)=Qspval6k1*acc309(70)
      acc309(71)=Qspl5*acc309(29)
      acc309(72)=Qspval5k2*acc309(13)
      acc309(73)=Qspk2*acc309(12)
      acc309(74)=Qspvak4k2*acc309(33)
      acc309(75)=Qspval5k1*acc309(4)
      acc309(68)=acc309(75)+acc309(70)+acc309(74)+acc309(69)+acc309(68)+acc309(&
      &73)+acc309(72)+acc309(8)+acc309(71)
      acc309(68)=Qspe7*acc309(68)
      acc309(69)=-Qspvak2e7*acc309(65)
      acc309(70)=-Qspvak4e7*acc309(64)
      acc309(71)=-Qspvak2k7*acc309(43)
      acc309(72)=Qspvak4k7*acc309(39)
      acc309(73)=Qspk2*acc309(60)
      acc309(74)=Qspvak4k2*acc309(3)
      acc309(69)=acc309(74)+acc309(73)+acc309(72)+acc309(71)+acc309(70)+acc309(&
      &47)+acc309(69)
      acc309(69)=Qspval6k1*acc309(69)
      acc309(70)=Qspval5k7*acc309(66)
      acc309(71)=Qspval6k7*acc309(61)
      acc309(72)=QspQ*acc309(49)
      acc309(73)=Qspk1*acc309(50)
      acc309(70)=acc309(73)+acc309(72)+acc309(71)+acc309(28)+acc309(70)
      acc309(70)=Qspk2*acc309(70)
      acc309(71)=Qspval6e7*acc309(65)
      acc309(72)=Qspval6k7*acc309(43)
      acc309(73)=Qspval6k2*acc309(6)
      acc309(74)=Qspval5k2*acc309(15)
      acc309(71)=acc309(74)+acc309(73)+acc309(72)+acc309(2)+acc309(71)
      acc309(71)=Qspvak2k1*acc309(71)
      acc309(72)=Qspval6e7*acc309(64)
      acc309(73)=-Qspval6k7*acc309(39)
      acc309(74)=-Qspval6k2*acc309(3)
      acc309(75)=-Qspval5k2*acc309(45)
      acc309(72)=acc309(75)+acc309(74)+acc309(73)+acc309(21)+acc309(72)
      acc309(72)=Qspvak4k1*acc309(72)
      acc309(73)=Qspval5k7*acc309(41)
      acc309(74)=Qspval6k7*acc309(34)
      acc309(75)=QspQ*acc309(37)
      acc309(76)=Qspk1*acc309(44)
      acc309(73)=acc309(76)+acc309(75)+acc309(74)+acc309(32)+acc309(73)
      acc309(73)=Qspvak4k2*acc309(73)
      acc309(74)=Qspvak2e7*acc309(55)
      acc309(75)=Qspvak4e7*acc309(53)
      acc309(76)=Qspval6e7*acc309(51)
      acc309(74)=acc309(76)+acc309(75)+acc309(46)+acc309(74)
      acc309(74)=QspQ*acc309(74)
      acc309(75)=Qspvak2e7*acc309(56)
      acc309(76)=Qspvak4e7*acc309(54)
      acc309(77)=Qspval6e7*acc309(52)
      acc309(75)=acc309(77)+acc309(76)+acc309(48)+acc309(75)
      acc309(75)=Qspk1*acc309(75)
      acc309(76)=Qspvak2k7*acc309(38)
      acc309(77)=-Qspvak4k7*acc309(34)
      acc309(76)=acc309(76)+acc309(77)
      acc309(76)=Qspval6k2*acc309(76)
      acc309(77)=Qspvak2k7*acc309(30)
      acc309(78)=-Qspvak4k7*acc309(41)
      acc309(77)=acc309(78)+acc309(1)+acc309(77)
      acc309(77)=Qspval5k2*acc309(77)
      acc309(78)=acc309(58)*Qspvak7k1
      acc309(79)=acc309(57)*Qspvae7k1
      acc309(80)=Qspl5*acc309(20)
      acc309(81)=Qspval5k7*acc309(31)
      acc309(82)=Qspvak2k7*acc309(36)
      acc309(83)=Qspvak4k7*acc309(27)
      acc309(84)=Qspval6k7*acc309(59)
      brack=acc309(14)+acc309(67)+acc309(68)+acc309(69)+acc309(70)+acc309(71)+a&
      &cc309(72)+acc309(73)+acc309(74)+acc309(75)+acc309(76)+acc309(77)+acc309(&
      &78)+acc309(79)+acc309(80)+acc309(81)+acc309(82)+acc309(83)+acc309(84)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram309_sign, shift => diagram309_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd309h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d309
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d309 = 0.0_ki
      d309 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d309, ki), aimag(d309), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd309h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d309
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d309 = 0.0_ki
      d309 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d309, ki), aimag(d309), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d309h0l1
