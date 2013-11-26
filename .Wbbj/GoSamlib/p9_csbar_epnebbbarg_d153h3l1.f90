module     p9_csbar_epnebbbarg_d153h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d153h3l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd153h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc153(86)
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvae7k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval5k3
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      QspQ = dotproduct(Q,Q)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      acc153(1)=abb153(32)
      acc153(2)=abb153(33)
      acc153(3)=abb153(34)
      acc153(4)=abb153(35)
      acc153(5)=abb153(36)
      acc153(6)=abb153(37)
      acc153(7)=abb153(38)
      acc153(8)=abb153(39)
      acc153(9)=abb153(40)
      acc153(10)=abb153(41)
      acc153(11)=abb153(43)
      acc153(12)=abb153(44)
      acc153(13)=abb153(45)
      acc153(14)=abb153(46)
      acc153(15)=abb153(47)
      acc153(16)=abb153(48)
      acc153(17)=abb153(49)
      acc153(18)=abb153(50)
      acc153(19)=abb153(51)
      acc153(20)=abb153(52)
      acc153(21)=abb153(53)
      acc153(22)=abb153(54)
      acc153(23)=abb153(55)
      acc153(24)=abb153(56)
      acc153(25)=abb153(57)
      acc153(26)=abb153(58)
      acc153(27)=abb153(59)
      acc153(28)=abb153(60)
      acc153(29)=abb153(61)
      acc153(30)=abb153(62)
      acc153(31)=abb153(63)
      acc153(32)=abb153(64)
      acc153(33)=abb153(65)
      acc153(34)=abb153(67)
      acc153(35)=abb153(68)
      acc153(36)=abb153(69)
      acc153(37)=abb153(70)
      acc153(38)=abb153(71)
      acc153(39)=abb153(72)
      acc153(40)=abb153(73)
      acc153(41)=abb153(74)
      acc153(42)=abb153(75)
      acc153(43)=abb153(76)
      acc153(44)=abb153(78)
      acc153(45)=abb153(80)
      acc153(46)=abb153(81)
      acc153(47)=abb153(82)
      acc153(48)=abb153(83)
      acc153(49)=abb153(84)
      acc153(50)=abb153(86)
      acc153(51)=abb153(91)
      acc153(52)=abb153(92)
      acc153(53)=abb153(93)
      acc153(54)=abb153(95)
      acc153(55)=abb153(97)
      acc153(56)=abb153(103)
      acc153(57)=abb153(107)
      acc153(58)=abb153(110)
      acc153(59)=abb153(111)
      acc153(60)=abb153(112)
      acc153(61)=abb153(116)
      acc153(62)=abb153(120)
      acc153(63)=abb153(125)
      acc153(64)=abb153(127)
      acc153(65)=abb153(132)
      acc153(66)=-acc153(2)*Qspvae7k1
      acc153(67)=acc153(9)*Qspvak2k1
      acc153(68)=acc153(15)*Qspe7
      acc153(69)=acc153(24)*Qspvak2k3
      acc153(70)=acc153(34)*Qspvak4e7
      acc153(71)=acc153(36)*Qspvak4l6
      acc153(72)=acc153(37)*Qspvak2l5
      acc153(73)=acc153(52)*Qspvak4l5
      acc153(74)=acc153(53)*Qspvak2l6
      acc153(75)=-acc153(55)*Qspvak2e7
      acc153(66)=acc153(75)+acc153(74)+acc153(73)+acc153(72)+acc153(71)+acc153(&
      &70)+acc153(69)+acc153(68)+acc153(67)+acc153(4)+acc153(66)
      acc153(66)=QspQ*acc153(66)
      acc153(67)=acc153(26)*Qspvak2e7
      acc153(68)=acc153(28)*Qspvae7k1
      acc153(69)=acc153(38)*Qspvak7k1
      acc153(70)=acc153(46)*Qspvak4k7
      acc153(71)=acc153(47)*Qspk7
      acc153(72)=acc153(50)*Qspvak7k3
      acc153(73)=acc153(58)*Qspvak2k7
      acc153(74)=acc153(59)*Qspvak4e7
      acc153(75)=acc153(60)*Qspvae7k3
      acc153(67)=acc153(75)+acc153(74)+acc153(73)+acc153(72)+acc153(71)+acc153(&
      &70)+acc153(69)+acc153(68)+acc153(67)+acc153(16)
      acc153(67)=Qspvak2l6*acc153(67)
      acc153(68)=acc153(1)*Qspvak2e7
      acc153(69)=acc153(5)*Qspvae7k1
      acc153(70)=acc153(17)*Qspvak7k1
      acc153(71)=acc153(33)*Qspk7
      acc153(72)=acc153(40)*Qspvak2k7
      acc153(73)=acc153(41)*Qspvak7k3
      acc153(74)=acc153(43)*Qspvak4e7
      acc153(75)=acc153(44)*Qspvak4k7
      acc153(76)=acc153(45)*Qspvae7k3
      acc153(68)=acc153(76)+acc153(75)+acc153(74)+acc153(73)+acc153(72)+acc153(&
      &71)+acc153(18)+acc153(70)+acc153(69)+acc153(68)
      acc153(68)=Qspvak2l5*acc153(68)
      acc153(69)=acc153(19)*Qspvak2k3
      acc153(70)=acc153(31)*Qspvak2k1
      acc153(71)=acc153(49)*Qspvak4k1
      acc153(69)=acc153(71)+acc153(70)+acc153(29)+acc153(69)
      acc153(69)=acc153(69)*Qspvak2l5
      acc153(70)=acc153(32)*Qspvak2k1
      acc153(71)=acc153(35)*Qspvak2k3
      acc153(72)=acc153(56)*Qspvak4k1
      acc153(70)=acc153(72)+acc153(71)+acc153(70)+acc153(27)
      acc153(70)=acc153(70)*Qspvak2l6
      acc153(71)=acc153(8)*Qspvak2k1
      acc153(72)=acc153(20)*Qspval5k1
      acc153(73)=acc153(42)*Qspk2
      acc153(74)=acc153(54)*Qspvak4l5
      acc153(75)=acc153(64)*Qspval6k1
      acc153(76)=acc153(65)*Qspvak4l6
      acc153(69)=acc153(71)+acc153(70)+acc153(69)+acc153(76)+acc153(75)+acc153(&
      &74)+acc153(73)+acc153(39)+acc153(72)
      acc153(69)=Qspe7*acc153(69)
      acc153(70)=-Qspl6-Qspl5
      acc153(71)=acc153(22)*Qspe7
      acc153(71)=acc153(71)+acc153(14)
      acc153(70)=acc153(71)*acc153(70)
      acc153(71)=acc153(3)*Qspvak2k1
      acc153(72)=acc153(6)*Qspval6k1
      acc153(73)=acc153(10)*Qspvak2k3
      acc153(74)=acc153(11)*Qspvak2k7
      acc153(75)=acc153(12)*Qspk7
      acc153(76)=acc153(13)*Qspval5k1
      acc153(77)=acc153(25)*Qspvak7k1
      acc153(78)=acc153(30)*Qspk2
      acc153(79)=acc153(48)*Qspvak4k7
      acc153(80)=acc153(51)*Qspvak4l5
      acc153(81)=acc153(57)*Qspvak4e7
      acc153(82)=acc153(61)*Qspvak2e7
      acc153(83)=acc153(62)*Qspvae7k1
      acc153(84)=acc153(63)*Qspvak4l6
      acc153(85)=Qspval6k3*acc153(21)
      acc153(86)=Qspval5k3*acc153(23)
      brack=acc153(7)+acc153(66)+acc153(67)+acc153(68)+acc153(69)+acc153(70)+ac&
      &c153(71)+acc153(72)+acc153(73)+acc153(74)+acc153(75)+acc153(76)+acc153(7&
      &7)+acc153(78)+acc153(79)+acc153(80)+acc153(81)+acc153(82)+acc153(83)+acc&
      &153(84)+acc153(85)+acc153(86)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram153_sign, shift => diagram153_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd153h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d153
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d153 = 0.0_ki
      d153 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d153, ki), aimag(d153), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd153h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d153
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d153 = 0.0_ki
      d153 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d153, ki), aimag(d153), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d153h3l1
