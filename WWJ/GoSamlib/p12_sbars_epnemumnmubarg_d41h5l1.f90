module     p12_sbars_epnemumnmubarg_d41h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d41h5l1.f90
   ! generator: buildfortran.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd41h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc41(105)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: Qspk6
      complex(ki) :: Qspvak3k6
      complex(ki) :: Qspvak5k4
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak5k7
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k6
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      Qspk6 = dotproduct(Q,k6)
      Qspvak3k6 = dotproduct(Q,spvak3k6)
      Qspvak5k4 = dotproduct(Q,spvak5k4)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak5k7 = dotproduct(Q,spvak5k7)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspk5 = dotproduct(Q,k5)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k6 = dotproduct(Q,spvak7k6)
      acc41(1)=abb41(6)
      acc41(2)=abb41(7)
      acc41(3)=abb41(8)
      acc41(4)=abb41(9)
      acc41(5)=abb41(10)
      acc41(6)=abb41(11)
      acc41(7)=abb41(12)
      acc41(8)=abb41(13)
      acc41(9)=abb41(14)
      acc41(10)=abb41(15)
      acc41(11)=abb41(16)
      acc41(12)=abb41(18)
      acc41(13)=abb41(19)
      acc41(14)=abb41(20)
      acc41(15)=abb41(21)
      acc41(16)=abb41(22)
      acc41(17)=abb41(23)
      acc41(18)=abb41(24)
      acc41(19)=abb41(25)
      acc41(20)=abb41(26)
      acc41(21)=abb41(27)
      acc41(22)=abb41(28)
      acc41(23)=abb41(29)
      acc41(24)=abb41(30)
      acc41(25)=abb41(31)
      acc41(26)=abb41(32)
      acc41(27)=abb41(33)
      acc41(28)=abb41(34)
      acc41(29)=abb41(35)
      acc41(30)=abb41(36)
      acc41(31)=abb41(37)
      acc41(32)=abb41(38)
      acc41(33)=abb41(39)
      acc41(34)=abb41(40)
      acc41(35)=abb41(41)
      acc41(36)=abb41(42)
      acc41(37)=abb41(43)
      acc41(38)=abb41(44)
      acc41(39)=abb41(45)
      acc41(40)=abb41(46)
      acc41(41)=abb41(47)
      acc41(42)=abb41(48)
      acc41(43)=abb41(49)
      acc41(44)=abb41(50)
      acc41(45)=abb41(51)
      acc41(46)=abb41(52)
      acc41(47)=abb41(53)
      acc41(48)=abb41(54)
      acc41(49)=abb41(55)
      acc41(50)=abb41(56)
      acc41(51)=abb41(57)
      acc41(52)=abb41(58)
      acc41(53)=abb41(59)
      acc41(54)=abb41(60)
      acc41(55)=abb41(61)
      acc41(56)=abb41(62)
      acc41(57)=abb41(63)
      acc41(58)=abb41(64)
      acc41(59)=abb41(65)
      acc41(60)=abb41(66)
      acc41(61)=abb41(67)
      acc41(62)=abb41(68)
      acc41(63)=abb41(69)
      acc41(64)=abb41(70)
      acc41(65)=abb41(71)
      acc41(66)=abb41(72)
      acc41(67)=abb41(73)
      acc41(68)=abb41(74)
      acc41(69)=abb41(75)
      acc41(70)=abb41(76)
      acc41(71)=abb41(77)
      acc41(72)=abb41(78)
      acc41(73)=abb41(79)
      acc41(74)=abb41(80)
      acc41(75)=abb41(81)
      acc41(76)=abb41(83)
      acc41(77)=abb41(84)
      acc41(78)=abb41(88)
      acc41(79)=abb41(92)
      acc41(80)=abb41(93)
      acc41(81)=abb41(94)
      acc41(82)=abb41(95)
      acc41(83)=abb41(96)
      acc41(84)=abb41(97)
      acc41(85)=abb41(99)
      acc41(86)=abb41(100)
      acc41(87)=abb41(102)
      acc41(88)=Qspk4+Qspk3
      acc41(89)=acc41(79)*acc41(88)
      acc41(90)=Qspk7+Qspk6
      acc41(91)=-acc41(62)*acc41(90)
      acc41(92)=-acc41(57)*Qspvak3k6
      acc41(93)=acc41(44)*Qspvak5k4
      acc41(94)=Qspvak1k7*acc41(77)
      acc41(95)=Qspvak5k3*acc41(83)
      acc41(96)=Qspvak5k7*acc41(81)
      acc41(97)=Qspvak4k6*acc41(85)
      acc41(98)=Qspk5*acc41(78)
      acc41(99)=Qspvak5k2*acc41(17)
      acc41(100)=Qspvak1k6*acc41(47)
      acc41(101)=Qspvak5k6*acc41(66)
      acc41(102)=Qspvak5k6*acc41(4)
      acc41(102)=acc41(27)+acc41(102)
      acc41(102)=Qspvak1k2*acc41(102)
      acc41(103)=QspQ*acc41(43)
      acc41(89)=acc41(103)+acc41(102)+acc41(101)+acc41(100)+acc41(99)+acc41(98)&
      &+acc41(97)+acc41(96)+acc41(95)+acc41(94)+acc41(23)+acc41(92)+acc41(93)+a&
      &cc41(91)+acc41(89)
      acc41(89)=Qspvak4k3*acc41(89)
      acc41(91)=acc41(90)+Qspk5
      acc41(92)=-acc41(88)+acc41(91)
      acc41(92)=acc41(52)*acc41(92)
      acc41(93)=acc41(64)*Qspvak7k3
      acc41(94)=acc41(56)*Qspvak4k7
      acc41(95)=Qspvak5k3*acc41(49)
      acc41(96)=Qspvak4k6*acc41(68)
      acc41(92)=acc41(96)+acc41(95)+acc41(31)+acc41(93)+acc41(94)+acc41(92)
      acc41(92)=Qspvak1k2*acc41(92)
      acc41(93)=acc41(74)*acc41(88)
      acc41(91)=-acc41(73)*acc41(91)
      acc41(94)=Qspvak1k3*acc41(5)
      acc41(95)=Qspvak4k2*acc41(12)
      acc41(91)=acc41(95)+acc41(32)+acc41(94)+acc41(91)+acc41(93)
      acc41(91)=Qspvak5k6*acc41(91)
      acc41(90)=-acc41(59)*acc41(90)
      acc41(93)=Qspvak1k7*acc41(76)
      acc41(94)=Qspvak5k3*acc41(50)
      acc41(95)=Qspvak5k7*acc41(67)
      acc41(96)=Qspvak1k3*acc41(20)
      acc41(97)=Qspvak4k6*acc41(46)
      acc41(98)=Qspk5*acc41(55)
      acc41(99)=Qspvak4k2*acc41(13)
      acc41(100)=Qspvak5k2*acc41(19)
      acc41(101)=Qspvak1k6*acc41(45)
      acc41(102)=Qspk3*acc41(63)
      acc41(103)=Qspk4*acc41(65)
      acc41(104)=Qspvak5k6*acc41(53)
      acc41(104)=acc41(30)+acc41(104)
      acc41(104)=QspQ*acc41(104)
      acc41(105)=Qspvak4k3*acc41(80)
      acc41(105)=acc41(61)+acc41(105)
      acc41(105)=Qspvak7k2*acc41(105)
      acc41(89)=acc41(105)+acc41(89)+acc41(104)+acc41(92)+acc41(91)+acc41(103)+&
      &acc41(102)+acc41(101)+acc41(100)+acc41(99)+acc41(98)+acc41(97)+acc41(96)&
      &+acc41(95)+acc41(94)+acc41(48)+acc41(93)+acc41(90)
      acc41(89)=Qspvak7k2*acc41(89)
      acc41(90)=Qspvak7k6*acc41(14)
      acc41(91)=Qspvak1k7*acc41(70)
      acc41(92)=Qspvak5k7*acc41(26)
      acc41(93)=Qspvak1k3*acc41(6)
      acc41(94)=Qspk5*acc41(39)
      acc41(95)=Qspk6*acc41(40)
      acc41(96)=Qspvak4k2*acc41(60)
      acc41(97)=Qspvak5k2*acc41(9)
      acc41(98)=Qspvak1k6*acc41(37)
      acc41(99)=Qspk3*acc41(8)
      acc41(100)=Qspk4*acc41(7)
      acc41(101)=Qspk7*acc41(38)
      acc41(102)=Qspvak5k6*acc41(35)
      acc41(103)=Qspvak5k6*acc41(2)
      acc41(103)=acc41(24)+acc41(103)
      acc41(103)=Qspvak1k2*acc41(103)
      acc41(104)=QspQ*acc41(10)
      acc41(90)=acc41(104)+acc41(103)+acc41(102)+acc41(101)+acc41(100)+acc41(99&
      &)+acc41(98)+acc41(97)+acc41(96)+acc41(95)+acc41(94)+acc41(93)+acc41(92)+&
      &acc41(91)+acc41(21)+acc41(90)
      acc41(90)=QspQ*acc41(90)
      acc41(91)=Qspvak5k2*acc41(84)
      acc41(92)=Qspvak1k6*acc41(34)
      acc41(93)=Qspk7*acc41(58)
      acc41(94)=Qspvak5k6*acc41(82)
      acc41(95)=Qspk7*acc41(54)
      acc41(95)=acc41(3)+acc41(95)
      acc41(95)=Qspvak1k2*acc41(95)
      acc41(96)=Qspvak1k2*acc41(72)
      acc41(96)=acc41(15)+acc41(96)
      acc41(96)=QspQ*acc41(96)
      acc41(91)=acc41(96)+acc41(95)+acc41(94)+acc41(93)+acc41(91)+acc41(92)
      acc41(91)=Qspvak4k3*acc41(91)
      acc41(92)=acc41(33)*acc41(88)
      acc41(93)=Qspvak1k3*acc41(51)
      acc41(94)=Qspvak4k2*acc41(87)
      acc41(95)=Qspvak5k2*acc41(75)
      acc41(96)=Qspvak1k6*acc41(28)
      acc41(92)=acc41(96)+acc41(95)+acc41(94)+acc41(16)+acc41(93)+acc41(92)
      acc41(92)=Qspk7*acc41(92)
      acc41(93)=-Qspvak4k6*acc41(86)
      acc41(94)=Qspk7*acc41(22)
      acc41(95)=Qspvak5k6*acc41(1)
      acc41(93)=acc41(95)+acc41(94)+acc41(11)+acc41(93)
      acc41(93)=Qspvak1k2*acc41(93)
      acc41(94)=acc41(71)*acc41(88)
      acc41(95)=Qspvak4k2*acc41(18)
      acc41(94)=acc41(69)+acc41(95)+acc41(94)
      acc41(94)=Qspvak5k6*acc41(94)
      acc41(88)=-acc41(88)*Qspvak1k6*acc41(36)
      acc41(95)=Qspvak7k6*acc41(42)
      acc41(96)=Qspk6*acc41(25)
      acc41(97)=Qspvak4k2*acc41(29)
      acc41(98)=Qspvak5k2*acc41(41)
      brack=acc41(88)+acc41(89)+acc41(90)+acc41(91)+acc41(92)+acc41(93)+acc41(9&
      &4)+acc41(95)+acc41(96)+acc41(97)+acc41(98)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd41h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d41
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d41 = 0.0_ki
      d41 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d41, ki), aimag(d41), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d41h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd41h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d41
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d41 = 0.0_ki
      d41 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d41, ki), aimag(d41), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p12_sbars_epnemumnmubarg_d41h5l1
