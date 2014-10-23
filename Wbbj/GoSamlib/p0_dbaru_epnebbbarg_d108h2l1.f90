module     p0_dbaru_epnebbbarg_d108h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d108h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd108h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc108(41)
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk1
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk2 = dotproduct(Q,k2)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk1 = dotproduct(Q,k1)
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
      acc108(11)=abb108(22)
      acc108(12)=abb108(23)
      acc108(13)=abb108(25)
      acc108(14)=abb108(26)
      acc108(15)=abb108(27)
      acc108(16)=abb108(29)
      acc108(17)=abb108(31)
      acc108(18)=abb108(32)
      acc108(19)=abb108(33)
      acc108(20)=abb108(40)
      acc108(21)=abb108(42)
      acc108(22)=abb108(44)
      acc108(23)=abb108(46)
      acc108(24)=abb108(50)
      acc108(25)=abb108(51)
      acc108(26)=abb108(57)
      acc108(27)=Qspval5k3*acc108(18)
      acc108(28)=-Qspval5k2*acc108(19)
      acc108(29)=acc108(5)*Qspvak4k2
      acc108(30)=acc108(7)*Qspvak4k3
      acc108(27)=acc108(30)+acc108(29)+acc108(3)+acc108(28)+acc108(27)
      acc108(27)=Qspvak1l6*acc108(27)
      acc108(28)=Qspval5l6*acc108(19)
      acc108(29)=acc108(1)*Qspvak4k3
      acc108(30)=acc108(4)*Qspvak4k2
      acc108(31)=Qspvak2k3*acc108(8)
      acc108(28)=acc108(31)+acc108(6)+acc108(30)+acc108(29)+acc108(28)
      acc108(28)=Qspvak1k2*acc108(28)
      acc108(29)=acc108(10)*Qspvak4k2
      acc108(30)=acc108(13)*Qspvak1k3
      acc108(31)=acc108(22)*Qspvak4k3
      acc108(29)=acc108(31)+acc108(15)+acc108(30)+acc108(29)
      acc108(29)=Qspk2*acc108(29)
      acc108(30)=acc108(9)*Qspvak1k2
      acc108(31)=acc108(12)*Qspvak1l6
      acc108(30)=acc108(30)+acc108(31)
      acc108(31)=Qspk3+Qspk4
      acc108(32)=acc108(31)-Qspk2
      acc108(30)=acc108(32)*acc108(30)
      acc108(32)=-Qspk2*acc108(31)
      acc108(33)=Qspk2**2
      acc108(32)=acc108(33)+acc108(32)
      acc108(32)=acc108(26)*acc108(32)
      acc108(31)=acc108(23)*acc108(31)
      acc108(33)=-Qspvak1k3*Qspval5l6*acc108(18)
      acc108(34)=acc108(11)*Qspvak4k2
      acc108(35)=acc108(17)*Qspvak4k3
      acc108(36)=acc108(20)*Qspval5k2
      acc108(37)=acc108(21)*Qspval5k3
      acc108(38)=Qspvak2k7*acc108(24)
      acc108(39)=Qspvak2l6*acc108(25)
      acc108(40)=Qspvak1k7*acc108(2)
      acc108(41)=Qspk1*acc108(16)
      brack=acc108(14)+acc108(27)+acc108(28)+acc108(29)+acc108(30)+acc108(31)+a&
      &cc108(32)+acc108(33)+acc108(34)+acc108(35)+acc108(36)+acc108(37)+acc108(&
      &38)+acc108(39)+acc108(40)+acc108(41)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd108h2
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
   & bind(c, name="p0_dbaru_epnebbbarg_d108h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd108h2
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
end module p0_dbaru_epnebbbarg_d108h2l1
