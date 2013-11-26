module     p9_csbar_epnebbbarg_d298h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d298h1l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd298h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc298(110)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvae7k1
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspe7 = dotproduct(Q,e7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      acc298(1)=abb298(7)
      acc298(2)=abb298(8)
      acc298(3)=abb298(9)
      acc298(4)=abb298(10)
      acc298(5)=abb298(11)
      acc298(6)=abb298(12)
      acc298(7)=abb298(13)
      acc298(8)=abb298(14)
      acc298(9)=abb298(15)
      acc298(10)=abb298(16)
      acc298(11)=abb298(17)
      acc298(12)=abb298(18)
      acc298(13)=abb298(19)
      acc298(14)=abb298(20)
      acc298(15)=abb298(21)
      acc298(16)=abb298(22)
      acc298(17)=abb298(23)
      acc298(18)=abb298(24)
      acc298(19)=abb298(25)
      acc298(20)=abb298(26)
      acc298(21)=abb298(27)
      acc298(22)=abb298(28)
      acc298(23)=abb298(29)
      acc298(24)=abb298(30)
      acc298(25)=abb298(31)
      acc298(26)=abb298(32)
      acc298(27)=abb298(33)
      acc298(28)=abb298(34)
      acc298(29)=abb298(35)
      acc298(30)=abb298(36)
      acc298(31)=abb298(37)
      acc298(32)=abb298(38)
      acc298(33)=abb298(39)
      acc298(34)=abb298(40)
      acc298(35)=abb298(41)
      acc298(36)=abb298(42)
      acc298(37)=abb298(43)
      acc298(38)=abb298(44)
      acc298(39)=abb298(45)
      acc298(40)=abb298(46)
      acc298(41)=abb298(47)
      acc298(42)=abb298(48)
      acc298(43)=abb298(49)
      acc298(44)=abb298(50)
      acc298(45)=abb298(51)
      acc298(46)=abb298(52)
      acc298(47)=abb298(53)
      acc298(48)=abb298(54)
      acc298(49)=abb298(55)
      acc298(50)=abb298(56)
      acc298(51)=abb298(57)
      acc298(52)=abb298(58)
      acc298(53)=abb298(59)
      acc298(54)=abb298(60)
      acc298(55)=abb298(61)
      acc298(56)=abb298(62)
      acc298(57)=abb298(63)
      acc298(58)=abb298(64)
      acc298(59)=abb298(66)
      acc298(60)=abb298(68)
      acc298(61)=abb298(69)
      acc298(62)=abb298(71)
      acc298(63)=abb298(73)
      acc298(64)=abb298(74)
      acc298(65)=abb298(77)
      acc298(66)=abb298(79)
      acc298(67)=abb298(80)
      acc298(68)=abb298(83)
      acc298(69)=abb298(84)
      acc298(70)=abb298(85)
      acc298(71)=abb298(86)
      acc298(72)=abb298(87)
      acc298(73)=abb298(89)
      acc298(74)=abb298(91)
      acc298(75)=abb298(92)
      acc298(76)=abb298(93)
      acc298(77)=abb298(94)
      acc298(78)=abb298(95)
      acc298(79)=abb298(96)
      acc298(80)=abb298(97)
      acc298(81)=abb298(98)
      acc298(82)=abb298(99)
      acc298(83)=abb298(100)
      acc298(84)=abb298(101)
      acc298(85)=abb298(102)
      acc298(86)=abb298(103)
      acc298(87)=abb298(104)
      acc298(88)=abb298(105)
      acc298(89)=abb298(106)
      acc298(90)=abb298(107)
      acc298(91)=abb298(108)
      acc298(92)=abb298(109)
      acc298(93)=abb298(110)
      acc298(94)=abb298(115)
      acc298(95)=abb298(116)
      acc298(96)=abb298(124)
      acc298(97)=Qspk7+Qspl6
      acc298(98)=QspQ+Qspk1+acc298(97)
      acc298(98)=acc298(88)*acc298(98)
      acc298(99)=Qspval6k7*acc298(47)
      acc298(100)=Qspval6l5*acc298(56)
      acc298(100)=acc298(5)+acc298(100)
      acc298(100)=Qspvak2k1*acc298(100)
      acc298(101)=Qspval6k1*acc298(63)
      acc298(102)=Qspk2*acc298(32)
      acc298(98)=acc298(102)+acc298(101)+acc298(100)+acc298(29)+acc298(99)+acc2&
      &98(98)
      acc298(98)=Qspvak4k3*acc298(98)
      acc298(99)=Qspval6k2*acc298(43)
      acc298(100)=Qspval6k3*acc298(44)
      acc298(101)=Qspval6k7*acc298(27)
      acc298(102)=Qspl6*acc298(24)
      acc298(99)=acc298(102)+acc298(101)+acc298(100)+acc298(1)+acc298(99)
      acc298(99)=Qspvak2k1*acc298(99)
      acc298(100)=Qspl6-Qspk1
      acc298(101)=-acc298(78)*acc298(100)
      acc298(102)=Qspvak2k1*acc298(26)
      acc298(101)=acc298(102)+acc298(21)+acc298(101)
      acc298(101)=Qspval6k1*acc298(101)
      acc298(102)=Qspvak4k1*acc298(75)
      acc298(103)=Qspval6k1*acc298(68)
      acc298(102)=acc298(103)+acc298(11)+acc298(102)
      acc298(102)=QspQ*acc298(102)
      acc298(103)=Qspvak4k1*acc298(89)
      acc298(104)=Qspval6k1*acc298(82)
      acc298(103)=acc298(104)+acc298(4)+acc298(103)
      acc298(103)=Qspk2*acc298(103)
      acc298(104)=Qspvak4k1*acc298(85)
      acc298(104)=acc298(104)+acc298(77)
      acc298(105)=-Qspval6k1*acc298(78)
      acc298(105)=acc298(105)+acc298(104)
      acc298(105)=Qspk7*acc298(105)
      acc298(106)=Qspvak7k1*acc298(67)
      acc298(107)=Qspval6k7*acc298(28)
      acc298(108)=Qspk1*acc298(46)
      acc298(109)=Qspvak4k1*Qspk1
      acc298(110)=-acc298(85)*acc298(109)
      acc298(104)=Qspl6*acc298(104)
      acc298(98)=acc298(98)+acc298(105)+acc298(103)+acc298(102)+acc298(101)+acc&
      &298(99)+acc298(104)+acc298(110)+acc298(108)+acc298(107)+acc298(34)+acc29&
      &8(106)
      acc298(98)=Qspe7*acc298(98)
      acc298(99)=Qspk7-acc298(100)
      acc298(99)=acc298(65)*acc298(99)
      acc298(101)=Qspvak7k1*acc298(72)
      acc298(102)=QspQ*acc298(54)
      acc298(103)=Qspk2*acc298(25)
      acc298(99)=acc298(103)+acc298(102)+acc298(53)+acc298(101)+acc298(99)
      acc298(99)=Qspval6e7*acc298(99)
      acc298(101)=Qspvak7k1*acc298(33)
      acc298(102)=Qspvae7k1*acc298(30)
      acc298(103)=Qspvae7k1*acc298(71)
      acc298(103)=acc298(55)+acc298(103)
      acc298(103)=Qspval6k7*acc298(103)
      acc298(104)=Qspk1*acc298(36)
      acc298(105)=Qspval6l5*acc298(51)
      acc298(105)=acc298(10)+acc298(105)
      acc298(105)=Qspvak2k1*acc298(105)
      acc298(106)=Qspval6k1*acc298(73)
      acc298(107)=Qspvae7k1*acc298(40)
      acc298(107)=acc298(39)+acc298(107)
      acc298(107)=QspQ*acc298(107)
      acc298(108)=Qspvae7k1*acc298(37)
      acc298(108)=acc298(22)+acc298(108)
      acc298(108)=Qspk2*acc298(108)
      acc298(110)=Qspvae7k1*acc298(62)
      acc298(110)=acc298(86)+acc298(110)
      acc298(110)=Qspk7*acc298(110)
      acc298(99)=acc298(99)+acc298(110)+acc298(108)+acc298(107)+acc298(106)+acc&
      &298(105)+acc298(104)+acc298(103)+acc298(102)+acc298(17)+acc298(101)
      acc298(99)=Qspvak4k3*acc298(99)
      acc298(101)=Qspvak7k1*acc298(66)
      acc298(102)=Qspk1*acc298(52)
      acc298(103)=-acc298(91)*acc298(109)
      acc298(104)=Qspvak4k1*acc298(91)
      acc298(105)=acc298(96)+acc298(104)
      acc298(105)=Qspl6*acc298(105)
      acc298(106)=Qspvak2k1*acc298(2)
      acc298(107)=Qspval6k1*acc298(23)
      acc298(108)=Qspvak4k1*acc298(93)
      acc298(108)=acc298(76)+acc298(108)
      acc298(108)=QspQ*acc298(108)
      acc298(110)=Qspvak4k1*acc298(92)
      acc298(110)=acc298(58)+acc298(110)
      acc298(110)=Qspk2*acc298(110)
      acc298(104)=acc298(14)+acc298(104)
      acc298(104)=Qspk7*acc298(104)
      acc298(101)=acc298(104)+acc298(110)+acc298(108)+acc298(107)+acc298(106)+a&
      &cc298(105)+acc298(103)+acc298(102)+acc298(50)+acc298(101)
      acc298(101)=Qspval6e7*acc298(101)
      acc298(102)=acc298(94)*acc298(100)
      acc298(103)=Qspvae7k1*acc298(12)
      acc298(104)=Qspval6k7*acc298(31)
      acc298(105)=Qspvak4k1*acc298(87)
      acc298(106)=Qspval6k1*acc298(81)
      acc298(107)=QspQ*acc298(60)
      acc298(108)=Qspk2*acc298(95)
      acc298(102)=acc298(108)+acc298(107)+acc298(106)+acc298(105)+acc298(104)+a&
      &cc298(3)+acc298(103)+acc298(102)
      acc298(102)=Qspk2*acc298(102)
      acc298(103)=-acc298(49)*acc298(100)
      acc298(104)=Qspvae7k1*acc298(18)
      acc298(105)=Qspval6k7*acc298(69)
      acc298(106)=Qspvak4k1*acc298(90)
      acc298(107)=Qspval6k1*acc298(83)
      acc298(108)=QspQ*acc298(64)
      acc298(103)=acc298(108)+acc298(107)+acc298(106)+acc298(105)+acc298(38)+ac&
      &c298(104)+acc298(103)
      acc298(103)=QspQ*acc298(103)
      acc298(104)=Qspval6k7*acc298(61)
      acc298(105)=Qspvak4k1*acc298(84)
      acc298(105)=acc298(104)-acc298(105)
      acc298(97)=Qspk1-acc298(97)
      acc298(97)=acc298(79)*acc298(97)
      acc298(106)=Qspvae7k1*acc298(41)
      acc298(107)=-Qspval6k1*acc298(74)
      acc298(108)=QspQ*acc298(42)
      acc298(110)=Qspk2*acc298(19)
      acc298(97)=acc298(110)+acc298(108)+acc298(107)+acc298(45)+acc298(106)+acc&
      &298(97)-acc298(105)
      acc298(97)=Qspk7*acc298(97)
      acc298(106)=Qspval6k2*acc298(48)
      acc298(107)=Qspval6k3*acc298(35)
      acc298(108)=Qspval6k7*acc298(20)
      acc298(110)=Qspl6*acc298(7)
      acc298(106)=acc298(110)+acc298(108)+acc298(107)+acc298(16)+acc298(106)
      acc298(106)=Qspvak2k1*acc298(106)
      acc298(105)=acc298(80)-acc298(105)
      acc298(105)=Qspl6*acc298(105)
      acc298(100)=-acc298(74)*acc298(100)
      acc298(107)=Qspvak2k1*acc298(9)
      acc298(100)=acc298(107)+acc298(70)+acc298(100)
      acc298(100)=Qspval6k1*acc298(100)
      acc298(107)=Qspvak7k1*acc298(59)
      acc298(108)=Qspvae7k1*acc298(13)
      acc298(110)=Qspvae7k1*acc298(57)
      acc298(110)=acc298(6)+acc298(110)
      acc298(110)=Qspval6k7*acc298(110)
      acc298(104)=acc298(15)+acc298(104)
      acc298(104)=Qspk1*acc298(104)
      acc298(109)=-acc298(84)*acc298(109)
      brack=acc298(8)+acc298(97)+acc298(98)+acc298(99)+acc298(100)+acc298(101)+&
      &acc298(102)+acc298(103)+acc298(104)+acc298(105)+acc298(106)+acc298(107)+&
      &acc298(108)+acc298(109)+acc298(110)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram298_sign, shift => diagram298_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd298h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d298
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d298 = 0.0_ki
      d298 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d298, ki), aimag(d298), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd298h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d298
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d298 = 0.0_ki
      d298 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d298, ki), aimag(d298), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d298h1l1
