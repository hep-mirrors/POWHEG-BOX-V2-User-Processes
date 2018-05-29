module     p12_sbars_epnemumnmubarg_d481h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity1d481h1l1.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd481h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc481(89)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k7
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      acc481(1)=abb481(6)
      acc481(2)=abb481(7)
      acc481(3)=abb481(8)
      acc481(4)=abb481(9)
      acc481(5)=abb481(10)
      acc481(6)=abb481(11)
      acc481(7)=abb481(12)
      acc481(8)=abb481(13)
      acc481(9)=abb481(14)
      acc481(10)=abb481(15)
      acc481(11)=abb481(16)
      acc481(12)=abb481(17)
      acc481(13)=abb481(18)
      acc481(14)=abb481(19)
      acc481(15)=abb481(20)
      acc481(16)=abb481(21)
      acc481(17)=abb481(22)
      acc481(18)=abb481(23)
      acc481(19)=abb481(24)
      acc481(20)=abb481(25)
      acc481(21)=abb481(26)
      acc481(22)=abb481(27)
      acc481(23)=abb481(28)
      acc481(24)=abb481(29)
      acc481(25)=abb481(30)
      acc481(26)=abb481(31)
      acc481(27)=abb481(32)
      acc481(28)=abb481(33)
      acc481(29)=abb481(34)
      acc481(30)=abb481(35)
      acc481(31)=abb481(36)
      acc481(32)=abb481(37)
      acc481(33)=abb481(38)
      acc481(34)=abb481(39)
      acc481(35)=abb481(40)
      acc481(36)=abb481(41)
      acc481(37)=abb481(42)
      acc481(38)=abb481(43)
      acc481(39)=abb481(44)
      acc481(40)=abb481(45)
      acc481(41)=abb481(46)
      acc481(42)=abb481(47)
      acc481(43)=abb481(48)
      acc481(44)=abb481(49)
      acc481(45)=abb481(50)
      acc481(46)=abb481(51)
      acc481(47)=abb481(52)
      acc481(48)=abb481(53)
      acc481(49)=abb481(54)
      acc481(50)=abb481(55)
      acc481(51)=abb481(56)
      acc481(52)=abb481(57)
      acc481(53)=abb481(58)
      acc481(54)=abb481(59)
      acc481(55)=abb481(60)
      acc481(56)=abb481(62)
      acc481(57)=abb481(63)
      acc481(58)=abb481(64)
      acc481(59)=abb481(65)
      acc481(60)=abb481(66)
      acc481(61)=abb481(67)
      acc481(62)=abb481(68)
      acc481(63)=abb481(69)
      acc481(64)=abb481(70)
      acc481(65)=abb481(71)
      acc481(66)=abb481(72)
      acc481(67)=abb481(73)
      acc481(68)=abb481(74)
      acc481(69)=abb481(75)
      acc481(70)=abb481(78)
      acc481(71)=abb481(79)
      acc481(72)=abb481(80)
      acc481(73)=abb481(81)
      acc481(74)=abb481(82)
      acc481(75)=abb481(83)
      acc481(76)=Qspk2+Qspk1
      acc481(76)=acc481(29)*acc481(76)
      acc481(77)=-Qspvak5k6*acc481(10)
      acc481(77)=acc481(77)+acc481(55)
      acc481(77)=Qspvak1k2*acc481(77)
      acc481(78)=acc481(72)*Qspvak3k2
      acc481(79)=-acc481(66)*Qspvak1k4
      acc481(80)=Qspvak1k6*acc481(64)
      acc481(81)=Qspvak4k2*acc481(71)
      acc481(82)=Qspvak7k2*acc481(58)
      acc481(83)=Qspvak5k2*acc481(69)
      acc481(84)=Qspvak1k3*acc481(54)
      acc481(76)=acc481(84)+acc481(83)+acc481(82)+acc481(81)+acc481(80)+acc481(&
      &79)+acc481(8)+acc481(78)+acc481(77)+acc481(76)
      acc481(76)=Qspvak4k3*acc481(76)
      acc481(77)=Qspvak1k2*acc481(50)
      acc481(78)=Qspk1*acc481(68)
      acc481(79)=Qspvak1k3*acc481(46)
      acc481(77)=acc481(79)+acc481(78)+acc481(51)+acc481(77)
      acc481(77)=Qspvak5k6*acc481(77)
      acc481(78)=Qspvak4k2*acc481(72)
      acc481(79)=Qspvak5k2*acc481(7)
      acc481(80)=-Qspvak1k3*acc481(66)
      acc481(78)=acc481(80)+acc481(79)+acc481(19)+acc481(78)
      acc481(78)=QspQ*acc481(78)
      acc481(79)=Qspk4+Qspk3
      acc481(80)=Qspvak4k2*acc481(26)
      acc481(81)=acc481(80)-acc481(65)
      acc481(81)=-acc481(81)*acc481(79)
      acc481(82)=-Qspvak5k2*acc481(17)
      acc481(80)=acc481(82)+acc481(23)+acc481(80)
      acc481(80)=Qspk1*acc481(80)
      acc481(82)=Qspvak1k2*acc481(27)
      acc481(83)=Qspvak4k2*acc481(70)
      acc481(84)=Qspvak7k2*acc481(28)
      acc481(85)=acc481(17)*acc481(79)
      acc481(85)=acc481(15)+acc481(85)
      acc481(85)=Qspvak5k2*acc481(85)
      acc481(86)=acc481(79)-Qspk1
      acc481(87)=acc481(45)*acc481(86)
      acc481(87)=acc481(13)+acc481(87)
      acc481(87)=Qspvak1k3*acc481(87)
      acc481(88)=Qspk2*acc481(67)
      acc481(76)=acc481(76)+acc481(88)+acc481(78)+acc481(77)+acc481(87)+acc481(&
      &80)+acc481(85)+acc481(84)+acc481(83)+acc481(3)+acc481(82)+acc481(81)
      acc481(76)=Qspvak2k7*acc481(76)
      acc481(77)=Qspk2-Qspk7
      acc481(78)=acc481(9)*acc481(77)
      acc481(80)=Qspvak1k6*acc481(73)
      acc481(81)=Qspvak5k2*acc481(41)
      acc481(82)=Qspvak5k6*acc481(63)
      acc481(83)=-QspQ*acc481(60)
      acc481(78)=acc481(83)+acc481(82)-acc481(81)+acc481(24)-acc481(80)+acc481(&
      &78)
      acc481(78)=Qspk2*acc481(78)
      acc481(81)=Qspvak1k6*acc481(74)
      acc481(82)=Qspvak5k2*acc481(40)
      acc481(83)=Qspvak5k6*acc481(47)
      acc481(81)=acc481(83)+acc481(82)+acc481(57)+acc481(81)
      acc481(81)=QspQ*acc481(81)
      acc481(82)=Qspvak1k4*acc481(75)
      acc481(80)=acc481(56)+acc481(80)
      acc481(80)=Qspk7*acc481(80)
      acc481(83)=Qspvak7k2*acc481(59)
      acc481(84)=Qspvak5k2*Qspk7
      acc481(85)=acc481(41)*acc481(84)
      acc481(87)=Qspk1*acc481(61)
      acc481(88)=Qspvak1k3*acc481(11)
      acc481(89)=acc481(6)*Qspvak1k7
      acc481(89)=acc481(62)+acc481(89)
      acc481(89)=Qspvak5k6*acc481(89)
      acc481(78)=acc481(78)+acc481(81)+acc481(89)+acc481(88)+acc481(87)+acc481(&
      &85)+acc481(83)+acc481(80)+acc481(53)+acc481(82)
      acc481(78)=Qspvak4k3*acc481(78)
      acc481(80)=-acc481(37)*acc481(79)
      acc481(81)=Qspvak7k2*acc481(32)
      acc481(82)=Qspvak5k2*acc481(25)
      acc481(83)=Qspk1*acc481(35)
      acc481(85)=Qspvak1k3*acc481(12)
      acc481(87)=Qspvak5k6*acc481(43)
      acc481(88)=QspQ*acc481(38)
      acc481(80)=acc481(88)+acc481(87)+acc481(85)+acc481(83)+acc481(82)+acc481(&
      &81)+acc481(20)+acc481(80)
      acc481(80)=QspQ*acc481(80)
      acc481(81)=-acc481(34)*acc481(79)
      acc481(77)=-acc481(31)*acc481(77)
      acc481(82)=Qspvak5k2*acc481(52)
      acc481(83)=Qspk1*acc481(30)
      acc481(85)=-Qspvak1k3*acc481(14)
      acc481(87)=Qspvak5k6*acc481(49)
      acc481(88)=QspQ*acc481(33)
      acc481(77)=acc481(88)+acc481(87)+acc481(85)+acc481(83)+acc481(82)+acc481(&
      &2)+acc481(77)+acc481(81)
      acc481(77)=Qspk2*acc481(77)
      acc481(81)=Qspvak7k2*acc481(48)
      acc481(82)=Qspk1*acc481(5)
      acc481(83)=Qspvak1k3*acc481(21)
      acc481(81)=acc481(83)+acc481(82)+acc481(44)+acc481(81)
      acc481(81)=Qspvak5k6*acc481(81)
      acc481(82)=Qspk7*acc481(36)
      acc481(83)=-Qspvak7k2*acc481(42)
      acc481(82)=acc481(83)+acc481(1)+acc481(82)
      acc481(82)=Qspk1*acc481(82)
      acc481(83)=acc481(18)*acc481(86)
      acc481(85)=Qspk7*acc481(14)
      acc481(83)=acc481(85)+acc481(83)
      acc481(83)=Qspvak1k3*acc481(83)
      acc481(85)=acc481(22)*acc481(79)
      acc481(86)=Qspk7*acc481(16)
      acc481(79)=acc481(42)*acc481(79)
      acc481(79)=acc481(39)+acc481(79)
      acc481(79)=Qspvak7k2*acc481(79)
      acc481(84)=-acc481(52)*acc481(84)
      brack=acc481(4)+acc481(76)+acc481(77)+acc481(78)+acc481(79)+acc481(80)+ac&
      &c481(81)+acc481(82)+acc481(83)+acc481(84)+acc481(85)+acc481(86)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd481h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d481
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d481 = 0.0_ki
      d481 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d481, ki), aimag(d481), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d481h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd481h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d481
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d481 = 0.0_ki
      d481 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d481, ki), aimag(d481), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p12_sbars_epnemumnmubarg_d481h1l1
