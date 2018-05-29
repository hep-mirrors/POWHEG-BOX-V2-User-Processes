module     p4_ubaru_epnemumnmubarg_d285h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity1d285h1l1.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd285h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc285(11)
      complex(ki) :: Qspvak5k7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: QspQ
      Qspvak5k7 = dotproduct(Q,spvak5k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      QspQ = dotproduct(Q,Q)
      acc285(1)=abb285(8)
      acc285(2)=abb285(9)
      acc285(3)=abb285(10)
      acc285(4)=abb285(11)
      acc285(5)=abb285(13)
      acc285(6)=abb285(16)
      acc285(7)=abb285(17)
      acc285(8)=Qspvak5k7*acc285(7)
      acc285(9)=Qspvak2k7*acc285(3)
      acc285(10)=Qspvak1k7*acc285(1)
      acc285(11)=Qspk7*acc285(6)
      acc285(8)=acc285(11)+acc285(10)+acc285(9)+acc285(8)
      acc285(8)=Qspvak4k3*acc285(8)
      acc285(9)=Qspvak5k3*acc285(4)
      acc285(10)=Qspvak1k3*acc285(2)
      acc285(11)=QspQ*acc285(5)
      brack=acc285(8)+acc285(9)+acc285(10)+acc285(11)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd285h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d285
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d285 = 0.0_ki
      d285 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d285, ki), aimag(d285), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d285h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd285h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d285
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d285 = 0.0_ki
      d285 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d285, ki), aimag(d285), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p4_ubaru_epnemumnmubarg_d285h1l1
