module     p0_dbard_epnemumnmubarg_d599h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity1d599h1l1.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd599h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc599(34)
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      acc599(1)=abb599(7)
      acc599(2)=abb599(8)
      acc599(3)=abb599(9)
      acc599(4)=abb599(10)
      acc599(5)=abb599(11)
      acc599(6)=abb599(12)
      acc599(7)=abb599(13)
      acc599(8)=abb599(14)
      acc599(9)=abb599(15)
      acc599(10)=abb599(16)
      acc599(11)=abb599(17)
      acc599(12)=abb599(18)
      acc599(13)=abb599(19)
      acc599(14)=abb599(20)
      acc599(15)=abb599(21)
      acc599(16)=abb599(22)
      acc599(17)=abb599(23)
      acc599(18)=abb599(24)
      acc599(19)=abb599(25)
      acc599(20)=abb599(26)
      acc599(21)=abb599(27)
      acc599(22)=abb599(28)
      acc599(23)=abb599(29)
      acc599(24)=abb599(30)
      acc599(25)=abb599(31)
      acc599(26)=-Qspvak4k2*acc599(17)
      acc599(27)=-Qspvak1k2*acc599(12)
      acc599(26)=acc599(27)+acc599(26)
      acc599(26)=acc599(26)*Qspvak5k6
      acc599(27)=Qspvak7k2*acc599(5)
      acc599(28)=acc599(1)*Qspvak5k2
      acc599(29)=acc599(6)*Qspvak1k7
      acc599(30)=acc599(9)*Qspvak1k6
      acc599(31)=acc599(10)*Qspvak4k6
      acc599(32)=acc599(24)*Qspvak4k7
      acc599(26)=acc599(26)+acc599(32)+acc599(31)+acc599(30)+acc599(29)+acc599(&
      &28)+acc599(27)
      acc599(26)=Qspvak2k7*acc599(26)
      acc599(27)=-acc599(5)*Qspk2
      acc599(28)=acc599(8)*Qspvak5k2
      acc599(29)=acc599(14)*Qspvak5k6
      acc599(30)=acc599(21)*Qspvak1k6
      acc599(31)=acc599(23)*Qspvak4k6
      acc599(27)=acc599(31)+acc599(30)+acc599(29)+acc599(11)+acc599(28)+acc599(&
      &27)
      acc599(27)=QspQ*acc599(27)
      acc599(28)=acc599(3)*Qspvak1k6
      acc599(29)=acc599(7)*Qspk2
      acc599(30)=acc599(15)*Qspvak5k2
      acc599(31)=acc599(22)*Qspvak4k6
      acc599(28)=acc599(31)+acc599(30)+acc599(29)+acc599(28)
      acc599(28)=Qspk7*acc599(28)
      acc599(29)=-acc599(20)*Qspvak5k6
      acc599(29)=acc599(29)+acc599(19)
      acc599(29)=Qspvak4k7*acc599(29)
      acc599(30)=-acc599(13)*Qspvak5k6
      acc599(30)=acc599(25)+acc599(30)
      acc599(30)=Qspvak1k7*acc599(30)
      acc599(31)=acc599(2)*Qspvak7k2
      acc599(32)=acc599(4)*Qspk2
      acc599(33)=acc599(16)*Qspvak1k6
      acc599(34)=acc599(18)*Qspvak4k6
      brack=acc599(26)+acc599(27)+acc599(28)+acc599(29)+acc599(30)+acc599(31)+a&
      &cc599(32)+acc599(33)+acc599(34)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd599h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d599
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d599 = 0.0_ki
      d599 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d599, ki), aimag(d599), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d599h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd599h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d599
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d599 = 0.0_ki
      d599 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d599, ki), aimag(d599), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d599h1l1
