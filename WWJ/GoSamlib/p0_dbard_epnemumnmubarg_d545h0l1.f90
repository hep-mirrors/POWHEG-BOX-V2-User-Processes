module     p0_dbard_epnemumnmubarg_d545h0l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity0d545h0l1.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd545h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc545(17)
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k2
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc545(1)=abb545(7)
      acc545(2)=abb545(8)
      acc545(3)=abb545(9)
      acc545(4)=abb545(10)
      acc545(5)=abb545(11)
      acc545(6)=abb545(12)
      acc545(7)=abb545(13)
      acc545(8)=abb545(14)
      acc545(9)=abb545(15)
      acc545(10)=abb545(16)
      acc545(11)=abb545(17)
      acc545(12)=QspQ+Qspk2
      acc545(13)=Qspk1-acc545(12)
      acc545(13)=acc545(11)*acc545(13)
      acc545(14)=-Qspvak7k2*acc545(4)
      acc545(15)=Qspvak7k1*acc545(10)
      acc545(13)=acc545(13)+acc545(15)+acc545(14)+acc545(5)
      acc545(13)=Qspvak2k7*acc545(13)
      acc545(14)=-acc545(10)*Qspvak2k1
      acc545(15)=acc545(8)*Qspk2
      acc545(14)=acc545(15)+acc545(14)
      acc545(14)=QspQ*acc545(14)
      acc545(15)=acc545(1)*Qspk2
      acc545(16)=acc545(7)*Qspvak2k1
      acc545(15)=acc545(15)-acc545(16)
      acc545(16)=acc545(3)-acc545(15)
      acc545(16)=Qspk1*acc545(16)
      acc545(15)=Qspk7*acc545(15)
      acc545(12)=acc545(9)*acc545(12)
      acc545(17)=Qspvak1k2*acc545(2)
      brack=acc545(6)+acc545(12)+acc545(13)+acc545(14)+acc545(15)+acc545(16)+ac&
      &c545(17)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd545h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d545
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d545 = 0.0_ki
      d545 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d545, ki), aimag(d545), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d545h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd545h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d545
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d545 = 0.0_ki
      d545 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d545, ki), aimag(d545), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d545h0l1
