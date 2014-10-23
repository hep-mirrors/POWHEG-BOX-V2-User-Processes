module     p0_dbaru_epnebbbarg_d145h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d145h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd145h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc145(60)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k3
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      acc145(1)=abb145(19)
      acc145(2)=abb145(20)
      acc145(3)=abb145(21)
      acc145(4)=abb145(22)
      acc145(5)=abb145(23)
      acc145(6)=abb145(25)
      acc145(7)=abb145(26)
      acc145(8)=abb145(27)
      acc145(9)=abb145(28)
      acc145(10)=abb145(29)
      acc145(11)=abb145(30)
      acc145(12)=abb145(31)
      acc145(13)=abb145(33)
      acc145(14)=abb145(34)
      acc145(15)=abb145(35)
      acc145(16)=abb145(36)
      acc145(17)=abb145(37)
      acc145(18)=abb145(38)
      acc145(19)=abb145(39)
      acc145(20)=abb145(40)
      acc145(21)=abb145(41)
      acc145(22)=abb145(45)
      acc145(23)=abb145(46)
      acc145(24)=abb145(47)
      acc145(25)=abb145(49)
      acc145(26)=abb145(51)
      acc145(27)=abb145(52)
      acc145(28)=abb145(53)
      acc145(29)=abb145(54)
      acc145(30)=abb145(55)
      acc145(31)=abb145(56)
      acc145(32)=abb145(57)
      acc145(33)=abb145(58)
      acc145(34)=abb145(59)
      acc145(35)=abb145(60)
      acc145(36)=abb145(66)
      acc145(37)=abb145(67)
      acc145(38)=abb145(77)
      acc145(39)=abb145(81)
      acc145(40)=abb145(96)
      acc145(41)=abb145(101)
      acc145(42)=abb145(102)
      acc145(43)=abb145(106)
      acc145(44)=abb145(117)
      acc145(45)=abb145(124)
      acc145(46)=abb145(129)
      acc145(47)=Qspk4+Qspk3
      acc145(48)=acc145(47)-Qspk2
      acc145(49)=-acc145(13)*acc145(48)
      acc145(50)=Qspvak1k3*acc145(11)
      acc145(51)=Qspvak4k2*acc145(12)
      acc145(52)=Qspvak4k3*acc145(22)
      acc145(53)=Qspvak1k2*acc145(9)
      acc145(49)=acc145(53)+acc145(52)+acc145(51)+acc145(10)+acc145(50)+acc145(&
      &49)
      acc145(49)=Qspval5k2*acc145(49)
      acc145(48)=-acc145(44)*acc145(48)
      acc145(50)=Qspvak1k3*acc145(31)
      acc145(51)=Qspvak4k2*acc145(23)
      acc145(52)=Qspvak4k3*acc145(29)
      acc145(53)=Qspvak1k2*acc145(20)
      acc145(48)=acc145(53)+acc145(52)+acc145(51)+acc145(24)+acc145(50)+acc145(&
      &48)
      acc145(48)=Qspval6k2*acc145(48)
      acc145(50)=Qspl6+Qspl5
      acc145(51)=-acc145(46)*acc145(50)
      acc145(52)=acc145(30)*Qspvak1l6
      acc145(53)=acc145(27)*Qspvak1l5
      acc145(54)=Qspval5k3*acc145(39)
      acc145(55)=Qspval6k3*acc145(40)
      acc145(56)=QspQ*acc145(32)
      acc145(57)=Qspk7*acc145(45)
      acc145(58)=Qspvak1k2*acc145(6)
      acc145(59)=Qspk2*acc145(2)
      acc145(48)=acc145(48)+acc145(49)+acc145(59)+acc145(58)+acc145(57)+acc145(&
      &56)+acc145(55)+acc145(54)+acc145(3)+acc145(52)+acc145(53)+acc145(51)
      acc145(48)=Qspvak7k2*acc145(48)
      acc145(49)=-acc145(17)*acc145(50)
      acc145(51)=Qspvak7k3*acc145(16)
      acc145(52)=QspQ*acc145(15)
      acc145(53)=Qspk7*acc145(14)
      acc145(54)=Qspk2*acc145(19)
      acc145(49)=acc145(54)+acc145(53)+acc145(52)+acc145(8)+acc145(51)+acc145(4&
      &9)
      acc145(49)=Qspval5k2*acc145(49)
      acc145(51)=-acc145(42)*acc145(50)
      acc145(52)=Qspvak7k3*acc145(36)
      acc145(53)=QspQ*acc145(28)
      acc145(54)=Qspk7*acc145(41)
      acc145(55)=Qspk2*acc145(43)
      acc145(51)=acc145(55)+acc145(54)+acc145(53)+acc145(7)+acc145(52)+acc145(5&
      &1)
      acc145(51)=Qspval6k2*acc145(51)
      acc145(47)=-acc145(38)*acc145(47)
      acc145(50)=acc145(33)*acc145(50)
      acc145(52)=Qspval5k3*acc145(21)
      acc145(53)=Qspval6k3*acc145(37)
      acc145(54)=Qspvak4k2*acc145(26)
      acc145(55)=Qspvak4k3*acc145(18)
      acc145(56)=Qspvak7k3*acc145(5)
      acc145(57)=QspQ*acc145(4)
      acc145(58)=Qspk7*acc145(34)
      acc145(59)=Qspvak1k2*acc145(25)
      acc145(60)=Qspk2*acc145(1)
      brack=acc145(35)+acc145(47)+acc145(48)+acc145(49)+acc145(50)+acc145(51)+a&
      &cc145(52)+acc145(53)+acc145(54)+acc145(55)+acc145(56)+acc145(57)+acc145(&
      &58)+acc145(59)+acc145(60)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd145h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d145
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d145 = 0.0_ki
      d145 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d145, ki), aimag(d145), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d145h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd145h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d145
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d145 = 0.0_ki
      d145 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d145, ki), aimag(d145), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d145h4l1
