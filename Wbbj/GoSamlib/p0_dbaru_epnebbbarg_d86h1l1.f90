module     p0_dbaru_epnebbbarg_d86h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d86h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd86h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc86(69)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l5
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      QspQ = dotproduct(Q,Q)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      acc86(1)=abb86(17)
      acc86(2)=abb86(18)
      acc86(3)=abb86(19)
      acc86(4)=abb86(20)
      acc86(5)=abb86(21)
      acc86(6)=abb86(22)
      acc86(7)=abb86(23)
      acc86(8)=abb86(24)
      acc86(9)=abb86(25)
      acc86(10)=abb86(26)
      acc86(11)=abb86(27)
      acc86(12)=abb86(28)
      acc86(13)=abb86(29)
      acc86(14)=abb86(30)
      acc86(15)=abb86(31)
      acc86(16)=abb86(33)
      acc86(17)=abb86(39)
      acc86(18)=abb86(40)
      acc86(19)=abb86(42)
      acc86(20)=abb86(45)
      acc86(21)=abb86(46)
      acc86(22)=abb86(47)
      acc86(23)=abb86(49)
      acc86(24)=abb86(53)
      acc86(25)=abb86(54)
      acc86(26)=abb86(56)
      acc86(27)=abb86(59)
      acc86(28)=abb86(62)
      acc86(29)=abb86(63)
      acc86(30)=abb86(67)
      acc86(31)=abb86(69)
      acc86(32)=abb86(71)
      acc86(33)=abb86(74)
      acc86(34)=abb86(77)
      acc86(35)=abb86(78)
      acc86(36)=abb86(84)
      acc86(37)=abb86(100)
      acc86(38)=abb86(107)
      acc86(39)=abb86(120)
      acc86(40)=abb86(123)
      acc86(41)=abb86(126)
      acc86(42)=abb86(130)
      acc86(43)=abb86(136)
      acc86(44)=abb86(145)
      acc86(45)=abb86(160)
      acc86(46)=abb86(255)
      acc86(47)=Qspk4+Qspk3
      acc86(48)=acc86(43)*acc86(47)
      acc86(49)=Qspl6+Qspl5
      acc86(50)=acc86(40)*acc86(49)
      acc86(51)=Qspk1*acc86(44)
      acc86(52)=Qspk7*acc86(38)
      acc86(53)=Qspvak1k2*acc86(13)
      acc86(54)=Qspvak2k7*acc86(8)
      acc86(55)=Qspvak4k2*acc86(22)
      acc86(56)=Qspvak4k3*acc86(33)
      acc86(57)=Qspval5k2*acc86(31)
      acc86(58)=Qspval6k2*acc86(29)
      acc86(59)=Qspval6l5*acc86(25)
      acc86(60)=Qspk2*acc86(37)
      acc86(48)=acc86(60)+acc86(59)+acc86(58)+acc86(57)+acc86(56)+acc86(55)+acc&
      &86(54)+acc86(53)+acc86(52)+acc86(17)+acc86(51)+acc86(50)+acc86(48)
      acc86(48)=Qspk2*acc86(48)
      acc86(50)=acc86(26)*acc86(47)
      acc86(49)=-acc86(21)*acc86(49)
      acc86(51)=Qspk1*acc86(28)
      acc86(52)=Qspk7*acc86(20)
      acc86(53)=Qspvak1k2*acc86(15)
      acc86(54)=Qspvak2k7*acc86(9)
      acc86(55)=Qspvak4k2*acc86(4)
      acc86(56)=Qspvak4k3*acc86(7)
      acc86(57)=Qspval5k2*acc86(32)
      acc86(58)=Qspval6k2*acc86(34)
      acc86(49)=acc86(58)+acc86(57)+acc86(56)+acc86(55)+acc86(54)+acc86(53)+acc&
      &86(52)+acc86(3)+acc86(51)+acc86(49)+acc86(50)
      acc86(49)=Qspval6l5*acc86(49)
      acc86(47)=acc86(27)*acc86(47)
      acc86(50)=acc86(45)*Qspvak7k2
      acc86(51)=acc86(39)*QspQ
      acc86(52)=acc86(36)*Qspvak4k7
      acc86(53)=acc86(35)*Qspval6k1
      acc86(54)=acc86(30)*Qspval6k7
      acc86(55)=acc86(19)*Qspval6k3
      acc86(56)=acc86(12)*Qspvak1k3
      acc86(57)=acc86(11)*Qspvak1l6
      acc86(58)=acc86(10)*Qspvak1k7
      acc86(59)=acc86(1)*Qspvak1l5
      acc86(60)=Qspk1*acc86(42)
      acc86(61)=Qspl5*acc86(16)
      acc86(62)=Qspl6*acc86(41)
      acc86(63)=Qspk7*acc86(46)
      acc86(64)=Qspvak1k2*acc86(2)
      acc86(65)=Qspvak2k7*acc86(5)
      acc86(66)=Qspvak4k2*acc86(6)
      acc86(67)=Qspvak4k3*acc86(14)
      acc86(68)=Qspval5k2*acc86(24)
      acc86(69)=Qspval6k2*acc86(18)
      brack=acc86(23)+acc86(47)+acc86(48)+acc86(49)+acc86(50)+acc86(51)+acc86(5&
      &2)+acc86(53)+acc86(54)+acc86(55)+acc86(56)+acc86(57)+acc86(58)+acc86(59)&
      &+acc86(60)+acc86(61)+acc86(62)+acc86(63)+acc86(64)+acc86(65)+acc86(66)+a&
      &cc86(67)+acc86(68)+acc86(69)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd86h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d86
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d86 = 0.0_ki
      d86 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d86, ki), aimag(d86), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d86h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd86h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d86
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d86 = 0.0_ki
      d86 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d86, ki), aimag(d86), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d86h1l1
