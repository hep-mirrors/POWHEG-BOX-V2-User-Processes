module     p12_sbars_epnemumnmubarg_d489h6l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity6d489h6l1.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd489h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc489(41)
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k6
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: QspQ
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k6 = dotproduct(Q,spvak2k6)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      QspQ = dotproduct(Q,Q)
      acc489(1)=abb489(13)
      acc489(2)=abb489(14)
      acc489(3)=abb489(15)
      acc489(4)=abb489(16)
      acc489(5)=abb489(17)
      acc489(6)=abb489(18)
      acc489(7)=abb489(19)
      acc489(8)=abb489(20)
      acc489(9)=abb489(22)
      acc489(10)=abb489(23)
      acc489(11)=abb489(27)
      acc489(12)=abb489(28)
      acc489(13)=abb489(29)
      acc489(14)=abb489(30)
      acc489(15)=abb489(31)
      acc489(16)=abb489(32)
      acc489(17)=abb489(34)
      acc489(18)=abb489(36)
      acc489(19)=abb489(38)
      acc489(20)=abb489(41)
      acc489(21)=abb489(46)
      acc489(22)=abb489(47)
      acc489(23)=abb489(51)
      acc489(24)=abb489(53)
      acc489(25)=abb489(54)
      acc489(26)=abb489(65)
      acc489(27)=abb489(78)
      acc489(28)=acc489(2)*Qspk1
      acc489(29)=acc489(3)*Qspvak2k6
      acc489(30)=acc489(4)*Qspvak7k1
      acc489(31)=acc489(5)*Qspvak2k3
      acc489(32)=acc489(7)*Qspvak4k6
      acc489(33)=acc489(13)*Qspvak4k3
      acc489(34)=acc489(15)*Qspvak2k4
      acc489(35)=acc489(16)*Qspk7
      acc489(36)=acc489(19)*Qspvak2k5
      acc489(37)=acc489(20)*Qspvak5k6
      acc489(38)=acc489(23)*Qspvak5k3
      acc489(28)=acc489(38)+acc489(37)+acc489(36)+acc489(35)+acc489(34)+acc489(&
      &33)+acc489(10)+acc489(32)+acc489(31)+acc489(30)+acc489(29)+acc489(28)
      acc489(28)=Qspvak7k2*acc489(28)
      acc489(29)=-Qspk3-Qspk4+Qspk6+Qspk5
      acc489(30)=acc489(26)*Qspvak7k2
      acc489(30)=acc489(30)+acc489(27)
      acc489(29)=acc489(30)*acc489(29)
      acc489(30)=acc489(1)*Qspvak7k1
      acc489(31)=acc489(6)*Qspvak4k3
      acc489(32)=acc489(8)*Qspk7
      acc489(33)=acc489(9)*Qspvak5k6
      acc489(34)=acc489(11)*Qspvak2k4
      acc489(35)=acc489(14)*Qspvak2k5
      acc489(36)=acc489(17)*Qspvak2k6
      acc489(37)=acc489(18)*Qspvak2k3
      acc489(38)=acc489(21)*Qspk1
      acc489(39)=acc489(24)*Qspvak4k6
      acc489(40)=acc489(25)*Qspvak5k3
      acc489(41)=QspQ*acc489(22)
      brack=acc489(12)+acc489(28)+acc489(29)+acc489(30)+acc489(31)+acc489(32)+a&
      &cc489(33)+acc489(34)+acc489(35)+acc489(36)+acc489(37)+acc489(38)+acc489(&
      &39)+acc489(40)+acc489(41)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd489h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d489
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3-k7-k6-k5-k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d489 = 0.0_ki
      d489 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d489, ki), aimag(d489), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d489h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd489h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d489
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3-k7-k6-k5-k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d489 = 0.0_ki
      d489 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d489, ki), aimag(d489), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p12_sbars_epnemumnmubarg_d489h6l1
