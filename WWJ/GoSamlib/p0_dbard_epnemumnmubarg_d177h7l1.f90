module     p0_dbard_epnemumnmubarg_d177h7l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity7d177h7l1.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd177h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc177(15)
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      acc177(1)=abb177(8)
      acc177(2)=abb177(9)
      acc177(3)=abb177(10)
      acc177(4)=abb177(11)
      acc177(5)=abb177(12)
      acc177(6)=abb177(13)
      acc177(7)=abb177(15)
      acc177(8)=abb177(17)
      acc177(9)=QspQ-Qspk2
      acc177(9)=acc177(6)*acc177(9)
      acc177(10)=Qspvak7k1*acc177(2)
      acc177(11)=Qspvak2k7*acc177(8)
      acc177(12)=Qspvak2k1*acc177(1)
      acc177(13)=Qspvak1k7*acc177(4)
      acc177(14)=Qspk7*acc177(3)
      acc177(15)=Qspk1*acc177(7)
      brack=acc177(5)+acc177(9)+acc177(10)+acc177(11)+acc177(12)+acc177(13)+acc&
      &177(14)+acc177(15)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd177h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d177
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d177 = 0.0_ki
      d177 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d177, ki), aimag(d177), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d177h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd177h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d177
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d177 = 0.0_ki
      d177 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d177, ki), aimag(d177), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d177h7l1
