module     p5_usbar_epnebbbarg_d121h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d121h2l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd121h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc121(106)
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak3e7
      complex(ki) :: Qspvak3k7
      complex(ki) :: Qspvak3l6
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvae7k3
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k2
      complex(ki) :: QspQ
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak3e7 = dotproduct(Q,spvak3e7)
      Qspvak3k7 = dotproduct(Q,spvak3k7)
      Qspvak3l6 = dotproduct(Q,spvak3l6)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspk3 = dotproduct(Q,k3)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      QspQ = dotproduct(Q,Q)
      acc121(1)=abb121(9)
      acc121(2)=abb121(10)
      acc121(3)=abb121(11)
      acc121(4)=abb121(12)
      acc121(5)=abb121(13)
      acc121(6)=abb121(14)
      acc121(7)=abb121(15)
      acc121(8)=abb121(16)
      acc121(9)=abb121(17)
      acc121(10)=abb121(18)
      acc121(11)=abb121(19)
      acc121(12)=abb121(20)
      acc121(13)=abb121(21)
      acc121(14)=abb121(22)
      acc121(15)=abb121(23)
      acc121(16)=abb121(24)
      acc121(17)=abb121(25)
      acc121(18)=abb121(26)
      acc121(19)=abb121(27)
      acc121(20)=abb121(28)
      acc121(21)=abb121(29)
      acc121(22)=abb121(30)
      acc121(23)=abb121(31)
      acc121(24)=abb121(32)
      acc121(25)=abb121(33)
      acc121(26)=abb121(34)
      acc121(27)=abb121(35)
      acc121(28)=abb121(36)
      acc121(29)=abb121(37)
      acc121(30)=abb121(38)
      acc121(31)=abb121(39)
      acc121(32)=abb121(40)
      acc121(33)=abb121(41)
      acc121(34)=abb121(42)
      acc121(35)=abb121(43)
      acc121(36)=abb121(44)
      acc121(37)=abb121(45)
      acc121(38)=abb121(46)
      acc121(39)=abb121(47)
      acc121(40)=abb121(48)
      acc121(41)=abb121(49)
      acc121(42)=abb121(50)
      acc121(43)=abb121(51)
      acc121(44)=abb121(52)
      acc121(45)=abb121(53)
      acc121(46)=abb121(54)
      acc121(47)=abb121(55)
      acc121(48)=abb121(56)
      acc121(49)=abb121(57)
      acc121(50)=abb121(58)
      acc121(51)=abb121(59)
      acc121(52)=abb121(60)
      acc121(53)=abb121(61)
      acc121(54)=abb121(62)
      acc121(55)=abb121(63)
      acc121(56)=abb121(67)
      acc121(57)=abb121(69)
      acc121(58)=abb121(71)
      acc121(59)=abb121(72)
      acc121(60)=abb121(73)
      acc121(61)=abb121(76)
      acc121(62)=abb121(81)
      acc121(63)=abb121(83)
      acc121(64)=abb121(87)
      acc121(65)=abb121(89)
      acc121(66)=abb121(91)
      acc121(67)=abb121(92)
      acc121(68)=abb121(94)
      acc121(69)=abb121(97)
      acc121(70)=abb121(99)
      acc121(71)=abb121(100)
      acc121(72)=abb121(101)
      acc121(73)=abb121(102)
      acc121(74)=abb121(103)
      acc121(75)=abb121(104)
      acc121(76)=abb121(105)
      acc121(77)=abb121(106)
      acc121(78)=abb121(107)
      acc121(79)=abb121(108)
      acc121(80)=abb121(109)
      acc121(81)=acc121(18)*Qspe7
      acc121(82)=acc121(24)*Qspvak2e7
      acc121(83)=acc121(30)*Qspvae7l6
      acc121(84)=acc121(37)*Qspvak4e7
      acc121(85)=acc121(41)*Qspvak4k2
      acc121(86)=acc121(51)*Qspvak4l6
      acc121(87)=acc121(58)*Qspk2
      acc121(88)=acc121(60)*Qspvak4k7
      acc121(89)=Qspvak3e7*acc121(53)
      acc121(90)=-Qspvak3k7*acc121(34)
      acc121(91)=Qspvak3l6*acc121(35)
      acc121(92)=Qspvak3k2*acc121(32)
      acc121(81)=acc121(92)+acc121(91)+acc121(90)+acc121(89)+acc121(88)+acc121(&
      &87)+acc121(86)+acc121(85)+acc121(84)+acc121(83)+acc121(82)+acc121(81)+ac&
      &c121(16)
      acc121(81)=Qspvak4k3*acc121(81)
      acc121(82)=acc121(1)*Qspvae7l6
      acc121(83)=acc121(4)*Qspe7
      acc121(84)=acc121(5)*Qspk2
      acc121(85)=acc121(7)*Qspvak4l6
      acc121(86)=acc121(20)*Qspvak2e7
      acc121(87)=acc121(27)*Qspvak4e7
      acc121(88)=acc121(28)*Qspvak4k7
      acc121(89)=acc121(31)*Qspvak4k2
      acc121(90)=-Qspvak1e7*acc121(53)
      acc121(91)=Qspvak1k7*acc121(34)
      acc121(92)=-Qspvak1l6*acc121(35)
      acc121(93)=-Qspvak1k2*acc121(32)
      acc121(82)=acc121(93)+acc121(92)+acc121(91)+acc121(90)+acc121(89)+acc121(&
      &88)+acc121(87)+acc121(86)+acc121(8)+acc121(85)+acc121(84)+acc121(83)+acc&
      &121(82)
      acc121(82)=Qspvak4k1*acc121(82)
      acc121(83)=acc121(21)*Qspvak2e7
      acc121(84)=-acc121(56)*Qspvae7l6
      acc121(85)=acc121(59)*Qspe7
      acc121(86)=acc121(62)*Qspvak4k2
      acc121(87)=-acc121(63)*Qspvak4k7
      acc121(88)=acc121(67)*Qspvak4e7
      acc121(89)=acc121(80)*Qspvak4l6
      acc121(83)=acc121(85)+acc121(84)+acc121(83)+acc121(89)+acc121(88)+acc121(&
      &87)+acc121(86)+acc121(14)
      acc121(84)=-Qspk4+Qspk1-Qspk3
      acc121(83)=acc121(84)*acc121(83)
      acc121(85)=acc121(6)*Qspvak7k1
      acc121(86)=acc121(29)*Qspvak2k1
      acc121(87)=acc121(38)*Qspval6k3
      acc121(88)=acc121(55)*Qspvak2k3
      acc121(89)=acc121(57)*Qspval6k1
      acc121(90)=acc121(61)*Qspvak2e7
      acc121(91)=acc121(77)*Qspvak7k3
      acc121(85)=acc121(91)+acc121(90)+acc121(89)+acc121(88)+acc121(43)+acc121(&
      &87)+acc121(86)+acc121(85)
      acc121(85)=Qspvae7l6*acc121(85)
      acc121(86)=-acc121(65)*acc121(84)
      acc121(87)=acc121(9)*Qspvak4k1
      acc121(88)=acc121(17)*Qspvak2e7
      acc121(89)=-acc121(19)*Qspvak4k3
      acc121(90)=acc121(70)*Qspvae7k3
      acc121(91)=-acc121(72)*Qspvae7k1
      acc121(86)=acc121(89)+acc121(88)+acc121(87)+acc121(86)+acc121(91)+acc121(&
      &90)-acc121(47)
      acc121(87)=Qspl6+Qspk7
      acc121(86)=acc121(87)*acc121(86)
      acc121(87)=acc121(2)*Qspvak2l6
      acc121(88)=acc121(23)*Qspvak7k1
      acc121(89)=acc121(39)*Qspvak2k1
      acc121(90)=acc121(44)*Qspvak2k7
      acc121(91)=acc121(50)*Qspvak2k3
      acc121(92)=acc121(76)*Qspvak7k3
      acc121(87)=acc121(92)+acc121(91)+acc121(45)+acc121(90)+acc121(89)+acc121(&
      &88)+acc121(87)
      acc121(87)=Qspe7*acc121(87)
      acc121(88)=acc121(15)*Qspvak2l6
      acc121(89)=acc121(40)*Qspvae7k1
      acc121(90)=acc121(49)*Qspvak2k7
      acc121(91)=acc121(64)*Qspvae7k3
      acc121(88)=acc121(91)+acc121(90)+acc121(89)+acc121(88)+acc121(11)
      acc121(88)=Qspvak2e7*acc121(88)
      acc121(84)=-acc121(26)*acc121(84)
      acc121(89)=acc121(71)*Qspvae7k3
      acc121(90)=acc121(73)*Qspvae7k1
      acc121(84)=acc121(90)+acc121(89)+acc121(3)+acc121(84)
      acc121(84)=Qspk2*acc121(84)
      acc121(89)=acc121(22)*Qspval6k1
      acc121(90)=acc121(25)*Qspval6k3
      acc121(91)=acc121(33)*Qspvak2l6
      acc121(92)=acc121(36)*Qspvak2k7
      acc121(93)=acc121(42)*Qspvak7k1
      acc121(94)=acc121(46)*Qspvak2k1
      acc121(95)=acc121(48)*Qspvak2k3
      acc121(96)=acc121(68)*Qspvae7k1
      acc121(97)=acc121(69)*Qspvae7k3
      acc121(98)=acc121(75)*Qspvak7k3
      acc121(99)=Qspvae7l5*acc121(12)
      acc121(100)=Qspval5e7*acc121(66)
      acc121(101)=Qspvak7l5*acc121(74)
      acc121(102)=Qspval6l5*acc121(13)
      acc121(103)=Qspval5k7*acc121(78)
      acc121(104)=Qspval5l6*acc121(79)
      acc121(105)=Qspval5k2*acc121(54)
      acc121(106)=QspQ*acc121(52)
      brack=acc121(10)+acc121(81)+acc121(82)+acc121(83)+acc121(84)+acc121(85)+a&
      &cc121(86)+acc121(87)+acc121(88)+acc121(89)+acc121(90)+acc121(91)+acc121(&
      &92)+acc121(93)+acc121(94)+acc121(95)+acc121(96)+acc121(97)+acc121(98)+ac&
      &c121(99)+acc121(100)+acc121(101)+acc121(102)+acc121(103)+acc121(104)+acc&
      &121(105)+acc121(106)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram121_sign, shift => diagram121_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd121h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d121
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d121 = 0.0_ki
      d121 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d121, ki), aimag(d121), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd121h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d121
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d121 = 0.0_ki
      d121 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d121, ki), aimag(d121), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d121h2l1
