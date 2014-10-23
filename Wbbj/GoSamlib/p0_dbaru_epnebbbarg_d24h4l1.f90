module     p0_dbaru_epnebbbarg_d24h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d24h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd24h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc24(70)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6l5
      complex(ki) :: QspQ
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      QspQ = dotproduct(Q,Q)
      acc24(1)=abb24(16)
      acc24(2)=abb24(17)
      acc24(3)=abb24(18)
      acc24(4)=abb24(19)
      acc24(5)=abb24(20)
      acc24(6)=abb24(21)
      acc24(7)=abb24(22)
      acc24(8)=abb24(23)
      acc24(9)=abb24(24)
      acc24(10)=abb24(25)
      acc24(11)=abb24(26)
      acc24(12)=abb24(27)
      acc24(13)=abb24(29)
      acc24(14)=abb24(32)
      acc24(15)=abb24(33)
      acc24(16)=abb24(37)
      acc24(17)=abb24(38)
      acc24(18)=abb24(39)
      acc24(19)=abb24(40)
      acc24(20)=abb24(41)
      acc24(21)=abb24(43)
      acc24(22)=abb24(44)
      acc24(23)=abb24(45)
      acc24(24)=abb24(46)
      acc24(25)=abb24(49)
      acc24(26)=abb24(51)
      acc24(27)=abb24(53)
      acc24(28)=abb24(54)
      acc24(29)=abb24(56)
      acc24(30)=abb24(57)
      acc24(31)=abb24(58)
      acc24(32)=abb24(59)
      acc24(33)=abb24(60)
      acc24(34)=abb24(62)
      acc24(35)=abb24(63)
      acc24(36)=abb24(68)
      acc24(37)=abb24(73)
      acc24(38)=abb24(88)
      acc24(39)=abb24(94)
      acc24(40)=abb24(105)
      acc24(41)=abb24(114)
      acc24(42)=abb24(115)
      acc24(43)=abb24(118)
      acc24(44)=abb24(159)
      acc24(45)=abb24(164)
      acc24(46)=abb24(201)
      acc24(47)=abb24(203)
      acc24(48)=abb24(210)
      acc24(49)=abb24(222)
      acc24(50)=abb24(231)
      acc24(51)=Qspl6+Qspl5
      acc24(52)=acc24(46)*acc24(51)
      acc24(53)=Qspk1*acc24(49)
      acc24(54)=Qspk7*acc24(47)
      acc24(55)=Qspvak1k3*acc24(35)
      acc24(56)=Qspvak4k2*acc24(18)
      acc24(57)=Qspvak4k3*acc24(28)
      acc24(58)=Qspvak7k3*acc24(50)
      acc24(59)=Qspk4+Qspk3
      acc24(60)=-acc24(48)*acc24(59)
      acc24(61)=Qspk2*acc24(44)
      acc24(62)=Qspvak1k2*acc24(3)
      acc24(63)=Qspvak1l5*acc24(29)
      acc24(64)=Qspvak1l6*acc24(32)
      acc24(65)=Qspvak7k2*acc24(6)
      acc24(66)=Qspval5k2*acc24(11)
      acc24(67)=Qspval6k2*acc24(40)
      acc24(52)=acc24(67)+acc24(66)+acc24(65)+acc24(64)+acc24(63)+acc24(62)+acc&
      &24(61)+acc24(60)+acc24(58)+acc24(57)+acc24(56)+acc24(55)+acc24(54)+acc24&
      &(22)+acc24(53)+acc24(52)
      acc24(52)=Qspval6k2*acc24(52)
      acc24(51)=acc24(12)*acc24(51)
      acc24(53)=Qspk1*acc24(30)
      acc24(54)=Qspk7*acc24(19)
      acc24(55)=Qspvak1k3*acc24(34)
      acc24(56)=Qspvak4k2*acc24(14)
      acc24(57)=Qspvak4k3*acc24(16)
      acc24(58)=Qspvak7k3*acc24(37)
      acc24(59)=-acc24(36)*acc24(59)
      acc24(60)=Qspk2*acc24(20)
      acc24(61)=Qspvak1k2*acc24(7)
      acc24(62)=Qspvak1l5*acc24(27)
      acc24(63)=Qspvak1l6*acc24(31)
      acc24(64)=Qspvak7k2*acc24(2)
      acc24(65)=Qspval5k2*acc24(15)
      acc24(51)=acc24(65)+acc24(64)+acc24(63)+acc24(62)+acc24(61)+acc24(60)+acc&
      &24(59)+acc24(58)+acc24(57)+acc24(56)+acc24(55)+acc24(54)+acc24(10)+acc24&
      &(53)+acc24(51)
      acc24(51)=Qspval5k2*acc24(51)
      acc24(53)=acc24(45)*Qspval6k1
      acc24(54)=acc24(43)*Qspval6k3
      acc24(55)=acc24(42)*Qspval6k7
      acc24(56)=acc24(41)*Qspval5k7
      acc24(57)=acc24(38)*Qspvak7l6
      acc24(58)=acc24(33)*Qspval5l6
      acc24(59)=acc24(26)*Qspval5k1
      acc24(60)=acc24(25)*Qspvak7l5
      acc24(61)=acc24(23)*Qspval5k3
      acc24(62)=acc24(17)*Qspval6l5
      acc24(63)=acc24(13)*QspQ
      acc24(64)=Qspk2*acc24(4)
      acc24(65)=Qspl5*acc24(5)
      acc24(66)=Qspl6*acc24(9)
      acc24(67)=Qspvak1k2*acc24(1)
      acc24(68)=Qspvak1l5*acc24(24)
      acc24(69)=Qspvak1l6*acc24(21)
      acc24(70)=Qspvak7k2*acc24(8)
      brack=acc24(39)+acc24(51)+acc24(52)+acc24(53)+acc24(54)+acc24(55)+acc24(5&
      &6)+acc24(57)+acc24(58)+acc24(59)+acc24(60)+acc24(61)+acc24(62)+acc24(63)&
      &+acc24(64)+acc24(65)+acc24(66)+acc24(67)+acc24(68)+acc24(69)+acc24(70)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd24h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d24
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d24 = 0.0_ki
      d24 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d24, ki), aimag(d24), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d24h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd24h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d24
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d24 = 0.0_ki
      d24 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d24, ki), aimag(d24), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d24h4l1
