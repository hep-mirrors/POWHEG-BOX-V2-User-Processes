module     p0_dbaru_epnebbbarg_d120h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d120h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd120h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc120(98)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvae7k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspk1
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspk1 = dotproduct(Q,k1)
      acc120(1)=abb120(10)
      acc120(2)=abb120(11)
      acc120(3)=abb120(12)
      acc120(4)=abb120(13)
      acc120(5)=abb120(14)
      acc120(6)=abb120(15)
      acc120(7)=abb120(16)
      acc120(8)=abb120(17)
      acc120(9)=abb120(18)
      acc120(10)=abb120(19)
      acc120(11)=abb120(20)
      acc120(12)=abb120(21)
      acc120(13)=abb120(22)
      acc120(14)=abb120(23)
      acc120(15)=abb120(24)
      acc120(16)=abb120(25)
      acc120(17)=abb120(26)
      acc120(18)=abb120(27)
      acc120(19)=abb120(28)
      acc120(20)=abb120(29)
      acc120(21)=abb120(30)
      acc120(22)=abb120(31)
      acc120(23)=abb120(32)
      acc120(24)=abb120(33)
      acc120(25)=abb120(34)
      acc120(26)=abb120(35)
      acc120(27)=abb120(36)
      acc120(28)=abb120(37)
      acc120(29)=abb120(38)
      acc120(30)=abb120(39)
      acc120(31)=abb120(40)
      acc120(32)=abb120(42)
      acc120(33)=abb120(44)
      acc120(34)=abb120(45)
      acc120(35)=abb120(46)
      acc120(36)=abb120(47)
      acc120(37)=abb120(48)
      acc120(38)=abb120(49)
      acc120(39)=abb120(50)
      acc120(40)=abb120(51)
      acc120(41)=abb120(52)
      acc120(42)=abb120(53)
      acc120(43)=abb120(54)
      acc120(44)=abb120(55)
      acc120(45)=abb120(56)
      acc120(46)=abb120(57)
      acc120(47)=abb120(58)
      acc120(48)=abb120(60)
      acc120(49)=abb120(61)
      acc120(50)=abb120(62)
      acc120(51)=abb120(63)
      acc120(52)=abb120(64)
      acc120(53)=abb120(65)
      acc120(54)=abb120(66)
      acc120(55)=abb120(67)
      acc120(56)=abb120(68)
      acc120(57)=abb120(69)
      acc120(58)=abb120(70)
      acc120(59)=abb120(77)
      acc120(60)=abb120(85)
      acc120(61)=abb120(93)
      acc120(62)=abb120(100)
      acc120(63)=abb120(105)
      acc120(64)=abb120(107)
      acc120(65)=abb120(116)
      acc120(66)=abb120(117)
      acc120(67)=abb120(119)
      acc120(68)=abb120(120)
      acc120(69)=abb120(123)
      acc120(70)=abb120(124)
      acc120(71)=abb120(127)
      acc120(72)=Qspk4+Qspk3
      acc120(73)=-acc120(57)*acc120(72)
      acc120(74)=-Qspval5l6*acc120(54)
      acc120(75)=Qspvak7l6*acc120(51)
      acc120(76)=Qspvae7l6*acc120(49)
      acc120(77)=Qspvak2k3*acc120(8)
      acc120(78)=Qspvak2l5*acc120(4)
      acc120(79)=Qspvak2k7*acc120(19)
      acc120(80)=Qspvak2e7*acc120(58)
      acc120(81)=Qspvak4k2*acc120(10)
      acc120(82)=Qspvak4k3*acc120(30)
      acc120(73)=acc120(82)+acc120(81)+acc120(80)+acc120(79)+acc120(78)+acc120(&
      &77)+acc120(76)+acc120(75)+acc120(46)+acc120(74)+acc120(73)
      acc120(73)=Qspvak1k2*acc120(73)
      acc120(74)=Qspvak2l5*acc120(31)
      acc120(75)=Qspvak2k7*acc120(21)
      acc120(76)=Qspvak2e7*acc120(62)
      acc120(74)=-acc120(76)+acc120(74)-acc120(75)
      acc120(75)=-Qspk2+acc120(72)
      acc120(75)=acc120(56)*acc120(75)
      acc120(76)=Qspvak1k3*acc120(39)
      acc120(77)=Qspvak1l5*acc120(22)
      acc120(78)=Qspvak1k7*acc120(41)
      acc120(79)=Qspvak1e7*acc120(69)
      acc120(80)=Qspvak4k2*acc120(6)
      acc120(81)=Qspvak4k3*acc120(48)
      acc120(82)=-Qspvak1l6*acc120(45)
      acc120(83)=Qspvak1k2*acc120(57)
      acc120(75)=acc120(83)+acc120(82)+acc120(81)+acc120(80)+acc120(79)+acc120(&
      &78)+acc120(77)+acc120(37)+acc120(76)+acc120(75)+acc120(74)
      acc120(75)=Qspk2*acc120(75)
      acc120(76)=acc120(45)*acc120(72)
      acc120(77)=acc120(54)*Qspval5k2
      acc120(78)=-acc120(52)*Qspval5k3
      acc120(79)=-acc120(51)*Qspvak7k2
      acc120(80)=acc120(50)*Qspvak7k3
      acc120(81)=-acc120(49)*Qspvae7k2
      acc120(82)=acc120(47)*Qspvae7k3
      acc120(83)=Qspvak4k2*acc120(2)
      acc120(84)=Qspvak4k3*acc120(20)
      acc120(76)=acc120(84)+acc120(83)+acc120(82)+acc120(81)+acc120(80)+acc120(&
      &79)+acc120(78)+acc120(44)+acc120(77)+acc120(76)
      acc120(76)=Qspvak1l6*acc120(76)
      acc120(77)=Qspvak1l5*acc120(26)
      acc120(78)=Qspvak1k7*acc120(27)
      acc120(79)=Qspvak1e7*acc120(11)
      acc120(80)=Qspvak2l5*acc120(9)
      acc120(81)=Qspvak2k7*acc120(29)
      acc120(82)=Qspvak2e7*acc120(7)
      acc120(77)=acc120(82)+acc120(81)+acc120(80)+acc120(79)+acc120(78)+acc120(&
      &5)+acc120(77)
      acc120(77)=Qspvak4k2*acc120(77)
      acc120(78)=Qspvak1l5*acc120(23)
      acc120(79)=Qspvak1k7*acc120(42)
      acc120(80)=Qspvak1e7*acc120(1)
      acc120(81)=Qspvak2l5*acc120(32)
      acc120(82)=Qspvak2k7*acc120(28)
      acc120(83)=Qspvak2e7*acc120(53)
      acc120(78)=acc120(83)+acc120(82)+acc120(81)+acc120(80)+acc120(79)+acc120(&
      &16)+acc120(78)
      acc120(78)=Qspvak4k3*acc120(78)
      acc120(79)=Qspvak1l5*acc120(15)
      acc120(80)=Qspvak1k7*acc120(40)
      acc120(81)=Qspvak1e7*acc120(65)
      acc120(74)=acc120(63)-acc120(74)-acc120(81)+acc120(79)-acc120(80)
      acc120(72)=acc120(74)*acc120(72)
      acc120(74)=Qspval5l6*acc120(52)
      acc120(79)=-Qspvak7l6*acc120(50)
      acc120(80)=-Qspvae7l6*acc120(47)
      acc120(74)=acc120(80)+acc120(74)+acc120(79)
      acc120(74)=Qspvak1k3*acc120(74)
      acc120(79)=acc120(71)*Qspval6k2
      acc120(80)=acc120(68)*Qspval6l5
      acc120(81)=acc120(67)*Qspval6k7
      acc120(82)=acc120(59)*Qspval6e7
      acc120(83)=acc120(33)*Qspk1
      acc120(84)=Qspval5k2*acc120(24)
      acc120(85)=Qspval5k3*acc120(25)
      acc120(86)=Qspvak7k2*acc120(66)
      acc120(87)=Qspvak7k3*acc120(70)
      acc120(88)=Qspvae7k2*acc120(12)
      acc120(89)=Qspvae7k3*acc120(18)
      acc120(90)=Qspval5l6*acc120(55)
      acc120(91)=Qspvak7l6*acc120(60)
      acc120(92)=Qspvae7l6*acc120(61)
      acc120(93)=Qspvak2k3*acc120(34)
      acc120(93)=acc120(3)+acc120(93)
      acc120(93)=Qspvak1l5*acc120(93)
      acc120(94)=-Qspvak2k3*acc120(43)
      acc120(94)=acc120(38)+acc120(94)
      acc120(94)=Qspvak1k7*acc120(94)
      acc120(95)=-Qspvak2k3*acc120(36)
      acc120(95)=acc120(64)+acc120(95)
      acc120(95)=Qspvak1e7*acc120(95)
      acc120(96)=-Qspvak1k3*acc120(34)
      acc120(96)=acc120(14)+acc120(96)
      acc120(96)=Qspvak2l5*acc120(96)
      acc120(97)=Qspvak1k3*acc120(43)
      acc120(97)=acc120(17)+acc120(97)
      acc120(97)=Qspvak2k7*acc120(97)
      acc120(98)=Qspvak1k3*acc120(36)
      acc120(98)=acc120(35)+acc120(98)
      acc120(98)=Qspvak2e7*acc120(98)
      brack=acc120(13)+acc120(72)+acc120(73)+acc120(74)+acc120(75)+acc120(76)+a&
      &cc120(77)+acc120(78)+acc120(79)+acc120(80)+acc120(81)+acc120(82)+acc120(&
      &83)+acc120(84)+acc120(85)+acc120(86)+acc120(87)+acc120(88)+acc120(89)+ac&
      &c120(90)+acc120(91)+acc120(92)+acc120(93)+acc120(94)+acc120(95)+acc120(9&
      &6)+acc120(97)+acc120(98)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram120_sign, shift => diagram120_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd120h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d120
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d120 = 0.0_ki
      d120 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d120, ki), aimag(d120), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd120h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d120
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d120 = 0.0_ki
      d120 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d120, ki), aimag(d120), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d120h3l1
