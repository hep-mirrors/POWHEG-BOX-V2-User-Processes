module     p9_csbar_epnebbbarg_d83h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d83h0l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd83h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc83(122)
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak2e7
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      QspQ = dotproduct(Q,Q)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk7 = dotproduct(Q,k7)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      acc83(1)=abb83(6)
      acc83(2)=abb83(7)
      acc83(3)=abb83(8)
      acc83(4)=abb83(9)
      acc83(5)=abb83(10)
      acc83(6)=abb83(11)
      acc83(7)=abb83(12)
      acc83(8)=abb83(13)
      acc83(9)=abb83(14)
      acc83(10)=abb83(15)
      acc83(11)=abb83(16)
      acc83(12)=abb83(17)
      acc83(13)=abb83(18)
      acc83(14)=abb83(19)
      acc83(15)=abb83(20)
      acc83(16)=abb83(21)
      acc83(17)=abb83(22)
      acc83(18)=abb83(23)
      acc83(19)=abb83(24)
      acc83(20)=abb83(25)
      acc83(21)=abb83(26)
      acc83(22)=abb83(27)
      acc83(23)=abb83(28)
      acc83(24)=abb83(29)
      acc83(25)=abb83(30)
      acc83(26)=abb83(31)
      acc83(27)=abb83(32)
      acc83(28)=abb83(33)
      acc83(29)=abb83(34)
      acc83(30)=abb83(36)
      acc83(31)=abb83(37)
      acc83(32)=abb83(38)
      acc83(33)=abb83(39)
      acc83(34)=abb83(40)
      acc83(35)=abb83(41)
      acc83(36)=abb83(42)
      acc83(37)=abb83(43)
      acc83(38)=abb83(44)
      acc83(39)=abb83(46)
      acc83(40)=abb83(47)
      acc83(41)=abb83(48)
      acc83(42)=abb83(49)
      acc83(43)=abb83(50)
      acc83(44)=abb83(51)
      acc83(45)=abb83(52)
      acc83(46)=abb83(54)
      acc83(47)=abb83(55)
      acc83(48)=abb83(56)
      acc83(49)=abb83(57)
      acc83(50)=abb83(58)
      acc83(51)=abb83(59)
      acc83(52)=abb83(61)
      acc83(53)=abb83(62)
      acc83(54)=abb83(63)
      acc83(55)=abb83(64)
      acc83(56)=abb83(65)
      acc83(57)=abb83(66)
      acc83(58)=abb83(67)
      acc83(59)=abb83(68)
      acc83(60)=abb83(69)
      acc83(61)=abb83(70)
      acc83(62)=abb83(71)
      acc83(63)=abb83(72)
      acc83(64)=abb83(73)
      acc83(65)=abb83(74)
      acc83(66)=abb83(75)
      acc83(67)=abb83(76)
      acc83(68)=abb83(77)
      acc83(69)=abb83(78)
      acc83(70)=abb83(79)
      acc83(71)=abb83(80)
      acc83(72)=abb83(81)
      acc83(73)=abb83(82)
      acc83(74)=abb83(83)
      acc83(75)=abb83(84)
      acc83(76)=abb83(86)
      acc83(77)=abb83(87)
      acc83(78)=abb83(88)
      acc83(79)=abb83(91)
      acc83(80)=abb83(92)
      acc83(81)=abb83(93)
      acc83(82)=abb83(94)
      acc83(83)=abb83(96)
      acc83(84)=abb83(97)
      acc83(85)=abb83(98)
      acc83(86)=abb83(99)
      acc83(87)=abb83(100)
      acc83(88)=abb83(101)
      acc83(89)=abb83(102)
      acc83(90)=abb83(103)
      acc83(91)=abb83(104)
      acc83(92)=abb83(105)
      acc83(93)=abb83(106)
      acc83(94)=abb83(107)
      acc83(95)=abb83(108)
      acc83(96)=abb83(109)
      acc83(97)=abb83(111)
      acc83(98)=abb83(112)
      acc83(99)=abb83(113)
      acc83(100)=abb83(114)
      acc83(101)=abb83(115)
      acc83(102)=abb83(116)
      acc83(103)=abb83(117)
      acc83(104)=abb83(118)
      acc83(105)=abb83(119)
      acc83(106)=abb83(120)
      acc83(107)=abb83(121)
      acc83(108)=Qspval5k2*acc83(81)
      acc83(109)=Qspval6k2*acc83(53)
      acc83(108)=acc83(109)+acc83(108)
      acc83(108)=Qspvak2k1*acc83(108)
      acc83(109)=acc83(56)*Qspvak2k4
      acc83(110)=Qspvak2k7*acc83(1)
      acc83(111)=Qspvak3k1*acc83(100)
      acc83(112)=Qspvak2k3*acc83(3)
      acc83(113)=Qspvak7k1*acc83(41)
      acc83(114)=Qspval5k1*acc83(77)
      acc83(115)=Qspval6k1*acc83(94)
      acc83(116)=Qspvak4k1*acc83(107)
      acc83(117)=QspQ*acc83(82)
      acc83(108)=acc83(117)+acc83(116)+acc83(115)+acc83(114)+acc83(113)+acc83(1&
      &12)+acc83(111)+acc83(110)+acc83(5)+acc83(109)+acc83(108)
      acc83(108)=Qspvak4k3*acc83(108)
      acc83(109)=Qspvak2k3*acc83(4)
      acc83(109)=acc83(109)-acc83(24)
      acc83(110)=Qspval5k1*acc83(71)
      acc83(111)=Qspval6k1*acc83(79)
      acc83(112)=-Qspvak4k1*acc83(98)
      acc83(110)=acc83(112)+acc83(111)+acc83(110)-acc83(109)
      acc83(110)=Qspk7*acc83(110)
      acc83(111)=Qspvak2k7*acc83(34)
      acc83(112)=Qspvak2k3*acc83(7)
      acc83(113)=Qspvak7k1*acc83(90)
      acc83(114)=Qspvak4k1*acc83(14)
      acc83(111)=acc83(114)+acc83(113)+acc83(112)+acc83(54)+acc83(111)
      acc83(111)=Qspval5k2*acc83(111)
      acc83(112)=Qspvak2k7*acc83(15)
      acc83(113)=Qspvak2k3*acc83(36)
      acc83(114)=Qspvak7k1*acc83(72)
      acc83(115)=Qspvak4k1*acc83(9)
      acc83(112)=acc83(115)+acc83(114)+acc83(113)+acc83(55)+acc83(112)
      acc83(112)=Qspval6k2*acc83(112)
      acc83(113)=Qspvak2k3*acc83(56)
      acc83(114)=Qspval5k1*acc83(65)
      acc83(115)=Qspval6k1*acc83(76)
      acc83(116)=Qspvak4k1*acc83(100)
      acc83(113)=acc83(116)+acc83(115)+acc83(114)+acc83(23)+acc83(113)
      acc83(113)=QspQ*acc83(113)
      acc83(114)=Qspk4+Qspk3
      acc83(109)=-acc83(109)*acc83(114)
      acc83(115)=Qspvak2k7*acc83(10)
      acc83(116)=Qspk2*acc83(35)
      acc83(117)=Qspvak2k1*acc83(27)
      acc83(118)=Qspvak2k3*acc83(31)
      acc83(119)=Qspvak7k1*acc83(37)
      acc83(120)=acc83(71)*acc83(114)
      acc83(120)=acc83(26)+acc83(120)
      acc83(120)=Qspval5k1*acc83(120)
      acc83(121)=acc83(79)*acc83(114)
      acc83(121)=acc83(75)+acc83(121)
      acc83(121)=Qspval6k1*acc83(121)
      acc83(122)=-acc83(98)*acc83(114)
      acc83(122)=acc83(30)+acc83(122)
      acc83(122)=Qspvak4k1*acc83(122)
      acc83(108)=acc83(108)+acc83(113)+acc83(112)+acc83(111)+acc83(110)+acc83(1&
      &22)+acc83(121)+acc83(120)+acc83(119)+acc83(118)+acc83(117)+acc83(116)+ac&
      &c83(8)+acc83(115)+acc83(109)
      acc83(108)=Qspe7*acc83(108)
      acc83(109)=Qspvae7k1*acc83(89)
      acc83(110)=Qspvak2e7*acc83(84)
      acc83(111)=Qspvak4k1*acc83(68)
      acc83(109)=acc83(111)+acc83(110)+acc83(85)+acc83(109)
      acc83(109)=Qspval5k2*acc83(109)
      acc83(110)=Qspvae7k1*acc83(70)
      acc83(111)=Qspvak2e7*acc83(63)
      acc83(112)=Qspvak4k1*acc83(106)
      acc83(110)=acc83(112)+acc83(111)+acc83(59)+acc83(110)
      acc83(110)=Qspval6k2*acc83(110)
      acc83(111)=Qspk7+Qspk2
      acc83(111)=acc83(25)*acc83(111)
      acc83(112)=Qspvak2k1*acc83(29)
      acc83(113)=Qspvak7k1*acc83(47)
      acc83(115)=Qspval5k1*acc83(16)
      acc83(116)=Qspval6k1*acc83(44)
      acc83(117)=Qspvak2e7*acc83(2)
      acc83(118)=Qspvak4k1*acc83(45)
      acc83(119)=QspQ*acc83(32)
      acc83(109)=acc83(119)+acc83(110)+acc83(109)+acc83(118)+acc83(117)+acc83(1&
      &16)+acc83(115)+acc83(113)+acc83(112)+acc83(6)+acc83(111)
      acc83(109)=QspQ*acc83(109)
      acc83(110)=Qspvae7k1*acc83(96)
      acc83(111)=Qspvak7k1*acc83(95)
      acc83(112)=Qspvak2e7*acc83(62)
      acc83(110)=acc83(112)+acc83(111)+acc83(43)+acc83(110)
      acc83(110)=Qspval5k2*acc83(110)
      acc83(111)=Qspvae7k1*acc83(92)
      acc83(112)=Qspvak7k1*acc83(58)
      acc83(113)=Qspvak2e7*acc83(91)
      acc83(111)=acc83(113)+acc83(112)+acc83(51)+acc83(111)
      acc83(111)=Qspval6k2*acc83(111)
      acc83(112)=Qspvak3k1*acc83(86)
      acc83(113)=Qspk2*acc83(12)
      acc83(115)=Qspvak2k1*acc83(22)
      acc83(116)=Qspval5k1*acc83(17)
      acc83(117)=Qspval6k1*acc83(93)
      acc83(118)=Qspvak2e7*acc83(39)
      acc83(119)=Qspvak4k1*acc83(104)
      acc83(120)=QspQ*acc83(11)
      acc83(110)=acc83(120)+acc83(111)+acc83(110)+acc83(119)+acc83(118)+acc83(1&
      &17)+acc83(116)+acc83(115)+acc83(113)+acc83(18)+acc83(112)
      acc83(110)=Qspvak4k3*acc83(110)
      acc83(111)=Qspk2*acc83(38)
      acc83(112)=Qspvak2k1*acc83(33)
      acc83(113)=Qspvak7k1*acc83(49)
      acc83(115)=Qspval5k1*acc83(46)
      acc83(116)=Qspval6k1*acc83(48)
      acc83(117)=Qspvak2e7*acc83(13)
      acc83(118)=Qspvak4k1*acc83(97)
      acc83(111)=acc83(118)+acc83(117)+acc83(116)+acc83(115)+acc83(113)+acc83(1&
      &12)+acc83(21)+acc83(111)
      acc83(111)=Qspk7*acc83(111)
      acc83(112)=Qspvae7k1*acc83(66)
      acc83(113)=Qspvak2e7*acc83(88)
      acc83(115)=Qspvak4k1*acc83(103)
      acc83(112)=acc83(115)+acc83(113)+acc83(83)+acc83(112)
      acc83(112)=Qspk7*acc83(112)
      acc83(113)=Qspvak3k1*acc83(69)
      acc83(115)=Qspvak2e7*acc83(87)
      acc83(116)=Qspvak4k1*acc83(101)
      acc83(112)=acc83(112)+acc83(116)+acc83(115)+acc83(50)+acc83(113)
      acc83(112)=Qspval5k2*acc83(112)
      acc83(113)=Qspvae7k1*acc83(67)
      acc83(115)=Qspvak2e7*acc83(64)
      acc83(116)=Qspvak4k1*acc83(105)
      acc83(113)=acc83(116)+acc83(115)+acc83(57)+acc83(113)
      acc83(113)=Qspk7*acc83(113)
      acc83(115)=Qspvak3k1*acc83(60)
      acc83(116)=Qspvak2e7*acc83(61)
      acc83(117)=Qspvak4k1*acc83(102)
      acc83(113)=acc83(113)+acc83(117)+acc83(116)+acc83(52)+acc83(115)
      acc83(113)=Qspval6k2*acc83(113)
      acc83(115)=Qspvak4k1*acc83(99)
      acc83(115)=acc83(115)-acc83(19)
      acc83(115)=acc83(114)*acc83(115)
      acc83(116)=Qspk2*acc83(28)
      acc83(117)=Qspvak2k1*acc83(20)
      acc83(118)=-acc83(78)*acc83(114)
      acc83(118)=acc83(73)+acc83(118)
      acc83(118)=Qspval5k1*acc83(118)
      acc83(119)=-acc83(80)*acc83(114)
      acc83(119)=acc83(74)+acc83(119)
      acc83(119)=Qspval6k1*acc83(119)
      acc83(114)=acc83(42)*acc83(114)
      acc83(114)=acc83(40)+acc83(114)
      acc83(114)=Qspvak2e7*acc83(114)
      brack=acc83(108)+acc83(109)+acc83(110)+acc83(111)+acc83(112)+acc83(113)+a&
      &cc83(114)+acc83(115)+acc83(116)+acc83(117)+acc83(118)+acc83(119)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram83_sign, shift => diagram83_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd83h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d83
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d83 = 0.0_ki
      d83 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d83, ki), aimag(d83), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd83h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d83
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d83 = 0.0_ki
      d83 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d83, ki), aimag(d83), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d83h0l1
