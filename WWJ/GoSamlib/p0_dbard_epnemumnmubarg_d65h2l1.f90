module     p0_dbard_epnemumnmubarg_d65h2l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity2d65h2l1.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd65h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc65(85)
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak3k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak5k7
      complex(ki) :: Qspvak6k7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2k6
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak6k1
      complex(ki) :: Qspvak2k7
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak3k7 = dotproduct(Q,spvak3k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak5k7 = dotproduct(Q,spvak5k7)
      Qspvak6k7 = dotproduct(Q,spvak6k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      QspQ = dotproduct(Q,Q)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2k6 = dotproduct(Q,spvak2k6)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak6k1 = dotproduct(Q,spvak6k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      acc65(1)=abb65(12)
      acc65(2)=abb65(13)
      acc65(3)=abb65(14)
      acc65(4)=abb65(15)
      acc65(5)=abb65(16)
      acc65(6)=abb65(17)
      acc65(7)=abb65(20)
      acc65(8)=abb65(21)
      acc65(9)=abb65(27)
      acc65(10)=abb65(28)
      acc65(11)=abb65(31)
      acc65(12)=abb65(32)
      acc65(13)=abb65(42)
      acc65(14)=abb65(47)
      acc65(15)=abb65(48)
      acc65(16)=abb65(52)
      acc65(17)=abb65(53)
      acc65(18)=abb65(54)
      acc65(19)=abb65(55)
      acc65(20)=abb65(57)
      acc65(21)=abb65(63)
      acc65(22)=abb65(64)
      acc65(23)=abb65(67)
      acc65(24)=abb65(71)
      acc65(25)=abb65(72)
      acc65(26)=abb65(74)
      acc65(27)=abb65(75)
      acc65(28)=abb65(87)
      acc65(29)=abb65(90)
      acc65(30)=abb65(95)
      acc65(31)=abb65(97)
      acc65(32)=abb65(103)
      acc65(33)=abb65(106)
      acc65(34)=abb65(109)
      acc65(35)=abb65(138)
      acc65(36)=abb65(153)
      acc65(37)=abb65(156)
      acc65(38)=abb65(162)
      acc65(39)=abb65(168)
      acc65(40)=abb65(179)
      acc65(41)=abb65(184)
      acc65(42)=abb65(188)
      acc65(43)=abb65(194)
      acc65(44)=abb65(201)
      acc65(45)=abb65(204)
      acc65(46)=abb65(209)
      acc65(47)=abb65(211)
      acc65(48)=abb65(212)
      acc65(49)=abb65(213)
      acc65(50)=abb65(226)
      acc65(51)=abb65(228)
      acc65(52)=abb65(230)
      acc65(53)=abb65(260)
      acc65(54)=abb65(278)
      acc65(55)=abb65(280)
      acc65(56)=abb65(282)
      acc65(57)=abb65(283)
      acc65(58)=abb65(287)
      acc65(59)=abb65(295)
      acc65(60)=abb65(296)
      acc65(61)=abb65(302)
      acc65(62)=abb65(309)
      acc65(63)=abb65(357)
      acc65(64)=abb65(360)
      acc65(65)=acc65(5)*Qspvak1k7
      acc65(66)=Qspvak3k7*acc65(23)
      acc65(67)=Qspvak4k7*acc65(17)
      acc65(68)=Qspvak5k7*acc65(13)
      acc65(69)=Qspvak6k7*acc65(24)
      acc65(70)=Qspvak4k3*acc65(14)
      acc65(71)=Qspvak4k6*acc65(29)
      acc65(72)=Qspvak5k3*acc65(31)
      acc65(73)=Qspvak5k6*acc65(28)
      acc65(74)=-Qspk6-Qspk5+Qspk4+Qspk3
      acc65(75)=-acc65(16)*acc65(74)
      acc65(76)=QspQ*acc65(20)
      acc65(77)=Qspvak2k3*acc65(4)
      acc65(78)=Qspvak2k4*acc65(7)
      acc65(79)=Qspvak2k5*acc65(12)
      acc65(80)=Qspvak2k6*acc65(6)
      acc65(81)=Qspk1*acc65(19)
      acc65(82)=Qspk2*acc65(18)
      acc65(83)=Qspk7*acc65(15)
      acc65(84)=Qspvak2k1*acc65(2)
      acc65(65)=acc65(84)+acc65(83)+acc65(82)+acc65(81)+acc65(80)+acc65(79)+acc&
      &65(78)+acc65(77)+acc65(76)+acc65(75)+acc65(73)+acc65(72)+acc65(71)+acc65&
      &(70)+acc65(69)+acc65(68)+acc65(67)+acc65(66)+acc65(10)+acc65(65)
      acc65(65)=Qspvak2k1*acc65(65)
      acc65(66)=Qspk2+Qspk1
      acc65(66)=acc65(25)*acc65(66)
      acc65(67)=acc65(32)*Qspvak7k1
      acc65(68)=Qspvak3k1*acc65(36)
      acc65(69)=Qspvak4k1*acc65(33)
      acc65(70)=Qspvak5k1*acc65(30)
      acc65(71)=Qspvak6k1*acc65(39)
      acc65(72)=Qspvak4k3*acc65(43)
      acc65(73)=Qspvak4k6*acc65(34)
      acc65(75)=Qspvak5k3*acc65(47)
      acc65(76)=Qspvak5k6*acc65(46)
      acc65(77)=acc65(64)*acc65(74)
      acc65(78)=QspQ*acc65(21)
      acc65(79)=Qspvak2k3*acc65(9)
      acc65(80)=Qspvak2k4*acc65(1)
      acc65(81)=Qspvak2k5*acc65(58)
      acc65(82)=Qspvak2k6*acc65(8)
      acc65(83)=Qspk7*acc65(63)
      acc65(84)=Qspvak2k1*acc65(3)
      acc65(85)=Qspvak2k7*acc65(26)
      acc65(66)=acc65(85)+acc65(84)+acc65(83)+acc65(82)+acc65(81)+acc65(80)+acc&
      &65(79)+acc65(78)+acc65(77)+acc65(76)+acc65(75)+acc65(73)+acc65(72)+acc65&
      &(71)+acc65(70)+acc65(69)+acc65(68)+acc65(38)+acc65(67)+acc65(66)
      acc65(66)=Qspvak2k7*acc65(66)
      acc65(67)=Qspvak2k3*acc65(22)
      acc65(68)=Qspvak2k4*acc65(35)
      acc65(69)=Qspvak2k5*acc65(44)
      acc65(70)=Qspvak2k6*acc65(27)
      acc65(67)=acc65(70)+acc65(69)+acc65(68)+acc65(67)
      acc65(67)=QspQ*acc65(67)
      acc65(68)=Qspvak2k3*acc65(45)
      acc65(69)=Qspvak2k4*acc65(11)
      acc65(70)=Qspvak2k5*acc65(37)
      acc65(71)=Qspvak2k6*acc65(59)
      acc65(68)=-acc65(68)-acc65(69)+acc65(70)+acc65(71)
      acc65(69)=acc65(53)+acc65(68)
      acc65(69)=Qspk1*acc65(69)
      acc65(70)=acc65(51)+acc65(68)
      acc65(70)=Qspk2*acc65(70)
      acc65(68)=acc65(40)+acc65(68)
      acc65(68)=Qspk7*acc65(68)
      acc65(71)=Qspvak3k1*acc65(54)
      acc65(72)=Qspvak3k7*acc65(52)
      acc65(73)=Qspvak4k1*acc65(42)
      acc65(75)=Qspvak4k7*acc65(50)
      acc65(76)=Qspvak5k1*acc65(41)
      acc65(77)=Qspvak5k7*acc65(57)
      acc65(78)=Qspvak6k1*acc65(56)
      acc65(79)=Qspvak6k7*acc65(55)
      acc65(80)=Qspvak4k3*acc65(48)
      acc65(81)=Qspvak4k6*acc65(62)
      acc65(82)=Qspvak5k3*acc65(61)
      acc65(83)=Qspvak5k6*acc65(60)
      acc65(74)=acc65(49)*acc65(74)
      brack=acc65(65)+acc65(66)+acc65(67)+acc65(68)+acc65(69)+acc65(70)+acc65(7&
      &1)+acc65(72)+acc65(73)+acc65(74)+acc65(75)+acc65(76)+acc65(77)+acc65(78)&
      &+acc65(79)+acc65(80)+acc65(81)+acc65(82)+acc65(83)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd65h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d65
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d65 = 0.0_ki
      d65 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d65, ki), aimag(d65), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d65h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd65h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d65
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d65 = 0.0_ki
      d65 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d65, ki), aimag(d65), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d65h2l1
