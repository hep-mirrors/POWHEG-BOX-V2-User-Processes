module     p9_csbar_epnebbbarg_d100h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d100h2l1.f90
   ! generator: buildfortran.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd100h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc100(79)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspe7 = dotproduct(Q,e7)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      acc100(1)=abb100(9)
      acc100(2)=abb100(10)
      acc100(3)=abb100(11)
      acc100(4)=abb100(12)
      acc100(5)=abb100(13)
      acc100(6)=abb100(14)
      acc100(7)=abb100(15)
      acc100(8)=abb100(16)
      acc100(9)=abb100(17)
      acc100(10)=abb100(18)
      acc100(11)=abb100(19)
      acc100(12)=abb100(20)
      acc100(13)=abb100(21)
      acc100(14)=abb100(22)
      acc100(15)=abb100(23)
      acc100(16)=abb100(24)
      acc100(17)=abb100(25)
      acc100(18)=abb100(26)
      acc100(19)=abb100(27)
      acc100(20)=abb100(28)
      acc100(21)=abb100(29)
      acc100(22)=abb100(30)
      acc100(23)=abb100(31)
      acc100(24)=abb100(32)
      acc100(25)=abb100(33)
      acc100(26)=abb100(34)
      acc100(27)=abb100(35)
      acc100(28)=abb100(36)
      acc100(29)=abb100(37)
      acc100(30)=abb100(38)
      acc100(31)=abb100(39)
      acc100(32)=abb100(40)
      acc100(33)=abb100(41)
      acc100(34)=abb100(42)
      acc100(35)=abb100(43)
      acc100(36)=abb100(44)
      acc100(37)=abb100(45)
      acc100(38)=abb100(46)
      acc100(39)=abb100(47)
      acc100(40)=abb100(48)
      acc100(41)=abb100(49)
      acc100(42)=abb100(50)
      acc100(43)=abb100(51)
      acc100(44)=abb100(52)
      acc100(45)=abb100(53)
      acc100(46)=abb100(54)
      acc100(47)=abb100(56)
      acc100(48)=abb100(57)
      acc100(49)=abb100(59)
      acc100(50)=abb100(60)
      acc100(51)=abb100(61)
      acc100(52)=abb100(66)
      acc100(53)=abb100(67)
      acc100(54)=abb100(68)
      acc100(55)=abb100(69)
      acc100(56)=abb100(77)
      acc100(57)=abb100(79)
      acc100(58)=abb100(86)
      acc100(59)=abb100(89)
      acc100(60)=abb100(92)
      acc100(61)=abb100(93)
      acc100(62)=abb100(94)
      acc100(63)=abb100(96)
      acc100(64)=Qspk7+Qspl6
      acc100(65)=acc100(28)*acc100(64)
      acc100(66)=-Qspk1+Qspk4+Qspk3
      acc100(67)=acc100(35)*acc100(66)
      acc100(68)=Qspval5k1*acc100(62)
      acc100(69)=Qspval5k3*acc100(30)
      acc100(70)=Qspe7*acc100(19)
      acc100(71)=Qspvak4k1*acc100(25)
      acc100(72)=Qspvak4k3*acc100(37)
      acc100(73)=Qspvak2e7*acc100(22)
      acc100(74)=Qspvae7l6*acc100(7)
      acc100(75)=Qspk2*acc100(57)
      acc100(65)=acc100(75)+acc100(74)+acc100(73)+acc100(72)+acc100(71)+acc100(&
      &70)+acc100(69)+acc100(14)+acc100(68)+acc100(67)+acc100(65)
      acc100(65)=Qspk2*acc100(65)
      acc100(67)=Qspval5k2*acc100(4)
      acc100(68)=Qspvae7k2*acc100(5)
      acc100(69)=acc100(63)*Qspval5e7
      acc100(70)=Qspval5l6*acc100(11)
      acc100(71)=Qspval5k7*acc100(16)
      acc100(72)=Qspval6k2*acc100(29)
      acc100(73)=Qspvak7k2*acc100(46)
      acc100(67)=acc100(73)+acc100(72)+acc100(71)+acc100(70)+acc100(69)+acc100(&
      &67)+acc100(68)
      acc100(67)=Qspvak2k1*acc100(67)
      acc100(68)=Qspval5k2*acc100(44)
      acc100(69)=Qspvae7k2*acc100(36)
      acc100(70)=-acc100(61)*Qspval5e7
      acc100(71)=Qspval5l6*acc100(43)
      acc100(72)=Qspval5k7*acc100(40)
      acc100(73)=Qspval6k2*acc100(39)
      acc100(74)=Qspvak7k2*acc100(38)
      acc100(68)=acc100(74)+acc100(73)+acc100(72)+acc100(71)+acc100(70)+acc100(&
      &68)+acc100(69)
      acc100(68)=Qspvak2k3*acc100(68)
      acc100(69)=acc100(18)*acc100(66)
      acc100(70)=-Qspval5k1*acc100(63)
      acc100(71)=Qspval5k3*acc100(61)
      acc100(72)=Qspvak4k1*acc100(8)
      acc100(73)=Qspvak4k3*acc100(9)
      acc100(69)=acc100(73)+acc100(72)+acc100(71)+acc100(15)+acc100(70)+acc100(&
      &69)
      acc100(69)=Qspvak2e7*acc100(69)
      acc100(70)=acc100(3)*acc100(66)
      acc100(71)=Qspval5k1*acc100(51)
      acc100(72)=Qspval5k3*acc100(52)
      acc100(73)=Qspvak4k1*acc100(1)
      acc100(74)=Qspvak4k3*acc100(42)
      acc100(70)=acc100(74)+acc100(73)+acc100(72)+acc100(59)+acc100(71)+acc100(&
      &70)
      acc100(70)=Qspvae7l6*acc100(70)
      acc100(71)=acc100(32)*acc100(64)
      acc100(72)=Qspvak2l6*acc100(2)
      acc100(73)=Qspvak2k7*acc100(34)
      acc100(74)=Qspe7*acc100(6)
      acc100(71)=acc100(74)+acc100(73)+acc100(23)+acc100(72)+acc100(71)
      acc100(71)=Qspvak4k1*acc100(71)
      acc100(72)=-acc100(45)*acc100(64)
      acc100(73)=Qspvak2l6*acc100(27)
      acc100(74)=Qspvak2k7*acc100(21)
      acc100(75)=Qspe7*acc100(24)
      acc100(72)=acc100(75)+acc100(74)+acc100(31)+acc100(73)+acc100(72)
      acc100(72)=Qspvak4k3*acc100(72)
      acc100(73)=acc100(58)*acc100(66)
      acc100(74)=Qspval5k1*acc100(47)
      acc100(75)=Qspval5k3*acc100(50)
      acc100(73)=acc100(54)-acc100(74)+acc100(75)+acc100(73)
      acc100(64)=acc100(73)*acc100(64)
      acc100(73)=acc100(56)*acc100(66)
      acc100(74)=Qspval5k1*acc100(48)
      acc100(75)=Qspval5k3*acc100(41)
      acc100(73)=acc100(75)+acc100(53)+acc100(74)+acc100(73)
      acc100(73)=Qspe7*acc100(73)
      acc100(74)=Qspvak2l6*acc100(10)
      acc100(75)=Qspvak2k7*acc100(12)
      acc100(74)=acc100(55)+acc100(74)-acc100(75)
      acc100(66)=-acc100(74)*acc100(66)
      acc100(74)=Qspval5l6*acc100(17)
      acc100(75)=Qspval5k7*acc100(20)
      acc100(76)=Qspval6k2*acc100(33)
      acc100(77)=Qspvak7k2*acc100(60)
      acc100(78)=Qspval5k1*acc100(49)
      acc100(79)=Qspval5k3*acc100(26)
      brack=acc100(13)+acc100(64)+acc100(65)+acc100(66)+acc100(67)+acc100(68)+a&
      &cc100(69)+acc100(70)+acc100(71)+acc100(72)+acc100(73)+acc100(74)+acc100(&
      &75)+acc100(76)+acc100(77)+acc100(78)+acc100(79)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram100_sign, shift => diagram100_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd100h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d100
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d100 = 0.0_ki
      d100 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d100, ki), aimag(d100), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd100h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d100
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d100 = 0.0_ki
      d100 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d100, ki), aimag(d100), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d100h2l1
