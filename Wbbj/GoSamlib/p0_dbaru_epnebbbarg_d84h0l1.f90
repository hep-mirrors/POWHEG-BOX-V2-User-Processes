module     p0_dbaru_epnebbbarg_d84h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d84h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd84h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc84(89)
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspk2
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspk2 = dotproduct(Q,k2)
      acc84(1)=abb84(5)
      acc84(2)=abb84(6)
      acc84(3)=abb84(7)
      acc84(4)=abb84(8)
      acc84(5)=abb84(9)
      acc84(6)=abb84(10)
      acc84(7)=abb84(11)
      acc84(8)=abb84(12)
      acc84(9)=abb84(13)
      acc84(10)=abb84(14)
      acc84(11)=abb84(15)
      acc84(12)=abb84(16)
      acc84(13)=abb84(17)
      acc84(14)=abb84(18)
      acc84(15)=abb84(19)
      acc84(16)=abb84(20)
      acc84(17)=abb84(21)
      acc84(18)=abb84(22)
      acc84(19)=abb84(23)
      acc84(20)=abb84(24)
      acc84(21)=abb84(25)
      acc84(22)=abb84(26)
      acc84(23)=abb84(27)
      acc84(24)=abb84(28)
      acc84(25)=abb84(29)
      acc84(26)=abb84(30)
      acc84(27)=abb84(31)
      acc84(28)=abb84(32)
      acc84(29)=abb84(33)
      acc84(30)=abb84(34)
      acc84(31)=abb84(35)
      acc84(32)=abb84(36)
      acc84(33)=abb84(38)
      acc84(34)=abb84(39)
      acc84(35)=abb84(40)
      acc84(36)=abb84(41)
      acc84(37)=abb84(42)
      acc84(38)=abb84(43)
      acc84(39)=abb84(44)
      acc84(40)=abb84(45)
      acc84(41)=abb84(46)
      acc84(42)=abb84(47)
      acc84(43)=abb84(48)
      acc84(44)=abb84(49)
      acc84(45)=abb84(50)
      acc84(46)=abb84(51)
      acc84(47)=abb84(52)
      acc84(48)=abb84(53)
      acc84(49)=abb84(54)
      acc84(50)=abb84(55)
      acc84(51)=abb84(56)
      acc84(52)=abb84(57)
      acc84(53)=abb84(58)
      acc84(54)=abb84(59)
      acc84(55)=abb84(60)
      acc84(56)=abb84(61)
      acc84(57)=abb84(62)
      acc84(58)=abb84(63)
      acc84(59)=abb84(64)
      acc84(60)=abb84(65)
      acc84(61)=abb84(66)
      acc84(62)=abb84(67)
      acc84(63)=abb84(68)
      acc84(64)=abb84(69)
      acc84(65)=abb84(70)
      acc84(66)=abb84(71)
      acc84(67)=abb84(72)
      acc84(68)=abb84(73)
      acc84(69)=abb84(74)
      acc84(70)=abb84(75)
      acc84(71)=abb84(76)
      acc84(72)=abb84(77)
      acc84(73)=abb84(78)
      acc84(74)=abb84(79)
      acc84(75)=abb84(80)
      acc84(76)=abb84(81)
      acc84(77)=abb84(87)
      acc84(78)=-acc84(65)*Qspvak3k2
      acc84(79)=Qspvak1k2*acc84(26)
      acc84(80)=Qspvak4k2*acc84(76)
      acc84(81)=Qspvak7k2*acc84(12)
      acc84(82)=Qspvak1k2*acc84(1)
      acc84(82)=acc84(16)+acc84(82)
      acc84(82)=Qspval5k2*acc84(82)
      acc84(83)=Qspvak1k2*acc84(2)
      acc84(83)=acc84(13)+acc84(83)
      acc84(83)=Qspval6k2*acc84(83)
      acc84(78)=acc84(83)+acc84(82)+acc84(81)+acc84(80)+acc84(79)+acc84(14)+acc&
      &84(78)
      acc84(78)=Qspvak4k3*acc84(78)
      acc84(79)=Qspk4+Qspk3
      acc84(80)=-acc84(59)*acc84(79)
      acc84(81)=Qspvak1k3*acc84(21)
      acc84(82)=Qspvak1k2*acc84(57)
      acc84(83)=Qspk1*acc84(63)
      acc84(84)=QspQ*acc84(28)
      acc84(80)=acc84(84)+acc84(83)+acc84(82)+acc84(22)+acc84(81)+acc84(80)
      acc84(80)=Qspval5k2*acc84(80)
      acc84(81)=-acc84(60)*acc84(79)
      acc84(82)=Qspvak1k3*acc84(35)
      acc84(83)=Qspvak1k2*acc84(38)
      acc84(84)=Qspk1*acc84(67)
      acc84(85)=QspQ*acc84(23)
      acc84(81)=acc84(85)+acc84(84)+acc84(83)+acc84(24)+acc84(82)+acc84(81)
      acc84(81)=Qspval6k2*acc84(81)
      acc84(82)=Qspvak4k2*acc84(75)
      acc84(83)=acc84(82)+acc84(39)
      acc84(83)=acc84(83)*acc84(79)
      acc84(84)=Qspvak1k3*acc84(20)
      acc84(85)=Qspvak1k2*acc84(45)
      acc84(86)=Qspvak4k2*acc84(58)
      acc84(87)=Qspk7*acc84(34)
      acc84(88)=Qspvak7k2*acc84(48)
      acc84(82)=acc84(52)-acc84(82)
      acc84(82)=Qspk1*acc84(82)
      acc84(89)=-Qspvak4k2*acc84(65)
      acc84(89)=acc84(29)+acc84(89)
      acc84(89)=QspQ*acc84(89)
      acc84(78)=acc84(78)+acc84(81)+acc84(80)+acc84(89)+acc84(82)+acc84(88)+acc&
      &84(87)+acc84(86)+acc84(85)+acc84(17)+acc84(84)+acc84(83)
      acc84(78)=Qspe7*acc84(78)
      acc84(80)=Qspk7*acc84(30)
      acc84(81)=Qspvak7k2*acc84(50)
      acc84(82)=Qspvae7k2*acc84(44)
      acc84(80)=acc84(82)+acc84(81)+acc84(15)+acc84(80)
      acc84(80)=Qspval5k2*acc84(80)
      acc84(81)=Qspk7*acc84(42)
      acc84(82)=Qspvak7k2*acc84(61)
      acc84(83)=Qspvae7k2*acc84(46)
      acc84(81)=acc84(83)+acc84(82)+acc84(27)+acc84(81)
      acc84(81)=Qspval6k2*acc84(81)
      acc84(82)=Qspk2*acc84(77)
      acc84(83)=Qspk7*acc84(74)
      acc84(84)=Qspvak7k2*acc84(6)
      acc84(85)=Qspvae7k2*acc84(3)
      acc84(86)=QspQ*acc84(72)
      acc84(80)=acc84(81)+acc84(80)+acc84(86)+acc84(85)+acc84(84)+acc84(83)+acc&
      &84(8)+acc84(82)
      acc84(80)=Qspvak4k3*acc84(80)
      acc84(81)=Qspk7*acc84(43)
      acc84(82)=Qspvak7k2*acc84(40)
      acc84(83)=Qspk1*acc84(62)
      acc84(84)=Qspk1*acc84(68)
      acc84(84)=acc84(19)+acc84(84)
      acc84(84)=Qspvae7k2*acc84(84)
      acc84(85)=Qspvae7k2*acc84(66)
      acc84(85)=acc84(7)+acc84(85)
      acc84(85)=QspQ*acc84(85)
      acc84(81)=acc84(85)+acc84(84)+acc84(83)+acc84(82)+acc84(41)+acc84(81)
      acc84(81)=Qspval5k2*acc84(81)
      acc84(82)=Qspk7*acc84(51)
      acc84(83)=Qspvak7k2*acc84(73)
      acc84(84)=Qspk1*acc84(64)
      acc84(85)=Qspk1*acc84(71)
      acc84(85)=acc84(69)+acc84(85)
      acc84(85)=Qspvae7k2*acc84(85)
      acc84(86)=Qspvae7k2*acc84(70)
      acc84(86)=acc84(4)+acc84(86)
      acc84(86)=QspQ*acc84(86)
      acc84(82)=acc84(86)+acc84(85)+acc84(84)+acc84(83)+acc84(55)+acc84(82)
      acc84(82)=Qspval6k2*acc84(82)
      acc84(83)=Qspk7-Qspk2
      acc84(84)=Qspk1+acc84(83)
      acc84(84)=acc84(33)*acc84(84)
      acc84(85)=Qspvak7k2*acc84(53)
      acc84(86)=Qspvae7k2*acc84(5)
      acc84(87)=QspQ*acc84(36)
      acc84(84)=acc84(87)+acc84(86)+acc84(85)+acc84(9)+acc84(84)
      acc84(84)=QspQ*acc84(84)
      acc84(83)=acc84(56)*acc84(83)
      acc84(85)=-Qspvak7k2*acc84(54)
      acc84(83)=acc84(85)+acc84(49)+acc84(83)
      acc84(83)=Qspk1*acc84(83)
      acc84(85)=-acc84(25)*acc84(79)
      acc84(86)=Qspk1*acc84(31)
      acc84(85)=acc84(86)+acc84(10)+acc84(85)
      acc84(85)=Qspvae7k2*acc84(85)
      acc84(86)=-acc84(37)*acc84(79)
      acc84(87)=Qspk2*acc84(47)
      acc84(88)=Qspk7*acc84(32)
      acc84(79)=acc84(54)*acc84(79)
      acc84(79)=acc84(18)+acc84(79)
      acc84(79)=Qspvak7k2*acc84(79)
      brack=acc84(11)+acc84(78)+acc84(79)+acc84(80)+acc84(81)+acc84(82)+acc84(8&
      &3)+acc84(84)+acc84(85)+acc84(86)+acc84(87)+acc84(88)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram84_sign, shift => diagram84_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd84h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d84
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d84 = 0.0_ki
      d84 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d84, ki), aimag(d84), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd84h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d84
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d84 = 0.0_ki
      d84 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d84, ki), aimag(d84), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d84h0l1
