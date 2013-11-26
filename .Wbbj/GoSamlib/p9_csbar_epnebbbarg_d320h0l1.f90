module     p9_csbar_epnebbbarg_d320h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d320h0l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd320h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc320(116)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspe7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5l6
      complex(ki) :: QspQ
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspk7
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspl5 = dotproduct(Q,l5)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspl6 = dotproduct(Q,l6)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspe7 = dotproduct(Q,e7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      QspQ = dotproduct(Q,Q)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspk7 = dotproduct(Q,k7)
      acc320(1)=abb320(11)
      acc320(2)=abb320(12)
      acc320(3)=abb320(13)
      acc320(4)=abb320(14)
      acc320(5)=abb320(15)
      acc320(6)=abb320(16)
      acc320(7)=abb320(17)
      acc320(8)=abb320(18)
      acc320(9)=abb320(19)
      acc320(10)=abb320(20)
      acc320(11)=abb320(21)
      acc320(12)=abb320(22)
      acc320(13)=abb320(23)
      acc320(14)=abb320(24)
      acc320(15)=abb320(25)
      acc320(16)=abb320(26)
      acc320(17)=abb320(27)
      acc320(18)=abb320(28)
      acc320(19)=abb320(29)
      acc320(20)=abb320(30)
      acc320(21)=abb320(31)
      acc320(22)=abb320(32)
      acc320(23)=abb320(33)
      acc320(24)=abb320(34)
      acc320(25)=abb320(35)
      acc320(26)=abb320(36)
      acc320(27)=abb320(37)
      acc320(28)=abb320(39)
      acc320(29)=abb320(40)
      acc320(30)=abb320(41)
      acc320(31)=abb320(42)
      acc320(32)=abb320(43)
      acc320(33)=abb320(44)
      acc320(34)=abb320(45)
      acc320(35)=abb320(46)
      acc320(36)=abb320(47)
      acc320(37)=abb320(48)
      acc320(38)=abb320(49)
      acc320(39)=abb320(50)
      acc320(40)=abb320(51)
      acc320(41)=abb320(52)
      acc320(42)=abb320(53)
      acc320(43)=abb320(55)
      acc320(44)=abb320(56)
      acc320(45)=abb320(57)
      acc320(46)=abb320(60)
      acc320(47)=abb320(61)
      acc320(48)=abb320(62)
      acc320(49)=abb320(64)
      acc320(50)=abb320(65)
      acc320(51)=abb320(66)
      acc320(52)=abb320(67)
      acc320(53)=abb320(68)
      acc320(54)=abb320(70)
      acc320(55)=abb320(71)
      acc320(56)=abb320(74)
      acc320(57)=abb320(75)
      acc320(58)=abb320(77)
      acc320(59)=abb320(78)
      acc320(60)=abb320(79)
      acc320(61)=abb320(80)
      acc320(62)=abb320(81)
      acc320(63)=abb320(82)
      acc320(64)=abb320(83)
      acc320(65)=abb320(85)
      acc320(66)=abb320(89)
      acc320(67)=abb320(90)
      acc320(68)=abb320(91)
      acc320(69)=abb320(92)
      acc320(70)=abb320(95)
      acc320(71)=abb320(96)
      acc320(72)=abb320(97)
      acc320(73)=abb320(98)
      acc320(74)=abb320(99)
      acc320(75)=abb320(100)
      acc320(76)=abb320(101)
      acc320(77)=abb320(102)
      acc320(78)=abb320(103)
      acc320(79)=abb320(104)
      acc320(80)=abb320(105)
      acc320(81)=abb320(107)
      acc320(82)=abb320(108)
      acc320(83)=abb320(109)
      acc320(84)=abb320(110)
      acc320(85)=abb320(111)
      acc320(86)=abb320(112)
      acc320(87)=abb320(113)
      acc320(88)=abb320(116)
      acc320(89)=abb320(121)
      acc320(90)=abb320(122)
      acc320(91)=abb320(124)
      acc320(92)=abb320(151)
      acc320(93)=abb320(163)
      acc320(94)=acc320(6)*Qspvak2k1
      acc320(95)=acc320(23)*Qspvak4k2
      acc320(96)=acc320(25)*Qspvak2k3
      acc320(97)=acc320(32)*Qspvak4k1
      acc320(98)=acc320(40)*Qspval6k1
      acc320(99)=acc320(50)*Qspvak7k2
      acc320(100)=acc320(51)*Qspval5k1
      acc320(101)=acc320(55)*Qspk2
      acc320(102)=acc320(61)*Qspval6k7
      acc320(103)=acc320(63)*Qspl5
      acc320(104)=acc320(67)*Qspval5k3
      acc320(105)=acc320(93)*Qspl6
      acc320(106)=Qspval6l5*acc320(64)
      acc320(107)=Qspval6k3*acc320(66)
      acc320(94)=acc320(97)+acc320(96)+acc320(94)+acc320(107)+acc320(106)+acc32&
      &0(105)+acc320(104)+acc320(103)+acc320(102)+acc320(101)+acc320(100)+acc32&
      &0(99)+acc320(98)+acc320(95)+acc320(13)
      acc320(94)=Qspe7*acc320(94)
      acc320(95)=acc320(36)*Qspk2
      acc320(96)=acc320(41)*Qspval6k7
      acc320(97)=Qspval5k2*Qspe7
      acc320(98)=acc320(44)*acc320(97)
      acc320(99)=acc320(46)*Qspl6
      acc320(100)=acc320(53)*Qspval5l6
      acc320(101)=acc320(54)*Qspvak7k2
      acc320(102)=acc320(76)*QspQ
      acc320(103)=acc320(82)*Qspval6e7
      acc320(104)=acc320(85)*Qspval5e7
      acc320(105)=acc320(87)*Qspvae7k2
      acc320(106)=Qspval6k2*Qspe7
      acc320(107)=acc320(88)*acc320(106)
      acc320(108)=acc320(90)*Qspval5k7
      acc320(95)=acc320(108)+acc320(107)+acc320(105)+acc320(104)+acc320(103)+ac&
      &c320(102)+acc320(101)+acc320(100)+acc320(99)+acc320(98)+acc320(96)+acc32&
      &0(95)+acc320(14)
      acc320(95)=Qspvak4k1*acc320(95)
      acc320(96)=acc320(17)*Qspk2
      acc320(98)=acc320(33)*QspQ
      acc320(99)=acc320(45)*Qspvae7k2
      acc320(100)=acc320(47)*Qspvak7k2
      acc320(101)=acc320(57)*Qspl6
      acc320(102)=acc320(59)*Qspval6e7
      acc320(103)=acc320(60)*Qspval6k7
      acc320(104)=acc320(65)*acc320(106)
      acc320(105)=acc320(70)*Qspval5k7
      acc320(107)=acc320(83)*Qspval5e7
      acc320(108)=acc320(89)*Qspval5l6
      acc320(109)=acc320(91)*acc320(97)
      acc320(96)=acc320(109)+acc320(108)+acc320(107)+acc320(105)+acc320(104)+ac&
      &c320(103)+acc320(102)+acc320(101)+acc320(100)+acc320(99)+acc320(98)+acc3&
      &20(22)+acc320(96)
      acc320(96)=Qspvak2k3*acc320(96)
      acc320(98)=acc320(7)*Qspvae7k2
      acc320(99)=acc320(8)*Qspl6
      acc320(100)=acc320(10)*acc320(97)
      acc320(101)=acc320(11)*Qspk2
      acc320(102)=acc320(15)*QspQ
      acc320(103)=acc320(20)*Qspval5l6
      acc320(104)=acc320(21)*Qspval6e7
      acc320(105)=acc320(24)*Qspval5e7
      acc320(107)=acc320(30)*Qspvak7k2
      acc320(108)=acc320(31)*Qspval6k7
      acc320(109)=acc320(39)*acc320(106)
      acc320(110)=acc320(43)*Qspval5k7
      acc320(98)=acc320(110)+acc320(109)+acc320(108)+acc320(107)+acc320(105)+ac&
      &c320(104)+acc320(103)+acc320(102)+acc320(101)+acc320(100)+acc320(99)+acc&
      &320(98)+acc320(4)
      acc320(98)=Qspvak2k1*acc320(98)
      acc320(99)=acc320(3)*Qspvae7k2
      acc320(100)=acc320(49)*Qspval6e7
      acc320(101)=acc320(71)*Qspval5k1
      acc320(102)=acc320(73)*Qspval6k1
      acc320(103)=-acc320(75)*Qspk2
      acc320(104)=-acc320(86)*Qspvak4k2
      acc320(99)=acc320(103)+acc320(99)+acc320(100)+acc320(104)+acc320(102)+acc&
      &320(101)
      acc320(100)=Qspk7+Qspl6
      acc320(99)=acc320(100)*acc320(99)
      acc320(100)=acc320(26)*Qspvae7k2
      acc320(101)=acc320(38)*Qspval6e7
      acc320(102)=acc320(56)*Qspk2
      acc320(103)=acc320(68)*Qspval6k1
      acc320(104)=acc320(78)*Qspval5k1
      acc320(105)=acc320(81)*Qspvak4k2
      acc320(100)=acc320(105)+acc320(104)+acc320(103)+acc320(102)+acc320(101)+a&
      &cc320(100)+acc320(18)
      acc320(100)=QspQ*acc320(100)
      acc320(101)=acc320(16)*Qspvae7k2
      acc320(102)=acc320(29)*Qspval6e7
      acc320(103)=acc320(52)*Qspval5k1
      acc320(104)=acc320(69)*Qspvak4k2
      acc320(105)=acc320(74)*Qspval6k1
      acc320(101)=acc320(105)+acc320(104)+acc320(103)+acc320(102)+acc320(101)+a&
      &cc320(5)
      acc320(101)=Qspk2*acc320(101)
      acc320(102)=acc320(37)*Qspvak2k1
      acc320(103)=acc320(62)*Qspvak2k3
      acc320(104)=acc320(79)*Qspvak4k1
      acc320(102)=acc320(104)+acc320(103)+acc320(102)+acc320(19)
      acc320(102)=Qspval6k2*acc320(102)
      acc320(103)=acc320(1)*acc320(106)
      acc320(104)=acc320(2)*Qspvae7k2
      acc320(105)=acc320(9)*Qspl5
      acc320(106)=acc320(27)*Qspl6
      acc320(107)=acc320(28)*Qspvak7k2
      acc320(108)=acc320(34)*Qspval5k1
      acc320(109)=acc320(35)*Qspval6e7
      acc320(97)=acc320(42)*acc320(97)
      acc320(110)=acc320(48)*Qspk7
      acc320(111)=acc320(58)*Qspval6k7
      acc320(112)=acc320(72)*Qspval6k1
      acc320(113)=acc320(77)*Qspval5k2
      acc320(114)=acc320(80)*Qspvak4k2
      acc320(115)=acc320(84)*Qspval5k3
      acc320(116)=acc320(92)*Qspk2**2
      brack=acc320(12)+acc320(94)+acc320(95)+acc320(96)+acc320(97)+acc320(98)+a&
      &cc320(99)+acc320(100)+acc320(101)+acc320(102)+acc320(103)+acc320(104)+ac&
      &c320(105)+acc320(106)+acc320(107)+acc320(108)+acc320(109)+acc320(110)+ac&
      &c320(111)+acc320(112)+acc320(113)+acc320(114)+acc320(115)+acc320(116)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram320_sign, shift => diagram320_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd320h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d320
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d320 = 0.0_ki
      d320 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d320, ki), aimag(d320), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd320h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d320
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d320 = 0.0_ki
      d320 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d320, ki), aimag(d320), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d320h0l1
