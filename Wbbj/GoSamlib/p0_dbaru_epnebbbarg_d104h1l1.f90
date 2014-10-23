module     p0_dbaru_epnebbbarg_d104h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d104h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd104h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc104(85)
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak1k3
      Qspk2 = dotproduct(Q,k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      acc104(1)=abb104(13)
      acc104(2)=abb104(14)
      acc104(3)=abb104(15)
      acc104(4)=abb104(16)
      acc104(5)=abb104(17)
      acc104(6)=abb104(18)
      acc104(7)=abb104(19)
      acc104(8)=abb104(20)
      acc104(9)=abb104(21)
      acc104(10)=abb104(22)
      acc104(11)=abb104(23)
      acc104(12)=abb104(24)
      acc104(13)=abb104(25)
      acc104(14)=abb104(26)
      acc104(15)=abb104(27)
      acc104(16)=abb104(28)
      acc104(17)=abb104(29)
      acc104(18)=abb104(30)
      acc104(19)=abb104(31)
      acc104(20)=abb104(32)
      acc104(21)=abb104(33)
      acc104(22)=abb104(34)
      acc104(23)=abb104(35)
      acc104(24)=abb104(36)
      acc104(25)=abb104(37)
      acc104(26)=abb104(38)
      acc104(27)=abb104(39)
      acc104(28)=abb104(40)
      acc104(29)=abb104(41)
      acc104(30)=abb104(42)
      acc104(31)=abb104(43)
      acc104(32)=abb104(44)
      acc104(33)=abb104(45)
      acc104(34)=abb104(46)
      acc104(35)=abb104(47)
      acc104(36)=abb104(48)
      acc104(37)=abb104(50)
      acc104(38)=abb104(51)
      acc104(39)=abb104(53)
      acc104(40)=abb104(54)
      acc104(41)=abb104(57)
      acc104(42)=abb104(58)
      acc104(43)=abb104(60)
      acc104(44)=abb104(61)
      acc104(45)=abb104(62)
      acc104(46)=abb104(71)
      acc104(47)=abb104(72)
      acc104(48)=abb104(74)
      acc104(49)=abb104(106)
      acc104(50)=abb104(114)
      acc104(51)=abb104(115)
      acc104(52)=abb104(121)
      acc104(53)=abb104(122)
      acc104(54)=abb104(129)
      acc104(55)=abb104(136)
      acc104(56)=abb104(161)
      acc104(57)=abb104(173)
      acc104(58)=abb104(176)
      acc104(59)=abb104(188)
      acc104(60)=abb104(238)
      acc104(61)=abb104(243)
      acc104(62)=abb104(257)
      acc104(63)=abb104(282)
      acc104(64)=abb104(354)
      acc104(65)=abb104(374)
      acc104(66)=abb104(384)
      acc104(67)=abb104(394)
      acc104(68)=abb104(401)
      acc104(69)=acc104(10)*Qspk2
      acc104(70)=acc104(15)*Qspval6k7
      acc104(71)=acc104(23)*Qspvak2k7
      acc104(72)=acc104(30)*Qspval6l5
      acc104(73)=acc104(36)*Qspk7
      acc104(74)=acc104(37)*Qspl6
      acc104(75)=acc104(38)*Qspl5
      acc104(69)=acc104(75)+acc104(74)+acc104(73)+acc104(72)+acc104(29)+acc104(&
      &71)+acc104(70)+acc104(69)
      acc104(69)=acc104(69)*Qspvak1k2
      acc104(70)=acc104(1)*Qspval6k2
      acc104(71)=acc104(4)*Qspval5k2
      acc104(72)=acc104(8)*Qspvak7k2
      acc104(73)=acc104(9)*Qspk1
      acc104(74)=acc104(16)*Qspval6k7
      acc104(75)=acc104(17)*Qspval6l5
      acc104(76)=acc104(19)*Qspvak4k2
      acc104(77)=acc104(20)*Qspvak2k7
      acc104(78)=acc104(32)*Qspvak2l5
      acc104(79)=acc104(39)*Qspl6
      acc104(80)=acc104(43)*Qspk7
      acc104(81)=acc104(44)*Qspk2
      acc104(82)=acc104(45)*Qspvak2l6
      acc104(83)=acc104(47)*Qspl5
      acc104(84)=-Qspvak3k2*acc104(41)
      acc104(69)=acc104(83)+acc104(81)+acc104(80)+acc104(79)+acc104(77)+acc104(&
      &75)+acc104(74)+acc104(69)+acc104(84)+acc104(82)+acc104(78)+acc104(76)+ac&
      &c104(73)+acc104(72)+acc104(5)+acc104(71)+acc104(70)
      acc104(69)=Qspvak4k3*acc104(69)
      acc104(70)=-acc104(41)*Qspvak4k2
      acc104(71)=acc104(7)*Qspvak4k3
      acc104(72)=acc104(13)*Qspvak2l5
      acc104(73)=acc104(25)*Qspvak2k7
      acc104(74)=acc104(31)*Qspvak2l6
      acc104(75)=acc104(42)*Qspk7
      acc104(76)=acc104(49)*Qspval6k2
      acc104(77)=acc104(51)*Qspl6
      acc104(78)=acc104(54)*Qspl5
      acc104(79)=acc104(55)*Qspk2
      acc104(80)=acc104(57)*Qspval5k2
      acc104(81)=acc104(58)*Qspvak7k2
      acc104(82)=acc104(60)*Qspval6l5
      acc104(83)=acc104(63)*Qspval6k7
      acc104(70)=acc104(83)+acc104(82)+acc104(81)+acc104(80)+acc104(79)+acc104(&
      &78)+acc104(77)+acc104(76)+acc104(75)+acc104(74)+acc104(73)+acc104(14)+ac&
      &c104(72)+acc104(71)+acc104(70)
      acc104(70)=QspQ*acc104(70)
      acc104(71)=acc104(18)*Qspvak2k7
      acc104(72)=acc104(48)*Qspvak4k2
      acc104(73)=-acc104(59)*Qspk2
      acc104(74)=-acc104(64)*Qspval6k7
      acc104(75)=acc104(65)*Qspval6l5
      acc104(76)=acc104(66)*Qspl6
      acc104(77)=acc104(67)*Qspk7
      acc104(78)=-acc104(68)*Qspl5
      acc104(71)=acc104(78)+acc104(77)+acc104(76)+acc104(75)+acc104(74)+acc104(&
      &73)+acc104(56)+acc104(72)+acc104(71)
      acc104(72)=Qspk3+Qspk4
      acc104(71)=acc104(72)*acc104(71)
      acc104(72)=acc104(3)*Qspk2
      acc104(73)=acc104(11)*Qspval6k7
      acc104(74)=acc104(24)*Qspvak2k7
      acc104(75)=acc104(26)*Qspl5
      acc104(76)=acc104(33)*Qspk7
      acc104(77)=acc104(34)*Qspl6
      acc104(78)=acc104(35)*Qspval6l5
      acc104(72)=acc104(78)+acc104(77)+acc104(76)+acc104(75)+acc104(74)+acc104(&
      &22)+acc104(73)+acc104(72)
      acc104(72)=Qspvak1k3*acc104(72)
      acc104(73)=Qspl6+Qspl5
      acc104(73)=acc104(46)*acc104(73)
      acc104(74)=acc104(2)*Qspvak2k7
      acc104(75)=acc104(6)*Qspvak1k2
      acc104(76)=acc104(12)*Qspvak2l5
      acc104(77)=acc104(21)*Qspval6k2
      acc104(78)=acc104(27)*Qspvak2l6
      acc104(79)=acc104(28)*Qspk2
      acc104(80)=acc104(40)*Qspk1
      acc104(81)=acc104(50)*Qspval5k2
      acc104(82)=acc104(52)*Qspvak7k2
      acc104(83)=acc104(53)*Qspk7
      acc104(84)=acc104(61)*Qspval6l5
      acc104(85)=acc104(62)*Qspval6k7
      brack=acc104(69)+acc104(70)+acc104(71)+acc104(72)+acc104(73)+acc104(74)+a&
      &cc104(75)+acc104(76)+acc104(77)+acc104(78)+acc104(79)+acc104(80)+acc104(&
      &81)+acc104(82)+acc104(83)+acc104(84)+acc104(85)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd104h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d104
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d104 = 0.0_ki
      d104 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d104, ki), aimag(d104), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d104h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd104h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d104
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d104 = 0.0_ki
      d104 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d104, ki), aimag(d104), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d104h1l1
