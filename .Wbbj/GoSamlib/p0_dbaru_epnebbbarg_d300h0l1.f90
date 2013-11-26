module     p0_dbaru_epnebbbarg_d300h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d300h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd300h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc300(92)
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspl5
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval5e7
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspl5 = dotproduct(Q,l5)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval5e7 = dotproduct(Q,spval5e7)
      acc300(1)=abb300(8)
      acc300(2)=abb300(9)
      acc300(3)=abb300(10)
      acc300(4)=abb300(11)
      acc300(5)=abb300(12)
      acc300(6)=abb300(13)
      acc300(7)=abb300(14)
      acc300(8)=abb300(15)
      acc300(9)=abb300(16)
      acc300(10)=abb300(17)
      acc300(11)=abb300(18)
      acc300(12)=abb300(19)
      acc300(13)=abb300(20)
      acc300(14)=abb300(21)
      acc300(15)=abb300(22)
      acc300(16)=abb300(23)
      acc300(17)=abb300(24)
      acc300(18)=abb300(25)
      acc300(19)=abb300(26)
      acc300(20)=abb300(27)
      acc300(21)=abb300(28)
      acc300(22)=abb300(29)
      acc300(23)=abb300(31)
      acc300(24)=abb300(32)
      acc300(25)=abb300(33)
      acc300(26)=abb300(34)
      acc300(27)=abb300(35)
      acc300(28)=abb300(36)
      acc300(29)=abb300(37)
      acc300(30)=abb300(38)
      acc300(31)=abb300(39)
      acc300(32)=abb300(40)
      acc300(33)=abb300(42)
      acc300(34)=abb300(43)
      acc300(35)=abb300(44)
      acc300(36)=abb300(45)
      acc300(37)=abb300(46)
      acc300(38)=abb300(47)
      acc300(39)=abb300(48)
      acc300(40)=abb300(49)
      acc300(41)=abb300(50)
      acc300(42)=abb300(51)
      acc300(43)=abb300(52)
      acc300(44)=abb300(53)
      acc300(45)=abb300(54)
      acc300(46)=abb300(55)
      acc300(47)=abb300(56)
      acc300(48)=abb300(57)
      acc300(49)=abb300(58)
      acc300(50)=abb300(59)
      acc300(51)=abb300(60)
      acc300(52)=abb300(61)
      acc300(53)=abb300(62)
      acc300(54)=abb300(63)
      acc300(55)=abb300(64)
      acc300(56)=abb300(65)
      acc300(57)=abb300(66)
      acc300(58)=abb300(67)
      acc300(59)=abb300(68)
      acc300(60)=abb300(70)
      acc300(61)=abb300(75)
      acc300(62)=abb300(76)
      acc300(63)=abb300(77)
      acc300(64)=abb300(78)
      acc300(65)=abb300(80)
      acc300(66)=abb300(81)
      acc300(67)=abb300(82)
      acc300(68)=abb300(83)
      acc300(69)=abb300(84)
      acc300(70)=abb300(87)
      acc300(71)=abb300(90)
      acc300(72)=abb300(91)
      acc300(73)=abb300(94)
      acc300(74)=abb300(95)
      acc300(75)=abb300(97)
      acc300(76)=abb300(98)
      acc300(77)=abb300(99)
      acc300(78)=abb300(100)
      acc300(79)=-Qspval5k1*acc300(56)
      acc300(80)=Qspval5k3*acc300(59)
      acc300(81)=Qspval5l6*acc300(46)
      acc300(82)=Qspval5k7*acc300(32)
      acc300(83)=Qspl5*acc300(50)
      acc300(84)=Qspk2*acc300(53)
      acc300(85)=QspQ*acc300(57)
      acc300(79)=acc300(85)+acc300(84)+acc300(83)+acc300(82)+acc300(81)+acc300(&
      &80)+acc300(29)+acc300(79)
      acc300(79)=Qspvak1k2*acc300(79)
      acc300(80)=Qspvak4k2*acc300(20)
      acc300(81)=Qspval6k2*acc300(22)
      acc300(82)=Qspvak7k2*acc300(4)
      acc300(83)=Qspk2*acc300(27)
      acc300(84)=Qspvak4k3*acc300(45)
      acc300(85)=Qspvak4k3*acc300(7)
      acc300(85)=acc300(8)+acc300(85)
      acc300(85)=Qspvak1k2*acc300(85)
      acc300(86)=Qspval5k2*acc300(15)
      acc300(80)=acc300(86)+acc300(85)+acc300(84)+acc300(83)+acc300(82)+acc300(&
      &81)+acc300(5)+acc300(80)
      acc300(80)=Qspval5k2*acc300(80)
      acc300(81)=Qspval5k1*acc300(23)
      acc300(82)=Qspval5k3*acc300(75)
      acc300(83)=Qspval5l6*acc300(78)
      acc300(84)=Qspval5k7*acc300(77)
      acc300(85)=Qspvak4k2*acc300(18)
      acc300(86)=Qspval6k2*acc300(76)
      acc300(87)=Qspvak7k2*acc300(73)
      acc300(88)=Qspl5*acc300(67)
      acc300(89)=Qspk2*acc300(43)
      acc300(90)=QspQ*acc300(60)
      acc300(79)=acc300(80)+acc300(79)+acc300(90)+acc300(89)+acc300(88)+acc300(&
      &87)+acc300(86)+acc300(85)+acc300(84)+acc300(83)+acc300(82)+acc300(35)+ac&
      &c300(81)
      acc300(79)=Qspe7*acc300(79)
      acc300(80)=acc300(65)*Qspvak1e7
      acc300(81)=Qspvae7k2*acc300(61)
      acc300(82)=Qspvak7k2*acc300(39)
      acc300(83)=Qspk7*acc300(54)
      acc300(84)=QspQ*acc300(47)
      acc300(80)=acc300(84)+acc300(83)+acc300(82)+acc300(81)+acc300(80)+acc300(&
      &12)
      acc300(80)=Qspvak4k3*acc300(80)
      acc300(81)=Qspk1*acc300(38)
      acc300(82)=Qspvak1l6*acc300(25)
      acc300(83)=Qspvak1k7*acc300(44)
      acc300(84)=Qspvae7k2*acc300(2)
      acc300(85)=Qspvak1k3*acc300(19)
      acc300(86)=Qspvak7k2*acc300(3)
      acc300(87)=Qspk7*acc300(17)
      acc300(88)=QspQ*acc300(10)
      acc300(89)=Qspvak1k2*acc300(1)
      acc300(80)=acc300(89)+acc300(80)+acc300(88)+acc300(87)+acc300(86)+acc300(&
      &85)+acc300(84)+acc300(83)+acc300(82)+acc300(13)+acc300(81)
      acc300(80)=Qspval5k2*acc300(80)
      acc300(81)=Qspk1*acc300(72)
      acc300(82)=Qspvak1l6*acc300(48)
      acc300(83)=Qspvak1k7*acc300(42)
      acc300(84)=Qspvak1k3*acc300(70)
      acc300(85)=Qspk7*acc300(55)
      acc300(81)=acc300(85)+acc300(84)+acc300(83)+acc300(82)+acc300(26)+acc300(&
      &81)
      acc300(81)=Qspval5e7*acc300(81)
      acc300(82)=-Qspk7+Qspl5
      acc300(82)=acc300(64)*acc300(82)
      acc300(83)=Qspvak1k3*acc300(51)
      acc300(84)=Qspk2*acc300(58)
      acc300(85)=Qspval5e7*acc300(14)
      acc300(86)=QspQ*acc300(68)
      acc300(82)=acc300(86)+acc300(85)+acc300(84)+acc300(30)+acc300(83)+acc300(&
      &82)
      acc300(82)=QspQ*acc300(82)
      acc300(83)=Qspl5*acc300(37)
      acc300(84)=Qspk2*acc300(11)
      acc300(85)=Qspval5e7*acc300(33)
      acc300(86)=QspQ*acc300(9)
      acc300(83)=acc300(86)+acc300(85)+acc300(84)+acc300(36)+acc300(83)
      acc300(83)=Qspvak1k2*acc300(83)
      acc300(84)=Qspvae7k2*acc300(41)
      acc300(85)=Qspvak7k2*acc300(40)
      acc300(86)=Qspval5e7*acc300(34)
      acc300(84)=acc300(86)+acc300(85)+acc300(31)+acc300(84)
      acc300(84)=Qspvak4k3*acc300(84)
      acc300(85)=Qspvak1k3*acc300(16)
      acc300(86)=Qspk7*acc300(66)
      acc300(85)=acc300(86)+acc300(62)+acc300(85)
      acc300(85)=Qspk2*acc300(85)
      acc300(86)=Qspk1*acc300(71)
      acc300(87)=Qspvak1l6*acc300(21)
      acc300(88)=Qspvak1k7*acc300(24)
      acc300(89)=Qspvak4k2*acc300(28)
      acc300(90)=Qspval6k2*acc300(74)
      acc300(91)=Qspvak1k3*acc300(49)
      acc300(91)=acc300(63)+acc300(91)
      acc300(91)=Qspl5*acc300(91)
      acc300(92)=Qspl5*acc300(69)
      acc300(92)=acc300(52)+acc300(92)
      acc300(92)=Qspk7*acc300(92)
      brack=acc300(6)+acc300(79)+acc300(80)+acc300(81)+acc300(82)+acc300(83)+ac&
      &c300(84)+acc300(85)+acc300(86)+acc300(87)+acc300(88)+acc300(89)+acc300(9&
      &0)+acc300(91)+acc300(92)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram300_sign, shift => diagram300_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd300h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d300
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d300 = 0.0_ki
      d300 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d300, ki), aimag(d300), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd300h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d300
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d300 = 0.0_ki
      d300 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d300, ki), aimag(d300), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d300h0l1
