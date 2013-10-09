module     p9_csbar_epnebbbarg_d113h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d113h2l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd113h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc113(74)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
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
      acc113(37)=abb113(46)
      acc113(38)=abb113(49)
      acc113(39)=abb113(50)
      acc113(40)=abb113(51)
      acc113(41)=abb113(53)
      acc113(42)=abb113(55)
      acc113(43)=abb113(61)
      acc113(44)=abb113(62)
      acc113(45)=abb113(64)
      acc113(46)=abb113(66)
      acc113(47)=abb113(67)
      acc113(48)=abb113(70)
      acc113(49)=abb113(71)
      acc113(50)=abb113(86)
      acc113(51)=abb113(89)
      acc113(52)=abb113(92)
      acc113(53)=abb113(96)
      acc113(54)=abb113(108)
      acc113(55)=abb113(116)
      acc113(56)=abb113(120)
      acc113(57)=abb113(128)
      acc113(58)=abb113(147)
      acc113(59)=abb113(157)
      acc113(60)=abb113(171)
      acc113(61)=-Qspk1+Qspk4+Qspk3
      acc113(62)=-acc113(39)*acc113(61)
      acc113(63)=Qspvak2k1*acc113(34)
      acc113(64)=Qspvak2k3*acc113(36)
      acc113(65)=Qspvak4k1*acc113(1)
      acc113(66)=Qspvak4k3*acc113(44)
      acc113(62)=acc113(66)+acc113(65)+acc113(64)+acc113(38)+acc113(63)+acc113(&
      &62)
      acc113(62)=Qspval5l6*acc113(62)
      acc113(63)=acc113(50)*acc113(61)
      acc113(64)=Qspvak2k1*acc113(27)
      acc113(65)=Qspvak2k3*acc113(33)
      acc113(66)=Qspvak4k1*acc113(6)
      acc113(67)=Qspvak4k3*acc113(13)
      acc113(63)=acc113(67)+acc113(66)+acc113(65)+acc113(5)+acc113(64)+acc113(6&
      &3)
      acc113(63)=Qspk2*acc113(63)
      acc113(64)=Qspl6+Qspl5
      acc113(65)=-acc113(19)*acc113(64)
      acc113(66)=acc113(56)*acc113(61)
      acc113(67)=acc113(23)*Qspvak2l6
      acc113(68)=acc113(21)*Qspvak2k7
      acc113(69)=Qspvak2k1*acc113(25)
      acc113(70)=Qspvak2k3*acc113(24)
      acc113(71)=QspQ*acc113(11)
      acc113(72)=Qspk7*acc113(54)
      acc113(73)=Qspvak4k1*acc113(2)
      acc113(74)=Qspvak4k3*acc113(28)
      acc113(62)=acc113(63)+acc113(62)+acc113(74)+acc113(73)+acc113(72)+acc113(&
      &71)+acc113(70)+acc113(69)+acc113(68)+acc113(46)+acc113(67)+acc113(66)+ac&
      &c113(65)
      acc113(62)=Qspe7*acc113(62)
      acc113(63)=-acc113(47)*acc113(64)
      acc113(65)=acc113(45)*acc113(61)
      acc113(66)=Qspvak2e7*acc113(31)
      acc113(67)=QspQ*acc113(60)
      acc113(68)=Qspk7*acc113(42)
      acc113(69)=Qspvak4k1*acc113(4)
      acc113(70)=Qspvak4k3*acc113(10)
      acc113(71)=Qspval5l6*acc113(40)
      acc113(72)=Qspk2*acc113(37)
      acc113(63)=acc113(72)+acc113(71)+acc113(70)+acc113(69)+acc113(68)+acc113(&
      &67)+acc113(14)+acc113(66)+acc113(65)+acc113(63)
      acc113(63)=Qspk2*acc113(63)
      acc113(65)=acc113(48)*acc113(64)
      acc113(66)=-acc113(35)*acc113(61)
      acc113(67)=Qspvak2e7*acc113(22)
      acc113(68)=-QspQ*acc113(52)
      acc113(69)=Qspk7*acc113(41)
      acc113(70)=Qspvak4k1*acc113(17)
      acc113(71)=Qspvak4k3*acc113(43)
      acc113(65)=acc113(71)+acc113(70)+acc113(69)+acc113(68)+acc113(32)+acc113(&
      &67)+acc113(66)+acc113(65)
      acc113(65)=Qspval5l6*acc113(65)
      acc113(66)=acc113(9)*acc113(64)
      acc113(67)=QspQ*acc113(16)
      acc113(68)=Qspk7*acc113(3)
      acc113(66)=acc113(68)+acc113(67)+acc113(20)+acc113(66)
      acc113(66)=Qspvak4k1*acc113(66)
      acc113(67)=-acc113(57)*acc113(64)
      acc113(68)=QspQ*acc113(30)
      acc113(69)=Qspk7*acc113(55)
      acc113(67)=acc113(69)+acc113(68)+acc113(49)+acc113(67)
      acc113(67)=Qspvak4k3*acc113(67)
      acc113(68)=acc113(59)*acc113(64)
      acc113(69)=QspQ*acc113(26)
      acc113(68)=-acc113(68)+acc113(69)+acc113(51)
      acc113(68)=-acc113(68)*acc113(61)
      acc113(61)=-acc113(58)*acc113(61)
      acc113(69)=Qspvak2e7*acc113(12)
      acc113(61)=acc113(53)+acc113(69)+acc113(61)
      acc113(61)=Qspk7*acc113(61)
      acc113(64)=-acc113(15)*acc113(64)
      acc113(69)=Qspvak2e7*acc113(29)
      acc113(70)=Qspvak2e7*acc113(8)
      acc113(70)=acc113(7)+acc113(70)
      acc113(70)=QspQ*acc113(70)
      brack=acc113(18)+acc113(61)+acc113(62)+acc113(63)+acc113(64)+acc113(65)+a&
      &cc113(66)+acc113(67)+acc113(68)+acc113(69)+acc113(70)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram113_sign, shift => diagram113_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd113h2
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
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd113h2
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
end module p9_csbar_epnebbbarg_d113h2l1
