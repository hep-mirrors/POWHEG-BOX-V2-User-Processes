module     p0_dbard_epnemumnmubarg_d477h1l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity1d477h1l1.f90
   ! generator: buildfortran.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd477h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc477(89)
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k6
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk2
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k6 = dotproduct(Q,spvak1k6)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      QspQ = dotproduct(Q,Q)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk7 = dotproduct(Q,k7)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk2 = dotproduct(Q,k2)
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
      acc477(18)=abb477(23)
      acc477(19)=abb477(24)
      acc477(20)=abb477(25)
      acc477(21)=abb477(26)
      acc477(22)=abb477(27)
      acc477(23)=abb477(28)
      acc477(24)=abb477(29)
      acc477(25)=abb477(30)
      acc477(26)=abb477(31)
      acc477(27)=abb477(32)
      acc477(28)=abb477(33)
      acc477(29)=abb477(34)
      acc477(30)=abb477(35)
      acc477(31)=abb477(36)
      acc477(32)=abb477(37)
      acc477(33)=abb477(38)
      acc477(34)=abb477(39)
      acc477(35)=abb477(40)
      acc477(36)=abb477(41)
      acc477(37)=abb477(42)
      acc477(38)=abb477(43)
      acc477(39)=abb477(44)
      acc477(40)=abb477(45)
      acc477(41)=abb477(46)
      acc477(42)=abb477(47)
      acc477(43)=abb477(48)
      acc477(44)=abb477(49)
      acc477(45)=abb477(50)
      acc477(46)=abb477(51)
      acc477(47)=abb477(52)
      acc477(48)=abb477(53)
      acc477(49)=abb477(54)
      acc477(50)=abb477(55)
      acc477(51)=abb477(56)
      acc477(52)=abb477(57)
      acc477(53)=abb477(58)
      acc477(54)=abb477(59)
      acc477(55)=abb477(60)
      acc477(56)=abb477(61)
      acc477(57)=abb477(62)
      acc477(58)=abb477(63)
      acc477(59)=abb477(64)
      acc477(60)=abb477(65)
      acc477(61)=abb477(66)
      acc477(62)=abb477(67)
      acc477(63)=abb477(68)
      acc477(64)=abb477(69)
      acc477(65)=abb477(70)
      acc477(66)=abb477(71)
      acc477(67)=abb477(72)
      acc477(68)=abb477(73)
      acc477(69)=abb477(74)
      acc477(70)=abb477(75)
      acc477(71)=abb477(76)
      acc477(72)=abb477(77)
      acc477(73)=abb477(78)
      acc477(74)=abb477(79)
      acc477(75)=abb477(80)
      acc477(76)=abb477(81)
      acc477(77)=-Qspvak5k6*acc477(6)
      acc477(77)=acc477(77)+acc477(29)
      acc477(77)=Qspvak1k2*acc477(77)
      acc477(78)=acc477(72)*Qspvak1k6
      acc477(79)=-acc477(75)*Qspvak1k4
      acc477(80)=Qspvak3k2*acc477(68)
      acc477(81)=-Qspvak7k2*acc477(48)
      acc477(82)=Qspk1*acc477(31)
      acc477(83)=Qspvak1k3*acc477(38)
      acc477(84)=Qspvak5k2*acc477(26)
      acc477(85)=Qspvak1k7*acc477(61)
      acc477(86)=Qspvak4k2*acc477(69)
      acc477(87)=QspQ*acc477(67)
      acc477(77)=acc477(87)+acc477(86)+acc477(85)+acc477(84)+acc477(83)+acc477(&
      &82)+acc477(81)+acc477(80)+acc477(79)+acc477(78)+acc477(42)+acc477(77)
      acc477(77)=Qspvak4k3*acc477(77)
      acc477(78)=-Qspvak7k2*acc477(43)
      acc477(79)=Qspvak1k3*acc477(13)
      acc477(80)=Qspvak1k7*acc477(20)
      acc477(81)=Qspvak4k2*acc477(15)
      acc477(78)=acc477(81)+acc477(80)+acc477(79)+acc477(64)+acc477(78)
      acc477(78)=Qspvak5k6*acc477(78)
      acc477(79)=Qspvak1k3*acc477(1)
      acc477(79)=acc477(79)+acc477(8)
      acc477(80)=Qspvak5k2*acc477(66)
      acc477(81)=-Qspvak4k2*acc477(27)
      acc477(80)=acc477(81)+acc477(80)+acc477(79)
      acc477(80)=Qspk7*acc477(80)
      acc477(81)=-Qspvak1k3*acc477(75)
      acc477(82)=Qspvak5k2*acc477(37)
      acc477(83)=Qspvak4k2*acc477(68)
      acc477(81)=acc477(83)+acc477(82)+acc477(2)+acc477(81)
      acc477(81)=QspQ*acc477(81)
      acc477(82)=Qspk4+Qspk3
      acc477(79)=acc477(79)*acc477(82)
      acc477(83)=Qspvak7k2*acc477(63)
      acc477(84)=Qspk1*acc477(62)
      acc477(85)=Qspvak1k2*acc477(18)
      acc477(86)=Qspvak1k3*acc477(70)
      acc477(87)=acc477(66)*acc477(82)
      acc477(87)=acc477(32)+acc477(87)
      acc477(87)=Qspvak5k2*acc477(87)
      acc477(88)=Qspvak1k7*acc477(14)
      acc477(89)=-acc477(27)*acc477(82)
      acc477(89)=acc477(65)+acc477(89)
      acc477(89)=Qspvak4k2*acc477(89)
      acc477(77)=acc477(77)+acc477(78)+acc477(81)+acc477(80)+acc477(89)+acc477(&
      &88)+acc477(87)+acc477(86)+acc477(85)+acc477(84)+acc477(3)+acc477(83)+acc&
      &477(79)
      acc477(77)=Qspvak2k7*acc477(77)
      acc477(78)=Qspvak3k2*acc477(60)
      acc477(79)=Qspk1*acc477(47)
      acc477(80)=Qspvak1k2*acc477(58)
      acc477(81)=Qspvak5k2*acc477(44)
      acc477(83)=Qspvak1k7*acc477(11)
      acc477(84)=Qspvak4k2*acc477(59)
      acc477(85)=QspQ*acc477(49)
      acc477(86)=-Qspvak1k7*acc477(50)
      acc477(86)=acc477(51)+acc477(86)
      acc477(86)=Qspvak5k6*acc477(86)
      acc477(78)=acc477(86)+acc477(85)+acc477(84)+acc477(83)+acc477(81)+acc477(&
      &80)+acc477(79)+acc477(9)+acc477(78)
      acc477(78)=Qspvak4k3*acc477(78)
      acc477(79)=-Qspk7-Qspk1
      acc477(79)=acc477(28)*acc477(79)
      acc477(80)=Qspvak7k2*acc477(35)
      acc477(81)=Qspvak1k2*acc477(24)
      acc477(83)=Qspvak5k2*acc477(23)
      acc477(84)=Qspvak1k7*acc477(45)
      acc477(85)=Qspvak4k2*acc477(52)
      acc477(86)=QspQ*acc477(30)
      acc477(79)=acc477(86)+acc477(85)+acc477(84)+acc477(83)+acc477(81)+acc477(&
      &5)+acc477(80)+acc477(79)
      acc477(79)=QspQ*acc477(79)
      acc477(80)=Qspvak7k2*acc477(34)
      acc477(81)=Qspk1*acc477(25)
      acc477(83)=Qspvak1k2*acc477(76)
      acc477(84)=Qspvak5k2*acc477(46)
      acc477(85)=Qspvak1k7*acc477(73)
      acc477(86)=Qspvak4k2*acc477(54)
      acc477(80)=acc477(86)+acc477(85)+acc477(84)+acc477(83)+acc477(81)+acc477(&
      &10)+acc477(80)
      acc477(80)=Qspk7*acc477(80)
      acc477(81)=Qspk2*acc477(22)
      acc477(83)=Qspvak1k7*acc477(36)
      acc477(84)=Qspvak4k2*acc477(57)
      acc477(81)=acc477(84)+acc477(83)+acc477(41)+acc477(81)
      acc477(81)=Qspk7*acc477(81)
      acc477(83)=-acc477(43)*Qspk2
      acc477(84)=Qspvak1k7*acc477(74)
      acc477(85)=Qspvak4k2*acc477(39)
      acc477(83)=acc477(85)+acc477(84)+acc477(4)+acc477(83)
      acc477(83)=QspQ*acc477(83)
      acc477(84)=Qspvak3k2*acc477(55)
      acc477(85)=Qspvak1k7*acc477(7)
      acc477(86)=Qspvak4k2*acc477(56)
      acc477(81)=acc477(83)+acc477(81)+acc477(86)+acc477(85)+acc477(40)+acc477(&
      &84)
      acc477(81)=Qspvak5k6*acc477(81)
      acc477(83)=-Qspvak4k2*acc477(53)
      acc477(83)=acc477(83)-acc477(16)
      acc477(83)=acc477(82)*acc477(83)
      acc477(84)=Qspk1*acc477(21)
      acc477(85)=Qspvak1k2*acc477(17)
      acc477(86)=acc477(33)*acc477(82)
      acc477(86)=acc477(19)+acc477(86)
      acc477(86)=Qspvak5k2*acc477(86)
      acc477(82)=-acc477(12)*acc477(82)
      acc477(82)=acc477(71)+acc477(82)
      acc477(82)=Qspvak1k7*acc477(82)
      brack=acc477(77)+acc477(78)+acc477(79)+acc477(80)+acc477(81)+acc477(82)+a&
      &cc477(83)+acc477(84)+acc477(85)+acc477(86)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd477h1
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
   & bind(c, name="p0_dbard_epnemumnmubarg_d477h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd477h1
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
end module p0_dbard_epnemumnmubarg_d477h1l1
