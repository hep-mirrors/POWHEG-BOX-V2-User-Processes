module     p0_dbard_epnemumnmubarg_d469h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity5d469h5l1.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd469h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc469(15)
      complex(ki) :: Qspvak6k2
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak2k6
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: Qspk2
      Qspvak6k2 = dotproduct(Q,spvak6k2)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak2k6 = dotproduct(Q,spvak2k6)
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      Qspk2 = dotproduct(Q,k2)
      acc469(1)=abb469(9)
      acc469(2)=abb469(10)
      acc469(3)=abb469(13)
      acc469(4)=abb469(14)
      acc469(5)=abb469(15)
      acc469(6)=abb469(19)
      acc469(7)=abb469(20)
      acc469(8)=abb469(26)
      acc469(9)=Qspvak6k2*acc469(5)
      acc469(10)=Qspvak5k6*acc469(3)
      acc469(11)=Qspvak5k2*acc469(1)
      acc469(12)=Qspvak2k6*acc469(2)
      acc469(13)=Qspk6*acc469(7)
      acc469(14)=Qspk5*acc469(8)
      acc469(15)=Qspk2*acc469(6)
      brack=acc469(4)+acc469(9)+acc469(10)+acc469(11)+acc469(12)+acc469(13)+acc&
      &469(14)+acc469(15)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd469h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d469
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d469 = 0.0_ki
      d469 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d469, ki), aimag(d469), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d469h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd469h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d469
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d469 = 0.0_ki
      d469 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d469, ki), aimag(d469), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d469h5l1
