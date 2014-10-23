module     p0_dbaru_epnebbbarg_d70h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d70h0l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd70h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc70(104)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk2
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspk1 = dotproduct(Q,k1)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk2 = dotproduct(Q,k2)
      acc70(1)=abb70(7)
      acc70(2)=abb70(8)
      acc70(3)=abb70(9)
      acc70(4)=abb70(10)
      acc70(5)=abb70(11)
      acc70(6)=abb70(12)
      acc70(7)=abb70(13)
      acc70(8)=abb70(14)
      acc70(9)=abb70(15)
      acc70(10)=abb70(16)
      acc70(11)=abb70(17)
      acc70(12)=abb70(18)
      acc70(13)=abb70(19)
      acc70(14)=abb70(20)
      acc70(15)=abb70(21)
      acc70(16)=abb70(22)
      acc70(17)=abb70(23)
      acc70(18)=abb70(24)
      acc70(19)=abb70(25)
      acc70(20)=abb70(26)
      acc70(21)=abb70(27)
      acc70(22)=abb70(28)
      acc70(23)=abb70(29)
      acc70(24)=abb70(30)
      acc70(25)=abb70(31)
      acc70(26)=abb70(32)
      acc70(27)=abb70(33)
      acc70(28)=abb70(34)
      acc70(29)=abb70(35)
      acc70(30)=abb70(36)
      acc70(31)=abb70(37)
      acc70(32)=abb70(38)
      acc70(33)=abb70(39)
      acc70(34)=abb70(40)
      acc70(35)=abb70(41)
      acc70(36)=abb70(42)
      acc70(37)=abb70(43)
      acc70(38)=abb70(44)
      acc70(39)=abb70(45)
      acc70(40)=abb70(46)
      acc70(41)=abb70(47)
      acc70(42)=abb70(48)
      acc70(43)=abb70(49)
      acc70(44)=abb70(50)
      acc70(45)=abb70(51)
      acc70(46)=abb70(52)
      acc70(47)=abb70(53)
      acc70(48)=abb70(54)
      acc70(49)=abb70(55)
      acc70(50)=abb70(56)
      acc70(51)=abb70(57)
      acc70(52)=abb70(58)
      acc70(53)=abb70(59)
      acc70(54)=abb70(60)
      acc70(55)=abb70(61)
      acc70(56)=abb70(62)
      acc70(57)=abb70(63)
      acc70(58)=abb70(64)
      acc70(59)=abb70(65)
      acc70(60)=abb70(66)
      acc70(61)=abb70(67)
      acc70(62)=abb70(68)
      acc70(63)=abb70(69)
      acc70(64)=abb70(70)
      acc70(65)=abb70(71)
      acc70(66)=abb70(72)
      acc70(67)=abb70(73)
      acc70(68)=abb70(74)
      acc70(69)=abb70(75)
      acc70(70)=abb70(76)
      acc70(71)=abb70(77)
      acc70(72)=abb70(78)
      acc70(73)=abb70(79)
      acc70(74)=abb70(80)
      acc70(75)=abb70(81)
      acc70(76)=abb70(82)
      acc70(77)=abb70(83)
      acc70(78)=abb70(84)
      acc70(79)=abb70(85)
      acc70(80)=abb70(86)
      acc70(81)=abb70(88)
      acc70(82)=abb70(89)
      acc70(83)=abb70(91)
      acc70(84)=abb70(92)
      acc70(85)=abb70(93)
      acc70(86)=abb70(95)
      acc70(87)=abb70(96)
      acc70(88)=abb70(97)
      acc70(89)=abb70(99)
      acc70(90)=abb70(100)
      acc70(91)=Qspk4+Qspk3
      acc70(92)=acc70(91)+Qspk7
      acc70(93)=acc70(53)*acc70(92)
      acc70(94)=Qspvak1k3*acc70(33)
      acc70(95)=Qspvak7k2*acc70(60)
      acc70(96)=Qspvak1k7*acc70(80)
      acc70(97)=Qspvak4k2*acc70(4)
      acc70(98)=-Qspvak1k2*acc70(3)
      acc70(98)=acc70(5)+acc70(98)
      acc70(98)=Qspvak4k3*acc70(98)
      acc70(99)=QspQ*acc70(88)
      acc70(93)=acc70(99)+acc70(98)+acc70(97)+acc70(96)+acc70(95)+acc70(48)+acc&
      &70(94)+acc70(93)
      acc70(93)=Qspval5k2*acc70(93)
      acc70(92)=acc70(85)*acc70(92)
      acc70(94)=Qspvak1k3*acc70(39)
      acc70(95)=Qspvak7k2*acc70(57)
      acc70(96)=Qspvak1k7*acc70(86)
      acc70(97)=Qspvak4k2*acc70(31)
      acc70(98)=-Qspvak1k2*acc70(20)
      acc70(98)=acc70(22)+acc70(98)
      acc70(98)=Qspvak4k3*acc70(98)
      acc70(99)=QspQ*acc70(87)
      acc70(92)=acc70(99)+acc70(98)+acc70(97)+acc70(96)+acc70(95)+acc70(84)+acc&
      &70(94)+acc70(92)
      acc70(92)=Qspval6k2*acc70(92)
      acc70(94)=Qspvak3k2*acc70(27)
      acc70(95)=Qspvak7k2*acc70(19)
      acc70(96)=Qspvak1k2*acc70(29)
      acc70(97)=Qspvak4k2*acc70(34)
      acc70(94)=acc70(97)+acc70(96)+acc70(95)+acc70(13)+acc70(94)
      acc70(94)=Qspvak4k3*acc70(94)
      acc70(95)=acc70(82)*acc70(91)
      acc70(96)=Qspk1+Qspl6+Qspl5
      acc70(97)=-acc70(83)*acc70(96)
      acc70(98)=Qspvak1k3*acc70(25)
      acc70(99)=Qspvak7k2*acc70(9)
      acc70(100)=Qspvak1k2*acc70(78)
      acc70(101)=Qspvak1k7*acc70(62)
      acc70(102)=-acc70(26)*acc70(91)
      acc70(102)=acc70(23)+acc70(102)
      acc70(102)=Qspvak4k2*acc70(102)
      acc70(103)=-Qspvak4k2*acc70(26)
      acc70(103)=acc70(82)+acc70(103)
      acc70(103)=Qspk7*acc70(103)
      acc70(104)=-Qspvak4k2*acc70(27)
      acc70(104)=acc70(18)+acc70(104)
      acc70(104)=QspQ*acc70(104)
      acc70(92)=acc70(92)+acc70(93)+acc70(104)+acc70(94)+acc70(103)+acc70(102)+&
      &acc70(101)+acc70(100)+acc70(99)+acc70(6)+acc70(98)+acc70(97)+acc70(95)
      acc70(92)=Qspvak2k7*acc70(92)
      acc70(93)=-Qspk7-acc70(96)
      acc70(93)=acc70(41)*acc70(93)
      acc70(94)=Qspk2*acc70(42)
      acc70(95)=Qspvak7k2*acc70(44)
      acc70(97)=Qspvak1k2*acc70(30)
      acc70(98)=Qspvak1k7*acc70(89)
      acc70(99)=Qspvak4k2*acc70(10)
      acc70(100)=Qspvak4k3*acc70(21)
      acc70(101)=QspQ*acc70(43)
      acc70(93)=acc70(101)+acc70(100)+acc70(99)+acc70(98)+acc70(97)+acc70(95)+a&
      &cc70(94)+acc70(8)+acc70(93)
      acc70(93)=QspQ*acc70(93)
      acc70(94)=Qspk2*acc70(55)
      acc70(95)=Qspvak1k7*acc70(2)
      acc70(97)=Qspvak4k2*acc70(77)
      acc70(94)=acc70(97)+acc70(95)+acc70(32)+acc70(94)
      acc70(94)=Qspk7*acc70(94)
      acc70(95)=-Qspk2*acc70(60)
      acc70(97)=Qspvak1k7*acc70(16)
      acc70(98)=Qspvak4k2*acc70(76)
      acc70(95)=acc70(98)+acc70(97)+acc70(7)+acc70(95)
      acc70(95)=QspQ*acc70(95)
      acc70(97)=acc70(59)*acc70(91)
      acc70(98)=Qspvak3k2*acc70(66)
      acc70(99)=Qspvak1k7*acc70(1)
      acc70(100)=Qspvak4k2*acc70(72)
      acc70(101)=Qspvak1k7*acc70(15)
      acc70(101)=acc70(64)+acc70(101)
      acc70(101)=Qspvak4k3*acc70(101)
      acc70(94)=acc70(95)+acc70(101)+acc70(94)+acc70(100)+acc70(99)+acc70(58)+a&
      &cc70(98)+acc70(97)
      acc70(94)=Qspval5k2*acc70(94)
      acc70(95)=Qspk2*acc70(56)
      acc70(97)=Qspvak1k7*acc70(67)
      acc70(98)=Qspvak4k2*acc70(75)
      acc70(95)=acc70(98)+acc70(97)+acc70(51)+acc70(95)
      acc70(95)=Qspk7*acc70(95)
      acc70(97)=-Qspk2*acc70(57)
      acc70(98)=Qspvak1k7*acc70(90)
      acc70(99)=Qspvak4k2*acc70(74)
      acc70(97)=acc70(99)+acc70(98)+acc70(49)+acc70(97)
      acc70(97)=QspQ*acc70(97)
      acc70(98)=acc70(54)*acc70(91)
      acc70(99)=Qspvak3k2*acc70(68)
      acc70(100)=Qspvak1k7*acc70(52)
      acc70(101)=Qspvak4k2*acc70(73)
      acc70(102)=Qspvak1k7*acc70(61)
      acc70(102)=acc70(65)+acc70(102)
      acc70(102)=Qspvak4k3*acc70(102)
      acc70(95)=acc70(97)+acc70(102)+acc70(95)+acc70(101)+acc70(100)+acc70(47)+&
      &acc70(99)+acc70(98)
      acc70(95)=Qspval6k2*acc70(95)
      acc70(97)=-acc70(38)*acc70(96)
      acc70(98)=Qspk2*acc70(40)
      acc70(99)=Qspvak7k2*acc70(45)
      acc70(100)=Qspvak1k2*acc70(46)
      acc70(101)=Qspvak1k7*acc70(81)
      acc70(102)=Qspvak4k2*acc70(11)
      acc70(97)=acc70(102)+acc70(101)+acc70(100)+acc70(99)+acc70(98)+acc70(28)+&
      &acc70(97)
      acc70(97)=Qspk7*acc70(97)
      acc70(98)=acc70(24)*acc70(96)
      acc70(99)=Qspvak3k2*acc70(12)
      acc70(100)=Qspvak1k2*acc70(50)
      acc70(101)=Qspvak1k7*acc70(37)
      acc70(102)=Qspvak4k2*acc70(79)
      acc70(98)=acc70(102)+acc70(101)+acc70(100)+acc70(99)+acc70(17)+acc70(98)
      acc70(98)=Qspvak4k3*acc70(98)
      acc70(99)=-acc70(14)*acc70(91)
      acc70(96)=acc70(36)*acc70(96)
      acc70(100)=Qspvak3k2*acc70(69)
      acc70(101)=Qspvak1k2*acc70(35)
      acc70(102)=Qspvak1k7*acc70(63)
      acc70(91)=-acc70(71)*acc70(91)
      acc70(91)=acc70(70)+acc70(91)
      acc70(91)=Qspvak4k2*acc70(91)
      brack=acc70(91)+acc70(92)+acc70(93)+acc70(94)+acc70(95)+acc70(96)+acc70(9&
      &7)+acc70(98)+acc70(99)+acc70(100)+acc70(101)+acc70(102)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd70h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d70
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3-k2+k7+k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d70 = 0.0_ki
      d70 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d70, ki), aimag(d70), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d70h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd70h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d70
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3-k2+k7+k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d70 = 0.0_ki
      d70 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d70, ki), aimag(d70), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d70h0l1
