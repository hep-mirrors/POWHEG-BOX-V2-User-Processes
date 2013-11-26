module     p5_usbar_epnebbbarg_d82h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d82h0l1.f90
   ! generator: buildfortran.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd82h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc82(127)
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvae7k1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak2k3
      Qspk2 = dotproduct(Q,k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspk1 = dotproduct(Q,k1)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      QspQ = dotproduct(Q,Q)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk7 = dotproduct(Q,k7)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      acc82(1)=abb82(6)
      acc82(2)=abb82(7)
      acc82(3)=abb82(8)
      acc82(4)=abb82(9)
      acc82(5)=abb82(10)
      acc82(6)=abb82(11)
      acc82(7)=abb82(12)
      acc82(8)=abb82(13)
      acc82(9)=abb82(14)
      acc82(10)=abb82(15)
      acc82(11)=abb82(16)
      acc82(12)=abb82(17)
      acc82(13)=abb82(18)
      acc82(14)=abb82(19)
      acc82(15)=abb82(20)
      acc82(16)=abb82(21)
      acc82(17)=abb82(22)
      acc82(18)=abb82(23)
      acc82(19)=abb82(24)
      acc82(20)=abb82(25)
      acc82(21)=abb82(26)
      acc82(22)=abb82(27)
      acc82(23)=abb82(28)
      acc82(24)=abb82(29)
      acc82(25)=abb82(30)
      acc82(26)=abb82(31)
      acc82(27)=abb82(32)
      acc82(28)=abb82(33)
      acc82(29)=abb82(34)
      acc82(30)=abb82(35)
      acc82(31)=abb82(36)
      acc82(32)=abb82(37)
      acc82(33)=abb82(38)
      acc82(34)=abb82(39)
      acc82(35)=abb82(40)
      acc82(36)=abb82(41)
      acc82(37)=abb82(42)
      acc82(38)=abb82(43)
      acc82(39)=abb82(44)
      acc82(40)=abb82(45)
      acc82(41)=abb82(46)
      acc82(42)=abb82(47)
      acc82(43)=abb82(48)
      acc82(44)=abb82(49)
      acc82(45)=abb82(50)
      acc82(46)=abb82(52)
      acc82(47)=abb82(53)
      acc82(48)=abb82(54)
      acc82(49)=abb82(55)
      acc82(50)=abb82(56)
      acc82(51)=abb82(57)
      acc82(52)=abb82(58)
      acc82(53)=abb82(59)
      acc82(54)=abb82(60)
      acc82(55)=abb82(61)
      acc82(56)=abb82(62)
      acc82(57)=abb82(63)
      acc82(58)=abb82(64)
      acc82(59)=abb82(65)
      acc82(60)=abb82(67)
      acc82(61)=abb82(69)
      acc82(62)=abb82(70)
      acc82(63)=abb82(71)
      acc82(64)=abb82(72)
      acc82(65)=abb82(73)
      acc82(66)=abb82(74)
      acc82(67)=abb82(75)
      acc82(68)=abb82(76)
      acc82(69)=abb82(77)
      acc82(70)=abb82(78)
      acc82(71)=abb82(79)
      acc82(72)=abb82(80)
      acc82(73)=abb82(81)
      acc82(74)=abb82(83)
      acc82(75)=abb82(84)
      acc82(76)=abb82(85)
      acc82(77)=abb82(86)
      acc82(78)=abb82(87)
      acc82(79)=abb82(88)
      acc82(80)=abb82(90)
      acc82(81)=abb82(92)
      acc82(82)=abb82(93)
      acc82(83)=abb82(94)
      acc82(84)=abb82(95)
      acc82(85)=abb82(96)
      acc82(86)=abb82(97)
      acc82(87)=abb82(98)
      acc82(88)=abb82(99)
      acc82(89)=abb82(100)
      acc82(90)=abb82(101)
      acc82(91)=abb82(102)
      acc82(92)=abb82(103)
      acc82(93)=abb82(104)
      acc82(94)=abb82(105)
      acc82(95)=abb82(106)
      acc82(96)=abb82(107)
      acc82(97)=abb82(109)
      acc82(98)=abb82(111)
      acc82(99)=abb82(112)
      acc82(100)=abb82(113)
      acc82(101)=acc82(50)*Qspk2
      acc82(102)=acc82(73)*Qspval6k1
      acc82(103)=acc82(77)*Qspval5k1
      acc82(101)=acc82(103)+acc82(102)+acc82(101)+acc82(23)
      acc82(101)=acc82(101)*Qspe7
      acc82(102)=acc82(9)*Qspvak4k3
      acc82(103)=acc82(12)*Qspvak4k1
      acc82(104)=acc82(17)*Qspvak2e7
      acc82(105)=acc82(34)*Qspvak3k1
      acc82(106)=Qspvak2e7*Qspvak4k3
      acc82(107)=acc82(44)*acc82(106)
      acc82(108)=acc82(45)*Qspk1
      acc82(109)=Qspval5k2*Qspe7
      acc82(110)=acc82(49)*acc82(109)
      acc82(111)=Qspval6k2*Qspe7
      acc82(112)=acc82(51)*acc82(111)
      acc82(113)=acc82(62)*Qspval5k2
      acc82(114)=acc82(72)*Qspval6k1
      acc82(115)=acc82(76)*Qspval5k1
      acc82(116)=Qspvae7k1*Qspvak4k3
      acc82(117)=acc82(86)*acc82(116)
      acc82(101)=acc82(101)+acc82(117)+acc82(115)+acc82(114)+acc82(113)+acc82(1&
      &12)+acc82(110)+acc82(108)+acc82(107)+acc82(105)+acc82(104)+acc82(13)+acc&
      &82(103)+acc82(102)
      acc82(101)=QspQ*acc82(101)
      acc82(102)=acc82(94)*Qspvak7k1
      acc82(102)=acc82(102)+acc82(90)
      acc82(102)=Qspvak4k3*acc82(102)
      acc82(103)=Qspvak4k3*Qspe7
      acc82(104)=acc82(103)*Qspvak2k1
      acc82(105)=acc82(3)*acc82(104)
      acc82(107)=Qspvak4k1*Qspe7
      acc82(108)=acc82(4)*acc82(107)
      acc82(110)=acc82(27)*Qspvak2e7
      acc82(112)=acc82(39)*Qspvak3k1
      acc82(113)=acc82(63)*Qspk2
      acc82(114)=acc82(65)*QspQ
      acc82(115)=acc82(66)*Qspk1
      acc82(117)=Qspk1*Qspe7
      acc82(118)=acc82(67)*acc82(117)
      acc82(119)=acc82(85)*Qspvak4k1
      acc82(120)=Qspk2*Qspvak4k3
      acc82(121)=acc82(91)*acc82(120)
      acc82(122)=acc82(92)*acc82(106)
      acc82(116)=acc82(95)*acc82(116)
      acc82(102)=acc82(116)+acc82(122)+acc82(121)+acc82(119)+acc82(118)+acc82(1&
      &15)+acc82(114)+acc82(113)+acc82(112)+acc82(110)+acc82(20)+acc82(108)+acc&
      &82(105)+acc82(102)
      acc82(102)=Qspval6k2*acc82(102)
      acc82(105)=acc82(93)*Qspvak7k1
      acc82(108)=acc82(99)*Qspvae7k1
      acc82(105)=acc82(108)+acc82(105)+acc82(58)
      acc82(105)=acc82(105)*Qspvak4k3
      acc82(104)=acc82(1)*acc82(104)
      acc82(108)=acc82(2)*acc82(107)
      acc82(110)=acc82(10)*acc82(106)
      acc82(112)=acc82(18)*Qspvak4k1
      acc82(113)=acc82(30)*Qspvak2e7
      acc82(114)=acc82(40)*Qspvak3k1
      acc82(115)=acc82(59)*Qspk2
      acc82(116)=acc82(64)*acc82(120)
      acc82(118)=acc82(74)*Qspk1
      acc82(119)=acc82(75)*acc82(117)
      acc82(104)=acc82(105)+acc82(119)+acc82(118)+acc82(116)+acc82(115)+acc82(5&
      &5)+acc82(114)+acc82(113)+acc82(112)+acc82(110)+acc82(108)+acc82(104)
      acc82(104)=Qspval5k2*acc82(104)
      acc82(105)=acc82(14)*Qspvak2k7
      acc82(108)=acc82(60)*Qspvak4k1
      acc82(110)=acc82(78)*Qspk2
      acc82(112)=acc82(81)*Qspval6k1
      acc82(113)=acc82(82)*Qspk1
      acc82(114)=acc82(83)*Qspval5k1
      acc82(115)=acc82(89)*Qspvak7k1
      acc82(105)=acc82(115)+acc82(84)+acc82(114)+acc82(113)+acc82(112)+acc82(11&
      &0)+acc82(108)+acc82(105)
      acc82(105)=acc82(103)*acc82(105)
      acc82(108)=-acc82(35)*Qspvak3k1
      acc82(110)=-acc82(46)*acc82(106)
      acc82(112)=-acc82(47)*Qspk1
      acc82(113)=acc82(48)*QspQ
      acc82(114)=-acc82(52)*Qspvak2e7
      acc82(115)=-acc82(87)*Qspvak4k1
      acc82(108)=acc82(115)+acc82(114)+acc82(113)+acc82(112)+acc82(110)+acc82(1&
      &08)
      acc82(110)=Qspk7-Qspk2
      acc82(108)=acc82(110)*acc82(108)
      acc82(110)=acc82(15)*Qspk7
      acc82(112)=acc82(21)*Qspvak3k1
      acc82(113)=acc82(53)*Qspk1
      acc82(114)=acc82(57)*Qspvak4k1
      acc82(115)=acc82(96)*Qspval6k1
      acc82(116)=acc82(100)*Qspval5k1
      acc82(110)=acc82(116)+acc82(115)+acc82(79)+acc82(114)+acc82(113)+acc82(11&
      &2)+acc82(110)
      acc82(110)=Qspvak4k3*acc82(110)
      acc82(112)=acc82(54)*Qspvak2e7
      acc82(113)=-acc82(68)*Qspval5k1
      acc82(114)=-acc82(70)*Qspval6k1
      acc82(115)=acc82(97)*Qspvak4k1
      acc82(116)=-acc82(98)*acc82(107)
      acc82(112)=acc82(116)+acc82(115)+acc82(114)+acc82(113)+acc82(112)
      acc82(113)=Qspk3+Qspk4
      acc82(114)=acc82(113)-Qspk1
      acc82(112)=acc82(114)*acc82(112)
      acc82(114)=acc82(69)*Qspval5k1
      acc82(115)=acc82(71)*Qspval6k1
      acc82(114)=acc82(115)+acc82(114)
      acc82(115)=Qspe7*acc82(113)
      acc82(116)=acc82(115)-acc82(117)
      acc82(114)=acc82(116)*acc82(114)
      acc82(116)=acc82(6)*Qspvak2k7
      acc82(118)=acc82(16)*Qspvak3k1
      acc82(116)=acc82(118)+acc82(7)+acc82(116)
      acc82(116)=Qspe7*acc82(116)
      acc82(118)=acc82(31)*Qspvak2k1
      acc82(119)=acc82(43)*Qspvak2k3
      acc82(118)=acc82(56)+acc82(119)+acc82(118)
      acc82(109)=acc82(109)*acc82(118)
      acc82(118)=acc82(28)*Qspvak2k1
      acc82(119)=acc82(41)*Qspvak2k3
      acc82(118)=acc82(61)+acc82(119)+acc82(118)
      acc82(111)=acc82(111)*acc82(118)
      acc82(118)=Qspk2*Qspe7
      acc82(119)=acc82(118)*acc82(113)
      acc82(121)=-Qspk2*acc82(117)
      acc82(119)=acc82(121)+acc82(119)
      acc82(119)=acc82(33)*acc82(119)
      acc82(121)=QspQ*acc82(107)
      acc82(103)=Qspvak3k1*acc82(103)
      acc82(103)=acc82(121)+acc82(103)
      acc82(103)=acc82(80)*acc82(103)
      acc82(121)=Qspk7*Qspvak4k3
      acc82(121)=-acc82(120)+acc82(121)
      acc82(121)=acc82(88)*Qspvae7k1*acc82(121)
      acc82(113)=acc82(24)*acc82(113)
      acc82(115)=acc82(26)*acc82(115)
      acc82(107)=acc82(5)*acc82(107)
      acc82(122)=acc82(11)*Qspvak3k1
      acc82(123)=acc82(19)*Qspk7
      acc82(124)=acc82(22)*Qspvak4k1
      acc82(125)=acc82(25)*QspQ**2
      acc82(126)=acc82(29)*Qspk2
      acc82(118)=acc82(32)*acc82(118)
      acc82(120)=acc82(36)*acc82(120)
      acc82(106)=acc82(37)*acc82(106)
      acc82(127)=acc82(38)*Qspk1
      acc82(117)=acc82(42)*acc82(117)
      brack=acc82(8)+acc82(101)+acc82(102)+acc82(103)+acc82(104)+acc82(105)+acc&
      &82(106)+acc82(107)+acc82(108)+acc82(109)+acc82(110)+acc82(111)+acc82(112&
      &)+acc82(113)+acc82(114)+acc82(115)+acc82(116)+acc82(117)+acc82(118)+acc8&
      &2(119)+acc82(120)+acc82(121)+acc82(122)+acc82(123)+acc82(124)+acc82(125)&
      &+acc82(126)+acc82(127)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram82_sign, shift => diagram82_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd82h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d82
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d82 = 0.0_ki
      d82 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d82, ki), aimag(d82), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd82h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d82
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d82 = 0.0_ki
      d82 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d82, ki), aimag(d82), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d82h0l1
