module     p1_dbarc_epnebbbarg_d122h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d122h2l1.f90
   ! generator: buildfortran.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd122h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc122(114)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3e7
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak3l6
      complex(ki) :: Qspvak3k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvae7k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvae7l5
      complex(ki) :: QspQ
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k3
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3e7 = dotproduct(Q,spvak3e7)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak3l6 = dotproduct(Q,spvak3l6)
      Qspvak3k7 = dotproduct(Q,spvak3k7)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      QspQ = dotproduct(Q,Q)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      acc122(1)=abb122(10)
      acc122(2)=abb122(11)
      acc122(3)=abb122(12)
      acc122(4)=abb122(13)
      acc122(5)=abb122(14)
      acc122(6)=abb122(15)
      acc122(7)=abb122(16)
      acc122(8)=abb122(17)
      acc122(9)=abb122(18)
      acc122(10)=abb122(19)
      acc122(11)=abb122(20)
      acc122(12)=abb122(21)
      acc122(13)=abb122(22)
      acc122(14)=abb122(23)
      acc122(15)=abb122(24)
      acc122(16)=abb122(27)
      acc122(17)=abb122(28)
      acc122(18)=abb122(29)
      acc122(19)=abb122(30)
      acc122(20)=abb122(31)
      acc122(21)=abb122(32)
      acc122(22)=abb122(33)
      acc122(23)=abb122(34)
      acc122(24)=abb122(36)
      acc122(25)=abb122(37)
      acc122(26)=abb122(38)
      acc122(27)=abb122(39)
      acc122(28)=abb122(40)
      acc122(29)=abb122(41)
      acc122(30)=abb122(42)
      acc122(31)=abb122(43)
      acc122(32)=abb122(46)
      acc122(33)=abb122(47)
      acc122(34)=abb122(48)
      acc122(35)=abb122(49)
      acc122(36)=abb122(50)
      acc122(37)=abb122(52)
      acc122(38)=abb122(53)
      acc122(39)=abb122(54)
      acc122(40)=abb122(55)
      acc122(41)=abb122(56)
      acc122(42)=abb122(57)
      acc122(43)=abb122(58)
      acc122(44)=abb122(59)
      acc122(45)=abb122(60)
      acc122(46)=abb122(61)
      acc122(47)=abb122(62)
      acc122(48)=abb122(64)
      acc122(49)=abb122(65)
      acc122(50)=abb122(67)
      acc122(51)=abb122(68)
      acc122(52)=abb122(70)
      acc122(53)=abb122(71)
      acc122(54)=abb122(72)
      acc122(55)=abb122(73)
      acc122(56)=abb122(77)
      acc122(57)=abb122(80)
      acc122(58)=abb122(81)
      acc122(59)=abb122(89)
      acc122(60)=abb122(92)
      acc122(61)=abb122(95)
      acc122(62)=abb122(101)
      acc122(63)=abb122(103)
      acc122(64)=abb122(104)
      acc122(65)=abb122(105)
      acc122(66)=abb122(111)
      acc122(67)=abb122(112)
      acc122(68)=abb122(113)
      acc122(69)=abb122(116)
      acc122(70)=abb122(123)
      acc122(71)=abb122(128)
      acc122(72)=abb122(129)
      acc122(73)=abb122(130)
      acc122(74)=abb122(131)
      acc122(75)=abb122(132)
      acc122(76)=abb122(133)
      acc122(77)=abb122(135)
      acc122(78)=abb122(136)
      acc122(79)=abb122(137)
      acc122(80)=abb122(138)
      acc122(81)=abb122(139)
      acc122(82)=abb122(140)
      acc122(83)=abb122(143)
      acc122(84)=abb122(144)
      acc122(85)=abb122(145)
      acc122(86)=Qspk4+Qspk3
      acc122(87)=acc122(28)*acc122(86)
      acc122(88)=Qspk7+Qspl6
      acc122(89)=-acc122(21)*acc122(88)
      acc122(90)=acc122(35)*Qspvak2l6
      acc122(91)=-acc122(25)*Qspvak2k7
      acc122(92)=Qspvak4l6*acc122(14)
      acc122(93)=Qspvak4k7*acc122(22)
      acc122(94)=Qspvak4e7*acc122(26)
      acc122(95)=Qspe7*acc122(12)
      acc122(96)=Qspvak2e7*acc122(8)
      acc122(97)=Qspvae7l6*acc122(6)
      acc122(98)=Qspvak4k3*acc122(17)
      acc122(99)=Qspvak4k2*acc122(1)
      acc122(87)=acc122(99)+acc122(98)+acc122(97)+acc122(96)+acc122(95)+acc122(&
      &94)+acc122(93)+acc122(92)+acc122(91)+acc122(5)+acc122(90)+acc122(89)+acc&
      &122(87)
      acc122(87)=Qspvak4k2*acc122(87)
      acc122(89)=acc122(45)*acc122(88)
      acc122(90)=acc122(67)*Qspvak3e7
      acc122(91)=acc122(39)*Qspvak3k2
      acc122(92)=-acc122(35)*Qspvak3l6
      acc122(93)=acc122(25)*Qspvak3k7
      acc122(94)=Qspvak4l6*acc122(54)
      acc122(95)=Qspvak4k7*acc122(63)
      acc122(96)=Qspvak4e7*acc122(61)
      acc122(97)=Qspe7*acc122(4)
      acc122(98)=Qspvak2e7*acc122(41)
      acc122(99)=Qspvae7l6*acc122(11)
      acc122(89)=acc122(99)+acc122(98)+acc122(97)+acc122(96)+acc122(95)+acc122(&
      &94)+acc122(93)+acc122(92)+acc122(3)+acc122(90)+acc122(91)+acc122(89)
      acc122(89)=Qspvak4k3*acc122(89)
      acc122(90)=acc122(68)*acc122(88)
      acc122(91)=Qspvak4l6*acc122(72)
      acc122(92)=Qspvak4k7*acc122(60)
      acc122(93)=Qspvak4e7*acc122(74)
      acc122(90)=-acc122(91)+acc122(92)+acc122(93)+acc122(90)
      acc122(91)=Qspk2-acc122(86)
      acc122(91)=acc122(62)*acc122(91)
      acc122(92)=Qspvak1e7*acc122(49)
      acc122(93)=Qspvae7k2*acc122(81)
      acc122(94)=Qspvae7k3*acc122(78)
      acc122(95)=Qspe7*acc122(57)
      acc122(96)=-Qspvak2e7*acc122(30)
      acc122(97)=Qspvae7l6*acc122(33)
      acc122(98)=Qspvak4k3*acc122(64)
      acc122(99)=Qspvak4k2*acc122(38)
      acc122(91)=acc122(99)+acc122(98)+acc122(97)+acc122(96)+acc122(95)+acc122(&
      &94)+acc122(93)+acc122(92)+acc122(10)+acc122(91)+acc122(90)
      acc122(91)=Qspk2*acc122(91)
      acc122(92)=-acc122(29)*acc122(86)
      acc122(93)=Qspvak2k3*acc122(44)
      acc122(94)=Qspval6k2*acc122(51)
      acc122(95)=Qspval6k3*acc122(75)
      acc122(96)=Qspvak7k2*acc122(18)
      acc122(97)=Qspvak7k3*acc122(85)
      acc122(98)=Qspvak1e7*acc122(82)
      acc122(92)=acc122(98)+acc122(97)+acc122(96)+acc122(95)+acc122(94)+acc122(&
      &24)+acc122(93)+acc122(92)
      acc122(92)=Qspvae7l6*acc122(92)
      acc122(93)=acc122(66)*acc122(86)
      acc122(94)=Qspvak2k3*acc122(40)
      acc122(95)=Qspvak1l6*acc122(20)
      acc122(96)=Qspvak1k7*acc122(48)
      acc122(97)=Qspvak7k2*acc122(19)
      acc122(98)=Qspvak7k3*acc122(84)
      acc122(93)=acc122(98)+acc122(97)+acc122(96)+acc122(95)+acc122(36)+acc122(&
      &94)+acc122(93)
      acc122(93)=Qspe7*acc122(93)
      acc122(94)=acc122(30)*acc122(86)
      acc122(95)=Qspvak1k2*acc122(9)
      acc122(96)=Qspvak1l6*acc122(31)
      acc122(97)=Qspvak1k7*acc122(52)
      acc122(98)=Qspvae7k2*acc122(43)
      acc122(99)=Qspvae7k3*acc122(65)
      acc122(94)=acc122(99)+acc122(98)+acc122(97)+acc122(96)+acc122(16)+acc122(&
      &95)+acc122(94)
      acc122(94)=Qspvak2e7*acc122(94)
      acc122(90)=acc122(90)-acc122(37)
      acc122(86)=-acc122(90)*acc122(86)
      acc122(90)=Qspvak1e7*acc122(71)
      acc122(95)=Qspvae7k2*acc122(79)
      acc122(96)=Qspvae7k3*acc122(77)
      acc122(90)=-acc122(42)+acc122(96)+acc122(90)-acc122(95)
      acc122(88)=-acc122(90)*acc122(88)
      acc122(90)=acc122(80)*Qspval6l5
      acc122(95)=acc122(73)*Qspval5e7
      acc122(96)=acc122(70)*Qspval5k7
      acc122(97)=acc122(69)*Qspvak7l5
      acc122(98)=acc122(59)*Qspvae7l5
      acc122(99)=acc122(56)*QspQ
      acc122(100)=acc122(53)*Qspval5l6
      acc122(101)=acc122(15)*Qspval5k2
      acc122(102)=acc122(2)*Qspvak1k3
      acc122(103)=Qspvak1k2*acc122(7)
      acc122(104)=Qspvak2l6*acc122(23)
      acc122(105)=Qspvak2k7*acc122(27)
      acc122(106)=Qspval6k2*acc122(34)
      acc122(107)=Qspval6k3*acc122(55)
      acc122(108)=Qspvak1l6*acc122(46)
      acc122(109)=Qspvak1k7*acc122(47)
      acc122(110)=Qspvak7k2*acc122(50)
      acc122(111)=Qspvak7k3*acc122(83)
      acc122(112)=Qspvak1e7*acc122(58)
      acc122(113)=Qspvae7k2*acc122(32)
      acc122(114)=Qspvae7k3*acc122(76)
      brack=acc122(13)+acc122(86)+acc122(87)+acc122(88)+acc122(89)+acc122(90)+a&
      &cc122(91)+acc122(92)+acc122(93)+acc122(94)+acc122(95)+acc122(96)+acc122(&
      &97)+acc122(98)+acc122(99)+acc122(100)+acc122(101)+acc122(102)+acc122(103&
      &)+acc122(104)+acc122(105)+acc122(106)+acc122(107)+acc122(108)+acc122(109&
      &)+acc122(110)+acc122(111)+acc122(112)+acc122(113)+acc122(114)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram122_sign, shift => diagram122_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd122h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d122
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d122 = 0.0_ki
      d122 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d122, ki), aimag(d122), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd122h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d122
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d122 = 0.0_ki
      d122 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d122, ki), aimag(d122), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d122h2l1
