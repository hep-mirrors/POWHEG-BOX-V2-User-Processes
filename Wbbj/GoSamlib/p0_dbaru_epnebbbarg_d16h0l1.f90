module     p0_dbaru_epnebbbarg_d16h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d16h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd16h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc16(17)
      complex(ki) :: Qspvak1k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4k2
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      acc16(1)=abb16(8)
      acc16(2)=abb16(9)
      acc16(3)=abb16(10)
      acc16(4)=abb16(11)
      acc16(5)=abb16(12)
      acc16(6)=abb16(13)
      acc16(7)=abb16(14)
      acc16(8)=abb16(15)
      acc16(9)=abb16(16)
      acc16(10)=abb16(17)
      acc16(11)=abb16(18)
      acc16(12)=abb16(19)
      acc16(13)=abb16(20)
      acc16(14)=Qspvak1k3*acc16(9)
      acc16(15)=QspQ*acc16(10)
      acc16(16)=Qspvak1k2*acc16(1)
      acc16(16)=acc16(3)+acc16(16)
      acc16(16)=Qspvak4k3*acc16(16)
      acc16(14)=acc16(16)+acc16(15)+acc16(5)+acc16(14)
      acc16(14)=Qspval5k2*acc16(14)
      acc16(15)=Qspvak1k3*acc16(12)
      acc16(16)=QspQ*acc16(11)
      acc16(17)=Qspvak1k2*acc16(13)
      acc16(17)=acc16(2)+acc16(17)
      acc16(17)=Qspvak4k3*acc16(17)
      acc16(15)=acc16(17)+acc16(16)+acc16(8)+acc16(15)
      acc16(15)=Qspval6k2*acc16(15)
      acc16(16)=-Qspl5-Qspl6
      acc16(16)=acc16(7)*acc16(16)
      acc16(17)=acc16(4)*Qspvak4k2
      acc16(17)=acc16(6)+acc16(17)
      acc16(17)=QspQ*acc16(17)
      brack=acc16(14)+acc16(15)+acc16(16)+acc16(17)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd16h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d16
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d16 = 0.0_ki
      d16 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d16, ki), aimag(d16), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d16h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd16h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d16
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d16 = 0.0_ki
      d16 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d16, ki), aimag(d16), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d16h0l1
