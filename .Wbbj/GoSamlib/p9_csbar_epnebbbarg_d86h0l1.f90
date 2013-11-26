module     p9_csbar_epnebbbarg_d86h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d86h0l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd86h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc86(87)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k1
      complex(ki) :: QspQ
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k7
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      QspQ = dotproduct(Q,Q)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      acc86(1)=abb86(15)
      acc86(2)=abb86(16)
      acc86(3)=abb86(17)
      acc86(4)=abb86(18)
      acc86(5)=abb86(19)
      acc86(6)=abb86(20)
      acc86(7)=abb86(21)
      acc86(8)=abb86(22)
      acc86(9)=abb86(23)
      acc86(10)=abb86(24)
      acc86(11)=abb86(25)
      acc86(12)=abb86(26)
      acc86(13)=abb86(27)
      acc86(14)=abb86(28)
      acc86(15)=abb86(29)
      acc86(16)=abb86(30)
      acc86(17)=abb86(31)
      acc86(18)=abb86(32)
      acc86(19)=abb86(33)
      acc86(20)=abb86(34)
      acc86(21)=abb86(35)
      acc86(22)=abb86(36)
      acc86(23)=abb86(37)
      acc86(24)=abb86(38)
      acc86(25)=abb86(39)
      acc86(26)=abb86(40)
      acc86(27)=abb86(41)
      acc86(28)=abb86(42)
      acc86(29)=abb86(43)
      acc86(30)=abb86(44)
      acc86(31)=abb86(45)
      acc86(32)=abb86(46)
      acc86(33)=abb86(47)
      acc86(34)=abb86(48)
      acc86(35)=abb86(49)
      acc86(36)=abb86(50)
      acc86(37)=abb86(51)
      acc86(38)=abb86(52)
      acc86(39)=abb86(55)
      acc86(40)=abb86(61)
      acc86(41)=abb86(66)
      acc86(42)=abb86(67)
      acc86(43)=abb86(74)
      acc86(44)=abb86(85)
      acc86(45)=abb86(86)
      acc86(46)=abb86(92)
      acc86(47)=abb86(95)
      acc86(48)=abb86(100)
      acc86(49)=abb86(130)
      acc86(50)=abb86(132)
      acc86(51)=abb86(135)
      acc86(52)=abb86(141)
      acc86(53)=abb86(181)
      acc86(54)=abb86(196)
      acc86(55)=abb86(260)
      acc86(56)=abb86(364)
      acc86(57)=Qspk4+Qspk3
      acc86(58)=acc86(43)*acc86(57)
      acc86(59)=Qspl6+Qspl5
      acc86(60)=acc86(30)*acc86(59)
      acc86(61)=Qspk1*acc86(23)
      acc86(62)=Qspk2*acc86(37)
      acc86(63)=Qspk7*acc86(16)
      acc86(64)=Qspe7*acc86(2)
      acc86(65)=Qspvak2k1*acc86(29)
      acc86(66)=Qspvak4k1*acc86(5)
      acc86(67)=Qspvak4k3*acc86(8)
      acc86(68)=Qspval5k1*acc86(40)
      acc86(69)=Qspval6k1*acc86(25)
      acc86(70)=Qspvae7k1*acc86(4)
      acc86(58)=acc86(70)+acc86(69)+acc86(68)+acc86(67)+acc86(66)+acc86(65)+acc&
      &86(64)+acc86(63)+acc86(62)+acc86(1)+acc86(61)+acc86(60)+acc86(58)
      acc86(58)=Qspval5k2*acc86(58)
      acc86(60)=acc86(51)*acc86(57)
      acc86(59)=-acc86(44)*acc86(59)
      acc86(61)=Qspk1*acc86(22)
      acc86(62)=Qspk2*acc86(47)
      acc86(63)=Qspk7*acc86(12)
      acc86(64)=Qspe7*acc86(19)
      acc86(65)=Qspvak2k1*acc86(26)
      acc86(66)=Qspvak4k1*acc86(11)
      acc86(67)=Qspvak4k3*acc86(9)
      acc86(68)=Qspval5k1*acc86(39)
      acc86(69)=Qspval6k1*acc86(14)
      acc86(70)=Qspvae7k1*acc86(36)
      acc86(59)=acc86(70)+acc86(69)+acc86(68)+acc86(67)+acc86(66)+acc86(65)+acc&
      &86(64)+acc86(63)+acc86(62)+acc86(18)+acc86(61)+acc86(59)+acc86(60)
      acc86(59)=Qspval6k2*acc86(59)
      acc86(57)=acc86(53)*acc86(57)
      acc86(60)=acc86(55)*Qspvak7k3
      acc86(61)=acc86(54)*Qspvak7k2
      acc86(62)=acc86(52)*Qspvak7k1
      acc86(63)=acc86(50)*QspQ
      acc86(64)=acc86(45)*Qspvae7k2
      acc86(65)=acc86(42)*Qspvak4k7
      acc86(66)=acc86(35)*Qspval6k7
      acc86(67)=acc86(34)*Qspvak2k3
      acc86(68)=acc86(32)*Qspvak1k2
      acc86(69)=acc86(31)*Qspvak2l6
      acc86(70)=acc86(28)*Qspvak4k2
      acc86(71)=acc86(27)*Qspval6k3
      acc86(72)=acc86(24)*Qspval6e7
      acc86(73)=acc86(20)*Qspval6l5
      acc86(74)=acc86(17)*Qspvak2l5
      acc86(75)=acc86(15)*Qspvak2k7
      acc86(76)=Qspk1*acc86(49)
      acc86(77)=Qspk2*acc86(38)
      acc86(78)=Qspl5*acc86(21)
      acc86(79)=Qspl6*acc86(41)
      acc86(80)=Qspk7*acc86(56)
      acc86(81)=Qspe7*acc86(48)
      acc86(82)=Qspvak2k1*acc86(13)
      acc86(83)=Qspvak4k1*acc86(10)
      acc86(84)=Qspvak4k3*acc86(7)
      acc86(85)=Qspval5k1*acc86(33)
      acc86(86)=Qspval6k1*acc86(6)
      acc86(87)=Qspvae7k1*acc86(46)
      brack=acc86(3)+acc86(57)+acc86(58)+acc86(59)+acc86(60)+acc86(61)+acc86(62&
      &)+acc86(63)+acc86(64)+acc86(65)+acc86(66)+acc86(67)+acc86(68)+acc86(69)+&
      &acc86(70)+acc86(71)+acc86(72)+acc86(73)+acc86(74)+acc86(75)+acc86(76)+ac&
      &c86(77)+acc86(78)+acc86(79)+acc86(80)+acc86(81)+acc86(82)+acc86(83)+acc8&
      &6(84)+acc86(85)+acc86(86)+acc86(87)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram86_sign, shift => diagram86_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd86h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d86
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d86 = 0.0_ki
      d86 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d86, ki), aimag(d86), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd86h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d86
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d86 = 0.0_ki
      d86 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d86, ki), aimag(d86), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d86h0l1
