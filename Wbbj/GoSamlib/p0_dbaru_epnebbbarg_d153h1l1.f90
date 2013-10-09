module     p0_dbaru_epnebbbarg_d153h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d153h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd153h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc153(101)
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspe7
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvae7k3
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak1e7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak4l6
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspe7 = dotproduct(Q,e7)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      acc153(1)=abb153(36)
      acc153(2)=abb153(37)
      acc153(3)=abb153(38)
      acc153(4)=abb153(39)
      acc153(5)=abb153(40)
      acc153(6)=abb153(41)
      acc153(7)=abb153(43)
      acc153(8)=abb153(44)
      acc153(9)=abb153(45)
      acc153(10)=abb153(46)
      acc153(11)=abb153(47)
      acc153(12)=abb153(48)
      acc153(13)=abb153(49)
      acc153(14)=abb153(50)
      acc153(15)=abb153(51)
      acc153(16)=abb153(52)
      acc153(17)=abb153(53)
      acc153(18)=abb153(54)
      acc153(19)=abb153(55)
      acc153(20)=abb153(56)
      acc153(21)=abb153(57)
      acc153(22)=abb153(58)
      acc153(23)=abb153(59)
      acc153(24)=abb153(60)
      acc153(25)=abb153(61)
      acc153(26)=abb153(62)
      acc153(27)=abb153(63)
      acc153(28)=abb153(64)
      acc153(29)=abb153(65)
      acc153(30)=abb153(66)
      acc153(31)=abb153(67)
      acc153(32)=abb153(69)
      acc153(33)=abb153(70)
      acc153(34)=abb153(71)
      acc153(35)=abb153(73)
      acc153(36)=abb153(74)
      acc153(37)=abb153(75)
      acc153(38)=abb153(76)
      acc153(39)=abb153(77)
      acc153(40)=abb153(79)
      acc153(41)=abb153(82)
      acc153(42)=abb153(83)
      acc153(43)=abb153(84)
      acc153(44)=abb153(87)
      acc153(45)=abb153(89)
      acc153(46)=abb153(91)
      acc153(47)=abb153(93)
      acc153(48)=abb153(94)
      acc153(49)=abb153(95)
      acc153(50)=abb153(96)
      acc153(51)=abb153(97)
      acc153(52)=abb153(98)
      acc153(53)=abb153(100)
      acc153(54)=abb153(102)
      acc153(55)=abb153(103)
      acc153(56)=abb153(105)
      acc153(57)=abb153(106)
      acc153(58)=abb153(108)
      acc153(59)=abb153(110)
      acc153(60)=abb153(112)
      acc153(61)=abb153(114)
      acc153(62)=abb153(123)
      acc153(63)=abb153(124)
      acc153(64)=abb153(129)
      acc153(65)=abb153(131)
      acc153(66)=abb153(132)
      acc153(67)=abb153(133)
      acc153(68)=abb153(137)
      acc153(69)=abb153(141)
      acc153(70)=abb153(144)
      acc153(71)=abb153(147)
      acc153(72)=abb153(148)
      acc153(73)=abb153(149)
      acc153(74)=abb153(152)
      acc153(75)=abb153(158)
      acc153(76)=abb153(172)
      acc153(77)=acc153(19)*Qspval6l5
      acc153(78)=acc153(22)*Qspval6k2
      acc153(79)=acc153(29)*Qspvak1k2
      acc153(80)=acc153(33)*Qspvak4l5
      acc153(81)=acc153(35)*Qspvak1l5
      acc153(82)=acc153(46)*Qspe7
      acc153(83)=acc153(53)*Qspk2
      acc153(84)=acc153(55)*Qspval6k3
      acc153(85)=acc153(56)*Qspvak2k3
      acc153(86)=acc153(60)*Qspvak4e7
      acc153(87)=-acc153(64)*Qspvae7k3
      acc153(88)=-acc153(65)*Qspvae7k2
      acc153(89)=acc153(74)*Qspvak1e7
      acc153(77)=acc153(89)+acc153(88)+acc153(87)+acc153(86)+acc153(85)+acc153(&
      &84)+acc153(83)+acc153(82)+acc153(81)+acc153(80)+acc153(79)+acc153(78)+ac&
      &c153(77)+acc153(9)
      acc153(77)=QspQ*acc153(77)
      acc153(78)=acc153(27)*Qspvak1k2
      acc153(79)=acc153(37)*Qspvak1k3
      acc153(80)=acc153(49)*Qspvak4k2
      acc153(78)=acc153(80)+acc153(79)+acc153(78)+acc153(24)
      acc153(78)=acc153(78)*Qspk2
      acc153(79)=acc153(30)*Qspvak1k2
      acc153(80)=acc153(43)*Qspvak1k3
      acc153(81)=acc153(50)*Qspvak4k2
      acc153(79)=acc153(81)+acc153(80)+acc153(79)+acc153(2)
      acc153(79)=acc153(79)*Qspval6l5
      acc153(80)=acc153(5)*Qspvak4k2
      acc153(81)=acc153(7)*Qspval5k2
      acc153(82)=acc153(8)*Qspval6k2
      acc153(83)=acc153(13)*Qspvak1l5
      acc153(84)=acc153(15)*Qspvak1k2
      acc153(85)=acc153(17)*Qspvak4l5
      acc153(86)=acc153(31)*Qspval5k3
      acc153(87)=acc153(42)*Qspvak1l6
      acc153(88)=acc153(51)*Qspvak2k3
      acc153(89)=acc153(54)*Qspval6k3
      acc153(78)=acc153(84)+acc153(80)+acc153(79)+acc153(78)+acc153(68)+acc153(&
      &89)+acc153(88)+acc153(87)+acc153(86)+acc153(85)+acc153(83)+acc153(82)+ac&
      &c153(81)
      acc153(78)=Qspe7*acc153(78)
      acc153(79)=acc153(18)*Qspk7
      acc153(80)=acc153(34)*Qspvak4e7
      acc153(81)=acc153(36)*Qspvae7k3
      acc153(82)=acc153(45)*Qspvak1k7
      acc153(83)=acc153(47)*Qspvak1e7
      acc153(84)=acc153(48)*Qspvak4k7
      acc153(85)=acc153(57)*Qspvae7k2
      acc153(86)=acc153(58)*Qspvak7k3
      acc153(87)=acc153(59)*Qspvak7k2
      acc153(79)=acc153(87)+acc153(86)+acc153(85)+acc153(84)+acc153(83)+acc153(&
      &82)+acc153(81)+acc153(80)+acc153(79)+acc153(4)
      acc153(79)=Qspval6l5*acc153(79)
      acc153(80)=acc153(16)*Qspvak4k7
      acc153(81)=acc153(26)*Qspvak7k2
      acc153(82)=acc153(28)*Qspk7
      acc153(83)=acc153(41)*Qspvak1k7
      acc153(84)=acc153(63)*Qspvak4e7
      acc153(85)=acc153(69)*Qspvae7k3
      acc153(86)=acc153(71)*Qspvak1e7
      acc153(87)=acc153(72)*Qspvae7k2
      acc153(88)=acc153(76)*Qspvak7k3
      acc153(80)=acc153(88)+acc153(87)+acc153(86)+acc153(85)+acc153(84)+acc153(&
      &83)+acc153(82)+acc153(81)+acc153(80)+acc153(10)
      acc153(80)=Qspk2*acc153(80)
      acc153(81)=Qspl6+Qspl5
      acc153(82)=acc153(25)*Qspe7
      acc153(82)=acc153(82)+acc153(14)
      acc153(81)=acc153(82)*acc153(81)
      acc153(82)=acc153(1)*Qspk7
      acc153(83)=acc153(3)*Qspvak1k2
      acc153(84)=acc153(6)*Qspvak4l5
      acc153(85)=acc153(11)*Qspvak1l5
      acc153(86)=acc153(20)*Qspvak4k7
      acc153(87)=acc153(21)*Qspvak1k7
      acc153(88)=acc153(32)*Qspvak1l6
      acc153(89)=acc153(38)*Qspval6k2
      acc153(90)=acc153(39)*Qspvak4k2
      acc153(91)=acc153(40)*Qspval5k2
      acc153(92)=acc153(44)*Qspval5k3
      acc153(93)=acc153(52)*Qspvak2k3
      acc153(94)=acc153(61)*Qspvak4e7
      acc153(95)=acc153(62)*Qspvak7k2
      acc153(96)=acc153(66)*Qspval6k3
      acc153(97)=acc153(67)*Qspvae7k3
      acc153(98)=acc153(70)*Qspvae7k2
      acc153(99)=acc153(73)*Qspvak1e7
      acc153(100)=acc153(75)*Qspvak7k3
      acc153(101)=Qspvak4l6*acc153(23)
      brack=acc153(12)+acc153(77)+acc153(78)+acc153(79)+acc153(80)+acc153(81)+a&
      &cc153(82)+acc153(83)+acc153(84)+acc153(85)+acc153(86)+acc153(87)+acc153(&
      &88)+acc153(89)+acc153(90)+acc153(91)+acc153(92)+acc153(93)+acc153(94)+ac&
      &c153(95)+acc153(96)+acc153(97)+acc153(98)+acc153(99)+acc153(100)+acc153(&
      &101)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram153_sign, shift => diagram153_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd153h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d153
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d153 = 0.0_ki
      d153 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d153, ki), aimag(d153), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd153h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d153
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d153 = 0.0_ki
      d153 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d153, ki), aimag(d153), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d153h1l1
