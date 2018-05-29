module     p12_sbars_epnemumnmubarg_d603h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d603h5l1.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd603h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc603(47)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk7
      Qspk2 = dotproduct(Q,k2)
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
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
      acc603(13)=abb603(18)
      acc603(14)=abb603(19)
      acc603(15)=abb603(21)
      acc603(16)=abb603(22)
      acc603(17)=abb603(25)
      acc603(18)=abb603(26)
      acc603(19)=abb603(28)
      acc603(20)=abb603(31)
      acc603(21)=abb603(32)
      acc603(22)=abb603(34)
      acc603(23)=abb603(35)
      acc603(24)=abb603(36)
      acc603(25)=abb603(37)
      acc603(26)=abb603(38)
      acc603(27)=abb603(39)
      acc603(28)=abb603(41)
      acc603(29)=abb603(42)
      acc603(30)=abb603(43)
      acc603(31)=abb603(44)
      acc603(32)=abb603(46)
      acc603(33)=abb603(48)
      acc603(34)=abb603(50)
      acc603(35)=abb603(53)
      acc603(36)=abb603(54)
      acc603(37)=abb603(55)
      acc603(38)=-Qspk2+Qspk6+Qspk5
      acc603(39)=acc603(26)*acc603(38)
      acc603(40)=acc603(16)*Qspvak1k6
      acc603(41)=acc603(14)*Qspvak1k2
      acc603(42)=Qspvak5k2*acc603(11)
      acc603(43)=Qspvak5k6*acc603(15)
      acc603(39)=acc603(43)+acc603(42)+acc603(4)+acc603(40)+acc603(41)+acc603(3&
      &9)
      acc603(39)=Qspvak4k3*acc603(39)
      acc603(40)=Qspk4+Qspk3
      acc603(41)=-acc603(33)*acc603(40)
      acc603(42)=-acc603(31)*acc603(38)
      acc603(43)=acc603(10)*Qspvak1k3
      acc603(44)=Qspk1*acc603(34)
      acc603(45)=QspQ*acc603(32)
      acc603(46)=Qspvak5k2*acc603(12)
      acc603(47)=Qspvak5k6*acc603(23)
      acc603(39)=acc603(39)+acc603(47)+acc603(46)+acc603(45)+acc603(44)+acc603(&
      &30)+acc603(43)+acc603(42)+acc603(41)
      acc603(39)=Qspvak7k2*acc603(39)
      acc603(41)=-acc603(8)*acc603(38)
      acc603(42)=Qspk7*acc603(5)
      acc603(43)=QspQ*acc603(9)
      acc603(44)=Qspvak5k2*acc603(2)
      acc603(45)=Qspvak5k6*acc603(3)
      acc603(41)=acc603(45)+acc603(44)+acc603(43)+acc603(1)+acc603(42)+acc603(4&
      &1)
      acc603(41)=Qspvak4k3*acc603(41)
      acc603(42)=acc603(28)*acc603(40)
      acc603(43)=Qspk1*acc603(29)
      acc603(44)=QspQ*acc603(13)
      acc603(42)=acc603(22)-acc603(43)+acc603(44)+acc603(42)
      acc603(38)=acc603(42)*acc603(38)
      acc603(42)=-acc603(21)*acc603(40)
      acc603(43)=Qspk1*acc603(25)
      acc603(44)=QspQ*acc603(20)
      acc603(42)=acc603(44)+acc603(18)+acc603(43)+acc603(42)
      acc603(42)=Qspvak5k2*acc603(42)
      acc603(43)=-acc603(35)*acc603(40)
      acc603(44)=Qspk1*acc603(37)
      acc603(45)=QspQ*acc603(36)
      acc603(43)=acc603(45)+acc603(17)+acc603(44)+acc603(43)
      acc603(43)=Qspvak5k6*acc603(43)
      acc603(40)=acc603(27)*acc603(40)
      acc603(44)=Qspk7*acc603(19)
      acc603(45)=Qspk1*acc603(24)
      acc603(46)=QspQ*acc603(7)
      brack=acc603(6)+acc603(38)+acc603(39)+acc603(40)+acc603(41)+acc603(42)+ac&
      &c603(43)+acc603(44)+acc603(45)+acc603(46)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd603h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d603
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d603 = 0.0_ki
      d603 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d603, ki), aimag(d603), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d603h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd603h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d603
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d603 = 0.0_ki
      d603 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d603, ki), aimag(d603), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p12_sbars_epnemumnmubarg_d603h5l1
