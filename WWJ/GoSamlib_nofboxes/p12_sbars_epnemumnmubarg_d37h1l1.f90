module     p12_sbars_epnemumnmubarg_d37h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p12_sbars_epnemumnmubarg/helicity1d37h1l1.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd37h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc37(39)
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspk2
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspk2 = dotproduct(Q,k2)
      acc37(1)=abb37(7)
      acc37(2)=abb37(8)
      acc37(3)=abb37(9)
      acc37(4)=abb37(10)
      acc37(5)=abb37(11)
      acc37(6)=abb37(12)
      acc37(7)=abb37(13)
      acc37(8)=abb37(14)
      acc37(9)=abb37(16)
      acc37(10)=abb37(17)
      acc37(11)=abb37(18)
      acc37(12)=abb37(19)
      acc37(13)=abb37(20)
      acc37(14)=abb37(23)
      acc37(15)=abb37(24)
      acc37(16)=abb37(25)
      acc37(17)=abb37(26)
      acc37(18)=abb37(27)
      acc37(19)=abb37(28)
      acc37(20)=abb37(29)
      acc37(21)=abb37(30)
      acc37(22)=abb37(31)
      acc37(23)=abb37(32)
      acc37(24)=abb37(33)
      acc37(25)=abb37(41)
      acc37(26)=abb37(44)
      acc37(27)=abb37(45)
      acc37(28)=abb37(51)
      acc37(29)=abb37(52)
      acc37(30)=abb37(53)
      acc37(31)=-acc37(24)*Qspvak1k3
      acc37(32)=acc37(9)*Qspvak2k7
      acc37(33)=acc37(14)*Qspvak4k3
      acc37(34)=acc37(20)*Qspk7
      acc37(31)=acc37(34)+acc37(33)+acc37(12)+acc37(32)+acc37(31)
      acc37(31)=QspQ*acc37(31)
      acc37(32)=acc37(10)*Qspvak2k7
      acc37(33)=acc37(13)*Qspk7
      acc37(34)=Qspvak1k7*acc37(22)
      acc37(32)=acc37(34)+acc37(26)+acc37(33)+acc37(32)
      acc37(32)=acc37(32)*Qspvak4k3
      acc37(32)=acc37(15)+acc37(32)
      acc37(32)=Qspvak5k6*acc37(32)
      acc37(33)=Qspk3+Qspk4
      acc37(34)=acc37(33)-Qspk1
      acc37(35)=acc37(16)*acc37(34)
      acc37(36)=acc37(3)*Qspvak4k3
      acc37(37)=acc37(21)*Qspvak5k6
      acc37(35)=acc37(37)+acc37(36)+acc37(1)+acc37(35)
      acc37(35)=Qspvak2k7*acc37(35)
      acc37(36)=acc37(27)*acc37(34)
      acc37(37)=acc37(8)*Qspvak4k3
      acc37(38)=acc37(29)*Qspvak5k6
      acc37(36)=acc37(38)+acc37(18)+acc37(37)+acc37(36)
      acc37(36)=Qspk7*acc37(36)
      acc37(37)=acc37(7)*Qspvak1k3
      acc37(38)=Qspvak1k6*acc37(23)
      acc37(39)=Qspvak1k4*acc37(24)
      acc37(37)=acc37(39)+acc37(38)+acc37(37)+acc37(4)
      acc37(37)=Qspvak4k3*acc37(37)
      acc37(34)=-acc37(11)*acc37(34)
      acc37(38)=acc37(6)*Qspvak5k6
      acc37(34)=acc37(34)+acc37(17)+acc37(38)
      acc37(34)=Qspvak1k3*acc37(34)
      acc37(38)=acc37(19)*Qspvak4k3
      acc37(39)=acc37(30)*Qspvak5k6
      acc37(39)=acc37(39)+acc37(2)+acc37(38)
      acc37(39)=Qspk1*acc37(39)
      acc37(38)=acc37(28)-acc37(38)
      acc37(38)=Qspk2*acc37(38)
      acc37(33)=acc37(25)*acc37(33)
      brack=acc37(5)+acc37(31)+acc37(32)+acc37(33)+acc37(34)+acc37(35)+acc37(36&
      &)+acc37(37)+acc37(38)+acc37(39)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd37h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d37
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d37 = 0.0_ki
      d37 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d37, ki), aimag(d37), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d37h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd37h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d37
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d37 = 0.0_ki
      d37 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d37, ki), aimag(d37), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p12_sbars_epnemumnmubarg_d37h1l1
