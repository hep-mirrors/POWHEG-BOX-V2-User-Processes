module     p9_csbar_epnebbbarg_d80h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d80h0l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd80h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc80(110)
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspk7
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspk7 = dotproduct(Q,k7)
      acc80(1)=abb80(6)
      acc80(2)=abb80(7)
      acc80(3)=abb80(8)
      acc80(4)=abb80(9)
      acc80(5)=abb80(10)
      acc80(6)=abb80(11)
      acc80(7)=abb80(12)
      acc80(8)=abb80(13)
      acc80(9)=abb80(14)
      acc80(10)=abb80(15)
      acc80(11)=abb80(16)
      acc80(12)=abb80(17)
      acc80(13)=abb80(18)
      acc80(14)=abb80(19)
      acc80(15)=abb80(20)
      acc80(16)=abb80(21)
      acc80(17)=abb80(22)
      acc80(18)=abb80(23)
      acc80(19)=abb80(24)
      acc80(20)=abb80(25)
      acc80(21)=abb80(26)
      acc80(22)=abb80(28)
      acc80(23)=abb80(29)
      acc80(24)=abb80(30)
      acc80(25)=abb80(31)
      acc80(26)=abb80(32)
      acc80(27)=abb80(33)
      acc80(28)=abb80(34)
      acc80(29)=abb80(35)
      acc80(30)=abb80(36)
      acc80(31)=abb80(37)
      acc80(32)=abb80(38)
      acc80(33)=abb80(39)
      acc80(34)=abb80(40)
      acc80(35)=abb80(41)
      acc80(36)=abb80(42)
      acc80(37)=abb80(43)
      acc80(38)=abb80(44)
      acc80(39)=abb80(45)
      acc80(40)=abb80(47)
      acc80(41)=abb80(48)
      acc80(42)=abb80(49)
      acc80(43)=abb80(50)
      acc80(44)=abb80(51)
      acc80(45)=abb80(52)
      acc80(46)=abb80(53)
      acc80(47)=abb80(54)
      acc80(48)=abb80(55)
      acc80(49)=abb80(56)
      acc80(50)=abb80(57)
      acc80(51)=abb80(58)
      acc80(52)=abb80(59)
      acc80(53)=abb80(60)
      acc80(54)=abb80(61)
      acc80(55)=abb80(62)
      acc80(56)=abb80(63)
      acc80(57)=abb80(64)
      acc80(58)=abb80(65)
      acc80(59)=abb80(66)
      acc80(60)=abb80(67)
      acc80(61)=abb80(68)
      acc80(62)=abb80(69)
      acc80(63)=abb80(70)
      acc80(64)=abb80(71)
      acc80(65)=abb80(72)
      acc80(66)=abb80(73)
      acc80(67)=abb80(74)
      acc80(68)=abb80(75)
      acc80(69)=abb80(76)
      acc80(70)=abb80(77)
      acc80(71)=abb80(78)
      acc80(72)=abb80(79)
      acc80(73)=abb80(80)
      acc80(74)=abb80(81)
      acc80(75)=abb80(82)
      acc80(76)=abb80(83)
      acc80(77)=abb80(84)
      acc80(78)=abb80(85)
      acc80(79)=abb80(86)
      acc80(80)=abb80(87)
      acc80(81)=abb80(88)
      acc80(82)=abb80(91)
      acc80(83)=abb80(92)
      acc80(84)=abb80(93)
      acc80(85)=abb80(94)
      acc80(86)=abb80(95)
      acc80(87)=abb80(96)
      acc80(88)=abb80(97)
      acc80(89)=abb80(98)
      acc80(90)=abb80(99)
      acc80(91)=abb80(100)
      acc80(92)=abb80(101)
      acc80(93)=abb80(103)
      acc80(94)=abb80(104)
      acc80(95)=abb80(105)
      acc80(96)=abb80(106)
      acc80(97)=abb80(108)
      acc80(98)=Qspval5k2*acc80(1)
      acc80(99)=Qspval6k2*acc80(3)
      acc80(98)=acc80(99)+acc80(98)
      acc80(98)=Qspvak2k1*acc80(98)
      acc80(99)=acc80(94)*Qspvak2k4
      acc80(100)=acc80(80)*Qspvak3k1
      acc80(101)=Qspvak4k1*acc80(59)
      acc80(102)=Qspval5k1*acc80(49)
      acc80(103)=Qspval6k1*acc80(90)
      acc80(104)=Qspvak7k1*acc80(51)
      acc80(105)=Qspvak2k3*acc80(16)
      acc80(106)=Qspk1*acc80(21)
      acc80(107)=Qspk2*acc80(26)
      acc80(98)=acc80(107)+acc80(106)+acc80(105)+acc80(104)+acc80(103)+acc80(10&
      &2)+acc80(101)+acc80(100)+acc80(31)+acc80(99)+acc80(98)
      acc80(98)=Qspvak4k3*acc80(98)
      acc80(99)=Qspvak4k1*acc80(80)
      acc80(100)=Qspval5k1*acc80(46)
      acc80(101)=Qspval6k1*acc80(44)
      acc80(102)=Qspvak2k3*acc80(94)
      acc80(99)=acc80(102)+acc80(101)+acc80(100)+acc80(32)+acc80(99)
      acc80(99)=QspQ*acc80(99)
      acc80(100)=Qspvak4k1*acc80(92)
      acc80(101)=Qspval5k1*acc80(87)
      acc80(102)=Qspval6k1*acc80(96)
      acc80(100)=-acc80(102)+acc80(100)-acc80(101)
      acc80(101)=Qspvak2k3*acc80(89)
      acc80(102)=Qspval5k2*acc80(75)
      acc80(103)=Qspval6k2*acc80(81)
      acc80(101)=acc80(103)+acc80(102)+acc80(101)+acc80(25)+acc80(100)
      acc80(101)=Qspk2*acc80(101)
      acc80(100)=acc80(39)-acc80(100)
      acc80(102)=Qspk4+Qspk3
      acc80(100)=acc80(100)*acc80(102)
      acc80(103)=Qspvak2k1*acc80(87)
      acc80(104)=Qspvak2k3*acc80(27)
      acc80(103)=acc80(104)+acc80(71)+acc80(103)
      acc80(103)=Qspval5k2*acc80(103)
      acc80(104)=Qspvak2k1*acc80(96)
      acc80(105)=Qspvak2k3*acc80(70)
      acc80(104)=acc80(105)+acc80(74)+acc80(104)
      acc80(104)=Qspval6k2*acc80(104)
      acc80(105)=Qspval5k1*acc80(33)
      acc80(106)=Qspval6k1*acc80(29)
      acc80(107)=Qspvak7k1*acc80(14)
      acc80(108)=-acc80(89)*acc80(102)
      acc80(108)=acc80(20)+acc80(108)
      acc80(108)=Qspvak2k3*acc80(108)
      acc80(109)=Qspk1*acc80(50)
      acc80(98)=acc80(98)+acc80(101)+acc80(99)+acc80(104)+acc80(103)+acc80(109)&
      &+acc80(108)+acc80(107)+acc80(106)+acc80(12)+acc80(105)+acc80(100)
      acc80(98)=Qspe7*acc80(98)
      acc80(99)=Qspvak2k7*acc80(91)
      acc80(100)=Qspvak2k1*acc80(2)
      acc80(101)=Qspvak7k1*acc80(76)
      acc80(103)=Qspvae7k1*acc80(63)
      acc80(104)=Qspk1*acc80(45)
      acc80(99)=acc80(104)+acc80(103)+acc80(101)+acc80(100)+acc80(57)+acc80(99)
      acc80(99)=Qspval5k2*acc80(99)
      acc80(100)=Qspvak2k7*acc80(53)
      acc80(101)=Qspvak2k1*acc80(4)
      acc80(103)=Qspvak7k1*acc80(86)
      acc80(104)=Qspvae7k1*acc80(64)
      acc80(105)=Qspk1*acc80(60)
      acc80(100)=acc80(105)+acc80(104)+acc80(103)+acc80(101)+acc80(58)+acc80(10&
      &0)
      acc80(100)=Qspval6k2*acc80(100)
      acc80(101)=Qspvae7k1*acc80(22)
      acc80(103)=Qspval5k2*acc80(67)
      acc80(104)=Qspval6k2*acc80(61)
      acc80(101)=acc80(104)+acc80(103)+acc80(35)+acc80(101)
      acc80(101)=QspQ*acc80(101)
      acc80(103)=-Qspk1+Qspk7
      acc80(103)=acc80(72)*acc80(103)
      acc80(104)=QspQ*acc80(56)
      acc80(103)=acc80(104)+acc80(41)+acc80(103)
      acc80(103)=Qspk2*acc80(103)
      acc80(104)=Qspvak2k4*acc80(10)
      acc80(105)=Qspk7*acc80(36)
      acc80(106)=Qspvak7k1*acc80(24)
      acc80(107)=Qspk7*acc80(17)
      acc80(107)=acc80(13)+acc80(107)
      acc80(107)=Qspvae7k1*acc80(107)
      acc80(108)=Qspvak2k3*acc80(19)
      acc80(109)=-Qspvae7k1*acc80(17)
      acc80(109)=acc80(88)+acc80(109)
      acc80(109)=Qspk1*acc80(109)
      acc80(99)=acc80(103)+acc80(101)+acc80(100)+acc80(99)+acc80(109)+acc80(108&
      &)+acc80(107)+acc80(106)+acc80(105)+acc80(5)+acc80(104)
      acc80(99)=Qspvak4k3*acc80(99)
      acc80(100)=Qspval5k1*acc80(62)
      acc80(101)=Qspval6k1*acc80(30)
      acc80(103)=Qspvak7k1*acc80(52)
      acc80(104)=Qspvae7k1*acc80(18)
      acc80(105)=Qspvak2k3*acc80(7)
      acc80(106)=Qspk1*acc80(48)
      acc80(107)=Qspval5k2*acc80(11)
      acc80(108)=Qspval6k2*acc80(84)
      acc80(100)=acc80(108)+acc80(107)+acc80(106)+acc80(105)+acc80(104)+acc80(1&
      &03)+acc80(101)+acc80(23)+acc80(100)
      acc80(100)=QspQ*acc80(100)
      acc80(101)=Qspvak7k1*acc80(66)
      acc80(103)=Qspk7*acc80(47)
      acc80(104)=-Qspvae7k1*acc80(65)
      acc80(105)=-Qspvak2k3*acc80(97)
      acc80(106)=Qspk1*acc80(54)
      acc80(107)=Qspval5k2*acc80(73)
      acc80(108)=Qspval6k2*acc80(78)
      acc80(109)=QspQ*acc80(38)
      acc80(103)=acc80(109)+acc80(108)+acc80(107)+acc80(106)+acc80(105)+acc80(1&
      &04)+acc80(101)+acc80(42)+acc80(103)
      acc80(103)=Qspk2*acc80(103)
      acc80(104)=Qspval5k1*acc80(82)
      acc80(105)=Qspval6k1*acc80(95)
      acc80(104)=acc80(28)+acc80(104)+acc80(105)
      acc80(105)=-acc80(55)*acc80(102)
      acc80(106)=-Qspvae7k1*acc80(34)
      acc80(107)=-Qspvak2k3*acc80(43)
      acc80(105)=acc80(107)+acc80(106)+acc80(105)+acc80(104)
      acc80(105)=Qspk1*acc80(105)
      acc80(106)=Qspvak7k1*acc80(79)
      acc80(107)=Qspvae7k1*acc80(8)
      acc80(108)=Qspvak2k3*acc80(6)
      acc80(109)=Qspk1*acc80(77)
      acc80(106)=acc80(109)+acc80(108)+acc80(107)+acc80(68)+acc80(106)
      acc80(106)=Qspval5k2*acc80(106)
      acc80(107)=Qspvak7k1*acc80(93)
      acc80(108)=Qspvae7k1*acc80(85)
      acc80(109)=Qspvak2k3*acc80(40)
      acc80(110)=Qspk1*acc80(83)
      acc80(107)=acc80(110)+acc80(109)+acc80(108)+acc80(69)+acc80(107)
      acc80(107)=Qspval6k2*acc80(107)
      acc80(101)=-acc80(101)+acc80(37)
      acc80(101)=acc80(102)*acc80(101)
      acc80(104)=-Qspk7*acc80(104)
      acc80(108)=acc80(65)*acc80(102)
      acc80(109)=Qspk7*acc80(34)
      acc80(108)=acc80(15)+acc80(109)+acc80(108)
      acc80(108)=Qspvae7k1*acc80(108)
      acc80(102)=acc80(97)*acc80(102)
      acc80(109)=Qspk7*acc80(43)
      acc80(102)=acc80(109)+acc80(102)
      acc80(102)=Qspvak2k3*acc80(102)
      brack=acc80(9)+acc80(98)+acc80(99)+acc80(100)+acc80(101)+acc80(102)+acc80&
      &(103)+acc80(104)+acc80(105)+acc80(106)+acc80(107)+acc80(108)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram80_sign, shift => diagram80_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd80h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d80
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d80 = 0.0_ki
      d80 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d80, ki), aimag(d80), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd80h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d80
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d80 = 0.0_ki
      d80 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d80, ki), aimag(d80), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d80h0l1
