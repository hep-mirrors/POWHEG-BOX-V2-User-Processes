module     p0_dbaru_epnebbbarg_d104h5l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d104h5l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd104h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc104(74)
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspk2
      complex(ki) :: Qspl5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak1k3
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspk2 = dotproduct(Q,k2)
      Qspl5 = dotproduct(Q,l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
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
      acc104(12)=abb104(25)
      acc104(13)=abb104(26)
      acc104(14)=abb104(27)
      acc104(15)=abb104(28)
      acc104(16)=abb104(29)
      acc104(17)=abb104(30)
      acc104(18)=abb104(31)
      acc104(19)=abb104(32)
      acc104(20)=abb104(33)
      acc104(21)=abb104(35)
      acc104(22)=abb104(36)
      acc104(23)=abb104(37)
      acc104(24)=abb104(38)
      acc104(25)=abb104(39)
      acc104(26)=abb104(40)
      acc104(27)=abb104(41)
      acc104(28)=abb104(42)
      acc104(29)=abb104(43)
      acc104(30)=abb104(44)
      acc104(31)=abb104(45)
      acc104(32)=abb104(46)
      acc104(33)=abb104(47)
      acc104(34)=abb104(48)
      acc104(35)=abb104(49)
      acc104(36)=abb104(50)
      acc104(37)=abb104(51)
      acc104(38)=abb104(52)
      acc104(39)=abb104(55)
      acc104(40)=abb104(56)
      acc104(41)=abb104(59)
      acc104(42)=abb104(68)
      acc104(43)=abb104(69)
      acc104(44)=abb104(79)
      acc104(45)=abb104(83)
      acc104(46)=abb104(86)
      acc104(47)=abb104(89)
      acc104(48)=abb104(96)
      acc104(49)=abb104(105)
      acc104(50)=abb104(108)
      acc104(51)=abb104(110)
      acc104(52)=abb104(111)
      acc104(53)=abb104(112)
      acc104(54)=abb104(121)
      acc104(55)=abb104(123)
      acc104(56)=abb104(135)
      acc104(57)=abb104(154)
      acc104(58)=abb104(234)
      acc104(59)=abb104(259)
      acc104(60)=abb104(265)
      acc104(61)=abb104(273)
      acc104(62)=acc104(2)*Qspvak7k2
      acc104(63)=acc104(5)*Qspval6k2
      acc104(64)=acc104(8)*Qspval5k2
      acc104(65)=acc104(20)*Qspk7
      acc104(66)=acc104(25)*Qspl6
      acc104(67)=acc104(27)*Qspk2
      acc104(68)=acc104(30)*Qspl5
      acc104(69)=acc104(33)*Qspval6l5
      acc104(62)=acc104(69)+acc104(68)+acc104(67)+acc104(66)+acc104(65)+acc104(&
      &17)+acc104(64)+acc104(63)+acc104(62)
      acc104(62)=acc104(62)*Qspvak1k2
      acc104(63)=acc104(1)*Qspval6l5
      acc104(64)=acc104(3)*Qspval6k2
      acc104(65)=acc104(4)*Qspval5k2
      acc104(66)=acc104(6)*Qspvak7k2
      acc104(67)=acc104(11)*Qspvak4k2
      acc104(68)=acc104(35)*Qspk7
      acc104(69)=acc104(41)*Qspl6
      acc104(70)=acc104(42)*Qspl5
      acc104(71)=acc104(43)*Qspk2
      acc104(72)=acc104(46)*Qspk1
      acc104(73)=acc104(47)*Qspvak7l5
      acc104(74)=Qspvak3k2*acc104(7)
      acc104(62)=acc104(71)+acc104(70)+acc104(69)+acc104(68)+acc104(66)+acc104(&
      &65)+acc104(64)+acc104(63)+acc104(62)+acc104(74)+acc104(73)+acc104(72)+ac&
      &c104(29)+acc104(67)
      acc104(62)=Qspvak4k3*acc104(62)
      acc104(63)=acc104(7)*Qspvak4k2
      acc104(64)=acc104(16)*Qspl6
      acc104(65)=acc104(32)*Qspk7
      acc104(66)=acc104(34)*Qspval6k2
      acc104(67)=acc104(36)*Qspl5
      acc104(68)=acc104(40)*Qspk2
      acc104(69)=acc104(45)*Qspvak4k3
      acc104(70)=acc104(49)*Qspvak7l5
      acc104(71)=acc104(51)*Qspval6l5
      acc104(72)=acc104(53)*Qspval5k2
      acc104(73)=acc104(56)*Qspvak7k2
      acc104(63)=acc104(73)+acc104(72)+acc104(71)+acc104(70)+acc104(69)+acc104(&
      &68)+acc104(67)+acc104(66)+acc104(65)+acc104(64)+acc104(14)+acc104(63)
      acc104(63)=QspQ*acc104(63)
      acc104(64)=-acc104(12)*Qspvak4k2
      acc104(65)=acc104(39)*Qspvak7k2
      acc104(66)=-acc104(44)*Qspval6l5
      acc104(67)=acc104(54)*Qspval5k2
      acc104(68)=acc104(55)*Qspval6k2
      acc104(69)=-acc104(58)*Qspk7
      acc104(70)=-acc104(59)*Qspl6
      acc104(71)=-acc104(60)*Qspl5
      acc104(72)=-acc104(61)*Qspk2
      acc104(64)=acc104(72)+acc104(71)+acc104(70)+acc104(69)-acc104(57)+acc104(&
      &68)+acc104(67)+acc104(66)+acc104(65)+acc104(64)
      acc104(65)=Qspk3+Qspk4
      acc104(64)=acc104(65)*acc104(64)
      acc104(65)=acc104(18)*Qspk7
      acc104(66)=acc104(19)*Qspval6k2
      acc104(67)=acc104(21)*Qspl5
      acc104(68)=acc104(22)*Qspl6
      acc104(69)=acc104(24)*Qspval5k2
      acc104(70)=acc104(28)*Qspk2
      acc104(71)=acc104(37)*Qspvak7k2
      acc104(72)=acc104(38)*Qspval6l5
      acc104(65)=acc104(72)+acc104(71)+acc104(70)+acc104(69)+acc104(68)+acc104(&
      &67)+acc104(66)+acc104(65)+acc104(10)
      acc104(65)=Qspvak1k3*acc104(65)
      acc104(66)=Qspl6+Qspl5
      acc104(66)=acc104(50)*acc104(66)
      acc104(67)=acc104(9)*Qspval6l5
      acc104(68)=acc104(13)*Qspval6k2
      acc104(69)=acc104(15)*Qspvak7k2
      acc104(70)=acc104(23)*Qspk1
      acc104(71)=acc104(26)*Qspvak1k2
      acc104(72)=acc104(31)*Qspval5k2
      acc104(73)=acc104(48)*Qspvak7l5
      acc104(74)=acc104(52)*Qspk7
      brack=acc104(62)+acc104(63)+acc104(64)+acc104(65)+acc104(66)+acc104(67)+a&
      &cc104(68)+acc104(69)+acc104(70)+acc104(71)+acc104(72)+acc104(73)+acc104(&
      &74)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd104h5
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
   & bind(c, name="p0_dbaru_epnebbbarg_d104h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd104h5
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
end module p0_dbaru_epnebbbarg_d104h5l1
