module     p4_ubaru_epnemumnmubarg_d971h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity1d971h1l1.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd971h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc971(24)
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak5k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk2 = dotproduct(Q,k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak5k7 = dotproduct(Q,spvak5k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      acc971(1)=abb971(8)
      acc971(2)=abb971(9)
      acc971(3)=abb971(10)
      acc971(4)=abb971(11)
      acc971(5)=abb971(12)
      acc971(6)=abb971(13)
      acc971(7)=abb971(14)
      acc971(8)=abb971(16)
      acc971(9)=abb971(17)
      acc971(10)=abb971(19)
      acc971(11)=abb971(22)
      acc971(12)=abb971(23)
      acc971(13)=abb971(24)
      acc971(14)=abb971(25)
      acc971(15)=abb971(29)
      acc971(16)=abb971(35)
      acc971(17)=acc971(4)*Qspvak4k2
      acc971(18)=acc971(13)*Qspvak4k3
      acc971(19)=Qspvak5k3*acc971(11)
      acc971(20)=Qspvak5k2*acc971(9)
      acc971(21)=Qspvak1k3*acc971(3)
      acc971(22)=Qspvak1k2*acc971(6)
      acc971(17)=acc971(22)+acc971(21)+acc971(20)+acc971(19)+acc971(18)+acc971(&
      &10)+acc971(17)
      acc971(17)=Qspvak2k7*acc971(17)
      acc971(18)=Qspk2-Qspk4-Qspk3
      acc971(19)=acc971(5)*Qspvak2k7
      acc971(19)=acc971(19)+acc971(15)
      acc971(18)=acc971(19)*acc971(18)
      acc971(19)=acc971(2)*Qspvak4k3
      acc971(20)=acc971(7)*Qspvak4k2
      acc971(21)=Qspvak5k7*acc971(16)
      acc971(22)=Qspvak1k7*acc971(1)
      acc971(23)=Qspk7*acc971(14)
      acc971(24)=QspQ*acc971(8)
      brack=acc971(12)+acc971(17)+acc971(18)+acc971(19)+acc971(20)+acc971(21)+a&
      &cc971(22)+acc971(23)+acc971(24)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd971h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d971
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d971 = 0.0_ki
      d971 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d971, ki), aimag(d971), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d971h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd971h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d971
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d971 = 0.0_ki
      d971 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d971, ki), aimag(d971), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p4_ubaru_epnemumnmubarg_d971h1l1
