module     p9_csbar_epnebbbarg_d294h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d294h2l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd294h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc294(109)
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvae7k1
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2e7
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      acc294(1)=abb294(8)
      acc294(2)=abb294(9)
      acc294(3)=abb294(10)
      acc294(4)=abb294(11)
      acc294(5)=abb294(12)
      acc294(6)=abb294(13)
      acc294(7)=abb294(14)
      acc294(8)=abb294(15)
      acc294(9)=abb294(16)
      acc294(10)=abb294(17)
      acc294(11)=abb294(18)
      acc294(12)=abb294(19)
      acc294(13)=abb294(20)
      acc294(14)=abb294(21)
      acc294(15)=abb294(22)
      acc294(16)=abb294(23)
      acc294(17)=abb294(24)
      acc294(18)=abb294(25)
      acc294(19)=abb294(26)
      acc294(20)=abb294(27)
      acc294(21)=abb294(28)
      acc294(22)=abb294(29)
      acc294(23)=abb294(30)
      acc294(24)=abb294(31)
      acc294(25)=abb294(32)
      acc294(26)=abb294(33)
      acc294(27)=abb294(34)
      acc294(28)=abb294(35)
      acc294(29)=abb294(36)
      acc294(30)=abb294(37)
      acc294(31)=abb294(38)
      acc294(32)=abb294(39)
      acc294(33)=abb294(40)
      acc294(34)=abb294(41)
      acc294(35)=abb294(42)
      acc294(36)=abb294(43)
      acc294(37)=abb294(44)
      acc294(38)=abb294(45)
      acc294(39)=abb294(46)
      acc294(40)=abb294(47)
      acc294(41)=abb294(48)
      acc294(42)=abb294(49)
      acc294(43)=abb294(50)
      acc294(44)=abb294(51)
      acc294(45)=abb294(52)
      acc294(46)=abb294(53)
      acc294(47)=abb294(55)
      acc294(48)=abb294(56)
      acc294(49)=abb294(57)
      acc294(50)=abb294(58)
      acc294(51)=abb294(60)
      acc294(52)=abb294(61)
      acc294(53)=abb294(62)
      acc294(54)=abb294(64)
      acc294(55)=abb294(65)
      acc294(56)=abb294(67)
      acc294(57)=abb294(68)
      acc294(58)=abb294(69)
      acc294(59)=abb294(72)
      acc294(60)=abb294(73)
      acc294(61)=abb294(76)
      acc294(62)=abb294(77)
      acc294(63)=abb294(78)
      acc294(64)=abb294(79)
      acc294(65)=abb294(80)
      acc294(66)=abb294(81)
      acc294(67)=abb294(85)
      acc294(68)=abb294(86)
      acc294(69)=abb294(92)
      acc294(70)=abb294(94)
      acc294(71)=abb294(95)
      acc294(72)=abb294(106)
      acc294(73)=abb294(107)
      acc294(74)=abb294(109)
      acc294(75)=abb294(110)
      acc294(76)=abb294(111)
      acc294(77)=abb294(114)
      acc294(78)=abb294(116)
      acc294(79)=abb294(118)
      acc294(80)=abb294(122)
      acc294(81)=abb294(127)
      acc294(82)=abb294(128)
      acc294(83)=abb294(129)
      acc294(84)=abb294(130)
      acc294(85)=abb294(131)
      acc294(86)=abb294(133)
      acc294(87)=abb294(140)
      acc294(88)=abb294(143)
      acc294(89)=abb294(146)
      acc294(90)=abb294(148)
      acc294(91)=abb294(151)
      acc294(92)=abb294(152)
      acc294(93)=abb294(156)
      acc294(94)=abb294(158)
      acc294(95)=abb294(160)
      acc294(96)=Qspl5-Qspk1
      acc294(97)=acc294(96)-Qspk7
      acc294(98)=-acc294(5)*acc294(97)
      acc294(99)=Qspvak7k1*acc294(54)
      acc294(100)=Qspvae7k1*acc294(53)
      acc294(101)=QspQ*acc294(52)
      acc294(102)=Qspk2*acc294(6)
      acc294(98)=acc294(102)+acc294(101)+acc294(100)+acc294(1)+acc294(99)+acc29&
      &4(98)
      acc294(98)=Qspvak4k3*acc294(98)
      acc294(99)=Qspval5k2*acc294(69)
      acc294(100)=-acc294(51)*Qspval5k3
      acc294(101)=Qspvak7k1*acc294(43)
      acc294(102)=Qspvae7k1*acc294(30)
      acc294(103)=Qspvak4k1*acc294(60)
      acc294(104)=acc294(67)-acc294(103)
      acc294(104)=Qspk1*acc294(104)
      acc294(105)=acc294(89)+acc294(103)
      acc294(105)=Qspl5*acc294(105)
      acc294(103)=acc294(75)+acc294(103)
      acc294(103)=Qspk7*acc294(103)
      acc294(106)=Qspvak2k1*acc294(16)
      acc294(107)=Qspval5k1*acc294(44)
      acc294(108)=Qspvak4k1*acc294(78)
      acc294(108)=acc294(87)+acc294(108)
      acc294(108)=QspQ*acc294(108)
      acc294(109)=Qspvak4k1*acc294(77)
      acc294(109)=acc294(3)+acc294(109)
      acc294(109)=Qspk2*acc294(109)
      acc294(98)=acc294(98)+acc294(109)+acc294(108)+acc294(107)+acc294(106)+acc&
      &294(103)+acc294(105)+acc294(104)+acc294(102)+acc294(101)+acc294(100)+acc&
      &294(21)+acc294(99)
      acc294(98)=Qspvak2l6*acc294(98)
      acc294(99)=Qspvak7k1*acc294(40)
      acc294(100)=Qspval5l6*acc294(51)
      acc294(101)=Qspvae7k1*acc294(10)
      acc294(102)=Qspvak4k1*acc294(93)
      acc294(103)=acc294(15)+acc294(102)
      acc294(103)=Qspk1*acc294(103)
      acc294(104)=acc294(68)-acc294(102)
      acc294(104)=Qspl5*acc294(104)
      acc294(102)=acc294(55)-acc294(102)
      acc294(102)=Qspk7*acc294(102)
      acc294(105)=Qspvak2k1*acc294(19)
      acc294(106)=Qspval5k1*acc294(8)
      acc294(107)=-Qspvak4k1*acc294(17)
      acc294(107)=acc294(37)+acc294(107)
      acc294(107)=QspQ*acc294(107)
      acc294(108)=-Qspvak4k1*acc294(49)
      acc294(108)=acc294(18)+acc294(108)
      acc294(108)=Qspk2*acc294(108)
      acc294(99)=acc294(108)+acc294(107)+acc294(106)+acc294(105)+acc294(102)+ac&
      &c294(104)+acc294(103)+acc294(101)+acc294(99)+acc294(100)
      acc294(99)=Qspvak2k3*acc294(99)
      acc294(96)=acc294(96)+Qspk7
      acc294(100)=-acc294(86)*acc294(96)
      acc294(101)=Qspval5k2*acc294(74)
      acc294(102)=acc294(65)*Qspval5k3
      acc294(103)=Qspval5k1*acc294(50)
      acc294(104)=QspQ*acc294(95)
      acc294(105)=Qspk2*acc294(94)
      acc294(106)=Qspvak4k3*acc294(2)
      acc294(100)=acc294(106)+acc294(105)+acc294(104)+acc294(103)+acc294(102)+a&
      &cc294(29)+acc294(101)+acc294(100)
      acc294(100)=Qspvak2l6*acc294(100)
      acc294(101)=Qspl6*acc294(84)
      acc294(102)=Qspvak1l6*acc294(46)
      acc294(103)=Qspvak4l6*acc294(91)
      acc294(104)=Qspvak7l6*acc294(85)
      acc294(105)=Qspval5l6*acc294(83)
      acc294(101)=acc294(105)+acc294(104)+acc294(103)+acc294(101)+acc294(102)
      acc294(101)=Qspval5k1*acc294(101)
      acc294(102)=acc294(63)*acc294(96)
      acc294(103)=-Qspval5l6*acc294(65)
      acc294(104)=Qspval5k1*acc294(35)
      acc294(105)=QspQ*acc294(66)
      acc294(106)=Qspk2*acc294(20)
      acc294(102)=acc294(106)+acc294(105)+acc294(104)+acc294(13)+acc294(103)+ac&
      &c294(102)
      acc294(102)=Qspvak2k3*acc294(102)
      acc294(103)=Qspvak2k7*acc294(88)
      acc294(104)=Qspval5l6*acc294(31)
      acc294(104)=acc294(12)+acc294(104)
      acc294(104)=Qspvak2k1*acc294(104)
      acc294(105)=QspQ*acc294(62)
      acc294(106)=Qspk2*acc294(56)
      acc294(103)=acc294(106)+acc294(105)+acc294(104)+acc294(33)+acc294(103)
      acc294(103)=Qspvak4k3*acc294(103)
      acc294(104)=Qspval5l6*acc294(79)
      acc294(105)=Qspval5k1*acc294(24)
      acc294(104)=acc294(105)+acc294(28)+acc294(104)
      acc294(104)=Qspk2*acc294(104)
      acc294(105)=-acc294(59)*acc294(96)
      acc294(106)=Qspvak2k1*acc294(11)
      acc294(107)=QspQ*acc294(14)
      acc294(100)=acc294(100)+acc294(103)+acc294(102)+acc294(104)+acc294(107)+a&
      &cc294(101)+acc294(106)+acc294(32)+acc294(105)
      acc294(100)=Qspe7*acc294(100)
      acc294(101)=acc294(38)*acc294(97)
      acc294(102)=Qspvak7k1*acc294(73)
      acc294(103)=Qspval5l6*acc294(76)
      acc294(104)=Qspvae7k1*acc294(41)
      acc294(105)=Qspval5k1*acc294(57)
      acc294(106)=QspQ*acc294(26)
      acc294(107)=Qspk2*acc294(58)
      acc294(101)=acc294(107)+acc294(106)+acc294(105)+acc294(104)+acc294(103)+a&
      &cc294(22)+acc294(102)+acc294(101)
      acc294(101)=Qspk2*acc294(101)
      acc294(97)=acc294(93)*acc294(97)
      acc294(102)=-Qspval5l6*acc294(90)
      acc294(97)=acc294(27)+acc294(102)+acc294(97)
      acc294(97)=Qspvak2k1*acc294(97)
      acc294(102)=Qspvae7k1*acc294(39)
      acc294(103)=Qspvak2k1*acc294(17)
      acc294(102)=acc294(103)+acc294(61)+acc294(102)
      acc294(102)=QspQ*acc294(102)
      acc294(103)=acc294(93)*Qspvak7k1
      acc294(103)=acc294(103)+acc294(72)
      acc294(103)=Qspvak2k7*acc294(103)
      acc294(104)=acc294(4)*Qspvak2l5
      acc294(105)=acc294(71)*Qspvak2e7
      acc294(105)=acc294(105)+acc294(34)
      acc294(105)=Qspvae7k1*acc294(105)
      acc294(106)=Qspvak2k1*acc294(49)
      acc294(106)=acc294(42)+acc294(106)
      acc294(106)=Qspk2*acc294(106)
      acc294(97)=acc294(106)+acc294(102)+acc294(97)+acc294(105)+acc294(25)+acc2&
      &94(104)+acc294(103)
      acc294(97)=Qspvak4k3*acc294(97)
      acc294(102)=Qspl6*acc294(82)
      acc294(103)=Qspvak1l6*acc294(45)
      acc294(104)=Qspvak4l6*acc294(92)
      acc294(105)=Qspvak7l6*acc294(81)
      acc294(106)=Qspval5l6*acc294(80)
      acc294(102)=acc294(106)+acc294(105)+acc294(104)+acc294(102)+acc294(103)
      acc294(102)=Qspval5k1*acc294(102)
      acc294(103)=-acc294(64)*acc294(96)
      acc294(104)=Qspvae7k1*acc294(47)
      acc294(105)=QspQ*acc294(48)
      acc294(103)=acc294(105)+acc294(9)+acc294(104)+acc294(103)
      acc294(103)=QspQ*acc294(103)
      acc294(96)=acc294(70)*acc294(96)
      acc294(104)=Qspvae7k1*acc294(36)
      acc294(105)=Qspvak2k1*acc294(7)
      brack=acc294(23)+acc294(96)+acc294(97)+acc294(98)+acc294(99)+acc294(100)+&
      &acc294(101)+acc294(102)+acc294(103)+acc294(104)+acc294(105)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram294_sign, shift => diagram294_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd294h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d294
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d294 = 0.0_ki
      d294 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d294, ki), aimag(d294), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd294h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d294
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d294 = 0.0_ki
      d294 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d294, ki), aimag(d294), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d294h2l1
