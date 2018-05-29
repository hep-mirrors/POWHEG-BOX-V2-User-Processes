module     p4_ubaru_epnemumnmubarg_d607h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity5d607h5l1.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd607h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc607(22)
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak5k7
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k2
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak5k7 = dotproduct(Q,spvak5k7)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc607(1)=abb607(7)
      acc607(2)=abb607(8)
      acc607(3)=abb607(9)
      acc607(4)=abb607(10)
      acc607(5)=abb607(12)
      acc607(6)=abb607(13)
      acc607(7)=abb607(14)
      acc607(8)=abb607(15)
      acc607(9)=abb607(16)
      acc607(10)=abb607(18)
      acc607(11)=abb607(19)
      acc607(12)=abb607(20)
      acc607(13)=abb607(21)
      acc607(14)=acc607(12)*Qspvak5k2
      acc607(15)=acc607(2)*Qspvak1k2
      acc607(14)=acc607(14)+acc607(15)
      acc607(14)=Qspvak4k3*acc607(14)
      acc607(15)=acc607(11)*Qspvak5k7
      acc607(16)=acc607(10)*Qspvak5k3
      acc607(17)=acc607(5)*Qspvak1k7
      acc607(18)=acc607(3)*Qspvak1k3
      acc607(19)=Qspk7*acc607(8)
      acc607(20)=QspQ*acc607(9)
      acc607(21)=Qspvak4k2*acc607(1)
      acc607(22)=Qspvak7k2*acc607(7)
      acc607(14)=acc607(22)+acc607(21)+acc607(20)+acc607(14)+acc607(19)+acc607(&
      &18)+acc607(17)+acc607(15)+acc607(16)
      acc607(14)=Qspvak7k2*acc607(14)
      acc607(15)=Qspk7*acc607(6)
      acc607(16)=QspQ*acc607(13)
      acc607(15)=acc607(15)+acc607(16)
      acc607(15)=Qspvak4k2*acc607(15)
      acc607(16)=QspQ*acc607(4)
      brack=acc607(14)+acc607(15)+acc607(16)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd607h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d607
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d607 = 0.0_ki
      d607 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d607, ki), aimag(d607), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d607h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd607h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d607
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d607 = 0.0_ki
      d607 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d607, ki), aimag(d607), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p4_ubaru_epnemumnmubarg_d607h5l1
