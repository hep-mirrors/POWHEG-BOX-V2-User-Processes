module     p0_dbaru_epnebbbarg_d28h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d28h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd28h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc28(66)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k7
      complex(ki) :: QspQ
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak7l6
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k7 = dotproduct(Q,spval6k7)
      QspQ = dotproduct(Q,Q)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      acc28(1)=abb28(17)
      acc28(2)=abb28(18)
      acc28(3)=abb28(20)
      acc28(4)=abb28(21)
      acc28(5)=abb28(22)
      acc28(6)=abb28(23)
      acc28(7)=abb28(24)
      acc28(8)=abb28(25)
      acc28(9)=abb28(26)
      acc28(10)=abb28(27)
      acc28(11)=abb28(28)
      acc28(12)=abb28(29)
      acc28(13)=abb28(30)
      acc28(14)=abb28(31)
      acc28(15)=abb28(32)
      acc28(16)=abb28(33)
      acc28(17)=abb28(34)
      acc28(18)=abb28(35)
      acc28(19)=abb28(36)
      acc28(20)=abb28(37)
      acc28(21)=abb28(38)
      acc28(22)=abb28(39)
      acc28(23)=abb28(40)
      acc28(24)=abb28(41)
      acc28(25)=abb28(42)
      acc28(26)=abb28(43)
      acc28(27)=abb28(44)
      acc28(28)=abb28(45)
      acc28(29)=abb28(46)
      acc28(30)=abb28(48)
      acc28(31)=abb28(49)
      acc28(32)=abb28(50)
      acc28(33)=abb28(51)
      acc28(34)=abb28(52)
      acc28(35)=abb28(53)
      acc28(36)=abb28(59)
      acc28(37)=abb28(61)
      acc28(38)=abb28(68)
      acc28(39)=abb28(69)
      acc28(40)=abb28(74)
      acc28(41)=abb28(76)
      acc28(42)=abb28(84)
      acc28(43)=abb28(86)
      acc28(44)=abb28(98)
      acc28(45)=abb28(101)
      acc28(46)=abb28(134)
      acc28(47)=Qspl6+Qspl5
      acc28(48)=-acc28(42)*acc28(47)
      acc28(49)=Qspk1*acc28(43)
      acc28(50)=Qspk7*acc28(40)
      acc28(51)=Qspvak1k3*acc28(26)
      acc28(52)=Qspvak4k2*acc28(14)
      acc28(53)=Qspvak7k3*acc28(45)
      acc28(54)=Qspk2*acc28(28)
      acc28(55)=Qspvak1k2*acc28(33)
      acc28(56)=Qspvak1l5*acc28(19)
      acc28(57)=Qspvak1l6*acc28(16)
      acc28(58)=Qspvak7k2*acc28(8)
      acc28(59)=Qspval5k2*acc28(4)
      acc28(60)=Qspval6k2*acc28(22)
      acc28(48)=acc28(60)+acc28(59)+acc28(58)+acc28(57)+acc28(56)+acc28(55)+acc&
      &28(54)+acc28(53)+acc28(52)+acc28(51)+acc28(50)+acc28(39)+acc28(49)+acc28&
      &(48)
      acc28(48)=Qspval6k2*acc28(48)
      acc28(47)=-acc28(21)*acc28(47)
      acc28(49)=Qspk1*acc28(10)
      acc28(50)=Qspk7*acc28(20)
      acc28(51)=Qspvak1k3*acc28(31)
      acc28(52)=Qspvak4k2*acc28(12)
      acc28(53)=Qspvak7k3*acc28(7)
      acc28(54)=Qspk2*acc28(3)
      acc28(55)=Qspvak1k2*acc28(29)
      acc28(56)=Qspvak1l5*acc28(23)
      acc28(57)=Qspvak1l6*acc28(17)
      acc28(58)=Qspvak7k2*acc28(2)
      acc28(59)=Qspval5k2*acc28(5)
      acc28(47)=acc28(59)+acc28(58)+acc28(57)+acc28(56)+acc28(55)+acc28(54)+acc&
      &28(53)+acc28(52)+acc28(51)+acc28(50)+acc28(13)+acc28(49)+acc28(47)
      acc28(47)=Qspval5k2*acc28(47)
      acc28(49)=acc28(46)*Qspval6k3
      acc28(50)=acc28(44)*Qspval6k7
      acc28(51)=acc28(38)*QspQ
      acc28(52)=acc28(37)*Qspval6l5
      acc28(53)=acc28(35)*Qspval5k7
      acc28(54)=acc28(34)*Qspval5l6
      acc28(55)=acc28(27)*Qspval6k1
      acc28(56)=acc28(25)*Qspval5k3
      acc28(57)=acc28(24)*Qspvak7l5
      acc28(58)=acc28(11)*Qspval5k1
      acc28(59)=acc28(6)*Qspvak7l6
      acc28(60)=Qspk2*acc28(9)
      acc28(61)=Qspl5*acc28(30)
      acc28(62)=Qspl6*acc28(36)
      acc28(63)=Qspvak1k2*acc28(32)
      acc28(64)=Qspvak1l5*acc28(18)
      acc28(65)=Qspvak1l6*acc28(15)
      acc28(66)=Qspvak7k2*acc28(1)
      brack=acc28(41)+acc28(47)+acc28(48)+acc28(49)+acc28(50)+acc28(51)+acc28(5&
      &2)+acc28(53)+acc28(54)+acc28(55)+acc28(56)+acc28(57)+acc28(58)+acc28(59)&
      &+acc28(60)+acc28(61)+acc28(62)+acc28(63)+acc28(64)+acc28(65)+acc28(66)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd28h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d28
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d28 = 0.0_ki
      d28 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d28, ki), aimag(d28), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d28h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd28h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d28
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d28 = 0.0_ki
      d28 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d28, ki), aimag(d28), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d28h4l1
