module     p5_usbar_epnebbbarg_d291h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d291h2l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd291h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc291(107)
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k3
      Qspl6 = dotproduct(Q,l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk2 = dotproduct(Q,k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspl5 = dotproduct(Q,l5)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      acc291(1)=abb291(8)
      acc291(2)=abb291(9)
      acc291(3)=abb291(10)
      acc291(4)=abb291(11)
      acc291(5)=abb291(12)
      acc291(6)=abb291(13)
      acc291(7)=abb291(14)
      acc291(8)=abb291(15)
      acc291(9)=abb291(16)
      acc291(10)=abb291(17)
      acc291(11)=abb291(18)
      acc291(12)=abb291(19)
      acc291(13)=abb291(20)
      acc291(14)=abb291(21)
      acc291(15)=abb291(22)
      acc291(16)=abb291(23)
      acc291(17)=abb291(24)
      acc291(18)=abb291(25)
      acc291(19)=abb291(26)
      acc291(20)=abb291(27)
      acc291(21)=abb291(28)
      acc291(22)=abb291(29)
      acc291(23)=abb291(30)
      acc291(24)=abb291(31)
      acc291(25)=abb291(32)
      acc291(26)=abb291(33)
      acc291(27)=abb291(34)
      acc291(28)=abb291(36)
      acc291(29)=abb291(38)
      acc291(30)=abb291(39)
      acc291(31)=abb291(42)
      acc291(32)=abb291(44)
      acc291(33)=abb291(47)
      acc291(34)=abb291(48)
      acc291(35)=abb291(49)
      acc291(36)=abb291(51)
      acc291(37)=abb291(52)
      acc291(38)=abb291(53)
      acc291(39)=abb291(54)
      acc291(40)=abb291(55)
      acc291(41)=abb291(56)
      acc291(42)=abb291(57)
      acc291(43)=abb291(58)
      acc291(44)=abb291(59)
      acc291(45)=abb291(60)
      acc291(46)=abb291(61)
      acc291(47)=abb291(62)
      acc291(48)=abb291(63)
      acc291(49)=abb291(65)
      acc291(50)=abb291(66)
      acc291(51)=abb291(69)
      acc291(52)=abb291(70)
      acc291(53)=abb291(72)
      acc291(54)=abb291(73)
      acc291(55)=abb291(74)
      acc291(56)=abb291(76)
      acc291(57)=abb291(77)
      acc291(58)=abb291(78)
      acc291(59)=abb291(79)
      acc291(60)=abb291(80)
      acc291(61)=abb291(82)
      acc291(62)=abb291(83)
      acc291(63)=abb291(84)
      acc291(64)=abb291(85)
      acc291(65)=abb291(88)
      acc291(66)=abb291(89)
      acc291(67)=abb291(90)
      acc291(68)=abb291(91)
      acc291(69)=abb291(92)
      acc291(70)=abb291(94)
      acc291(71)=abb291(95)
      acc291(72)=abb291(96)
      acc291(73)=abb291(98)
      acc291(74)=abb291(99)
      acc291(75)=abb291(100)
      acc291(76)=abb291(101)
      acc291(77)=abb291(102)
      acc291(78)=abb291(103)
      acc291(79)=abb291(104)
      acc291(80)=abb291(106)
      acc291(81)=abb291(107)
      acc291(82)=abb291(108)
      acc291(83)=abb291(109)
      acc291(84)=abb291(110)
      acc291(85)=abb291(112)
      acc291(86)=abb291(113)
      acc291(87)=abb291(114)
      acc291(88)=abb291(115)
      acc291(89)=abb291(116)
      acc291(90)=abb291(117)
      acc291(91)=abb291(118)
      acc291(92)=abb291(119)
      acc291(93)=abb291(120)
      acc291(94)=abb291(121)
      acc291(95)=abb291(123)
      acc291(96)=acc291(49)*Qspl6
      acc291(97)=Qspvak1l6*acc291(2)
      acc291(98)=Qspvak7l6*acc291(66)
      acc291(99)=Qspvak4l6*acc291(68)
      acc291(100)=Qspvak2l5*acc291(58)
      acc291(101)=Qspk2*acc291(45)
      acc291(102)=Qspval5l6*acc291(67)
      acc291(103)=Qspvak2k3*acc291(1)
      acc291(104)=Qspvak2l6*acc291(52)
      acc291(96)=acc291(104)+acc291(103)+acc291(102)+acc291(101)+acc291(100)+ac&
      &c291(99)+acc291(98)+acc291(97)+acc291(96)+acc291(24)
      acc291(96)=Qspe7*acc291(96)
      acc291(97)=Qspvak1l6*acc291(3)
      acc291(98)=Qspvak2k7*acc291(85)
      acc291(99)=Qspvak7l6*acc291(71)
      acc291(100)=Qspvak2e7*acc291(80)
      acc291(101)=Qspvae7l6*acc291(39)
      acc291(102)=Qspvak2k1*acc291(27)
      acc291(103)=-Qspvak2l6*acc291(83)
      acc291(104)=Qspe7*acc291(38)
      acc291(97)=acc291(104)+acc291(103)+acc291(102)+acc291(101)+acc291(100)+ac&
      &c291(99)+acc291(98)+acc291(34)+acc291(97)
      acc291(97)=Qspvak4k3*acc291(97)
      acc291(98)=Qspvak4l6*acc291(72)
      acc291(99)=Qspvae7l6*acc291(54)
      acc291(100)=Qspvak2k3*acc291(77)
      acc291(98)=acc291(100)+acc291(99)+acc291(36)+acc291(98)
      acc291(98)=QspQ*acc291(98)
      acc291(99)=Qspvak4l6*acc291(70)
      acc291(100)=Qspvae7l6*acc291(62)
      acc291(99)=-acc291(40)+acc291(99)-acc291(100)
      acc291(100)=-Qspk7*acc291(99)
      acc291(101)=-Qspvak2k3*acc291(60)
      acc291(99)=acc291(101)+acc291(99)
      acc291(99)=Qspk1*acc291(99)
      acc291(101)=Qspvak1l6*acc291(11)
      acc291(102)=Qspvak7l6*acc291(59)
      acc291(103)=Qspvae7l6*acc291(12)
      acc291(104)=Qspvak2l5*acc291(8)
      acc291(105)=Qspk2*acc291(57)
      acc291(106)=Qspk7*acc291(60)
      acc291(106)=acc291(44)+acc291(106)
      acc291(106)=Qspvak2k3*acc291(106)
      acc291(107)=Qspvak2l6*acc291(65)
      acc291(96)=acc291(97)+acc291(96)+acc291(107)+acc291(99)+acc291(98)+acc291&
      &(106)+acc291(100)+acc291(105)+acc291(104)+acc291(103)+acc291(102)+acc291&
      &(16)+acc291(101)
      acc291(96)=Qspval5k1*acc291(96)
      acc291(97)=-acc291(84)*Qspval5k7
      acc291(98)=QspQ*acc291(93)
      acc291(99)=Qspk1*acc291(87)
      acc291(97)=acc291(99)+acc291(98)+acc291(81)+acc291(97)
      acc291(97)=Qspvak2l6*acc291(97)
      acc291(98)=-Qspval5l6*acc291(69)
      acc291(98)=acc291(98)+acc291(25)
      acc291(98)=Qspvak2k1*acc291(98)
      acc291(99)=Qspl5*acc291(76)
      acc291(100)=Qspk2*acc291(74)
      acc291(98)=acc291(100)+acc291(73)+acc291(99)+acc291(98)
      acc291(98)=Qspe7*acc291(98)
      acc291(99)=Qspvak2k7*acc291(84)
      acc291(100)=Qspvak2k1*acc291(83)
      acc291(99)=acc291(99)+acc291(100)
      acc291(99)=Qspval5l6*acc291(99)
      acc291(100)=Qspvak2k7*acc291(82)
      acc291(101)=Qspl5*acc291(21)
      acc291(102)=Qspvak2k1*acc291(4)
      acc291(103)=Qspk2*acc291(29)
      acc291(104)=Qspvak2e7*acc291(79)
      acc291(104)=acc291(51)+acc291(104)
      acc291(104)=QspQ*acc291(104)
      acc291(105)=Qspvak2e7*acc291(78)
      acc291(105)=acc291(75)+acc291(105)
      acc291(105)=Qspk1*acc291(105)
      acc291(97)=acc291(98)+acc291(97)+acc291(105)+acc291(104)+acc291(99)+acc29&
      &1(103)+acc291(102)+acc291(101)+acc291(23)+acc291(100)
      acc291(97)=Qspvak4k3*acc291(97)
      acc291(98)=Qspval5k2*acc291(13)
      acc291(99)=-Qspval5k3*acc291(43)
      acc291(100)=Qspl5*acc291(92)
      acc291(98)=acc291(100)+acc291(99)+acc291(37)+acc291(98)
      acc291(98)=Qspvak2l6*acc291(98)
      acc291(99)=Qspvak2l5*acc291(91)
      acc291(100)=Qspk2*acc291(14)
      acc291(99)=acc291(99)+acc291(100)
      acc291(99)=Qspval5l6*acc291(99)
      acc291(100)=Qspvak2l5*acc291(32)
      acc291(101)=Qspl5*acc291(19)
      acc291(102)=Qspvak2k1*acc291(6)
      acc291(103)=Qspk2*acc291(28)
      acc291(104)=Qspval5l6*acc291(43)
      acc291(104)=acc291(86)+acc291(104)
      acc291(104)=Qspvak2k3*acc291(104)
      acc291(98)=acc291(98)+acc291(104)+acc291(99)+acc291(103)+acc291(102)+acc2&
      &91(101)+acc291(33)+acc291(100)
      acc291(98)=Qspe7*acc291(98)
      acc291(99)=Qspvak2l5*acc291(53)
      acc291(100)=Qspl5*acc291(47)
      acc291(101)=Qspvak2k1*acc291(17)
      acc291(102)=Qspk2*acc291(41)
      acc291(103)=-Qspval5l6*acc291(35)
      acc291(103)=acc291(61)+acc291(103)
      acc291(103)=Qspvak2k3*acc291(103)
      acc291(99)=acc291(103)+acc291(102)+acc291(101)+acc291(100)+acc291(31)+acc&
      &291(99)
      acc291(99)=QspQ*acc291(99)
      acc291(100)=Qspval5k2*acc291(7)
      acc291(101)=Qspl5*acc291(90)
      acc291(102)=acc291(56)*Qspval5k3
      acc291(103)=acc291(88)-acc291(102)
      acc291(103)=Qspk7*acc291(103)
      acc291(104)=Qspval5k3*acc291(35)
      acc291(104)=acc291(50)+acc291(104)
      acc291(104)=QspQ*acc291(104)
      acc291(102)=acc291(64)+acc291(102)
      acc291(102)=Qspk1*acc291(102)
      acc291(100)=acc291(102)+acc291(104)+acc291(103)+acc291(101)+acc291(18)+ac&
      &c291(100)
      acc291(100)=Qspvak2l6*acc291(100)
      acc291(101)=Qspl5*acc291(48)
      acc291(102)=Qspvak2k1*acc291(22)
      acc291(101)=acc291(101)+acc291(102)
      acc291(102)=Qspvak2l5*acc291(95)
      acc291(103)=Qspk2*acc291(55)
      acc291(104)=Qspval5l6*acc291(56)
      acc291(105)=acc291(63)-acc291(104)
      acc291(105)=Qspvak2k3*acc291(105)
      acc291(102)=acc291(105)+acc291(103)+acc291(42)+acc291(102)-acc291(101)
      acc291(102)=Qspk1*acc291(102)
      acc291(103)=Qspk2*acc291(30)
      acc291(104)=acc291(94)+acc291(104)
      acc291(104)=Qspvak2k3*acc291(104)
      acc291(101)=acc291(104)+acc291(103)+acc291(46)+acc291(101)
      acc291(101)=Qspk7*acc291(101)
      acc291(103)=Qspvak2l5*acc291(89)
      acc291(104)=Qspk2*acc291(9)
      acc291(103)=acc291(103)+acc291(104)
      acc291(103)=Qspval5l6*acc291(103)
      acc291(104)=Qspvak2l5*acc291(20)
      acc291(105)=Qspl5*acc291(10)
      acc291(106)=Qspvak2k1*acc291(5)
      acc291(107)=Qspk2*acc291(26)
      brack=acc291(15)+acc291(96)+acc291(97)+acc291(98)+acc291(99)+acc291(100)+&
      &acc291(101)+acc291(102)+acc291(103)+acc291(104)+acc291(105)+acc291(106)+&
      &acc291(107)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram291_sign, shift => diagram291_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd291h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d291
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d291 = 0.0_ki
      d291 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d291, ki), aimag(d291), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd291h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d291
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d291 = 0.0_ki
      d291 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d291, ki), aimag(d291), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d291h2l1
