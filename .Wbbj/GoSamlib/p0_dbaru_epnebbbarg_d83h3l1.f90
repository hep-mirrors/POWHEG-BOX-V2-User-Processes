module     p0_dbaru_epnebbbarg_d83h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d83h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd83h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc83(110)
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak1k7
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspe7 = dotproduct(Q,e7)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      acc83(1)=abb83(6)
      acc83(2)=abb83(8)
      acc83(3)=abb83(9)
      acc83(4)=abb83(10)
      acc83(5)=abb83(11)
      acc83(6)=abb83(12)
      acc83(7)=abb83(13)
      acc83(8)=abb83(14)
      acc83(9)=abb83(15)
      acc83(10)=abb83(16)
      acc83(11)=abb83(17)
      acc83(12)=abb83(18)
      acc83(13)=abb83(19)
      acc83(14)=abb83(20)
      acc83(15)=abb83(21)
      acc83(16)=abb83(22)
      acc83(17)=abb83(23)
      acc83(18)=abb83(24)
      acc83(19)=abb83(25)
      acc83(20)=abb83(26)
      acc83(21)=abb83(27)
      acc83(22)=abb83(28)
      acc83(23)=abb83(29)
      acc83(24)=abb83(30)
      acc83(25)=abb83(31)
      acc83(26)=abb83(32)
      acc83(27)=abb83(33)
      acc83(28)=abb83(34)
      acc83(29)=abb83(35)
      acc83(30)=abb83(36)
      acc83(31)=abb83(37)
      acc83(32)=abb83(38)
      acc83(33)=abb83(39)
      acc83(34)=abb83(40)
      acc83(35)=abb83(41)
      acc83(36)=abb83(42)
      acc83(37)=abb83(43)
      acc83(38)=abb83(44)
      acc83(39)=abb83(45)
      acc83(40)=abb83(46)
      acc83(41)=abb83(47)
      acc83(42)=abb83(48)
      acc83(43)=abb83(49)
      acc83(44)=abb83(50)
      acc83(45)=abb83(51)
      acc83(46)=abb83(52)
      acc83(47)=abb83(53)
      acc83(48)=abb83(54)
      acc83(49)=abb83(55)
      acc83(50)=abb83(57)
      acc83(51)=abb83(58)
      acc83(52)=abb83(59)
      acc83(53)=abb83(61)
      acc83(54)=abb83(62)
      acc83(55)=abb83(63)
      acc83(56)=abb83(64)
      acc83(57)=abb83(65)
      acc83(58)=abb83(66)
      acc83(59)=abb83(67)
      acc83(60)=abb83(68)
      acc83(61)=abb83(69)
      acc83(62)=abb83(70)
      acc83(63)=abb83(71)
      acc83(64)=abb83(72)
      acc83(65)=abb83(73)
      acc83(66)=abb83(74)
      acc83(67)=abb83(75)
      acc83(68)=abb83(76)
      acc83(69)=abb83(77)
      acc83(70)=abb83(78)
      acc83(71)=abb83(79)
      acc83(72)=abb83(80)
      acc83(73)=abb83(81)
      acc83(74)=abb83(82)
      acc83(75)=abb83(83)
      acc83(76)=abb83(84)
      acc83(77)=abb83(85)
      acc83(78)=abb83(86)
      acc83(79)=abb83(87)
      acc83(80)=abb83(88)
      acc83(81)=abb83(89)
      acc83(82)=abb83(90)
      acc83(83)=abb83(91)
      acc83(84)=abb83(92)
      acc83(85)=abb83(93)
      acc83(86)=abb83(94)
      acc83(87)=abb83(95)
      acc83(88)=abb83(96)
      acc83(89)=Qspvak4k2*Qspe7
      acc83(90)=-acc83(14)*acc83(89)
      acc83(91)=Qspk2*Qspe7
      acc83(92)=acc83(3)*acc83(91)
      acc83(93)=acc83(8)*Qspvak4k2
      acc83(94)=acc83(15)*Qspk1
      acc83(95)=acc83(25)*Qspvak7k2
      acc83(96)=acc83(26)*Qspvak4k3
      acc83(97)=acc83(38)*Qspvae7k2
      acc83(98)=acc83(46)*Qspvak1l5
      acc83(99)=acc83(58)*Qspvak1l6
      acc83(100)=Qspvak2l5*Qspvak4k3
      acc83(101)=acc83(59)*acc83(100)
      acc83(102)=Qspvak2l6*Qspvak4k3
      acc83(103)=acc83(62)*acc83(102)
      acc83(104)=Qspvak1l5*Qspe7
      acc83(105)=acc83(80)*acc83(104)
      acc83(106)=Qspvak1l6*Qspe7
      acc83(107)=acc83(85)*acc83(106)
      acc83(90)=acc83(107)+acc83(105)+acc83(103)+acc83(101)+acc83(99)+acc83(98)&
      &+acc83(97)+acc83(96)+acc83(95)+acc83(22)+acc83(94)+acc83(93)+acc83(92)+a&
      &cc83(90)
      acc83(90)=QspQ*acc83(90)
      acc83(92)=acc83(18)*Qspvak2l6
      acc83(93)=acc83(20)*Qspvak2l5
      acc83(94)=Qspvak2l5*QspQ
      acc83(95)=acc83(35)*acc83(94)
      acc83(96)=acc83(39)*Qspvak4k3
      acc83(97)=acc83(40)*Qspk7
      acc83(98)=Qspk7*Qspvak2l5
      acc83(99)=acc83(55)*acc83(98)
      acc83(101)=Qspvak2l6*QspQ
      acc83(103)=acc83(56)*acc83(101)
      acc83(105)=Qspk7*Qspvak2l6
      acc83(107)=acc83(57)*acc83(105)
      acc83(108)=acc83(61)*acc83(100)
      acc83(109)=acc83(64)*acc83(102)
      acc83(92)=acc83(109)+acc83(108)+acc83(107)+acc83(103)+acc83(99)+acc83(97)&
      &+acc83(96)+acc83(36)+acc83(95)+acc83(93)+acc83(92)
      acc83(92)=Qspvae7k2*acc83(92)
      acc83(93)=acc83(63)*Qspvak2l5
      acc83(95)=acc83(66)*Qspvak2l6
      acc83(93)=acc83(95)+acc83(93)+acc83(1)
      acc83(93)=Qspvak1k2*acc83(93)
      acc83(95)=-Qspvak3k2*acc83(14)
      acc83(96)=acc83(13)*Qspk2
      acc83(97)=acc83(37)*Qspvak1l5
      acc83(99)=acc83(45)*Qspvak7k2
      acc83(103)=acc83(48)*Qspk1
      acc83(107)=acc83(49)*Qspvak4k2
      acc83(108)=acc83(88)*Qspvak1l6
      acc83(93)=acc83(108)+acc83(107)+acc83(103)+acc83(99)+acc83(97)+acc83(96)+&
      &acc83(95)+acc83(93)
      acc83(93)=acc83(93)*Qspe7
      acc83(95)=acc83(81)*Qspvak1l5
      acc83(96)=acc83(87)*Qspvak1l6
      acc83(93)=acc83(93)+acc83(96)+acc83(95)
      acc83(93)=Qspvak4k3*acc83(93)
      acc83(95)=acc83(10)*Qspvak2l5
      acc83(96)=Qspvak2l5*Qspe7
      acc83(97)=acc83(16)*acc83(96)
      acc83(99)=acc83(31)*acc83(94)
      acc83(103)=Qspvak2l6*Qspe7
      acc83(107)=acc83(50)*acc83(103)
      acc83(108)=acc83(60)*acc83(101)
      acc83(98)=acc83(69)*acc83(98)
      acc83(109)=acc83(82)*Qspvak2l6
      acc83(105)=acc83(86)*acc83(105)
      acc83(95)=acc83(105)+acc83(109)+acc83(98)+acc83(108)+acc83(107)+acc83(99)&
      &+acc83(97)+acc83(95)
      acc83(95)=Qspvak1k3*acc83(95)
      acc83(97)=acc83(2)*acc83(103)
      acc83(98)=acc83(4)*acc83(96)
      acc83(99)=acc83(6)*Qspe7
      acc83(105)=acc83(7)*Qspvak4k3
      acc83(107)=acc83(24)*Qspvak2l5
      acc83(108)=acc83(27)*acc83(100)
      acc83(109)=acc83(30)*Qspvak2l6
      acc83(110)=acc83(65)*acc83(102)
      acc83(97)=acc83(110)+acc83(109)+acc83(108)+acc83(107)+acc83(19)+acc83(105&
      &)+acc83(99)+acc83(98)+acc83(97)
      acc83(97)=Qspvak7k2*acc83(97)
      acc83(91)=-acc83(5)*acc83(91)
      acc83(98)=acc83(33)*QspQ
      acc83(99)=acc83(34)*Qspvak7k2
      acc83(105)=acc83(41)*acc83(89)
      acc83(107)=-acc83(78)*acc83(104)
      acc83(108)=-acc83(83)*acc83(106)
      acc83(91)=acc83(108)+acc83(107)+acc83(105)+acc83(99)+acc83(91)+acc83(98)
      acc83(98)=Qspk3+Qspk4
      acc83(99)=acc83(98)+Qspk7
      acc83(91)=acc83(99)*acc83(91)
      acc83(99)=acc83(11)*Qspvak2l5
      acc83(103)=acc83(54)*acc83(103)
      acc83(96)=acc83(71)*acc83(96)
      acc83(105)=acc83(74)*Qspvak2l6
      acc83(102)=acc83(75)*acc83(102)
      acc83(100)=acc83(76)*acc83(100)
      acc83(96)=acc83(100)+acc83(102)+acc83(105)+acc83(96)+acc83(103)+acc83(99)
      acc83(96)=Qspvak1k7*acc83(96)
      acc83(99)=acc83(67)*Qspvak2l6
      acc83(100)=acc83(73)*Qspvak2l5
      acc83(99)=acc83(100)+acc83(99)+acc83(29)
      acc83(99)=Qspvak4k2*acc83(99)
      acc83(100)=acc83(21)*Qspk1
      acc83(102)=acc83(72)*Qspvak1l5
      acc83(103)=acc83(79)*Qspvak1l6
      acc83(99)=acc83(103)+acc83(102)+acc83(100)+acc83(99)
      acc83(99)=Qspk7*acc83(99)
      acc83(100)=-acc83(43)*Qspvae7k2
      acc83(102)=acc83(44)*Qspvak1l5
      acc83(103)=acc83(84)*Qspvak1l6
      acc83(100)=acc83(103)+acc83(102)+acc83(100)
      acc83(98)=acc83(98)*acc83(100)
      acc83(100)=acc83(23)*Qspvak4k2
      acc83(100)=acc83(70)+acc83(100)
      acc83(94)=acc83(94)*acc83(100)
      acc83(100)=acc83(68)*Qspvak4k2
      acc83(100)=acc83(100)+acc83(53)
      acc83(100)=acc83(101)*acc83(100)
      acc83(101)=acc83(17)*Qspe7
      acc83(102)=acc83(47)*Qspvak4k3
      acc83(101)=acc83(102)+acc83(101)+acc83(12)
      acc83(101)=Qspk1*acc83(101)
      acc83(102)=acc83(51)*Qspvak2l6
      acc83(103)=acc83(52)*Qspvak2l5
      acc83(102)=acc83(103)+acc83(102)+acc83(28)
      acc83(89)=acc83(89)*acc83(102)
      acc83(102)=acc83(9)*acc83(104)
      acc83(103)=acc83(32)*QspQ**2
      acc83(104)=acc83(42)*Qspvak3k2*Qspe7
      acc83(105)=acc83(77)*acc83(106)
      brack=acc83(89)+acc83(90)+acc83(91)+acc83(92)+acc83(93)+acc83(94)+acc83(9&
      &5)+acc83(96)+acc83(97)+acc83(98)+acc83(99)+acc83(100)+acc83(101)+acc83(1&
      &02)+acc83(103)+acc83(104)+acc83(105)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram83_sign, shift => diagram83_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd83h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d83
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d83 = 0.0_ki
      d83 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d83, ki), aimag(d83), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd83h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d83
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d83 = 0.0_ki
      d83 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d83, ki), aimag(d83), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d83h3l1
