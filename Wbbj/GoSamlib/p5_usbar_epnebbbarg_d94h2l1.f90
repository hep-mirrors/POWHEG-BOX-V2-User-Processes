module     p5_usbar_epnebbbarg_d94h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d94h2l1.f90
   ! generator: buildfortran.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd94h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc94(79)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      acc94(1)=abb94(9)
      acc94(2)=abb94(10)
      acc94(3)=abb94(11)
      acc94(4)=abb94(12)
      acc94(5)=abb94(13)
      acc94(6)=abb94(14)
      acc94(7)=abb94(15)
      acc94(8)=abb94(16)
      acc94(9)=abb94(17)
      acc94(10)=abb94(18)
      acc94(11)=abb94(19)
      acc94(12)=abb94(20)
      acc94(13)=abb94(21)
      acc94(14)=abb94(22)
      acc94(15)=abb94(23)
      acc94(16)=abb94(24)
      acc94(17)=abb94(25)
      acc94(18)=abb94(26)
      acc94(19)=abb94(27)
      acc94(20)=abb94(28)
      acc94(21)=abb94(29)
      acc94(22)=abb94(30)
      acc94(23)=abb94(31)
      acc94(24)=abb94(32)
      acc94(25)=abb94(33)
      acc94(26)=abb94(34)
      acc94(27)=abb94(35)
      acc94(28)=abb94(36)
      acc94(29)=abb94(37)
      acc94(30)=abb94(38)
      acc94(31)=abb94(39)
      acc94(32)=abb94(40)
      acc94(33)=abb94(41)
      acc94(34)=abb94(42)
      acc94(35)=abb94(43)
      acc94(36)=abb94(44)
      acc94(37)=abb94(45)
      acc94(38)=abb94(46)
      acc94(39)=abb94(47)
      acc94(40)=abb94(48)
      acc94(41)=abb94(49)
      acc94(42)=abb94(50)
      acc94(43)=abb94(51)
      acc94(44)=abb94(52)
      acc94(45)=abb94(53)
      acc94(46)=abb94(55)
      acc94(47)=abb94(58)
      acc94(48)=abb94(60)
      acc94(49)=abb94(71)
      acc94(50)=abb94(73)
      acc94(51)=abb94(79)
      acc94(52)=abb94(83)
      acc94(53)=abb94(86)
      acc94(54)=abb94(92)
      acc94(55)=abb94(93)
      acc94(56)=abb94(94)
      acc94(57)=abb94(100)
      acc94(58)=abb94(111)
      acc94(59)=abb94(119)
      acc94(60)=abb94(156)
      acc94(61)=abb94(173)
      acc94(62)=abb94(204)
      acc94(63)=abb94(206)
      acc94(64)=abb94(213)
      acc94(65)=Qspl6+Qspl5
      acc94(66)=-acc94(55)*acc94(65)
      acc94(67)=-Qspk1+Qspk4+Qspk3
      acc94(68)=acc94(57)*acc94(67)
      acc94(69)=Qspvak2l5*acc94(37)
      acc94(70)=Qspvak2e7*acc94(29)
      acc94(71)=Qspvak2k1*acc94(17)
      acc94(72)=Qspvak2k3*acc94(13)
      acc94(73)=Qspvak2l6*acc94(31)
      acc94(74)=Qspk7*acc94(54)
      acc94(75)=QspQ*acc94(14)
      acc94(76)=Qspvak4k1*acc94(40)
      acc94(77)=Qspvak4k3*acc94(45)
      acc94(78)=Qspval5l6*acc94(21)
      acc94(79)=Qspk2*acc94(59)
      acc94(66)=acc94(79)+acc94(78)+acc94(77)+acc94(76)+acc94(75)+acc94(74)+acc&
      &94(73)+acc94(72)+acc94(71)+acc94(70)+acc94(5)+acc94(69)+acc94(68)+acc94(&
      &66)
      acc94(66)=Qspk2*acc94(66)
      acc94(68)=-acc94(22)*acc94(65)
      acc94(69)=-acc94(28)*acc94(67)
      acc94(70)=Qspvak2e7*acc94(38)
      acc94(71)=-acc94(27)*Qspvak2l5
      acc94(72)=Qspvak2k1*acc94(4)
      acc94(73)=Qspvak2k3*acc94(42)
      acc94(74)=Qspvak2l6*acc94(35)
      acc94(75)=Qspk7*acc94(44)
      acc94(76)=QspQ*acc94(47)
      acc94(77)=Qspvak4k1*acc94(1)
      acc94(78)=Qspvak4k3*acc94(7)
      acc94(68)=acc94(78)+acc94(77)+acc94(76)+acc94(75)+acc94(74)+acc94(73)+acc&
      &94(72)+acc94(71)+acc94(18)+acc94(70)+acc94(69)+acc94(68)
      acc94(68)=Qspval5l6*acc94(68)
      acc94(69)=-acc94(32)*acc94(67)
      acc94(70)=Qspvak2k1*acc94(30)
      acc94(71)=Qspvak2k3*acc94(34)
      acc94(72)=Qspvak4k1*acc94(3)
      acc94(73)=Qspvak4k3*acc94(19)
      acc94(69)=acc94(73)+acc94(72)+acc94(71)+acc94(16)+acc94(70)+acc94(69)
      acc94(69)=Qspval5l6*acc94(69)
      acc94(70)=acc94(58)*acc94(67)
      acc94(71)=Qspvak2k1*acc94(43)
      acc94(72)=Qspvak2k3*acc94(24)
      acc94(73)=Qspvak4k1*acc94(41)
      acc94(74)=Qspvak4k3*acc94(51)
      acc94(70)=acc94(74)+acc94(73)+acc94(72)+acc94(39)+acc94(71)+acc94(70)
      acc94(70)=Qspk2*acc94(70)
      acc94(71)=acc94(60)*acc94(65)
      acc94(72)=acc94(63)*acc94(67)
      acc94(73)=Qspvak2l6*acc94(11)
      acc94(74)=Qspk7*acc94(46)
      acc94(75)=QspQ*acc94(20)
      acc94(76)=Qspvak4k1*acc94(15)
      acc94(77)=Qspvak4k3*acc94(50)
      acc94(69)=acc94(70)+acc94(69)+acc94(77)+acc94(76)+acc94(75)+acc94(74)+acc&
      &94(36)+acc94(73)+acc94(72)+acc94(71)
      acc94(69)=Qspe7*acc94(69)
      acc94(70)=acc94(23)*acc94(65)
      acc94(71)=Qspk7*acc94(9)
      acc94(72)=QspQ*acc94(6)
      acc94(70)=acc94(72)+acc94(2)+acc94(71)+acc94(70)
      acc94(70)=Qspvak4k1*acc94(70)
      acc94(71)=-acc94(56)*acc94(65)
      acc94(72)=Qspk7*acc94(53)
      acc94(73)=QspQ*acc94(52)
      acc94(71)=acc94(73)+acc94(49)+acc94(72)+acc94(71)
      acc94(71)=Qspvak4k3*acc94(71)
      acc94(72)=acc94(62)*acc94(67)
      acc94(73)=Qspvak2l6*acc94(33)
      acc94(72)=acc94(73)-acc94(48)+acc94(72)
      acc94(65)=acc94(72)*acc94(65)
      acc94(72)=Qspk7*acc94(64)
      acc94(73)=QspQ*acc94(8)
      acc94(72)=acc94(61)+acc94(72)-acc94(73)
      acc94(67)=acc94(72)*acc94(67)
      acc94(72)=Qspvak2l6*acc94(12)
      acc94(73)=Qspk7*acc94(25)
      acc94(74)=-Qspvak2l6*acc94(27)
      acc94(74)=acc94(10)+acc94(74)
      acc94(74)=QspQ*acc94(74)
      brack=acc94(26)+acc94(65)+acc94(66)+acc94(67)+acc94(68)+acc94(69)+acc94(7&
      &0)+acc94(71)+acc94(72)+acc94(73)+acc94(74)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram94_sign, shift => diagram94_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd94h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d94
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d94 = 0.0_ki
      d94 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d94, ki), aimag(d94), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd94h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d94
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d94 = 0.0_ki
      d94 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d94, ki), aimag(d94), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d94h2l1
