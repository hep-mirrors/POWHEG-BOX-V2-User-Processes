module     p9_csbar_epnebbbarg_d306h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d306h2l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd306h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc306(97)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak3l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval5l6
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak3k7
      complex(ki) :: Qspvak3e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspk7
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak3l6 = dotproduct(Q,spvak3l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspl5 = dotproduct(Q,l5)
      Qspvak3k7 = dotproduct(Q,spvak3k7)
      Qspvak3e7 = dotproduct(Q,spvak3e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspk7 = dotproduct(Q,k7)
      acc306(1)=abb306(8)
      acc306(2)=abb306(9)
      acc306(3)=abb306(10)
      acc306(4)=abb306(11)
      acc306(5)=abb306(12)
      acc306(6)=abb306(13)
      acc306(7)=abb306(14)
      acc306(8)=abb306(15)
      acc306(9)=abb306(16)
      acc306(10)=abb306(17)
      acc306(11)=abb306(18)
      acc306(12)=abb306(19)
      acc306(13)=abb306(20)
      acc306(14)=abb306(21)
      acc306(15)=abb306(22)
      acc306(16)=abb306(23)
      acc306(17)=abb306(24)
      acc306(18)=abb306(25)
      acc306(19)=abb306(26)
      acc306(20)=abb306(27)
      acc306(21)=abb306(28)
      acc306(22)=abb306(29)
      acc306(23)=abb306(30)
      acc306(24)=abb306(31)
      acc306(25)=abb306(32)
      acc306(26)=abb306(33)
      acc306(27)=abb306(34)
      acc306(28)=abb306(35)
      acc306(29)=abb306(36)
      acc306(30)=abb306(37)
      acc306(31)=abb306(38)
      acc306(32)=abb306(39)
      acc306(33)=abb306(40)
      acc306(34)=abb306(41)
      acc306(35)=abb306(42)
      acc306(36)=abb306(43)
      acc306(37)=abb306(44)
      acc306(38)=abb306(45)
      acc306(39)=abb306(46)
      acc306(40)=abb306(47)
      acc306(41)=abb306(48)
      acc306(42)=abb306(49)
      acc306(43)=abb306(50)
      acc306(44)=abb306(51)
      acc306(45)=abb306(52)
      acc306(46)=abb306(54)
      acc306(47)=abb306(55)
      acc306(48)=abb306(57)
      acc306(49)=abb306(59)
      acc306(50)=abb306(60)
      acc306(51)=abb306(61)
      acc306(52)=abb306(62)
      acc306(53)=abb306(63)
      acc306(54)=abb306(65)
      acc306(55)=abb306(66)
      acc306(56)=abb306(67)
      acc306(57)=abb306(68)
      acc306(58)=abb306(69)
      acc306(59)=abb306(70)
      acc306(60)=abb306(71)
      acc306(61)=abb306(76)
      acc306(62)=abb306(78)
      acc306(63)=abb306(79)
      acc306(64)=abb306(80)
      acc306(65)=abb306(81)
      acc306(66)=abb306(82)
      acc306(67)=abb306(84)
      acc306(68)=abb306(87)
      acc306(69)=abb306(88)
      acc306(70)=abb306(90)
      acc306(71)=abb306(91)
      acc306(72)=abb306(96)
      acc306(73)=abb306(97)
      acc306(74)=abb306(100)
      acc306(75)=abb306(102)
      acc306(76)=abb306(103)
      acc306(77)=abb306(104)
      acc306(78)=abb306(107)
      acc306(79)=-Qspk1+Qspk4+Qspk3
      acc306(80)=acc306(33)*acc306(79)
      acc306(81)=Qspvak4k1*acc306(58)
      acc306(82)=Qspvak4k3*acc306(71)
      acc306(80)=acc306(82)+acc306(81)+acc306(80)
      acc306(80)=Qspk2*acc306(80)
      acc306(81)=Qspvak4l6*acc306(77)
      acc306(81)=acc306(81)-acc306(61)
      acc306(81)=acc306(81)*acc306(79)
      acc306(82)=acc306(45)*Qspvak1l6
      acc306(83)=Qspvak4l6*acc306(19)
      acc306(82)=acc306(83)+acc306(2)+acc306(82)
      acc306(82)=Qspvak4k1*acc306(82)
      acc306(83)=-acc306(45)*Qspvak3l6
      acc306(84)=Qspvak4l6*acc306(62)
      acc306(83)=acc306(84)+acc306(21)+acc306(83)
      acc306(83)=Qspvak4k3*acc306(83)
      acc306(84)=Qspvak2l5*acc306(46)
      acc306(85)=Qspvak7k1*acc306(68)
      acc306(86)=Qspvak7k3*acc306(69)
      acc306(87)=Qspvak7l6*acc306(66)
      acc306(88)=Qspvak2k1*acc306(14)
      acc306(89)=Qspvak2k3*acc306(4)
      acc306(90)=Qspvak2l6*acc306(27)
      acc306(91)=Qspval5l6*acc306(72)
      acc306(92)=QspQ*acc306(38)
      acc306(80)=acc306(80)+acc306(83)+acc306(82)+acc306(92)+acc306(91)+acc306(&
      &90)+acc306(89)+acc306(88)+acc306(87)+acc306(86)+acc306(85)+acc306(16)+ac&
      &c306(84)+acc306(81)
      acc306(80)=Qspe7*acc306(80)
      acc306(81)=acc306(60)*Qspvak1k7
      acc306(82)=acc306(49)*Qspvak1l6
      acc306(83)=acc306(31)*Qspvak1e7
      acc306(84)=Qspvak4k7*acc306(15)
      acc306(85)=Qspvak4e7*acc306(24)
      acc306(86)=Qspvak2k7*acc306(1)
      acc306(87)=Qspvak2e7*acc306(3)
      acc306(88)=Qspl5*acc306(8)
      acc306(89)=Qspvak4l6*acc306(36)
      acc306(90)=QspQ*acc306(5)
      acc306(81)=acc306(90)+acc306(89)+acc306(88)+acc306(87)+acc306(86)+acc306(&
      &85)+acc306(84)+acc306(83)+acc306(82)+acc306(7)+acc306(81)
      acc306(81)=Qspvak4k1*acc306(81)
      acc306(82)=-acc306(60)*Qspvak3k7
      acc306(83)=-acc306(49)*Qspvak3l6
      acc306(84)=-acc306(31)*Qspvak3e7
      acc306(85)=Qspvak4k7*acc306(78)
      acc306(86)=Qspvak4e7*acc306(35)
      acc306(87)=Qspvak2k7*acc306(17)
      acc306(88)=Qspvak2e7*acc306(70)
      acc306(89)=Qspl5*acc306(63)
      acc306(90)=Qspvak4l6*acc306(65)
      acc306(91)=QspQ*acc306(39)
      acc306(82)=acc306(91)+acc306(90)+acc306(89)+acc306(88)+acc306(87)+acc306(&
      &86)+acc306(85)+acc306(84)+acc306(83)+acc306(18)+acc306(82)
      acc306(82)=Qspvak4k3*acc306(82)
      acc306(83)=acc306(22)*acc306(79)
      acc306(84)=Qspvak2k1*acc306(6)
      acc306(85)=-Qspvak2k3*acc306(37)
      acc306(86)=-Qspvak2l6*acc306(32)
      acc306(87)=Qspval5l6*acc306(57)
      acc306(88)=Qspl5*acc306(20)
      acc306(89)=QspQ*acc306(48)
      acc306(90)=Qspvak4k1*acc306(52)
      acc306(91)=Qspvak4k3*acc306(64)
      acc306(92)=Qspk2*acc306(10)
      acc306(83)=acc306(92)+acc306(91)+acc306(90)+acc306(89)+acc306(88)+acc306(&
      &87)+acc306(86)+acc306(85)+acc306(12)+acc306(84)+acc306(83)
      acc306(83)=Qspk2*acc306(83)
      acc306(84)=Qspvak4k7*acc306(75)
      acc306(85)=Qspvak4e7*acc306(44)
      acc306(86)=Qspvak2k7*acc306(29)
      acc306(87)=Qspvak2e7*acc306(54)
      acc306(88)=Qspl5*acc306(67)
      acc306(89)=Qspvak4l6*acc306(76)
      acc306(90)=QspQ*acc306(41)
      acc306(84)=-acc306(87)+acc306(86)-acc306(84)-acc306(85)+acc306(88)-acc306&
      &(89)+acc306(90)-acc306(59)
      acc306(79)=-acc306(84)*acc306(79)
      acc306(84)=Qspvak2k1*acc306(28)
      acc306(85)=Qspvak2k3*acc306(43)
      acc306(86)=Qspvak2l6*acc306(30)
      acc306(87)=Qspval5l6*acc306(73)
      acc306(84)=acc306(87)+acc306(86)+acc306(85)+acc306(11)+acc306(84)
      acc306(84)=QspQ*acc306(84)
      acc306(85)=acc306(40)*Qspvae7l6
      acc306(86)=Qspvak2l5*acc306(13)
      acc306(87)=Qspvak7k1*acc306(56)
      acc306(88)=Qspvak7k3*acc306(51)
      acc306(89)=Qspvak7l6*acc306(34)
      acc306(90)=Qspk7*acc306(42)
      acc306(91)=-Qspk7*acc306(6)
      acc306(91)=acc306(23)+acc306(91)
      acc306(91)=Qspvak2k1*acc306(91)
      acc306(92)=Qspk7*acc306(37)
      acc306(92)=acc306(47)+acc306(92)
      acc306(92)=Qspvak2k3*acc306(92)
      acc306(93)=Qspk7*acc306(32)
      acc306(93)=acc306(26)+acc306(93)
      acc306(93)=Qspvak2l6*acc306(93)
      acc306(94)=Qspval5l6*acc306(50)
      acc306(95)=Qspvak2k7*acc306(25)
      acc306(96)=Qspvak2e7*acc306(53)
      acc306(97)=Qspval5l6*acc306(74)
      acc306(97)=acc306(55)+acc306(97)
      acc306(97)=Qspl5*acc306(97)
      brack=acc306(9)+acc306(79)+acc306(80)+acc306(81)+acc306(82)+acc306(83)+ac&
      &c306(84)+acc306(85)+acc306(86)+acc306(87)+acc306(88)+acc306(89)+acc306(9&
      &0)+acc306(91)+acc306(92)+acc306(93)+acc306(94)+acc306(95)+acc306(96)+acc&
      &306(97)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram306_sign, shift => diagram306_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd306h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d306
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d306 = 0.0_ki
      d306 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d306, ki), aimag(d306), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd306h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d306
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d306 = 0.0_ki
      d306 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d306, ki), aimag(d306), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d306h2l1
