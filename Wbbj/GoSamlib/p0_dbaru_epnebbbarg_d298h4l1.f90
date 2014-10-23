module     p0_dbaru_epnebbbarg_d298h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d298h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd298h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc298(73)
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k7
      complex(ki) :: QspQ
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k3
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k7 = dotproduct(Q,spval5k7)
      QspQ = dotproduct(Q,Q)
      Qspl5 = dotproduct(Q,l5)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k3 = dotproduct(Q,spval6k3)
      acc298(1)=abb298(10)
      acc298(2)=abb298(11)
      acc298(3)=abb298(12)
      acc298(4)=abb298(13)
      acc298(5)=abb298(14)
      acc298(6)=abb298(15)
      acc298(7)=abb298(16)
      acc298(8)=abb298(17)
      acc298(9)=abb298(18)
      acc298(10)=abb298(19)
      acc298(11)=abb298(20)
      acc298(12)=abb298(21)
      acc298(13)=abb298(22)
      acc298(14)=abb298(23)
      acc298(15)=abb298(24)
      acc298(16)=abb298(25)
      acc298(17)=abb298(26)
      acc298(18)=abb298(27)
      acc298(19)=abb298(28)
      acc298(20)=abb298(29)
      acc298(21)=abb298(30)
      acc298(22)=abb298(31)
      acc298(23)=abb298(32)
      acc298(24)=abb298(33)
      acc298(25)=abb298(34)
      acc298(26)=abb298(35)
      acc298(27)=abb298(36)
      acc298(28)=abb298(37)
      acc298(29)=abb298(38)
      acc298(30)=abb298(39)
      acc298(31)=abb298(40)
      acc298(32)=abb298(41)
      acc298(33)=abb298(42)
      acc298(34)=abb298(43)
      acc298(35)=abb298(44)
      acc298(36)=abb298(45)
      acc298(37)=abb298(46)
      acc298(38)=abb298(47)
      acc298(39)=abb298(48)
      acc298(40)=abb298(49)
      acc298(41)=abb298(50)
      acc298(42)=abb298(51)
      acc298(43)=abb298(52)
      acc298(44)=abb298(53)
      acc298(45)=abb298(59)
      acc298(46)=abb298(60)
      acc298(47)=abb298(62)
      acc298(48)=abb298(63)
      acc298(49)=abb298(66)
      acc298(50)=abb298(70)
      acc298(51)=abb298(76)
      acc298(52)=abb298(77)
      acc298(53)=abb298(78)
      acc298(54)=abb298(79)
      acc298(55)=abb298(80)
      acc298(56)=abb298(81)
      acc298(57)=abb298(84)
      acc298(58)=abb298(87)
      acc298(59)=abb298(88)
      acc298(60)=abb298(89)
      acc298(61)=abb298(99)
      acc298(62)=Qspval5k1*acc298(25)
      acc298(63)=Qspval5k3*acc298(34)
      acc298(64)=Qspval5k7*acc298(29)
      acc298(65)=QspQ*acc298(26)
      acc298(66)=Qspl5*acc298(8)
      acc298(67)=Qspval5l6*acc298(30)
      acc298(68)=Qspk2*acc298(18)
      acc298(62)=acc298(68)+acc298(67)+acc298(66)+acc298(65)+acc298(64)+acc298(&
      &63)+acc298(5)+acc298(62)
      acc298(62)=Qspvak1k2*acc298(62)
      acc298(63)=Qspvak4k2*acc298(17)
      acc298(64)=Qspvak4k3*acc298(57)
      acc298(65)=Qspk2*acc298(55)
      acc298(66)=Qspval6k2*acc298(37)
      acc298(67)=Qspvak4k3*acc298(44)
      acc298(67)=acc298(40)+acc298(67)
      acc298(67)=Qspvak1k2*acc298(67)
      acc298(68)=Qspval5k2*acc298(49)
      acc298(63)=acc298(68)+acc298(67)+acc298(66)+acc298(65)+acc298(64)+acc298(&
      &42)+acc298(63)
      acc298(63)=Qspval5k2*acc298(63)
      acc298(64)=Qspvak4k2*acc298(12)
      acc298(65)=Qspval5k1*acc298(51)
      acc298(66)=Qspval5k3*acc298(52)
      acc298(67)=Qspval5k7*acc298(50)
      acc298(68)=QspQ*acc298(48)
      acc298(69)=Qspl5*acc298(19)
      acc298(70)=Qspval5l6*acc298(59)
      acc298(71)=Qspk2*acc298(43)
      acc298(72)=Qspval6k2*acc298(54)
      acc298(73)=Qspval5k2*acc298(61)
      acc298(73)=acc298(53)+acc298(73)
      acc298(73)=Qspvak7k2*acc298(73)
      acc298(62)=acc298(73)+acc298(63)+acc298(62)+acc298(72)+acc298(71)+acc298(&
      &70)+acc298(69)+acc298(68)+acc298(67)+acc298(66)+acc298(65)+acc298(15)+ac&
      &c298(64)
      acc298(62)=Qspvak7k2*acc298(62)
      acc298(63)=acc298(36)*Qspval6l5
      acc298(64)=acc298(35)*Qspval6k3
      acc298(65)=Qspvak4k2*acc298(16)
      acc298(66)=Qspvak4k3*acc298(10)
      acc298(67)=Qspk2*acc298(39)
      acc298(68)=Qspvak4k3*acc298(1)
      acc298(68)=acc298(11)+acc298(68)
      acc298(68)=Qspval6k2*acc298(68)
      acc298(69)=Qspvak4k3*acc298(41)
      acc298(69)=acc298(13)+acc298(69)
      acc298(69)=Qspvak1k2*acc298(69)
      acc298(70)=Qspval5k2*acc298(38)
      acc298(63)=acc298(70)+acc298(69)+acc298(68)+acc298(67)+acc298(66)+acc298(&
      &65)+acc298(4)+acc298(63)+acc298(64)
      acc298(63)=Qspval5k2*acc298(63)
      acc298(64)=Qspval5k1*acc298(22)
      acc298(65)=Qspval5k3*acc298(31)
      acc298(66)=Qspval5k7*acc298(28)
      acc298(67)=QspQ*acc298(14)
      acc298(68)=Qspl5*acc298(6)
      acc298(69)=Qspval5l6*acc298(7)
      acc298(70)=Qspk2*acc298(9)
      acc298(64)=acc298(70)+acc298(69)+acc298(68)+acc298(67)+acc298(66)+acc298(&
      &65)+acc298(2)+acc298(64)
      acc298(64)=Qspvak1k2*acc298(64)
      acc298(65)=QspQ*acc298(45)
      acc298(66)=Qspl5*acc298(46)
      acc298(67)=Qspval5l6*acc298(21)
      acc298(68)=Qspk2*acc298(47)
      acc298(65)=acc298(68)+acc298(67)+acc298(66)+acc298(32)+acc298(65)
      acc298(65)=Qspval6k2*acc298(65)
      acc298(66)=Qspvak4k2*acc298(3)
      acc298(67)=Qspval5k1*acc298(56)
      acc298(68)=Qspval5k3*acc298(60)
      acc298(69)=Qspval5k7*acc298(23)
      acc298(70)=QspQ*acc298(24)
      acc298(71)=Qspl5*acc298(27)
      acc298(72)=Qspval5l6*acc298(58)
      acc298(73)=Qspk2*acc298(33)
      brack=acc298(20)+acc298(62)+acc298(63)+acc298(64)+acc298(65)+acc298(66)+a&
      &cc298(67)+acc298(68)+acc298(69)+acc298(70)+acc298(71)+acc298(72)+acc298(&
      &73)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd298h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d298
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d298 = 0.0_ki
      d298 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d298, ki), aimag(d298), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d298h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd298h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d298
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d298 = 0.0_ki
      d298 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d298, ki), aimag(d298), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d298h4l1
