module     p0_dbaru_epnebbbarg_d104h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d104h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd104h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc104(124)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspe7
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak1k3
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspe7 = dotproduct(Q,e7)
      Qspk2 = dotproduct(Q,k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspk7 = dotproduct(Q,k7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      acc104(1)=abb104(11)
      acc104(2)=abb104(12)
      acc104(3)=abb104(13)
      acc104(4)=abb104(14)
      acc104(5)=abb104(15)
      acc104(6)=abb104(16)
      acc104(7)=abb104(17)
      acc104(8)=abb104(18)
      acc104(9)=abb104(19)
      acc104(10)=abb104(20)
      acc104(11)=abb104(21)
      acc104(12)=abb104(22)
      acc104(13)=abb104(23)
      acc104(14)=abb104(24)
      acc104(15)=abb104(25)
      acc104(16)=abb104(26)
      acc104(17)=abb104(27)
      acc104(18)=abb104(28)
      acc104(19)=abb104(29)
      acc104(20)=abb104(30)
      acc104(21)=abb104(31)
      acc104(22)=abb104(32)
      acc104(23)=abb104(33)
      acc104(24)=abb104(34)
      acc104(25)=abb104(35)
      acc104(26)=abb104(36)
      acc104(27)=abb104(37)
      acc104(28)=abb104(38)
      acc104(29)=abb104(39)
      acc104(30)=abb104(40)
      acc104(31)=abb104(41)
      acc104(32)=abb104(42)
      acc104(33)=abb104(43)
      acc104(34)=abb104(44)
      acc104(35)=abb104(45)
      acc104(36)=abb104(46)
      acc104(37)=abb104(47)
      acc104(38)=abb104(48)
      acc104(39)=abb104(49)
      acc104(40)=abb104(50)
      acc104(41)=abb104(51)
      acc104(42)=abb104(52)
      acc104(43)=abb104(53)
      acc104(44)=abb104(54)
      acc104(45)=abb104(55)
      acc104(46)=abb104(56)
      acc104(47)=abb104(57)
      acc104(48)=abb104(58)
      acc104(49)=abb104(59)
      acc104(50)=abb104(60)
      acc104(51)=abb104(63)
      acc104(52)=abb104(64)
      acc104(53)=abb104(65)
      acc104(54)=abb104(66)
      acc104(55)=abb104(68)
      acc104(56)=abb104(69)
      acc104(57)=abb104(71)
      acc104(58)=abb104(75)
      acc104(59)=abb104(76)
      acc104(60)=abb104(77)
      acc104(61)=abb104(78)
      acc104(62)=abb104(80)
      acc104(63)=abb104(82)
      acc104(64)=abb104(83)
      acc104(65)=abb104(84)
      acc104(66)=abb104(85)
      acc104(67)=abb104(87)
      acc104(68)=abb104(88)
      acc104(69)=abb104(89)
      acc104(70)=abb104(90)
      acc104(71)=abb104(91)
      acc104(72)=abb104(92)
      acc104(73)=abb104(94)
      acc104(74)=abb104(101)
      acc104(75)=abb104(107)
      acc104(76)=abb104(111)
      acc104(77)=abb104(121)
      acc104(78)=abb104(129)
      acc104(79)=abb104(138)
      acc104(80)=abb104(140)
      acc104(81)=abb104(141)
      acc104(82)=abb104(142)
      acc104(83)=abb104(143)
      acc104(84)=abb104(147)
      acc104(85)=abb104(154)
      acc104(86)=abb104(156)
      acc104(87)=abb104(157)
      acc104(88)=abb104(161)
      acc104(89)=abb104(171)
      acc104(90)=abb104(240)
      acc104(91)=abb104(244)
      acc104(92)=abb104(260)
      acc104(93)=abb104(264)
      acc104(94)=abb104(289)
      acc104(95)=abb104(307)
      acc104(96)=abb104(363)
      acc104(97)=abb104(412)
      acc104(98)=abb104(420)
      acc104(99)=abb104(450)
      acc104(100)=abb104(451)
      acc104(101)=abb104(452)
      acc104(102)=acc104(19)*Qspl6
      acc104(103)=acc104(21)*Qspl5
      acc104(104)=acc104(22)*Qspe7
      acc104(105)=acc104(23)*Qspk2
      acc104(106)=acc104(25)*Qspval6e7
      acc104(107)=acc104(26)*Qspval5k2
      acc104(108)=acc104(28)*Qspk7
      acc104(109)=acc104(30)*Qspvae7k2
      acc104(110)=acc104(31)*Qspvak7k2
      acc104(111)=acc104(40)*Qspval6k7
      acc104(112)=acc104(43)*Qspval6l5
      acc104(113)=acc104(45)*Qspval6k2
      acc104(102)=acc104(113)+acc104(112)+acc104(111)+acc104(110)+acc104(109)+a&
      &cc104(108)+acc104(107)+acc104(106)+acc104(105)+acc104(104)+acc104(103)+a&
      &cc104(102)+acc104(18)
      acc104(102)=acc104(102)*Qspvak1k2
      acc104(103)=acc104(1)*Qspk2
      acc104(104)=acc104(4)*Qspvae7k2
      acc104(105)=acc104(10)*Qspvak2e7
      acc104(106)=acc104(12)*Qspvak7l5
      acc104(107)=acc104(13)*Qspvak2l6
      acc104(108)=acc104(15)*Qspe7
      acc104(109)=acc104(16)*Qspvak2l5
      acc104(110)=acc104(20)*Qspval6l5
      acc104(111)=acc104(27)*Qspvak7k2
      acc104(112)=acc104(29)*Qspl5
      acc104(113)=acc104(32)*Qspval5k2
      acc104(114)=acc104(33)*Qspl6
      acc104(115)=acc104(46)*Qspval6k2
      acc104(116)=acc104(54)*Qspk1
      acc104(117)=acc104(57)*Qspval6k7
      acc104(118)=acc104(61)*Qspval6e7
      acc104(119)=acc104(68)*Qspvak4k2
      acc104(120)=acc104(69)*Qspvak2k7
      acc104(121)=acc104(74)*Qspvae7l5
      acc104(122)=acc104(77)*Qspk7
      acc104(123)=-Qspvak3k2*acc104(60)
      acc104(102)=acc104(122)+acc104(115)+acc104(114)+acc104(113)+acc104(112)+a&
      &cc104(110)+acc104(108)+acc104(103)+acc104(102)+acc104(123)+acc104(121)+a&
      &cc104(120)+acc104(119)+acc104(118)+acc104(117)+acc104(116)+acc104(111)+a&
      &cc104(109)+acc104(107)+acc104(106)+acc104(105)+acc104(104)+acc104(3)
      acc104(102)=Qspvak4k3*acc104(102)
      acc104(103)=-acc104(60)*Qspvak4k2
      acc104(104)=acc104(11)*Qspvak2l5
      acc104(105)=acc104(44)*Qspval6l5
      acc104(106)=-acc104(47)*Qspvak4k3
      acc104(107)=acc104(48)*Qspval6k2
      acc104(108)=acc104(50)*Qspvak2k7
      acc104(109)=acc104(56)*Qspe7
      acc104(110)=acc104(72)*Qspk7
      acc104(111)=acc104(73)*Qspval5k2
      acc104(112)=acc104(75)*Qspl6
      acc104(113)=acc104(78)*Qspk2
      acc104(114)=acc104(84)*Qspvae7k2
      acc104(115)=acc104(85)*Qspvak7l5
      acc104(116)=acc104(86)*Qspvak7k2
      acc104(117)=acc104(87)*Qspval6e7
      acc104(118)=acc104(89)*Qspvak2e7
      acc104(119)=acc104(92)*Qspvae7l5
      acc104(120)=acc104(94)*Qspval6k7
      acc104(121)=-acc104(96)*Qspvak2l6
      acc104(122)=-acc104(98)*Qspl5
      acc104(103)=acc104(122)+acc104(121)+acc104(120)+acc104(119)+acc104(118)+a&
      &cc104(117)+acc104(116)+acc104(115)+acc104(114)+acc104(113)+acc104(112)+a&
      &cc104(111)+acc104(110)+acc104(109)+acc104(51)+acc104(108)+acc104(107)+ac&
      &c104(106)+acc104(105)+acc104(104)+acc104(103)
      acc104(103)=QspQ*acc104(103)
      acc104(104)=acc104(38)*Qspval5k2
      acc104(105)=acc104(41)*Qspval6l5
      acc104(106)=acc104(64)*Qspvak4k2
      acc104(107)=-acc104(67)*Qspval6k2
      acc104(108)=-acc104(81)*Qspval6e7
      acc104(109)=-acc104(83)*Qspvak7k2
      acc104(110)=-acc104(88)*Qspval6k7
      acc104(111)=-acc104(90)*Qspk2
      acc104(112)=-acc104(93)*Qspvae7k2
      acc104(113)=-acc104(97)*Qspe7
      acc104(114)=acc104(99)*Qspk7
      acc104(115)=acc104(100)*Qspl6
      acc104(116)=acc104(101)*Qspl5
      acc104(104)=acc104(116)+acc104(115)+acc104(114)+acc104(113)+acc104(95)+ac&
      &c104(112)+acc104(111)+acc104(110)+acc104(109)+acc104(108)+acc104(107)+ac&
      &c104(106)+acc104(104)+acc104(105)
      acc104(105)=Qspk3+Qspk4
      acc104(104)=acc104(105)*acc104(104)
      acc104(105)=acc104(24)*Qspe7
      acc104(106)=acc104(34)*Qspval6k2
      acc104(107)=acc104(36)*Qspk7
      acc104(108)=acc104(52)*Qspl6
      acc104(109)=acc104(53)*Qspl5
      acc104(110)=acc104(55)*Qspk2
      acc104(111)=acc104(58)*Qspval6e7
      acc104(112)=acc104(59)*Qspvae7k2
      acc104(113)=acc104(62)*Qspvak7k2
      acc104(114)=acc104(63)*Qspval6k7
      acc104(115)=acc104(66)*Qspval6l5
      acc104(116)=acc104(71)*Qspval5k2
      acc104(105)=acc104(116)+acc104(115)+acc104(114)+acc104(113)+acc104(112)+a&
      &cc104(111)+acc104(110)+acc104(109)+acc104(108)+acc104(107)+acc104(106)+a&
      &cc104(105)+acc104(17)
      acc104(105)=Qspvak1k3*acc104(105)
      acc104(106)=Qspl6+Qspl5
      acc104(106)=acc104(76)*acc104(106)
      acc104(107)=acc104(2)*Qspvak2l5
      acc104(108)=acc104(5)*Qspvak2k7
      acc104(109)=acc104(6)*Qspvak2l6
      acc104(110)=acc104(7)*Qspvak1k2
      acc104(111)=acc104(8)*Qspval6k7
      acc104(112)=acc104(9)*Qspe7
      acc104(113)=acc104(14)*Qspval6k2
      acc104(114)=acc104(35)*Qspval6l5
      acc104(115)=acc104(37)*Qspval5k2
      acc104(116)=acc104(39)*Qspk1
      acc104(117)=acc104(42)*Qspvak7l5
      acc104(118)=acc104(49)*Qspvae7k2
      acc104(119)=acc104(65)*Qspvak7k2
      acc104(120)=acc104(70)*Qspvak2e7
      acc104(121)=acc104(79)*Qspval6e7
      acc104(122)=acc104(80)*Qspk2
      acc104(123)=acc104(82)*Qspk7
      acc104(124)=acc104(91)*Qspvae7l5
      brack=acc104(102)+acc104(103)+acc104(104)+acc104(105)+acc104(106)+acc104(&
      &107)+acc104(108)+acc104(109)+acc104(110)+acc104(111)+acc104(112)+acc104(&
      &113)+acc104(114)+acc104(115)+acc104(116)+acc104(117)+acc104(118)+acc104(&
      &119)+acc104(120)+acc104(121)+acc104(122)+acc104(123)+acc104(124)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram104_sign, shift => diagram104_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd104h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d104
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d104 = 0.0_ki
      d104 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d104, ki), aimag(d104), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd104h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d104
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d104 = 0.0_ki
      d104 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d104, ki), aimag(d104), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d104h1l1
