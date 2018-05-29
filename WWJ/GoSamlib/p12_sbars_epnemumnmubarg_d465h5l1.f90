module     p12_sbars_epnemumnmubarg_d465h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d465h5l1.f90
   ! generator: buildfortran.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd465h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc465(23)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk5
      complex(ki) :: Qspk6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk1
      Qspk2 = dotproduct(Q,k2)
      Qspk5 = dotproduct(Q,k5)
      Qspk6 = dotproduct(Q,k6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk1 = dotproduct(Q,k1)
      acc465(1)=abb465(8)
      acc465(2)=abb465(9)
      acc465(3)=abb465(10)
      acc465(4)=abb465(11)
      acc465(5)=abb465(12)
      acc465(6)=abb465(13)
      acc465(7)=abb465(14)
      acc465(8)=abb465(15)
      acc465(9)=abb465(16)
      acc465(10)=abb465(18)
      acc465(11)=abb465(21)
      acc465(12)=abb465(25)
      acc465(13)=Qspk2-Qspk5-Qspk6
      acc465(13)=acc465(11)*acc465(13)
      acc465(14)=Qspvak7k2*acc465(4)
      acc465(15)=Qspvak5k6*acc465(2)
      acc465(16)=Qspvak5k2*acc465(1)
      acc465(17)=Qspvak4k3*acc465(7)
      acc465(18)=Qspvak4k1*acc465(5)
      acc465(19)=Qspvak1k4*acc465(8)
      acc465(20)=Qspvak1k3*acc465(3)
      acc465(21)=Qspk4*acc465(12)
      acc465(22)=Qspk3*acc465(9)
      acc465(23)=Qspk1*acc465(6)
      brack=acc465(10)+acc465(13)+acc465(14)+acc465(15)+acc465(16)+acc465(17)+a&
      &cc465(18)+acc465(19)+acc465(20)+acc465(21)+acc465(22)+acc465(23)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd465h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d465
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d465 = 0.0_ki
      d465 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d465, ki), aimag(d465), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d465h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd465h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d465
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d465 = 0.0_ki
      d465 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d465, ki), aimag(d465), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p12_sbars_epnemumnmubarg_d465h5l1
