module     p4_ubaru_epnemumnmubarg_d607h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity1d607h1l1.f90
   ! generator: buildfortran.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd607h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc607(34)
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak5k7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak5k7 = dotproduct(Q,spvak5k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
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
      acc607(12)=abb607(18)
      acc607(13)=abb607(19)
      acc607(14)=abb607(20)
      acc607(15)=abb607(21)
      acc607(16)=abb607(22)
      acc607(17)=abb607(23)
      acc607(18)=abb607(24)
      acc607(19)=abb607(25)
      acc607(20)=abb607(26)
      acc607(21)=abb607(27)
      acc607(22)=abb607(28)
      acc607(23)=abb607(29)
      acc607(24)=abb607(30)
      acc607(25)=abb607(31)
      acc607(26)=Qspvak5k2*acc607(17)
      acc607(27)=-Qspvak1k2*acc607(6)
      acc607(26)=acc607(27)+acc607(26)
      acc607(26)=acc607(26)*Qspvak4k3
      acc607(27)=Qspvak7k2*acc607(5)
      acc607(28)=acc607(1)*Qspvak4k2
      acc607(29)=acc607(9)*Qspvak1k3
      acc607(30)=acc607(10)*Qspvak5k3
      acc607(31)=acc607(13)*Qspvak1k7
      acc607(32)=acc607(25)*Qspvak5k7
      acc607(26)=acc607(26)+acc607(32)+acc607(31)+acc607(30)+acc607(29)+acc607(&
      &28)+acc607(27)
      acc607(26)=Qspvak2k7*acc607(26)
      acc607(27)=-acc607(5)*Qspk2
      acc607(28)=acc607(8)*Qspvak4k2
      acc607(29)=acc607(14)*Qspvak4k3
      acc607(30)=acc607(20)*Qspvak1k3
      acc607(31)=acc607(22)*Qspvak5k3
      acc607(27)=acc607(31)+acc607(30)+acc607(29)+acc607(11)+acc607(28)+acc607(&
      &27)
      acc607(27)=QspQ*acc607(27)
      acc607(28)=acc607(3)*Qspvak1k3
      acc607(29)=acc607(7)*Qspk2
      acc607(30)=acc607(21)*Qspvak5k3
      acc607(31)=acc607(24)*Qspvak4k2
      acc607(28)=acc607(31)+acc607(30)+acc607(29)+acc607(28)
      acc607(28)=Qspk7*acc607(28)
      acc607(29)=acc607(23)*Qspvak4k3
      acc607(29)=acc607(29)+acc607(19)
      acc607(29)=Qspvak5k7*acc607(29)
      acc607(30)=-acc607(15)*Qspvak4k3
      acc607(30)=acc607(16)+acc607(30)
      acc607(30)=Qspvak1k7*acc607(30)
      acc607(31)=acc607(2)*Qspvak7k2
      acc607(32)=acc607(4)*Qspk2
      acc607(33)=acc607(12)*Qspvak1k3
      acc607(34)=acc607(18)*Qspvak5k3
      brack=acc607(26)+acc607(27)+acc607(28)+acc607(29)+acc607(30)+acc607(31)+a&
      &cc607(32)+acc607(33)+acc607(34)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd607h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d607
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d607 = 0.0_ki
      d607 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d607, ki), aimag(d607), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d607h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd607h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d607
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d607 = 0.0_ki
      d607 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d607, ki), aimag(d607), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p4_ubaru_epnemumnmubarg_d607h1l1
