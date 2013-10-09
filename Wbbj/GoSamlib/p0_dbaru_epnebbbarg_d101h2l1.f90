module     p0_dbaru_epnebbbarg_d101h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d101h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd101h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc101(90)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk1
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspe7 = dotproduct(Q,e7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk1 = dotproduct(Q,k1)
      acc101(1)=abb101(9)
      acc101(2)=abb101(10)
      acc101(3)=abb101(11)
      acc101(4)=abb101(12)
      acc101(5)=abb101(13)
      acc101(6)=abb101(14)
      acc101(7)=abb101(15)
      acc101(8)=abb101(17)
      acc101(9)=abb101(18)
      acc101(10)=abb101(19)
      acc101(11)=abb101(20)
      acc101(12)=abb101(21)
      acc101(13)=abb101(22)
      acc101(14)=abb101(23)
      acc101(15)=abb101(24)
      acc101(16)=abb101(25)
      acc101(17)=abb101(26)
      acc101(18)=abb101(28)
      acc101(19)=abb101(29)
      acc101(20)=abb101(30)
      acc101(21)=abb101(31)
      acc101(22)=abb101(32)
      acc101(23)=abb101(33)
      acc101(24)=abb101(34)
      acc101(25)=abb101(35)
      acc101(26)=abb101(36)
      acc101(27)=abb101(37)
      acc101(28)=abb101(38)
      acc101(29)=abb101(39)
      acc101(30)=abb101(41)
      acc101(31)=abb101(42)
      acc101(32)=abb101(43)
      acc101(33)=abb101(44)
      acc101(34)=abb101(45)
      acc101(35)=abb101(46)
      acc101(36)=abb101(47)
      acc101(37)=abb101(48)
      acc101(38)=abb101(49)
      acc101(39)=abb101(50)
      acc101(40)=abb101(51)
      acc101(41)=abb101(54)
      acc101(42)=abb101(55)
      acc101(43)=abb101(56)
      acc101(44)=abb101(57)
      acc101(45)=abb101(58)
      acc101(46)=abb101(60)
      acc101(47)=abb101(61)
      acc101(48)=abb101(62)
      acc101(49)=abb101(64)
      acc101(50)=abb101(65)
      acc101(51)=abb101(66)
      acc101(52)=abb101(67)
      acc101(53)=abb101(68)
      acc101(54)=abb101(69)
      acc101(55)=abb101(70)
      acc101(56)=abb101(71)
      acc101(57)=abb101(72)
      acc101(58)=abb101(73)
      acc101(59)=abb101(75)
      acc101(60)=abb101(77)
      acc101(61)=abb101(78)
      acc101(62)=abb101(79)
      acc101(63)=abb101(80)
      acc101(64)=abb101(82)
      acc101(65)=abb101(87)
      acc101(66)=abb101(103)
      acc101(67)=abb101(106)
      acc101(68)=abb101(116)
      acc101(69)=abb101(117)
      acc101(70)=abb101(120)
      acc101(71)=abb101(122)
      acc101(72)=abb101(123)
      acc101(73)=abb101(124)
      acc101(74)=Qspk4+Qspk3
      acc101(75)=acc101(64)*acc101(74)
      acc101(76)=Qspk7+Qspl6
      acc101(77)=acc101(36)*acc101(76)
      acc101(78)=Qspvae7k2*acc101(57)
      acc101(79)=Qspval5e7*acc101(48)
      acc101(80)=Qspval5l6*acc101(18)
      acc101(81)=Qspval5k7*acc101(46)
      acc101(82)=Qspval6k2*acc101(58)
      acc101(83)=Qspvak7k2*acc101(45)
      acc101(84)=Qspe7*acc101(61)
      acc101(85)=Qspval5k2*acc101(59)
      acc101(86)=Qspvak2e7*acc101(5)
      acc101(87)=Qspvae7l6*acc101(33)
      acc101(88)=Qspvak4k2*acc101(7)
      acc101(89)=Qspvak4k3*acc101(43)
      acc101(90)=Qspk2*acc101(4)
      acc101(75)=acc101(90)+acc101(89)+acc101(88)+acc101(87)+acc101(86)+acc101(&
      &85)+acc101(84)+acc101(83)+acc101(82)+acc101(81)+acc101(80)+acc101(79)+ac&
      &c101(20)+acc101(78)+acc101(77)+acc101(75)
      acc101(75)=Qspvak1k2*acc101(75)
      acc101(77)=-acc101(69)*acc101(76)
      acc101(78)=Qspvak1l6*acc101(23)
      acc101(79)=Qspvak1k7*acc101(11)
      acc101(80)=Qspvak1e7*acc101(71)
      acc101(81)=Qspe7*acc101(68)
      acc101(82)=Qspvak2e7*acc101(70)
      acc101(83)=Qspvae7l6*acc101(40)
      acc101(77)=-acc101(80)+acc101(78)-acc101(79)+acc101(81)+acc101(82)+acc101&
      &(83)+acc101(77)
      acc101(78)=acc101(77)-acc101(66)
      acc101(78)=-acc101(78)*acc101(74)
      acc101(79)=acc101(14)*acc101(76)
      acc101(80)=Qspvak1l6*acc101(16)
      acc101(81)=Qspvak1k7*acc101(21)
      acc101(82)=Qspvak1e7*acc101(10)
      acc101(83)=Qspe7*acc101(8)
      acc101(84)=Qspvak2e7*acc101(9)
      acc101(85)=Qspvae7l6*acc101(6)
      acc101(79)=acc101(85)+acc101(84)+acc101(83)+acc101(82)+acc101(81)+acc101(&
      &2)+acc101(80)+acc101(79)
      acc101(79)=Qspvak4k2*acc101(79)
      acc101(80)=-acc101(42)*acc101(76)
      acc101(81)=Qspvak1l6*acc101(25)
      acc101(82)=Qspvak1k7*acc101(19)
      acc101(83)=Qspvak1e7*acc101(47)
      acc101(84)=Qspe7*acc101(38)
      acc101(85)=Qspvak2e7*acc101(44)
      acc101(86)=Qspvae7l6*acc101(37)
      acc101(80)=acc101(86)+acc101(85)+acc101(84)+acc101(83)+acc101(82)+acc101(&
      &24)+acc101(81)+acc101(80)
      acc101(80)=Qspvak4k3*acc101(80)
      acc101(74)=-Qspk2+acc101(74)
      acc101(74)=acc101(35)*acc101(74)
      acc101(81)=Qspval5k3*acc101(34)
      acc101(82)=Qspval5k2*acc101(29)
      acc101(83)=Qspvak4k2*acc101(17)
      acc101(84)=Qspvak4k3*acc101(56)
      acc101(74)=acc101(84)+acc101(83)+acc101(82)+acc101(81)+acc101(30)+acc101(&
      &74)+acc101(77)
      acc101(74)=Qspk2*acc101(74)
      acc101(77)=Qspvae7k2*acc101(28)
      acc101(81)=Qspval5e7*acc101(26)
      acc101(82)=Qspval5l6*acc101(60)
      acc101(83)=Qspval5k7*acc101(53)
      acc101(84)=Qspval6k2*acc101(51)
      acc101(85)=Qspvak7k2*acc101(41)
      acc101(77)=acc101(85)+acc101(84)+acc101(83)+acc101(82)+acc101(77)+acc101(&
      &81)
      acc101(77)=Qspvak1k3*acc101(77)
      acc101(81)=-acc101(15)*acc101(76)
      acc101(82)=Qspvak1k3*acc101(27)
      acc101(83)=Qspe7*acc101(3)
      acc101(81)=acc101(83)+acc101(1)+acc101(82)+acc101(81)
      acc101(81)=Qspval5k2*acc101(81)
      acc101(82)=Qspval5k3*acc101(65)
      acc101(82)=acc101(82)-acc101(63)
      acc101(76)=acc101(82)*acc101(76)
      acc101(82)=Qspval5k3*acc101(67)
      acc101(83)=Qspval5k2*acc101(62)
      acc101(82)=acc101(83)+acc101(54)+acc101(82)
      acc101(82)=Qspvak2e7*acc101(82)
      acc101(83)=Qspval5k3*acc101(52)
      acc101(84)=Qspval5k2*acc101(39)
      acc101(83)=acc101(84)+acc101(32)+acc101(83)
      acc101(83)=Qspvae7l6*acc101(83)
      acc101(84)=acc101(50)*Qspk1
      acc101(85)=Qspval5l6*acc101(12)
      acc101(86)=Qspval5k7*acc101(13)
      acc101(87)=Qspval6k2*acc101(73)
      acc101(88)=Qspvak7k2*acc101(72)
      acc101(89)=Qspval5k3*acc101(22)
      acc101(90)=Qspval5k3*acc101(49)
      acc101(90)=acc101(55)+acc101(90)
      acc101(90)=Qspe7*acc101(90)
      brack=acc101(31)+acc101(74)+acc101(75)+acc101(76)+acc101(77)+acc101(78)+a&
      &cc101(79)+acc101(80)+acc101(81)+acc101(82)+acc101(83)+acc101(84)+acc101(&
      &85)+acc101(86)+acc101(87)+acc101(88)+acc101(89)+acc101(90)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram101_sign, shift => diagram101_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd101h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d101
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d101 = 0.0_ki
      d101 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d101, ki), aimag(d101), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd101h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d101
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d101 = 0.0_ki
      d101 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d101, ki), aimag(d101), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d101h2l1
