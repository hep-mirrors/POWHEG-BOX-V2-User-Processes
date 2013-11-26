module     p1_dbarc_epnebbbarg_d225h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d225h2l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd225h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc225(93)
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspe7 = dotproduct(Q,e7)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      acc225(1)=abb225(13)
      acc225(2)=abb225(14)
      acc225(3)=abb225(15)
      acc225(4)=abb225(16)
      acc225(5)=abb225(17)
      acc225(6)=abb225(18)
      acc225(7)=abb225(19)
      acc225(8)=abb225(20)
      acc225(9)=abb225(21)
      acc225(10)=abb225(22)
      acc225(11)=abb225(23)
      acc225(12)=abb225(24)
      acc225(13)=abb225(26)
      acc225(14)=abb225(27)
      acc225(15)=abb225(28)
      acc225(16)=abb225(29)
      acc225(17)=abb225(30)
      acc225(18)=abb225(33)
      acc225(19)=abb225(34)
      acc225(20)=abb225(35)
      acc225(21)=abb225(37)
      acc225(22)=abb225(38)
      acc225(23)=abb225(40)
      acc225(24)=abb225(41)
      acc225(25)=abb225(42)
      acc225(26)=abb225(44)
      acc225(27)=abb225(45)
      acc225(28)=abb225(48)
      acc225(29)=abb225(49)
      acc225(30)=abb225(50)
      acc225(31)=abb225(51)
      acc225(32)=abb225(52)
      acc225(33)=abb225(58)
      acc225(34)=abb225(59)
      acc225(35)=abb225(61)
      acc225(36)=abb225(71)
      acc225(37)=abb225(72)
      acc225(38)=abb225(76)
      acc225(39)=abb225(79)
      acc225(40)=abb225(82)
      acc225(41)=abb225(83)
      acc225(42)=abb225(85)
      acc225(43)=abb225(86)
      acc225(44)=abb225(93)
      acc225(45)=abb225(100)
      acc225(46)=abb225(112)
      acc225(47)=abb225(114)
      acc225(48)=abb225(116)
      acc225(49)=abb225(117)
      acc225(50)=abb225(122)
      acc225(51)=abb225(123)
      acc225(52)=abb225(124)
      acc225(53)=abb225(137)
      acc225(54)=abb225(140)
      acc225(55)=abb225(148)
      acc225(56)=abb225(151)
      acc225(57)=abb225(155)
      acc225(58)=abb225(162)
      acc225(59)=abb225(198)
      acc225(60)=abb225(207)
      acc225(61)=abb225(218)
      acc225(62)=abb225(233)
      acc225(63)=abb225(244)
      acc225(64)=abb225(283)
      acc225(65)=abb225(286)
      acc225(66)=acc225(13)*Qspvak2l6
      acc225(67)=acc225(20)*Qspvak2k7
      acc225(68)=acc225(23)*Qspvak2l5
      acc225(69)=acc225(30)*Qspval5e7
      acc225(70)=acc225(31)*Qspvae7l6
      acc225(71)=acc225(36)*Qspval5l6
      acc225(72)=acc225(37)*Qspvak2e7
      acc225(73)=acc225(39)*Qspvak7l6
      acc225(74)=acc225(40)*Qspk2
      acc225(75)=acc225(41)*Qspvak7k2
      acc225(76)=acc225(43)*Qspval6k2
      acc225(77)=acc225(46)*Qspe7
      acc225(78)=acc225(47)*Qspval5k7
      acc225(79)=acc225(48)*Qspval5k2
      acc225(80)=acc225(50)*Qspvae7k2
      acc225(81)=acc225(52)*Qspl6
      acc225(82)=acc225(57)*Qspl5
      acc225(83)=acc225(58)*Qspk7
      acc225(66)=acc225(83)+acc225(82)+acc225(81)+acc225(80)+acc225(79)+acc225(&
      &78)+acc225(77)+acc225(76)+acc225(75)+acc225(74)+acc225(73)+acc225(72)+ac&
      &c225(71)+acc225(70)+acc225(69)+acc225(68)+acc225(21)+acc225(67)+acc225(6&
      &6)
      acc225(66)=Qspvak4k2*acc225(66)
      acc225(67)=acc225(4)*Qspvae7l6
      acc225(68)=acc225(5)*Qspval5e7
      acc225(69)=acc225(7)*Qspk2
      acc225(70)=acc225(8)*Qspvak2e7
      acc225(71)=acc225(9)*Qspvak2k7
      acc225(72)=acc225(10)*Qspval5l6
      acc225(73)=acc225(11)*Qspval5k2
      acc225(74)=acc225(12)*Qspvak2l6
      acc225(75)=acc225(14)*Qspvak2l5
      acc225(76)=acc225(15)*Qspe7
      acc225(77)=acc225(16)*Qspvak7k2
      acc225(78)=acc225(18)*Qspvak7l6
      acc225(79)=acc225(22)*Qspval6k2
      acc225(80)=acc225(24)*Qspval5k7
      acc225(81)=acc225(28)*Qspl6
      acc225(82)=acc225(33)*Qspl5
      acc225(83)=acc225(35)*Qspk7
      acc225(84)=acc225(42)*Qspvae7k2
      acc225(67)=acc225(84)+acc225(83)+acc225(82)+acc225(81)+acc225(80)+acc225(&
      &79)+acc225(78)+acc225(17)+acc225(77)+acc225(76)+acc225(75)+acc225(74)+ac&
      &c225(73)+acc225(72)+acc225(71)+acc225(70)+acc225(69)+acc225(68)+acc225(6&
      &7)
      acc225(67)=Qspvak1k2*acc225(67)
      acc225(68)=-Qspl6-Qspl5
      acc225(68)=acc225(65)*acc225(68)
      acc225(69)=acc225(1)*Qspval5k2
      acc225(70)=acc225(6)*Qspvak2l6
      acc225(71)=acc225(19)*Qspvak2k7
      acc225(72)=acc225(26)*Qspvak2l5
      acc225(73)=acc225(29)*Qspk2
      acc225(74)=acc225(32)*Qspvae7k2
      acc225(75)=acc225(49)*Qspval6k2
      acc225(76)=acc225(51)*Qspvak2e7
      acc225(77)=acc225(54)*Qspvae7l6
      acc225(78)=acc225(55)*Qspval5k7
      acc225(79)=acc225(56)*Qspvak7k2
      acc225(80)=acc225(59)*Qspvak7l6
      acc225(81)=acc225(60)*Qspval5l6
      acc225(82)=acc225(61)*Qspe7
      acc225(83)=acc225(63)*Qspval5e7
      acc225(84)=acc225(64)*Qspk7
      acc225(85)=Qspvak4k3*acc225(3)
      acc225(86)=Qspvak4k1*acc225(44)
      acc225(87)=Qspvak3k2*acc225(2)
      acc225(88)=Qspvak1k4*acc225(25)
      acc225(89)=Qspvak1k3*acc225(27)
      acc225(90)=Qspk4*acc225(53)
      acc225(91)=Qspk3*acc225(62)
      acc225(92)=Qspk1*acc225(34)
      acc225(93)=QspQ*acc225(38)
      brack=acc225(45)+acc225(66)+acc225(67)+acc225(68)+acc225(69)+acc225(70)+a&
      &cc225(71)+acc225(72)+acc225(73)+acc225(74)+acc225(75)+acc225(76)+acc225(&
      &77)+acc225(78)+acc225(79)+acc225(80)+acc225(81)+acc225(82)+acc225(83)+ac&
      &c225(84)+acc225(85)+acc225(86)+acc225(87)+acc225(88)+acc225(89)+acc225(9&
      &0)+acc225(91)+acc225(92)+acc225(93)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram225_sign, shift => diagram225_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd225h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d225
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d225 = 0.0_ki
      d225 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d225, ki), aimag(d225), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd225h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d225
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d225 = 0.0_ki
      d225 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d225, ki), aimag(d225), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d225h2l1
