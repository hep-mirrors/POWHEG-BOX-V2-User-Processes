module     p0_dbard_epnemumnmubarg_d17h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity5d17h5l1.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd17h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc17(111)
      complex(ki) :: Qspk7
      complex(ki) :: Qspk6
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak5k7
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak6k2
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k2
      Qspk7 = dotproduct(Q,k7)
      Qspk6 = dotproduct(Q,k6)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak5k7 = dotproduct(Q,spvak5k7)
      Qspk5 = dotproduct(Q,k5)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak6k2 = dotproduct(Q,spvak6k2)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
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
      acc17(10)=abb17(16)
      acc17(11)=abb17(17)
      acc17(12)=abb17(18)
      acc17(13)=abb17(19)
      acc17(14)=abb17(20)
      acc17(15)=abb17(21)
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
      acc17(66)=abb17(73)
      acc17(67)=abb17(74)
      acc17(68)=abb17(75)
      acc17(69)=abb17(76)
      acc17(70)=abb17(77)
      acc17(71)=abb17(78)
      acc17(72)=abb17(79)
      acc17(73)=abb17(80)
      acc17(74)=abb17(81)
      acc17(75)=abb17(82)
      acc17(76)=abb17(83)
      acc17(77)=abb17(84)
      acc17(78)=abb17(85)
      acc17(79)=abb17(86)
      acc17(80)=abb17(87)
      acc17(81)=abb17(88)
      acc17(82)=abb17(91)
      acc17(83)=abb17(92)
      acc17(84)=abb17(94)
      acc17(85)=abb17(95)
      acc17(86)=abb17(96)
      acc17(87)=abb17(100)
      acc17(88)=abb17(101)
      acc17(89)=abb17(102)
      acc17(90)=abb17(103)
      acc17(91)=abb17(104)
      acc17(92)=-Qspk7-Qspk6
      acc17(92)=acc17(25)*acc17(92)
      acc17(93)=acc17(49)*Qspvak5k1
      acc17(94)=Qspvak4k6*acc17(54)
      acc17(95)=Qspvak4k7*acc17(53)
      acc17(96)=Qspvak5k7*acc17(47)
      acc17(97)=Qspk5*acc17(26)
      acc17(98)=Qspvak7k3*acc17(44)
      acc17(99)=Qspvak5k2*acc17(40)
      acc17(100)=Qspvak5k3*acc17(24)
      acc17(101)=Qspvak4k3*acc17(52)
      acc17(102)=QspQ*acc17(11)
      acc17(103)=Qspvak4k3*acc17(3)
      acc17(103)=acc17(4)+acc17(103)
      acc17(103)=Qspvak5k6*acc17(103)
      acc17(92)=acc17(103)+acc17(102)+acc17(101)+acc17(100)+acc17(99)+acc17(98)&
      &+acc17(97)+acc17(96)+acc17(95)+acc17(94)+acc17(93)+acc17(10)+acc17(92)
      acc17(92)=Qspvak1k2*acc17(92)
      acc17(93)=-Qspk2-Qspk1
      acc17(93)=acc17(58)*acc17(93)
      acc17(94)=-acc17(67)*Qspvak6k2
      acc17(95)=-acc17(43)*Qspvak1k5
      acc17(96)=Qspvak1k6*acc17(89)
      acc17(97)=-Qspvak1k7*acc17(45)
      acc17(98)=Qspvak1k3*acc17(2)
      acc17(99)=Qspvak5k2*acc17(73)
      acc17(100)=Qspvak4k2*acc17(75)
      acc17(101)=QspQ*acc17(61)
      acc17(93)=acc17(101)+acc17(100)+acc17(99)+acc17(98)+acc17(97)+acc17(96)+a&
      &cc17(31)+acc17(94)+acc17(95)+acc17(93)
      acc17(93)=Qspvak5k6*acc17(93)
      acc17(94)=Qspvak1k6*acc17(90)
      acc17(95)=Qspvak1k7*acc17(88)
      acc17(96)=Qspvak5k2*acc17(84)
      acc17(94)=acc17(96)+acc17(95)+acc17(77)+acc17(94)
      acc17(94)=Qspvak4k3*acc17(94)
      acc17(95)=Qspvak4k3*acc17(82)
      acc17(96)=Qspvak5k6*acc17(65)
      acc17(95)=acc17(96)+acc17(55)+acc17(95)
      acc17(95)=Qspvak7k2*acc17(95)
      acc17(96)=Qspvak1k6*acc17(81)
      acc17(97)=-Qspvak1k7*acc17(87)
      acc17(98)=Qspvak4k6*acc17(5)
      acc17(99)=Qspvak4k7*acc17(8)
      acc17(100)=Qspvak5k7*acc17(6)
      acc17(101)=Qspk1*acc17(48)
      acc17(102)=Qspk5*acc17(32)
      acc17(103)=Qspk6*acc17(42)
      acc17(104)=Qspvak7k3*acc17(51)
      acc17(105)=Qspk2*acc17(46)
      acc17(106)=Qspvak1k3*acc17(37)
      acc17(107)=Qspvak5k2*acc17(72)
      acc17(108)=Qspvak5k3*acc17(50)
      acc17(109)=Qspvak4k2*acc17(28)
      acc17(110)=Qspk7*acc17(41)
      acc17(111)=QspQ*acc17(29)
      acc17(92)=acc17(95)+acc17(92)+acc17(93)+acc17(111)+acc17(94)+acc17(110)+a&
      &cc17(109)+acc17(108)+acc17(107)+acc17(106)+acc17(105)+acc17(104)+acc17(1&
      &03)+acc17(102)+acc17(101)+acc17(100)+acc17(99)+acc17(98)+acc17(97)+acc17&
      &(39)+acc17(96)
      acc17(92)=Qspvak7k2*acc17(92)
      acc17(93)=Qspvak4k6*acc17(16)
      acc17(94)=Qspvak4k7*acc17(74)
      acc17(95)=Qspvak5k7*acc17(56)
      acc17(96)=Qspk1*acc17(22)
      acc17(97)=Qspk5*acc17(19)
      acc17(98)=Qspk6*acc17(35)
      acc17(99)=Qspk2*acc17(20)
      acc17(100)=Qspvak1k3*acc17(68)
      acc17(101)=Qspvak5k2*acc17(33)
      acc17(102)=Qspvak5k3*acc17(71)
      acc17(103)=Qspvak4k2*acc17(85)
      acc17(104)=Qspk7*acc17(34)
      acc17(105)=Qspvak4k3*acc17(79)
      acc17(106)=QspQ*acc17(7)
      acc17(93)=acc17(106)+acc17(105)+acc17(104)+acc17(103)+acc17(102)+acc17(10&
      &1)+acc17(100)+acc17(99)+acc17(98)+acc17(97)+acc17(96)+acc17(95)+acc17(94&
      &)+acc17(17)+acc17(93)
      acc17(93)=QspQ*acc17(93)
      acc17(94)=Qspvak7k3*acc17(62)
      acc17(95)=Qspk2*acc17(60)
      acc17(96)=Qspvak1k3*acc17(57)
      acc17(97)=Qspvak4k2*acc17(66)
      acc17(98)=Qspvak4k3*acc17(15)
      acc17(99)=QspQ*acc17(59)
      acc17(94)=acc17(99)+acc17(98)+acc17(97)+acc17(96)+acc17(94)+acc17(95)
      acc17(94)=Qspvak5k6*acc17(94)
      acc17(95)=Qspk6+Qspk5
      acc17(96)=acc17(91)*acc17(95)
      acc17(97)=Qspvak4k3*acc17(64)
      acc17(97)=acc17(97)+acc17(80)
      acc17(97)=Qspk7*acc17(97)
      acc17(98)=Qspvak7k3*acc17(1)
      acc17(99)=Qspvak5k3*acc17(14)
      acc17(100)=Qspvak4k3*acc17(27)
      acc17(100)=acc17(9)+acc17(100)
      acc17(100)=QspQ*acc17(100)
      acc17(101)=Qspvak5k6*acc17(13)
      acc17(96)=acc17(101)+acc17(100)+acc17(99)+acc17(98)+acc17(12)+acc17(97)+a&
      &cc17(96)
      acc17(96)=Qspvak1k2*acc17(96)
      acc17(97)=Qspk1*acc17(23)
      acc17(98)=Qspk2*acc17(21)
      acc17(99)=Qspvak1k3*acc17(69)
      acc17(100)=Qspvak5k3*acc17(70)
      acc17(101)=Qspvak4k2*acc17(86)
      acc17(97)=acc17(101)+acc17(100)+acc17(99)+acc17(97)+acc17(98)
      acc17(97)=Qspk7*acc17(97)
      acc17(98)=Qspvak5k2*acc17(83)
      acc17(99)=Qspk7*acc17(78)
      acc17(98)=acc17(99)+acc17(63)+acc17(98)
      acc17(98)=Qspvak4k3*acc17(98)
      acc17(99)=Qspvak7k3*acc17(38)
      acc17(100)=Qspk2*acc17(18)
      acc17(101)=Qspvak1k3*acc17(76)
      acc17(102)=Qspvak5k3*acc17(36)
      acc17(95)=-Qspvak4k2*acc17(30)*acc17(95)
      brack=acc17(92)+acc17(93)+acc17(94)+acc17(95)+acc17(96)+acc17(97)+acc17(9&
      &8)+acc17(99)+acc17(100)+acc17(101)+acc17(102)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd17h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d17
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d17 = 0.0_ki
      d17 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d17, ki), aimag(d17), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d17h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd17h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d17
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d17 = 0.0_ki
      d17 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d17, ki), aimag(d17), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d17h5l1
