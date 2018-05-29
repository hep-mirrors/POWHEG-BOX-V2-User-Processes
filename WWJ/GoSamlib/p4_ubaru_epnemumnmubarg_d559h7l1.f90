module     p4_ubaru_epnemumnmubarg_d559h7l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity7d559h7l1.f90
   ! generator: buildfortran.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd559h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc559(19)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k1
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc559(1)=abb559(7)
      acc559(2)=abb559(8)
      acc559(3)=abb559(9)
      acc559(4)=abb559(10)
      acc559(5)=abb559(11)
      acc559(6)=abb559(12)
      acc559(7)=abb559(13)
      acc559(8)=abb559(14)
      acc559(9)=abb559(15)
      acc559(10)=abb559(16)
      acc559(11)=abb559(17)
      acc559(12)=abb559(18)
      acc559(13)=acc559(4)*Qspvak1k2
      acc559(14)=acc559(11)*Qspvak7k2
      acc559(15)=-acc559(10)*QspQ
      acc559(15)=acc559(15)+acc559(6)-acc559(14)-acc559(13)
      acc559(15)=Qspk2*acc559(15)
      acc559(16)=Qspvak2k7*acc559(5)
      acc559(17)=-Qspvak1k7*acc559(12)
      acc559(16)=acc559(17)+acc559(16)+acc559(1)
      acc559(16)=Qspvak7k2*acc559(16)
      acc559(17)=-acc559(9)*Qspk2
      acc559(13)=acc559(13)+acc559(17)
      acc559(13)=Qspk7*acc559(13)
      acc559(17)=acc559(12)*Qspvak1k2
      acc559(17)=acc559(7)+acc559(17)
      acc559(17)=QspQ*acc559(17)
      acc559(14)=acc559(2)-acc559(14)
      acc559(14)=Qspk1*acc559(14)
      acc559(18)=acc559(9)*Qspk2**2
      acc559(19)=Qspvak2k1*acc559(3)
      brack=acc559(8)+acc559(13)+acc559(14)+acc559(15)+acc559(16)+acc559(17)+ac&
      &c559(18)+acc559(19)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd559h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d559
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d559 = 0.0_ki
      d559 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d559, ki), aimag(d559), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d559h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd559h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d559
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d559 = 0.0_ki
      d559 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d559, ki), aimag(d559), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p4_ubaru_epnemumnmubarg_d559h7l1
