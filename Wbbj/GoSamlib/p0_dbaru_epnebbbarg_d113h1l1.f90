module     p0_dbaru_epnebbbarg_d113h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d113h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd113h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc113(67)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak4k7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak1l6
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      QspQ = dotproduct(Q,Q)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      acc113(1)=abb113(11)
      acc113(2)=abb113(12)
      acc113(3)=abb113(13)
      acc113(4)=abb113(14)
      acc113(5)=abb113(15)
      acc113(6)=abb113(16)
      acc113(7)=abb113(17)
      acc113(8)=abb113(18)
      acc113(9)=abb113(19)
      acc113(10)=abb113(20)
      acc113(11)=abb113(21)
      acc113(12)=abb113(22)
      acc113(13)=abb113(23)
      acc113(14)=abb113(24)
      acc113(15)=abb113(25)
      acc113(16)=abb113(26)
      acc113(17)=abb113(27)
      acc113(18)=abb113(28)
      acc113(19)=abb113(30)
      acc113(20)=abb113(31)
      acc113(21)=abb113(32)
      acc113(22)=abb113(33)
      acc113(23)=abb113(34)
      acc113(24)=abb113(35)
      acc113(25)=abb113(36)
      acc113(26)=abb113(37)
      acc113(27)=abb113(38)
      acc113(28)=abb113(39)
      acc113(29)=abb113(40)
      acc113(30)=abb113(41)
      acc113(31)=abb113(42)
      acc113(32)=abb113(43)
      acc113(33)=abb113(44)
      acc113(34)=abb113(45)
      acc113(35)=abb113(46)
      acc113(36)=abb113(47)
      acc113(37)=abb113(49)
      acc113(38)=abb113(50)
      acc113(39)=abb113(52)
      acc113(40)=abb113(53)
      acc113(41)=abb113(67)
      acc113(42)=abb113(68)
      acc113(43)=abb113(73)
      acc113(44)=abb113(74)
      acc113(45)=abb113(75)
      acc113(46)=abb113(77)
      acc113(47)=abb113(79)
      acc113(48)=abb113(80)
      acc113(49)=abb113(81)
      acc113(50)=abb113(88)
      acc113(51)=abb113(92)
      acc113(52)=abb113(95)
      acc113(53)=abb113(97)
      acc113(54)=Qspvak1k2*acc113(3)
      acc113(55)=Qspvak4k2*acc113(19)
      acc113(54)=acc113(55)+acc113(13)+acc113(54)
      acc113(54)=Qspval6l5*acc113(54)
      acc113(55)=Qspvak1k2*acc113(2)
      acc113(56)=Qspvak4k2*acc113(14)
      acc113(55)=acc113(56)+acc113(6)+acc113(55)
      acc113(55)=Qspk2*acc113(55)
      acc113(56)=acc113(17)*Qspval5k2
      acc113(57)=Qspvak7k2*acc113(9)
      acc113(58)=Qspl6+Qspl5
      acc113(59)=acc113(11)*acc113(58)
      acc113(60)=Qspval6k2*acc113(7)
      acc113(61)=Qspvak1l5*acc113(16)
      acc113(62)=Qspvak1k7*acc113(21)
      acc113(63)=Qspvak4l5*acc113(8)
      acc113(64)=Qspvak4k7*acc113(23)
      acc113(65)=Qspvak1k2*acc113(1)
      acc113(66)=Qspvak4k2*acc113(12)
      acc113(67)=QspQ*acc113(37)
      acc113(54)=acc113(55)+acc113(54)+acc113(67)+acc113(66)+acc113(65)+acc113(&
      &64)+acc113(63)+acc113(62)+acc113(61)+acc113(60)+acc113(59)+acc113(57)+ac&
      &c113(56)+acc113(5)
      acc113(54)=Qspvak2k7*acc113(54)
      acc113(55)=acc113(44)*acc113(58)
      acc113(56)=Qspvak1k7*acc113(26)
      acc113(57)=Qspvak4k7*acc113(41)
      acc113(58)=Qspk7*acc113(51)
      acc113(59)=Qspvak1k2*acc113(29)
      acc113(60)=Qspvak4k2*acc113(52)
      acc113(61)=QspQ*acc113(10)
      acc113(62)=Qspval6l5*acc113(34)
      acc113(63)=Qspk2*acc113(4)
      acc113(55)=acc113(63)+acc113(62)+acc113(61)+acc113(60)+acc113(59)+acc113(&
      &58)+acc113(57)+acc113(56)+acc113(20)+acc113(55)
      acc113(55)=Qspk2*acc113(55)
      acc113(56)=Qspval6k2*acc113(33)
      acc113(57)=Qspvak1l5*acc113(39)
      acc113(58)=Qspvak4l5*acc113(48)
      acc113(59)=Qspvak1k2*acc113(31)
      acc113(60)=Qspvak4k2*acc113(53)
      acc113(56)=acc113(60)+acc113(59)+acc113(58)+acc113(57)+acc113(15)+acc113(&
      &56)
      acc113(56)=QspQ*acc113(56)
      acc113(57)=Qspvak1k7*acc113(27)
      acc113(58)=Qspvak4k7*acc113(46)
      acc113(59)=Qspk7*acc113(32)
      acc113(60)=QspQ*acc113(28)
      acc113(57)=acc113(60)+acc113(59)+acc113(58)+acc113(30)+acc113(57)
      acc113(57)=Qspval6l5*acc113(57)
      acc113(58)=Qspval6k2*acc113(35)
      acc113(59)=Qspvak1l5*acc113(40)
      acc113(60)=Qspvak4l5*acc113(49)
      acc113(58)=acc113(60)+acc113(59)+acc113(45)+acc113(58)
      acc113(58)=Qspk7*acc113(58)
      acc113(59)=acc113(47)*Qspvak4l6
      acc113(60)=acc113(38)*Qspvak1l6
      acc113(61)=Qspvak7k2*acc113(18)
      acc113(62)=Qspvak1l5*acc113(36)
      acc113(63)=Qspvak1k7*acc113(24)
      acc113(64)=Qspvak4l5*acc113(43)
      acc113(65)=Qspvak4k7*acc113(42)
      acc113(66)=Qspvak1k2*acc113(25)
      acc113(67)=Qspvak4k2*acc113(50)
      brack=acc113(22)+acc113(54)+acc113(55)+acc113(56)+acc113(57)+acc113(58)+a&
      &cc113(59)+acc113(60)+acc113(61)+acc113(62)+acc113(63)+acc113(64)+acc113(&
      &65)+acc113(66)+acc113(67)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd113h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d113
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d113 = 0.0_ki
      d113 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d113, ki), aimag(d113), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d113h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd113h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d113
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d113 = 0.0_ki
      d113 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d113, ki), aimag(d113), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d113h1l1
