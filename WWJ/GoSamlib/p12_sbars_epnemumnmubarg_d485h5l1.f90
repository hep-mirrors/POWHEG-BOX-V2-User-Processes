module     p12_sbars_epnemumnmubarg_d485h5l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d485h5l1.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd485h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc485(62)
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak5k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk2
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      QspQ = dotproduct(Q,Q)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk2 = dotproduct(Q,k2)
      acc485(1)=abb485(5)
      acc485(2)=abb485(6)
      acc485(3)=abb485(7)
      acc485(4)=abb485(8)
      acc485(5)=abb485(9)
      acc485(6)=abb485(10)
      acc485(7)=abb485(11)
      acc485(8)=abb485(12)
      acc485(9)=abb485(13)
      acc485(10)=abb485(14)
      acc485(11)=abb485(15)
      acc485(12)=abb485(16)
      acc485(13)=abb485(17)
      acc485(14)=abb485(18)
      acc485(15)=abb485(19)
      acc485(16)=abb485(20)
      acc485(17)=abb485(21)
      acc485(18)=abb485(22)
      acc485(19)=abb485(23)
      acc485(20)=abb485(24)
      acc485(21)=abb485(25)
      acc485(22)=abb485(26)
      acc485(23)=abb485(27)
      acc485(24)=abb485(28)
      acc485(25)=abb485(29)
      acc485(26)=abb485(30)
      acc485(27)=abb485(31)
      acc485(28)=abb485(32)
      acc485(29)=abb485(33)
      acc485(30)=abb485(34)
      acc485(31)=abb485(35)
      acc485(32)=abb485(36)
      acc485(33)=abb485(37)
      acc485(34)=abb485(38)
      acc485(35)=abb485(39)
      acc485(36)=abb485(40)
      acc485(37)=abb485(41)
      acc485(38)=abb485(42)
      acc485(39)=abb485(43)
      acc485(40)=abb485(44)
      acc485(41)=abb485(45)
      acc485(42)=abb485(47)
      acc485(43)=abb485(48)
      acc485(44)=abb485(49)
      acc485(45)=abb485(50)
      acc485(46)=abb485(51)
      acc485(47)=abb485(52)
      acc485(48)=abb485(53)
      acc485(49)=abb485(54)
      acc485(50)=Qspk7+Qspk1
      acc485(50)=acc485(27)*acc485(50)
      acc485(51)=-Qspvak5k6*acc485(2)
      acc485(51)=acc485(51)+acc485(33)
      acc485(51)=Qspvak1k2*acc485(51)
      acc485(52)=acc485(48)*Qspvak1k6
      acc485(53)=-acc485(49)*Qspvak1k4
      acc485(54)=acc485(46)*Qspvak3k2
      acc485(55)=Qspvak4k2*acc485(47)
      acc485(56)=Qspvak1k3*acc485(3)
      acc485(57)=Qspvak5k2*acc485(45)
      acc485(58)=QspQ*acc485(30)
      acc485(50)=acc485(58)+acc485(57)+acc485(56)+acc485(55)+acc485(54)+acc485(&
      &53)+acc485(52)+acc485(9)+acc485(51)+acc485(50)
      acc485(50)=Qspvak4k3*acc485(50)
      acc485(51)=Qspvak4k2*acc485(46)
      acc485(52)=-Qspvak1k3*acc485(49)
      acc485(53)=Qspvak5k2*acc485(25)
      acc485(51)=acc485(53)+acc485(52)+acc485(13)+acc485(51)
      acc485(51)=QspQ*acc485(51)
      acc485(52)=Qspvak4k2*acc485(36)
      acc485(53)=Qspvak1k3*acc485(24)
      acc485(52)=acc485(52)-acc485(53)
      acc485(53)=acc485(52)-acc485(38)
      acc485(54)=Qspk4+Qspk3
      acc485(53)=-acc485(53)*acc485(54)
      acc485(55)=Qspvak1k2*acc485(32)
      acc485(56)=Qspvak1k3*acc485(29)
      acc485(55)=acc485(56)+acc485(34)+acc485(55)
      acc485(55)=Qspvak5k6*acc485(55)
      acc485(56)=Qspvak5k6*acc485(42)
      acc485(52)=acc485(56)+acc485(1)+acc485(52)
      acc485(52)=Qspk1*acc485(52)
      acc485(56)=Qspvak1k2*acc485(21)
      acc485(57)=Qspvak4k2*acc485(26)
      acc485(58)=Qspvak1k3*acc485(23)
      acc485(59)=Qspk7*acc485(37)
      acc485(60)=acc485(54)-Qspk1
      acc485(61)=acc485(22)*acc485(60)
      acc485(61)=acc485(6)+acc485(61)
      acc485(61)=Qspvak5k2*acc485(61)
      acc485(62)=Qspvak4k3*acc485(44)
      acc485(62)=acc485(16)+acc485(62)
      acc485(62)=Qspvak7k2*acc485(62)
      acc485(50)=acc485(62)+acc485(50)+acc485(51)+acc485(61)+acc485(59)+acc485(&
      &52)+acc485(55)+acc485(58)+acc485(57)+acc485(31)+acc485(56)+acc485(53)
      acc485(50)=Qspvak7k2*acc485(50)
      acc485(51)=Qspk7+Qspk2+acc485(60)
      acc485(51)=acc485(17)*acc485(51)
      acc485(52)=Qspvak5k6*acc485(35)
      acc485(53)=Qspvak5k2*acc485(20)
      acc485(55)=QspQ*acc485(4)
      acc485(51)=acc485(55)+acc485(53)+acc485(52)+acc485(12)+acc485(51)
      acc485(51)=QspQ*acc485(51)
      acc485(52)=Qspk2*acc485(43)
      acc485(53)=Qspk7*acc485(11)
      acc485(55)=Qspk7-Qspk2
      acc485(55)=acc485(55)*Qspvak5k2
      acc485(56)=-acc485(14)*acc485(55)
      acc485(57)=-Qspvak5k2*acc485(5)
      acc485(57)=acc485(8)+acc485(57)
      acc485(57)=QspQ*acc485(57)
      acc485(52)=acc485(57)+acc485(56)+acc485(53)+acc485(7)+acc485(52)
      acc485(52)=Qspvak4k3*acc485(52)
      acc485(53)=acc485(19)*acc485(54)
      acc485(56)=-Qspvak5k6*acc485(41)
      acc485(57)=Qspk1*acc485(19)
      acc485(56)=acc485(57)+acc485(56)+acc485(15)-acc485(53)
      acc485(56)=Qspk7*acc485(56)
      acc485(54)=acc485(18)*acc485(54)
      acc485(53)=acc485(28)-acc485(53)
      acc485(53)=Qspk2*acc485(53)
      acc485(57)=-Qspk2*acc485(41)
      acc485(57)=acc485(39)+acc485(57)
      acc485(57)=Qspvak5k6*acc485(57)
      acc485(58)=Qspk2*acc485(19)
      acc485(58)=-acc485(18)+acc485(58)
      acc485(58)=Qspk1*acc485(58)
      acc485(55)=acc485(40)*acc485(55)
      brack=acc485(10)+acc485(50)+acc485(51)+acc485(52)+acc485(53)+acc485(54)+a&
      &cc485(55)+acc485(56)+acc485(57)+acc485(58)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd485h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d485
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d485 = 0.0_ki
      d485 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d485, ki), aimag(d485), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d485h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd485h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d485
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d485 = 0.0_ki
      d485 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d485, ki), aimag(d485), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p12_sbars_epnemumnmubarg_d485h5l1
