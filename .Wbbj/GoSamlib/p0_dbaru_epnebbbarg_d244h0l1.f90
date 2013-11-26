module     p0_dbaru_epnebbbarg_d244h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d244h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd244h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc244(95)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: QspQ
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      QspQ = dotproduct(Q,Q)
      acc244(1)=abb244(15)
      acc244(2)=abb244(16)
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
      acc244(38)=abb244(54)
      acc244(39)=abb244(56)
      acc244(40)=abb244(57)
      acc244(41)=abb244(58)
      acc244(42)=abb244(62)
      acc244(43)=abb244(65)
      acc244(44)=abb244(69)
      acc244(45)=abb244(70)
      acc244(46)=abb244(73)
      acc244(47)=abb244(75)
      acc244(48)=abb244(76)
      acc244(49)=abb244(77)
      acc244(50)=abb244(80)
      acc244(51)=abb244(86)
      acc244(52)=abb244(89)
      acc244(53)=abb244(92)
      acc244(54)=abb244(95)
      acc244(55)=abb244(96)
      acc244(56)=abb244(100)
      acc244(57)=abb244(102)
      acc244(58)=abb244(107)
      acc244(59)=abb244(111)
      acc244(60)=abb244(113)
      acc244(61)=abb244(119)
      acc244(62)=abb244(121)
      acc244(63)=abb244(129)
      acc244(64)=abb244(139)
      acc244(65)=abb244(154)
      acc244(66)=abb244(162)
      acc244(67)=abb244(243)
      acc244(68)=Qspl6+Qspl5
      acc244(69)=acc244(68)-Qspk7
      acc244(70)=acc244(26)*acc244(69)
      acc244(71)=Qspk2*acc244(30)
      acc244(72)=Qspe7*acc244(22)
      acc244(73)=Qspval5k2*acc244(25)
      acc244(74)=Qspval5l6*acc244(50)
      acc244(75)=Qspval5k7*acc244(11)
      acc244(76)=Qspval6k2*acc244(39)
      acc244(77)=Qspval6l5*acc244(49)
      acc244(78)=Qspval6k7*acc244(48)
      acc244(79)=Qspvak7k2*acc244(44)
      acc244(80)=Qspvae7k2*acc244(43)
      acc244(81)=Qspval5e7*acc244(41)
      acc244(82)=Qspval6e7*acc244(40)
      acc244(70)=acc244(82)+acc244(81)+acc244(80)+acc244(79)+acc244(78)+acc244(&
      &77)+acc244(76)+acc244(75)+acc244(74)+acc244(73)+acc244(72)+acc244(71)+ac&
      &c244(70)
      acc244(70)=Qspvak1k3*acc244(70)
      acc244(71)=-acc244(18)*acc244(69)
      acc244(72)=Qspk2*acc244(6)
      acc244(73)=Qspe7*acc244(17)
      acc244(74)=Qspval5k2*acc244(28)
      acc244(75)=Qspval5l6*acc244(34)
      acc244(76)=Qspval5k7*acc244(33)
      acc244(77)=Qspval6k2*acc244(14)
      acc244(78)=Qspval6l5*acc244(32)
      acc244(79)=Qspval6k7*acc244(31)
      acc244(80)=Qspvak7k2*acc244(23)
      acc244(81)=Qspvae7k2*acc244(5)
      acc244(82)=Qspval5e7*acc244(24)
      acc244(83)=Qspval6e7*acc244(19)
      acc244(71)=acc244(83)+acc244(82)+acc244(81)+acc244(80)+acc244(79)+acc244(&
      &78)+acc244(77)+acc244(76)+acc244(75)+acc244(74)+acc244(73)+acc244(12)+ac&
      &c244(72)+acc244(71)
      acc244(71)=Qspvak1k2*acc244(71)
      acc244(69)=acc244(54)*acc244(69)
      acc244(72)=Qspk2*acc244(55)
      acc244(73)=Qspe7*acc244(53)
      acc244(74)=Qspval5k2*acc244(27)
      acc244(75)=Qspval5l6*acc244(60)
      acc244(76)=Qspval5k7*acc244(59)
      acc244(77)=Qspval6k2*acc244(62)
      acc244(78)=Qspval6l5*acc244(61)
      acc244(79)=Qspval6k7*acc244(51)
      acc244(80)=Qspvak7k2*acc244(58)
      acc244(81)=Qspvae7k2*acc244(46)
      acc244(82)=Qspval5e7*acc244(57)
      acc244(83)=Qspval6e7*acc244(56)
      acc244(69)=acc244(83)+acc244(82)+acc244(81)+acc244(80)+acc244(79)+acc244(&
      &78)+acc244(77)+acc244(76)+acc244(75)+acc244(74)+acc244(73)+acc244(45)+ac&
      &c244(72)+acc244(69)
      acc244(69)=Qspvak4k2*acc244(69)
      acc244(68)=acc244(64)*acc244(68)
      acc244(72)=acc244(65)*Qspvak7k3
      acc244(73)=acc244(38)*Qspval5k3
      acc244(74)=acc244(35)*Qspval6k3
      acc244(75)=acc244(29)*Qspvak4l6
      acc244(76)=acc244(21)*Qspvak1l6
      acc244(77)=acc244(20)*Qspvak4l5
      acc244(78)=acc244(16)*Qspvak4k7
      acc244(79)=acc244(15)*Qspvak1k7
      acc244(80)=acc244(8)*Qspvak2k3
      acc244(81)=acc244(7)*Qspvak1l5
      acc244(82)=acc244(4)*QspQ
      acc244(83)=Qspk2*acc244(1)
      acc244(84)=Qspk7*acc244(9)
      acc244(85)=Qspe7*acc244(67)
      acc244(86)=Qspval5k2*acc244(13)
      acc244(87)=Qspval5l6*acc244(2)
      acc244(88)=Qspval5k7*acc244(37)
      acc244(89)=Qspval6k2*acc244(3)
      acc244(90)=Qspval6l5*acc244(10)
      acc244(91)=Qspval6k7*acc244(36)
      acc244(92)=Qspvak7k2*acc244(42)
      acc244(93)=Qspvae7k2*acc244(52)
      acc244(94)=Qspval5e7*acc244(47)
      acc244(95)=Qspval6e7*acc244(63)
      brack=acc244(66)+acc244(68)+acc244(69)+acc244(70)+acc244(71)+acc244(72)+a&
      &cc244(73)+acc244(74)+acc244(75)+acc244(76)+acc244(77)+acc244(78)+acc244(&
      &79)+acc244(80)+acc244(81)+acc244(82)+acc244(83)+acc244(84)+acc244(85)+ac&
      &c244(86)+acc244(87)+acc244(88)+acc244(89)+acc244(90)+acc244(91)+acc244(9&
      &2)+acc244(93)+acc244(94)+acc244(95)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram244_sign, shift => diagram244_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd244h0
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
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd244h0
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
end module p0_dbaru_epnebbbarg_d244h0l1
