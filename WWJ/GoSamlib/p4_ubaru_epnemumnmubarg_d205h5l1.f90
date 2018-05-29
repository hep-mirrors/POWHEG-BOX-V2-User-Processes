module     p4_ubaru_epnemumnmubarg_d205h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity5d205h5l1.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd205h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc205(23)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak6k2
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      Qspk2 = dotproduct(Q,k2)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak6k2 = dotproduct(Q,spvak6k2)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      acc205(1)=abb205(14)
      acc205(2)=abb205(15)
      acc205(3)=abb205(16)
      acc205(4)=abb205(17)
      acc205(5)=abb205(18)
      acc205(6)=abb205(20)
      acc205(7)=abb205(23)
      acc205(8)=abb205(28)
      acc205(9)=abb205(29)
      acc205(10)=abb205(30)
      acc205(11)=abb205(31)
      acc205(12)=abb205(65)
      acc205(13)=Qspk2-Qspk3-Qspk4
      acc205(13)=acc205(12)*acc205(13)
      acc205(14)=Qspvak7k1*acc205(1)
      acc205(15)=Qspvak6k2*acc205(8)
      acc205(16)=Qspvak5k6*acc205(10)
      acc205(17)=Qspvak5k2*acc205(7)
      acc205(18)=Qspvak4k3*acc205(9)
      acc205(19)=Qspvak4k2*acc205(3)
      acc205(20)=Qspvak3k2*acc205(5)
      acc205(21)=Qspvak1k7*acc205(2)
      acc205(22)=Qspk7*acc205(11)
      acc205(23)=Qspk1*acc205(4)
      brack=acc205(6)+acc205(13)+acc205(14)+acc205(15)+acc205(16)+acc205(17)+ac&
      &c205(18)+acc205(19)+acc205(20)+acc205(21)+acc205(22)+acc205(23)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd205h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d205
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k6-k5-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d205 = 0.0_ki
      d205 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d205, ki), aimag(d205), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d205h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd205h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d205
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k6-k5-k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d205 = 0.0_ki
      d205 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d205, ki), aimag(d205), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p4_ubaru_epnemumnmubarg_d205h5l1
