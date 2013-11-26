module     p0_dbaru_epnebbbarg_d318h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d318h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd318h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc318(113)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspk7
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspk7 = dotproduct(Q,k7)
      acc318(1)=abb318(11)
      acc318(2)=abb318(12)
      acc318(3)=abb318(13)
      acc318(4)=abb318(14)
      acc318(5)=abb318(15)
      acc318(6)=abb318(16)
      acc318(7)=abb318(17)
      acc318(8)=abb318(18)
      acc318(9)=abb318(19)
      acc318(10)=abb318(20)
      acc318(11)=abb318(21)
      acc318(12)=abb318(22)
      acc318(13)=abb318(23)
      acc318(14)=abb318(24)
      acc318(15)=abb318(25)
      acc318(16)=abb318(26)
      acc318(17)=abb318(27)
      acc318(18)=abb318(28)
      acc318(19)=abb318(29)
      acc318(20)=abb318(30)
      acc318(21)=abb318(31)
      acc318(22)=abb318(32)
      acc318(23)=abb318(33)
      acc318(24)=abb318(34)
      acc318(25)=abb318(35)
      acc318(26)=abb318(36)
      acc318(27)=abb318(37)
      acc318(28)=abb318(38)
      acc318(29)=abb318(39)
      acc318(30)=abb318(40)
      acc318(31)=abb318(41)
      acc318(32)=abb318(42)
      acc318(33)=abb318(43)
      acc318(34)=abb318(44)
      acc318(35)=abb318(45)
      acc318(36)=abb318(46)
      acc318(37)=abb318(47)
      acc318(38)=abb318(48)
      acc318(39)=abb318(49)
      acc318(40)=abb318(50)
      acc318(41)=abb318(51)
      acc318(42)=abb318(52)
      acc318(43)=abb318(53)
      acc318(44)=abb318(54)
      acc318(45)=abb318(55)
      acc318(46)=abb318(56)
      acc318(47)=abb318(57)
      acc318(48)=abb318(58)
      acc318(49)=abb318(59)
      acc318(50)=abb318(60)
      acc318(51)=abb318(61)
      acc318(52)=abb318(62)
      acc318(53)=abb318(63)
      acc318(54)=abb318(64)
      acc318(55)=abb318(65)
      acc318(56)=abb318(66)
      acc318(57)=abb318(67)
      acc318(58)=abb318(70)
      acc318(59)=abb318(71)
      acc318(60)=abb318(72)
      acc318(61)=abb318(73)
      acc318(62)=abb318(74)
      acc318(63)=abb318(84)
      acc318(64)=abb318(87)
      acc318(65)=abb318(88)
      acc318(66)=abb318(90)
      acc318(67)=abb318(91)
      acc318(68)=abb318(92)
      acc318(69)=abb318(96)
      acc318(70)=abb318(104)
      acc318(71)=abb318(105)
      acc318(72)=abb318(106)
      acc318(73)=abb318(107)
      acc318(74)=abb318(109)
      acc318(75)=abb318(110)
      acc318(76)=abb318(116)
      acc318(77)=abb318(119)
      acc318(78)=abb318(120)
      acc318(79)=abb318(122)
      acc318(80)=abb318(128)
      acc318(81)=abb318(132)
      acc318(82)=abb318(139)
      acc318(83)=abb318(153)
      acc318(84)=abb318(161)
      acc318(85)=abb318(169)
      acc318(86)=abb318(171)
      acc318(87)=abb318(176)
      acc318(88)=abb318(179)
      acc318(89)=abb318(183)
      acc318(90)=-Qspl6+Qspl5
      acc318(90)=acc318(90)*acc318(89)
      acc318(91)=acc318(12)*Qspvak1l6
      acc318(92)=acc318(14)*Qspvak2k3
      acc318(93)=acc318(18)*Qspk2
      acc318(94)=acc318(22)*Qspvak4l6
      acc318(95)=acc318(23)*Qspvak1k2
      acc318(96)=acc318(30)*QspQ
      acc318(97)=acc318(36)*Qspvak1k3
      acc318(98)=acc318(67)*Qspvak4k2
      acc318(99)=acc318(70)*Qspvak7l6
      acc318(100)=acc318(74)*Qspval5l6
      acc318(101)=acc318(86)*Qspvak2k7
      acc318(102)=Qspvak7l5*acc318(4)
      acc318(103)=Qspvak4l5*acc318(82)
      acc318(104)=Qspvak1l5*acc318(24)
      acc318(90)=acc318(98)+acc318(97)+acc318(95)+acc318(90)+acc318(104)+acc318&
      &(103)+acc318(102)+acc318(101)+acc318(100)+acc318(99)+acc318(96)+acc318(9&
      &4)+acc318(93)+acc318(92)+acc318(91)+acc318(6)
      acc318(90)=Qspe7*acc318(90)
      acc318(91)=Qspvak2l5*Qspe7
      acc318(92)=acc318(43)*acc318(91)
      acc318(93)=acc318(47)*Qspvak2e7
      acc318(94)=acc318(64)*Qspk2
      acc318(95)=acc318(66)*Qspvae7l6
      acc318(96)=acc318(71)*Qspvak7l6
      acc318(97)=acc318(77)*Qspval5l6
      acc318(98)=Qspvak2l6*Qspe7
      acc318(99)=acc318(78)*acc318(98)
      acc318(100)=acc318(83)*Qspl5
      acc318(101)=acc318(84)*Qspvae7l5
      acc318(102)=acc318(87)*Qspvak2k7
      acc318(92)=acc318(102)+acc318(101)+acc318(100)+acc318(99)+acc318(97)+acc3&
      &18(96)+acc318(95)+acc318(94)+acc318(93)+acc318(92)+acc318(8)
      acc318(92)=Qspvak4k2*acc318(92)
      acc318(93)=acc318(32)*Qspvak2e7
      acc318(94)=acc318(37)*Qspl5
      acc318(95)=acc318(41)*Qspk2
      acc318(96)=acc318(51)*Qspvae7l6
      acc318(97)=acc318(52)*Qspvae7l5
      acc318(99)=acc318(55)*Qspvak7l6
      acc318(100)=acc318(56)*Qspval5l6
      acc318(101)=acc318(57)*Qspvak2k7
      acc318(102)=acc318(58)*acc318(98)
      acc318(103)=acc318(61)*acc318(91)
      acc318(93)=acc318(103)+acc318(102)+acc318(101)+acc318(100)+acc318(99)+acc&
      &318(97)+acc318(96)+acc318(95)+acc318(94)+acc318(93)+acc318(16)
      acc318(93)=Qspvak1k3*acc318(93)
      acc318(94)=acc318(10)*Qspvae7l6
      acc318(95)=acc318(21)*Qspvak2e7
      acc318(96)=acc318(28)*Qspk2
      acc318(97)=acc318(33)*Qspl5
      acc318(99)=acc318(38)*Qspvae7l5
      acc318(100)=acc318(39)*Qspvak7l6
      acc318(101)=acc318(46)*Qspval5l6
      acc318(102)=acc318(48)*Qspvak2k7
      acc318(103)=acc318(53)*acc318(98)
      acc318(104)=acc318(54)*acc318(91)
      acc318(94)=acc318(104)+acc318(103)+acc318(102)+acc318(101)+acc318(100)+ac&
      &c318(99)+acc318(97)+acc318(96)+acc318(25)+acc318(95)+acc318(94)
      acc318(94)=Qspvak1k2*acc318(94)
      acc318(95)=acc318(17)*Qspvae7l5
      acc318(96)=acc318(29)*Qspvak2k3
      acc318(97)=-acc318(44)*Qspvak1l6
      acc318(99)=acc318(49)*Qspk2
      acc318(100)=-acc318(68)*Qspvae7l6
      acc318(101)=acc318(81)*Qspvak2e7
      acc318(95)=acc318(101)+acc318(100)+acc318(99)+acc318(95)+acc318(97)+acc31&
      &8(96)
      acc318(96)=Qspk7+Qspl5
      acc318(95)=acc318(96)*acc318(95)
      acc318(96)=acc318(11)*Qspvae7l5
      acc318(97)=acc318(15)*Qspvak1l6
      acc318(99)=acc318(40)*Qspk2
      acc318(100)=acc318(42)*Qspvak2k3
      acc318(101)=acc318(65)*Qspvae7l6
      acc318(102)=acc318(79)*Qspvak2e7
      acc318(96)=acc318(102)+acc318(101)+acc318(100)+acc318(99)+acc318(27)+acc3&
      &18(97)+acc318(96)
      acc318(96)=QspQ*acc318(96)
      acc318(97)=acc318(31)*Qspvak2k3
      acc318(99)=acc318(35)*Qspvae7l5
      acc318(100)=acc318(45)*Qspvak2e7
      acc318(101)=acc318(50)*Qspvak1l6
      acc318(102)=acc318(69)*Qspvae7l6
      acc318(97)=acc318(102)+acc318(101)+acc318(100)+acc318(99)+acc318(97)+acc3&
      &18(2)
      acc318(97)=Qspk2*acc318(97)
      acc318(99)=acc318(26)*Qspvak4k2
      acc318(100)=acc318(34)*Qspvak1k2
      acc318(101)=acc318(60)*Qspvak1k3
      acc318(99)=acc318(101)+acc318(100)+acc318(99)+acc318(5)
      acc318(99)=Qspvak2l5*acc318(99)
      acc318(100)=acc318(1)*Qspvak2e7
      acc318(101)=acc318(3)*Qspvak1l6
      acc318(102)=acc318(9)*Qspvae7l5
      acc318(103)=acc318(13)*Qspl5
      acc318(91)=acc318(19)*acc318(91)
      acc318(104)=acc318(20)*Qspvak2k3
      acc318(105)=acc318(59)*Qspvae7l6
      acc318(106)=acc318(62)*Qspk2**2
      acc318(107)=acc318(63)*Qspvak2l6
      acc318(108)=acc318(72)*Qspval5l6
      acc318(98)=acc318(73)*acc318(98)
      acc318(109)=acc318(75)*Qspvak7l6
      acc318(110)=acc318(76)*Qspk7
      acc318(111)=acc318(80)*Qspvak4l6
      acc318(112)=acc318(85)*Qspvak2k7
      acc318(113)=acc318(88)*Qspl6
      brack=acc318(7)+acc318(90)+acc318(91)+acc318(92)+acc318(93)+acc318(94)+ac&
      &c318(95)+acc318(96)+acc318(97)+acc318(98)+acc318(99)+acc318(100)+acc318(&
      &101)+acc318(102)+acc318(103)+acc318(104)+acc318(105)+acc318(106)+acc318(&
      &107)+acc318(108)+acc318(109)+acc318(110)+acc318(111)+acc318(112)+acc318(&
      &113)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram318_sign, shift => diagram318_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd318h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d318
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d318 = 0.0_ki
      d318 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d318, ki), aimag(d318), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd318h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d318
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d318 = 0.0_ki
      d318 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d318, ki), aimag(d318), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d318h3l1
