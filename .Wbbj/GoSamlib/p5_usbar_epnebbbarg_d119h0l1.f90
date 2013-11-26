module     p5_usbar_epnebbbarg_d119h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d119h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd119h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc119(84)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvae7k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvae7l6
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      acc119(1)=abb119(9)
      acc119(2)=abb119(10)
      acc119(3)=abb119(11)
      acc119(4)=abb119(12)
      acc119(5)=abb119(13)
      acc119(6)=abb119(14)
      acc119(7)=abb119(15)
      acc119(8)=abb119(16)
      acc119(9)=abb119(17)
      acc119(10)=abb119(18)
      acc119(11)=abb119(19)
      acc119(12)=abb119(20)
      acc119(13)=abb119(21)
      acc119(14)=abb119(22)
      acc119(15)=abb119(23)
      acc119(16)=abb119(24)
      acc119(17)=abb119(25)
      acc119(18)=abb119(26)
      acc119(19)=abb119(27)
      acc119(20)=abb119(28)
      acc119(21)=abb119(29)
      acc119(22)=abb119(30)
      acc119(23)=abb119(31)
      acc119(24)=abb119(32)
      acc119(25)=abb119(33)
      acc119(26)=abb119(34)
      acc119(27)=abb119(35)
      acc119(28)=abb119(36)
      acc119(29)=abb119(37)
      acc119(30)=abb119(38)
      acc119(31)=abb119(39)
      acc119(32)=abb119(40)
      acc119(33)=abb119(41)
      acc119(34)=abb119(42)
      acc119(35)=abb119(43)
      acc119(36)=abb119(44)
      acc119(37)=abb119(45)
      acc119(38)=abb119(46)
      acc119(39)=abb119(47)
      acc119(40)=abb119(48)
      acc119(41)=abb119(49)
      acc119(42)=abb119(50)
      acc119(43)=abb119(51)
      acc119(44)=abb119(52)
      acc119(45)=abb119(53)
      acc119(46)=abb119(54)
      acc119(47)=abb119(55)
      acc119(48)=abb119(72)
      acc119(49)=abb119(83)
      acc119(50)=abb119(86)
      acc119(51)=abb119(92)
      acc119(52)=abb119(96)
      acc119(53)=abb119(98)
      acc119(54)=abb119(99)
      acc119(55)=abb119(100)
      acc119(56)=abb119(101)
      acc119(57)=abb119(103)
      acc119(58)=abb119(104)
      acc119(59)=abb119(105)
      acc119(60)=abb119(106)
      acc119(61)=abb119(107)
      acc119(62)=abb119(108)
      acc119(63)=-Qspk1+Qspk4+Qspk3
      acc119(64)=-acc119(49)*acc119(63)
      acc119(65)=Qspval5k1*acc119(55)
      acc119(66)=Qspval5k3*acc119(53)
      acc119(67)=Qspvak7k1*acc119(58)
      acc119(68)=Qspvak7k3*acc119(57)
      acc119(69)=Qspvae7k1*acc119(56)
      acc119(70)=Qspvae7k3*acc119(54)
      acc119(71)=Qspvak4k1*acc119(8)
      acc119(72)=Qspvak4k3*acc119(14)
      acc119(64)=acc119(72)+acc119(71)+acc119(70)+acc119(69)+acc119(68)+acc119(&
      &67)+acc119(66)+acc119(48)+acc119(65)+acc119(64)
      acc119(64)=Qspk2*acc119(64)
      acc119(65)=-acc119(16)*acc119(63)
      acc119(66)=Qspvak2k1*acc119(23)
      acc119(67)=-Qspvak2k3*acc119(18)
      acc119(68)=Qspvak4k1*acc119(26)
      acc119(69)=Qspvak4k3*acc119(41)
      acc119(65)=acc119(69)+acc119(68)+acc119(67)+acc119(11)+acc119(66)+acc119(&
      &65)
      acc119(65)=Qspval6l5*acc119(65)
      acc119(66)=-acc119(60)*acc119(63)
      acc119(67)=Qspvak2k1*acc119(37)
      acc119(68)=-Qspvak2k3*acc119(35)
      acc119(69)=Qspvak4k1*acc119(7)
      acc119(70)=Qspvak4k3*acc119(44)
      acc119(66)=acc119(70)+acc119(69)+acc119(68)+acc119(59)+acc119(67)+acc119(&
      &66)
      acc119(66)=Qspval6k7*acc119(66)
      acc119(67)=-acc119(33)*acc119(63)
      acc119(68)=-Qspval6k1*acc119(61)
      acc119(69)=Qspval6k3*acc119(39)
      acc119(70)=Qspvak4k1*acc119(1)
      acc119(71)=Qspvak4k3*acc119(31)
      acc119(67)=acc119(71)+acc119(70)+acc119(69)+acc119(5)+acc119(68)+acc119(6&
      &7)
      acc119(67)=Qspvak2e7*acc119(67)
      acc119(68)=-acc119(27)*acc119(63)
      acc119(69)=Qspvak2k1*acc119(61)
      acc119(70)=-Qspvak2k3*acc119(39)
      acc119(71)=Qspvak4k1*acc119(9)
      acc119(72)=Qspvak4k3*acc119(42)
      acc119(68)=acc119(72)+acc119(71)+acc119(70)+acc119(21)+acc119(69)+acc119(&
      &68)
      acc119(68)=Qspval6e7*acc119(68)
      acc119(69)=Qspval5k2*acc119(34)
      acc119(70)=Qspvak7k2*acc119(47)
      acc119(71)=Qspvae7k2*acc119(45)
      acc119(69)=acc119(71)+acc119(70)+acc119(19)+acc119(69)
      acc119(69)=Qspvak2k1*acc119(69)
      acc119(70)=Qspval5k2*acc119(43)
      acc119(71)=Qspvak7k2*acc119(40)
      acc119(72)=Qspvae7k2*acc119(38)
      acc119(70)=acc119(72)+acc119(71)+acc119(25)+acc119(70)
      acc119(70)=Qspvak2k3*acc119(70)
      acc119(71)=-acc119(12)*acc119(63)
      acc119(72)=-Qspval6k1*acc119(23)
      acc119(73)=Qspval6k3*acc119(18)
      acc119(71)=acc119(73)+acc119(6)+acc119(72)+acc119(71)
      acc119(71)=Qspvak2l5*acc119(71)
      acc119(72)=-acc119(30)*acc119(63)
      acc119(73)=-Qspval6k1*acc119(37)
      acc119(74)=Qspval6k3*acc119(35)
      acc119(72)=acc119(74)+acc119(20)+acc119(73)+acc119(72)
      acc119(72)=Qspvak2k7*acc119(72)
      acc119(73)=Qspvak2l5*acc119(17)
      acc119(74)=Qspvak2k7*acc119(28)
      acc119(73)=acc119(74)+acc119(2)+acc119(73)
      acc119(73)=Qspvak4k1*acc119(73)
      acc119(74)=Qspvak2l5*acc119(29)
      acc119(75)=Qspvak2k7*acc119(36)
      acc119(74)=acc119(75)+acc119(13)+acc119(74)
      acc119(74)=Qspvak4k3*acc119(74)
      acc119(63)=acc119(46)*acc119(63)
      acc119(75)=acc119(50)*Qspvak7l6
      acc119(76)=acc119(15)*Qspval5l6
      acc119(77)=acc119(4)*Qspvak2l6
      acc119(78)=acc119(3)*Qspvae7l6
      acc119(79)=Qspval5k1*acc119(24)
      acc119(80)=Qspval5k3*acc119(62)
      acc119(81)=Qspvak7k1*acc119(22)
      acc119(82)=Qspvak7k3*acc119(52)
      acc119(83)=Qspvae7k1*acc119(32)
      acc119(84)=Qspvae7k3*acc119(51)
      brack=acc119(10)+acc119(63)+acc119(64)+acc119(65)+acc119(66)+acc119(67)+a&
      &cc119(68)+acc119(69)+acc119(70)+acc119(71)+acc119(72)+acc119(73)+acc119(&
      &74)+acc119(75)+acc119(76)+acc119(77)+acc119(78)+acc119(79)+acc119(80)+ac&
      &c119(81)+acc119(82)+acc119(83)+acc119(84)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram119_sign, shift => diagram119_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd119h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d119
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d119 = 0.0_ki
      d119 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d119, ki), aimag(d119), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd119h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d119
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d119 = 0.0_ki
      d119 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d119, ki), aimag(d119), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d119h0l1
