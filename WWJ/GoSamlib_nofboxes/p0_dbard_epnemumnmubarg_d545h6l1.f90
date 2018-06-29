module     p0_dbard_epnemumnmubarg_d545h6l1
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity6d545h6l1.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd545h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc545(73)
      complex(ki) :: Qspvak2k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k6
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk5
      complex(ki) :: Qspk6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak5k6
      complex(ki) :: Qspvak5k3
      complex(ki) :: Qspvak4k6
      complex(ki) :: Qspvak2k1
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      QspQ = dotproduct(Q,Q)
      Qspvak2k6 = dotproduct(Q,spvak2k6)
      Qspk1 = dotproduct(Q,k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk5 = dotproduct(Q,k5)
      Qspk6 = dotproduct(Q,k6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak5k6 = dotproduct(Q,spvak5k6)
      Qspvak5k3 = dotproduct(Q,spvak5k3)
      Qspvak4k6 = dotproduct(Q,spvak4k6)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc545(1)=abb545(12)
      acc545(2)=abb545(13)
      acc545(3)=abb545(14)
      acc545(4)=abb545(15)
      acc545(5)=abb545(16)
      acc545(6)=abb545(17)
      acc545(7)=abb545(18)
      acc545(8)=abb545(19)
      acc545(9)=abb545(20)
      acc545(10)=abb545(21)
      acc545(11)=abb545(22)
      acc545(12)=abb545(23)
      acc545(13)=abb545(24)
      acc545(14)=abb545(25)
      acc545(15)=abb545(26)
      acc545(16)=abb545(28)
      acc545(17)=abb545(29)
      acc545(18)=abb545(30)
      acc545(19)=abb545(31)
      acc545(20)=abb545(32)
      acc545(21)=abb545(33)
      acc545(22)=abb545(34)
      acc545(23)=abb545(37)
      acc545(24)=abb545(38)
      acc545(25)=abb545(39)
      acc545(26)=abb545(40)
      acc545(27)=abb545(42)
      acc545(28)=abb545(45)
      acc545(29)=abb545(46)
      acc545(30)=abb545(49)
      acc545(31)=abb545(51)
      acc545(32)=abb545(52)
      acc545(33)=abb545(54)
      acc545(34)=abb545(63)
      acc545(35)=abb545(68)
      acc545(36)=abb545(69)
      acc545(37)=abb545(71)
      acc545(38)=abb545(72)
      acc545(39)=abb545(77)
      acc545(40)=abb545(79)
      acc545(41)=abb545(81)
      acc545(42)=abb545(92)
      acc545(43)=abb545(93)
      acc545(44)=abb545(95)
      acc545(45)=abb545(101)
      acc545(46)=abb545(103)
      acc545(47)=abb545(104)
      acc545(48)=abb545(105)
      acc545(49)=abb545(106)
      acc545(50)=abb545(107)
      acc545(51)=abb545(108)
      acc545(52)=abb545(109)
      acc545(53)=abb545(110)
      acc545(54)=abb545(114)
      acc545(55)=abb545(117)
      acc545(56)=abb545(157)
      acc545(57)=acc545(14)*Qspvak2k3
      acc545(58)=acc545(24)*QspQ
      acc545(59)=acc545(26)*Qspvak2k6
      acc545(60)=acc545(33)*Qspk1
      acc545(61)=acc545(34)*Qspvak7k1
      acc545(62)=acc545(49)*Qspvak2k5
      acc545(63)=acc545(53)*Qspvak2k4
      acc545(64)=Qspvak2k7*acc545(36)
      acc545(57)=acc545(64)+acc545(63)+acc545(62)+acc545(61)+acc545(60)+acc545(&
      &59)+acc545(25)+acc545(58)+acc545(57)
      acc545(57)=Qspvak7k2*acc545(57)
      acc545(58)=acc545(10)*Qspvak2k3
      acc545(59)=acc545(30)*Qspvak2k6
      acc545(60)=-acc545(32)*Qspvak2k4
      acc545(61)=acc545(40)*Qspvak2k5
      acc545(62)=acc545(46)*Qspvak7k1
      acc545(63)=acc545(56)*Qspk2
      acc545(58)=acc545(62)+acc545(63)+acc545(61)+acc545(60)+acc545(59)+acc545(&
      &58)
      acc545(59)=Qspk7-Qspk1
      acc545(58)=acc545(59)*acc545(58)
      acc545(59)=acc545(7)*Qspvak2k3
      acc545(60)=acc545(27)*Qspvak2k6
      acc545(61)=acc545(35)*Qspvak7k1
      acc545(62)=acc545(41)*Qspvak2k4
      acc545(63)=acc545(43)*Qspk2
      acc545(64)=acc545(48)*Qspvak2k5
      acc545(59)=acc545(64)+acc545(63)+acc545(62)+acc545(37)+acc545(61)+acc545(&
      &60)+acc545(59)
      acc545(59)=QspQ*acc545(59)
      acc545(60)=-Qspk3-Qspk4+Qspk5+Qspk6
      acc545(61)=acc545(12)*acc545(60)
      acc545(62)=acc545(2)*Qspvak4k3
      acc545(63)=acc545(17)*Qspvak5k6
      acc545(64)=acc545(18)*Qspvak5k3
      acc545(65)=acc545(21)*Qspvak4k6
      acc545(61)=acc545(65)+acc545(64)+acc545(63)+acc545(8)+acc545(62)+acc545(6&
      &1)
      acc545(61)=Qspvak2k1*acc545(61)
      acc545(62)=acc545(4)*Qspvak5k3
      acc545(63)=acc545(9)*Qspvak4k3
      acc545(64)=acc545(28)*Qspvak5k6
      acc545(65)=acc545(54)*Qspvak4k6
      acc545(62)=acc545(65)+acc545(64)+acc545(63)+acc545(62)
      acc545(62)=Qspvak7k1*acc545(62)
      acc545(63)=acc545(5)*Qspvak4k6
      acc545(64)=acc545(15)*Qspvak4k3
      acc545(65)=acc545(50)*Qspvak5k6
      acc545(66)=acc545(55)*Qspvak5k3
      acc545(63)=acc545(66)+acc545(65)+acc545(64)+acc545(63)+acc545(3)
      acc545(63)=Qspk1*acc545(63)
      acc545(64)=acc545(13)*Qspvak4k3
      acc545(65)=acc545(19)*Qspvak5k6
      acc545(66)=acc545(20)*Qspvak5k3
      acc545(67)=acc545(22)*Qspvak4k6
      acc545(64)=acc545(67)+acc545(66)+acc545(65)+acc545(16)+acc545(64)
      acc545(65)=Qspvak2k1*Qspvak7k2
      acc545(64)=acc545(65)*acc545(64)
      acc545(65)=-acc545(11)*acc545(65)
      acc545(66)=-acc545(38)*Qspk1
      acc545(67)=acc545(47)*Qspvak7k1
      acc545(65)=acc545(67)+acc545(45)+acc545(66)+acc545(65)
      acc545(60)=acc545(60)*acc545(65)
      acc545(65)=acc545(1)*Qspvak2k3
      acc545(66)=acc545(6)*Qspvak2k6
      acc545(67)=acc545(29)*Qspvak2k5
      acc545(68)=acc545(31)*Qspvak4k3
      acc545(69)=acc545(39)*Qspvak5k6
      acc545(70)=acc545(42)*Qspvak2k4
      acc545(71)=acc545(44)*Qspk7
      acc545(72)=acc545(51)*Qspvak4k6
      acc545(73)=acc545(52)*Qspvak5k3
      brack=acc545(23)+acc545(57)+acc545(58)+acc545(59)+acc545(60)+acc545(61)+a&
      &cc545(62)+acc545(63)+acc545(64)+acc545(65)+acc545(66)+acc545(67)+acc545(&
      &68)+acc545(69)+acc545(70)+acc545(71)+acc545(72)+acc545(73)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd545h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d545
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d545 = 0.0_ki
      d545 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d545, ki), aimag(d545), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d545h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd545h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d545
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d545 = 0.0_ki
      d545 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d545, ki), aimag(d545), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbard_epnemumnmubarg_d545h6l1
