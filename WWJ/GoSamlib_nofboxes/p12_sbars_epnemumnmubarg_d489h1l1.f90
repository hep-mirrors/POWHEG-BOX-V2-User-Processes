module     p12_sbars_epnemumnmubarg_d489h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p12_sbars_epnemumnmubarg/helicity1d489h1l1.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd489h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc489(47)
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak6k2
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: QspQ
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak6k2 = dotproduct(Q,spvak6k2)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      QspQ = dotproduct(Q,Q)
      acc489(1)=abb489(14)
      acc489(2)=abb489(15)
      acc489(3)=abb489(16)
      acc489(4)=abb489(17)
      acc489(5)=abb489(18)
      acc489(6)=abb489(21)
      acc489(7)=abb489(23)
      acc489(8)=abb489(24)
      acc489(9)=abb489(25)
      acc489(10)=abb489(26)
      acc489(11)=abb489(27)
      acc489(12)=abb489(30)
      acc489(13)=abb489(35)
      acc489(14)=abb489(38)
      acc489(15)=abb489(39)
      acc489(16)=abb489(40)
      acc489(17)=abb489(41)
      acc489(18)=abb489(42)
      acc489(19)=abb489(43)
      acc489(20)=abb489(44)
      acc489(21)=abb489(49)
      acc489(22)=abb489(50)
      acc489(23)=abb489(51)
      acc489(24)=abb489(55)
      acc489(25)=abb489(64)
      acc489(26)=abb489(67)
      acc489(27)=abb489(70)
      acc489(28)=abb489(75)
      acc489(29)=abb489(100)
      acc489(30)=abb489(122)
      acc489(31)=abb489(135)
      acc489(32)=acc489(4)*Qspk1
      acc489(33)=acc489(5)*Qspvak1k7
      acc489(34)=acc489(6)*Qspvak5k2
      acc489(35)=acc489(9)*Qspk7
      acc489(36)=acc489(13)*Qspvak4k3
      acc489(37)=acc489(16)*Qspvak4k2
      acc489(38)=acc489(17)*Qspvak3k2
      acc489(39)=acc489(20)*Qspk2
      acc489(40)=acc489(21)*Qspvak6k2
      acc489(41)=acc489(25)*Qspvak5k3
      acc489(42)=acc489(27)*Qspvak5k6
      acc489(43)=acc489(28)*Qspvak4k6
      acc489(32)=acc489(43)+acc489(42)+acc489(41)+acc489(40)+acc489(39)+acc489(&
      &38)+acc489(37)+acc489(36)+acc489(35)+acc489(34)+acc489(33)+acc489(32)+ac&
      &c489(2)
      acc489(32)=Qspvak2k7*acc489(32)
      acc489(33)=-Qspk3-Qspk4
      acc489(34)=acc489(14)*Qspvak2k7
      acc489(34)=acc489(34)+acc489(29)
      acc489(33)=acc489(34)*acc489(33)
      acc489(34)=Qspk6+Qspk5
      acc489(35)=acc489(19)*Qspvak2k7
      acc489(35)=acc489(35)+acc489(31)
      acc489(34)=acc489(35)*acc489(34)
      acc489(35)=acc489(1)*Qspvak4k3
      acc489(36)=acc489(3)*Qspvak1k7
      acc489(37)=acc489(7)*Qspk1
      acc489(38)=acc489(10)*Qspvak3k2
      acc489(39)=acc489(11)*Qspk7
      acc489(40)=acc489(12)*Qspvak6k2
      acc489(41)=acc489(15)*Qspvak4k2
      acc489(42)=acc489(18)*Qspvak5k2
      acc489(43)=acc489(22)*Qspvak5k6
      acc489(44)=acc489(24)*Qspvak4k6
      acc489(45)=acc489(26)*Qspvak5k3
      acc489(46)=acc489(30)*Qspk2
      acc489(47)=QspQ*acc489(8)
      brack=acc489(23)+acc489(32)+acc489(33)+acc489(34)+acc489(35)+acc489(36)+a&
      &cc489(37)+acc489(38)+acc489(39)+acc489(40)+acc489(41)+acc489(42)+acc489(&
      &43)+acc489(44)+acc489(45)+acc489(46)+acc489(47)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd489h1
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
   & bind(c, name="p12_sbars_epnemumnmubarg_d489h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd489h1
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
end module p12_sbars_epnemumnmubarg_d489h1l1
