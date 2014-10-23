module     p0_dbaru_epnebbbarg_d108h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d108h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd108h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc108(33)
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspval6k7
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspl6 = dotproduct(Q,l6)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      acc108(1)=abb108(11)
      acc108(2)=abb108(12)
      acc108(3)=abb108(13)
      acc108(4)=abb108(14)
      acc108(5)=abb108(15)
      acc108(6)=abb108(16)
      acc108(7)=abb108(17)
      acc108(8)=abb108(18)
      acc108(9)=abb108(19)
      acc108(10)=abb108(21)
      acc108(11)=abb108(23)
      acc108(12)=abb108(25)
      acc108(13)=abb108(26)
      acc108(14)=abb108(28)
      acc108(15)=abb108(29)
      acc108(16)=abb108(33)
      acc108(17)=abb108(38)
      acc108(18)=abb108(39)
      acc108(19)=abb108(40)
      acc108(20)=abb108(43)
      acc108(21)=abb108(47)
      acc108(22)=acc108(17)*Qspval5k3
      acc108(23)=acc108(16)*Qspval6k3
      acc108(24)=Qspvak4k2*acc108(4)
      acc108(25)=Qspvak4k3*acc108(6)
      acc108(26)=-Qspk2+Qspk4+Qspk3
      acc108(27)=-acc108(8)*acc108(26)
      acc108(22)=acc108(27)+acc108(25)+acc108(24)+acc108(23)+acc108(1)+acc108(2&
      &2)
      acc108(22)=Qspvak1k2*acc108(22)
      acc108(23)=-acc108(16)*Qspvak1k3
      acc108(24)=Qspvak4k2*acc108(7)
      acc108(25)=Qspvak4k3*acc108(21)
      acc108(27)=-acc108(20)*acc108(26)
      acc108(23)=acc108(27)+acc108(25)+acc108(24)+acc108(5)+acc108(23)
      acc108(23)=Qspval6k2*acc108(23)
      acc108(24)=-acc108(17)*Qspvak1k3
      acc108(24)=acc108(24)+acc108(12)
      acc108(24)=Qspval5k2*acc108(24)
      acc108(25)=acc108(18)*Qspl6
      acc108(27)=acc108(15)*Qspk1
      acc108(28)=acc108(14)*Qspvak1l6
      acc108(29)=acc108(13)*Qspvak1k7
      acc108(30)=acc108(2)*Qspval6k7
      acc108(31)=Qspval5k3*acc108(10)
      acc108(32)=Qspvak4k2*acc108(3)
      acc108(33)=Qspvak4k3*acc108(19)
      acc108(26)=acc108(11)*acc108(26)
      brack=acc108(9)+acc108(22)+acc108(23)+acc108(24)+acc108(25)+acc108(26)+ac&
      &c108(27)+acc108(28)+acc108(29)+acc108(30)+acc108(31)+acc108(32)+acc108(3&
      &3)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd108h0
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
   & bind(c, name="p0_dbaru_epnebbbarg_d108h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd108h0
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
end module p0_dbaru_epnebbbarg_d108h0l1
