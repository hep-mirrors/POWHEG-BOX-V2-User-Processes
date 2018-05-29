module     p4_ubaru_epnemumnmubarg_d33h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity5d33h5l1.f90
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
      use p4_ubaru_epnemumnmubarg_abbrevd33h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc33(53)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak7k6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak7k6 = dotproduct(Q,spvak7k6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      QspQ = dotproduct(Q,Q)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      acc33(1)=abb33(7)
      acc33(2)=abb33(8)
      acc33(3)=abb33(9)
      acc33(4)=abb33(10)
      acc33(5)=abb33(11)
      acc33(6)=abb33(12)
      acc33(7)=abb33(13)
      acc33(8)=abb33(14)
      acc33(9)=abb33(15)
      acc33(10)=abb33(16)
      acc33(11)=abb33(17)
      acc33(12)=abb33(18)
      acc33(13)=abb33(19)
      acc33(14)=abb33(20)
      acc33(15)=abb33(21)
      acc33(16)=abb33(22)
      acc33(17)=abb33(23)
      acc33(18)=abb33(24)
      acc33(19)=abb33(25)
      acc33(20)=abb33(26)
      acc33(21)=abb33(27)
      acc33(22)=abb33(28)
      acc33(23)=abb33(29)
      acc33(24)=abb33(30)
      acc33(25)=abb33(31)
      acc33(26)=abb33(36)
      acc33(27)=abb33(38)
      acc33(28)=abb33(39)
      acc33(29)=abb33(43)
      acc33(30)=abb33(45)
      acc33(31)=abb33(46)
      acc33(32)=abb33(48)
      acc33(33)=abb33(49)
      acc33(34)=abb33(51)
      acc33(35)=abb33(52)
      acc33(36)=abb33(54)
      acc33(37)=abb33(55)
      acc33(38)=abb33(57)
      acc33(39)=abb33(58)
      acc33(40)=abb33(59)
      acc33(41)=Qspvak1k2*acc33(18)
      acc33(42)=-Qspvak7k2*acc33(39)
      acc33(41)=acc33(41)+acc33(42)
      acc33(41)=Qspvak5k6*acc33(41)
      acc33(42)=Qspk1*acc33(15)
      acc33(43)=Qspk7*acc33(5)
      acc33(44)=Qspvak1k7*acc33(21)
      acc33(45)=Qspvak7k1*acc33(40)
      acc33(46)=acc33(10)*Qspvak3k2
      acc33(47)=Qspvak1k2*acc33(16)
      acc33(48)=Qspvak7k2*acc33(28)
      acc33(49)=Qspvak1k6*acc33(17)
      acc33(50)=Qspvak5k2*acc33(3)
      acc33(51)=Qspvak7k6*acc33(20)
      acc33(52)=Qspk2*acc33(6)
      acc33(53)=Qspvak4k2*acc33(12)
      acc33(41)=acc33(41)+acc33(53)+acc33(52)+acc33(51)+acc33(50)+acc33(49)+acc&
      &33(48)+acc33(47)+acc33(46)+acc33(45)+acc33(44)+acc33(43)+acc33(4)+acc33(&
      &42)
      acc33(41)=Qspvak4k3*acc33(41)
      acc33(42)=acc33(35)*Qspvak7k3
      acc33(43)=acc33(24)*Qspvak1k3
      acc33(44)=Qspvak1k2*acc33(2)
      acc33(45)=Qspvak7k2*acc33(36)
      acc33(46)=QspQ*acc33(33)
      acc33(47)=Qspk2*acc33(34)
      acc33(48)=Qspvak4k2*acc33(11)
      acc33(42)=acc33(48)+acc33(47)+acc33(46)+acc33(45)+acc33(44)+acc33(43)+acc&
      &33(42)+acc33(32)
      acc33(42)=Qspvak5k6*acc33(42)
      acc33(43)=Qspvak1k6*acc33(22)
      acc33(44)=Qspvak5k2*acc33(38)
      acc33(45)=Qspvak7k6*acc33(29)
      acc33(43)=-acc33(45)+acc33(43)-acc33(44)
      acc33(44)=acc33(25)-acc33(43)
      acc33(45)=Qspk4+Qspk3
      acc33(44)=acc33(45)*acc33(44)
      acc33(46)=Qspvak1k6*acc33(23)
      acc33(47)=Qspvak5k2*acc33(37)
      acc33(48)=Qspvak7k6*acc33(30)
      acc33(46)=acc33(48)+acc33(47)+acc33(14)+acc33(46)
      acc33(46)=QspQ*acc33(46)
      acc33(43)=acc33(26)+acc33(43)
      acc33(43)=Qspk2*acc33(43)
      acc33(45)=Qspk2-acc33(45)
      acc33(45)=acc33(8)*acc33(45)
      acc33(47)=-QspQ*acc33(10)
      acc33(45)=acc33(47)+acc33(1)+acc33(45)
      acc33(45)=Qspvak4k2*acc33(45)
      acc33(47)=Qspk1*acc33(27)
      acc33(48)=Qspk7*acc33(19)
      acc33(49)=Qspvak1k7*acc33(9)
      acc33(50)=Qspvak3k2*acc33(7)
      acc33(51)=Qspvak7k1*acc33(31)
      brack=acc33(13)+acc33(41)+acc33(42)+acc33(43)+acc33(44)+acc33(45)+acc33(4&
      &6)+acc33(47)+acc33(48)+acc33(49)+acc33(50)+acc33(51)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd33h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d33
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d33 = 0.0_ki
      d33 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d33, ki), aimag(d33), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d33h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd33h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d33
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d33 = 0.0_ki
      d33 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d33, ki), aimag(d33), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p4_ubaru_epnemumnmubarg_d33h5l1
