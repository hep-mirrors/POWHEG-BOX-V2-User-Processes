module     p9_csbar_epnebbbarg_d225h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d225h0l1.f90
   ! generator: buildfortran.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd225h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc225(124)
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: QspQ
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspk3 = dotproduct(Q,k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      QspQ = dotproduct(Q,Q)
      acc225(1)=abb225(13)
      acc225(2)=abb225(14)
      acc225(3)=abb225(15)
      acc225(4)=abb225(16)
      acc225(5)=abb225(17)
      acc225(6)=abb225(18)
      acc225(7)=abb225(19)
      acc225(8)=abb225(20)
      acc225(9)=abb225(21)
      acc225(10)=abb225(22)
      acc225(11)=abb225(23)
      acc225(12)=abb225(24)
      acc225(13)=abb225(25)
      acc225(14)=abb225(26)
      acc225(15)=abb225(27)
      acc225(16)=abb225(28)
      acc225(17)=abb225(29)
      acc225(18)=abb225(30)
      acc225(19)=abb225(31)
      acc225(20)=abb225(32)
      acc225(21)=abb225(34)
      acc225(22)=abb225(35)
      acc225(23)=abb225(36)
      acc225(24)=abb225(37)
      acc225(25)=abb225(38)
      acc225(26)=abb225(39)
      acc225(27)=abb225(40)
      acc225(28)=abb225(41)
      acc225(29)=abb225(42)
      acc225(30)=abb225(43)
      acc225(31)=abb225(44)
      acc225(32)=abb225(45)
      acc225(33)=abb225(46)
      acc225(34)=abb225(47)
      acc225(35)=abb225(48)
      acc225(36)=abb225(50)
      acc225(37)=abb225(51)
      acc225(38)=abb225(52)
      acc225(39)=abb225(53)
      acc225(40)=abb225(54)
      acc225(41)=abb225(55)
      acc225(42)=abb225(57)
      acc225(43)=abb225(58)
      acc225(44)=abb225(59)
      acc225(45)=abb225(60)
      acc225(46)=abb225(61)
      acc225(47)=abb225(62)
      acc225(48)=abb225(63)
      acc225(49)=abb225(65)
      acc225(50)=abb225(66)
      acc225(51)=abb225(67)
      acc225(52)=abb225(68)
      acc225(53)=abb225(72)
      acc225(54)=abb225(73)
      acc225(55)=abb225(75)
      acc225(56)=abb225(76)
      acc225(57)=abb225(77)
      acc225(58)=abb225(79)
      acc225(59)=abb225(80)
      acc225(60)=abb225(85)
      acc225(61)=abb225(86)
      acc225(62)=abb225(88)
      acc225(63)=abb225(90)
      acc225(64)=abb225(92)
      acc225(65)=abb225(93)
      acc225(66)=abb225(96)
      acc225(67)=abb225(100)
      acc225(68)=abb225(101)
      acc225(69)=abb225(107)
      acc225(70)=abb225(108)
      acc225(71)=abb225(110)
      acc225(72)=abb225(111)
      acc225(73)=abb225(115)
      acc225(74)=abb225(117)
      acc225(75)=abb225(118)
      acc225(76)=abb225(119)
      acc225(77)=abb225(124)
      acc225(78)=abb225(127)
      acc225(79)=abb225(129)
      acc225(80)=abb225(141)
      acc225(81)=abb225(145)
      acc225(82)=abb225(157)
      acc225(83)=abb225(158)
      acc225(84)=abb225(163)
      acc225(85)=abb225(170)
      acc225(86)=abb225(173)
      acc225(87)=abb225(178)
      acc225(88)=abb225(179)
      acc225(89)=abb225(184)
      acc225(90)=abb225(185)
      acc225(91)=abb225(190)
      acc225(92)=abb225(191)
      acc225(93)=abb225(192)
      acc225(94)=abb225(198)
      acc225(95)=abb225(200)
      acc225(96)=abb225(213)
      acc225(97)=abb225(251)
      acc225(98)=abb225(270)
      acc225(99)=abb225(296)
      acc225(100)=abb225(302)
      acc225(101)=acc225(8)*Qspval5k2
      acc225(102)=acc225(11)*Qspval6k2
      acc225(103)=-acc225(44)*Qspe7
      acc225(104)=acc225(45)*Qspvae7k2
      acc225(105)=-acc225(53)*Qspval5k7
      acc225(106)=-acc225(61)*Qspval6k7
      acc225(107)=-acc225(66)*Qspl5
      acc225(108)=acc225(67)*Qspk7
      acc225(109)=acc225(68)*Qspl6
      acc225(110)=-acc225(70)*Qspval6l5
      acc225(111)=-acc225(73)*Qspk2
      acc225(112)=acc225(78)*Qspval6e7
      acc225(113)=-acc225(87)*Qspval5l6
      acc225(114)=-acc225(92)*Qspval5e7
      acc225(115)=acc225(97)*Qspvak7k2
      acc225(101)=acc225(115)+acc225(114)+acc225(113)+acc225(112)+acc225(111)+a&
      &cc225(110)+acc225(109)+acc225(108)+acc225(107)+acc225(106)+acc225(105)+a&
      &cc225(104)+acc225(103)+acc225(27)+acc225(101)+acc225(102)
      acc225(102)=-Qspk4+Qspk1-Qspk3
      acc225(101)=acc225(102)*acc225(101)
      acc225(102)=acc225(14)*Qspe7
      acc225(103)=acc225(59)*Qspvae7k2
      acc225(104)=acc225(62)*Qspval6k7
      acc225(105)=acc225(69)*Qspval6l5
      acc225(106)=acc225(72)*Qspl6
      acc225(107)=acc225(74)*Qspk7
      acc225(108)=acc225(76)*Qspk2
      acc225(109)=acc225(77)*Qspval6e7
      acc225(110)=acc225(80)*Qspval6k2
      acc225(111)=acc225(81)*Qspval5e7
      acc225(112)=acc225(83)*Qspl5
      acc225(113)=acc225(84)*Qspval5k2
      acc225(114)=acc225(86)*Qspvak7k2
      acc225(115)=acc225(94)*Qspval5k7
      acc225(116)=acc225(95)*Qspval5l6
      acc225(102)=acc225(116)+acc225(115)+acc225(114)+acc225(113)+acc225(112)+a&
      &cc225(111)+acc225(110)+acc225(109)+acc225(108)+acc225(107)+acc225(106)+a&
      &cc225(105)+acc225(104)+acc225(103)+acc225(102)+acc225(1)
      acc225(102)=Qspvak4k3*acc225(102)
      acc225(103)=acc225(4)*Qspe7
      acc225(104)=acc225(5)*Qspk7
      acc225(105)=acc225(9)*Qspval6k2
      acc225(106)=acc225(12)*Qspl6
      acc225(107)=acc225(13)*Qspval6e7
      acc225(108)=acc225(16)*Qspl5
      acc225(109)=acc225(17)*Qspk2
      acc225(110)=acc225(19)*Qspval5e7
      acc225(111)=acc225(21)*Qspvae7k2
      acc225(112)=acc225(23)*Qspvak7k2
      acc225(113)=acc225(24)*Qspval6k7
      acc225(114)=acc225(26)*Qspval6l5
      acc225(115)=acc225(28)*Qspval5k7
      acc225(116)=acc225(29)*Qspval5l6
      acc225(117)=acc225(30)*Qspval5k2
      acc225(103)=acc225(117)+acc225(116)+acc225(115)+acc225(114)+acc225(113)+a&
      &cc225(112)+acc225(111)+acc225(110)+acc225(109)+acc225(108)+acc225(107)+a&
      &cc225(106)+acc225(105)+acc225(104)+acc225(103)+acc225(2)
      acc225(103)=Qspvak4k1*acc225(103)
      acc225(104)=acc225(32)*Qspval5k2
      acc225(105)=acc225(38)*Qspe7
      acc225(106)=acc225(40)*Qspk7
      acc225(107)=acc225(42)*Qspl6
      acc225(108)=acc225(46)*Qspl5
      acc225(109)=acc225(50)*Qspk2
      acc225(110)=acc225(51)*Qspval6e7
      acc225(111)=acc225(54)*Qspval5e7
      acc225(112)=acc225(55)*Qspvae7k2
      acc225(113)=acc225(56)*Qspvak7k2
      acc225(114)=acc225(58)*Qspval6k7
      acc225(115)=acc225(60)*Qspval6l5
      acc225(116)=acc225(63)*Qspval6k2
      acc225(117)=acc225(64)*Qspval5k7
      acc225(118)=acc225(65)*Qspval5l6
      acc225(104)=acc225(118)+acc225(117)+acc225(116)+acc225(115)+acc225(114)+a&
      &cc225(113)+acc225(112)+acc225(111)+acc225(110)+acc225(109)+acc225(108)+a&
      &cc225(107)+acc225(106)+acc225(105)+acc225(33)+acc225(104)
      acc225(104)=Qspvak2k3*acc225(104)
      acc225(105)=acc225(3)*Qspe7
      acc225(106)=acc225(6)*Qspval5k2
      acc225(107)=acc225(7)*Qspvak7k2
      acc225(108)=acc225(15)*Qspval6e7
      acc225(109)=acc225(22)*Qspk7
      acc225(110)=acc225(25)*Qspval6k2
      acc225(111)=acc225(35)*Qspval5k7
      acc225(112)=acc225(37)*Qspl6
      acc225(113)=acc225(39)*Qspl5
      acc225(114)=acc225(41)*Qspk2
      acc225(115)=acc225(43)*Qspvae7k2
      acc225(116)=acc225(47)*Qspval5e7
      acc225(117)=acc225(48)*Qspval6k7
      acc225(118)=acc225(49)*Qspval6l5
      acc225(119)=acc225(52)*Qspval5l6
      acc225(105)=acc225(119)+acc225(118)+acc225(117)+acc225(116)+acc225(115)+a&
      &cc225(114)+acc225(113)+acc225(112)+acc225(111)+acc225(110)+acc225(109)+a&
      &cc225(20)+acc225(108)+acc225(107)+acc225(106)+acc225(105)
      acc225(105)=Qspvak2k1*acc225(105)
      acc225(106)=Qspl6+Qspl5
      acc225(106)=acc225(88)*acc225(106)
      acc225(107)=acc225(34)*Qspk2
      acc225(108)=acc225(36)*Qspval5k7
      acc225(109)=acc225(71)*Qspval5k2
      acc225(110)=acc225(79)*Qspval5e7
      acc225(111)=acc225(82)*Qspval5l6
      acc225(112)=acc225(85)*Qspval6k2
      acc225(113)=acc225(89)*Qspk7
      acc225(114)=acc225(90)*Qspval6l5
      acc225(115)=acc225(91)*Qspvak7k2
      acc225(116)=acc225(93)*Qspe7
      acc225(117)=acc225(98)*Qspval6e7
      acc225(118)=acc225(99)*Qspval6k7
      acc225(119)=acc225(100)*Qspvae7k2
      acc225(120)=Qspvak2e7*acc225(75)
      acc225(121)=Qspvak2k7*acc225(31)
      acc225(122)=Qspvak2l6*acc225(10)
      acc225(123)=Qspvak2l5*acc225(18)
      acc225(124)=QspQ*acc225(96)
      brack=acc225(57)+acc225(101)+acc225(102)+acc225(103)+acc225(104)+acc225(1&
      &05)+acc225(106)+acc225(107)+acc225(108)+acc225(109)+acc225(110)+acc225(1&
      &11)+acc225(112)+acc225(113)+acc225(114)+acc225(115)+acc225(116)+acc225(1&
      &17)+acc225(118)+acc225(119)+acc225(120)+acc225(121)+acc225(122)+acc225(1&
      &23)+acc225(124)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram225_sign, shift => diagram225_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd225h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d225
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d225 = 0.0_ki
      d225 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d225, ki), aimag(d225), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd225h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d225
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d225 = 0.0_ki
      d225 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d225, ki), aimag(d225), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d225h0l1
