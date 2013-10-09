module     p0_dbaru_epnebbbarg_d79h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d79h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd79h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc79(96)
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspl5
      complex(ki) :: QspQ
      Qspl6 = dotproduct(Q,l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspl5 = dotproduct(Q,l5)
      QspQ = dotproduct(Q,Q)
      acc79(1)=abb79(9)
      acc79(2)=abb79(10)
      acc79(3)=abb79(11)
      acc79(4)=abb79(12)
      acc79(5)=abb79(13)
      acc79(6)=abb79(14)
      acc79(7)=abb79(15)
      acc79(8)=abb79(16)
      acc79(9)=abb79(17)
      acc79(10)=abb79(18)
      acc79(11)=abb79(19)
      acc79(12)=abb79(20)
      acc79(13)=abb79(21)
      acc79(14)=abb79(22)
      acc79(15)=abb79(23)
      acc79(16)=abb79(24)
      acc79(17)=abb79(25)
      acc79(18)=abb79(26)
      acc79(19)=abb79(27)
      acc79(20)=abb79(28)
      acc79(21)=abb79(29)
      acc79(22)=abb79(30)
      acc79(23)=abb79(31)
      acc79(24)=abb79(32)
      acc79(25)=abb79(33)
      acc79(26)=abb79(34)
      acc79(27)=abb79(35)
      acc79(28)=abb79(36)
      acc79(29)=abb79(37)
      acc79(30)=abb79(38)
      acc79(31)=abb79(39)
      acc79(32)=abb79(40)
      acc79(33)=abb79(42)
      acc79(34)=abb79(43)
      acc79(35)=abb79(44)
      acc79(36)=abb79(46)
      acc79(37)=abb79(47)
      acc79(38)=abb79(48)
      acc79(39)=abb79(49)
      acc79(40)=abb79(51)
      acc79(41)=abb79(52)
      acc79(42)=abb79(53)
      acc79(43)=abb79(54)
      acc79(44)=abb79(55)
      acc79(45)=abb79(56)
      acc79(46)=abb79(57)
      acc79(47)=abb79(58)
      acc79(48)=abb79(60)
      acc79(49)=abb79(65)
      acc79(50)=abb79(68)
      acc79(51)=abb79(69)
      acc79(52)=abb79(71)
      acc79(53)=abb79(72)
      acc79(54)=abb79(74)
      acc79(55)=abb79(76)
      acc79(56)=abb79(79)
      acc79(57)=abb79(80)
      acc79(58)=abb79(81)
      acc79(59)=abb79(83)
      acc79(60)=abb79(85)
      acc79(61)=abb79(86)
      acc79(62)=abb79(87)
      acc79(63)=abb79(88)
      acc79(64)=abb79(89)
      acc79(65)=abb79(90)
      acc79(66)=abb79(91)
      acc79(67)=abb79(92)
      acc79(68)=abb79(93)
      acc79(69)=abb79(96)
      acc79(70)=abb79(100)
      acc79(71)=abb79(101)
      acc79(72)=abb79(103)
      acc79(73)=abb79(105)
      acc79(74)=abb79(107)
      acc79(75)=abb79(114)
      acc79(76)=abb79(116)
      acc79(77)=abb79(117)
      acc79(78)=abb79(118)
      acc79(79)=abb79(119)
      acc79(80)=abb79(121)
      acc79(81)=Qspl6*acc79(66)
      acc79(82)=Qspvak4l6*acc79(42)
      acc79(83)=Qspval5l6*acc79(57)
      acc79(84)=Qspvak7l6*acc79(49)
      acc79(85)=Qspk1*acc79(65)
      acc79(86)=Qspvak1k2*acc79(11)
      acc79(87)=Qspvak2k1*acc79(21)
      acc79(88)=Qspvak1k3*acc79(31)
      acc79(89)=Qspvak2k3*acc79(67)
      acc79(90)=Qspvak2l6*acc79(74)
      acc79(91)=Qspk2*acc79(48)
      acc79(92)=Qspvak1l6*acc79(59)
      acc79(81)=acc79(92)+acc79(91)+acc79(90)+acc79(89)+acc79(88)+acc79(87)+acc&
      &79(86)+acc79(85)+acc79(84)+acc79(83)+acc79(82)+acc79(51)+acc79(81)
      acc79(81)=Qspe7*acc79(81)
      acc79(82)=Qspl6*acc79(38)
      acc79(83)=Qspvak4l6*acc79(16)
      acc79(84)=Qspval5l6*acc79(62)
      acc79(85)=Qspvak7l6*acc79(47)
      acc79(86)=Qspk1*acc79(14)
      acc79(87)=Qspvak1k2*acc79(8)
      acc79(88)=Qspvak2k1*acc79(36)
      acc79(89)=Qspvak1k3*acc79(1)
      acc79(90)=Qspvak2k3*acc79(25)
      acc79(91)=Qspvak2l6*acc79(2)
      acc79(92)=Qspk2*acc79(3)
      acc79(93)=Qspvak1l6*acc79(53)
      acc79(82)=acc79(93)+acc79(92)+acc79(91)+acc79(90)+acc79(89)+acc79(88)+acc&
      &79(87)+acc79(86)+acc79(85)+acc79(84)+acc79(83)+acc79(13)+acc79(82)
      acc79(82)=Qspvae7k2*acc79(82)
      acc79(83)=Qspvak1l5*acc79(7)
      acc79(84)=Qspvak2l5*acc79(63)
      acc79(85)=-Qspvak1l6*acc79(55)
      acc79(83)=acc79(85)+acc79(84)+acc79(34)+acc79(83)
      acc79(83)=Qspe7*acc79(83)
      acc79(84)=Qspvak1l5*acc79(9)
      acc79(85)=Qspvak2l5*acc79(79)
      acc79(86)=Qspvak1l6*acc79(60)
      acc79(84)=acc79(86)+acc79(85)+acc79(29)+acc79(84)
      acc79(84)=Qspvae7k2*acc79(84)
      acc79(85)=-Qspvak1k7*acc79(45)
      acc79(86)=Qspk7*acc79(76)
      acc79(85)=acc79(86)+acc79(54)+acc79(85)
      acc79(85)=Qspvak2l5*acc79(85)
      acc79(86)=Qspvak2l6*acc79(43)
      acc79(86)=acc79(86)+acc79(39)
      acc79(86)=Qspvak1k7*acc79(86)
      acc79(87)=Qspvak2k7*acc79(35)
      acc79(88)=Qspk7*acc79(44)
      acc79(89)=Qspvak2k7*acc79(45)
      acc79(89)=acc79(4)+acc79(89)
      acc79(89)=Qspvak1l5*acc79(89)
      acc79(90)=-Qspvak2l5*acc79(76)
      acc79(90)=acc79(41)+acc79(90)
      acc79(90)=Qspk2*acc79(90)
      acc79(91)=-Qspvak2k7*acc79(43)
      acc79(91)=acc79(50)+acc79(91)
      acc79(91)=Qspvak1l6*acc79(91)
      acc79(83)=acc79(84)+acc79(83)+acc79(91)+acc79(90)+acc79(85)+acc79(89)+acc&
      &79(88)+acc79(87)+acc79(19)+acc79(86)
      acc79(83)=Qspvak4k3*acc79(83)
      acc79(84)=-Qspk2+Qspk7
      acc79(84)=acc79(24)*acc79(84)
      acc79(85)=Qspvak2k1*acc79(27)
      acc79(86)=Qspvak1k3*acc79(5)
      acc79(87)=Qspvak1l5*acc79(23)
      acc79(88)=Qspvak2k3*acc79(56)
      acc79(89)=-Qspvak2l6*acc79(77)
      acc79(84)=acc79(89)+acc79(88)+acc79(87)+acc79(86)+acc79(17)-acc79(85)+acc&
      &79(84)
      acc79(84)=Qspk2*acc79(84)
      acc79(86)=-Qspk7-Qspl5
      acc79(86)=acc79(69)*acc79(86)
      acc79(87)=QspQ*acc79(61)
      acc79(88)=Qspvak2k1*acc79(70)
      acc79(89)=-Qspvak2k3*acc79(46)
      acc79(90)=-Qspvak2l5*acc79(73)
      acc79(91)=Qspk2*acc79(71)
      acc79(86)=acc79(91)+acc79(90)+acc79(89)+acc79(88)+acc79(58)+acc79(87)+acc&
      &79(86)
      acc79(86)=Qspvak1l6*acc79(86)
      acc79(87)=Qspk1*acc79(78)
      acc79(88)=Qspvak1k2*acc79(26)
      acc79(89)=Qspvak1k3*acc79(46)
      acc79(90)=Qspk7*acc79(77)
      acc79(91)=Qspvak1l5*acc79(73)
      acc79(87)=acc79(91)+acc79(90)+acc79(89)+acc79(88)+acc79(52)+acc79(87)
      acc79(87)=Qspvak2l6*acc79(87)
      acc79(88)=QspQ*acc79(64)
      acc79(89)=Qspl5*acc79(80)
      acc79(90)=Qspk7*acc79(75)
      acc79(91)=-Qspvak1l5*acc79(28)
      acc79(88)=acc79(91)+acc79(90)+acc79(89)+acc79(22)+acc79(88)
      acc79(88)=Qspvak2k3*acc79(88)
      acc79(89)=Qspk1*acc79(30)
      acc79(90)=Qspvak1k2*acc79(15)
      acc79(91)=Qspvak1k3*acc79(28)
      acc79(89)=acc79(91)+acc79(89)+acc79(90)
      acc79(89)=Qspvak2l5*acc79(89)
      acc79(90)=QspQ*acc79(6)
      acc79(91)=Qspl5*acc79(33)
      acc79(90)=acc79(90)+acc79(91)
      acc79(90)=Qspvak1k3*acc79(90)
      acc79(91)=Qspvak1k3*acc79(33)
      acc79(85)=acc79(91)+acc79(40)+acc79(85)
      acc79(85)=Qspk7*acc79(85)
      acc79(91)=QspQ*acc79(37)
      acc79(92)=Qspl5*acc79(68)
      acc79(93)=Qspk1*acc79(72)
      acc79(94)=Qspvak1k2*acc79(10)
      acc79(95)=Qspvak2k1*acc79(18)
      acc79(96)=Qspvak2k1*acc79(32)
      acc79(96)=acc79(12)+acc79(96)
      acc79(96)=Qspvak1l5*acc79(96)
      brack=acc79(20)+acc79(81)+acc79(82)+acc79(83)+acc79(84)+acc79(85)+acc79(8&
      &6)+acc79(87)+acc79(88)+acc79(89)+acc79(90)+acc79(91)+acc79(92)+acc79(93)&
      &+acc79(94)+acc79(95)+acc79(96)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram79_sign, shift => diagram79_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd79h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d79
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d79 = 0.0_ki
      d79 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d79, ki), aimag(d79), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd79h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d79
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d79 = 0.0_ki
      d79 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d79, ki), aimag(d79), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d79h3l1
