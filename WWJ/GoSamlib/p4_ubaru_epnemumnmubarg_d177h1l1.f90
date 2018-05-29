module     p4_ubaru_epnemumnmubarg_d177h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity1d177h1l1.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd177h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc177(24)
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk5
      complex(ki) :: Qspk6
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak6k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk5 = dotproduct(Q,k5)
      Qspk6 = dotproduct(Q,k6)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak6k2 = dotproduct(Q,spvak6k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      acc177(1)=abb177(13)
      acc177(2)=abb177(14)
      acc177(3)=abb177(15)
      acc177(4)=abb177(16)
      acc177(5)=abb177(17)
      acc177(6)=abb177(18)
      acc177(7)=abb177(19)
      acc177(8)=abb177(20)
      acc177(9)=abb177(21)
      acc177(10)=abb177(22)
      acc177(11)=abb177(30)
      acc177(12)=abb177(31)
      acc177(13)=abb177(37)
      acc177(14)=abb177(39)
      acc177(15)=abb177(74)
      acc177(16)=Qspk3+Qspk4-Qspk5-Qspk6
      acc177(16)=acc177(16)*acc177(3)
      acc177(17)=Qspvak5k6*acc177(7)
      acc177(18)=Qspvak5k3*acc177(8)
      acc177(19)=Qspvak4k6*acc177(9)
      acc177(20)=Qspvak4k3*acc177(10)
      acc177(16)=acc177(16)+acc177(20)+acc177(19)+acc177(18)+acc177(17)+acc177(&
      &1)
      acc177(16)=Qspvak1k2*acc177(16)
      acc177(17)=Qspvak7k2*acc177(11)
      acc177(18)=Qspvak6k2*acc177(15)
      acc177(19)=Qspvak5k2*acc177(2)
      acc177(20)=Qspvak4k2*acc177(4)
      acc177(21)=Qspvak3k2*acc177(5)
      acc177(22)=Qspvak1k7*acc177(6)
      acc177(23)=Qspk1*acc177(14)
      acc177(24)=QspQ*acc177(13)
      brack=acc177(12)+acc177(16)+acc177(17)+acc177(18)+acc177(19)+acc177(20)+a&
      &cc177(21)+acc177(22)+acc177(23)+acc177(24)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd177h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d177
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d177 = 0.0_ki
      d177 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d177, ki), aimag(d177), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d177h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd177h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d177
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d177 = 0.0_ki
      d177 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d177, ki), aimag(d177), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p4_ubaru_epnemumnmubarg_d177h1l1
