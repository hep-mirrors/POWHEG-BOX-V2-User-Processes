module     p4_ubaru_epnemumnmubarg_d595h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity1d595h1l1.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd595h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc595(47)
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
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk7
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
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk7 = dotproduct(Q,k7)
      acc595(1)=abb595(6)
      acc595(2)=abb595(7)
      acc595(3)=abb595(8)
      acc595(4)=abb595(9)
      acc595(5)=abb595(10)
      acc595(6)=abb595(11)
      acc595(7)=abb595(12)
      acc595(8)=abb595(13)
      acc595(9)=abb595(14)
      acc595(10)=abb595(15)
      acc595(11)=abb595(16)
      acc595(12)=abb595(17)
      acc595(13)=abb595(18)
      acc595(14)=abb595(19)
      acc595(15)=abb595(20)
      acc595(16)=abb595(21)
      acc595(17)=abb595(22)
      acc595(18)=abb595(23)
      acc595(19)=abb595(24)
      acc595(20)=abb595(25)
      acc595(21)=abb595(26)
      acc595(22)=abb595(27)
      acc595(23)=abb595(28)
      acc595(24)=abb595(29)
      acc595(25)=abb595(30)
      acc595(26)=abb595(31)
      acc595(27)=abb595(32)
      acc595(28)=abb595(33)
      acc595(29)=abb595(34)
      acc595(30)=abb595(35)
      acc595(31)=abb595(36)
      acc595(32)=abb595(37)
      acc595(33)=abb595(39)
      acc595(34)=abb595(41)
      acc595(35)=abb595(42)
      acc595(36)=abb595(43)
      acc595(37)=abb595(47)
      acc595(38)=-Qspk2+Qspk4+Qspk3
      acc595(39)=acc595(24)*acc595(38)
      acc595(40)=acc595(32)*Qspvak1k3
      acc595(41)=acc595(18)*Qspvak1k2
      acc595(42)=Qspvak4k2*acc595(7)
      acc595(43)=Qspvak4k3*acc595(28)
      acc595(39)=acc595(43)+acc595(42)+acc595(11)+acc595(40)+acc595(41)+acc595(&
      &39)
      acc595(39)=Qspvak5k6*acc595(39)
      acc595(40)=Qspk6+Qspk5
      acc595(41)=-acc595(14)*acc595(40)
      acc595(42)=-acc595(27)*acc595(38)
      acc595(43)=acc595(13)*Qspvak1k6
      acc595(44)=Qspk1*acc595(8)
      acc595(45)=QspQ*acc595(9)
      acc595(46)=Qspvak4k2*acc595(26)
      acc595(47)=Qspvak4k3*acc595(31)
      acc595(39)=acc595(39)+acc595(47)+acc595(46)+acc595(45)+acc595(44)+acc595(&
      &43)+acc595(10)+acc595(42)+acc595(41)
      acc595(39)=Qspvak2k7*acc595(39)
      acc595(41)=-acc595(25)*acc595(38)
      acc595(42)=Qspk7*acc595(1)
      acc595(43)=QspQ*acc595(23)
      acc595(44)=Qspvak4k2*acc595(20)
      acc595(45)=Qspvak4k3*acc595(35)
      acc595(41)=acc595(45)+acc595(44)+acc595(43)+acc595(22)+acc595(42)+acc595(&
      &41)
      acc595(41)=Qspvak5k6*acc595(41)
      acc595(42)=acc595(33)*acc595(40)
      acc595(43)=Qspk1*acc595(34)
      acc595(44)=QspQ*acc595(15)
      acc595(42)=acc595(29)-acc595(43)+acc595(44)+acc595(42)
      acc595(38)=acc595(42)*acc595(38)
      acc595(42)=acc595(6)*acc595(40)
      acc595(43)=Qspk1*acc595(17)
      acc595(44)=QspQ*acc595(5)
      acc595(42)=acc595(44)+acc595(3)+acc595(43)+acc595(42)
      acc595(42)=Qspvak4k2*acc595(42)
      acc595(43)=-acc595(37)*acc595(40)
      acc595(44)=Qspk1*acc595(36)
      acc595(45)=QspQ*acc595(16)
      acc595(43)=acc595(45)+acc595(30)+acc595(44)+acc595(43)
      acc595(43)=Qspvak4k3*acc595(43)
      acc595(40)=acc595(21)*acc595(40)
      acc595(44)=Qspk7*acc595(12)
      acc595(45)=Qspk1*acc595(19)
      acc595(46)=QspQ*acc595(4)
      brack=acc595(2)+acc595(38)+acc595(39)+acc595(40)+acc595(41)+acc595(42)+ac&
      &c595(43)+acc595(44)+acc595(45)+acc595(46)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd595h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d595
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d595 = 0.0_ki
      d595 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d595, ki), aimag(d595), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d595h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd595h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d595
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d595 = 0.0_ki
      d595 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d595, ki), aimag(d595), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p4_ubaru_epnemumnmubarg_d595h1l1
