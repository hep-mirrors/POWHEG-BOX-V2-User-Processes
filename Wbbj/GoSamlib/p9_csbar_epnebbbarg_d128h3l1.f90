module     p9_csbar_epnebbbarg_d128h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d128h3l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd128h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc128(121)
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak3k1
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      acc128(1)=abb128(12)
      acc128(2)=abb128(13)
      acc128(3)=abb128(14)
      acc128(4)=abb128(15)
      acc128(5)=abb128(16)
      acc128(6)=abb128(17)
      acc128(7)=abb128(18)
      acc128(8)=abb128(19)
      acc128(9)=abb128(20)
      acc128(10)=abb128(21)
      acc128(11)=abb128(22)
      acc128(12)=abb128(23)
      acc128(13)=abb128(24)
      acc128(14)=abb128(25)
      acc128(15)=abb128(26)
      acc128(16)=abb128(27)
      acc128(17)=abb128(28)
      acc128(18)=abb128(29)
      acc128(19)=abb128(30)
      acc128(20)=abb128(31)
      acc128(21)=abb128(32)
      acc128(22)=abb128(33)
      acc128(23)=abb128(34)
      acc128(24)=abb128(35)
      acc128(25)=abb128(36)
      acc128(26)=abb128(37)
      acc128(27)=abb128(38)
      acc128(28)=abb128(39)
      acc128(29)=abb128(40)
      acc128(30)=abb128(41)
      acc128(31)=abb128(42)
      acc128(32)=abb128(43)
      acc128(33)=abb128(44)
      acc128(34)=abb128(45)
      acc128(35)=abb128(46)
      acc128(36)=abb128(47)
      acc128(37)=abb128(48)
      acc128(38)=abb128(49)
      acc128(39)=abb128(50)
      acc128(40)=abb128(51)
      acc128(41)=abb128(52)
      acc128(42)=abb128(53)
      acc128(43)=abb128(54)
      acc128(44)=abb128(55)
      acc128(45)=abb128(56)
      acc128(46)=abb128(57)
      acc128(47)=abb128(58)
      acc128(48)=abb128(59)
      acc128(49)=abb128(60)
      acc128(50)=abb128(61)
      acc128(51)=abb128(62)
      acc128(52)=abb128(63)
      acc128(53)=abb128(64)
      acc128(54)=abb128(65)
      acc128(55)=abb128(68)
      acc128(56)=abb128(69)
      acc128(57)=abb128(70)
      acc128(58)=abb128(71)
      acc128(59)=abb128(73)
      acc128(60)=abb128(74)
      acc128(61)=abb128(75)
      acc128(62)=abb128(76)
      acc128(63)=abb128(78)
      acc128(64)=abb128(80)
      acc128(65)=abb128(81)
      acc128(66)=abb128(85)
      acc128(67)=abb128(86)
      acc128(68)=abb128(87)
      acc128(69)=abb128(89)
      acc128(70)=abb128(90)
      acc128(71)=abb128(95)
      acc128(72)=abb128(96)
      acc128(73)=abb128(97)
      acc128(74)=abb128(100)
      acc128(75)=abb128(101)
      acc128(76)=abb128(104)
      acc128(77)=abb128(107)
      acc128(78)=abb128(108)
      acc128(79)=abb128(109)
      acc128(80)=abb128(114)
      acc128(81)=abb128(115)
      acc128(82)=abb128(120)
      acc128(83)=abb128(121)
      acc128(84)=abb128(124)
      acc128(85)=abb128(126)
      acc128(86)=abb128(132)
      acc128(87)=abb128(134)
      acc128(88)=abb128(135)
      acc128(89)=abb128(136)
      acc128(90)=abb128(137)
      acc128(91)=abb128(139)
      acc128(92)=abb128(140)
      acc128(93)=abb128(144)
      acc128(94)=abb128(147)
      acc128(95)=abb128(150)
      acc128(96)=abb128(156)
      acc128(97)=abb128(160)
      acc128(98)=abb128(165)
      acc128(99)=-Qspl5+Qspk7-Qspl6
      acc128(100)=-acc128(6)*acc128(99)
      acc128(101)=-Qspe7*acc128(96)
      acc128(102)=Qspvak2l5*acc128(53)
      acc128(103)=Qspvak2l6*acc128(50)
      acc128(104)=Qspvak2k7*acc128(34)
      acc128(105)=Qspval5l6*acc128(22)
      acc128(106)=Qspval6l5*acc128(20)
      acc128(107)=Qspvak7l5*acc128(14)
      acc128(108)=Qspvak7l6*acc128(15)
      acc128(109)=Qspvak2e7*acc128(9)
      acc128(110)=Qspvae7l5*acc128(8)
      acc128(111)=Qspvae7l6*acc128(1)
      acc128(112)=Qspk2*acc128(7)
      acc128(100)=acc128(112)+acc128(111)+acc128(110)+acc128(109)+acc128(108)+a&
      &cc128(107)+acc128(106)+acc128(105)+acc128(104)+acc128(103)+acc128(102)+a&
      &cc128(101)+acc128(3)+acc128(100)
      acc128(100)=Qspvak4k3*acc128(100)
      acc128(101)=Qspk4+Qspk3
      acc128(102)=acc128(32)*acc128(101)
      acc128(103)=acc128(18)*acc128(99)
      acc128(104)=Qspe7*acc128(10)
      acc128(105)=Qspvak2l5*acc128(11)
      acc128(106)=Qspvak2l6*acc128(40)
      acc128(107)=Qspvak2k7*acc128(29)
      acc128(108)=Qspval5l6*acc128(58)
      acc128(109)=Qspval6l5*acc128(56)
      acc128(110)=Qspvak7l5*acc128(52)
      acc128(111)=Qspvak7l6*acc128(51)
      acc128(112)=Qspvak2e7*acc128(37)
      acc128(113)=Qspvae7l5*acc128(36)
      acc128(114)=Qspvae7l6*acc128(25)
      acc128(115)=QspQ*acc128(24)
      acc128(116)=Qspk2*acc128(19)
      acc128(100)=acc128(100)+acc128(116)+acc128(115)+acc128(114)+acc128(113)+a&
      &cc128(112)+acc128(111)+acc128(110)+acc128(109)+acc128(108)+acc128(107)+a&
      &cc128(106)+acc128(105)+acc128(104)+acc128(5)+acc128(103)+acc128(102)
      acc128(100)=Qspvak2k1*acc128(100)
      acc128(102)=Qspvak4k1*acc128(41)
      acc128(103)=Qspval5k1*acc128(83)
      acc128(104)=Qspval6k1*acc128(89)
      acc128(105)=Qspvak7k1*acc128(86)
      acc128(106)=Qspvae7k1*acc128(62)
      acc128(102)=acc128(104)+acc128(102)+acc128(103)+acc128(105)-acc128(106)
      acc128(103)=-acc128(49)*acc128(99)
      acc128(104)=Qspe7*acc128(39)
      acc128(105)=Qspvak2l5*acc128(84)
      acc128(106)=Qspvak2l6*acc128(79)
      acc128(107)=Qspvak2k7*acc128(60)
      acc128(108)=Qspval5l6*acc128(94)
      acc128(109)=Qspval6l5*acc128(72)
      acc128(110)=Qspvak7l5*acc128(68)
      acc128(111)=Qspvak7l6*acc128(69)
      acc128(112)=Qspvak2e7*acc128(48)
      acc128(113)=Qspvae7l5*acc128(59)
      acc128(114)=Qspvae7l6*acc128(63)
      acc128(115)=Qspvak2k3*acc128(16)
      acc128(116)=Qspk2*acc128(38)
      acc128(103)=acc128(116)+acc128(115)+acc128(114)+acc128(113)+acc128(112)+a&
      &cc128(111)+acc128(110)+acc128(109)+acc128(108)+acc128(107)+acc128(106)+a&
      &cc128(105)+acc128(104)+acc128(13)+acc128(103)-acc128(102)
      acc128(103)=Qspk2*acc128(103)
      acc128(104)=-acc128(64)*acc128(101)
      acc128(105)=acc128(45)*acc128(99)
      acc128(106)=Qspe7*acc128(2)
      acc128(107)=Qspvak2l5*acc128(74)
      acc128(108)=Qspvak2l6*acc128(76)
      acc128(109)=Qspvak2k7*acc128(54)
      acc128(110)=Qspval5l6*acc128(92)
      acc128(111)=Qspval6l5*acc128(91)
      acc128(112)=Qspvak7l5*acc128(17)
      acc128(113)=Qspvak7l6*acc128(90)
      acc128(114)=Qspvak2e7*acc128(87)
      acc128(115)=Qspvae7l5*acc128(85)
      acc128(116)=Qspvae7l6*acc128(82)
      acc128(117)=-QspQ*acc128(77)
      acc128(104)=acc128(117)+acc128(116)+acc128(115)+acc128(114)+acc128(113)+a&
      &cc128(112)+acc128(111)+acc128(110)+acc128(109)+acc128(108)+acc128(107)+a&
      &cc128(106)+acc128(105)+acc128(104)
      acc128(104)=Qspvak2k3*acc128(104)
      acc128(105)=acc128(77)*Qspvak2k4
      acc128(106)=-acc128(31)*Qspvak3k1
      acc128(107)=Qspvak4k1*acc128(55)
      acc128(108)=Qspval5k1*acc128(67)
      acc128(109)=Qspval6k1*acc128(61)
      acc128(110)=Qspvak7k1*acc128(46)
      acc128(111)=Qspvae7k1*acc128(26)
      acc128(112)=QspQ*acc128(35)
      acc128(113)=Qspvak2k3*acc128(21)
      acc128(114)=Qspk2*acc128(33)
      acc128(105)=acc128(114)+acc128(113)+acc128(112)+acc128(111)+acc128(110)+a&
      &cc128(109)+acc128(108)+acc128(107)+acc128(106)+acc128(12)+acc128(105)
      acc128(105)=Qspvak4k3*acc128(105)
      acc128(102)=acc128(102)-acc128(95)
      acc128(101)=acc128(102)*acc128(101)
      acc128(102)=Qspvak4k1*acc128(31)
      acc128(106)=Qspval5k1*acc128(75)
      acc128(107)=Qspval6k1*acc128(88)
      acc128(108)=Qspvak7k1*acc128(80)
      acc128(109)=Qspvae7k1*acc128(57)
      acc128(102)=acc128(109)+acc128(108)+acc128(107)+acc128(106)+acc128(27)+ac&
      &c128(102)
      acc128(102)=QspQ*acc128(102)
      acc128(99)=-acc128(98)*acc128(99)
      acc128(106)=Qspe7*acc128(97)
      acc128(107)=Qspvak2l5*acc128(81)
      acc128(108)=Qspvak2l6*acc128(78)
      acc128(109)=Qspvak2k7*acc128(47)
      acc128(110)=Qspval5l6*acc128(93)
      acc128(111)=Qspval6l5*acc128(71)
      acc128(112)=Qspvak7l5*acc128(65)
      acc128(113)=Qspvak7l6*acc128(66)
      acc128(114)=Qspvak2e7*acc128(28)
      acc128(115)=Qspvae7l5*acc128(30)
      acc128(116)=Qspvae7l6*acc128(43)
      acc128(117)=Qspvak4k1*acc128(73)
      acc128(118)=Qspval5k1*acc128(4)
      acc128(119)=Qspval6k1*acc128(42)
      acc128(120)=Qspvak7k1*acc128(70)
      acc128(121)=Qspvae7k1*acc128(44)
      brack=acc128(23)+acc128(99)+acc128(100)+acc128(101)+acc128(102)+acc128(10&
      &3)+acc128(104)+acc128(105)+acc128(106)+acc128(107)+acc128(108)+acc128(10&
      &9)+acc128(110)+acc128(111)+acc128(112)+acc128(113)+acc128(114)+acc128(11&
      &5)+acc128(116)+acc128(117)+acc128(118)+acc128(119)+acc128(120)+acc128(12&
      &1)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram128_sign, shift => diagram128_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd128h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d128
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d128 = 0.0_ki
      d128 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d128, ki), aimag(d128), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd128h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d128
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d128 = 0.0_ki
      d128 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d128, ki), aimag(d128), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d128h3l1
