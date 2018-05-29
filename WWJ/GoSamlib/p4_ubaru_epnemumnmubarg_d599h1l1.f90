module     p4_ubaru_epnemumnmubarg_d599h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity1d599h1l1.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd599h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc599(41)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak1k7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k7
      Qspk2 = dotproduct(Q,k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      QspQ = dotproduct(Q,Q)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
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
      acc599(25)=abb599(32)
      acc599(26)=abb599(33)
      acc599(27)=abb599(34)
      acc599(28)=abb599(35)
      acc599(29)=abb599(36)
      acc599(30)=abb599(38)
      acc599(31)=abb599(40)
      acc599(32)=-Qspk2+Qspk4+Qspk3
      acc599(33)=acc599(8)*acc599(32)
      acc599(34)=acc599(23)*Qspvak1k3
      acc599(35)=acc599(12)*Qspvak1k2
      acc599(36)=Qspvak4k2*acc599(11)
      acc599(37)=Qspvak4k3*acc599(31)
      acc599(33)=acc599(37)+acc599(36)+acc599(35)+acc599(30)+acc599(34)+acc599(&
      &33)
      acc599(33)=Qspvak5k6*acc599(33)
      acc599(34)=Qspk6+Qspk5
      acc599(35)=-Qspk7-acc599(34)
      acc599(35)=acc599(29)*acc599(35)
      acc599(36)=-acc599(20)*acc599(32)
      acc599(37)=acc599(22)*Qspvak1k6
      acc599(38)=Qspvak1k7*acc599(5)
      acc599(39)=Qspvak4k2*acc599(6)
      acc599(40)=Qspvak4k3*acc599(25)
      acc599(41)=QspQ*acc599(26)
      acc599(33)=acc599(33)+acc599(41)+acc599(40)+acc599(39)+acc599(38)+acc599(&
      &37)+acc599(4)+acc599(36)+acc599(35)
      acc599(33)=Qspvak2k7*acc599(33)
      acc599(35)=acc599(13)*acc599(32)
      acc599(36)=Qspvak1k7*acc599(24)
      acc599(37)=Qspvak4k2*acc599(2)
      acc599(38)=Qspvak4k3*acc599(19)
      acc599(35)=acc599(38)+acc599(37)+acc599(36)+acc599(7)+acc599(35)
      acc599(35)=QspQ*acc599(35)
      acc599(36)=acc599(21)*acc599(32)
      acc599(37)=Qspvak1k7*acc599(28)
      acc599(38)=Qspvak4k2*acc599(17)
      acc599(39)=Qspvak4k3*acc599(27)
      acc599(36)=acc599(39)+acc599(38)+acc599(37)+acc599(14)+acc599(36)
      acc599(36)=Qspk7*acc599(36)
      acc599(32)=acc599(18)*acc599(32)
      acc599(34)=acc599(10)*acc599(34)
      acc599(37)=Qspvak1k7*acc599(15)
      acc599(38)=Qspvak4k2*acc599(16)
      acc599(39)=Qspvak4k3*acc599(9)
      acc599(40)=Qspvak1k7*acc599(1)
      acc599(40)=acc599(3)+acc599(40)
      acc599(40)=Qspvak5k6*acc599(40)
      brack=acc599(32)+acc599(33)+acc599(34)+acc599(35)+acc599(36)+acc599(37)+a&
      &cc599(38)+acc599(39)+acc599(40)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd599h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d599
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3+k7+k6+k5+k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d599 = 0.0_ki
      d599 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d599, ki), aimag(d599), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d599h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd599h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d599
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3+k7+k6+k5+k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d599 = 0.0_ki
      d599 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d599, ki), aimag(d599), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p4_ubaru_epnemumnmubarg_d599h1l1
