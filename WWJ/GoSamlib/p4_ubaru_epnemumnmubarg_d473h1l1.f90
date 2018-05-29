module     p4_ubaru_epnemumnmubarg_d473h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity1d473h1l1.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd473h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc473(95)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak5k2
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak6k2
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak5k6
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak6k2 = dotproduct(Q,spvak6k2)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      acc473(1)=abb473(6)
      acc473(2)=abb473(7)
      acc473(3)=abb473(8)
      acc473(4)=abb473(9)
      acc473(5)=abb473(10)
      acc473(6)=abb473(11)
      acc473(7)=abb473(12)
      acc473(8)=abb473(13)
      acc473(9)=abb473(14)
      acc473(10)=abb473(15)
      acc473(11)=abb473(16)
      acc473(12)=abb473(17)
      acc473(13)=abb473(18)
      acc473(14)=abb473(19)
      acc473(15)=abb473(20)
      acc473(16)=abb473(21)
      acc473(17)=abb473(22)
      acc473(18)=abb473(23)
      acc473(19)=abb473(24)
      acc473(20)=abb473(25)
      acc473(21)=abb473(26)
      acc473(22)=abb473(27)
      acc473(23)=abb473(28)
      acc473(24)=abb473(29)
      acc473(25)=abb473(30)
      acc473(26)=abb473(31)
      acc473(27)=abb473(32)
      acc473(28)=abb473(33)
      acc473(29)=abb473(34)
      acc473(30)=abb473(35)
      acc473(31)=abb473(36)
      acc473(32)=abb473(37)
      acc473(33)=abb473(38)
      acc473(34)=abb473(39)
      acc473(35)=abb473(40)
      acc473(36)=abb473(41)
      acc473(37)=abb473(42)
      acc473(38)=abb473(43)
      acc473(39)=abb473(44)
      acc473(40)=abb473(45)
      acc473(41)=abb473(46)
      acc473(42)=abb473(47)
      acc473(43)=abb473(48)
      acc473(44)=abb473(49)
      acc473(45)=abb473(50)
      acc473(46)=abb473(51)
      acc473(47)=abb473(52)
      acc473(48)=abb473(53)
      acc473(49)=abb473(54)
      acc473(50)=abb473(55)
      acc473(51)=abb473(56)
      acc473(52)=abb473(57)
      acc473(53)=abb473(58)
      acc473(54)=abb473(59)
      acc473(55)=abb473(60)
      acc473(56)=abb473(61)
      acc473(57)=abb473(62)
      acc473(58)=abb473(63)
      acc473(59)=abb473(64)
      acc473(60)=abb473(65)
      acc473(61)=abb473(66)
      acc473(62)=abb473(67)
      acc473(63)=abb473(68)
      acc473(64)=abb473(69)
      acc473(65)=abb473(70)
      acc473(66)=abb473(71)
      acc473(67)=abb473(72)
      acc473(68)=abb473(73)
      acc473(69)=abb473(74)
      acc473(70)=abb473(75)
      acc473(71)=abb473(76)
      acc473(72)=abb473(78)
      acc473(73)=abb473(81)
      acc473(74)=abb473(82)
      acc473(75)=abb473(83)
      acc473(76)=abb473(85)
      acc473(77)=abb473(86)
      acc473(78)=abb473(87)
      acc473(79)=abb473(88)
      acc473(80)=abb473(89)
      acc473(81)=Qspvak1k2*acc473(11)
      acc473(82)=Qspk1*acc473(76)
      acc473(83)=Qspvak1k6*acc473(37)
      acc473(81)=acc473(83)+acc473(82)+acc473(45)+acc473(81)
      acc473(81)=Qspvak2k7*acc473(81)
      acc473(82)=Qspk6+Qspk5
      acc473(83)=Qspvak5k2*acc473(71)
      acc473(84)=acc473(83)+acc473(64)
      acc473(84)=-acc473(84)*acc473(82)
      acc473(85)=Qspvak5k2*acc473(68)
      acc473(86)=Qspvak1k6*acc473(31)
      acc473(85)=acc473(86)+acc473(56)+acc473(85)
      acc473(85)=QspQ*acc473(85)
      acc473(86)=Qspk1-acc473(82)
      acc473(87)=-acc473(36)*acc473(86)
      acc473(88)=QspQ*acc473(22)
      acc473(87)=acc473(88)+acc473(25)+acc473(87)
      acc473(87)=Qspk2*acc473(87)
      acc473(88)=Qspvak1k2*acc473(66)
      acc473(89)=Qspvak5k2*acc473(70)
      acc473(90)=Qspvak3k2*acc473(29)
      acc473(83)=acc473(14)+acc473(83)
      acc473(83)=Qspk1*acc473(83)
      acc473(91)=acc473(53)*acc473(86)
      acc473(91)=acc473(38)+acc473(91)
      acc473(91)=Qspvak1k6*acc473(91)
      acc473(92)=Qspvak4k2*acc473(8)
      acc473(81)=acc473(87)+acc473(85)+acc473(81)+acc473(92)+acc473(91)+acc473(&
      &83)+acc473(90)+acc473(89)+acc473(28)+acc473(88)+acc473(84)
      acc473(81)=Qspvak4k3*acc473(81)
      acc473(83)=-Qspvak2k7*acc473(1)
      acc473(83)=acc473(83)+acc473(69)
      acc473(83)=Qspvak1k2*acc473(83)
      acc473(84)=acc473(68)*Qspvak6k2
      acc473(85)=acc473(31)*Qspvak1k5
      acc473(87)=Qspvak1k7*acc473(80)
      acc473(88)=Qspvak5k2*acc473(72)
      acc473(89)=-Qspvak3k2*acc473(55)
      acc473(90)=Qspk1*acc473(65)
      acc473(91)=Qspvak1k6*acc473(30)
      acc473(92)=Qspvak4k2*acc473(20)
      acc473(93)=Qspk2*acc473(35)
      acc473(83)=acc473(93)+acc473(92)+acc473(91)+acc473(90)+acc473(89)+acc473(&
      &88)+acc473(87)+acc473(85)+acc473(54)+acc473(84)+acc473(83)
      acc473(83)=Qspvak4k3*acc473(83)
      acc473(84)=Qspk4+Qspk3
      acc473(85)=Qspk2-acc473(84)
      acc473(87)=acc473(61)*acc473(85)
      acc473(88)=Qspvak1k7*acc473(78)
      acc473(89)=-Qspvak4k2*acc473(46)
      acc473(90)=Qspvak2k7*acc473(75)
      acc473(91)=QspQ*acc473(50)
      acc473(87)=acc473(91)+acc473(90)+acc473(89)+acc473(59)+acc473(88)+acc473(&
      &87)
      acc473(87)=Qspk2*acc473(87)
      acc473(89)=acc473(51)*Qspvak1k3
      acc473(90)=-Qspvak1k2*acc473(79)
      acc473(91)=Qspvak4k2*acc473(2)
      acc473(89)=acc473(91)+acc473(90)+acc473(89)+acc473(32)
      acc473(89)=Qspvak2k7*acc473(89)
      acc473(90)=-Qspvak1k7*acc473(79)
      acc473(91)=Qspvak4k2*acc473(55)
      acc473(92)=Qspvak2k7*acc473(73)
      acc473(90)=acc473(92)+acc473(91)+acc473(5)+acc473(90)
      acc473(90)=QspQ*acc473(90)
      acc473(88)=acc473(88)+acc473(58)
      acc473(88)=-acc473(88)*acc473(84)
      acc473(91)=Qspvak1k5*acc473(9)
      acc473(92)=Qspvak3k2*acc473(21)
      acc473(93)=Qspk1*acc473(52)
      acc473(94)=Qspvak1k6*acc473(7)
      acc473(95)=acc473(46)*acc473(84)
      acc473(95)=acc473(3)+acc473(95)
      acc473(95)=Qspvak4k2*acc473(95)
      acc473(83)=acc473(83)+acc473(87)+acc473(90)+acc473(89)+acc473(95)+acc473(&
      &94)+acc473(93)+acc473(92)+acc473(57)+acc473(91)+acc473(88)
      acc473(83)=Qspvak5k6*acc473(83)
      acc473(87)=-acc473(48)*acc473(82)
      acc473(88)=Qspvak3k2*acc473(47)
      acc473(89)=Qspk1*acc473(23)
      acc473(90)=Qspvak1k6*acc473(4)
      acc473(91)=Qspvak4k2*acc473(43)
      acc473(92)=Qspvak2k7*acc473(26)
      acc473(93)=QspQ*acc473(15)
      acc473(87)=acc473(93)+acc473(92)+acc473(91)+acc473(90)+acc473(89)+acc473(&
      &10)+acc473(88)+acc473(87)
      acc473(87)=QspQ*acc473(87)
      acc473(88)=acc473(34)*acc473(82)
      acc473(85)=acc473(40)*acc473(85)
      acc473(89)=Qspk1*acc473(42)
      acc473(90)=Qspvak1k6*acc473(18)
      acc473(91)=-Qspvak4k2*acc473(77)
      acc473(92)=Qspvak2k7*acc473(67)
      acc473(93)=QspQ*acc473(33)
      acc473(85)=acc473(93)+acc473(92)+acc473(91)+acc473(90)+acc473(89)+acc473(&
      &27)+acc473(85)+acc473(88)
      acc473(85)=Qspk2*acc473(85)
      acc473(88)=Qspvak3k2*acc473(49)
      acc473(89)=Qspk1*acc473(63)
      acc473(90)=Qspvak1k6*acc473(39)
      acc473(91)=Qspvak4k2*acc473(60)
      acc473(88)=acc473(91)+acc473(90)+acc473(89)+acc473(17)+acc473(88)
      acc473(88)=Qspvak2k7*acc473(88)
      acc473(89)=Qspvak3k2*acc473(62)
      acc473(90)=acc473(89)-acc473(16)
      acc473(82)=-acc473(90)*acc473(82)
      acc473(90)=acc473(41)*acc473(84)
      acc473(89)=acc473(89)+acc473(6)+acc473(90)
      acc473(89)=Qspk1*acc473(89)
      acc473(90)=-acc473(18)*acc473(84)
      acc473(91)=-acc473(13)*acc473(86)
      acc473(90)=acc473(91)+acc473(90)
      acc473(90)=Qspvak1k6*acc473(90)
      acc473(91)=acc473(77)*acc473(84)
      acc473(86)=acc473(74)*acc473(86)
      acc473(86)=acc473(19)+acc473(86)+acc473(91)
      acc473(86)=Qspvak4k2*acc473(86)
      acc473(84)=-acc473(24)*acc473(84)
      acc473(91)=Qspvak3k2*acc473(44)
      brack=acc473(12)+acc473(81)+acc473(82)+acc473(83)+acc473(84)+acc473(85)+a&
      &cc473(86)+acc473(87)+acc473(88)+acc473(89)+acc473(90)+acc473(91)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd473h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d473
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d473 = 0.0_ki
      d473 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d473, ki), aimag(d473), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d473h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd473h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d473
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d473 = 0.0_ki
      d473 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d473, ki), aimag(d473), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p4_ubaru_epnemumnmubarg_d473h1l1
