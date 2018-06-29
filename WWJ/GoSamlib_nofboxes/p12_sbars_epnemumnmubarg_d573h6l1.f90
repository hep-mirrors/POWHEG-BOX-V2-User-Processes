module     p12_sbars_epnemumnmubarg_d573h6l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p12_sbars_epnemumnmubarg/helicity6d573h6l1.f90
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
      use p12_sbars_epnemumnmubarg_abbrevd573h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc573(73)
      complex(ki) :: Qspk6
      complex(ki) :: Qspk5
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak6k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2k6
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk2
      Qspk6 = dotproduct(Q,k6)
      Qspk5 = dotproduct(Q,k5)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak6k1 = dotproduct(Q,spvak6k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2k6 = dotproduct(Q,spvak2k6)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk2 = dotproduct(Q,k2)
      acc573(1)=abb573(11)
      acc573(2)=abb573(12)
      acc573(3)=abb573(13)
      acc573(4)=abb573(14)
      acc573(5)=abb573(15)
      acc573(6)=abb573(16)
      acc573(7)=abb573(17)
      acc573(8)=abb573(18)
      acc573(9)=abb573(19)
      acc573(10)=abb573(20)
      acc573(11)=abb573(21)
      acc573(12)=abb573(22)
      acc573(13)=abb573(23)
      acc573(14)=abb573(24)
      acc573(15)=abb573(25)
      acc573(16)=abb573(26)
      acc573(17)=abb573(27)
      acc573(18)=abb573(28)
      acc573(19)=abb573(29)
      acc573(20)=abb573(30)
      acc573(21)=abb573(31)
      acc573(22)=abb573(32)
      acc573(23)=abb573(33)
      acc573(24)=abb573(34)
      acc573(25)=abb573(35)
      acc573(26)=abb573(36)
      acc573(27)=abb573(41)
      acc573(28)=abb573(42)
      acc573(29)=abb573(43)
      acc573(30)=abb573(47)
      acc573(31)=abb573(48)
      acc573(32)=abb573(50)
      acc573(33)=abb573(53)
      acc573(34)=abb573(55)
      acc573(35)=abb573(59)
      acc573(36)=abb573(61)
      acc573(37)=abb573(63)
      acc573(38)=abb573(64)
      acc573(39)=abb573(67)
      acc573(40)=abb573(68)
      acc573(41)=abb573(73)
      acc573(42)=abb573(75)
      acc573(43)=abb573(76)
      acc573(44)=abb573(79)
      acc573(45)=abb573(87)
      acc573(46)=abb573(94)
      acc573(47)=abb573(95)
      acc573(48)=abb573(102)
      acc573(49)=abb573(110)
      acc573(50)=abb573(112)
      acc573(51)=abb573(114)
      acc573(52)=abb573(152)
      acc573(53)=abb573(208)
      acc573(54)=abb573(247)
      acc573(55)=-Qspk6-Qspk5+Qspk4+Qspk3
      acc573(56)=-acc573(20)*acc573(55)
      acc573(57)=Qspvak4k3*acc573(24)
      acc573(58)=Qspvak4k6*acc573(23)
      acc573(59)=Qspvak5k3*acc573(22)
      acc573(60)=Qspvak5k6*acc573(21)
      acc573(56)=acc573(60)+acc573(59)+acc573(58)+acc573(57)+acc573(9)+acc573(5&
      &6)
      acc573(56)=Qspvak2k1*acc573(56)
      acc573(57)=-acc573(34)*acc573(55)
      acc573(58)=acc573(42)*Qspvak6k1
      acc573(59)=acc573(38)*Qspvak4k1
      acc573(60)=acc573(37)*Qspvak3k1
      acc573(61)=acc573(26)*Qspvak5k1
      acc573(62)=acc573(17)*Qspvak2k7
      acc573(63)=Qspk1*acc573(36)
      acc573(64)=Qspvak2k3*acc573(16)
      acc573(65)=Qspvak2k4*acc573(41)
      acc573(66)=Qspvak2k5*acc573(31)
      acc573(67)=Qspvak2k6*acc573(12)
      acc573(68)=Qspvak4k3*acc573(43)
      acc573(69)=Qspvak4k6*acc573(51)
      acc573(70)=Qspvak5k3*acc573(47)
      acc573(71)=Qspvak5k6*acc573(25)
      acc573(72)=Qspk7*acc573(32)
      acc573(73)=QspQ*acc573(29)
      acc573(56)=acc573(73)+acc573(72)+acc573(56)+acc573(71)+acc573(70)+acc573(&
      &69)+acc573(68)+acc573(67)+acc573(66)+acc573(65)+acc573(64)+acc573(63)+ac&
      &c573(62)+acc573(5)+acc573(61)+acc573(60)+acc573(58)+acc573(59)+acc573(57)
      acc573(56)=Qspvak7k2*acc573(56)
      acc573(57)=-acc573(48)*acc573(55)
      acc573(58)=Qspvak2k3*acc573(10)
      acc573(59)=Qspvak2k4*acc573(40)
      acc573(60)=Qspvak2k5*acc573(30)
      acc573(61)=Qspvak2k6*acc573(11)
      acc573(62)=Qspvak4k3*acc573(7)
      acc573(63)=Qspvak4k6*acc573(46)
      acc573(64)=Qspvak5k3*acc573(35)
      acc573(65)=Qspvak5k6*acc573(27)
      acc573(57)=acc573(65)+acc573(64)+acc573(63)+acc573(62)+acc573(61)+acc573(&
      &60)+acc573(59)+acc573(3)+acc573(58)+acc573(57)
      acc573(57)=QspQ*acc573(57)
      acc573(58)=acc573(55)*acc573(53)
      acc573(59)=Qspvak4k3*acc573(14)
      acc573(60)=Qspvak4k6*acc573(50)
      acc573(61)=Qspvak5k3*acc573(45)
      acc573(62)=Qspvak5k6*acc573(39)
      acc573(58)=-acc573(58)+acc573(59)+acc573(60)+acc573(61)-acc573(62)
      acc573(59)=Qspvak2k3*acc573(15)
      acc573(60)=Qspvak2k4*acc573(33)
      acc573(61)=Qspvak2k5*acc573(19)
      acc573(62)=Qspvak2k6*acc573(18)
      acc573(59)=acc573(62)+acc573(61)+acc573(59)-acc573(60)
      acc573(60)=acc573(28)-acc573(59)-acc573(58)
      acc573(60)=Qspk7*acc573(60)
      acc573(61)=Qspk1*acc573(54)
      acc573(62)=-QspQ*acc573(17)
      acc573(58)=acc573(62)+acc573(1)+acc573(61)+acc573(59)-acc573(58)
      acc573(58)=Qspk2*acc573(58)
      acc573(55)=-acc573(52)*acc573(55)
      acc573(59)=Qspvak2k7*acc573(2)
      acc573(61)=Qspk1*acc573(13)
      acc573(62)=Qspvak4k3*acc573(6)
      acc573(63)=Qspvak4k6*acc573(49)
      acc573(64)=Qspvak5k3*acc573(4)
      acc573(65)=Qspvak5k6*acc573(44)
      brack=acc573(8)+acc573(55)+acc573(56)+acc573(57)+acc573(58)+acc573(59)+ac&
      &c573(60)+acc573(61)+acc573(62)+acc573(63)+acc573(64)+acc573(65)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd573h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d573
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d573 = 0.0_ki
      d573 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d573, ki), aimag(d573), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d573h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd573h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d573
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d573 = 0.0_ki
      d573 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d573, ki), aimag(d573), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p12_sbars_epnemumnmubarg_d573h6l1
