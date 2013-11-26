module     p1_dbarc_epnebbbarg_d225h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d225h3l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd225h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc225(89)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspl6
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspl5
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspl6 = dotproduct(Q,l6)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspl5 = dotproduct(Q,l5)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspk7 = dotproduct(Q,k7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspk2 = dotproduct(Q,k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
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
      acc225(6)=abb225(19)
      acc225(7)=abb225(20)
      acc225(8)=abb225(23)
      acc225(9)=abb225(25)
      acc225(10)=abb225(27)
      acc225(11)=abb225(28)
      acc225(12)=abb225(29)
      acc225(13)=abb225(30)
      acc225(14)=abb225(31)
      acc225(15)=abb225(32)
      acc225(16)=abb225(33)
      acc225(17)=abb225(34)
      acc225(18)=abb225(35)
      acc225(19)=abb225(37)
      acc225(20)=abb225(38)
      acc225(21)=abb225(39)
      acc225(22)=abb225(40)
      acc225(23)=abb225(41)
      acc225(24)=abb225(44)
      acc225(25)=abb225(45)
      acc225(26)=abb225(46)
      acc225(27)=abb225(47)
      acc225(28)=abb225(48)
      acc225(29)=abb225(49)
      acc225(30)=abb225(50)
      acc225(31)=abb225(51)
      acc225(32)=abb225(52)
      acc225(33)=abb225(53)
      acc225(34)=abb225(54)
      acc225(35)=abb225(58)
      acc225(36)=abb225(60)
      acc225(37)=abb225(63)
      acc225(38)=abb225(65)
      acc225(39)=abb225(66)
      acc225(40)=abb225(70)
      acc225(41)=abb225(81)
      acc225(42)=abb225(86)
      acc225(43)=abb225(88)
      acc225(44)=abb225(90)
      acc225(45)=abb225(91)
      acc225(46)=abb225(93)
      acc225(47)=abb225(97)
      acc225(48)=abb225(98)
      acc225(49)=abb225(99)
      acc225(50)=abb225(104)
      acc225(51)=abb225(105)
      acc225(52)=abb225(142)
      acc225(53)=abb225(152)
      acc225(54)=abb225(198)
      acc225(55)=abb225(200)
      acc225(56)=abb225(209)
      acc225(57)=abb225(211)
      acc225(58)=abb225(221)
      acc225(59)=abb225(239)
      acc225(60)=abb225(324)
      acc225(61)=acc225(2)*Qspvak2l5
      acc225(62)=acc225(10)*Qspl6
      acc225(63)=acc225(13)*Qspe7
      acc225(64)=acc225(21)*Qspvak2k7
      acc225(65)=acc225(26)*Qspl5
      acc225(66)=acc225(27)*Qspvae7l6
      acc225(67)=acc225(32)*Qspvak2l6
      acc225(68)=acc225(39)*Qspvak2e7
      acc225(69)=acc225(45)*Qspk7
      acc225(70)=acc225(46)*Qspvae7l5
      acc225(71)=acc225(47)*Qspk2
      acc225(72)=acc225(48)*Qspval5l6
      acc225(73)=acc225(49)*Qspvak7l6
      acc225(74)=acc225(50)*Qspvak7l5
      acc225(75)=acc225(51)*Qspval6l5
      acc225(61)=acc225(75)+acc225(74)+acc225(73)+acc225(72)+acc225(71)+acc225(&
      &70)+acc225(69)+acc225(68)+acc225(67)+acc225(66)+acc225(65)+acc225(64)+ac&
      &c225(63)+acc225(62)+acc225(61)+acc225(1)
      acc225(61)=Qspvak4k2*acc225(61)
      acc225(62)=acc225(5)*Qspvak2l5
      acc225(63)=acc225(6)*Qspvak2k7
      acc225(64)=acc225(7)*Qspvak2l6
      acc225(65)=acc225(8)*Qspvak2e7
      acc225(66)=acc225(9)*Qspe7
      acc225(67)=acc225(11)*Qspvae7l6
      acc225(68)=acc225(16)*Qspl6
      acc225(69)=acc225(17)*Qspval5l6
      acc225(70)=acc225(22)*Qspl5
      acc225(71)=acc225(23)*Qspk2
      acc225(72)=acc225(29)*Qspvae7l5
      acc225(73)=acc225(31)*Qspk7
      acc225(74)=acc225(33)*Qspvak7l6
      acc225(75)=acc225(34)*Qspvak7l5
      acc225(76)=acc225(40)*Qspval6l5
      acc225(62)=acc225(76)+acc225(75)+acc225(74)+acc225(73)+acc225(72)+acc225(&
      &71)+acc225(70)+acc225(69)+acc225(68)+acc225(67)+acc225(66)+acc225(65)+ac&
      &c225(64)+acc225(63)+acc225(62)+acc225(4)
      acc225(62)=Qspvak1k2*acc225(62)
      acc225(63)=-Qspl6-Qspl5
      acc225(63)=acc225(58)*acc225(63)
      acc225(64)=acc225(18)*Qspk2
      acc225(65)=acc225(24)*Qspval5l6
      acc225(66)=acc225(25)*Qspvak2l6
      acc225(67)=acc225(36)*Qspvak2e7
      acc225(68)=acc225(38)*Qspvak7l6
      acc225(69)=acc225(41)*Qspvak2k7
      acc225(70)=acc225(43)*Qspval6l5
      acc225(71)=acc225(44)*Qspvak2l5
      acc225(72)=acc225(53)*Qspe7
      acc225(73)=acc225(56)*Qspvae7l6
      acc225(74)=acc225(57)*Qspvak7l5
      acc225(75)=acc225(59)*Qspk7
      acc225(76)=acc225(60)*Qspvae7l5
      acc225(77)=Qspvae7k2*acc225(3)
      acc225(78)=Qspvak7k2*acc225(12)
      acc225(79)=Qspval6k2*acc225(14)
      acc225(80)=Qspval5k2*acc225(19)
      acc225(81)=Qspvak4k3*acc225(35)
      acc225(82)=Qspvak4k1*acc225(30)
      acc225(83)=Qspvak3k2*acc225(15)
      acc225(84)=Qspvak1k4*acc225(28)
      acc225(85)=Qspvak1k3*acc225(20)
      acc225(86)=Qspk4*acc225(54)
      acc225(87)=Qspk3*acc225(55)
      acc225(88)=Qspk1*acc225(37)
      acc225(89)=QspQ*acc225(52)
      brack=acc225(42)+acc225(61)+acc225(62)+acc225(63)+acc225(64)+acc225(65)+a&
      &cc225(66)+acc225(67)+acc225(68)+acc225(69)+acc225(70)+acc225(71)+acc225(&
      &72)+acc225(73)+acc225(74)+acc225(75)+acc225(76)+acc225(77)+acc225(78)+ac&
      &c225(79)+acc225(80)+acc225(81)+acc225(82)+acc225(83)+acc225(84)+acc225(8&
      &5)+acc225(86)+acc225(87)+acc225(88)+acc225(89)
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
      use p1_dbarc_epnebbbarg_abbrevd225h3
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
      use p1_dbarc_epnebbbarg_abbrevd225h3
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
end module p1_dbarc_epnebbbarg_d225h3l1
