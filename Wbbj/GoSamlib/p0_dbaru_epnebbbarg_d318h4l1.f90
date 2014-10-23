module     p0_dbaru_epnebbbarg_d318h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d318h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd318h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc318(63)
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k2
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspk2 = dotproduct(Q,k2)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc318(1)=abb318(13)
      acc318(2)=abb318(14)
      acc318(3)=abb318(15)
      acc318(4)=abb318(16)
      acc318(5)=abb318(17)
      acc318(6)=abb318(18)
      acc318(7)=abb318(19)
      acc318(8)=abb318(20)
      acc318(9)=abb318(21)
      acc318(10)=abb318(22)
      acc318(11)=abb318(23)
      acc318(12)=abb318(24)
      acc318(13)=abb318(25)
      acc318(14)=abb318(26)
      acc318(15)=abb318(28)
      acc318(16)=abb318(29)
      acc318(17)=abb318(30)
      acc318(18)=abb318(31)
      acc318(19)=abb318(32)
      acc318(20)=abb318(33)
      acc318(21)=abb318(34)
      acc318(22)=abb318(35)
      acc318(23)=abb318(36)
      acc318(24)=abb318(37)
      acc318(25)=abb318(38)
      acc318(26)=abb318(41)
      acc318(27)=abb318(42)
      acc318(28)=abb318(44)
      acc318(29)=abb318(45)
      acc318(30)=abb318(47)
      acc318(31)=abb318(48)
      acc318(32)=abb318(49)
      acc318(33)=abb318(52)
      acc318(34)=abb318(53)
      acc318(35)=abb318(54)
      acc318(36)=abb318(57)
      acc318(37)=abb318(58)
      acc318(38)=abb318(59)
      acc318(39)=abb318(60)
      acc318(40)=abb318(66)
      acc318(41)=abb318(68)
      acc318(42)=abb318(69)
      acc318(43)=abb318(70)
      acc318(44)=abb318(73)
      acc318(45)=abb318(75)
      acc318(46)=abb318(79)
      acc318(47)=abb318(81)
      acc318(48)=abb318(86)
      acc318(49)=Qspvak1k3*acc318(39)
      acc318(50)=Qspvak4k2*acc318(33)
      acc318(51)=Qspvak1k2*acc318(13)
      acc318(49)=acc318(51)+acc318(50)+acc318(19)+acc318(49)
      acc318(49)=Qspval5k2*acc318(49)
      acc318(50)=Qspvak1k3*acc318(38)
      acc318(51)=Qspvak4k2*acc318(6)
      acc318(52)=Qspvak1k2*acc318(10)
      acc318(50)=acc318(52)+acc318(51)+acc318(15)+acc318(50)
      acc318(50)=Qspval6k2*acc318(50)
      acc318(51)=QspQ-Qspl6
      acc318(51)=acc318(26)*acc318(51)
      acc318(52)=acc318(48)*Qspval5k3
      acc318(53)=Qspval6k3*acc318(46)
      acc318(54)=Qspval6l5*acc318(41)
      acc318(55)=acc318(42)*Qspval5k7
      acc318(56)=-acc318(40)*Qspval6k7
      acc318(57)=Qspk2*acc318(29)
      acc318(58)=Qspl5*acc318(14)
      acc318(59)=Qspk7*acc318(23)
      acc318(60)=Qspvak1k3*acc318(28)
      acc318(61)=Qspvak4k2*acc318(21)
      acc318(62)=Qspvak1k2*acc318(2)
      acc318(63)=Qspvak7k2*acc318(31)
      acc318(49)=acc318(63)+acc318(50)+acc318(49)+acc318(62)+acc318(61)+acc318(&
      &60)+acc318(59)+acc318(58)+acc318(57)+acc318(56)+acc318(55)+acc318(54)+ac&
      &c318(53)+acc318(52)+acc318(5)+acc318(51)
      acc318(49)=Qspvak7k2*acc318(49)
      acc318(50)=Qspk7+Qspl5
      acc318(51)=-acc318(16)*acc318(50)
      acc318(52)=-QspQ*acc318(42)
      acc318(53)=Qspk2*acc318(18)
      acc318(54)=Qspvak1k3*acc318(34)
      acc318(55)=Qspvak4k2*acc318(22)
      acc318(56)=Qspvak1k2*acc318(4)
      acc318(51)=acc318(56)+acc318(55)+acc318(54)+acc318(53)+acc318(3)+acc318(5&
      &2)+acc318(51)
      acc318(51)=Qspval5k2*acc318(51)
      acc318(52)=acc318(36)*acc318(50)
      acc318(53)=QspQ*acc318(40)
      acc318(54)=Qspk2*acc318(47)
      acc318(55)=Qspvak1k3*acc318(37)
      acc318(56)=Qspvak4k2*acc318(8)
      acc318(57)=Qspvak1k2*acc318(12)
      acc318(52)=acc318(57)+acc318(56)+acc318(55)+acc318(54)+acc318(45)+acc318(&
      &53)+acc318(52)
      acc318(52)=Qspval6k2*acc318(52)
      acc318(50)=acc318(17)*acc318(50)
      acc318(53)=QspQ*acc318(25)
      acc318(54)=Qspk2*acc318(24)
      acc318(50)=acc318(54)+acc318(11)+acc318(53)+acc318(50)
      acc318(50)=Qspvak1k2*acc318(50)
      acc318(53)=Qspl6*acc318(32)
      acc318(54)=Qspval6k3*acc318(44)
      acc318(55)=Qspval6l5*acc318(35)
      acc318(56)=QspQ*acc318(30)
      acc318(57)=Qspk2*acc318(43)
      acc318(58)=Qspl5*acc318(1)
      acc318(59)=Qspk7*acc318(20)
      acc318(60)=Qspvak1k3*acc318(9)
      acc318(61)=Qspvak4k2*acc318(27)
      brack=acc318(7)+acc318(49)+acc318(50)+acc318(51)+acc318(52)+acc318(53)+ac&
      &c318(54)+acc318(55)+acc318(56)+acc318(57)+acc318(58)+acc318(59)+acc318(6&
      &0)+acc318(61)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd318h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d318
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d318 = 0.0_ki
      d318 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d318, ki), aimag(d318), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d318h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd318h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d318
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d318 = 0.0_ki
      d318 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d318, ki), aimag(d318), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d318h4l1
