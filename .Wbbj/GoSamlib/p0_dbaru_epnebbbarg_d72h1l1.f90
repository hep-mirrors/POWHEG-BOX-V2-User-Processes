module     p0_dbaru_epnebbbarg_d72h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d72h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd72h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc72(108)
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspval6k4
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvae7k3
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak4k2
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspval6k4 = dotproduct(Q,spval6k4)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      QspQ = dotproduct(Q,Q)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      acc72(1)=abb72(8)
      acc72(2)=abb72(9)
      acc72(3)=abb72(10)
      acc72(4)=abb72(11)
      acc72(5)=abb72(12)
      acc72(6)=abb72(13)
      acc72(7)=abb72(14)
      acc72(8)=abb72(15)
      acc72(9)=abb72(17)
      acc72(10)=abb72(18)
      acc72(11)=abb72(19)
      acc72(12)=abb72(20)
      acc72(13)=abb72(21)
      acc72(14)=abb72(22)
      acc72(15)=abb72(23)
      acc72(16)=abb72(24)
      acc72(17)=abb72(25)
      acc72(18)=abb72(26)
      acc72(19)=abb72(27)
      acc72(20)=abb72(30)
      acc72(21)=abb72(31)
      acc72(22)=abb72(32)
      acc72(23)=abb72(33)
      acc72(24)=abb72(34)
      acc72(25)=abb72(35)
      acc72(26)=abb72(36)
      acc72(27)=abb72(38)
      acc72(28)=abb72(40)
      acc72(29)=abb72(42)
      acc72(30)=abb72(44)
      acc72(31)=abb72(45)
      acc72(32)=abb72(46)
      acc72(33)=abb72(47)
      acc72(34)=abb72(48)
      acc72(35)=abb72(50)
      acc72(36)=abb72(51)
      acc72(37)=abb72(53)
      acc72(38)=abb72(54)
      acc72(39)=abb72(55)
      acc72(40)=abb72(56)
      acc72(41)=abb72(57)
      acc72(42)=abb72(58)
      acc72(43)=abb72(59)
      acc72(44)=abb72(61)
      acc72(45)=abb72(62)
      acc72(46)=abb72(63)
      acc72(47)=abb72(64)
      acc72(48)=abb72(65)
      acc72(49)=abb72(68)
      acc72(50)=abb72(70)
      acc72(51)=abb72(71)
      acc72(52)=abb72(72)
      acc72(53)=abb72(73)
      acc72(54)=abb72(74)
      acc72(55)=abb72(75)
      acc72(56)=abb72(76)
      acc72(57)=abb72(77)
      acc72(58)=abb72(78)
      acc72(59)=abb72(79)
      acc72(60)=abb72(80)
      acc72(61)=abb72(81)
      acc72(62)=abb72(82)
      acc72(63)=abb72(83)
      acc72(64)=abb72(84)
      acc72(65)=abb72(85)
      acc72(66)=abb72(86)
      acc72(67)=abb72(89)
      acc72(68)=abb72(90)
      acc72(69)=abb72(99)
      acc72(70)=abb72(103)
      acc72(71)=abb72(105)
      acc72(72)=abb72(111)
      acc72(73)=abb72(113)
      acc72(74)=abb72(115)
      acc72(75)=abb72(116)
      acc72(76)=abb72(117)
      acc72(77)=Qspval5k2*acc72(4)
      acc72(78)=Qspvak7k2*acc72(1)
      acc72(79)=Qspvae7k2*acc72(13)
      acc72(80)=-Qspval6l5*acc72(61)
      acc72(81)=Qspval6k7*acc72(64)
      acc72(82)=-Qspval6e7*acc72(28)
      acc72(77)=acc72(82)+acc72(81)+acc72(80)+acc72(79)+acc72(78)+acc72(10)+acc&
      &72(77)
      acc72(77)=Qspvak1k2*acc72(77)
      acc72(78)=Qspvak1l5*acc72(61)
      acc72(79)=-Qspvak1k7*acc72(64)
      acc72(80)=Qspvak1e7*acc72(28)
      acc72(78)=acc72(80)+acc72(79)+acc72(24)+acc72(78)
      acc72(78)=Qspval6k2*acc72(78)
      acc72(79)=Qspk2*acc72(14)
      acc72(80)=-acc72(66)*Qspvak1k4
      acc72(81)=-acc72(46)*Qspval6k4
      acc72(82)=Qspval5k2*acc72(9)
      acc72(83)=Qspvak7k2*acc72(7)
      acc72(84)=Qspvae7k2*acc72(19)
      acc72(85)=Qspval6l5*acc72(20)
      acc72(86)=Qspval6k7*acc72(21)
      acc72(87)=Qspval6e7*acc72(18)
      acc72(88)=Qspk1*acc72(17)
      acc72(89)=Qspvak1k3*acc72(38)
      acc72(90)=Qspval6k3*acc72(23)
      acc72(77)=acc72(77)+acc72(90)+acc72(89)+acc72(88)+acc72(78)+acc72(87)+acc&
      &72(86)+acc72(85)+acc72(84)+acc72(83)+acc72(82)+acc72(81)+acc72(80)+acc72&
      &(2)+acc72(79)
      acc72(77)=Qspvak4k3*acc72(77)
      acc72(78)=Qspk4+Qspk3
      acc72(79)=acc72(78)-Qspk1
      acc72(80)=-acc72(57)*acc72(79)
      acc72(81)=Qspval5k1*acc72(31)
      acc72(82)=Qspval5k3*acc72(40)
      acc72(83)=Qspvak7k1*acc72(36)
      acc72(84)=Qspvak7k3*acc72(68)
      acc72(85)=Qspvae7k1*acc72(67)
      acc72(86)=Qspvae7k3*acc72(29)
      acc72(87)=QspQ*acc72(45)
      acc72(88)=Qspval5k2*acc72(32)
      acc72(89)=Qspvak7k2*acc72(44)
      acc72(90)=Qspvae7k2*acc72(22)
      acc72(91)=Qspval6k1*acc72(39)
      acc72(92)=Qspval6k3*acc72(25)
      acc72(80)=acc72(92)+acc72(91)+acc72(90)+acc72(89)+acc72(88)+acc72(87)+acc&
      &72(86)+acc72(85)+acc72(84)+acc72(83)+acc72(82)+acc72(6)+acc72(81)+acc72(&
      &80)
      acc72(80)=Qspvak1k2*acc72(80)
      acc72(81)=acc72(65)*acc72(79)
      acc72(82)=QspQ*acc72(66)
      acc72(83)=Qspval6l5*acc72(49)
      acc72(84)=-Qspval6k7*acc72(52)
      acc72(85)=Qspval6e7*acc72(76)
      acc72(86)=-Qspval6k2*acc72(25)
      acc72(81)=acc72(86)+acc72(85)+acc72(84)+acc72(83)+acc72(82)+acc72(81)
      acc72(81)=Qspvak1k3*acc72(81)
      acc72(79)=acc72(75)*acc72(79)
      acc72(82)=QspQ*acc72(46)
      acc72(83)=-Qspvak1l5*acc72(49)
      acc72(84)=Qspvak1k7*acc72(52)
      acc72(85)=-Qspvak1e7*acc72(76)
      acc72(79)=acc72(85)+acc72(84)+acc72(83)+acc72(82)+acc72(79)
      acc72(79)=Qspval6k3*acc72(79)
      acc72(82)=Qspval6l5*acc72(73)
      acc72(83)=Qspval6k7*acc72(74)
      acc72(84)=Qspval6e7*acc72(62)
      acc72(85)=Qspval6k2*acc72(50)
      acc72(82)=acc72(85)+acc72(84)+acc72(83)+acc72(51)+acc72(82)
      acc72(82)=Qspk1*acc72(82)
      acc72(83)=Qspvak1l5*acc72(53)
      acc72(84)=Qspvak1k7*acc72(54)
      acc72(85)=Qspvak1e7*acc72(42)
      acc72(83)=acc72(85)+acc72(84)+acc72(30)+acc72(83)
      acc72(83)=Qspval6k1*acc72(83)
      acc72(78)=acc72(47)*acc72(78)
      acc72(84)=acc72(70)*Qspvak7l6
      acc72(85)=acc72(58)*Qspval5l6
      acc72(86)=acc72(55)*Qspvak2e7
      acc72(87)=acc72(41)*Qspvak2k7
      acc72(88)=acc72(33)*Qspvak2l5
      acc72(89)=acc72(27)*Qspvae7l6
      acc72(90)=acc72(26)*Qspvak4k2
      acc72(91)=Qspk2*acc72(34)
      acc72(92)=Qspval5k1*acc72(5)
      acc72(93)=Qspval5k3*acc72(16)
      acc72(94)=Qspvak7k1*acc72(59)
      acc72(95)=Qspvak7k3*acc72(8)
      acc72(96)=Qspvae7k1*acc72(56)
      acc72(97)=Qspvae7k3*acc72(63)
      acc72(98)=QspQ*acc72(35)
      acc72(99)=Qspvak1l5*acc72(43)
      acc72(100)=Qspvak1k7*acc72(37)
      acc72(101)=Qspval5k2*acc72(11)
      acc72(102)=Qspvak7k2*acc72(3)
      acc72(103)=Qspvak1e7*acc72(71)
      acc72(104)=Qspvae7k2*acc72(69)
      acc72(105)=Qspval6l5*acc72(15)
      acc72(106)=Qspval6k7*acc72(72)
      acc72(107)=Qspval6e7*acc72(60)
      acc72(108)=Qspval6k2*acc72(48)
      brack=acc72(12)+acc72(77)+acc72(78)+acc72(79)+acc72(80)+acc72(81)+acc72(8&
      &2)+acc72(83)+acc72(84)+acc72(85)+acc72(86)+acc72(87)+acc72(88)+acc72(89)&
      &+acc72(90)+acc72(91)+acc72(92)+acc72(93)+acc72(94)+acc72(95)+acc72(96)+a&
      &cc72(97)+acc72(98)+acc72(99)+acc72(100)+acc72(101)+acc72(102)+acc72(103)&
      &+acc72(104)+acc72(105)+acc72(106)+acc72(107)+acc72(108)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram72_sign, shift => diagram72_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd72h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d72
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d72 = 0.0_ki
      d72 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d72, ki), aimag(d72), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd72h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d72
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d72 = 0.0_ki
      d72 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d72, ki), aimag(d72), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d72h1l1
