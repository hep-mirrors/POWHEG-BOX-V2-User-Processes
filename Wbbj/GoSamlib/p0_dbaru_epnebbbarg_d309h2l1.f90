module     p0_dbaru_epnebbbarg_d309h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d309h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd309h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc309(100)
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak3l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak3e7
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak3k7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvae7k3
      complex(ki) :: Qspvae7l6
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak3l6 = dotproduct(Q,spvak3l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak3e7 = dotproduct(Q,spvak3e7)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak3k7 = dotproduct(Q,spvak3k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      acc309(1)=abb309(8)
      acc309(2)=abb309(9)
      acc309(3)=abb309(10)
      acc309(4)=abb309(11)
      acc309(5)=abb309(12)
      acc309(6)=abb309(13)
      acc309(7)=abb309(14)
      acc309(8)=abb309(15)
      acc309(9)=abb309(16)
      acc309(10)=abb309(17)
      acc309(11)=abb309(18)
      acc309(12)=abb309(19)
      acc309(13)=abb309(20)
      acc309(14)=abb309(21)
      acc309(15)=abb309(22)
      acc309(16)=abb309(23)
      acc309(17)=abb309(24)
      acc309(18)=abb309(25)
      acc309(19)=abb309(26)
      acc309(20)=abb309(27)
      acc309(21)=abb309(28)
      acc309(22)=abb309(29)
      acc309(23)=abb309(30)
      acc309(24)=abb309(31)
      acc309(25)=abb309(32)
      acc309(26)=abb309(33)
      acc309(27)=abb309(34)
      acc309(28)=abb309(35)
      acc309(29)=abb309(36)
      acc309(30)=abb309(37)
      acc309(31)=abb309(38)
      acc309(32)=abb309(39)
      acc309(33)=abb309(40)
      acc309(34)=abb309(41)
      acc309(35)=abb309(42)
      acc309(36)=abb309(43)
      acc309(37)=abb309(44)
      acc309(38)=abb309(45)
      acc309(39)=abb309(46)
      acc309(40)=abb309(47)
      acc309(41)=abb309(48)
      acc309(42)=abb309(49)
      acc309(43)=abb309(50)
      acc309(44)=abb309(52)
      acc309(45)=abb309(53)
      acc309(46)=abb309(54)
      acc309(47)=abb309(55)
      acc309(48)=abb309(57)
      acc309(49)=abb309(58)
      acc309(50)=abb309(59)
      acc309(51)=abb309(61)
      acc309(52)=abb309(63)
      acc309(53)=abb309(64)
      acc309(54)=abb309(65)
      acc309(55)=abb309(67)
      acc309(56)=abb309(69)
      acc309(57)=abb309(70)
      acc309(58)=abb309(72)
      acc309(59)=abb309(76)
      acc309(60)=abb309(78)
      acc309(61)=abb309(79)
      acc309(62)=abb309(80)
      acc309(63)=abb309(81)
      acc309(64)=abb309(85)
      acc309(65)=abb309(92)
      acc309(66)=abb309(104)
      acc309(67)=abb309(108)
      acc309(68)=abb309(118)
      acc309(69)=abb309(126)
      acc309(70)=abb309(127)
      acc309(71)=abb309(132)
      acc309(72)=abb309(133)
      acc309(73)=abb309(136)
      acc309(74)=abb309(137)
      acc309(75)=abb309(139)
      acc309(76)=abb309(141)
      acc309(77)=abb309(143)
      acc309(78)=abb309(144)
      acc309(79)=abb309(145)
      acc309(80)=abb309(146)
      acc309(81)=abb309(147)
      acc309(82)=acc309(4)*Qspvak3k2
      acc309(83)=-acc309(41)*Qspvak3l6
      acc309(84)=Qspvak4l6*acc309(58)
      acc309(85)=Qspvak4k2*acc309(33)
      acc309(86)=Qspk2*acc309(13)
      acc309(82)=acc309(86)+acc309(85)+acc309(84)+acc309(83)+acc309(82)+acc309(&
      &1)
      acc309(82)=Qspvak4k3*acc309(82)
      acc309(83)=Qspk4+Qspk3
      acc309(84)=-acc309(17)*acc309(83)
      acc309(85)=Qspvak2l6*acc309(41)
      acc309(86)=Qspvak4l6*acc309(30)
      acc309(87)=Qspvak4k2*acc309(6)
      acc309(84)=acc309(87)+acc309(86)+acc309(2)+acc309(85)+acc309(84)
      acc309(84)=Qspvak4k2*acc309(84)
      acc309(85)=-Qspk2+acc309(83)
      acc309(85)=acc309(60)*acc309(85)
      acc309(86)=Qspvak4l6*acc309(76)
      acc309(87)=Qspvak4k2*acc309(27)
      acc309(85)=acc309(87)+acc309(31)-acc309(86)+acc309(85)
      acc309(85)=Qspk2*acc309(85)
      acc309(86)=acc309(86)-acc309(65)
      acc309(86)=acc309(86)*acc309(83)
      acc309(87)=Qspvak1k2*acc309(40)
      acc309(88)=Qspvak1k3*acc309(35)
      acc309(89)=Qspvak1l6*acc309(24)
      acc309(90)=Qspvak2l5*acc309(23)
      acc309(91)=Qspval5l6*acc309(59)
      acc309(92)=Qspvak7k2*acc309(81)
      acc309(93)=Qspvak7k3*acc309(73)
      acc309(94)=Qspvak7l6*acc309(79)
      acc309(95)=Qspvak2l6*acc309(21)
      acc309(96)=Qspvak2k3*acc309(45)
      acc309(97)=QspQ*acc309(64)
      acc309(82)=acc309(82)+acc309(85)+acc309(84)+acc309(97)+acc309(96)+acc309(&
      &95)+acc309(94)+acc309(93)+acc309(92)+acc309(91)+acc309(90)+acc309(89)+ac&
      &c309(88)+acc309(9)+acc309(87)+acc309(86)
      acc309(82)=Qspe7*acc309(82)
      acc309(84)=-acc309(69)*Qspvak3e7
      acc309(85)=acc309(36)*Qspvak3k1
      acc309(86)=acc309(8)*Qspvak3k7
      acc309(87)=-acc309(29)*Qspvak3l6
      acc309(88)=Qspvak2k7*acc309(48)
      acc309(89)=Qspvak4k1*acc309(49)
      acc309(90)=Qspvak4k7*acc309(78)
      acc309(91)=Qspvak4e7*acc309(67)
      acc309(92)=Qspvak2k1*acc309(12)
      acc309(93)=Qspvak2e7*acc309(70)
      acc309(94)=Qspvak4l6*acc309(14)
      acc309(84)=acc309(94)+acc309(93)+acc309(92)+acc309(91)+acc309(90)+acc309(&
      &89)+acc309(88)+acc309(87)+acc309(3)+acc309(86)+acc309(84)+acc309(85)
      acc309(84)=Qspvak4k3*acc309(84)
      acc309(85)=Qspvak2l6*acc309(29)
      acc309(86)=Qspvak2k7*acc309(63)
      acc309(87)=Qspvak4k1*acc309(28)
      acc309(88)=Qspvak4k7*acc309(32)
      acc309(89)=Qspvak4e7*acc309(26)
      acc309(90)=Qspvak2k1*acc309(5)
      acc309(91)=Qspvak2e7*acc309(16)
      acc309(92)=Qspvak4l6*acc309(7)
      acc309(85)=acc309(92)+acc309(91)+acc309(90)+acc309(89)+acc309(88)+acc309(&
      &87)+acc309(86)+acc309(22)+acc309(85)
      acc309(85)=Qspvak4k2*acc309(85)
      acc309(86)=Qspvak2k7*acc309(62)
      acc309(87)=Qspvak4k1*acc309(46)
      acc309(88)=Qspvak4k7*acc309(68)
      acc309(89)=Qspvak4e7*acc309(74)
      acc309(90)=Qspvak2k1*acc309(44)
      acc309(91)=Qspvak2e7*acc309(55)
      acc309(92)=Qspvak4l6*acc309(52)
      acc309(86)=-acc309(88)+acc309(86)+acc309(87)-acc309(89)-acc309(90)+acc309&
      &(91)-acc309(92)
      acc309(87)=acc309(86)+acc309(66)
      acc309(83)=-acc309(87)*acc309(83)
      acc309(87)=Qspk7-Qspk1
      acc309(88)=acc309(50)*acc309(87)
      acc309(89)=QspQ*acc309(42)
      acc309(86)=acc309(89)+acc309(11)+acc309(88)+acc309(86)
      acc309(86)=Qspk2*acc309(86)
      acc309(88)=Qspvae7k2*acc309(71)
      acc309(89)=Qspvae7k3*acc309(77)
      acc309(90)=Qspvae7l6*acc309(47)
      acc309(91)=Qspvak2k3*acc309(57)
      acc309(88)=-acc309(90)+acc309(88)+acc309(89)+acc309(91)+acc309(56)
      acc309(87)=acc309(88)*acc309(87)
      acc309(88)=Qspvae7k2*acc309(19)
      acc309(89)=Qspvae7k3*acc309(75)
      acc309(90)=Qspvae7l6*acc309(34)
      acc309(91)=Qspvak2k3*acc309(53)
      acc309(88)=acc309(91)+acc309(90)+acc309(89)+acc309(51)+acc309(88)
      acc309(88)=QspQ*acc309(88)
      acc309(89)=Qspvak1k2*acc309(37)
      acc309(90)=Qspvak1k3*acc309(25)
      acc309(91)=Qspvak1l6*acc309(15)
      acc309(92)=Qspvak2l5*acc309(10)
      acc309(93)=Qspval5l6*acc309(61)
      acc309(94)=Qspvak7k2*acc309(80)
      acc309(95)=Qspvak7k3*acc309(72)
      acc309(96)=Qspvak7l6*acc309(54)
      acc309(97)=Qspvak2l6*acc309(38)
      acc309(98)=Qspvak2k3*acc309(39)
      acc309(99)=Qspvak2k1*acc309(43)
      acc309(100)=Qspvak2e7*acc309(20)
      brack=acc309(18)+acc309(82)+acc309(83)+acc309(84)+acc309(85)+acc309(86)+a&
      &cc309(87)+acc309(88)+acc309(89)+acc309(90)+acc309(91)+acc309(92)+acc309(&
      &93)+acc309(94)+acc309(95)+acc309(96)+acc309(97)+acc309(98)+acc309(99)+ac&
      &c309(100)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram309_sign, shift => diagram309_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd309h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d309
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d309 = 0.0_ki
      d309 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d309, ki), aimag(d309), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd309h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d309
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d309 = 0.0_ki
      d309 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d309, ki), aimag(d309), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d309h2l1