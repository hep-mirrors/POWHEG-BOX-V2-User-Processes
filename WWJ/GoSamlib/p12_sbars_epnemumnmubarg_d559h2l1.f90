module     p12_sbars_epnemumnmubarg_d559h2l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity2d559h2l1.f90
   ! generator: buildfortran.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd559h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc559(40)
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak6k1
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2k6
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk2
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak6k1 = dotproduct(Q,spvak6k1)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2k6 = dotproduct(Q,spvak2k6)
      QspQ = dotproduct(Q,Q)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk2 = dotproduct(Q,k2)
      acc559(1)=abb559(12)
      acc559(2)=abb559(13)
      acc559(3)=abb559(14)
      acc559(4)=abb559(15)
      acc559(5)=abb559(16)
      acc559(6)=abb559(17)
      acc559(7)=abb559(18)
      acc559(8)=abb559(19)
      acc559(9)=abb559(20)
      acc559(10)=abb559(21)
      acc559(11)=abb559(23)
      acc559(12)=abb559(26)
      acc559(13)=abb559(28)
      acc559(14)=abb559(31)
      acc559(15)=abb559(37)
      acc559(16)=abb559(40)
      acc559(17)=abb559(43)
      acc559(18)=abb559(44)
      acc559(19)=abb559(48)
      acc559(20)=abb559(49)
      acc559(21)=abb559(52)
      acc559(22)=abb559(56)
      acc559(23)=abb559(58)
      acc559(24)=abb559(60)
      acc559(25)=abb559(63)
      acc559(26)=abb559(65)
      acc559(27)=abb559(81)
      acc559(28)=abb559(100)
      acc559(29)=acc559(10)*Qspvak4k3
      acc559(30)=acc559(8)*Qspvak4k6
      acc559(31)=acc559(3)*Qspvak5k3
      acc559(32)=acc559(1)*Qspvak5k6
      acc559(33)=Qspk6+Qspk5-Qspk3-Qspk4
      acc559(33)=acc559(11)*acc559(33)
      acc559(29)=acc559(33)+acc559(32)+acc559(31)+acc559(7)+acc559(29)+acc559(3&
      &0)
      acc559(29)=Qspvak2k1*acc559(29)
      acc559(30)=-Qspk7-Qspk1
      acc559(30)=acc559(18)*acc559(30)
      acc559(31)=acc559(28)*Qspvak6k1
      acc559(32)=acc559(27)*Qspvak5k1
      acc559(33)=acc559(6)*Qspvak3k1
      acc559(34)=acc559(5)*Qspvak4k1
      acc559(35)=Qspvak2k3*acc559(4)
      acc559(36)=Qspvak2k4*acc559(26)
      acc559(37)=Qspvak2k5*acc559(20)
      acc559(38)=Qspvak2k6*acc559(9)
      acc559(39)=QspQ*acc559(12)
      acc559(40)=Qspvak2k7*acc559(13)
      acc559(29)=acc559(40)+acc559(29)+acc559(39)+acc559(38)+acc559(37)+acc559(&
      &36)+acc559(35)+acc559(34)+acc559(33)+acc559(21)+acc559(31)+acc559(32)+ac&
      &c559(30)
      acc559(29)=Qspvak2k7*acc559(29)
      acc559(30)=Qspvak2k3*acc559(17)
      acc559(31)=Qspvak2k4*acc559(25)
      acc559(32)=Qspvak2k5*acc559(14)
      acc559(33)=Qspvak2k6*acc559(23)
      acc559(30)=acc559(30)-acc559(31)+acc559(32)-acc559(33)
      acc559(31)=acc559(16)-acc559(30)
      acc559(31)=Qspk2*acc559(31)
      acc559(30)=Qspk7*acc559(30)
      acc559(32)=Qspvak2k3*acc559(15)
      acc559(33)=Qspvak2k4*acc559(24)
      acc559(34)=Qspvak2k5*acc559(19)
      acc559(35)=Qspvak2k6*acc559(22)
      acc559(32)=acc559(35)+acc559(34)+acc559(33)+acc559(2)+acc559(32)
      acc559(32)=QspQ*acc559(32)
      brack=acc559(29)+acc559(30)+acc559(31)+acc559(32)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd559h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d559
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d559 = 0.0_ki
      d559 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d559, ki), aimag(d559), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d559h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd559h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d559
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d559 = 0.0_ki
      d559 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d559, ki), aimag(d559), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p12_sbars_epnemumnmubarg_d559h2l1
