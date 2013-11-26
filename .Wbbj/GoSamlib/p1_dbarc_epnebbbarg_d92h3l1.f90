module     p1_dbarc_epnebbbarg_d92h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d92h3l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd92h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc92(101)
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      acc92(1)=abb92(11)
      acc92(2)=abb92(12)
      acc92(3)=abb92(13)
      acc92(4)=abb92(14)
      acc92(5)=abb92(15)
      acc92(6)=abb92(16)
      acc92(7)=abb92(17)
      acc92(8)=abb92(18)
      acc92(9)=abb92(19)
      acc92(10)=abb92(20)
      acc92(11)=abb92(21)
      acc92(12)=abb92(22)
      acc92(13)=abb92(23)
      acc92(14)=abb92(24)
      acc92(15)=abb92(25)
      acc92(16)=abb92(26)
      acc92(17)=abb92(27)
      acc92(18)=abb92(28)
      acc92(19)=abb92(29)
      acc92(20)=abb92(30)
      acc92(21)=abb92(31)
      acc92(22)=abb92(32)
      acc92(23)=abb92(33)
      acc92(24)=abb92(34)
      acc92(25)=abb92(35)
      acc92(26)=abb92(36)
      acc92(27)=abb92(37)
      acc92(28)=abb92(38)
      acc92(29)=abb92(39)
      acc92(30)=abb92(40)
      acc92(31)=abb92(41)
      acc92(32)=abb92(42)
      acc92(33)=abb92(43)
      acc92(34)=abb92(44)
      acc92(35)=abb92(45)
      acc92(36)=abb92(46)
      acc92(37)=abb92(47)
      acc92(38)=abb92(50)
      acc92(39)=abb92(51)
      acc92(40)=abb92(52)
      acc92(41)=abb92(54)
      acc92(42)=abb92(55)
      acc92(43)=abb92(56)
      acc92(44)=abb92(57)
      acc92(45)=abb92(58)
      acc92(46)=abb92(59)
      acc92(47)=abb92(60)
      acc92(48)=abb92(61)
      acc92(49)=abb92(62)
      acc92(50)=abb92(63)
      acc92(51)=abb92(64)
      acc92(52)=abb92(65)
      acc92(53)=abb92(67)
      acc92(54)=abb92(72)
      acc92(55)=abb92(76)
      acc92(56)=abb92(81)
      acc92(57)=abb92(82)
      acc92(58)=abb92(87)
      acc92(59)=abb92(94)
      acc92(60)=abb92(105)
      acc92(61)=abb92(108)
      acc92(62)=abb92(113)
      acc92(63)=abb92(117)
      acc92(64)=abb92(118)
      acc92(65)=abb92(129)
      acc92(66)=abb92(136)
      acc92(67)=abb92(139)
      acc92(68)=abb92(150)
      acc92(69)=abb92(172)
      acc92(70)=abb92(177)
      acc92(71)=abb92(186)
      acc92(72)=abb92(190)
      acc92(73)=abb92(195)
      acc92(74)=abb92(197)
      acc92(75)=abb92(199)
      acc92(76)=abb92(200)
      acc92(77)=abb92(202)
      acc92(78)=abb92(208)
      acc92(79)=abb92(211)
      acc92(80)=abb92(213)
      acc92(81)=abb92(219)
      acc92(82)=abb92(226)
      acc92(83)=abb92(231)
      acc92(84)=acc92(8)*Qspvak2l6
      acc92(85)=acc92(9)*Qspvak2l5
      acc92(86)=acc92(12)*Qspl6
      acc92(87)=acc92(20)*Qspl5
      acc92(88)=acc92(28)*Qspvak1l5
      acc92(89)=acc92(29)*Qspvak1l6
      acc92(90)=acc92(40)*Qspvae7l6
      acc92(91)=acc92(53)*Qspvak4l5
      acc92(92)=acc92(56)*Qspvae7l5
      acc92(93)=acc92(59)*Qspvak4l6
      acc92(94)=acc92(65)*Qspval5l6
      acc92(95)=acc92(68)*Qspval6l5
      acc92(84)=acc92(95)+acc92(94)+acc92(93)+acc92(92)+acc92(91)+acc92(90)+acc&
      &92(89)+acc92(88)+acc92(87)+acc92(86)+acc92(85)+acc92(84)+acc92(3)
      acc92(84)=Qspk2*acc92(84)
      acc92(85)=acc92(37)*Qspvak1l5
      acc92(86)=acc92(43)*Qspvak1l6
      acc92(87)=acc92(44)*Qspvak2l6
      acc92(88)=acc92(50)*Qspvak2l5
      acc92(89)=-acc92(71)*Qspval6l5
      acc92(90)=-acc92(74)*Qspval5l6
      acc92(91)=-acc92(82)*Qspl6
      acc92(92)=-acc92(83)*Qspl5
      acc92(85)=acc92(92)+acc92(91)+acc92(90)+acc92(88)+acc92(87)+acc92(86)+acc&
      &92(85)+acc92(89)-acc92(60)
      acc92(86)=Qspk3+Qspk4
      acc92(85)=acc92(86)*acc92(85)
      acc92(86)=acc92(14)*Qspvak2l6
      acc92(87)=acc92(19)*Qspvak2l5
      acc92(88)=acc92(39)*Qspvak1l5
      acc92(89)=acc92(51)*Qspvak1l6
      acc92(90)=acc92(57)*Qspl6
      acc92(91)=acc92(62)*Qspl5
      acc92(92)=acc92(72)*Qspval6l5
      acc92(93)=acc92(75)*Qspval5l6
      acc92(86)=acc92(93)+acc92(92)+acc92(91)+acc92(90)+acc92(89)+acc92(88)+acc&
      &92(27)+acc92(87)+acc92(86)
      acc92(86)=Qspvae7k2*acc92(86)
      acc92(87)=acc92(6)*Qspl6
      acc92(88)=acc92(7)*Qspvak1l5
      acc92(89)=acc92(13)*Qspl5
      acc92(90)=acc92(21)*Qspvak2l5
      acc92(91)=acc92(22)*Qspvak2l6
      acc92(92)=acc92(32)*Qspval6l5
      acc92(93)=acc92(52)*Qspvak1l6
      acc92(94)=acc92(63)*Qspval5l6
      acc92(87)=acc92(94)+acc92(93)+acc92(92)+acc92(91)+acc92(90)+acc92(89)+acc&
      &92(88)+acc92(87)+acc92(4)
      acc92(87)=Qspvak4k3*acc92(87)
      acc92(88)=acc92(5)*Qspvak1l5
      acc92(89)=acc92(16)*Qspvak2l5
      acc92(90)=acc92(23)*Qspvak1l6
      acc92(91)=acc92(35)*Qspl6
      acc92(92)=acc92(38)*Qspvak2l6
      acc92(93)=acc92(46)*Qspl5
      acc92(94)=acc92(47)*Qspval6l5
      acc92(95)=acc92(61)*Qspval5l6
      acc92(88)=acc92(95)+acc92(94)+acc92(93)+acc92(92)+acc92(91)+acc92(90)+acc&
      &92(89)+acc92(88)+acc92(1)
      acc92(88)=Qspvak4k2*acc92(88)
      acc92(89)=acc92(11)*Qspvak2l5
      acc92(90)=acc92(17)*Qspvak1l5
      acc92(91)=acc92(25)*Qspvak1l6
      acc92(92)=acc92(30)*Qspvak2l6
      acc92(93)=acc92(58)*Qspval5l6
      acc92(94)=acc92(67)*Qspval6l5
      acc92(95)=acc92(69)*Qspl5
      acc92(96)=acc92(79)*Qspl6
      acc92(89)=acc92(96)+acc92(95)+acc92(94)+acc92(66)+acc92(93)+acc92(92)+acc&
      &92(91)+acc92(90)+acc92(89)
      acc92(89)=Qspe7*acc92(89)
      acc92(90)=acc92(31)*Qspvak1l5
      acc92(91)=acc92(34)*Qspvak1l6
      acc92(92)=acc92(41)*Qspvak2l5
      acc92(93)=acc92(55)*Qspvak2l6
      acc92(94)=acc92(70)*Qspval6l5
      acc92(95)=acc92(73)*Qspval5l6
      acc92(96)=acc92(80)*Qspl6
      acc92(97)=acc92(81)*Qspl5
      acc92(90)=acc92(97)+acc92(96)+acc92(76)+acc92(95)+acc92(94)+acc92(93)+acc&
      &92(92)+acc92(91)+acc92(90)
      acc92(90)=Qspk7*acc92(90)
      acc92(91)=acc92(15)*Qspvae7l5
      acc92(92)=acc92(42)*Qspvak2l5
      acc92(93)=-acc92(54)*Qspvae7l6
      acc92(94)=-acc92(64)*Qspvak4l5
      acc92(95)=acc92(77)*Qspvak4l6
      acc92(91)=acc92(92)+acc92(95)+acc92(94)+acc92(93)+acc92(91)
      acc92(92)=Qspl5+Qspl6
      acc92(93)=acc92(92)-Qspk1
      acc92(91)=acc92(93)*acc92(91)
      acc92(92)=acc92(78)*acc92(92)
      acc92(93)=acc92(2)*Qspvak1l6
      acc92(94)=acc92(10)*Qspvak2l5
      acc92(95)=acc92(33)*Qspvak1l5
      acc92(96)=acc92(36)*Qspval5l6
      acc92(97)=acc92(45)*Qspvak2l6
      acc92(98)=acc92(48)*Qspk1
      acc92(99)=Qspvak2k1*acc92(26)
      acc92(100)=Qspvak1k2*acc92(24)
      acc92(101)=QspQ*acc92(49)
      brack=acc92(18)+acc92(84)+acc92(85)+acc92(86)+acc92(87)+acc92(88)+acc92(8&
      &9)+acc92(90)+acc92(91)+acc92(92)+acc92(93)+acc92(94)+acc92(95)+acc92(96)&
      &+acc92(97)+acc92(98)+acc92(99)+acc92(100)+acc92(101)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram92_sign, shift => diagram92_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd92h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d92
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d92 = 0.0_ki
      d92 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d92, ki), aimag(d92), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd92h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d92
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d92 = 0.0_ki
      d92 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d92, ki), aimag(d92), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d92h3l1
