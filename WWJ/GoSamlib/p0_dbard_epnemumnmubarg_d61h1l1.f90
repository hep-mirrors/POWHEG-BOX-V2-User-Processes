module     p0_dbard_epnemumnmubarg_d61h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity1d61h1l1.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd61h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc61(21)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk5
      complex(ki) :: Qspk6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: QspQ
      Qspk2 = dotproduct(Q,k2)
      Qspk5 = dotproduct(Q,k5)
      Qspk6 = dotproduct(Q,k6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      QspQ = dotproduct(Q,Q)
      acc61(1)=abb61(9)
      acc61(2)=abb61(10)
      acc61(3)=abb61(11)
      acc61(4)=abb61(12)
      acc61(5)=abb61(13)
      acc61(6)=abb61(15)
      acc61(7)=abb61(18)
      acc61(8)=abb61(20)
      acc61(9)=abb61(22)
      acc61(10)=abb61(24)
      acc61(11)=abb61(25)
      acc61(12)=abb61(27)
      acc61(13)=abb61(30)
      acc61(14)=Qspk2-Qspk5-Qspk6
      acc61(14)=acc61(14)*acc61(12)
      acc61(15)=acc61(4)*Qspvak1k3
      acc61(16)=Qspvak5k6*acc61(7)
      acc61(17)=Qspvak5k2*acc61(9)
      acc61(18)=Qspvak2k7*acc61(1)
      acc61(19)=Qspvak1k4*acc61(2)
      acc61(20)=Qspk7*acc61(11)
      acc61(21)=Qspk1*acc61(10)
      acc61(14)=acc61(14)+acc61(21)+acc61(20)+acc61(19)+acc61(18)+acc61(17)+acc&
      &61(16)+acc61(6)+acc61(15)
      acc61(14)=Qspvak4k3*acc61(14)
      acc61(15)=-Qspk4-Qspk3
      acc61(16)=acc61(13)*Qspvak4k3
      acc61(16)=acc61(16)+acc61(8)
      acc61(15)=acc61(16)*acc61(15)
      acc61(16)=acc61(3)*Qspvak1k3
      acc61(17)=QspQ*acc61(5)
      brack=acc61(14)+acc61(15)+acc61(16)+acc61(17)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd61h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d61
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3-k7-k6-k5-k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d61 = 0.0_ki
      d61 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d61, ki), aimag(d61), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d61h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd61h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d61
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3-k7-k6-k5-k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d61 = 0.0_ki
      d61 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d61, ki), aimag(d61), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d61h1l1
