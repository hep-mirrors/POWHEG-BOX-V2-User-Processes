module     p0_dbaru_epnebbbarg_d67h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d67h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd67h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc67(122)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      acc67(1)=abb67(7)
      acc67(2)=abb67(8)
      acc67(3)=abb67(9)
      acc67(4)=abb67(10)
      acc67(5)=abb67(11)
      acc67(6)=abb67(12)
      acc67(7)=abb67(13)
      acc67(8)=abb67(14)
      acc67(9)=abb67(15)
      acc67(10)=abb67(16)
      acc67(11)=abb67(17)
      acc67(12)=abb67(18)
      acc67(13)=abb67(19)
      acc67(14)=abb67(20)
      acc67(15)=abb67(21)
      acc67(16)=abb67(22)
      acc67(17)=abb67(23)
      acc67(18)=abb67(24)
      acc67(19)=abb67(25)
      acc67(20)=abb67(26)
      acc67(21)=abb67(27)
      acc67(22)=abb67(28)
      acc67(23)=abb67(29)
      acc67(24)=abb67(30)
      acc67(25)=abb67(31)
      acc67(26)=abb67(32)
      acc67(27)=abb67(33)
      acc67(28)=abb67(34)
      acc67(29)=abb67(35)
      acc67(30)=abb67(36)
      acc67(31)=abb67(37)
      acc67(32)=abb67(38)
      acc67(33)=abb67(39)
      acc67(34)=abb67(40)
      acc67(35)=abb67(41)
      acc67(36)=abb67(42)
      acc67(37)=abb67(43)
      acc67(38)=abb67(44)
      acc67(39)=abb67(45)
      acc67(40)=abb67(46)
      acc67(41)=abb67(47)
      acc67(42)=abb67(48)
      acc67(43)=abb67(49)
      acc67(44)=abb67(50)
      acc67(45)=abb67(51)
      acc67(46)=abb67(52)
      acc67(47)=abb67(53)
      acc67(48)=abb67(54)
      acc67(49)=abb67(55)
      acc67(50)=abb67(56)
      acc67(51)=abb67(57)
      acc67(52)=abb67(58)
      acc67(53)=abb67(59)
      acc67(54)=abb67(60)
      acc67(55)=abb67(61)
      acc67(56)=abb67(62)
      acc67(57)=abb67(63)
      acc67(58)=abb67(64)
      acc67(59)=abb67(65)
      acc67(60)=abb67(66)
      acc67(61)=abb67(67)
      acc67(62)=abb67(68)
      acc67(63)=abb67(69)
      acc67(64)=abb67(70)
      acc67(65)=abb67(71)
      acc67(66)=abb67(72)
      acc67(67)=abb67(73)
      acc67(68)=abb67(74)
      acc67(69)=abb67(75)
      acc67(70)=abb67(76)
      acc67(71)=abb67(77)
      acc67(72)=abb67(78)
      acc67(73)=abb67(79)
      acc67(74)=abb67(80)
      acc67(75)=abb67(81)
      acc67(76)=abb67(82)
      acc67(77)=abb67(83)
      acc67(78)=abb67(84)
      acc67(79)=abb67(85)
      acc67(80)=abb67(86)
      acc67(81)=abb67(87)
      acc67(82)=abb67(88)
      acc67(83)=abb67(92)
      acc67(84)=abb67(93)
      acc67(85)=abb67(94)
      acc67(86)=abb67(98)
      acc67(87)=abb67(99)
      acc67(88)=abb67(101)
      acc67(89)=abb67(102)
      acc67(90)=abb67(103)
      acc67(91)=abb67(105)
      acc67(92)=abb67(106)
      acc67(93)=abb67(108)
      acc67(94)=abb67(110)
      acc67(95)=abb67(111)
      acc67(96)=abb67(112)
      acc67(97)=abb67(113)
      acc67(98)=abb67(114)
      acc67(99)=abb67(117)
      acc67(100)=abb67(120)
      acc67(101)=abb67(122)
      acc67(102)=abb67(127)
      acc67(103)=abb67(128)
      acc67(104)=abb67(130)
      acc67(105)=abb67(132)
      acc67(106)=abb67(134)
      acc67(107)=Qspl6+Qspl5
      acc67(108)=acc67(59)*acc67(107)
      acc67(109)=-Qspvak3k2*acc67(56)
      acc67(110)=Qspk7*acc67(51)
      acc67(111)=Qspvak1k2*acc67(53)
      acc67(112)=QspQ*acc67(41)
      acc67(113)=Qspvak4k2*acc67(97)
      acc67(108)=acc67(113)+acc67(112)+acc67(111)+acc67(110)+acc67(21)+acc67(10&
      &9)+acc67(108)
      acc67(108)=Qspvak4k3*acc67(108)
      acc67(109)=Qspk4+Qspk3
      acc67(110)=-acc67(103)*acc67(109)
      acc67(111)=Qspvak1k3*acc67(4)
      acc67(112)=Qspvak1k2*acc67(63)
      acc67(113)=Qspk1*acc67(106)
      acc67(114)=QspQ*acc67(102)
      acc67(115)=Qspvak1k2*acc67(77)
      acc67(115)=acc67(49)+acc67(115)
      acc67(115)=Qspvak4k3*acc67(115)
      acc67(110)=acc67(115)+acc67(114)+acc67(113)+acc67(112)+acc67(3)+acc67(111&
      &)+acc67(110)
      acc67(110)=Qspvak2k7*acc67(110)
      acc67(111)=acc67(109)-Qspk1
      acc67(112)=acc67(89)*acc67(111)
      acc67(113)=QspQ*acc67(56)
      acc67(112)=acc67(113)+acc67(86)+acc67(112)
      acc67(112)=Qspvak4k2*acc67(112)
      acc67(113)=acc67(90)*acc67(109)
      acc67(114)=-acc67(88)*acc67(107)
      acc67(115)=Qspvak7k2*acc67(94)
      acc67(116)=Qspk2*acc67(91)
      acc67(117)=Qspk7*acc67(87)
      acc67(118)=Qspvak1k2*acc67(70)
      acc67(119)=Qspk2*acc67(92)
      acc67(119)=acc67(58)+acc67(119)
      acc67(119)=Qspk1*acc67(119)
      acc67(120)=Qspk2*acc67(83)
      acc67(120)=acc67(35)+acc67(120)
      acc67(120)=QspQ*acc67(120)
      acc67(121)=Qspvak4k3*acc67(50)
      acc67(121)=acc67(95)+acc67(121)
      acc67(121)=Qspval5k2*acc67(121)
      acc67(122)=Qspvak4k3*acc67(74)
      acc67(122)=acc67(96)+acc67(122)
      acc67(122)=Qspval6k2*acc67(122)
      acc67(108)=acc67(122)+acc67(121)+acc67(110)+acc67(108)+acc67(112)+acc67(1&
      &20)+acc67(119)+acc67(118)+acc67(117)+acc67(116)+acc67(44)+acc67(115)+acc&
      &67(114)+acc67(113)
      acc67(108)=Qspval6k2*acc67(108)
      acc67(110)=acc67(17)*acc67(107)
      acc67(112)=-Qspvak3k2*acc67(33)
      acc67(113)=Qspk7*acc67(16)
      acc67(114)=Qspvak1k2*acc67(52)
      acc67(115)=QspQ*acc67(23)
      acc67(116)=Qspvak4k2*acc67(98)
      acc67(110)=acc67(116)+acc67(115)+acc67(114)+acc67(113)+acc67(1)+acc67(112&
      &)+acc67(110)
      acc67(110)=Qspvak4k3*acc67(110)
      acc67(112)=acc67(46)*acc67(109)
      acc67(113)=Qspvak1k3*acc67(8)
      acc67(114)=Qspvak1k2*acc67(13)
      acc67(115)=Qspk1*acc67(99)
      acc67(116)=QspQ*acc67(100)
      acc67(117)=Qspvak1k2*acc67(80)
      acc67(117)=acc67(2)+acc67(117)
      acc67(117)=Qspvak4k3*acc67(117)
      acc67(112)=acc67(117)+acc67(116)+acc67(115)+acc67(114)+acc67(12)+acc67(11&
      &3)+acc67(112)
      acc67(112)=Qspvak2k7*acc67(112)
      acc67(113)=acc67(93)*acc67(111)
      acc67(114)=QspQ*acc67(33)
      acc67(113)=acc67(114)+acc67(27)+acc67(113)
      acc67(113)=Qspvak4k2*acc67(113)
      acc67(114)=-acc67(81)*acc67(107)
      acc67(115)=acc67(73)*acc67(109)
      acc67(116)=Qspvak7k2*acc67(79)
      acc67(117)=Qspk2*acc67(84)
      acc67(118)=Qspk7*acc67(42)
      acc67(119)=Qspvak1k2*acc67(31)
      acc67(120)=Qspk2*acc67(61)
      acc67(120)=acc67(45)+acc67(120)
      acc67(120)=Qspk1*acc67(120)
      acc67(121)=Qspk2*acc67(34)
      acc67(121)=acc67(11)+acc67(121)
      acc67(121)=QspQ*acc67(121)
      acc67(122)=Qspvak4k3*acc67(62)
      acc67(122)=acc67(7)+acc67(122)
      acc67(122)=Qspval5k2*acc67(122)
      acc67(110)=acc67(122)+acc67(112)+acc67(110)+acc67(113)+acc67(121)+acc67(1&
      &20)+acc67(119)+acc67(118)+acc67(117)+acc67(32)+acc67(116)+acc67(115)+acc&
      &67(114)
      acc67(110)=Qspval5k2*acc67(110)
      acc67(112)=-Qspvak3k2*acc67(66)
      acc67(113)=Qspvak7k2*acc67(48)
      acc67(114)=Qspvak1k2*acc67(72)
      acc67(115)=Qspvak4k2*acc67(67)
      acc67(112)=acc67(115)+acc67(114)+acc67(113)+acc67(24)+acc67(112)
      acc67(112)=Qspvak4k3*acc67(112)
      acc67(111)=acc67(54)*acc67(111)
      acc67(113)=QspQ*acc67(66)
      acc67(111)=acc67(113)+acc67(37)+acc67(111)
      acc67(111)=Qspvak4k2*acc67(111)
      acc67(113)=acc67(104)*acc67(109)
      acc67(114)=acc67(107)-Qspk7
      acc67(115)=-acc67(101)*acc67(114)
      acc67(116)=Qspvak1k3*acc67(25)
      acc67(117)=Qspvak7k2*acc67(43)
      acc67(118)=Qspvak1k2*acc67(38)
      acc67(119)=Qspk1*acc67(105)
      acc67(120)=QspQ*acc67(65)
      acc67(111)=acc67(112)+acc67(111)+acc67(120)+acc67(119)+acc67(118)+acc67(1&
      &17)+acc67(47)+acc67(116)+acc67(115)+acc67(113)
      acc67(111)=Qspvak2k7*acc67(111)
      acc67(112)=acc67(15)*acc67(107)
      acc67(113)=Qspvak3k2*acc67(26)
      acc67(115)=Qspk7*acc67(10)
      acc67(116)=Qspvak1k2*acc67(30)
      acc67(117)=QspQ*acc67(18)
      acc67(118)=Qspvak4k2*acc67(22)
      acc67(112)=acc67(118)+acc67(117)+acc67(116)+acc67(115)+acc67(5)+acc67(113&
      &)+acc67(112)
      acc67(112)=Qspvak4k3*acc67(112)
      acc67(113)=-Qspk1+acc67(114)
      acc67(113)=acc67(28)*acc67(113)
      acc67(115)=Qspvak7k2*acc67(57)
      acc67(116)=Qspk2*acc67(29)
      acc67(117)=Qspvak1k2*acc67(39)
      acc67(118)=QspQ*acc67(40)
      acc67(113)=acc67(118)+acc67(117)+acc67(116)+acc67(6)+acc67(115)+acc67(113)
      acc67(113)=QspQ*acc67(113)
      acc67(114)=-acc67(14)*acc67(114)
      acc67(115)=Qspvak7k2*acc67(60)
      acc67(116)=Qspk2*acc67(20)
      acc67(117)=Qspvak1k2*acc67(68)
      acc67(114)=acc67(117)+acc67(116)+acc67(9)+acc67(115)+acc67(114)
      acc67(114)=Qspk1*acc67(114)
      acc67(115)=-acc67(69)*acc67(109)
      acc67(116)=Qspk1*acc67(85)
      acc67(117)=QspQ*acc67(78)
      acc67(115)=acc67(117)+acc67(116)+acc67(75)+acc67(115)
      acc67(115)=Qspvak4k2*acc67(115)
      acc67(109)=-acc67(76)*acc67(109)
      acc67(107)=-acc67(64)*acc67(107)
      acc67(116)=Qspvak7k2*acc67(55)
      acc67(117)=Qspk2*acc67(82)
      acc67(118)=Qspk7*acc67(71)
      acc67(119)=Qspvak1k2*acc67(36)
      brack=acc67(19)+acc67(107)+acc67(108)+acc67(109)+acc67(110)+acc67(111)+ac&
      &c67(112)+acc67(113)+acc67(114)+acc67(115)+acc67(116)+acc67(117)+acc67(11&
      &8)+acc67(119)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd67h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d67
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d67 = 0.0_ki
      d67 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d67, ki), aimag(d67), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d67h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd67h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d67
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d67 = 0.0_ki
      d67 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d67, ki), aimag(d67), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d67h0l1
