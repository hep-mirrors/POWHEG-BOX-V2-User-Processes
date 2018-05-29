module     p4_ubaru_epnemumnmubarg_d469h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity1d469h1l1.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd469h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc469(25)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspk7
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: Qspk1
      Qspk2 = dotproduct(Q,k2)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspk7 = dotproduct(Q,k7)
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      Qspk1 = dotproduct(Q,k1)
      acc469(1)=abb469(9)
      acc469(2)=abb469(10)
      acc469(3)=abb469(11)
      acc469(4)=abb469(12)
      acc469(5)=abb469(13)
      acc469(6)=abb469(14)
      acc469(7)=abb469(15)
      acc469(8)=abb469(17)
      acc469(9)=abb469(18)
      acc469(10)=abb469(23)
      acc469(11)=abb469(28)
      acc469(12)=abb469(30)
      acc469(13)=abb469(32)
      acc469(14)=-Qspk2+Qspk3+Qspk4
      acc469(14)=acc469(11)*acc469(14)
      acc469(15)=Qspvak5k6*acc469(6)
      acc469(16)=Qspvak5k1*acc469(1)
      acc469(17)=Qspvak4k3*acc469(5)
      acc469(18)=Qspvak4k2*acc469(8)
      acc469(19)=Qspvak2k7*acc469(3)
      acc469(20)=Qspvak1k6*acc469(4)
      acc469(21)=Qspvak1k5*acc469(7)
      acc469(22)=Qspk7*acc469(10)
      acc469(23)=Qspk6*acc469(13)
      acc469(24)=Qspk5*acc469(12)
      acc469(25)=Qspk1*acc469(2)
      brack=acc469(9)+acc469(14)+acc469(15)+acc469(16)+acc469(17)+acc469(18)+ac&
      &c469(19)+acc469(20)+acc469(21)+acc469(22)+acc469(23)+acc469(24)+acc469(2&
      &5)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd469h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d469
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3-k7-k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d469 = 0.0_ki
      d469 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d469, ki), aimag(d469), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d469h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd469h1
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
      qshift = -k3-k7-k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d469 = 0.0_ki
      d469 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d469, ki), aimag(d469), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p4_ubaru_epnemumnmubarg_d469h1l1
