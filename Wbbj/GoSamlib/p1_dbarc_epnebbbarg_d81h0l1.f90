module     p1_dbarc_epnebbbarg_d81h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d81h0l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd81h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc81(94)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak1e7
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspk1 = dotproduct(Q,k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      acc81(1)=abb81(6)
      acc81(2)=abb81(7)
      acc81(3)=abb81(8)
      acc81(4)=abb81(9)
      acc81(5)=abb81(10)
      acc81(6)=abb81(11)
      acc81(7)=abb81(12)
      acc81(8)=abb81(13)
      acc81(9)=abb81(14)
      acc81(10)=abb81(15)
      acc81(11)=abb81(16)
      acc81(12)=abb81(17)
      acc81(13)=abb81(18)
      acc81(14)=abb81(19)
      acc81(15)=abb81(20)
      acc81(16)=abb81(21)
      acc81(17)=abb81(22)
      acc81(18)=abb81(23)
      acc81(19)=abb81(24)
      acc81(20)=abb81(25)
      acc81(21)=abb81(26)
      acc81(22)=abb81(27)
      acc81(23)=abb81(28)
      acc81(24)=abb81(29)
      acc81(25)=abb81(30)
      acc81(26)=abb81(31)
      acc81(27)=abb81(33)
      acc81(28)=abb81(34)
      acc81(29)=abb81(35)
      acc81(30)=abb81(36)
      acc81(31)=abb81(37)
      acc81(32)=abb81(38)
      acc81(33)=abb81(39)
      acc81(34)=abb81(40)
      acc81(35)=abb81(41)
      acc81(36)=abb81(42)
      acc81(37)=abb81(43)
      acc81(38)=abb81(44)
      acc81(39)=abb81(45)
      acc81(40)=abb81(46)
      acc81(41)=abb81(47)
      acc81(42)=abb81(48)
      acc81(43)=abb81(49)
      acc81(44)=abb81(50)
      acc81(45)=abb81(51)
      acc81(46)=abb81(52)
      acc81(47)=abb81(53)
      acc81(48)=abb81(54)
      acc81(49)=abb81(55)
      acc81(50)=abb81(56)
      acc81(51)=abb81(57)
      acc81(52)=abb81(58)
      acc81(53)=abb81(59)
      acc81(54)=abb81(60)
      acc81(55)=abb81(61)
      acc81(56)=abb81(63)
      acc81(57)=abb81(64)
      acc81(58)=abb81(65)
      acc81(59)=abb81(66)
      acc81(60)=abb81(67)
      acc81(61)=abb81(68)
      acc81(62)=abb81(69)
      acc81(63)=abb81(70)
      acc81(64)=abb81(71)
      acc81(65)=abb81(72)
      acc81(66)=abb81(74)
      acc81(67)=abb81(75)
      acc81(68)=abb81(76)
      acc81(69)=abb81(77)
      acc81(70)=abb81(78)
      acc81(71)=abb81(79)
      acc81(72)=abb81(80)
      acc81(73)=abb81(81)
      acc81(74)=abb81(82)
      acc81(75)=abb81(83)
      acc81(76)=abb81(84)
      acc81(77)=abb81(85)
      acc81(78)=abb81(86)
      acc81(79)=abb81(87)
      acc81(80)=abb81(88)
      acc81(81)=abb81(89)
      acc81(82)=abb81(90)
      acc81(83)=abb81(91)
      acc81(84)=Qspk4+Qspk3
      acc81(85)=acc81(84)+Qspk7
      acc81(86)=-acc81(41)*acc81(85)
      acc81(87)=Qspvak1k3*acc81(10)
      acc81(88)=Qspvak1k7*acc81(52)
      acc81(89)=Qspvak7k2*acc81(4)
      acc81(90)=Qspvak4k2*acc81(56)
      acc81(91)=QspQ*acc81(46)
      acc81(92)=Qspvak1k2*acc81(3)
      acc81(92)=acc81(44)+acc81(92)
      acc81(92)=Qspvak4k3*acc81(92)
      acc81(86)=acc81(92)+acc81(91)+acc81(90)+acc81(89)+acc81(88)+acc81(39)+acc&
      &81(87)+acc81(86)
      acc81(86)=Qspval5k2*acc81(86)
      acc81(87)=-acc81(45)*acc81(85)
      acc81(88)=Qspvak1k3*acc81(7)
      acc81(89)=Qspvak1k7*acc81(68)
      acc81(90)=Qspvak7k2*acc81(5)
      acc81(91)=Qspvak4k2*acc81(38)
      acc81(92)=QspQ*acc81(48)
      acc81(93)=Qspvak1k2*acc81(19)
      acc81(93)=acc81(71)+acc81(93)
      acc81(93)=Qspvak4k3*acc81(93)
      acc81(87)=acc81(93)+acc81(92)+acc81(91)+acc81(90)+acc81(89)+acc81(33)+acc&
      &81(88)+acc81(87)
      acc81(87)=Qspval6k2*acc81(87)
      acc81(88)=-Qspvak3k2*acc81(78)
      acc81(89)=Qspvak7k2*acc81(69)
      acc81(90)=Qspvak4k2*acc81(65)
      acc81(88)=acc81(90)+acc81(88)+acc81(89)
      acc81(88)=Qspvak4k3*acc81(88)
      acc81(89)=Qspvak1k3*acc81(83)
      acc81(90)=Qspvak1k7*acc81(29)
      acc81(91)=Qspk1*acc81(22)
      acc81(92)=Qspvak1k2*acc81(17)
      acc81(93)=Qspvak7k2*acc81(32)
      acc81(85)=acc81(76)*acc81(85)
      acc81(85)=acc81(72)+acc81(85)
      acc81(85)=Qspvak4k2*acc81(85)
      acc81(94)=-Qspvak4k2*acc81(78)
      acc81(94)=acc81(21)+acc81(94)
      acc81(94)=QspQ*acc81(94)
      acc81(85)=acc81(87)+acc81(86)+acc81(88)+acc81(94)+acc81(85)+acc81(93)+acc&
      &81(92)+acc81(91)+acc81(89)+acc81(90)
      acc81(85)=Qspe7*acc81(85)
      acc81(86)=Qspvae7k2*acc81(57)
      acc81(87)=Qspvak1e7*acc81(59)
      acc81(88)=Qspvak4k2*acc81(51)
      acc81(86)=acc81(88)+acc81(87)+acc81(15)+acc81(86)
      acc81(86)=QspQ*acc81(86)
      acc81(87)=Qspvae7k2*acc81(60)
      acc81(88)=Qspvak7k2*acc81(70)
      acc81(89)=Qspvak1e7*acc81(63)
      acc81(87)=acc81(89)+acc81(88)+acc81(16)+acc81(87)
      acc81(87)=Qspvak4k3*acc81(87)
      acc81(88)=Qspvae7k2*acc81(49)
      acc81(89)=Qspvak1e7*acc81(58)
      acc81(88)=acc81(89)+acc81(34)+acc81(88)
      acc81(88)=Qspk7*acc81(88)
      acc81(89)=-acc81(43)*acc81(84)
      acc81(90)=Qspvak3k2*acc81(28)
      acc81(91)=Qspvak1e7*acc81(9)
      acc81(92)=Qspk7*acc81(81)
      acc81(92)=acc81(79)+acc81(92)
      acc81(92)=Qspvak4k2*acc81(92)
      acc81(86)=acc81(87)+acc81(86)+acc81(92)+acc81(88)+acc81(91)+acc81(90)+acc&
      &81(89)
      acc81(86)=Qspval5k2*acc81(86)
      acc81(87)=Qspvae7k2*acc81(53)
      acc81(88)=Qspvak1e7*acc81(55)
      acc81(89)=Qspvak4k2*acc81(74)
      acc81(87)=acc81(89)+acc81(88)+acc81(35)+acc81(87)
      acc81(87)=QspQ*acc81(87)
      acc81(88)=Qspvae7k2*acc81(73)
      acc81(89)=Qspvak7k2*acc81(75)
      acc81(90)=Qspvak1e7*acc81(66)
      acc81(88)=acc81(90)+acc81(89)+acc81(13)+acc81(88)
      acc81(88)=Qspvak4k3*acc81(88)
      acc81(89)=Qspvae7k2*acc81(50)
      acc81(90)=Qspvak1e7*acc81(54)
      acc81(89)=acc81(90)+acc81(40)+acc81(89)
      acc81(89)=Qspk7*acc81(89)
      acc81(90)=acc81(47)*acc81(84)
      acc81(91)=Qspvak3k2*acc81(2)
      acc81(92)=Qspvak1e7*acc81(6)
      acc81(93)=Qspk7*acc81(82)
      acc81(93)=acc81(80)+acc81(93)
      acc81(93)=Qspvak4k2*acc81(93)
      acc81(87)=acc81(88)+acc81(87)+acc81(93)+acc81(89)+acc81(92)+acc81(91)+acc&
      &81(90)
      acc81(87)=Qspval6k2*acc81(87)
      acc81(88)=Qspk7+Qspk1
      acc81(88)=acc81(26)*acc81(88)
      acc81(89)=Qspvak1k2*acc81(8)
      acc81(90)=Qspvak7k2*acc81(36)
      acc81(91)=Qspvak1e7*acc81(31)
      acc81(92)=Qspvak4k2*acc81(1)
      acc81(93)=QspQ*acc81(23)
      acc81(88)=acc81(93)+acc81(92)+acc81(91)+acc81(90)+acc81(89)+acc81(12)+acc&
      &81(88)
      acc81(88)=QspQ*acc81(88)
      acc81(89)=Qspvak3k2*acc81(14)
      acc81(90)=Qspk1*acc81(62)
      acc81(91)=Qspvak1k2*acc81(25)
      acc81(92)=Qspvak1e7*acc81(67)
      acc81(93)=Qspvak4k2*acc81(61)
      acc81(94)=QspQ*acc81(64)
      acc81(89)=acc81(94)+acc81(93)+acc81(92)+acc81(91)+acc81(89)+acc81(90)
      acc81(89)=Qspvak4k3*acc81(89)
      acc81(90)=Qspk1*acc81(24)
      acc81(91)=Qspvak1k2*acc81(20)
      acc81(92)=Qspvak7k2*acc81(37)
      acc81(93)=Qspvak1e7*acc81(30)
      acc81(90)=acc81(93)+acc81(92)+acc81(90)+acc81(91)
      acc81(90)=Qspk7*acc81(90)
      acc81(84)=acc81(77)*acc81(84)
      acc81(91)=Qspk7*acc81(42)
      acc81(84)=acc81(91)+acc81(84)
      acc81(84)=Qspvak4k2*acc81(84)
      acc81(91)=Qspk1*acc81(18)
      acc81(92)=Qspvak1k2*acc81(11)
      acc81(93)=Qspvak1e7*acc81(27)
      brack=acc81(84)+acc81(85)+acc81(86)+acc81(87)+acc81(88)+acc81(89)+acc81(9&
      &0)+acc81(91)+acc81(92)+acc81(93)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram81_sign, shift => diagram81_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd81h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d81
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3-k7-k6-k5-k4
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d81 = 0.0_ki
      d81 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d81, ki), aimag(d81), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd81h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d81
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3-k7-k6-k5-k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d81 = 0.0_ki
      d81 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d81, ki), aimag(d81), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d81h0l1
