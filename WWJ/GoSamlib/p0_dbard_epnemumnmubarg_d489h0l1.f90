module     p0_dbard_epnemumnmubarg_d489h0l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity0d489h0l1.f90
   ! generator: buildfortran.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd489h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc489(17)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      acc489(1)=abb489(8)
      acc489(2)=abb489(9)
      acc489(3)=abb489(10)
      acc489(4)=abb489(11)
      acc489(5)=abb489(12)
      acc489(6)=abb489(13)
      acc489(7)=abb489(14)
      acc489(8)=abb489(16)
      acc489(9)=abb489(17)
      acc489(10)=abb489(19)
      acc489(11)=abb489(21)
      acc489(12)=acc489(5)*Qspk1
      acc489(13)=acc489(6)*Qspk7
      acc489(14)=acc489(9)*Qspvak7k2
      acc489(15)=Qspvak7k1*acc489(2)
      acc489(12)=acc489(15)+acc489(11)+acc489(14)+acc489(13)+acc489(12)
      acc489(12)=Qspvak2k7*acc489(12)
      acc489(13)=acc489(3)*Qspk7
      acc489(14)=acc489(8)*Qspk1
      acc489(15)=acc489(10)*Qspvak7k2
      acc489(16)=Qspvak1k2*acc489(4)
      acc489(17)=QspQ*acc489(1)
      brack=acc489(7)+acc489(12)+acc489(13)+acc489(14)+acc489(15)+acc489(16)+ac&
      &c489(17)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd489h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d489
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3-k7-k6-k5-k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d489 = 0.0_ki
      d489 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d489, ki), aimag(d489), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d489h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd489h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d489
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3-k7-k6-k5-k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d489 = 0.0_ki
      d489 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d489, ki), aimag(d489), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d489h0l1
