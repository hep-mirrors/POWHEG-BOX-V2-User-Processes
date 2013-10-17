module     p0_dbaru_epnebbbarg_d313h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d313h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd313h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc313(87)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak3l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak3e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6e7
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak3l5 = dotproduct(Q,spvak3l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak3e7 = dotproduct(Q,spvak3e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      acc313(1)=abb313(8)
      acc313(2)=abb313(9)
      acc313(3)=abb313(10)
      acc313(4)=abb313(11)
      acc313(5)=abb313(12)
      acc313(6)=abb313(13)
      acc313(7)=abb313(14)
      acc313(8)=abb313(15)
      acc313(9)=abb313(16)
      acc313(10)=abb313(17)
      acc313(11)=abb313(18)
      acc313(12)=abb313(19)
      acc313(13)=abb313(20)
      acc313(14)=abb313(21)
      acc313(15)=abb313(22)
      acc313(16)=abb313(23)
      acc313(17)=abb313(24)
      acc313(18)=abb313(25)
      acc313(19)=abb313(26)
      acc313(20)=abb313(27)
      acc313(21)=abb313(28)
      acc313(22)=abb313(29)
      acc313(23)=abb313(30)
      acc313(24)=abb313(31)
      acc313(25)=abb313(32)
      acc313(26)=abb313(33)
      acc313(27)=abb313(34)
      acc313(28)=abb313(35)
      acc313(29)=abb313(36)
      acc313(30)=abb313(37)
      acc313(31)=abb313(38)
      acc313(32)=abb313(39)
      acc313(33)=abb313(40)
      acc313(34)=abb313(41)
      acc313(35)=abb313(42)
      acc313(36)=abb313(44)
      acc313(37)=abb313(45)
      acc313(38)=abb313(46)
      acc313(39)=abb313(48)
      acc313(40)=abb313(50)
      acc313(41)=abb313(52)
      acc313(42)=abb313(53)
      acc313(43)=abb313(55)
      acc313(44)=abb313(56)
      acc313(45)=abb313(57)
      acc313(46)=abb313(58)
      acc313(47)=abb313(59)
      acc313(48)=abb313(61)
      acc313(49)=abb313(64)
      acc313(50)=abb313(65)
      acc313(51)=abb313(70)
      acc313(52)=abb313(74)
      acc313(53)=abb313(75)
      acc313(54)=abb313(76)
      acc313(55)=abb313(77)
      acc313(56)=abb313(78)
      acc313(57)=abb313(82)
      acc313(58)=abb313(84)
      acc313(59)=abb313(91)
      acc313(60)=abb313(92)
      acc313(61)=abb313(96)
      acc313(62)=abb313(99)
      acc313(63)=abb313(100)
      acc313(64)=abb313(101)
      acc313(65)=abb313(104)
      acc313(66)=abb313(105)
      acc313(67)=abb313(106)
      acc313(68)=abb313(108)
      acc313(69)=abb313(109)
      acc313(70)=Qspk4+Qspk3
      acc313(71)=acc313(24)*acc313(70)
      acc313(72)=acc313(23)*Qspvak2l5
      acc313(73)=Qspvak4l5*acc313(1)
      acc313(74)=Qspval6l5*acc313(40)
      acc313(75)=Qspvak4k3*acc313(42)
      acc313(76)=Qspvak4k2*acc313(12)
      acc313(71)=acc313(76)+acc313(75)+acc313(74)+acc313(73)+acc313(8)+acc313(7&
      &2)+acc313(71)
      acc313(71)=Qspvak4k2*acc313(71)
      acc313(72)=Qspvak3k2*acc313(46)
      acc313(73)=-acc313(23)*Qspvak3l5
      acc313(74)=Qspvak4l5*acc313(63)
      acc313(75)=Qspval6l5*acc313(65)
      acc313(72)=acc313(75)+acc313(74)+acc313(73)+acc313(34)+acc313(72)
      acc313(72)=Qspvak4k3*acc313(72)
      acc313(73)=Qspvak4l5*acc313(49)
      acc313(74)=Qspval6l5*acc313(55)
      acc313(73)=acc313(73)-acc313(74)
      acc313(74)=acc313(73)-acc313(64)
      acc313(74)=acc313(74)*acc313(70)
      acc313(73)=acc313(37)-acc313(73)
      acc313(73)=Qspk2*acc313(73)
      acc313(75)=Qspvak1k2*acc313(2)
      acc313(76)=Qspvak1k3*acc313(9)
      acc313(77)=Qspvak2k3*acc313(21)
      acc313(78)=Qspval5k2*acc313(28)
      acc313(79)=Qspval5k3*acc313(32)
      acc313(80)=Qspval6k2*acc313(16)
      acc313(81)=Qspval6k3*acc313(3)
      acc313(82)=Qspval6k7*acc313(35)
      acc313(83)=Qspvak7k2*acc313(50)
      acc313(84)=QspQ*acc313(5)
      acc313(71)=acc313(71)+acc313(72)+acc313(84)+acc313(83)+acc313(82)+acc313(&
      &81)+acc313(80)+acc313(79)+acc313(78)+acc313(77)+acc313(76)+acc313(4)+acc&
      &313(75)+acc313(73)+acc313(74)
      acc313(71)=Qspe7*acc313(71)
      acc313(72)=acc313(19)*acc313(70)
      acc313(73)=acc313(56)*Qspvak2e7
      acc313(74)=-acc313(45)*Qspvak2l5
      acc313(75)=Qspvak4e7*acc313(30)
      acc313(76)=Qspk7*acc313(20)
      acc313(77)=QspQ*acc313(15)
      acc313(78)=Qspvak4l5*acc313(38)
      acc313(79)=Qspval6l5*acc313(31)
      acc313(80)=Qspvak4k3*acc313(11)
      acc313(81)=Qspvak4k2*acc313(7)
      acc313(72)=acc313(81)+acc313(80)+acc313(79)+acc313(78)+acc313(77)+acc313(&
      &76)+acc313(75)+acc313(74)+acc313(14)+acc313(73)+acc313(72)
      acc313(72)=Qspvak4k2*acc313(72)
      acc313(73)=Qspvak3k2*acc313(18)
      acc313(74)=-acc313(56)*Qspvak3e7
      acc313(75)=acc313(45)*Qspvak3l5
      acc313(76)=Qspvak4e7*acc313(59)
      acc313(77)=Qspk7*acc313(51)
      acc313(78)=QspQ*acc313(44)
      acc313(79)=Qspvak4l5*acc313(61)
      acc313(80)=Qspval6l5*acc313(43)
      acc313(73)=acc313(80)+acc313(79)+acc313(78)+acc313(77)+acc313(76)+acc313(&
      &75)+acc313(74)+acc313(47)+acc313(73)
      acc313(73)=Qspvak4k3*acc313(73)
      acc313(74)=Qspvak4e7*acc313(60)
      acc313(75)=Qspk7*acc313(67)
      acc313(76)=QspQ*acc313(36)
      acc313(77)=Qspvak4l5*acc313(39)
      acc313(78)=Qspval6l5*acc313(52)
      acc313(74)=-acc313(77)+acc313(78)-acc313(76)+acc313(74)+acc313(75)
      acc313(75)=acc313(54)-acc313(74)
      acc313(70)=-acc313(75)*acc313(70)
      acc313(74)=acc313(41)-acc313(74)
      acc313(74)=Qspk2*acc313(74)
      acc313(75)=Qspvae7k2*acc313(68)
      acc313(76)=Qspval6e7*acc313(58)
      acc313(75)=acc313(76)+acc313(25)+acc313(75)
      acc313(75)=Qspk7*acc313(75)
      acc313(76)=Qspvae7k2*acc313(62)
      acc313(77)=Qspval6e7*acc313(57)
      acc313(76)=acc313(77)+acc313(10)+acc313(76)
      acc313(76)=QspQ*acc313(76)
      acc313(77)=Qspvak1k2*acc313(29)
      acc313(78)=Qspvak1k3*acc313(26)
      acc313(79)=Qspvak2k3*acc313(13)
      acc313(80)=Qspval5k2*acc313(22)
      acc313(81)=Qspval5k3*acc313(27)
      acc313(82)=Qspval6k2*acc313(17)
      acc313(83)=Qspval6k3*acc313(69)
      acc313(84)=Qspval6k7*acc313(33)
      acc313(85)=Qspvak7k2*acc313(48)
      acc313(86)=Qspvae7k2*acc313(66)
      acc313(87)=Qspval6e7*acc313(53)
      brack=acc313(6)+acc313(70)+acc313(71)+acc313(72)+acc313(73)+acc313(74)+ac&
      &c313(75)+acc313(76)+acc313(77)+acc313(78)+acc313(79)+acc313(80)+acc313(8&
      &1)+acc313(82)+acc313(83)+acc313(84)+acc313(85)+acc313(86)+acc313(87)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram313_sign, shift => diagram313_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd313h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d313
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d313 = 0.0_ki
      d313 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d313, ki), aimag(d313), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd313h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d313
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d313 = 0.0_ki
      d313 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d313, ki), aimag(d313), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d313h1l1