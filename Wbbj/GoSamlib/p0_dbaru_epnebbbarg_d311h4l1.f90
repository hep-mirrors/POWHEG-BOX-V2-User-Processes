module     p0_dbaru_epnebbbarg_d311h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d311h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd311h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc311(66)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k3
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k1
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      acc311(1)=abb311(11)
      acc311(2)=abb311(12)
      acc311(3)=abb311(13)
      acc311(4)=abb311(14)
      acc311(5)=abb311(15)
      acc311(6)=abb311(16)
      acc311(7)=abb311(18)
      acc311(8)=abb311(20)
      acc311(9)=abb311(22)
      acc311(10)=abb311(23)
      acc311(11)=abb311(24)
      acc311(12)=abb311(25)
      acc311(13)=abb311(27)
      acc311(14)=abb311(28)
      acc311(15)=abb311(29)
      acc311(16)=abb311(30)
      acc311(17)=abb311(31)
      acc311(18)=abb311(32)
      acc311(19)=abb311(34)
      acc311(20)=abb311(35)
      acc311(21)=abb311(36)
      acc311(22)=abb311(37)
      acc311(23)=abb311(38)
      acc311(24)=abb311(39)
      acc311(25)=abb311(41)
      acc311(26)=abb311(42)
      acc311(27)=abb311(43)
      acc311(28)=abb311(44)
      acc311(29)=abb311(45)
      acc311(30)=abb311(46)
      acc311(31)=abb311(48)
      acc311(32)=abb311(51)
      acc311(33)=abb311(52)
      acc311(34)=abb311(53)
      acc311(35)=abb311(55)
      acc311(36)=abb311(57)
      acc311(37)=abb311(59)
      acc311(38)=abb311(60)
      acc311(39)=abb311(62)
      acc311(40)=abb311(67)
      acc311(41)=abb311(70)
      acc311(42)=abb311(71)
      acc311(43)=abb311(76)
      acc311(44)=abb311(80)
      acc311(45)=abb311(81)
      acc311(46)=abb311(89)
      acc311(47)=abb311(102)
      acc311(48)=abb311(106)
      acc311(49)=abb311(107)
      acc311(50)=Qspk4+Qspk3
      acc311(51)=-acc311(34)*acc311(50)
      acc311(52)=Qspvak4k3*acc311(24)
      acc311(53)=Qspvak4k2*acc311(19)
      acc311(51)=acc311(53)+acc311(52)+acc311(13)+acc311(51)
      acc311(51)=Qspvak4k2*acc311(51)
      acc311(52)=Qspk2-acc311(50)
      acc311(52)=acc311(37)*acc311(52)
      acc311(53)=Qspvak4k3*acc311(15)
      acc311(54)=Qspvak4k2*acc311(2)
      acc311(52)=acc311(54)+acc311(53)+acc311(18)+acc311(52)
      acc311(52)=Qspval6k2*acc311(52)
      acc311(53)=-acc311(39)*acc311(50)
      acc311(54)=Qspvak1k2*acc311(4)
      acc311(55)=Qspvak1k3*acc311(33)
      acc311(56)=Qspval5k2*acc311(45)
      acc311(57)=Qspval5k3*acc311(44)
      acc311(58)=Qspval6k3*acc311(49)
      acc311(59)=QspQ*acc311(40)
      acc311(60)=Qspl6*acc311(29)
      acc311(61)=Qspk7*acc311(12)
      acc311(62)=-acc311(47)*Qspval6k7
      acc311(63)=Qspk2*acc311(36)
      acc311(64)=Qspvak3k2*acc311(16)
      acc311(64)=acc311(20)+acc311(64)
      acc311(64)=Qspvak4k3*acc311(64)
      acc311(65)=Qspvak7k2*acc311(27)
      acc311(51)=acc311(65)+acc311(52)+acc311(51)+acc311(64)+acc311(63)+acc311(&
      &62)+acc311(61)+acc311(60)+acc311(59)+acc311(58)+acc311(57)+acc311(56)+ac&
      &c311(55)+acc311(10)+acc311(54)+acc311(53)
      acc311(51)=Qspvak7k2*acc311(51)
      acc311(52)=-acc311(31)*acc311(50)
      acc311(53)=QspQ*acc311(21)
      acc311(54)=-Qspl6+Qspk7
      acc311(54)=acc311(47)*acc311(54)
      acc311(55)=Qspk2*acc311(17)
      acc311(56)=Qspvak4k3*acc311(7)
      acc311(57)=Qspvak4k2*acc311(5)
      acc311(52)=acc311(57)+acc311(56)+acc311(55)+acc311(54)+acc311(3)+acc311(5&
      &3)+acc311(52)
      acc311(52)=Qspval6k2*acc311(52)
      acc311(53)=-acc311(35)*acc311(50)
      acc311(54)=Qspvak4k3*acc311(26)
      acc311(55)=Qspvak4k2*acc311(6)
      acc311(53)=acc311(55)+acc311(54)+acc311(11)+acc311(53)
      acc311(53)=Qspvak4k2*acc311(53)
      acc311(50)=-acc311(43)*acc311(50)
      acc311(54)=acc311(48)*Qspval6l5
      acc311(55)=acc311(8)*Qspval6k1
      acc311(56)=Qspvak1k2*acc311(1)
      acc311(57)=Qspvak1k3*acc311(32)
      acc311(58)=Qspval5k2*acc311(41)
      acc311(59)=Qspval5k3*acc311(38)
      acc311(60)=Qspval6k3*acc311(46)
      acc311(61)=Qspval6k7*acc311(30)
      acc311(62)=QspQ*acc311(25)
      acc311(63)=Qspl6*acc311(22)
      acc311(64)=Qspk7*acc311(42)
      acc311(65)=Qspk2*acc311(23)
      acc311(66)=Qspvak3k2*acc311(28)
      acc311(66)=acc311(14)+acc311(66)
      acc311(66)=Qspvak4k3*acc311(66)
      brack=acc311(9)+acc311(50)+acc311(51)+acc311(52)+acc311(53)+acc311(54)+ac&
      &c311(55)+acc311(56)+acc311(57)+acc311(58)+acc311(59)+acc311(60)+acc311(6&
      &1)+acc311(62)+acc311(63)+acc311(64)+acc311(65)+acc311(66)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd311h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d311
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d311 = 0.0_ki
      d311 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d311, ki), aimag(d311), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d311h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd311h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d311
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d311 = 0.0_ki
      d311 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d311, ki), aimag(d311), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d311h4l1
