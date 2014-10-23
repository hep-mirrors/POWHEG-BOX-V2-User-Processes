module     p0_dbaru_epnebbbarg_d293h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d293h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd293h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc293(70)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5l6
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k2
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc293(1)=abb293(10)
      acc293(2)=abb293(11)
      acc293(3)=abb293(12)
      acc293(4)=abb293(13)
      acc293(5)=abb293(14)
      acc293(6)=abb293(15)
      acc293(7)=abb293(16)
      acc293(8)=abb293(17)
      acc293(9)=abb293(18)
      acc293(10)=abb293(19)
      acc293(11)=abb293(20)
      acc293(12)=abb293(21)
      acc293(13)=abb293(22)
      acc293(14)=abb293(23)
      acc293(15)=abb293(24)
      acc293(16)=abb293(25)
      acc293(17)=abb293(26)
      acc293(18)=abb293(27)
      acc293(19)=abb293(28)
      acc293(20)=abb293(29)
      acc293(21)=abb293(30)
      acc293(22)=abb293(31)
      acc293(23)=abb293(32)
      acc293(24)=abb293(33)
      acc293(25)=abb293(34)
      acc293(26)=abb293(35)
      acc293(27)=abb293(36)
      acc293(28)=abb293(37)
      acc293(29)=abb293(38)
      acc293(30)=abb293(39)
      acc293(31)=abb293(40)
      acc293(32)=abb293(41)
      acc293(33)=abb293(42)
      acc293(34)=abb293(43)
      acc293(35)=abb293(44)
      acc293(36)=abb293(45)
      acc293(37)=abb293(46)
      acc293(38)=abb293(47)
      acc293(39)=abb293(48)
      acc293(40)=abb293(49)
      acc293(41)=abb293(50)
      acc293(42)=abb293(51)
      acc293(43)=abb293(53)
      acc293(44)=abb293(54)
      acc293(45)=abb293(56)
      acc293(46)=abb293(58)
      acc293(47)=abb293(73)
      acc293(48)=abb293(74)
      acc293(49)=abb293(80)
      acc293(50)=abb293(88)
      acc293(51)=abb293(89)
      acc293(52)=abb293(90)
      acc293(53)=abb293(91)
      acc293(54)=abb293(92)
      acc293(55)=abb293(93)
      acc293(56)=abb293(94)
      acc293(57)=abb293(95)
      acc293(58)=abb293(96)
      acc293(59)=Qspk7+Qspl5
      acc293(60)=-acc293(3)*acc293(59)
      acc293(61)=Qspval5k1*acc293(34)
      acc293(62)=Qspval5k3*acc293(25)
      acc293(63)=Qspval5l6*acc293(28)
      acc293(64)=QspQ*acc293(7)
      acc293(65)=Qspk2*acc293(24)
      acc293(66)=Qspvak4k3*acc293(36)
      acc293(66)=acc293(17)+acc293(66)
      acc293(66)=Qspval5k2*acc293(66)
      acc293(60)=acc293(66)+acc293(65)+acc293(64)+acc293(63)+acc293(62)+acc293(&
      &2)+acc293(61)+acc293(60)
      acc293(60)=Qspvak1k2*acc293(60)
      acc293(61)=Qspvak4k3*acc293(58)
      acc293(62)=Qspval6k2*acc293(54)
      acc293(63)=Qspk2*acc293(47)
      acc293(64)=Qspvak4k2*acc293(31)
      acc293(65)=Qspval5k2*acc293(50)
      acc293(61)=acc293(65)+acc293(64)+acc293(63)+acc293(62)+acc293(49)+acc293(&
      &61)
      acc293(61)=Qspval5k2*acc293(61)
      acc293(62)=acc293(39)*acc293(59)
      acc293(63)=Qspval5k1*acc293(56)
      acc293(64)=Qspval5k3*acc293(1)
      acc293(65)=Qspval5l6*acc293(45)
      acc293(66)=Qspval6k2*acc293(43)
      acc293(67)=QspQ*acc293(41)
      acc293(68)=Qspk2*acc293(40)
      acc293(69)=Qspvak4k2*acc293(11)
      acc293(70)=Qspval5k2*acc293(51)
      acc293(70)=acc293(44)+acc293(70)
      acc293(70)=Qspvak7k2*acc293(70)
      acc293(60)=acc293(70)+acc293(60)+acc293(61)+acc293(69)+acc293(68)+acc293(&
      &67)+acc293(66)+acc293(65)+acc293(64)+acc293(23)+acc293(63)+acc293(62)
      acc293(60)=Qspvak7k2*acc293(60)
      acc293(61)=acc293(38)*acc293(59)
      acc293(62)=QspQ*acc293(42)
      acc293(63)=Qspk2*acc293(13)
      acc293(61)=acc293(63)+acc293(62)+acc293(61)
      acc293(61)=Qspvak4k2*acc293(61)
      acc293(62)=Qspval5k1*acc293(30)
      acc293(63)=Qspval5k3*acc293(29)
      acc293(64)=Qspval5l6*acc293(26)
      acc293(65)=QspQ*acc293(6)
      acc293(66)=Qspl5*acc293(10)
      acc293(67)=Qspk7*acc293(9)
      acc293(68)=Qspk2*acc293(18)
      acc293(69)=Qspvak4k3*acc293(35)
      acc293(69)=acc293(5)+acc293(69)
      acc293(69)=Qspval5k2*acc293(69)
      acc293(61)=acc293(69)+acc293(61)+acc293(68)+acc293(67)+acc293(66)+acc293(&
      &65)+acc293(64)+acc293(63)+acc293(4)+acc293(62)
      acc293(61)=Qspvak1k2*acc293(61)
      acc293(62)=Qspvak4k3*acc293(57)
      acc293(63)=Qspval6k2*acc293(53)
      acc293(64)=Qspk2*acc293(48)
      acc293(65)=Qspvak4k2*acc293(33)
      acc293(66)=Qspval5k2*acc293(52)
      acc293(62)=acc293(66)+acc293(65)+acc293(64)+acc293(63)+acc293(32)+acc293(&
      &62)
      acc293(62)=Qspval5k2*acc293(62)
      acc293(59)=-acc293(21)*acc293(59)
      acc293(63)=QspQ*acc293(8)
      acc293(64)=Qspk2*acc293(14)
      acc293(59)=acc293(64)+acc293(12)+acc293(63)+acc293(59)
      acc293(59)=Qspvak4k2*acc293(59)
      acc293(63)=Qspval5k1*acc293(55)
      acc293(64)=Qspval5k3*acc293(46)
      acc293(65)=Qspval5l6*acc293(16)
      acc293(66)=Qspval6k2*acc293(37)
      acc293(67)=QspQ*acc293(19)
      acc293(68)=Qspl5*acc293(27)
      acc293(69)=Qspk7*acc293(22)
      acc293(70)=Qspk2*acc293(15)
      brack=acc293(20)+acc293(59)+acc293(60)+acc293(61)+acc293(62)+acc293(63)+a&
      &cc293(64)+acc293(65)+acc293(66)+acc293(67)+acc293(68)+acc293(69)+acc293(&
      &70)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd293h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d293
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d293 = 0.0_ki
      d293 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d293, ki), aimag(d293), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d293h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd293h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d293
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d293 = 0.0_ki
      d293 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d293, ki), aimag(d293), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d293h4l1
