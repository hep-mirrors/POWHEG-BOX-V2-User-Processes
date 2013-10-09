module     p9_csbar_epnebbbarg_d317h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d317h2l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd317h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc317(111)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l6
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      acc317(1)=abb317(10)
      acc317(2)=abb317(11)
      acc317(3)=abb317(12)
      acc317(4)=abb317(13)
      acc317(5)=abb317(14)
      acc317(6)=abb317(15)
      acc317(7)=abb317(16)
      acc317(8)=abb317(17)
      acc317(9)=abb317(18)
      acc317(10)=abb317(19)
      acc317(11)=abb317(20)
      acc317(12)=abb317(21)
      acc317(13)=abb317(22)
      acc317(14)=abb317(23)
      acc317(15)=abb317(24)
      acc317(16)=abb317(25)
      acc317(17)=abb317(26)
      acc317(18)=abb317(27)
      acc317(19)=abb317(28)
      acc317(20)=abb317(29)
      acc317(21)=abb317(30)
      acc317(22)=abb317(31)
      acc317(23)=abb317(32)
      acc317(24)=abb317(33)
      acc317(25)=abb317(34)
      acc317(26)=abb317(35)
      acc317(27)=abb317(36)
      acc317(28)=abb317(37)
      acc317(29)=abb317(38)
      acc317(30)=abb317(39)
      acc317(31)=abb317(40)
      acc317(32)=abb317(41)
      acc317(33)=abb317(42)
      acc317(34)=abb317(43)
      acc317(35)=abb317(44)
      acc317(36)=abb317(45)
      acc317(37)=abb317(46)
      acc317(38)=abb317(47)
      acc317(39)=abb317(48)
      acc317(40)=abb317(49)
      acc317(41)=abb317(50)
      acc317(42)=abb317(51)
      acc317(43)=abb317(52)
      acc317(44)=abb317(53)
      acc317(45)=abb317(54)
      acc317(46)=abb317(55)
      acc317(47)=abb317(56)
      acc317(48)=abb317(57)
      acc317(49)=abb317(58)
      acc317(50)=abb317(59)
      acc317(51)=abb317(60)
      acc317(52)=abb317(61)
      acc317(53)=abb317(62)
      acc317(54)=abb317(63)
      acc317(55)=abb317(64)
      acc317(56)=abb317(65)
      acc317(57)=abb317(67)
      acc317(58)=abb317(70)
      acc317(59)=abb317(72)
      acc317(60)=abb317(73)
      acc317(61)=abb317(75)
      acc317(62)=abb317(76)
      acc317(63)=abb317(77)
      acc317(64)=abb317(78)
      acc317(65)=abb317(79)
      acc317(66)=abb317(81)
      acc317(67)=abb317(82)
      acc317(68)=abb317(83)
      acc317(69)=abb317(85)
      acc317(70)=abb317(86)
      acc317(71)=abb317(87)
      acc317(72)=abb317(91)
      acc317(73)=abb317(92)
      acc317(74)=abb317(102)
      acc317(75)=abb317(112)
      acc317(76)=abb317(113)
      acc317(77)=abb317(116)
      acc317(78)=abb317(128)
      acc317(79)=abb317(135)
      acc317(80)=abb317(138)
      acc317(81)=abb317(151)
      acc317(82)=abb317(154)
      acc317(83)=abb317(157)
      acc317(84)=abb317(163)
      acc317(85)=abb317(164)
      acc317(86)=abb317(169)
      acc317(87)=abb317(175)
      acc317(88)=abb317(178)
      acc317(89)=abb317(180)
      acc317(90)=abb317(183)
      acc317(91)=abb317(249)
      acc317(92)=abb317(250)
      acc317(93)=-Qspk1+Qspk4+Qspk3
      acc317(94)=acc317(16)*acc317(93)
      acc317(95)=Qspvak4k3*acc317(88)
      acc317(96)=Qspvak2k1*acc317(51)
      acc317(97)=Qspvak4k1*acc317(1)
      acc317(94)=acc317(97)+acc317(96)+acc317(95)+acc317(28)+acc317(94)
      acc317(94)=Qspval5l6*acc317(94)
      acc317(95)=acc317(67)*acc317(93)
      acc317(96)=Qspvak4k3*acc317(76)
      acc317(97)=Qspvak2k1*acc317(37)
      acc317(98)=Qspvak4k1*acc317(87)
      acc317(95)=acc317(98)+acc317(97)+acc317(96)+acc317(22)+acc317(95)
      acc317(95)=Qspk2*acc317(95)
      acc317(96)=-Qspk7-Qspl5
      acc317(96)=acc317(92)*acc317(96)
      acc317(97)=acc317(17)*acc317(93)
      acc317(98)=Qspvak2l5*acc317(14)
      acc317(99)=Qspvak2k3*acc317(26)
      acc317(100)=Qspvak4l6*acc317(65)
      acc317(101)=Qspl6*acc317(61)
      acc317(102)=Qspvak2k7*acc317(43)
      acc317(103)=Qspvak7l6*acc317(80)
      acc317(104)=Qspvak2l6*acc317(41)
      acc317(105)=QspQ*acc317(66)
      acc317(106)=Qspvak4k3*acc317(21)
      acc317(107)=Qspvak2k1*acc317(31)
      acc317(108)=Qspvak4k1*acc317(24)
      acc317(94)=acc317(95)+acc317(94)+acc317(108)+acc317(107)+acc317(106)+acc3&
      &17(105)+acc317(104)+acc317(103)+acc317(102)+acc317(101)+acc317(100)+acc3&
      &17(99)+acc317(9)+acc317(98)+acc317(97)+acc317(96)
      acc317(94)=Qspe7*acc317(94)
      acc317(95)=Qspl6*acc317(34)
      acc317(96)=Qspvak2e7*acc317(44)
      acc317(97)=Qspvae7l6*acc317(40)
      acc317(98)=Qspvak2k7*acc317(39)
      acc317(99)=Qspvak7l6*acc317(45)
      acc317(100)=Qspk7*acc317(32)
      acc317(101)=Qspvak2l6*acc317(52)
      acc317(102)=QspQ*acc317(38)
      acc317(95)=acc317(102)+acc317(101)+acc317(100)+acc317(99)+acc317(98)+acc3&
      &17(97)+acc317(96)+acc317(23)+acc317(95)
      acc317(95)=Qspvak2k1*acc317(95)
      acc317(96)=Qspl6*acc317(70)
      acc317(97)=Qspvak2e7*acc317(4)
      acc317(98)=Qspvae7l6*acc317(2)
      acc317(99)=Qspvak2k7*acc317(73)
      acc317(100)=Qspvak7l6*acc317(7)
      acc317(101)=Qspk7*acc317(59)
      acc317(102)=Qspvak2l6*acc317(8)
      acc317(103)=QspQ*acc317(48)
      acc317(96)=acc317(103)+acc317(102)+acc317(101)+acc317(100)+acc317(99)+acc&
      &317(98)+acc317(97)+acc317(33)+acc317(96)
      acc317(96)=Qspvak4k1*acc317(96)
      acc317(97)=acc317(58)*acc317(93)
      acc317(98)=Qspvak2k3*acc317(64)
      acc317(99)=Qspvak4l6*acc317(71)
      acc317(100)=Qspvak2l6*acc317(68)
      acc317(101)=QspQ*acc317(74)
      acc317(102)=Qspvak4k3*acc317(49)
      acc317(103)=Qspvak2k1*acc317(35)
      acc317(104)=Qspvak4k1*acc317(77)
      acc317(97)=acc317(104)+acc317(103)+acc317(102)+acc317(101)+acc317(100)+ac&
      &c317(99)+acc317(12)+acc317(98)+acc317(97)
      acc317(97)=Qspk2*acc317(97)
      acc317(98)=Qspvak2e7*acc317(69)
      acc317(99)=Qspvae7l6*acc317(63)
      acc317(100)=Qspvak2k7*acc317(53)
      acc317(101)=Qspvak7l6*acc317(90)
      acc317(102)=Qspk7*acc317(84)
      acc317(103)=Qspvak2l6*acc317(29)
      acc317(104)=QspQ*acc317(47)
      acc317(98)=-acc317(101)+acc317(100)+acc317(98)+acc317(99)-acc317(102)-acc&
      &317(103)+acc317(104)+acc317(30)
      acc317(98)=-acc317(98)*acc317(93)
      acc317(99)=Qspvak2e7*acc317(85)
      acc317(100)=Qspvae7l6*acc317(83)
      acc317(101)=Qspvak2k7*acc317(72)
      acc317(102)=Qspvak7l6*acc317(86)
      acc317(103)=Qspk7*acc317(81)
      acc317(104)=Qspvak2l6*acc317(55)
      acc317(105)=QspQ*acc317(46)
      acc317(99)=acc317(105)+acc317(104)+acc317(103)+acc317(102)+acc317(101)+ac&
      &c317(100)+acc317(42)+acc317(99)
      acc317(99)=Qspvak4k3*acc317(99)
      acc317(93)=-acc317(25)*acc317(93)
      acc317(100)=QspQ*acc317(5)
      acc317(101)=Qspvak4k3*acc317(75)
      acc317(102)=Qspvak2k1*acc317(50)
      acc317(103)=Qspvak4k1*acc317(3)
      acc317(93)=acc317(103)+acc317(102)+acc317(101)+acc317(6)+acc317(100)+acc3&
      &17(93)
      acc317(93)=Qspval5l6*acc317(93)
      acc317(100)=Qspvak2k3*acc317(91)
      acc317(101)=Qspvak4l6*acc317(82)
      acc317(102)=Qspvak2l6*acc317(57)
      acc317(100)=acc317(102)+acc317(101)+acc317(56)+acc317(100)
      acc317(100)=QspQ*acc317(100)
      acc317(101)=Qspvak2k3*acc317(60)
      acc317(102)=Qspvak4l6*acc317(79)
      acc317(101)=acc317(101)-acc317(102)
      acc317(102)=acc317(20)-acc317(101)
      acc317(102)=Qspl6*acc317(102)
      acc317(101)=acc317(89)-acc317(101)
      acc317(101)=Qspk7*acc317(101)
      acc317(103)=Qspl5*acc317(19)
      acc317(104)=Qspvak2l5*acc317(13)
      acc317(105)=Qspvak2k3*acc317(15)
      acc317(106)=Qspvak4l6*acc317(78)
      acc317(107)=Qspvak2e7*acc317(11)
      acc317(108)=Qspvae7l6*acc317(36)
      acc317(109)=Qspvak2k7*acc317(18)
      acc317(110)=Qspvak7l6*acc317(62)
      acc317(111)=-Qspk7-Qspl6
      acc317(111)=acc317(54)*acc317(111)
      acc317(111)=acc317(27)+acc317(111)
      acc317(111)=Qspvak2l6*acc317(111)
      brack=acc317(10)+acc317(93)+acc317(94)+acc317(95)+acc317(96)+acc317(97)+a&
      &cc317(98)+acc317(99)+acc317(100)+acc317(101)+acc317(102)+acc317(103)+acc&
      &317(104)+acc317(105)+acc317(106)+acc317(107)+acc317(108)+acc317(109)+acc&
      &317(110)+acc317(111)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram317_sign, shift => diagram317_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd317h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d317
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d317 = 0.0_ki
      d317 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d317, ki), aimag(d317), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd317h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d317
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d317 = 0.0_ki
      d317 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d317, ki), aimag(d317), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d317h2l1
