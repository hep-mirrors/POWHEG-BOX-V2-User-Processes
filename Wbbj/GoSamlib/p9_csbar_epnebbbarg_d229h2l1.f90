module     p9_csbar_epnebbbarg_d229h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d229h2l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd229h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc229(99)
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: QspQ
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk7 = dotproduct(Q,k7)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      QspQ = dotproduct(Q,Q)
      acc229(1)=abb229(13)
      acc229(2)=abb229(14)
      acc229(3)=abb229(15)
      acc229(4)=abb229(16)
      acc229(5)=abb229(17)
      acc229(6)=abb229(18)
      acc229(7)=abb229(19)
      acc229(8)=abb229(20)
      acc229(9)=abb229(21)
      acc229(10)=abb229(22)
      acc229(11)=abb229(23)
      acc229(12)=abb229(24)
      acc229(13)=abb229(26)
      acc229(14)=abb229(27)
      acc229(15)=abb229(28)
      acc229(16)=abb229(29)
      acc229(17)=abb229(30)
      acc229(18)=abb229(31)
      acc229(19)=abb229(32)
      acc229(20)=abb229(33)
      acc229(21)=abb229(36)
      acc229(22)=abb229(38)
      acc229(23)=abb229(39)
      acc229(24)=abb229(40)
      acc229(25)=abb229(41)
      acc229(26)=abb229(44)
      acc229(27)=abb229(46)
      acc229(28)=abb229(49)
      acc229(29)=abb229(50)
      acc229(30)=abb229(59)
      acc229(31)=abb229(61)
      acc229(32)=abb229(65)
      acc229(33)=abb229(66)
      acc229(34)=abb229(67)
      acc229(35)=abb229(68)
      acc229(36)=abb229(69)
      acc229(37)=abb229(71)
      acc229(38)=abb229(73)
      acc229(39)=abb229(74)
      acc229(40)=abb229(77)
      acc229(41)=abb229(81)
      acc229(42)=abb229(82)
      acc229(43)=abb229(87)
      acc229(44)=abb229(88)
      acc229(45)=abb229(92)
      acc229(46)=abb229(94)
      acc229(47)=abb229(96)
      acc229(48)=abb229(98)
      acc229(49)=abb229(101)
      acc229(50)=abb229(103)
      acc229(51)=abb229(111)
      acc229(52)=abb229(112)
      acc229(53)=abb229(117)
      acc229(54)=abb229(129)
      acc229(55)=abb229(144)
      acc229(56)=abb229(147)
      acc229(57)=abb229(148)
      acc229(58)=abb229(150)
      acc229(59)=abb229(153)
      acc229(60)=abb229(158)
      acc229(61)=abb229(166)
      acc229(62)=abb229(171)
      acc229(63)=abb229(181)
      acc229(64)=abb229(245)
      acc229(65)=abb229(331)
      acc229(66)=abb229(357)
      acc229(67)=abb229(379)
      acc229(68)=abb229(401)
      acc229(69)=acc229(18)*Qspk2
      acc229(70)=acc229(20)*Qspe7
      acc229(71)=acc229(30)*Qspval5l6
      acc229(72)=acc229(31)*Qspvak2l6
      acc229(73)=acc229(32)*Qspval5k2
      acc229(74)=acc229(33)*Qspvak7l6
      acc229(75)=acc229(34)*Qspl6
      acc229(76)=acc229(35)*Qspvak2l5
      acc229(77)=acc229(37)*Qspvae7l6
      acc229(78)=acc229(40)*Qspl5
      acc229(79)=acc229(41)*Qspvak2k7
      acc229(80)=acc229(43)*Qspvak2e7
      acc229(81)=acc229(45)*Qspvak7k2
      acc229(82)=acc229(52)*Qspk7
      acc229(83)=acc229(55)*Qspval5e7
      acc229(84)=acc229(56)*Qspvae7k2
      acc229(85)=acc229(57)*Qspval6k2
      acc229(86)=acc229(62)*Qspval5k7
      acc229(69)=acc229(86)+acc229(85)+acc229(84)+acc229(83)+acc229(82)+acc229(&
      &81)+acc229(80)+acc229(79)+acc229(78)+acc229(77)+acc229(76)+acc229(75)+ac&
      &c229(74)+acc229(73)+acc229(72)+acc229(71)+acc229(70)+acc229(69)+acc229(1&
      &4)
      acc229(69)=Qspvak4k1*acc229(69)
      acc229(70)=acc229(3)*Qspk2
      acc229(71)=acc229(4)*Qspe7
      acc229(72)=acc229(5)*Qspval5l6
      acc229(73)=acc229(6)*Qspval5k2
      acc229(74)=acc229(7)*Qspvak2e7
      acc229(75)=acc229(8)*Qspvak2l6
      acc229(76)=acc229(9)*Qspvak2l5
      acc229(77)=acc229(10)*Qspvae7l6
      acc229(78)=acc229(11)*Qspvak7l6
      acc229(79)=acc229(12)*Qspvak7k2
      acc229(80)=acc229(15)*Qspval6k2
      acc229(81)=acc229(16)*Qspval5e7
      acc229(82)=acc229(17)*Qspl6
      acc229(83)=acc229(19)*Qspval5k7
      acc229(84)=acc229(21)*Qspk7
      acc229(85)=acc229(23)*Qspl5
      acc229(86)=acc229(24)*Qspvae7k2
      acc229(87)=acc229(25)*Qspvak2k7
      acc229(70)=acc229(87)+acc229(86)+acc229(85)+acc229(84)+acc229(83)+acc229(&
      &82)+acc229(81)+acc229(80)+acc229(79)+acc229(78)+acc229(77)+acc229(76)+ac&
      &c229(75)+acc229(74)+acc229(73)+acc229(72)+acc229(71)+acc229(70)+acc229(2)
      acc229(70)=Qspvak2k1*acc229(70)
      acc229(71)=-Qspl6-Qspl5
      acc229(71)=acc229(67)*acc229(71)
      acc229(72)=acc229(28)*Qspvak2k7
      acc229(73)=acc229(36)*Qspvak2l5
      acc229(74)=acc229(39)*Qspval5k2
      acc229(75)=acc229(46)*Qspvak7k2
      acc229(76)=acc229(48)*Qspval5k7
      acc229(77)=acc229(49)*Qspvak7l6
      acc229(78)=acc229(50)*Qspk2
      acc229(79)=acc229(53)*Qspval5l6
      acc229(80)=acc229(54)*Qspvak2l6
      acc229(81)=acc229(60)*Qspvae7l6
      acc229(82)=acc229(61)*Qspval6k2
      acc229(83)=acc229(63)*Qspvae7k2
      acc229(84)=acc229(64)*Qspe7
      acc229(85)=acc229(65)*Qspval5e7
      acc229(86)=acc229(66)*Qspvak2e7
      acc229(87)=acc229(68)*Qspk7
      acc229(88)=Qspvae7k1*acc229(42)
      acc229(89)=Qspvak7k1*acc229(58)
      acc229(90)=Qspval6k1*acc229(29)
      acc229(91)=Qspval5k1*acc229(22)
      acc229(92)=Qspvak4k3*acc229(26)
      acc229(93)=Qspvak4k2*acc229(27)
      acc229(94)=Qspvak3k1*acc229(13)
      acc229(95)=Qspvak2k4*acc229(38)
      acc229(96)=Qspvak2k3*acc229(47)
      acc229(97)=Qspk4*acc229(44)
      acc229(98)=Qspk3*acc229(59)
      acc229(99)=QspQ*acc229(51)
      brack=acc229(1)+acc229(69)+acc229(70)+acc229(71)+acc229(72)+acc229(73)+ac&
      &c229(74)+acc229(75)+acc229(76)+acc229(77)+acc229(78)+acc229(79)+acc229(8&
      &0)+acc229(81)+acc229(82)+acc229(83)+acc229(84)+acc229(85)+acc229(86)+acc&
      &229(87)+acc229(88)+acc229(89)+acc229(90)+acc229(91)+acc229(92)+acc229(93&
      &)+acc229(94)+acc229(95)+acc229(96)+acc229(97)+acc229(98)+acc229(99)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram229_sign, shift => diagram229_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd229h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d229
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d229 = 0.0_ki
      d229 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d229, ki), aimag(d229), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd229h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d229
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d229 = 0.0_ki
      d229 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d229, ki), aimag(d229), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d229h2l1
