module     p4_ubaru_epnemumnmubarg_d603h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity5d603h5l1.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd603h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc603(25)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk7
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk7 = dotproduct(Q,k7)
      acc603(1)=abb603(6)
      acc603(2)=abb603(7)
      acc603(3)=abb603(8)
      acc603(4)=abb603(9)
      acc603(5)=abb603(10)
      acc603(6)=abb603(11)
      acc603(7)=abb603(12)
      acc603(8)=abb603(13)
      acc603(9)=abb603(14)
      acc603(10)=abb603(15)
      acc603(11)=abb603(16)
      acc603(12)=abb603(17)
      acc603(13)=abb603(19)
      acc603(14)=abb603(20)
      acc603(15)=abb603(21)
      acc603(16)=abb603(22)
      acc603(17)=abb603(23)
      acc603(18)=acc603(7)*Qspvak1k2
      acc603(19)=acc603(16)*Qspvak5k2
      acc603(18)=acc603(19)+acc603(18)+acc603(6)
      acc603(18)=acc603(18)*Qspvak4k3
      acc603(19)=acc603(5)*Qspvak4k2
      acc603(20)=acc603(9)*Qspvak1k2
      acc603(21)=acc603(10)*QspQ
      acc603(22)=acc603(13)*Qspk2
      acc603(23)=acc603(14)*Qspvak5k2
      acc603(24)=Qspvak5k3*acc603(15)
      acc603(25)=Qspvak1k3*acc603(12)
      acc603(18)=acc603(23)+acc603(20)+acc603(18)+acc603(25)+acc603(24)+acc603(&
      &22)+acc603(21)+acc603(19)+acc603(2)
      acc603(18)=Qspvak7k2*acc603(18)
      acc603(19)=acc603(17)*Qspvak4k2
      acc603(19)=acc603(19)+acc603(11)
      acc603(19)=Qspk2*acc603(19)
      acc603(20)=acc603(1)*Qspvak4k2
      acc603(20)=acc603(8)+acc603(20)
      acc603(20)=QspQ*acc603(20)
      acc603(21)=Qspk7*acc603(3)
      brack=acc603(4)+acc603(18)+acc603(19)+acc603(20)+acc603(21)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd603h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d603
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d603 = 0.0_ki
      d603 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d603, ki), aimag(d603), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d603h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd603h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d603
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d603 = 0.0_ki
      d603 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d603, ki), aimag(d603), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p4_ubaru_epnemumnmubarg_d603h5l1
