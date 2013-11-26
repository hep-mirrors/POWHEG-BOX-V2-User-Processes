module     p1_dbarc_epnebbbarg_d145h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d145h0l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd145h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc145(102)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvae7k3
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspe7 = dotproduct(Q,e7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      acc145(1)=abb145(33)
      acc145(2)=abb145(35)
      acc145(3)=abb145(36)
      acc145(4)=abb145(37)
      acc145(5)=abb145(38)
      acc145(6)=abb145(39)
      acc145(7)=abb145(40)
      acc145(8)=abb145(41)
      acc145(9)=abb145(42)
      acc145(10)=abb145(43)
      acc145(11)=abb145(44)
      acc145(12)=abb145(45)
      acc145(13)=abb145(46)
      acc145(14)=abb145(47)
      acc145(15)=abb145(48)
      acc145(16)=abb145(49)
      acc145(17)=abb145(50)
      acc145(18)=abb145(51)
      acc145(19)=abb145(53)
      acc145(20)=abb145(54)
      acc145(21)=abb145(55)
      acc145(22)=abb145(57)
      acc145(23)=abb145(60)
      acc145(24)=abb145(61)
      acc145(25)=abb145(62)
      acc145(26)=abb145(63)
      acc145(27)=abb145(64)
      acc145(28)=abb145(65)
      acc145(29)=abb145(67)
      acc145(30)=abb145(68)
      acc145(31)=abb145(69)
      acc145(32)=abb145(70)
      acc145(33)=abb145(71)
      acc145(34)=abb145(73)
      acc145(35)=abb145(74)
      acc145(36)=abb145(75)
      acc145(37)=abb145(81)
      acc145(38)=abb145(82)
      acc145(39)=abb145(84)
      acc145(40)=abb145(85)
      acc145(41)=abb145(86)
      acc145(42)=abb145(87)
      acc145(43)=abb145(88)
      acc145(44)=abb145(89)
      acc145(45)=abb145(91)
      acc145(46)=abb145(92)
      acc145(47)=abb145(93)
      acc145(48)=abb145(97)
      acc145(49)=abb145(99)
      acc145(50)=abb145(100)
      acc145(51)=abb145(101)
      acc145(52)=abb145(102)
      acc145(53)=abb145(103)
      acc145(54)=abb145(104)
      acc145(55)=abb145(106)
      acc145(56)=abb145(109)
      acc145(57)=abb145(110)
      acc145(58)=abb145(111)
      acc145(59)=abb145(112)
      acc145(60)=abb145(113)
      acc145(61)=abb145(114)
      acc145(62)=abb145(115)
      acc145(63)=abb145(117)
      acc145(64)=abb145(118)
      acc145(65)=abb145(120)
      acc145(66)=abb145(122)
      acc145(67)=abb145(126)
      acc145(68)=abb145(128)
      acc145(69)=abb145(130)
      acc145(70)=abb145(133)
      acc145(71)=abb145(138)
      acc145(72)=abb145(148)
      acc145(73)=abb145(172)
      acc145(74)=abb145(201)
      acc145(75)=abb145(218)
      acc145(76)=abb145(220)
      acc145(77)=abb145(221)
      acc145(78)=abb145(222)
      acc145(79)=abb145(228)
      acc145(80)=abb145(266)
      acc145(81)=abb145(277)
      acc145(82)=Qspl6+Qspl5
      acc145(83)=-acc145(41)*acc145(82)
      acc145(84)=Qspvak4k7*acc145(21)
      acc145(85)=Qspvak4e7*acc145(49)
      acc145(86)=Qspvak1k7*acc145(18)
      acc145(87)=Qspvak7k2*acc145(4)
      acc145(88)=Qspvak7k3*acc145(51)
      acc145(89)=Qspvak1e7*acc145(55)
      acc145(90)=Qspvae7k2*acc145(53)
      acc145(91)=Qspvae7k3*acc145(52)
      acc145(92)=Qspk7*acc145(12)
      acc145(93)=QspQ*acc145(47)
      acc145(94)=Qspk2*acc145(46)
      acc145(83)=acc145(94)+acc145(93)+acc145(92)+acc145(91)+acc145(90)+acc145(&
      &89)+acc145(88)+acc145(87)+acc145(86)+acc145(85)+acc145(9)+acc145(84)+acc&
      &145(83)
      acc145(83)=Qspval5k2*acc145(83)
      acc145(84)=-acc145(42)*acc145(82)
      acc145(85)=Qspvak4k7*acc145(57)
      acc145(86)=Qspvak4e7*acc145(75)
      acc145(87)=Qspvak1k7*acc145(60)
      acc145(88)=Qspvak7k2*acc145(6)
      acc145(89)=Qspvak7k3*acc145(76)
      acc145(90)=Qspvak1e7*acc145(79)
      acc145(91)=Qspvae7k2*acc145(78)
      acc145(92)=Qspvae7k3*acc145(77)
      acc145(93)=Qspk7*acc145(62)
      acc145(94)=QspQ*acc145(71)
      acc145(95)=Qspk2*acc145(73)
      acc145(84)=acc145(95)+acc145(94)+acc145(93)+acc145(92)+acc145(91)+acc145(&
      &90)+acc145(89)+acc145(88)+acc145(87)+acc145(86)+acc145(34)+acc145(85)+ac&
      &c145(84)
      acc145(84)=Qspval6k2*acc145(84)
      acc145(85)=Qspk4+Qspk3
      acc145(86)=acc145(85)-Qspk2
      acc145(87)=acc145(44)*acc145(86)
      acc145(88)=Qspvak1k3*acc145(45)
      acc145(89)=Qspvak4k2*acc145(35)
      acc145(90)=Qspvak4k3*acc145(65)
      acc145(91)=Qspvak1k2*acc145(13)
      acc145(87)=acc145(91)+acc145(90)+acc145(89)+acc145(10)+acc145(88)+acc145(&
      &87)
      acc145(87)=Qspval5k2*acc145(87)
      acc145(88)=acc145(74)*acc145(86)
      acc145(89)=Qspvak1k3*acc145(48)
      acc145(90)=Qspvak4k2*acc145(36)
      acc145(91)=Qspvak4k3*acc145(67)
      acc145(92)=Qspvak1k2*acc145(16)
      acc145(88)=acc145(92)+acc145(91)+acc145(90)+acc145(24)+acc145(89)+acc145(&
      &88)
      acc145(88)=Qspval6k2*acc145(88)
      acc145(89)=-acc145(80)*acc145(82)
      acc145(90)=Qspvak1l5*acc145(33)
      acc145(91)=Qspvak1l6*acc145(58)
      acc145(92)=Qspval5k3*acc145(11)
      acc145(93)=Qspval6k3*acc145(32)
      acc145(94)=Qspvak1k2*acc145(20)
      acc145(95)=Qspk7*acc145(70)
      acc145(96)=QspQ*acc145(29)
      acc145(97)=Qspk2*acc145(28)
      acc145(87)=acc145(88)+acc145(87)+acc145(97)+acc145(96)+acc145(95)+acc145(&
      &94)+acc145(93)+acc145(92)+acc145(91)+acc145(15)+acc145(90)+acc145(89)
      acc145(87)=Qspe7*acc145(87)
      acc145(88)=acc145(85)*acc145(23)
      acc145(89)=Qspvak4k3*acc145(68)
      acc145(90)=Qspval5k3*acc145(38)
      acc145(91)=Qspval6k3*acc145(54)
      acc145(92)=Qspvak1e7*acc145(69)
      acc145(93)=Qspvae7k2*acc145(43)
      acc145(94)=Qspvae7k3*acc145(39)
      acc145(95)=Qspvak4k2*acc145(61)
      acc145(96)=Qspvak1k2*acc145(8)
      acc145(90)=-acc145(88)+acc145(96)-acc145(89)+acc145(95)+acc145(94)+acc145&
      &(93)+acc145(92)+acc145(91)+acc145(17)+acc145(90)
      acc145(90)=QspQ*acc145(90)
      acc145(91)=Qspk7-acc145(82)
      acc145(92)=QspQ+acc145(91)
      acc145(92)=acc145(23)*acc145(92)
      acc145(86)=-acc145(7)*acc145(86)
      acc145(93)=Qspvak4k2*acc145(30)
      acc145(94)=Qspvak4k3*acc145(37)
      acc145(95)=Qspvak1k2*acc145(5)
      acc145(86)=acc145(95)+acc145(94)+acc145(93)+acc145(22)+acc145(86)+acc145(&
      &92)
      acc145(86)=Qspk2*acc145(86)
      acc145(92)=Qspvak4k2*acc145(72)
      acc145(93)=Qspvak1k2*acc145(25)
      acc145(89)=-acc145(89)+acc145(92)-acc145(93)
      acc145(92)=acc145(2)-acc145(89)
      acc145(82)=acc145(92)*acc145(82)
      acc145(89)=acc145(31)+acc145(89)
      acc145(89)=Qspk7*acc145(89)
      acc145(88)=-acc145(91)*acc145(88)
      acc145(85)=-acc145(81)*acc145(85)
      acc145(91)=acc145(63)*Qspvak4l6
      acc145(92)=acc145(40)*Qspvak4l5
      acc145(93)=Qspvak1l5*acc145(3)
      acc145(94)=Qspvak1l6*acc145(56)
      acc145(95)=Qspvak1k7*acc145(1)
      acc145(96)=Qspval5k3*acc145(27)
      acc145(97)=Qspval6k3*acc145(26)
      acc145(98)=Qspvak7k2*acc145(14)
      acc145(99)=Qspvak7k3*acc145(59)
      acc145(100)=Qspvak4k2*acc145(66)
      acc145(101)=Qspvak4k3*acc145(64)
      acc145(102)=Qspvak1k2*acc145(19)
      brack=acc145(50)+acc145(82)+acc145(83)+acc145(84)+acc145(85)+acc145(86)+a&
      &cc145(87)+acc145(88)+acc145(89)+acc145(90)+acc145(91)+acc145(92)+acc145(&
      &93)+acc145(94)+acc145(95)+acc145(96)+acc145(97)+acc145(98)+acc145(99)+ac&
      &c145(100)+acc145(101)+acc145(102)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram145_sign, shift => diagram145_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd145h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d145
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d145 = 0.0_ki
      d145 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d145, ki), aimag(d145), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd145h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d145
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d145 = 0.0_ki
      d145 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d145, ki), aimag(d145), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d145h0l1
