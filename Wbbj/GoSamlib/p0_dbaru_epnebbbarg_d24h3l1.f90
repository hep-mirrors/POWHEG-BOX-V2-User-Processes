module     p0_dbaru_epnebbbarg_d24h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d24h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd24h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc24(99)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak7l5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k1
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      QspQ = dotproduct(Q,Q)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc24(1)=abb24(15)
      acc24(2)=abb24(16)
      acc24(3)=abb24(17)
      acc24(4)=abb24(18)
      acc24(5)=abb24(19)
      acc24(6)=abb24(20)
      acc24(7)=abb24(21)
      acc24(8)=abb24(22)
      acc24(9)=abb24(23)
      acc24(10)=abb24(24)
      acc24(11)=abb24(25)
      acc24(12)=abb24(26)
      acc24(13)=abb24(27)
      acc24(14)=abb24(28)
      acc24(15)=abb24(29)
      acc24(16)=abb24(30)
      acc24(17)=abb24(31)
      acc24(18)=abb24(32)
      acc24(19)=abb24(33)
      acc24(20)=abb24(34)
      acc24(21)=abb24(35)
      acc24(22)=abb24(36)
      acc24(23)=abb24(37)
      acc24(24)=abb24(38)
      acc24(25)=abb24(39)
      acc24(26)=abb24(40)
      acc24(27)=abb24(42)
      acc24(28)=abb24(43)
      acc24(29)=abb24(44)
      acc24(30)=abb24(45)
      acc24(31)=abb24(46)
      acc24(32)=abb24(48)
      acc24(33)=abb24(49)
      acc24(34)=abb24(51)
      acc24(35)=abb24(52)
      acc24(36)=abb24(56)
      acc24(37)=abb24(57)
      acc24(38)=abb24(58)
      acc24(39)=abb24(59)
      acc24(40)=abb24(60)
      acc24(41)=abb24(61)
      acc24(42)=abb24(64)
      acc24(43)=abb24(67)
      acc24(44)=abb24(70)
      acc24(45)=abb24(71)
      acc24(46)=abb24(72)
      acc24(47)=abb24(75)
      acc24(48)=abb24(76)
      acc24(49)=abb24(84)
      acc24(50)=abb24(86)
      acc24(51)=abb24(92)
      acc24(52)=abb24(93)
      acc24(53)=abb24(101)
      acc24(54)=abb24(105)
      acc24(55)=abb24(107)
      acc24(56)=abb24(110)
      acc24(57)=abb24(123)
      acc24(58)=abb24(137)
      acc24(59)=abb24(155)
      acc24(60)=abb24(158)
      acc24(61)=abb24(166)
      acc24(62)=abb24(173)
      acc24(63)=abb24(181)
      acc24(64)=abb24(197)
      acc24(65)=abb24(227)
      acc24(66)=abb24(254)
      acc24(67)=abb24(290)
      acc24(68)=abb24(340)
      acc24(69)=abb24(347)
      acc24(70)=Qspl6+Qspl5
      acc24(71)=acc24(36)*acc24(70)
      acc24(72)=Qspk1*acc24(39)
      acc24(73)=Qspk7*acc24(10)
      acc24(74)=Qspe7*acc24(9)
      acc24(75)=Qspvak1k2*acc24(5)
      acc24(76)=Qspvak1k3*acc24(3)
      acc24(77)=Qspvak1k7*acc24(12)
      acc24(78)=Qspvak4k2*acc24(11)
      acc24(79)=Qspvak4k3*acc24(27)
      acc24(80)=Qspvak4k7*acc24(17)
      acc24(81)=Qspvak7k2*acc24(18)
      acc24(82)=Qspvak7k3*acc24(14)
      acc24(83)=Qspvae7k2*acc24(6)
      acc24(84)=Qspk4+Qspk3
      acc24(85)=acc24(38)*acc24(84)
      acc24(86)=Qspk2*acc24(37)
      acc24(87)=Qspvak1l5*acc24(21)
      acc24(88)=Qspvak1l6*acc24(47)
      acc24(89)=Qspval5k2*acc24(16)
      acc24(90)=Qspval6k2*acc24(43)
      acc24(71)=acc24(90)+acc24(89)+acc24(88)+acc24(87)+acc24(86)+acc24(85)+acc&
      &24(83)+acc24(82)+acc24(81)+acc24(80)+acc24(79)+acc24(78)+acc24(77)+acc24&
      &(76)+acc24(75)+acc24(74)+acc24(73)+acc24(1)+acc24(72)+acc24(71)
      acc24(71)=Qspvak2l5*acc24(71)
      acc24(70)=acc24(68)*acc24(70)
      acc24(72)=Qspk1*acc24(58)
      acc24(73)=Qspk7*acc24(66)
      acc24(74)=Qspe7*acc24(45)
      acc24(75)=Qspvak1k2*acc24(31)
      acc24(76)=Qspvak1k3*acc24(26)
      acc24(77)=Qspvak1k7*acc24(28)
      acc24(78)=Qspvak4k2*acc24(34)
      acc24(79)=Qspvak4k3*acc24(54)
      acc24(80)=Qspvak4k7*acc24(52)
      acc24(81)=Qspvak7k2*acc24(46)
      acc24(82)=Qspvak7k3*acc24(62)
      acc24(83)=Qspvae7k2*acc24(42)
      acc24(84)=acc24(69)*acc24(84)
      acc24(85)=Qspk2*acc24(55)
      acc24(86)=Qspvak1l5*acc24(25)
      acc24(87)=Qspvak1l6*acc24(48)
      acc24(88)=Qspval5k2*acc24(44)
      acc24(89)=Qspval6k2*acc24(56)
      acc24(70)=acc24(89)+acc24(88)+acc24(87)+acc24(86)+acc24(85)+acc24(84)+acc&
      &24(83)+acc24(82)+acc24(81)+acc24(80)+acc24(79)+acc24(78)+acc24(77)+acc24&
      &(76)+acc24(75)+acc24(74)+acc24(73)+acc24(13)+acc24(72)+acc24(70)
      acc24(70)=Qspvak2l6*acc24(70)
      acc24(72)=acc24(65)*Qspval6k3
      acc24(73)=acc24(64)*Qspval6k7
      acc24(74)=acc24(63)*Qspval6l5
      acc24(75)=acc24(60)*Qspval5k7
      acc24(76)=acc24(59)*Qspval5k3
      acc24(77)=acc24(57)*Qspval6e7
      acc24(78)=acc24(53)*Qspvae7l6
      acc24(79)=acc24(51)*Qspvak4l5
      acc24(80)=acc24(50)*Qspval6k1
      acc24(81)=acc24(49)*Qspvae7l5
      acc24(82)=acc24(41)*Qspvak2k7
      acc24(83)=acc24(40)*Qspval5e7
      acc24(84)=acc24(35)*Qspvak4l6
      acc24(85)=acc24(30)*Qspvak7l5
      acc24(86)=acc24(29)*QspQ
      acc24(87)=acc24(24)*Qspvak7l6
      acc24(88)=acc24(23)*Qspval5k1
      acc24(89)=acc24(20)*Qspval5l6
      acc24(90)=acc24(15)*Qspvak2k3
      acc24(91)=acc24(7)*Qspvak2e7
      acc24(92)=acc24(4)*Qspvak2k1
      acc24(93)=Qspk2*acc24(2)
      acc24(94)=Qspl5*acc24(8)
      acc24(95)=Qspl6*acc24(33)
      acc24(96)=Qspvak1l5*acc24(19)
      acc24(97)=Qspvak1l6*acc24(32)
      acc24(98)=Qspval5k2*acc24(22)
      acc24(99)=Qspval6k2*acc24(61)
      brack=acc24(67)+acc24(70)+acc24(71)+acc24(72)+acc24(73)+acc24(74)+acc24(7&
      &5)+acc24(76)+acc24(77)+acc24(78)+acc24(79)+acc24(80)+acc24(81)+acc24(82)&
      &+acc24(83)+acc24(84)+acc24(85)+acc24(86)+acc24(87)+acc24(88)+acc24(89)+a&
      &cc24(90)+acc24(91)+acc24(92)+acc24(93)+acc24(94)+acc24(95)+acc24(96)+acc&
      &24(97)+acc24(98)+acc24(99)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram24_sign, shift => diagram24_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd24h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d24
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d24 = 0.0_ki
      d24 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d24, ki), aimag(d24), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd24h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d24
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d24 = 0.0_ki
      d24 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d24, ki), aimag(d24), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d24h3l1