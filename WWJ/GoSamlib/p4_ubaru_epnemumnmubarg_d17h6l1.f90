module     p4_ubaru_epnemumnmubarg_d17h6l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity6d17h6l1.f90
   ! generator: buildfortran.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd17h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc17(119)
      complex(ki) :: Qspk7
      complex(ki) :: Qspk6
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak5k7
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak5k6
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak6k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2k6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7k2
      Qspk7 = dotproduct(Q,k7)
      Qspk6 = dotproduct(Q,k6)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak5k7 = dotproduct(Q,spvak5k7)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspk5 = dotproduct(Q,k5)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak6k1 = dotproduct(Q,spvak6k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2k6 = dotproduct(Q,spvak2k6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc17(1)=abb17(6)
      acc17(2)=abb17(7)
      acc17(3)=abb17(8)
      acc17(4)=abb17(9)
      acc17(5)=abb17(10)
      acc17(6)=abb17(11)
      acc17(7)=abb17(12)
      acc17(8)=abb17(13)
      acc17(9)=abb17(14)
      acc17(10)=abb17(15)
      acc17(11)=abb17(16)
      acc17(12)=abb17(17)
      acc17(13)=abb17(18)
      acc17(14)=abb17(19)
      acc17(15)=abb17(20)
      acc17(16)=abb17(22)
      acc17(17)=abb17(23)
      acc17(18)=abb17(24)
      acc17(19)=abb17(25)
      acc17(20)=abb17(26)
      acc17(21)=abb17(27)
      acc17(22)=abb17(28)
      acc17(23)=abb17(29)
      acc17(24)=abb17(30)
      acc17(25)=abb17(31)
      acc17(26)=abb17(32)
      acc17(27)=abb17(33)
      acc17(28)=abb17(34)
      acc17(29)=abb17(35)
      acc17(30)=abb17(36)
      acc17(31)=abb17(37)
      acc17(32)=abb17(38)
      acc17(33)=abb17(39)
      acc17(34)=abb17(40)
      acc17(35)=abb17(41)
      acc17(36)=abb17(42)
      acc17(37)=abb17(43)
      acc17(38)=abb17(44)
      acc17(39)=abb17(45)
      acc17(40)=abb17(46)
      acc17(41)=abb17(47)
      acc17(42)=abb17(48)
      acc17(43)=abb17(49)
      acc17(44)=abb17(50)
      acc17(45)=abb17(51)
      acc17(46)=abb17(52)
      acc17(47)=abb17(53)
      acc17(48)=abb17(54)
      acc17(49)=abb17(55)
      acc17(50)=abb17(56)
      acc17(51)=abb17(57)
      acc17(52)=abb17(58)
      acc17(53)=abb17(59)
      acc17(54)=abb17(60)
      acc17(55)=abb17(61)
      acc17(56)=abb17(62)
      acc17(57)=abb17(63)
      acc17(58)=abb17(64)
      acc17(59)=abb17(65)
      acc17(60)=abb17(66)
      acc17(61)=abb17(67)
      acc17(62)=abb17(68)
      acc17(63)=abb17(69)
      acc17(64)=abb17(70)
      acc17(65)=abb17(71)
      acc17(66)=abb17(72)
      acc17(67)=abb17(73)
      acc17(68)=abb17(75)
      acc17(69)=abb17(76)
      acc17(70)=abb17(77)
      acc17(71)=abb17(78)
      acc17(72)=abb17(79)
      acc17(73)=abb17(80)
      acc17(74)=abb17(81)
      acc17(75)=abb17(82)
      acc17(76)=abb17(84)
      acc17(77)=abb17(85)
      acc17(78)=abb17(86)
      acc17(79)=abb17(87)
      acc17(80)=abb17(88)
      acc17(81)=abb17(89)
      acc17(82)=abb17(91)
      acc17(83)=abb17(92)
      acc17(84)=abb17(93)
      acc17(85)=abb17(97)
      acc17(86)=abb17(98)
      acc17(87)=abb17(99)
      acc17(88)=abb17(100)
      acc17(89)=abb17(101)
      acc17(90)=abb17(102)
      acc17(91)=abb17(103)
      acc17(92)=abb17(104)
      acc17(93)=abb17(105)
      acc17(94)=abb17(106)
      acc17(95)=abb17(108)
      acc17(96)=abb17(109)
      acc17(97)=abb17(111)
      acc17(98)=abb17(115)
      acc17(99)=abb17(116)
      acc17(100)=abb17(118)
      acc17(101)=Qspk7+Qspk6
      acc17(102)=-acc17(29)*acc17(101)
      acc17(103)=Qspvak5k2*acc17(27)
      acc17(104)=Qspvak4k7*acc17(57)
      acc17(105)=Qspvak5k7*acc17(72)
      acc17(106)=Qspvak4k6*acc17(4)
      acc17(107)=Qspvak5k1*acc17(34)
      acc17(108)=Qspk5*acc17(51)
      acc17(109)=Qspvak5k3*acc17(13)
      acc17(110)=Qspvak7k3*acc17(60)
      acc17(111)=Qspvak4k3*acc17(48)
      acc17(112)=Qspvak4k3*acc17(3)
      acc17(112)=acc17(36)+acc17(112)
      acc17(112)=Qspvak5k6*acc17(112)
      acc17(113)=QspQ*acc17(17)
      acc17(102)=acc17(113)+acc17(112)+acc17(111)+acc17(110)+acc17(109)+acc17(1&
      &08)+acc17(107)+acc17(106)+acc17(105)+acc17(104)+acc17(6)+acc17(103)+acc1&
      &7(102)
      acc17(102)=Qspvak2k1*acc17(102)
      acc17(103)=-Qspk1-Qspk2
      acc17(103)=acc17(83)*acc17(103)
      acc17(104)=acc17(86)*Qspvak6k1
      acc17(105)=-acc17(37)*Qspvak2k5
      acc17(106)=-Qspvak2k6*acc17(80)
      acc17(107)=-Qspvak2k7*acc17(58)
      acc17(108)=Qspvak5k1*acc17(61)
      acc17(109)=Qspvak2k3*acc17(18)
      acc17(110)=Qspvak4k1*acc17(44)
      acc17(111)=Qspvak7k1*acc17(85)
      acc17(103)=acc17(111)+acc17(110)+acc17(109)+acc17(108)+acc17(107)+acc17(1&
      &06)+acc17(105)+acc17(104)+acc17(68)+acc17(103)
      acc17(103)=Qspvak5k6*acc17(103)
      acc17(104)=Qspvak2k6*acc17(47)
      acc17(105)=Qspvak2k7*acc17(94)
      acc17(106)=Qspvak5k1*acc17(88)
      acc17(107)=Qspvak7k1*acc17(98)
      acc17(104)=acc17(107)+acc17(106)+acc17(105)+acc17(95)+acc17(104)
      acc17(104)=Qspvak4k3*acc17(104)
      acc17(101)=-acc17(53)*acc17(101)
      acc17(105)=Qspvak2k6*acc17(24)
      acc17(106)=Qspvak2k7*acc17(42)
      acc17(107)=Qspvak4k7*acc17(91)
      acc17(108)=Qspvak5k7*acc17(74)
      acc17(109)=Qspk2*acc17(59)
      acc17(110)=Qspvak4k6*acc17(32)
      acc17(111)=Qspvak5k1*acc17(50)
      acc17(112)=Qspk1*acc17(62)
      acc17(113)=Qspk5*acc17(54)
      acc17(114)=Qspvak2k3*acc17(10)
      acc17(115)=Qspvak5k3*acc17(63)
      acc17(116)=Qspvak7k3*acc17(64)
      acc17(117)=Qspvak4k1*acc17(46)
      acc17(118)=Qspvak7k1*acc17(5)
      acc17(119)=Qspvak5k6*acc17(81)
      acc17(119)=acc17(52)+acc17(119)
      acc17(119)=QspQ*acc17(119)
      acc17(101)=acc17(102)+acc17(119)+acc17(103)+acc17(104)+acc17(118)+acc17(1&
      &17)+acc17(116)+acc17(115)+acc17(114)+acc17(113)+acc17(112)+acc17(111)+ac&
      &c17(110)+acc17(109)+acc17(108)+acc17(107)+acc17(106)+acc17(31)+acc17(105&
      &)+acc17(101)
      acc17(101)=Qspvak7k2*acc17(101)
      acc17(102)=Qspvak5k2*acc17(38)
      acc17(103)=Qspvak4k7*acc17(78)
      acc17(104)=Qspvak5k7*acc17(75)
      acc17(105)=Qspk2*acc17(7)
      acc17(106)=Qspvak4k6*acc17(21)
      acc17(107)=Qspk1*acc17(14)
      acc17(108)=Qspk5*acc17(11)
      acc17(109)=Qspk6*acc17(12)
      acc17(110)=Qspvak2k3*acc17(28)
      acc17(111)=Qspvak5k3*acc17(41)
      acc17(112)=Qspvak7k3*acc17(39)
      acc17(113)=Qspvak4k1*acc17(45)
      acc17(114)=-Qspvak7k1*acc17(69)
      acc17(115)=Qspk7*acc17(43)
      acc17(116)=Qspvak4k3*acc17(93)
      acc17(117)=Qspvak4k3*acc17(9)
      acc17(117)=acc17(76)+acc17(117)
      acc17(117)=Qspvak5k6*acc17(117)
      acc17(118)=QspQ*acc17(15)
      acc17(102)=acc17(118)+acc17(117)+acc17(116)+acc17(115)+acc17(114)+acc17(1&
      &13)+acc17(112)+acc17(111)+acc17(110)+acc17(109)+acc17(108)+acc17(107)+ac&
      &c17(106)+acc17(105)+acc17(104)+acc17(103)+acc17(22)+acc17(102)
      acc17(102)=QspQ*acc17(102)
      acc17(103)=Qspk2*acc17(33)
      acc17(104)=Qspvak4k6*acc17(92)
      acc17(105)=Qspk1*acc17(40)
      acc17(106)=Qspvak2k3*acc17(89)
      acc17(107)=Qspvak5k3*acc17(90)
      acc17(108)=Qspvak4k1*acc17(100)
      acc17(109)=Qspvak7k1*acc17(70)
      acc17(103)=acc17(109)+acc17(108)+acc17(107)+acc17(106)+acc17(105)+acc17(1&
      &04)+acc17(23)+acc17(103)
      acc17(103)=Qspk7*acc17(103)
      acc17(104)=Qspk1*acc17(77)
      acc17(105)=Qspvak2k3*acc17(8)
      acc17(106)=Qspvak7k3*acc17(79)
      acc17(107)=Qspvak4k1*acc17(2)
      acc17(108)=Qspvak7k1*acc17(84)
      acc17(109)=Qspvak4k3*acc17(82)
      acc17(104)=acc17(109)+acc17(108)+acc17(107)+acc17(106)+acc17(104)+acc17(1&
      &05)
      acc17(104)=Qspvak5k6*acc17(104)
      acc17(105)=Qspk6+Qspk5
      acc17(106)=acc17(71)*acc17(105)
      acc17(107)=Qspvak4k3*acc17(65)
      acc17(107)=acc17(107)+acc17(55)
      acc17(107)=Qspk7*acc17(107)
      acc17(108)=Qspvak5k3*acc17(56)
      acc17(109)=Qspvak7k3*acc17(16)
      acc17(110)=Qspvak5k6*acc17(19)
      acc17(111)=Qspvak4k3*acc17(66)
      acc17(111)=acc17(49)+acc17(111)
      acc17(111)=QspQ*acc17(111)
      acc17(106)=acc17(111)+acc17(110)+acc17(109)+acc17(108)+acc17(30)+acc17(10&
      &7)+acc17(106)
      acc17(106)=Qspvak2k1*acc17(106)
      acc17(107)=Qspvak5k1*acc17(1)
      acc17(108)=Qspvak7k1*acc17(97)
      acc17(109)=Qspk7*acc17(96)
      acc17(107)=acc17(109)+acc17(108)+acc17(26)+acc17(107)
      acc17(107)=Qspvak4k3*acc17(107)
      acc17(108)=Qspk1*acc17(35)
      acc17(109)=Qspvak2k3*acc17(20)
      acc17(110)=Qspvak5k3*acc17(87)
      acc17(111)=Qspvak7k3*acc17(25)
      acc17(112)=-Qspvak4k1*acc17(99)*acc17(105)
      acc17(105)=acc17(73)*acc17(105)
      acc17(105)=acc17(67)+acc17(105)
      acc17(105)=Qspvak7k1*acc17(105)
      brack=acc17(101)+acc17(102)+acc17(103)+acc17(104)+acc17(105)+acc17(106)+a&
      &cc17(107)+acc17(108)+acc17(109)+acc17(110)+acc17(111)+acc17(112)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd17h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d17
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3+k7+k6+k5+k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d17 = 0.0_ki
      d17 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d17, ki), aimag(d17), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d17h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd17h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d17
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3+k7+k6+k5+k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d17 = 0.0_ki
      d17 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d17, ki), aimag(d17), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p4_ubaru_epnemumnmubarg_d17h6l1
