module     p0_dbaru_epnebbbarg_d92h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d92h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd92h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc92(100)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1l5
      complex(ki) :: QspQ
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      QspQ = dotproduct(Q,Q)
      acc92(1)=abb92(11)
      acc92(2)=abb92(12)
      acc92(3)=abb92(13)
      acc92(4)=abb92(14)
      acc92(5)=abb92(15)
      acc92(6)=abb92(16)
      acc92(7)=abb92(17)
      acc92(8)=abb92(18)
      acc92(9)=abb92(19)
      acc92(10)=abb92(20)
      acc92(11)=abb92(21)
      acc92(12)=abb92(22)
      acc92(13)=abb92(23)
      acc92(14)=abb92(24)
      acc92(15)=abb92(25)
      acc92(16)=abb92(26)
      acc92(17)=abb92(27)
      acc92(18)=abb92(28)
      acc92(19)=abb92(29)
      acc92(20)=abb92(30)
      acc92(21)=abb92(31)
      acc92(22)=abb92(32)
      acc92(23)=abb92(33)
      acc92(24)=abb92(34)
      acc92(25)=abb92(35)
      acc92(26)=abb92(36)
      acc92(27)=abb92(37)
      acc92(28)=abb92(38)
      acc92(29)=abb92(39)
      acc92(30)=abb92(40)
      acc92(31)=abb92(41)
      acc92(32)=abb92(42)
      acc92(33)=abb92(43)
      acc92(34)=abb92(44)
      acc92(35)=abb92(45)
      acc92(36)=abb92(47)
      acc92(37)=abb92(48)
      acc92(38)=abb92(52)
      acc92(39)=abb92(53)
      acc92(40)=abb92(54)
      acc92(41)=abb92(56)
      acc92(42)=abb92(59)
      acc92(43)=abb92(60)
      acc92(44)=abb92(64)
      acc92(45)=abb92(67)
      acc92(46)=abb92(70)
      acc92(47)=abb92(71)
      acc92(48)=abb92(72)
      acc92(49)=abb92(73)
      acc92(50)=abb92(74)
      acc92(51)=abb92(76)
      acc92(52)=abb92(77)
      acc92(53)=abb92(79)
      acc92(54)=abb92(81)
      acc92(55)=abb92(87)
      acc92(56)=abb92(88)
      acc92(57)=abb92(94)
      acc92(58)=abb92(95)
      acc92(59)=abb92(96)
      acc92(60)=abb92(97)
      acc92(61)=abb92(102)
      acc92(62)=abb92(104)
      acc92(63)=abb92(107)
      acc92(64)=abb92(108)
      acc92(65)=abb92(109)
      acc92(66)=abb92(112)
      acc92(67)=abb92(115)
      acc92(68)=abb92(124)
      acc92(69)=abb92(125)
      acc92(70)=abb92(126)
      acc92(71)=abb92(128)
      acc92(72)=abb92(132)
      acc92(73)=abb92(156)
      acc92(74)=abb92(162)
      acc92(75)=abb92(164)
      acc92(76)=abb92(178)
      acc92(77)=abb92(189)
      acc92(78)=abb92(206)
      acc92(79)=abb92(212)
      acc92(80)=abb92(214)
      acc92(81)=abb92(219)
      acc92(82)=Qspk4+Qspk3
      acc92(83)=acc92(69)*acc92(82)
      acc92(84)=Qspl5-Qspk1
      acc92(85)=-acc92(67)*acc92(84)
      acc92(86)=Qspvak4l6*acc92(75)
      acc92(87)=Qspvae7l6*acc92(24)
      acc92(88)=Qspval5k2*acc92(73)
      acc92(89)=Qspval6k2*acc92(61)
      acc92(90)=Qspk7*acc92(62)
      acc92(91)=Qspe7*acc92(21)
      acc92(92)=Qspvak1k2*acc92(33)
      acc92(93)=Qspvak1l6*acc92(10)
      acc92(94)=Qspvak2l6*acc92(14)
      acc92(95)=Qspvak4k3*acc92(41)
      acc92(96)=Qspval5l6*acc92(64)
      acc92(97)=Qspl6*acc92(66)
      acc92(98)=Qspvak4k2*acc92(40)
      acc92(99)=Qspvae7k2*acc92(15)
      acc92(100)=Qspk2*acc92(54)
      acc92(83)=acc92(100)+acc92(99)+acc92(98)+acc92(97)+acc92(96)+acc92(95)+ac&
      &c92(94)+acc92(93)+acc92(92)+acc92(91)+acc92(90)+acc92(89)+acc92(88)+acc9&
      &2(87)+acc92(16)+acc92(86)+acc92(85)+acc92(83)
      acc92(83)=Qspk2*acc92(83)
      acc92(85)=acc92(38)*acc92(84)
      acc92(86)=Qspval5k2*acc92(49)
      acc92(87)=Qspval6k2*acc92(43)
      acc92(88)=Qspvak1k2*acc92(34)
      acc92(89)=Qspvak1l6*acc92(3)
      acc92(90)=Qspvak2l6*acc92(50)
      acc92(91)=Qspval5l6*acc92(48)
      acc92(92)=Qspl6*acc92(9)
      acc92(85)=acc92(92)+acc92(91)+acc92(90)+acc92(89)+acc92(88)+acc92(87)+acc&
      &92(86)+acc92(8)+acc92(85)
      acc92(85)=Qspvak4k2*acc92(85)
      acc92(84)=-acc92(20)*acc92(84)
      acc92(86)=Qspval5k2*acc92(52)
      acc92(87)=Qspval6k2*acc92(46)
      acc92(88)=Qspvak1k2*acc92(27)
      acc92(89)=Qspvak1l6*acc92(26)
      acc92(90)=Qspvak2l6*acc92(28)
      acc92(91)=Qspval5l6*acc92(71)
      acc92(92)=Qspl6*acc92(42)
      acc92(84)=acc92(92)+acc92(91)+acc92(90)+acc92(89)+acc92(88)+acc92(87)+acc&
      &92(86)+acc92(37)+acc92(84)
      acc92(84)=Qspvae7k2*acc92(84)
      acc92(86)=Qspval5k2*acc92(59)
      acc92(87)=Qspval6k2*acc92(44)
      acc92(88)=Qspvak1k2*acc92(31)
      acc92(89)=Qspvak1l6*acc92(22)
      acc92(90)=Qspvak2l6*acc92(36)
      acc92(86)=acc92(90)+acc92(89)+acc92(88)+acc92(87)+acc92(23)+acc92(86)
      acc92(86)=Qspvak4k3*acc92(86)
      acc92(87)=Qspvak4l6*acc92(74)
      acc92(88)=Qspvae7l6*acc92(13)
      acc92(87)=acc92(87)-acc92(88)
      acc92(88)=acc92(87)+acc92(78)
      acc92(89)=-acc92(81)*acc92(82)
      acc92(90)=Qspk7*acc92(79)
      acc92(91)=Qspe7*acc92(76)
      acc92(92)=Qspvak4k3*acc92(35)
      acc92(89)=acc92(92)+acc92(91)+acc92(90)+acc92(89)-acc92(88)
      acc92(89)=Qspl6*acc92(89)
      acc92(90)=-acc92(68)*acc92(82)
      acc92(91)=Qspk7*acc92(65)
      acc92(92)=Qspe7*acc92(47)
      acc92(93)=Qspvak4k3*acc92(56)
      acc92(90)=acc92(93)+acc92(92)+acc92(91)+acc92(7)+acc92(90)
      acc92(90)=Qspval5l6*acc92(90)
      acc92(91)=acc92(32)*acc92(82)
      acc92(92)=Qspk7*acc92(30)
      acc92(93)=Qspe7*acc92(17)
      acc92(91)=acc92(93)+acc92(92)+acc92(19)+acc92(91)
      acc92(91)=Qspvak1k2*acc92(91)
      acc92(92)=acc92(29)*acc92(82)
      acc92(93)=Qspk7*acc92(11)
      acc92(94)=Qspe7*acc92(6)
      acc92(92)=acc92(94)+acc92(93)+acc92(4)+acc92(92)
      acc92(92)=Qspvak1l6*acc92(92)
      acc92(93)=-acc92(63)*acc92(82)
      acc92(94)=Qspk7*acc92(58)
      acc92(95)=Qspe7*acc92(45)
      acc92(93)=acc92(95)+acc92(94)+acc92(39)+acc92(93)
      acc92(93)=Qspvak2l6*acc92(93)
      acc92(94)=Qspval5k2*acc92(72)
      acc92(95)=Qspval6k2*acc92(60)
      acc92(94)=acc92(80)+acc92(94)+acc92(95)
      acc92(82)=-acc92(94)*acc92(82)
      acc92(87)=acc92(57)+acc92(87)
      acc92(87)=Qspk1*acc92(87)
      acc92(88)=-Qspl5*acc92(88)
      acc92(94)=Qspval5k2*acc92(55)
      acc92(95)=Qspval6k2*acc92(53)
      acc92(94)=acc92(95)+acc92(77)+acc92(94)
      acc92(94)=Qspk7*acc92(94)
      acc92(95)=Qspval5k2*acc92(2)
      acc92(96)=Qspval6k2*acc92(51)
      acc92(95)=acc92(96)+acc92(70)+acc92(95)
      acc92(95)=Qspe7*acc92(95)
      acc92(96)=acc92(25)*Qspvak2k1
      acc92(97)=acc92(18)*Qspvak2l5
      acc92(98)=acc92(12)*Qspvak1l5
      acc92(99)=acc92(1)*QspQ
      brack=acc92(5)+acc92(82)+acc92(83)+acc92(84)+acc92(85)+acc92(86)+acc92(87&
      &)+acc92(88)+acc92(89)+acc92(90)+acc92(91)+acc92(92)+acc92(93)+acc92(94)+&
      &acc92(95)+acc92(96)+acc92(97)+acc92(98)+acc92(99)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram92_sign, shift => diagram92_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd92h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d92
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d92 = 0.0_ki
      d92 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d92, ki), aimag(d92), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd92h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d92
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d92 = 0.0_ki
      d92 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d92, ki), aimag(d92), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d92h2l1
