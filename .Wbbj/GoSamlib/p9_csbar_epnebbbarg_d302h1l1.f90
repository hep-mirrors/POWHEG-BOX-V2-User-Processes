module     p9_csbar_epnebbbarg_d302h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d302h1l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd302h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc302(75)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6k2
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      acc302(1)=abb302(7)
      acc302(2)=abb302(8)
      acc302(3)=abb302(9)
      acc302(4)=abb302(10)
      acc302(5)=abb302(11)
      acc302(6)=abb302(12)
      acc302(7)=abb302(13)
      acc302(8)=abb302(14)
      acc302(9)=abb302(15)
      acc302(10)=abb302(16)
      acc302(11)=abb302(17)
      acc302(12)=abb302(18)
      acc302(13)=abb302(19)
      acc302(14)=abb302(20)
      acc302(15)=abb302(21)
      acc302(16)=abb302(22)
      acc302(17)=abb302(23)
      acc302(18)=abb302(24)
      acc302(19)=abb302(25)
      acc302(20)=abb302(26)
      acc302(21)=abb302(27)
      acc302(22)=abb302(28)
      acc302(23)=abb302(29)
      acc302(24)=abb302(30)
      acc302(25)=abb302(31)
      acc302(26)=abb302(32)
      acc302(27)=abb302(33)
      acc302(28)=abb302(34)
      acc302(29)=abb302(35)
      acc302(30)=abb302(36)
      acc302(31)=abb302(37)
      acc302(32)=abb302(38)
      acc302(33)=abb302(39)
      acc302(34)=abb302(40)
      acc302(35)=abb302(41)
      acc302(36)=abb302(42)
      acc302(37)=abb302(43)
      acc302(38)=abb302(44)
      acc302(39)=abb302(45)
      acc302(40)=abb302(46)
      acc302(41)=abb302(48)
      acc302(42)=abb302(49)
      acc302(43)=abb302(55)
      acc302(44)=abb302(59)
      acc302(45)=abb302(61)
      acc302(46)=abb302(62)
      acc302(47)=abb302(63)
      acc302(48)=abb302(64)
      acc302(49)=abb302(65)
      acc302(50)=abb302(67)
      acc302(51)=abb302(68)
      acc302(52)=abb302(70)
      acc302(53)=abb302(71)
      acc302(54)=abb302(72)
      acc302(55)=abb302(73)
      acc302(56)=abb302(74)
      acc302(57)=abb302(76)
      acc302(58)=abb302(77)
      acc302(59)=abb302(78)
      acc302(60)=abb302(79)
      acc302(61)=abb302(80)
      acc302(62)=abb302(82)
      acc302(63)=-Qspk1+Qspk4+Qspk3
      acc302(64)=acc302(57)*acc302(63)
      acc302(65)=acc302(34)*Qspvak2k3
      acc302(66)=-acc302(32)*Qspvak2k1
      acc302(67)=Qspvak4k1*acc302(24)
      acc302(68)=Qspvak4k3*acc302(61)
      acc302(64)=acc302(68)+acc302(67)+acc302(66)+acc302(28)+acc302(65)+acc302(&
      &64)
      acc302(64)=Qspval6l5*acc302(64)
      acc302(65)=acc302(26)*acc302(63)
      acc302(66)=-acc302(34)*Qspval6k3
      acc302(67)=acc302(32)*Qspval6k1
      acc302(65)=acc302(67)+acc302(15)+acc302(66)+acc302(65)
      acc302(65)=Qspvak2l5*acc302(65)
      acc302(66)=-acc302(45)*acc302(63)
      acc302(67)=Qspvak4k1*acc302(19)
      acc302(68)=Qspvak4k3*acc302(62)
      acc302(66)=acc302(68)+acc302(67)+acc302(36)+acc302(66)
      acc302(66)=Qspk2*acc302(66)
      acc302(67)=acc302(43)*acc302(63)
      acc302(68)=acc302(56)*Qspval6k7
      acc302(69)=acc302(12)*Qspvak2k7
      acc302(70)=Qspvak2k1*acc302(11)
      acc302(71)=Qspvak2k3*acc302(33)
      acc302(72)=Qspvak2l6*acc302(5)
      acc302(73)=Qspvak2l5*acc302(1)
      acc302(73)=acc302(10)+acc302(73)
      acc302(73)=Qspvak4k1*acc302(73)
      acc302(74)=Qspvak2l5*acc302(40)
      acc302(74)=acc302(22)+acc302(74)
      acc302(74)=Qspvak4k3*acc302(74)
      acc302(64)=acc302(66)+acc302(64)+acc302(74)+acc302(73)+acc302(65)+acc302(&
      &72)+acc302(71)+acc302(70)+acc302(69)+acc302(68)+acc302(29)+acc302(67)
      acc302(64)=Qspe7*acc302(64)
      acc302(65)=Qspk2-Qspk7
      acc302(65)=acc302(37)*acc302(65)
      acc302(66)=-acc302(44)*acc302(63)
      acc302(67)=QspQ*acc302(27)
      acc302(68)=-Qspval6e7*acc302(46)
      acc302(69)=-Qspvak2e7*acc302(53)
      acc302(70)=Qspvak4k1*acc302(7)
      acc302(71)=Qspvak4k3*acc302(23)
      acc302(72)=Qspval6l5*acc302(58)
      acc302(65)=acc302(72)+acc302(71)+acc302(70)+acc302(69)+acc302(68)+acc302(&
      &21)+acc302(67)+acc302(66)+acc302(65)
      acc302(65)=Qspk2*acc302(65)
      acc302(66)=Qspvak7k2*acc302(55)
      acc302(67)=Qspvae7k2*acc302(51)
      acc302(68)=Qspval6k2*acc302(50)
      acc302(69)=Qspval6e7*acc302(48)
      acc302(70)=Qspvak2e7*acc302(54)
      acc302(66)=-acc302(41)+acc302(68)-acc302(66)+acc302(67)+acc302(69)-acc302&
      &(70)
      acc302(63)=-acc302(66)*acc302(63)
      acc302(66)=Qspvak7k2*acc302(17)
      acc302(67)=Qspvae7k2*acc302(14)
      acc302(68)=Qspval6k2*acc302(2)
      acc302(69)=Qspval6e7*acc302(3)
      acc302(70)=Qspvak2e7*acc302(4)
      acc302(66)=acc302(70)+acc302(69)+acc302(68)+acc302(67)+acc302(9)+acc302(6&
      &6)
      acc302(66)=Qspvak4k1*acc302(66)
      acc302(67)=Qspvak7k2*acc302(49)
      acc302(68)=Qspvae7k2*acc302(47)
      acc302(69)=Qspval6k2*acc302(60)
      acc302(70)=Qspval6e7*acc302(6)
      acc302(71)=Qspvak2e7*acc302(42)
      acc302(67)=acc302(71)+acc302(70)+acc302(69)+acc302(68)+acc302(13)+acc302(&
      &67)
      acc302(67)=Qspvak4k3*acc302(67)
      acc302(68)=QspQ*acc302(20)
      acc302(69)=Qspk7*acc302(46)
      acc302(68)=acc302(68)+acc302(69)
      acc302(68)=Qspval6e7*acc302(68)
      acc302(69)=QspQ*acc302(52)
      acc302(70)=Qspk7*acc302(53)
      acc302(69)=acc302(70)+acc302(16)+acc302(69)
      acc302(69)=Qspvak2e7*acc302(69)
      acc302(70)=Qspval6k2*acc302(30)
      acc302(71)=Qspval6e7*acc302(8)
      acc302(70)=acc302(71)+acc302(31)+acc302(70)
      acc302(70)=Qspvak2l5*acc302(70)
      acc302(71)=Qspvak2l6*acc302(25)
      acc302(72)=QspQ*acc302(38)
      acc302(73)=Qspk7*acc302(39)
      acc302(74)=Qspval6k2*acc302(59)
      acc302(75)=-Qspvak2e7*acc302(8)
      acc302(75)=acc302(35)+acc302(75)
      acc302(75)=Qspval6l5*acc302(75)
      brack=acc302(18)+acc302(63)+acc302(64)+acc302(65)+acc302(66)+acc302(67)+a&
      &cc302(68)+acc302(69)+acc302(70)+acc302(71)+acc302(72)+acc302(73)+acc302(&
      &74)+acc302(75)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram302_sign, shift => diagram302_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd302h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d302
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d302 = 0.0_ki
      d302 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d302, ki), aimag(d302), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd302h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d302
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d302 = 0.0_ki
      d302 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d302, ki), aimag(d302), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d302h1l1
