module     p0_dbaru_epnebbbarg_d113h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d113h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd113h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc113(75)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4l5
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      acc113(1)=abb113(9)
      acc113(2)=abb113(10)
      acc113(3)=abb113(11)
      acc113(4)=abb113(12)
      acc113(5)=abb113(13)
      acc113(6)=abb113(14)
      acc113(7)=abb113(15)
      acc113(8)=abb113(16)
      acc113(9)=abb113(17)
      acc113(10)=abb113(18)
      acc113(11)=abb113(19)
      acc113(12)=abb113(20)
      acc113(13)=abb113(21)
      acc113(14)=abb113(22)
      acc113(15)=abb113(23)
      acc113(16)=abb113(24)
      acc113(17)=abb113(25)
      acc113(18)=abb113(26)
      acc113(19)=abb113(27)
      acc113(20)=abb113(28)
      acc113(21)=abb113(29)
      acc113(22)=abb113(30)
      acc113(23)=abb113(31)
      acc113(24)=abb113(32)
      acc113(25)=abb113(33)
      acc113(26)=abb113(34)
      acc113(27)=abb113(35)
      acc113(28)=abb113(36)
      acc113(29)=abb113(37)
      acc113(30)=abb113(38)
      acc113(31)=abb113(39)
      acc113(32)=abb113(40)
      acc113(33)=abb113(41)
      acc113(34)=abb113(42)
      acc113(35)=abb113(43)
      acc113(36)=abb113(44)
      acc113(37)=abb113(45)
      acc113(38)=abb113(46)
      acc113(39)=abb113(47)
      acc113(40)=abb113(48)
      acc113(41)=abb113(49)
      acc113(42)=abb113(50)
      acc113(43)=abb113(51)
      acc113(44)=abb113(52)
      acc113(45)=abb113(53)
      acc113(46)=abb113(54)
      acc113(47)=abb113(55)
      acc113(48)=abb113(56)
      acc113(49)=abb113(59)
      acc113(50)=abb113(61)
      acc113(51)=abb113(62)
      acc113(52)=abb113(63)
      acc113(53)=abb113(64)
      acc113(54)=abb113(65)
      acc113(55)=abb113(71)
      acc113(56)=abb113(74)
      acc113(57)=abb113(90)
      acc113(58)=abb113(98)
      acc113(59)=abb113(119)
      acc113(60)=abb113(127)
      acc113(61)=Qspvak1k2*acc113(19)
      acc113(62)=Qspvak4k2*acc113(7)
      acc113(61)=acc113(62)+acc113(22)+acc113(61)
      acc113(61)=Qspval5l6*acc113(61)
      acc113(62)=Qspvak1k2*acc113(36)
      acc113(63)=Qspvak4k2*acc113(53)
      acc113(62)=acc113(63)+acc113(58)+acc113(62)
      acc113(62)=Qspk2*acc113(62)
      acc113(63)=acc113(12)*Qspval6k2
      acc113(64)=Qspl6+Qspl5
      acc113(65)=-acc113(55)*acc113(64)
      acc113(66)=Qspval5k2*acc113(5)
      acc113(67)=Qspvak1l6*acc113(44)
      acc113(68)=Qspvak1k7*acc113(31)
      acc113(69)=Qspvak4l6*acc113(47)
      acc113(70)=Qspvak4k7*acc113(33)
      acc113(71)=Qspvak7k2*acc113(9)
      acc113(72)=Qspvak1k2*acc113(8)
      acc113(73)=Qspvak4k2*acc113(6)
      acc113(74)=-QspQ*acc113(57)
      acc113(61)=acc113(62)+acc113(61)+acc113(74)+acc113(73)+acc113(72)+acc113(&
      &71)+acc113(70)+acc113(69)+acc113(68)+acc113(67)+acc113(66)+acc113(65)+ac&
      &c113(54)+acc113(63)
      acc113(61)=Qspe7*acc113(61)
      acc113(62)=Qspvak1k7*acc113(37)
      acc113(63)=Qspvak4k7*acc113(38)
      acc113(65)=Qspvak7k2*acc113(10)
      acc113(66)=Qspvak1k2*acc113(14)
      acc113(67)=Qspvak4k2*acc113(51)
      acc113(68)=Qspk7*acc113(59)
      acc113(69)=Qspvae7k2*acc113(3)
      acc113(70)=QspQ*acc113(32)
      acc113(71)=Qspval5l6*acc113(30)
      acc113(72)=Qspk2*acc113(16)
      acc113(62)=acc113(72)+acc113(71)+acc113(70)+acc113(69)+acc113(68)+acc113(&
      &67)+acc113(66)+acc113(65)+acc113(63)+acc113(24)+acc113(62)
      acc113(62)=Qspk2*acc113(62)
      acc113(63)=Qspval5k2*acc113(60)
      acc113(65)=Qspvak1l6*acc113(35)
      acc113(66)=Qspvak4l6*acc113(21)
      acc113(67)=Qspvak1k2*acc113(52)
      acc113(68)=Qspvak4k2*acc113(50)
      acc113(69)=Qspvae7k2*acc113(4)
      acc113(63)=acc113(69)+acc113(68)+acc113(67)+acc113(66)+acc113(65)+acc113(&
      &11)+acc113(63)
      acc113(63)=QspQ*acc113(63)
      acc113(65)=Qspvak1k7*acc113(29)
      acc113(66)=Qspvak4k7*acc113(40)
      acc113(67)=Qspvak7k2*acc113(20)
      acc113(68)=Qspk7*acc113(28)
      acc113(69)=Qspvae7k2*acc113(27)
      acc113(70)=QspQ*acc113(34)
      acc113(65)=acc113(70)+acc113(69)+acc113(68)+acc113(67)+acc113(66)+acc113(&
      &18)+acc113(65)
      acc113(65)=Qspval5l6*acc113(65)
      acc113(66)=Qspval5k2*acc113(13)
      acc113(67)=Qspvak1l6*acc113(45)
      acc113(68)=Qspvak4l6*acc113(48)
      acc113(66)=acc113(68)+acc113(67)+acc113(25)+acc113(66)
      acc113(66)=Qspk7*acc113(66)
      acc113(64)=acc113(56)*acc113(64)
      acc113(67)=Qspk7*acc113(23)
      acc113(64)=acc113(67)+acc113(2)+acc113(64)
      acc113(64)=Qspvae7k2*acc113(64)
      acc113(67)=acc113(46)*Qspvak1l5
      acc113(68)=acc113(15)*Qspvak4l5
      acc113(69)=Qspvak1l6*acc113(41)
      acc113(70)=Qspvak1k7*acc113(39)
      acc113(71)=Qspvak4l6*acc113(42)
      acc113(72)=Qspvak4k7*acc113(17)
      acc113(73)=Qspvak7k2*acc113(1)
      acc113(74)=Qspvak1k2*acc113(43)
      acc113(75)=Qspvak4k2*acc113(49)
      brack=acc113(26)+acc113(61)+acc113(62)+acc113(63)+acc113(64)+acc113(65)+a&
      &cc113(66)+acc113(67)+acc113(68)+acc113(69)+acc113(70)+acc113(71)+acc113(&
      &72)+acc113(73)+acc113(74)+acc113(75)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram113_sign, shift => diagram113_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd113h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d113
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d113 = 0.0_ki
      d113 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d113, ki), aimag(d113), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd113h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d113
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d113 = 0.0_ki
      d113 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d113, ki), aimag(d113), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d113h2l1
