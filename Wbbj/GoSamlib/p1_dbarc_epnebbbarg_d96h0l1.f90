module     p1_dbarc_epnebbbarg_d96h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d96h0l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd96h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc96(94)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspe7
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspe7 = dotproduct(Q,e7)
      acc96(1)=abb96(9)
      acc96(2)=abb96(10)
      acc96(3)=abb96(11)
      acc96(4)=abb96(12)
      acc96(5)=abb96(13)
      acc96(6)=abb96(14)
      acc96(7)=abb96(15)
      acc96(8)=abb96(16)
      acc96(9)=abb96(17)
      acc96(10)=abb96(18)
      acc96(11)=abb96(19)
      acc96(12)=abb96(20)
      acc96(13)=abb96(21)
      acc96(14)=abb96(22)
      acc96(15)=abb96(23)
      acc96(16)=abb96(24)
      acc96(17)=abb96(25)
      acc96(18)=abb96(26)
      acc96(19)=abb96(27)
      acc96(20)=abb96(28)
      acc96(21)=abb96(29)
      acc96(22)=abb96(30)
      acc96(23)=abb96(31)
      acc96(24)=abb96(32)
      acc96(25)=abb96(33)
      acc96(26)=abb96(34)
      acc96(27)=abb96(35)
      acc96(28)=abb96(36)
      acc96(29)=abb96(37)
      acc96(30)=abb96(38)
      acc96(31)=abb96(39)
      acc96(32)=abb96(40)
      acc96(33)=abb96(41)
      acc96(34)=abb96(42)
      acc96(35)=abb96(43)
      acc96(36)=abb96(44)
      acc96(37)=abb96(45)
      acc96(38)=abb96(46)
      acc96(39)=abb96(47)
      acc96(40)=abb96(48)
      acc96(41)=abb96(49)
      acc96(42)=abb96(50)
      acc96(43)=abb96(51)
      acc96(44)=abb96(52)
      acc96(45)=abb96(53)
      acc96(46)=abb96(54)
      acc96(47)=abb96(55)
      acc96(48)=abb96(56)
      acc96(49)=abb96(57)
      acc96(50)=abb96(58)
      acc96(51)=abb96(59)
      acc96(52)=abb96(60)
      acc96(53)=abb96(61)
      acc96(54)=abb96(62)
      acc96(55)=abb96(63)
      acc96(56)=abb96(64)
      acc96(57)=abb96(65)
      acc96(58)=abb96(66)
      acc96(59)=abb96(67)
      acc96(60)=abb96(68)
      acc96(61)=abb96(69)
      acc96(62)=abb96(72)
      acc96(63)=abb96(73)
      acc96(64)=abb96(78)
      acc96(65)=abb96(80)
      acc96(66)=abb96(85)
      acc96(67)=abb96(87)
      acc96(68)=abb96(91)
      acc96(69)=abb96(92)
      acc96(70)=abb96(93)
      acc96(71)=abb96(95)
      acc96(72)=abb96(96)
      acc96(73)=abb96(109)
      acc96(74)=abb96(155)
      acc96(75)=abb96(162)
      acc96(76)=abb96(314)
      acc96(77)=abb96(318)
      acc96(78)=abb96(388)
      acc96(79)=Qspk4+Qspk3
      acc96(80)=acc96(34)*acc96(79)
      acc96(81)=Qspl6+Qspl5
      acc96(82)=-acc96(19)*acc96(81)
      acc96(83)=Qspvak1l5*acc96(41)
      acc96(84)=Qspvak1l6*acc96(38)
      acc96(85)=Qspvak1e7*acc96(65)
      acc96(86)=Qspvak1k3*acc96(42)
      acc96(87)=Qspk1*acc96(30)
      acc96(88)=Qspk7*acc96(18)
      acc96(89)=QspQ*acc96(63)
      acc96(90)=Qspvak1k2*acc96(61)
      acc96(91)=Qspvak4k2*acc96(6)
      acc96(92)=Qspvak4k3*acc96(26)
      acc96(93)=Qspk2*acc96(62)
      acc96(80)=acc96(93)+acc96(92)+acc96(91)+acc96(90)+acc96(89)+acc96(88)+acc&
      &96(87)+acc96(86)+acc96(85)+acc96(84)+acc96(24)+acc96(83)+acc96(82)+acc96&
      &(80)
      acc96(80)=Qspval5k2*acc96(80)
      acc96(82)=acc96(66)*acc96(79)
      acc96(83)=-acc96(33)*acc96(81)
      acc96(84)=Qspvak1l5*acc96(40)
      acc96(85)=Qspvak1l6*acc96(37)
      acc96(86)=Qspvak1e7*acc96(67)
      acc96(87)=Qspvak1k3*acc96(43)
      acc96(88)=Qspk1*acc96(48)
      acc96(89)=Qspk7*acc96(27)
      acc96(90)=QspQ*acc96(64)
      acc96(91)=Qspvak1k2*acc96(56)
      acc96(92)=Qspvak4k2*acc96(2)
      acc96(93)=Qspvak4k3*acc96(3)
      acc96(94)=Qspk2*acc96(45)
      acc96(82)=acc96(94)+acc96(93)+acc96(92)+acc96(91)+acc96(90)+acc96(89)+acc&
      &96(88)+acc96(87)+acc96(86)+acc96(85)+acc96(25)+acc96(84)+acc96(83)+acc96&
      &(82)
      acc96(82)=Qspval6k2*acc96(82)
      acc96(83)=Qspk2-acc96(79)
      acc96(84)=acc96(54)*acc96(83)
      acc96(85)=Qspvak1k3*acc96(47)
      acc96(86)=Qspvak1k2*acc96(59)
      acc96(87)=Qspvak4k2*acc96(10)
      acc96(88)=Qspvak4k3*acc96(39)
      acc96(84)=acc96(88)+acc96(87)+acc96(86)+acc96(29)+acc96(85)+acc96(84)
      acc96(84)=Qspval5k2*acc96(84)
      acc96(85)=acc96(75)*acc96(83)
      acc96(86)=Qspvak1k3*acc96(46)
      acc96(87)=Qspvak1k2*acc96(52)
      acc96(88)=Qspvak4k2*acc96(9)
      acc96(89)=Qspvak4k3*acc96(20)
      acc96(85)=acc96(89)+acc96(88)+acc96(87)+acc96(51)+acc96(86)+acc96(85)
      acc96(85)=Qspval6k2*acc96(85)
      acc96(86)=acc96(76)*acc96(79)
      acc96(87)=-acc96(58)*acc96(81)
      acc96(88)=Qspk1*acc96(44)
      acc96(89)=Qspk7*acc96(68)
      acc96(90)=QspQ*acc96(12)
      acc96(91)=Qspvak1k2*acc96(53)
      acc96(92)=Qspvak4k2*acc96(8)
      acc96(93)=Qspvak4k3*acc96(60)
      acc96(94)=Qspk2*acc96(21)
      acc96(84)=acc96(85)+acc96(84)+acc96(94)+acc96(93)+acc96(92)+acc96(91)+acc&
      &96(90)+acc96(89)+acc96(16)+acc96(88)+acc96(87)+acc96(86)
      acc96(84)=Qspe7*acc96(84)
      acc96(85)=Qspk1*acc96(55)
      acc96(86)=Qspk7*acc96(77)
      acc96(87)=QspQ*acc96(35)
      acc96(88)=Qspl5*acc96(78)
      acc96(89)=Qspl6*acc96(78)
      acc96(85)=-acc96(89)-acc96(85)+acc96(86)+acc96(87)-acc96(88)
      acc96(86)=acc96(74)-acc96(85)
      acc96(79)=acc96(86)*acc96(79)
      acc96(83)=acc96(71)*acc96(83)
      acc96(86)=Qspvak1k2*acc96(1)
      acc96(87)=Qspvak4k2*acc96(23)
      acc96(88)=Qspvak4k3*acc96(70)
      acc96(83)=acc96(88)+acc96(87)+acc96(86)+acc96(5)+acc96(83)+acc96(85)
      acc96(83)=Qspk2*acc96(83)
      acc96(85)=acc96(17)*acc96(81)
      acc96(86)=Qspk1*acc96(32)
      acc96(87)=Qspk7*acc96(15)
      acc96(88)=QspQ*acc96(31)
      acc96(85)=acc96(88)+acc96(87)+acc96(4)+acc96(86)+acc96(85)
      acc96(85)=Qspvak4k2*acc96(85)
      acc96(86)=-acc96(73)*acc96(81)
      acc96(87)=Qspk1*acc96(69)
      acc96(88)=Qspk7*acc96(72)
      acc96(89)=QspQ*acc96(22)
      acc96(86)=acc96(89)+acc96(88)+acc96(7)+acc96(87)+acc96(86)
      acc96(86)=Qspvak4k3*acc96(86)
      acc96(87)=acc96(57)*acc96(81)
      acc96(88)=QspQ*acc96(14)
      acc96(87)=acc96(50)+acc96(88)+acc96(87)
      acc96(87)=Qspvak1k2*acc96(87)
      acc96(81)=acc96(49)*acc96(81)
      acc96(88)=Qspk1*acc96(28)
      acc96(89)=Qspk7*acc96(36)
      acc96(90)=QspQ*acc96(11)
      brack=acc96(13)+acc96(79)+acc96(80)+acc96(81)+acc96(82)+acc96(83)+acc96(8&
      &4)+acc96(85)+acc96(86)+acc96(87)+acc96(88)+acc96(89)+acc96(90)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram96_sign, shift => diagram96_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd96h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d96
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d96 = 0.0_ki
      d96 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d96, ki), aimag(d96), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd96h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d96
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d96 = 0.0_ki
      d96 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d96, ki), aimag(d96), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d96h0l1