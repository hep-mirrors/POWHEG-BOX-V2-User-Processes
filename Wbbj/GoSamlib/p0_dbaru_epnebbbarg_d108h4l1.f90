module     p0_dbaru_epnebbbarg_d108h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d108h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd108h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc108(48)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspk1
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak7k1
      Qspk2 = dotproduct(Q,k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspl6 = dotproduct(Q,l6)
      Qspk1 = dotproduct(Q,k1)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      acc108(1)=abb108(11)
      acc108(2)=abb108(12)
      acc108(3)=abb108(13)
      acc108(4)=abb108(14)
      acc108(5)=abb108(15)
      acc108(6)=abb108(16)
      acc108(7)=abb108(17)
      acc108(8)=abb108(18)
      acc108(9)=abb108(19)
      acc108(10)=abb108(20)
      acc108(11)=abb108(21)
      acc108(12)=abb108(22)
      acc108(13)=abb108(23)
      acc108(14)=abb108(24)
      acc108(15)=abb108(25)
      acc108(16)=abb108(26)
      acc108(17)=abb108(27)
      acc108(18)=abb108(28)
      acc108(19)=abb108(29)
      acc108(20)=abb108(31)
      acc108(21)=abb108(35)
      acc108(22)=abb108(36)
      acc108(23)=abb108(41)
      acc108(24)=abb108(43)
      acc108(25)=abb108(50)
      acc108(26)=abb108(52)
      acc108(27)=abb108(53)
      acc108(28)=abb108(54)
      acc108(29)=abb108(56)
      acc108(30)=abb108(57)
      acc108(31)=abb108(58)
      acc108(32)=-Qspk2+Qspk4+Qspk3
      acc108(33)=acc108(19)*acc108(32)
      acc108(34)=-acc108(18)*Qspval6k3
      acc108(35)=Qspval5k3*acc108(23)
      acc108(36)=Qspvak4k2*acc108(14)
      acc108(37)=Qspvak4k3*acc108(20)
      acc108(33)=acc108(37)+acc108(36)+acc108(35)+acc108(12)+acc108(34)+acc108(&
      &33)
      acc108(33)=Qspvak1k2*acc108(33)
      acc108(34)=-acc108(11)*acc108(32)
      acc108(35)=acc108(31)*Qspvak7k3
      acc108(36)=acc108(18)*Qspvak1k3
      acc108(37)=Qspvak4k2*acc108(1)
      acc108(38)=Qspvak4k3*acc108(17)
      acc108(34)=acc108(38)+acc108(37)+acc108(36)+acc108(2)+acc108(35)+acc108(3&
      &4)
      acc108(34)=Qspval6k2*acc108(34)
      acc108(35)=acc108(21)*acc108(32)
      acc108(36)=-acc108(31)*Qspval6k3
      acc108(37)=-Qspval5k3*acc108(24)
      acc108(38)=Qspvak4k2*acc108(8)
      acc108(39)=Qspvak4k3*acc108(13)
      acc108(35)=acc108(39)+acc108(38)+acc108(37)+acc108(16)+acc108(36)+acc108(&
      &35)
      acc108(35)=Qspvak7k2*acc108(35)
      acc108(36)=acc108(24)*Qspvak7k3
      acc108(37)=-acc108(23)*Qspvak1k3
      acc108(36)=acc108(37)+acc108(30)+acc108(36)
      acc108(36)=Qspval5k2*acc108(36)
      acc108(32)=-acc108(28)*acc108(32)
      acc108(37)=acc108(29)*Qspvak7l6
      acc108(38)=acc108(27)*Qspl6
      acc108(39)=acc108(26)*Qspk1
      acc108(40)=acc108(25)*Qspval6k7
      acc108(41)=acc108(22)*Qspk7
      acc108(42)=acc108(10)*Qspvak1l6
      acc108(43)=acc108(6)*Qspval6k1
      acc108(44)=acc108(5)*Qspvak1k7
      acc108(45)=acc108(4)*Qspvak7k1
      acc108(46)=Qspval5k3*acc108(7)
      acc108(47)=Qspvak4k2*acc108(3)
      acc108(48)=Qspvak4k3*acc108(15)
      brack=acc108(9)+acc108(32)+acc108(33)+acc108(34)+acc108(35)+acc108(36)+ac&
      &c108(37)+acc108(38)+acc108(39)+acc108(40)+acc108(41)+acc108(42)+acc108(4&
      &3)+acc108(44)+acc108(45)+acc108(46)+acc108(47)+acc108(48)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd108h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d108
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d108 = 0.0_ki
      d108 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d108, ki), aimag(d108), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d108h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd108h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d108
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d108 = 0.0_ki
      d108 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d108, ki), aimag(d108), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d108h4l1
