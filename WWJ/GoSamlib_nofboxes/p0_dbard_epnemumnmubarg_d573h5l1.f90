module     p0_dbard_epnemumnmubarg_d573h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity5d573h5l1.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd573h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc573(42)
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak6k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk2
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak6k2 = dotproduct(Q,spvak6k2)
      QspQ = dotproduct(Q,Q)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk2 = dotproduct(Q,k2)
      acc573(1)=abb573(11)
      acc573(2)=abb573(12)
      acc573(3)=abb573(13)
      acc573(4)=abb573(14)
      acc573(5)=abb573(15)
      acc573(6)=abb573(16)
      acc573(7)=abb573(17)
      acc573(8)=abb573(18)
      acc573(9)=abb573(19)
      acc573(10)=abb573(20)
      acc573(11)=abb573(21)
      acc573(12)=abb573(22)
      acc573(13)=abb573(24)
      acc573(14)=abb573(25)
      acc573(15)=abb573(26)
      acc573(16)=abb573(27)
      acc573(17)=abb573(28)
      acc573(18)=abb573(31)
      acc573(19)=abb573(32)
      acc573(20)=abb573(33)
      acc573(21)=abb573(34)
      acc573(22)=abb573(35)
      acc573(23)=abb573(36)
      acc573(24)=abb573(38)
      acc573(25)=abb573(39)
      acc573(26)=abb573(42)
      acc573(27)=abb573(43)
      acc573(28)=abb573(58)
      acc573(29)=abb573(95)
      acc573(30)=abb573(97)
      acc573(31)=acc573(19)*Qspvak5k3
      acc573(32)=acc573(7)*Qspvak4k3
      acc573(33)=acc573(6)*Qspvak5k6
      acc573(34)=acc573(2)*Qspvak4k6
      acc573(35)=Qspk6+Qspk5-Qspk3-Qspk4
      acc573(35)=acc573(15)*acc573(35)
      acc573(31)=acc573(35)+acc573(34)+acc573(33)+acc573(32)+acc573(31)+acc573(&
      &13)
      acc573(31)=Qspvak1k2*acc573(31)
      acc573(32)=-Qspk7-Qspk1
      acc573(32)=acc573(26)*acc573(32)
      acc573(33)=acc573(22)*Qspvak1k5
      acc573(34)=acc573(20)*Qspvak1k4
      acc573(35)=acc573(3)*Qspvak1k3
      acc573(36)=acc573(1)*Qspvak1k6
      acc573(37)=Qspvak3k2*acc573(18)
      acc573(38)=Qspvak4k2*acc573(9)
      acc573(39)=Qspvak5k2*acc573(8)
      acc573(40)=Qspvak6k2*acc573(30)
      acc573(41)=QspQ*acc573(11)
      acc573(42)=Qspvak7k2*acc573(28)
      acc573(31)=acc573(42)+acc573(31)+acc573(41)+acc573(40)+acc573(39)+acc573(&
      &38)+acc573(37)+acc573(36)+acc573(35)+acc573(4)+acc573(33)+acc573(34)+acc&
      &573(32)
      acc573(31)=Qspvak7k2*acc573(31)
      acc573(32)=Qspvak3k2*acc573(10)
      acc573(33)=Qspvak4k2*acc573(17)
      acc573(34)=Qspvak5k2*acc573(24)
      acc573(35)=Qspvak6k2*acc573(29)
      acc573(32)=acc573(32)-acc573(33)+acc573(34)-acc573(35)
      acc573(33)=acc573(27)+acc573(32)
      acc573(33)=Qspk2*acc573(33)
      acc573(34)=Qspvak3k2*acc573(16)
      acc573(35)=Qspvak4k2*acc573(12)
      acc573(36)=Qspvak5k2*acc573(23)
      acc573(37)=Qspvak6k2*acc573(21)
      acc573(34)=acc573(37)+acc573(36)+acc573(35)+acc573(5)+acc573(34)
      acc573(34)=QspQ*acc573(34)
      acc573(32)=acc573(25)-acc573(32)
      acc573(32)=Qspk7*acc573(32)
      brack=acc573(14)+acc573(31)+acc573(32)+acc573(33)+acc573(34)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd573h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d573
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d573 = 0.0_ki
      d573 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d573, ki), aimag(d573), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d573h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd573h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d573
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d573 = 0.0_ki
      d573 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d573, ki), aimag(d573), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d573h5l1
