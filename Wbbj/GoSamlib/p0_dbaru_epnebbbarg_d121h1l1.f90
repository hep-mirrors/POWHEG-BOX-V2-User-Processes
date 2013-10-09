module     p0_dbaru_epnebbbarg_d121h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d121h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd121h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc121(73)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspl5
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspl5 = dotproduct(Q,l5)
      acc121(1)=abb121(9)
      acc121(2)=abb121(10)
      acc121(3)=abb121(11)
      acc121(4)=abb121(12)
      acc121(5)=abb121(13)
      acc121(6)=abb121(14)
      acc121(7)=abb121(15)
      acc121(8)=abb121(16)
      acc121(9)=abb121(17)
      acc121(10)=abb121(18)
      acc121(11)=abb121(19)
      acc121(12)=abb121(20)
      acc121(13)=abb121(21)
      acc121(14)=abb121(22)
      acc121(15)=abb121(23)
      acc121(16)=abb121(24)
      acc121(17)=abb121(25)
      acc121(18)=abb121(26)
      acc121(19)=abb121(27)
      acc121(20)=abb121(28)
      acc121(21)=abb121(29)
      acc121(22)=abb121(30)
      acc121(23)=abb121(31)
      acc121(24)=abb121(32)
      acc121(25)=abb121(33)
      acc121(26)=abb121(34)
      acc121(27)=abb121(35)
      acc121(28)=abb121(36)
      acc121(29)=abb121(39)
      acc121(30)=abb121(40)
      acc121(31)=abb121(42)
      acc121(32)=abb121(43)
      acc121(33)=abb121(44)
      acc121(34)=abb121(45)
      acc121(35)=abb121(46)
      acc121(36)=abb121(47)
      acc121(37)=abb121(48)
      acc121(38)=abb121(49)
      acc121(39)=abb121(50)
      acc121(40)=abb121(52)
      acc121(41)=abb121(53)
      acc121(42)=abb121(54)
      acc121(43)=abb121(55)
      acc121(44)=abb121(56)
      acc121(45)=abb121(57)
      acc121(46)=abb121(58)
      acc121(47)=abb121(59)
      acc121(48)=abb121(60)
      acc121(49)=abb121(61)
      acc121(50)=abb121(63)
      acc121(51)=abb121(65)
      acc121(52)=abb121(66)
      acc121(53)=abb121(67)
      acc121(54)=abb121(70)
      acc121(55)=abb121(73)
      acc121(56)=abb121(74)
      acc121(57)=abb121(75)
      acc121(58)=Qspk7+Qspl6
      acc121(59)=-acc121(22)*acc121(58)
      acc121(60)=acc121(41)*Qspvak1l6
      acc121(61)=acc121(40)*Qspvak1k7
      acc121(62)=acc121(38)*Qspvak4e7
      acc121(63)=acc121(18)*Qspvak4l6
      acc121(64)=acc121(17)*Qspvak4k7
      acc121(65)=acc121(7)*Qspvak1e7
      acc121(66)=Qspe7*acc121(2)
      acc121(67)=Qspvae7k2*acc121(4)
      acc121(68)=Qspval6e7*acc121(37)
      acc121(69)=Qspvak1l5*acc121(50)
      acc121(70)=Qspvak4l5*acc121(39)
      acc121(71)=Qspvak1k2*acc121(6)
      acc121(72)=Qspvak4k2*acc121(56)
      acc121(73)=Qspk2*acc121(30)
      acc121(59)=acc121(73)+acc121(72)+acc121(71)+acc121(70)+acc121(69)+acc121(&
      &68)+acc121(67)+acc121(66)+acc121(3)+acc121(65)+acc121(64)+acc121(63)+acc&
      &121(62)+acc121(60)+acc121(61)+acc121(59)
      acc121(59)=Qspk2*acc121(59)
      acc121(60)=-acc121(14)*acc121(58)
      acc121(61)=Qspvak2l6*acc121(28)
      acc121(62)=Qspvak2k7*acc121(24)
      acc121(63)=Qspvak2e7*acc121(19)
      acc121(64)=Qspvae7l5*acc121(8)
      acc121(65)=-acc121(57)*Qspval6l5
      acc121(66)=acc121(54)*Qspvak7l5
      acc121(67)=Qspvak2l5*acc121(25)
      acc121(68)=Qspe7*acc121(1)
      acc121(69)=Qspvae7k2*acc121(5)
      acc121(70)=Qspval6e7*acc121(21)
      acc121(60)=acc121(70)+acc121(69)+acc121(68)+acc121(67)+acc121(66)+acc121(&
      &65)+acc121(64)+acc121(63)+acc121(62)+acc121(11)+acc121(61)+acc121(60)
      acc121(60)=Qspvak1k2*acc121(60)
      acc121(61)=-acc121(53)*acc121(58)
      acc121(62)=Qspvak2l6*acc121(55)
      acc121(63)=Qspvak2k7*acc121(9)
      acc121(64)=Qspvak2e7*acc121(51)
      acc121(65)=Qspvae7l5*acc121(29)
      acc121(66)=-acc121(49)*Qspval6l5
      acc121(67)=acc121(48)*Qspvak7l5
      acc121(68)=Qspvak2l5*acc121(23)
      acc121(69)=Qspe7*acc121(12)
      acc121(70)=Qspvae7k2*acc121(20)
      acc121(71)=Qspval6e7*acc121(10)
      acc121(61)=acc121(71)+acc121(70)+acc121(69)+acc121(68)+acc121(67)+acc121(&
      &66)+acc121(65)+acc121(64)+acc121(63)+acc121(16)+acc121(62)+acc121(61)
      acc121(61)=Qspvak4k2*acc121(61)
      acc121(62)=acc121(46)*acc121(58)
      acc121(63)=acc121(57)*Qspval6k2
      acc121(64)=-acc121(54)*Qspvak7k2
      acc121(65)=Qspe7*acc121(42)
      acc121(66)=Qspvae7k2*acc121(52)
      acc121(67)=Qspval6e7*acc121(36)
      acc121(62)=acc121(67)+acc121(66)+acc121(65)+acc121(64)+acc121(31)+acc121(&
      &63)+acc121(62)
      acc121(62)=Qspvak1l5*acc121(62)
      acc121(63)=acc121(35)*acc121(58)
      acc121(64)=acc121(49)*Qspval6k2
      acc121(65)=-acc121(48)*Qspvak7k2
      acc121(66)=Qspe7*acc121(27)
      acc121(67)=Qspvae7k2*acc121(47)
      acc121(68)=Qspval6e7*acc121(44)
      acc121(63)=acc121(68)+acc121(67)+acc121(66)+acc121(65)+acc121(26)+acc121(&
      &64)+acc121(63)
      acc121(63)=Qspvak4l5*acc121(63)
      acc121(58)=acc121(45)*acc121(58)
      acc121(64)=acc121(13)*Qspl5
      acc121(65)=Qspvak2l5*acc121(34)
      acc121(66)=Qspe7*acc121(43)
      acc121(67)=Qspvae7k2*acc121(33)
      acc121(68)=Qspval6e7*acc121(32)
      brack=acc121(15)+acc121(58)+acc121(59)+acc121(60)+acc121(61)+acc121(62)+a&
      &cc121(63)+acc121(64)+acc121(65)+acc121(66)+acc121(67)+acc121(68)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram121_sign, shift => diagram121_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd121h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d121
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d121 = 0.0_ki
      d121 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d121, ki), aimag(d121), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd121h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d121
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d121 = 0.0_ki
      d121 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d121, ki), aimag(d121), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d121h1l1
