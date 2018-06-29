module     p0_dbard_epnemumnmubarg_d285h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity5d285h5l1.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd285h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc285(19)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk5
      complex(ki) :: Qspk6
      complex(ki) :: Qspvak7k6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: QspQ
      Qspk2 = dotproduct(Q,k2)
      Qspk5 = dotproduct(Q,k5)
      Qspk6 = dotproduct(Q,k6)
      Qspvak7k6 = dotproduct(Q,spvak7k6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      QspQ = dotproduct(Q,Q)
      acc285(1)=abb285(8)
      acc285(2)=abb285(9)
      acc285(3)=abb285(10)
      acc285(4)=abb285(11)
      acc285(5)=abb285(12)
      acc285(6)=abb285(13)
      acc285(7)=abb285(14)
      acc285(8)=abb285(17)
      acc285(9)=abb285(19)
      acc285(10)=abb285(21)
      acc285(11)=abb285(24)
      acc285(12)=abb285(25)
      acc285(13)=-Qspk2+Qspk5+Qspk6
      acc285(13)=acc285(13)*acc285(10)
      acc285(14)=Qspvak7k6*acc285(12)
      acc285(15)=Qspvak7k2*acc285(11)
      acc285(16)=Qspvak5k6*acc285(3)
      acc285(17)=Qspvak5k2*acc285(1)
      acc285(18)=Qspvak1k6*acc285(2)
      acc285(19)=Qspvak1k2*acc285(7)
      acc285(13)=acc285(13)+acc285(19)+acc285(18)+acc285(17)+acc285(16)+acc285(&
      &15)+acc285(5)+acc285(14)
      acc285(13)=Qspvak4k3*acc285(13)
      acc285(14)=Qspk3+Qspk4
      acc285(14)=acc285(8)*acc285(14)
      acc285(15)=Qspvak7k3*acc285(9)
      acc285(16)=Qspvak1k3*acc285(4)
      acc285(17)=QspQ*acc285(6)
      brack=acc285(13)+acc285(14)+acc285(15)+acc285(16)+acc285(17)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd285h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d285
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3-k6-k5-k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d285 = 0.0_ki
      d285 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d285, ki), aimag(d285), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d285h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd285h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d285
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3-k6-k5-k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d285 = 0.0_ki
      d285 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d285, ki), aimag(d285), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d285h5l1
