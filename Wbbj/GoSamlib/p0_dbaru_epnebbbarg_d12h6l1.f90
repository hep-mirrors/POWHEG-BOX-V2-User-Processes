module     p0_dbaru_epnebbbarg_d12h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d12h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd12h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc12(63)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      acc12(1)=abb12(9)
      acc12(2)=abb12(10)
      acc12(3)=abb12(11)
      acc12(4)=abb12(12)
      acc12(5)=abb12(13)
      acc12(6)=abb12(14)
      acc12(7)=abb12(15)
      acc12(8)=abb12(16)
      acc12(9)=abb12(17)
      acc12(10)=abb12(18)
      acc12(11)=abb12(19)
      acc12(12)=abb12(20)
      acc12(13)=abb12(21)
      acc12(14)=abb12(22)
      acc12(15)=abb12(23)
      acc12(16)=abb12(24)
      acc12(17)=abb12(25)
      acc12(18)=abb12(26)
      acc12(19)=abb12(27)
      acc12(20)=abb12(28)
      acc12(21)=abb12(29)
      acc12(22)=abb12(30)
      acc12(23)=abb12(31)
      acc12(24)=abb12(32)
      acc12(25)=abb12(33)
      acc12(26)=abb12(34)
      acc12(27)=abb12(35)
      acc12(28)=abb12(36)
      acc12(29)=abb12(37)
      acc12(30)=abb12(38)
      acc12(31)=abb12(39)
      acc12(32)=abb12(40)
      acc12(33)=abb12(41)
      acc12(34)=abb12(43)
      acc12(35)=abb12(47)
      acc12(36)=abb12(52)
      acc12(37)=abb12(53)
      acc12(38)=abb12(55)
      acc12(39)=abb12(60)
      acc12(40)=abb12(61)
      acc12(41)=abb12(63)
      acc12(42)=abb12(65)
      acc12(43)=abb12(67)
      acc12(44)=abb12(71)
      acc12(45)=abb12(72)
      acc12(46)=abb12(73)
      acc12(47)=abb12(75)
      acc12(48)=abb12(76)
      acc12(49)=abb12(77)
      acc12(50)=abb12(79)
      acc12(51)=-Qspvak1k2*acc12(9)
      acc12(52)=-Qspvak7k2*acc12(5)
      acc12(51)=acc12(51)+acc12(52)
      acc12(51)=Qspval5l6*acc12(51)
      acc12(52)=Qspvak1k2*acc12(25)
      acc12(53)=Qspvak7k2*acc12(48)
      acc12(52)=acc12(53)+acc12(34)+acc12(52)
      acc12(52)=Qspk2*acc12(52)
      acc12(53)=Qspk1*acc12(49)
      acc12(54)=Qspk7*acc12(47)
      acc12(55)=Qspvak1k7*acc12(10)
      acc12(56)=Qspvak7k1*acc12(35)
      acc12(57)=acc12(13)*Qspvak3k2
      acc12(58)=Qspvak1l6*acc12(26)
      acc12(59)=Qspval5k2*acc12(1)
      acc12(60)=Qspvak7l6*acc12(20)
      acc12(61)=Qspvak1k2*acc12(14)
      acc12(62)=Qspvak4k2*acc12(7)
      acc12(63)=Qspvak7k2*acc12(50)
      acc12(51)=acc12(52)+acc12(51)+acc12(63)+acc12(62)+acc12(61)+acc12(60)+acc&
      &12(59)+acc12(58)+acc12(57)+acc12(56)+acc12(55)+acc12(54)+acc12(46)+acc12&
      &(53)
      acc12(51)=Qspvak4k3*acc12(51)
      acc12(52)=Qspvak1l6*acc12(23)
      acc12(53)=Qspval5k2*acc12(44)
      acc12(54)=Qspvak7l6*acc12(39)
      acc12(55)=Qspvak1k2*acc12(31)
      acc12(56)=-Qspvak4k2*acc12(13)
      acc12(57)=Qspvak7k2*acc12(43)
      acc12(52)=acc12(57)+acc12(56)+acc12(55)+acc12(54)+acc12(53)+acc12(18)+acc&
      &12(52)
      acc12(52)=QspQ*acc12(52)
      acc12(53)=Qspvak1k3*acc12(21)
      acc12(54)=Qspvak7k3*acc12(38)
      acc12(55)=Qspvak1k2*acc12(29)
      acc12(56)=Qspvak4k2*acc12(22)
      acc12(57)=Qspvak7k2*acc12(40)
      acc12(58)=QspQ*acc12(37)
      acc12(53)=acc12(58)+acc12(57)+acc12(56)+acc12(55)+acc12(54)+acc12(15)+acc&
      &12(53)
      acc12(53)=Qspval5l6*acc12(53)
      acc12(54)=Qspvak1l6*acc12(11)
      acc12(55)=Qspval5k2*acc12(45)
      acc12(56)=Qspvak7l6*acc12(33)
      acc12(54)=acc12(56)+acc12(54)-acc12(55)
      acc12(55)=Qspk4+Qspk3
      acc12(56)=QspQ+acc12(55)
      acc12(56)=acc12(36)*acc12(56)
      acc12(57)=Qspvak1k3*acc12(27)
      acc12(58)=Qspvak7k3*acc12(41)
      acc12(59)=Qspvak4k2*acc12(3)
      acc12(60)=Qspval5l6*acc12(28)
      acc12(56)=acc12(60)+acc12(59)+acc12(58)+acc12(12)+acc12(57)+acc12(56)+acc&
      &12(54)
      acc12(56)=Qspk2*acc12(56)
      acc12(57)=Qspvak1k2*acc12(30)
      acc12(58)=Qspvak4k2*acc12(24)
      acc12(59)=Qspvak7k2*acc12(42)
      acc12(54)=acc12(32)+acc12(54)+acc12(59)+acc12(57)+acc12(58)
      acc12(54)=-acc12(54)*acc12(55)
      acc12(55)=Qspk1*acc12(19)
      acc12(57)=Qspk7*acc12(16)
      acc12(58)=Qspvak1k7*acc12(6)
      acc12(59)=Qspvak3k2*acc12(2)
      acc12(60)=Qspvak7k1*acc12(8)
      acc12(61)=Qspvak4k2*acc12(4)
      brack=acc12(17)+acc12(51)+acc12(52)+acc12(53)+acc12(54)+acc12(55)+acc12(5&
      &6)+acc12(57)+acc12(58)+acc12(59)+acc12(60)+acc12(61)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd12h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d12
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d12 = 0.0_ki
      d12 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d12, ki), aimag(d12), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d12h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd12h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d12
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d12 = 0.0_ki
      d12 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d12, ki), aimag(d12), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d12h6l1
