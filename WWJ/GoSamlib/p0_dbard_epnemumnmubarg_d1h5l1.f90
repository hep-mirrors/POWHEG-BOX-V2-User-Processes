module     p0_dbard_epnemumnmubarg_d1h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity5d1h5l1.f90
   ! generator: buildfortran.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd1h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc1(111)
      complex(ki) :: Qspk7
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak5k7
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak7k6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspvak5k6
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak7k2
      Qspk7 = dotproduct(Q,k7)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak5k7 = dotproduct(Q,spvak5k7)
      Qspk4 = dotproduct(Q,k4)
      Qspvak7k6 = dotproduct(Q,spvak7k6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      QspQ = dotproduct(Q,Q)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc1(1)=abb1(6)
      acc1(2)=abb1(7)
      acc1(3)=abb1(8)
      acc1(4)=abb1(9)
      acc1(5)=abb1(10)
      acc1(6)=abb1(11)
      acc1(7)=abb1(12)
      acc1(8)=abb1(13)
      acc1(9)=abb1(14)
      acc1(10)=abb1(16)
      acc1(11)=abb1(17)
      acc1(12)=abb1(18)
      acc1(13)=abb1(19)
      acc1(14)=abb1(20)
      acc1(15)=abb1(21)
      acc1(16)=abb1(22)
      acc1(17)=abb1(23)
      acc1(18)=abb1(24)
      acc1(19)=abb1(25)
      acc1(20)=abb1(26)
      acc1(21)=abb1(27)
      acc1(22)=abb1(28)
      acc1(23)=abb1(29)
      acc1(24)=abb1(30)
      acc1(25)=abb1(31)
      acc1(26)=abb1(32)
      acc1(27)=abb1(33)
      acc1(28)=abb1(34)
      acc1(29)=abb1(35)
      acc1(30)=abb1(36)
      acc1(31)=abb1(37)
      acc1(32)=abb1(38)
      acc1(33)=abb1(39)
      acc1(34)=abb1(40)
      acc1(35)=abb1(41)
      acc1(36)=abb1(42)
      acc1(37)=abb1(43)
      acc1(38)=abb1(44)
      acc1(39)=abb1(45)
      acc1(40)=abb1(46)
      acc1(41)=abb1(47)
      acc1(42)=abb1(48)
      acc1(43)=abb1(49)
      acc1(44)=abb1(50)
      acc1(45)=abb1(51)
      acc1(46)=abb1(52)
      acc1(47)=abb1(53)
      acc1(48)=abb1(54)
      acc1(49)=abb1(55)
      acc1(50)=abb1(56)
      acc1(51)=abb1(57)
      acc1(52)=abb1(58)
      acc1(53)=abb1(59)
      acc1(54)=abb1(60)
      acc1(55)=abb1(61)
      acc1(56)=abb1(62)
      acc1(57)=abb1(63)
      acc1(58)=abb1(64)
      acc1(59)=abb1(65)
      acc1(60)=abb1(66)
      acc1(61)=abb1(67)
      acc1(62)=abb1(68)
      acc1(63)=abb1(69)
      acc1(64)=abb1(70)
      acc1(65)=abb1(71)
      acc1(66)=abb1(72)
      acc1(67)=abb1(73)
      acc1(68)=abb1(74)
      acc1(69)=abb1(75)
      acc1(70)=abb1(76)
      acc1(71)=abb1(77)
      acc1(72)=abb1(78)
      acc1(73)=abb1(79)
      acc1(74)=abb1(80)
      acc1(75)=abb1(81)
      acc1(76)=abb1(83)
      acc1(77)=abb1(85)
      acc1(78)=abb1(86)
      acc1(79)=abb1(87)
      acc1(80)=abb1(89)
      acc1(81)=abb1(90)
      acc1(82)=abb1(91)
      acc1(83)=abb1(93)
      acc1(84)=abb1(94)
      acc1(85)=abb1(96)
      acc1(86)=abb1(97)
      acc1(87)=abb1(98)
      acc1(88)=abb1(100)
      acc1(89)=abb1(101)
      acc1(90)=abb1(102)
      acc1(91)=abb1(107)
      acc1(92)=-Qspk7-Qspk3
      acc1(92)=acc1(25)*acc1(92)
      acc1(93)=acc1(75)*Qspvak4k1
      acc1(94)=Qspvak4k7*acc1(70)
      acc1(95)=Qspvak5k3*acc1(54)
      acc1(96)=Qspvak5k7*acc1(47)
      acc1(97)=Qspk4*acc1(26)
      acc1(98)=Qspvak7k6*acc1(44)
      acc1(99)=Qspvak4k2*acc1(40)
      acc1(100)=Qspvak4k6*acc1(24)
      acc1(101)=Qspvak5k6*acc1(52)
      acc1(102)=QspQ*acc1(11)
      acc1(103)=Qspvak5k6*acc1(3)
      acc1(103)=acc1(4)+acc1(103)
      acc1(103)=Qspvak4k3*acc1(103)
      acc1(92)=acc1(103)+acc1(102)+acc1(101)+acc1(100)+acc1(99)+acc1(98)+acc1(9&
      &7)+acc1(96)+acc1(95)+acc1(94)+acc1(93)+acc1(10)+acc1(92)
      acc1(92)=Qspvak1k2*acc1(92)
      acc1(93)=-Qspk2-Qspk1
      acc1(93)=acc1(31)*acc1(93)
      acc1(94)=acc1(84)*Qspvak3k2
      acc1(95)=acc1(43)*Qspvak1k4
      acc1(96)=Qspvak1k3*acc1(14)
      acc1(97)=-Qspvak1k7*acc1(45)
      acc1(98)=Qspvak1k6*acc1(2)
      acc1(99)=Qspvak4k2*acc1(86)
      acc1(100)=Qspvak5k2*acc1(67)
      acc1(101)=QspQ*acc1(36)
      acc1(93)=acc1(101)+acc1(100)+acc1(99)+acc1(98)+acc1(97)+acc1(96)+acc1(5)+&
      &acc1(94)+acc1(95)+acc1(93)
      acc1(93)=Qspvak4k3*acc1(93)
      acc1(94)=Qspvak1k3*acc1(1)
      acc1(95)=Qspvak1k7*acc1(89)
      acc1(96)=Qspvak4k2*acc1(76)
      acc1(94)=acc1(96)+acc1(95)+acc1(62)+acc1(94)
      acc1(94)=Qspvak5k6*acc1(94)
      acc1(95)=Qspvak5k6*acc1(71)
      acc1(96)=Qspvak4k3*acc1(82)
      acc1(95)=acc1(96)+acc1(55)+acc1(95)
      acc1(95)=Qspvak7k2*acc1(95)
      acc1(96)=Qspvak1k3*acc1(49)
      acc1(97)=-Qspvak1k7*acc1(88)
      acc1(98)=Qspvak4k7*acc1(6)
      acc1(99)=Qspvak5k3*acc1(15)
      acc1(100)=Qspvak5k7*acc1(8)
      acc1(101)=Qspk1*acc1(48)
      acc1(102)=Qspk3*acc1(32)
      acc1(103)=Qspk4*acc1(42)
      acc1(104)=Qspvak7k6*acc1(51)
      acc1(105)=Qspk2*acc1(46)
      acc1(106)=Qspvak1k6*acc1(37)
      acc1(107)=Qspvak4k2*acc1(68)
      acc1(108)=Qspvak4k6*acc1(50)
      acc1(109)=Qspvak5k2*acc1(28)
      acc1(110)=Qspk7*acc1(41)
      acc1(111)=QspQ*acc1(29)
      acc1(92)=acc1(95)+acc1(92)+acc1(93)+acc1(111)+acc1(94)+acc1(110)+acc1(109&
      &)+acc1(108)+acc1(107)+acc1(106)+acc1(105)+acc1(104)+acc1(103)+acc1(102)+&
      &acc1(101)+acc1(100)+acc1(99)+acc1(98)+acc1(97)+acc1(39)+acc1(96)
      acc1(92)=Qspvak7k2*acc1(92)
      acc1(93)=Qspvak4k7*acc1(57)
      acc1(94)=Qspvak5k3*acc1(16)
      acc1(95)=Qspvak5k7*acc1(56)
      acc1(96)=Qspk1*acc1(22)
      acc1(97)=Qspk3*acc1(19)
      acc1(98)=Qspk4*acc1(35)
      acc1(99)=Qspk2*acc1(20)
      acc1(100)=Qspvak1k6*acc1(63)
      acc1(101)=Qspvak4k2*acc1(33)
      acc1(102)=Qspvak4k6*acc1(79)
      acc1(103)=Qspvak5k2*acc1(73)
      acc1(104)=Qspk7*acc1(34)
      acc1(105)=Qspvak5k6*acc1(66)
      acc1(106)=QspQ*acc1(7)
      acc1(93)=acc1(106)+acc1(105)+acc1(104)+acc1(103)+acc1(102)+acc1(101)+acc1&
      &(100)+acc1(99)+acc1(98)+acc1(97)+acc1(96)+acc1(95)+acc1(94)+acc1(17)+acc&
      &1(93)
      acc1(93)=QspQ*acc1(93)
      acc1(94)=Qspvak7k6*acc1(80)
      acc1(95)=Qspk2*acc1(81)
      acc1(96)=Qspvak1k6*acc1(60)
      acc1(97)=Qspvak5k2*acc1(83)
      acc1(98)=Qspvak5k6*acc1(58)
      acc1(99)=QspQ*acc1(72)
      acc1(94)=acc1(99)+acc1(98)+acc1(97)+acc1(96)+acc1(94)+acc1(95)
      acc1(94)=Qspvak4k3*acc1(94)
      acc1(95)=Qspk4+Qspk3
      acc1(96)=-acc1(91)*acc1(95)
      acc1(97)=Qspvak5k6*acc1(53)
      acc1(97)=acc1(97)+acc1(87)
      acc1(97)=Qspk7*acc1(97)
      acc1(98)=Qspvak7k6*acc1(90)
      acc1(99)=Qspvak4k6*acc1(69)
      acc1(100)=Qspvak5k6*acc1(27)
      acc1(100)=acc1(9)+acc1(100)
      acc1(100)=QspQ*acc1(100)
      acc1(101)=Qspvak4k3*acc1(13)
      acc1(96)=acc1(101)+acc1(100)+acc1(99)+acc1(98)+acc1(12)+acc1(97)+acc1(96)
      acc1(96)=Qspvak1k2*acc1(96)
      acc1(97)=Qspk1*acc1(23)
      acc1(98)=Qspk2*acc1(21)
      acc1(99)=Qspvak1k6*acc1(64)
      acc1(100)=Qspvak4k6*acc1(78)
      acc1(101)=Qspvak5k2*acc1(74)
      acc1(97)=acc1(101)+acc1(100)+acc1(99)+acc1(97)+acc1(98)
      acc1(97)=Qspk7*acc1(97)
      acc1(98)=-Qspvak4k2*acc1(85)
      acc1(99)=Qspk7*acc1(65)
      acc1(98)=acc1(99)+acc1(59)+acc1(98)
      acc1(98)=Qspvak5k6*acc1(98)
      acc1(99)=Qspvak7k6*acc1(38)
      acc1(100)=Qspk2*acc1(18)
      acc1(101)=Qspvak1k6*acc1(61)
      acc1(102)=Qspvak4k6*acc1(77)
      acc1(95)=Qspvak5k2*acc1(30)*acc1(95)
      brack=acc1(92)+acc1(93)+acc1(94)+acc1(95)+acc1(96)+acc1(97)+acc1(98)+acc1&
      &(99)+acc1(100)+acc1(101)+acc1(102)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd1h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d1
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3+k7+k6+k5+k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d1 = 0.0_ki
      d1 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d1, ki), aimag(d1), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d1h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd1h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d1
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3+k7+k6+k5+k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d1 = 0.0_ki
      d1 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d1, ki), aimag(d1), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d1h5l1
