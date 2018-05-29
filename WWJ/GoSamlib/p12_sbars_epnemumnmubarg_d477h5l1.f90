module     p12_sbars_epnemumnmubarg_d477h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d477h5l1.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd477h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc477(56)
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak5k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak7k2
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      QspQ = dotproduct(Q,Q)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk7 = dotproduct(Q,k7)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc477(1)=abb477(6)
      acc477(2)=abb477(7)
      acc477(3)=abb477(8)
      acc477(4)=abb477(9)
      acc477(5)=abb477(10)
      acc477(6)=abb477(11)
      acc477(7)=abb477(12)
      acc477(8)=abb477(13)
      acc477(9)=abb477(14)
      acc477(10)=abb477(15)
      acc477(11)=abb477(16)
      acc477(12)=abb477(17)
      acc477(13)=abb477(18)
      acc477(14)=abb477(19)
      acc477(15)=abb477(20)
      acc477(16)=abb477(21)
      acc477(17)=abb477(22)
      acc477(18)=abb477(24)
      acc477(19)=abb477(25)
      acc477(20)=abb477(26)
      acc477(21)=abb477(27)
      acc477(22)=abb477(28)
      acc477(23)=abb477(29)
      acc477(24)=abb477(30)
      acc477(25)=abb477(31)
      acc477(26)=abb477(32)
      acc477(27)=abb477(33)
      acc477(28)=abb477(34)
      acc477(29)=abb477(35)
      acc477(30)=abb477(36)
      acc477(31)=abb477(37)
      acc477(32)=abb477(38)
      acc477(33)=abb477(39)
      acc477(34)=abb477(40)
      acc477(35)=abb477(41)
      acc477(36)=abb477(42)
      acc477(37)=abb477(43)
      acc477(38)=abb477(44)
      acc477(39)=abb477(45)
      acc477(40)=abb477(46)
      acc477(41)=abb477(47)
      acc477(42)=abb477(48)
      acc477(43)=abb477(49)
      acc477(44)=abb477(50)
      acc477(45)=-Qspvak5k6*acc477(21)
      acc477(45)=acc477(45)+acc477(15)
      acc477(45)=Qspvak1k2*acc477(45)
      acc477(46)=acc477(42)*Qspvak1k6
      acc477(47)=Qspk1*acc477(11)
      acc477(48)=-acc477(43)*Qspvak1k4
      acc477(49)=acc477(16)*Qspvak3k2
      acc477(50)=Qspvak1k7*acc477(41)
      acc477(51)=Qspvak1k3*acc477(6)
      acc477(52)=Qspvak5k2*acc477(5)
      acc477(53)=QspQ*acc477(35)
      acc477(54)=Qspvak4k2*acc477(33)
      acc477(45)=acc477(54)+acc477(53)+acc477(52)+acc477(51)+acc477(50)+acc477(&
      &49)+acc477(48)+acc477(47)+acc477(46)+acc477(3)+acc477(45)
      acc477(45)=Qspvak4k3*acc477(45)
      acc477(46)=Qspvak1k7*acc477(40)
      acc477(47)=Qspvak1k3*acc477(2)
      acc477(48)=Qspk7*acc477(25)
      acc477(49)=QspQ*acc477(27)
      acc477(50)=Qspvak4k2*acc477(28)
      acc477(46)=acc477(50)+acc477(49)+acc477(48)+acc477(47)+acc477(22)+acc477(&
      &46)
      acc477(46)=Qspvak5k6*acc477(46)
      acc477(47)=Qspvak1k3*acc477(10)
      acc477(48)=Qspvak5k2*acc477(29)
      acc477(47)=acc477(48)+acc477(13)+acc477(47)
      acc477(47)=Qspk7*acc477(47)
      acc477(48)=-Qspvak1k3*acc477(43)
      acc477(49)=Qspvak5k2*acc477(26)
      acc477(48)=acc477(49)+acc477(9)+acc477(48)
      acc477(48)=QspQ*acc477(48)
      acc477(49)=Qspk4+Qspk3
      acc477(50)=-Qspk7-acc477(49)
      acc477(50)=acc477(38)*acc477(50)
      acc477(51)=QspQ*acc477(16)
      acc477(50)=acc477(51)+acc477(14)+acc477(50)
      acc477(50)=Qspvak4k2*acc477(50)
      acc477(51)=Qspvak5k6*acc477(30)
      acc477(52)=Qspvak4k3*acc477(36)
      acc477(51)=acc477(52)+acc477(19)+acc477(51)
      acc477(51)=Qspvak7k2*acc477(51)
      acc477(52)=acc477(12)*acc477(49)
      acc477(53)=Qspk1*acc477(20)
      acc477(54)=Qspvak1k7*acc477(8)
      acc477(55)=Qspvak1k2*acc477(4)
      acc477(56)=acc477(10)*acc477(49)
      acc477(56)=acc477(44)+acc477(56)
      acc477(56)=Qspvak1k3*acc477(56)
      acc477(49)=acc477(29)*acc477(49)
      acc477(49)=acc477(18)+acc477(49)
      acc477(49)=Qspvak5k2*acc477(49)
      acc477(45)=acc477(51)+acc477(45)+acc477(46)+acc477(50)+acc477(48)+acc477(&
      &47)+acc477(49)+acc477(56)+acc477(55)+acc477(54)+acc477(1)+acc477(53)+acc&
      &477(52)
      acc477(45)=Qspvak7k2*acc477(45)
      acc477(46)=Qspk7*acc477(17)
      acc477(47)=QspQ*acc477(40)
      acc477(46)=acc477(46)+acc477(47)
      acc477(46)=Qspvak1k2*acc477(46)
      acc477(47)=Qspk7*acc477(24)
      acc477(48)=QspQ*acc477(39)
      acc477(47)=acc477(47)+acc477(48)
      acc477(47)=Qspvak4k2*acc477(47)
      acc477(46)=acc477(47)+acc477(46)
      acc477(46)=Qspvak5k6*acc477(46)
      acc477(47)=Qspvak1k2*acc477(23)
      acc477(48)=Qspvak5k2*acc477(32)
      acc477(47)=acc477(47)+acc477(48)
      acc477(47)=Qspk7*acc477(47)
      acc477(48)=Qspvak1k2*acc477(7)
      acc477(49)=Qspvak5k2*acc477(31)
      acc477(48)=acc477(48)+acc477(49)
      acc477(48)=QspQ*acc477(48)
      acc477(49)=Qspk7*acc477(37)
      acc477(50)=QspQ*acc477(34)
      acc477(49)=acc477(49)+acc477(50)
      acc477(49)=Qspvak4k2*acc477(49)
      brack=acc477(45)+acc477(46)+acc477(47)+acc477(48)+acc477(49)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd477h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d477
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3-k7-k6-k5-k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d477 = 0.0_ki
      d477 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d477, ki), aimag(d477), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d477h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd477h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d477
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3-k7-k6-k5-k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d477 = 0.0_ki
      d477 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d477, ki), aimag(d477), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p12_sbars_epnemumnmubarg_d477h5l1
