module     p1_dbarc_epnebbbarg_d127h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d127h3l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd127h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc127(125)
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      acc127(1)=abb127(12)
      acc127(2)=abb127(13)
      acc127(3)=abb127(14)
      acc127(4)=abb127(15)
      acc127(5)=abb127(16)
      acc127(6)=abb127(17)
      acc127(7)=abb127(18)
      acc127(8)=abb127(19)
      acc127(9)=abb127(20)
      acc127(10)=abb127(21)
      acc127(11)=abb127(22)
      acc127(12)=abb127(23)
      acc127(13)=abb127(24)
      acc127(14)=abb127(25)
      acc127(15)=abb127(26)
      acc127(16)=abb127(27)
      acc127(17)=abb127(28)
      acc127(18)=abb127(29)
      acc127(19)=abb127(30)
      acc127(20)=abb127(31)
      acc127(21)=abb127(32)
      acc127(22)=abb127(33)
      acc127(23)=abb127(34)
      acc127(24)=abb127(35)
      acc127(25)=abb127(36)
      acc127(26)=abb127(37)
      acc127(27)=abb127(38)
      acc127(28)=abb127(39)
      acc127(29)=abb127(40)
      acc127(30)=abb127(41)
      acc127(31)=abb127(42)
      acc127(32)=abb127(43)
      acc127(33)=abb127(44)
      acc127(34)=abb127(45)
      acc127(35)=abb127(46)
      acc127(36)=abb127(47)
      acc127(37)=abb127(48)
      acc127(38)=abb127(49)
      acc127(39)=abb127(50)
      acc127(40)=abb127(51)
      acc127(41)=abb127(52)
      acc127(42)=abb127(53)
      acc127(43)=abb127(54)
      acc127(44)=abb127(55)
      acc127(45)=abb127(56)
      acc127(46)=abb127(57)
      acc127(47)=abb127(58)
      acc127(48)=abb127(59)
      acc127(49)=abb127(60)
      acc127(50)=abb127(61)
      acc127(51)=abb127(62)
      acc127(52)=abb127(63)
      acc127(53)=abb127(65)
      acc127(54)=abb127(66)
      acc127(55)=abb127(67)
      acc127(56)=abb127(68)
      acc127(57)=abb127(69)
      acc127(58)=abb127(70)
      acc127(59)=abb127(71)
      acc127(60)=abb127(72)
      acc127(61)=abb127(73)
      acc127(62)=abb127(74)
      acc127(63)=abb127(75)
      acc127(64)=abb127(76)
      acc127(65)=abb127(77)
      acc127(66)=abb127(78)
      acc127(67)=abb127(79)
      acc127(68)=abb127(80)
      acc127(69)=abb127(81)
      acc127(70)=abb127(83)
      acc127(71)=abb127(84)
      acc127(72)=abb127(86)
      acc127(73)=abb127(87)
      acc127(74)=abb127(88)
      acc127(75)=abb127(89)
      acc127(76)=abb127(90)
      acc127(77)=abb127(91)
      acc127(78)=abb127(92)
      acc127(79)=abb127(93)
      acc127(80)=abb127(94)
      acc127(81)=abb127(96)
      acc127(82)=abb127(97)
      acc127(83)=abb127(98)
      acc127(84)=abb127(99)
      acc127(85)=abb127(100)
      acc127(86)=abb127(101)
      acc127(87)=abb127(102)
      acc127(88)=abb127(104)
      acc127(89)=abb127(105)
      acc127(90)=abb127(106)
      acc127(91)=abb127(108)
      acc127(92)=abb127(110)
      acc127(93)=abb127(111)
      acc127(94)=abb127(112)
      acc127(95)=abb127(113)
      acc127(96)=abb127(119)
      acc127(97)=abb127(124)
      acc127(98)=abb127(125)
      acc127(99)=abb127(126)
      acc127(100)=abb127(128)
      acc127(101)=Qspk3+Qspk4
      acc127(102)=acc127(101)-Qspk1
      acc127(103)=-acc127(33)*acc127(102)
      acc127(104)=-acc127(48)*QspQ
      acc127(105)=acc127(18)*Qspvak4k3
      acc127(106)=acc127(50)*Qspe7
      acc127(107)=acc127(67)*Qspvak2k7
      acc127(108)=acc127(70)*Qspvak2l6
      acc127(109)=acc127(71)*Qspk2
      acc127(110)=acc127(73)*Qspvae7l6
      acc127(111)=acc127(74)*Qspvae7l5
      acc127(112)=acc127(76)*Qspvak2e7
      acc127(113)=acc127(79)*Qspvak7l6
      acc127(114)=acc127(83)*Qspvak7l5
      acc127(115)=acc127(87)*Qspval6l5
      acc127(116)=acc127(92)*Qspval5l6
      acc127(117)=acc127(93)*Qspvak2l5
      acc127(103)=acc127(103)+acc127(117)+acc127(116)+acc127(115)+acc127(114)+a&
      &cc127(113)+acc127(112)+acc127(111)+acc127(110)+acc127(109)+acc127(108)+a&
      &cc127(107)+acc127(106)+acc127(105)+acc127(104)
      acc127(103)=Qspvak1k3*acc127(103)
      acc127(104)=acc127(12)*Qspk2
      acc127(105)=acc127(19)*Qspvak2l6
      acc127(106)=acc127(23)*Qspvak2e7
      acc127(107)=acc127(34)*Qspvak2l5
      acc127(108)=acc127(44)*Qspvak2k7
      acc127(109)=acc127(46)*Qspvae7l6
      acc127(110)=acc127(58)*Qspe7
      acc127(111)=acc127(62)*Qspvae7l5
      acc127(112)=acc127(65)*Qspvak7l5
      acc127(113)=acc127(77)*Qspvak7l6
      acc127(114)=acc127(85)*Qspvak4k3
      acc127(115)=acc127(95)*Qspval6l5
      acc127(116)=acc127(98)*Qspval5l6
      acc127(104)=acc127(116)+acc127(115)+acc127(114)+acc127(113)+acc127(112)+a&
      &cc127(111)+acc127(110)+acc127(109)+acc127(108)+acc127(107)+acc127(106)+a&
      &cc127(21)+acc127(105)+acc127(104)
      acc127(104)=Qspk1*acc127(104)
      acc127(105)=acc127(1)*Qspk2
      acc127(106)=acc127(15)*Qspe7
      acc127(107)=acc127(20)*Qspvak2l5
      acc127(108)=acc127(29)*Qspvae7l6
      acc127(109)=acc127(36)*Qspvae7l5
      acc127(110)=acc127(41)*Qspvak2e7
      acc127(111)=acc127(49)*Qspvak2k7
      acc127(112)=acc127(51)*Qspvak7l5
      acc127(113)=acc127(52)*Qspvak2l6
      acc127(114)=acc127(53)*Qspvak7l6
      acc127(115)=acc127(56)*Qspval6l5
      acc127(116)=acc127(61)*Qspval5l6
      acc127(105)=acc127(113)+acc127(107)+acc127(106)+acc127(116)+acc127(115)+a&
      &cc127(114)+acc127(112)+acc127(111)+acc127(110)+acc127(109)+acc127(108)+a&
      &cc127(2)+acc127(105)
      acc127(105)=Qspvak1k2*acc127(105)
      acc127(106)=acc127(6)*Qspk2
      acc127(107)=acc127(13)*Qspvak7l6
      acc127(108)=acc127(17)*Qspvak7l5
      acc127(109)=acc127(35)*Qspvak2l5
      acc127(110)=acc127(39)*Qspvae7l6
      acc127(111)=acc127(42)*Qspvae7l5
      acc127(112)=acc127(45)*Qspvak2e7
      acc127(113)=acc127(47)*Qspvak2l6
      acc127(114)=acc127(59)*Qspval6l5
      acc127(115)=acc127(60)*Qspval5l6
      acc127(116)=acc127(66)*Qspvak2k7
      acc127(117)=-acc127(72)*Qspe7
      acc127(106)=acc127(117)+acc127(116)+acc127(115)+acc127(114)+acc127(113)+a&
      &cc127(112)+acc127(111)+acc127(40)+acc127(110)+acc127(109)+acc127(108)+ac&
      &c127(107)+acc127(106)
      acc127(107)=Qspvak4k3*Qspvak1k2
      acc127(106)=acc127(107)*acc127(106)
      acc127(108)=acc127(25)*Qspvae7k2
      acc127(109)=acc127(38)*Qspvak4k2
      acc127(110)=acc127(54)*Qspk2
      acc127(111)=acc127(63)*Qspvak7k2
      acc127(112)=acc127(78)*QspQ
      acc127(113)=acc127(90)*Qspval6k2
      acc127(114)=acc127(100)*Qspval5k2
      acc127(115)=Qspvak3k2*acc127(31)
      acc127(116)=Qspvak1k4*acc127(48)
      acc127(108)=acc127(116)+acc127(115)+acc127(114)+acc127(113)+acc127(112)+a&
      &cc127(111)+acc127(57)+acc127(110)+acc127(109)+acc127(108)
      acc127(108)=Qspvak4k3*acc127(108)
      acc127(109)=-acc127(31)*Qspvak4k2
      acc127(110)=acc127(7)*Qspvae7k2
      acc127(111)=acc127(11)*Qspk2
      acc127(112)=acc127(68)*Qspvak7k2
      acc127(113)=acc127(91)*Qspval5k2
      acc127(114)=acc127(97)*Qspval6k2
      acc127(109)=acc127(114)+acc127(113)+acc127(112)+acc127(111)+acc127(9)+acc&
      &127(110)+acc127(109)
      acc127(109)=QspQ*acc127(109)
      acc127(107)=-acc127(3)*acc127(107)
      acc127(110)=acc127(24)*Qspvak1k2
      acc127(111)=-acc127(64)*Qspk1
      acc127(112)=-acc127(69)*Qspvak1k3
      acc127(107)=acc127(82)+acc127(112)+acc127(111)+acc127(110)+acc127(107)
      acc127(110)=-Qspk7+Qspl5+Qspl6
      acc127(107)=acc127(110)*acc127(107)
      acc127(110)=-acc127(55)*Qspk2
      acc127(110)=acc127(99)+acc127(110)
      acc127(101)=acc127(101)*acc127(110)
      acc127(110)=acc127(22)*acc127(102)
      acc127(110)=acc127(5)+acc127(110)
      acc127(110)=Qspvae7k2*acc127(110)
      acc127(111)=acc127(89)*acc127(102)
      acc127(111)=acc127(86)+acc127(111)
      acc127(111)=Qspvak7k2*acc127(111)
      acc127(112)=-acc127(96)*acc127(102)
      acc127(112)=acc127(88)+acc127(112)
      acc127(112)=Qspval6k2*acc127(112)
      acc127(113)=-acc127(84)*acc127(102)
      acc127(113)=acc127(75)+acc127(113)
      acc127(113)=Qspval5k2*acc127(113)
      acc127(102)=-acc127(37)*acc127(102)
      acc127(102)=acc127(30)+acc127(102)
      acc127(102)=Qspvak4k2*acc127(102)
      acc127(114)=acc127(4)*Qspvak2l5
      acc127(115)=acc127(8)*Qspvak2l6
      acc127(116)=acc127(10)*Qspvak2k7
      acc127(117)=acc127(14)*Qspvak2e7
      acc127(118)=acc127(16)*Qspvae7l5
      acc127(119)=acc127(26)*Qspk2
      acc127(120)=acc127(27)*Qspvae7l6
      acc127(121)=acc127(32)*Qspvak7l5
      acc127(122)=acc127(43)*Qspvak7l6
      acc127(123)=acc127(80)*Qspe7
      acc127(124)=acc127(81)*Qspval5l6
      acc127(125)=acc127(94)*Qspval6l5
      brack=acc127(28)+acc127(101)+acc127(102)+acc127(103)+acc127(104)+acc127(1&
      &05)+acc127(106)+acc127(107)+acc127(108)+acc127(109)+acc127(110)+acc127(1&
      &11)+acc127(112)+acc127(113)+acc127(114)+acc127(115)+acc127(116)+acc127(1&
      &17)+acc127(118)+acc127(119)+acc127(120)+acc127(121)+acc127(122)+acc127(1&
      &23)+acc127(124)+acc127(125)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram127_sign, shift => diagram127_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd127h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d127
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d127 = 0.0_ki
      d127 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d127, ki), aimag(d127), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd127h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d127
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d127 = 0.0_ki
      d127 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d127, ki), aimag(d127), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d127h3l1
