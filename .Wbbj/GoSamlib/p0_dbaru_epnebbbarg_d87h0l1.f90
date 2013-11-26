module     p0_dbaru_epnebbbarg_d87h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d87h0l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd87h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc87(90)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval6k7
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k1
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval6k7 = dotproduct(Q,spval6k7)
      QspQ = dotproduct(Q,Q)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      acc87(1)=abb87(16)
      acc87(2)=abb87(17)
      acc87(3)=abb87(18)
      acc87(4)=abb87(19)
      acc87(5)=abb87(20)
      acc87(6)=abb87(21)
      acc87(7)=abb87(22)
      acc87(8)=abb87(23)
      acc87(9)=abb87(24)
      acc87(10)=abb87(25)
      acc87(11)=abb87(26)
      acc87(12)=abb87(27)
      acc87(13)=abb87(28)
      acc87(14)=abb87(29)
      acc87(15)=abb87(30)
      acc87(16)=abb87(31)
      acc87(17)=abb87(32)
      acc87(18)=abb87(33)
      acc87(19)=abb87(34)
      acc87(20)=abb87(35)
      acc87(21)=abb87(36)
      acc87(22)=abb87(38)
      acc87(23)=abb87(40)
      acc87(24)=abb87(43)
      acc87(25)=abb87(44)
      acc87(26)=abb87(45)
      acc87(27)=abb87(46)
      acc87(28)=abb87(50)
      acc87(29)=abb87(51)
      acc87(30)=abb87(53)
      acc87(31)=abb87(54)
      acc87(32)=abb87(55)
      acc87(33)=abb87(56)
      acc87(34)=abb87(57)
      acc87(35)=abb87(58)
      acc87(36)=abb87(60)
      acc87(37)=abb87(61)
      acc87(38)=abb87(63)
      acc87(39)=abb87(65)
      acc87(40)=abb87(66)
      acc87(41)=abb87(67)
      acc87(42)=abb87(69)
      acc87(43)=abb87(70)
      acc87(44)=abb87(71)
      acc87(45)=abb87(72)
      acc87(46)=abb87(74)
      acc87(47)=abb87(76)
      acc87(48)=abb87(77)
      acc87(49)=abb87(78)
      acc87(50)=abb87(82)
      acc87(51)=abb87(83)
      acc87(52)=abb87(87)
      acc87(53)=abb87(94)
      acc87(54)=abb87(104)
      acc87(55)=abb87(107)
      acc87(56)=abb87(115)
      acc87(57)=abb87(125)
      acc87(58)=abb87(140)
      acc87(59)=abb87(153)
      acc87(60)=abb87(203)
      acc87(61)=abb87(230)
      acc87(62)=Qspl6+Qspl5
      acc87(63)=acc87(47)*acc87(62)
      acc87(64)=Qspk1*acc87(37)
      acc87(65)=Qspk2*acc87(46)
      acc87(66)=Qspk7*acc87(32)
      acc87(67)=Qspe7*acc87(16)
      acc87(68)=Qspvak1k2*acc87(18)
      acc87(69)=Qspvak1k3*acc87(43)
      acc87(70)=Qspvak1l5*acc87(6)
      acc87(71)=Qspvak1l6*acc87(41)
      acc87(72)=Qspvak1k7*acc87(40)
      acc87(73)=Qspvak4k2*acc87(38)
      acc87(74)=Qspvak4k7*acc87(36)
      acc87(75)=Qspvak7k2*acc87(53)
      acc87(76)=Qspvak7k3*acc87(48)
      acc87(77)=Qspval5k2*acc87(24)
      acc87(78)=Qspval6k2*acc87(54)
      acc87(63)=acc87(78)+acc87(77)+acc87(76)+acc87(75)+acc87(74)+acc87(73)+acc&
      &87(72)+acc87(71)+acc87(70)+acc87(69)+acc87(68)+acc87(67)+acc87(66)+acc87&
      &(65)+acc87(8)+acc87(64)+acc87(63)
      acc87(63)=Qspval6k2*acc87(63)
      acc87(62)=-acc87(28)*acc87(62)
      acc87(64)=Qspk1*acc87(21)
      acc87(65)=Qspk2*acc87(14)
      acc87(66)=Qspk7*acc87(22)
      acc87(67)=Qspe7*acc87(17)
      acc87(68)=Qspvak1k2*acc87(13)
      acc87(69)=Qspvak1k3*acc87(45)
      acc87(70)=Qspvak1l5*acc87(7)
      acc87(71)=Qspvak1l6*acc87(20)
      acc87(72)=Qspvak1k7*acc87(39)
      acc87(73)=Qspvak4k2*acc87(26)
      acc87(74)=Qspvak4k7*acc87(15)
      acc87(75)=Qspvak7k2*acc87(31)
      acc87(76)=Qspvak7k3*acc87(30)
      acc87(77)=Qspval5k2*acc87(2)
      acc87(62)=acc87(77)+acc87(76)+acc87(75)+acc87(74)+acc87(73)+acc87(72)+acc&
      &87(71)+acc87(70)+acc87(69)+acc87(68)+acc87(67)+acc87(66)+acc87(65)+acc87&
      &(11)+acc87(64)+acc87(62)
      acc87(62)=Qspval5k2*acc87(62)
      acc87(64)=acc87(59)*Qspval6e7
      acc87(65)=acc87(58)*Qspval5e7
      acc87(66)=acc87(57)*Qspval5l6
      acc87(67)=acc87(56)*Qspval6k7
      acc87(68)=acc87(50)*QspQ
      acc87(69)=acc87(49)*Qspval6k3
      acc87(70)=acc87(44)*Qspval5k3
      acc87(71)=acc87(34)*Qspval6l5
      acc87(72)=acc87(25)*Qspval5k7
      acc87(73)=acc87(19)*Qspvae7k2
      acc87(74)=acc87(10)*Qspval6k1
      acc87(75)=acc87(3)*Qspval5k1
      acc87(76)=Qspk1*acc87(29)
      acc87(77)=Qspk2*acc87(51)
      acc87(78)=Qspl5*acc87(9)
      acc87(79)=Qspl6*acc87(55)
      acc87(80)=Qspk7*acc87(60)
      acc87(81)=Qspe7*acc87(27)
      acc87(82)=Qspvak1k2*acc87(23)
      acc87(83)=Qspvak1k3*acc87(42)
      acc87(84)=Qspvak1l5*acc87(4)
      acc87(85)=Qspvak1l6*acc87(5)
      acc87(86)=Qspvak1k7*acc87(12)
      acc87(87)=Qspvak4k2*acc87(35)
      acc87(88)=Qspvak4k7*acc87(33)
      acc87(89)=Qspvak7k2*acc87(52)
      acc87(90)=Qspvak7k3*acc87(61)
      brack=acc87(1)+acc87(62)+acc87(63)+acc87(64)+acc87(65)+acc87(66)+acc87(67&
      &)+acc87(68)+acc87(69)+acc87(70)+acc87(71)+acc87(72)+acc87(73)+acc87(74)+&
      &acc87(75)+acc87(76)+acc87(77)+acc87(78)+acc87(79)+acc87(80)+acc87(81)+ac&
      &c87(82)+acc87(83)+acc87(84)+acc87(85)+acc87(86)+acc87(87)+acc87(88)+acc8&
      &7(89)+acc87(90)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram87_sign, shift => diagram87_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd87h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d87
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d87 = 0.0_ki
      d87 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d87, ki), aimag(d87), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd87h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d87
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d87 = 0.0_ki
      d87 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d87, ki), aimag(d87), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d87h0l1
