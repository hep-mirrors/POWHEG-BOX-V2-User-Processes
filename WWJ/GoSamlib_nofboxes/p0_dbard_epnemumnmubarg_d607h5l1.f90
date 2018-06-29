module     p0_dbard_epnemumnmubarg_d607h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity5d607h5l1.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd607h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc607(32)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k2
      Qspk2 = dotproduct(Q,k2)
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk7 = dotproduct(Q,k7)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      QspQ = dotproduct(Q,Q)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc607(1)=abb607(7)
      acc607(2)=abb607(8)
      acc607(3)=abb607(9)
      acc607(4)=abb607(10)
      acc607(5)=abb607(11)
      acc607(6)=abb607(12)
      acc607(7)=abb607(13)
      acc607(8)=abb607(14)
      acc607(9)=abb607(15)
      acc607(10)=abb607(16)
      acc607(11)=abb607(17)
      acc607(12)=abb607(19)
      acc607(13)=abb607(20)
      acc607(14)=abb607(21)
      acc607(15)=abb607(23)
      acc607(16)=abb607(26)
      acc607(17)=abb607(27)
      acc607(18)=abb607(28)
      acc607(19)=abb607(29)
      acc607(20)=abb607(30)
      acc607(21)=abb607(31)
      acc607(22)=abb607(32)
      acc607(23)=abb607(33)
      acc607(24)=-Qspk2+Qspk6+Qspk5
      acc607(25)=acc607(9)*acc607(24)
      acc607(26)=acc607(23)*Qspvak1k6
      acc607(27)=Qspvak1k2*acc607(11)
      acc607(28)=Qspvak5k2*acc607(7)
      acc607(29)=Qspvak5k6*acc607(12)
      acc607(25)=acc607(29)+acc607(28)+acc607(27)+acc607(26)+acc607(4)+acc607(2&
      &5)
      acc607(25)=Qspvak4k3*acc607(25)
      acc607(26)=Qspk7+Qspk3+Qspk4
      acc607(26)=acc607(17)*acc607(26)
      acc607(27)=acc607(18)*acc607(24)
      acc607(28)=acc607(6)*Qspvak1k3
      acc607(29)=-acc607(14)*Qspvak1k7
      acc607(30)=Qspvak5k2*acc607(2)
      acc607(31)=Qspvak5k6*acc607(20)
      acc607(32)=QspQ*acc607(16)
      acc607(25)=acc607(25)+acc607(32)+acc607(31)+acc607(30)+acc607(29)+acc607(&
      &28)+acc607(1)+acc607(27)+acc607(26)
      acc607(25)=Qspvak7k2*acc607(25)
      acc607(26)=acc607(15)*acc607(24)
      acc607(27)=Qspvak1k2*acc607(14)
      acc607(28)=Qspvak5k2*acc607(10)
      acc607(29)=Qspvak5k6*acc607(19)
      acc607(26)=acc607(29)+acc607(28)+acc607(5)+acc607(27)+acc607(26)
      acc607(26)=QspQ*acc607(26)
      acc607(24)=acc607(13)*acc607(24)
      acc607(27)=Qspvak1k2*acc607(3)
      acc607(28)=Qspvak5k2*acc607(21)
      acc607(29)=Qspvak5k6*acc607(22)
      acc607(24)=acc607(29)+acc607(28)+acc607(8)+acc607(27)+acc607(24)
      acc607(24)=Qspk7*acc607(24)
      brack=acc607(24)+acc607(25)+acc607(26)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd607h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d607
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3+k7+k6+k5+k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d607 = 0.0_ki
      d607 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d607, ki), aimag(d607), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d607h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd607h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d607
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3+k7+k6+k5+k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d607 = 0.0_ki
      d607 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d607, ki), aimag(d607), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d607h5l1
