module     p8_cbarc_epnemumnmubarg_d281h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity1d281h1l1.f90
   ! generator: buildfortran.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd281h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc281(14)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspk5
      complex(ki) :: Qspk6
      complex(ki) :: Qspvak1k6
      complex(ki) :: QspQ
      Qspk2 = dotproduct(Q,k2)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspk5 = dotproduct(Q,k5)
      Qspk6 = dotproduct(Q,k6)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      QspQ = dotproduct(Q,Q)
      acc281(1)=abb281(8)
      acc281(2)=abb281(9)
      acc281(3)=abb281(10)
      acc281(4)=abb281(11)
      acc281(5)=abb281(12)
      acc281(6)=abb281(14)
      acc281(7)=abb281(15)
      acc281(8)=abb281(16)
      acc281(9)=abb281(17)
      acc281(10)=Qspk2-Qspk3-Qspk4
      acc281(10)=acc281(10)*acc281(8)
      acc281(11)=Qspvak4k3*acc281(9)
      acc281(12)=Qspvak4k2*acc281(2)
      acc281(13)=Qspvak1k3*acc281(4)
      acc281(14)=Qspvak1k2*acc281(3)
      acc281(10)=acc281(10)+acc281(14)+acc281(13)+acc281(12)+acc281(7)+acc281(1&
      &1)
      acc281(10)=Qspvak5k6*acc281(10)
      acc281(11)=Qspk5+Qspk6
      acc281(11)=acc281(6)*acc281(11)
      acc281(12)=Qspvak1k6*acc281(1)
      acc281(13)=QspQ*acc281(5)
      brack=acc281(10)+acc281(11)+acc281(12)+acc281(13)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd281h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d281
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k6-k5-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d281 = 0.0_ki
      d281 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d281, ki), aimag(d281), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p8_cbarc_epnemumnmubarg_d281h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd281h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d281
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k6-k5-k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d281 = 0.0_ki
      d281 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d281, ki), aimag(d281), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p8_cbarc_epnemumnmubarg_d281h1l1
