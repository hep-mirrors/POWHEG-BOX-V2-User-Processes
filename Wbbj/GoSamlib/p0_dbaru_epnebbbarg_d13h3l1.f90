module     p0_dbaru_epnebbbarg_d13h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d13h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd13h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc13(77)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      QspQ = dotproduct(Q,Q)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      acc13(1)=abb13(9)
      acc13(2)=abb13(10)
      acc13(3)=abb13(11)
      acc13(4)=abb13(12)
      acc13(5)=abb13(13)
      acc13(6)=abb13(14)
      acc13(7)=abb13(15)
      acc13(8)=abb13(16)
      acc13(9)=abb13(17)
      acc13(10)=abb13(18)
      acc13(11)=abb13(19)
      acc13(12)=abb13(20)
      acc13(13)=abb13(21)
      acc13(14)=abb13(22)
      acc13(15)=abb13(23)
      acc13(16)=abb13(24)
      acc13(17)=abb13(25)
      acc13(18)=abb13(26)
      acc13(19)=abb13(27)
      acc13(20)=abb13(28)
      acc13(21)=abb13(29)
      acc13(22)=abb13(30)
      acc13(23)=abb13(31)
      acc13(24)=abb13(32)
      acc13(25)=abb13(33)
      acc13(26)=abb13(34)
      acc13(27)=abb13(35)
      acc13(28)=abb13(36)
      acc13(29)=abb13(37)
      acc13(30)=abb13(38)
      acc13(31)=abb13(39)
      acc13(32)=abb13(40)
      acc13(33)=abb13(41)
      acc13(34)=abb13(42)
      acc13(35)=abb13(43)
      acc13(36)=abb13(44)
      acc13(37)=abb13(45)
      acc13(38)=abb13(46)
      acc13(39)=abb13(47)
      acc13(40)=abb13(48)
      acc13(41)=abb13(50)
      acc13(42)=abb13(51)
      acc13(43)=abb13(54)
      acc13(44)=abb13(55)
      acc13(45)=abb13(56)
      acc13(46)=abb13(57)
      acc13(47)=abb13(58)
      acc13(48)=abb13(59)
      acc13(49)=abb13(60)
      acc13(50)=abb13(62)
      acc13(51)=abb13(63)
      acc13(52)=abb13(65)
      acc13(53)=abb13(72)
      acc13(54)=abb13(74)
      acc13(55)=abb13(81)
      acc13(56)=abb13(82)
      acc13(57)=abb13(84)
      acc13(58)=abb13(86)
      acc13(59)=abb13(88)
      acc13(60)=abb13(89)
      acc13(61)=abb13(90)
      acc13(62)=acc13(7)*Qspvak1k2
      acc13(63)=acc13(8)*Qspval5k2
      acc13(64)=acc13(15)*Qspvak1k3
      acc13(65)=acc13(16)*Qspvak4k2
      acc13(66)=Qspvak1k2*Qspvak4k3
      acc13(67)=-acc13(27)*acc13(66)
      acc13(68)=acc13(28)*Qspk7
      acc13(69)=acc13(30)*Qspvak7k1
      acc13(70)=acc13(31)*Qspval6k2
      acc13(71)=acc13(32)*Qspk2
      acc13(72)=Qspvak7k2*Qspvak4k3
      acc13(73)=acc13(33)*acc13(72)
      acc13(74)=acc13(40)*Qspvak1k7
      acc13(75)=acc13(48)*Qspk1
      acc13(76)=acc13(53)*Qspvak7k3
      acc13(77)=acc13(54)*Qspvak7k2
      acc13(62)=acc13(77)+acc13(62)+acc13(76)+acc13(75)+acc13(74)+acc13(73)+acc&
      &13(71)+acc13(70)+acc13(69)+acc13(68)+acc13(67)+acc13(23)+acc13(65)+acc13&
      &(64)+acc13(63)
      acc13(62)=Qspvak2l6*acc13(62)
      acc13(63)=acc13(9)*Qspval5k2
      acc13(64)=acc13(20)*Qspk7
      acc13(65)=acc13(22)*Qspvak1k3
      acc13(67)=acc13(24)*Qspvak4k2
      acc13(68)=acc13(29)*Qspvak1k7
      acc13(69)=acc13(34)*Qspk1
      acc13(70)=acc13(38)*Qspvak1k2
      acc13(71)=acc13(39)*Qspk2
      acc13(73)=acc13(41)*Qspvak7k3
      acc13(66)=-acc13(42)*acc13(66)
      acc13(74)=acc13(44)*Qspvak7k1
      acc13(75)=acc13(47)*Qspval6k2
      acc13(76)=acc13(49)*Qspvak7k2
      acc13(72)=-acc13(50)*acc13(72)
      acc13(63)=acc13(76)+acc13(70)+acc13(72)+acc13(75)+acc13(74)+acc13(66)+acc&
      &13(73)+acc13(71)+acc13(69)+acc13(68)+acc13(67)+acc13(65)+acc13(64)+acc13&
      &(63)+acc13(3)
      acc13(63)=Qspvak2l5*acc13(63)
      acc13(64)=acc13(26)*Qspval5k2
      acc13(65)=acc13(58)*Qspk2
      acc13(66)=acc13(59)*Qspval6k2
      acc13(67)=acc13(60)*QspQ
      acc13(68)=Qspvak7l6*acc13(61)
      acc13(69)=Qspvak7l5*acc13(6)
      acc13(70)=Qspvak1l6*acc13(18)
      acc13(71)=Qspvak1l5*acc13(5)
      acc13(64)=acc13(71)+acc13(70)+acc13(69)+acc13(68)+acc13(67)+acc13(66)+acc&
      &13(65)+acc13(64)+acc13(25)
      acc13(64)=Qspvak4k3*acc13(64)
      acc13(65)=acc13(43)*Qspvak1k3
      acc13(66)=-acc13(46)*Qspk2
      acc13(67)=acc13(51)*Qspvak4k2
      acc13(68)=acc13(56)*Qspvak7k3
      acc13(65)=acc13(68)+acc13(67)+acc13(66)+acc13(36)+acc13(65)
      acc13(66)=Qspl5+Qspl6
      acc13(65)=acc13(66)*acc13(65)
      acc13(66)=acc13(4)*Qspvak4k2
      acc13(67)=acc13(21)*Qspvak1k3
      acc13(68)=acc13(45)*Qspk2
      acc13(69)=acc13(55)*Qspvak7k3
      acc13(66)=acc13(69)+acc13(68)+acc13(35)+acc13(67)+acc13(66)
      acc13(66)=QspQ*acc13(66)
      acc13(67)=acc13(1)*Qspvak1k3
      acc13(68)=acc13(2)*Qspvak4k2
      acc13(69)=acc13(57)*Qspvak7k3
      acc13(67)=acc13(69)+acc13(37)+acc13(68)+acc13(67)
      acc13(67)=Qspk2*acc13(67)
      acc13(68)=acc13(10)*Qspk1
      acc13(69)=acc13(12)*Qspvak7k1
      acc13(70)=acc13(13)*Qspval5k2
      acc13(71)=acc13(14)*Qspvak1k7
      acc13(72)=acc13(17)*Qspval6k2
      acc13(73)=acc13(19)*Qspk7
      acc13(74)=acc13(52)*Qspk2**2
      brack=acc13(11)+acc13(62)+acc13(63)+acc13(64)+acc13(65)+acc13(66)+acc13(6&
      &7)+acc13(68)+acc13(69)+acc13(70)+acc13(71)+acc13(72)+acc13(73)+acc13(74)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram13_sign, shift => diagram13_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd13h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d13
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d13 = 0.0_ki
      d13 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d13, ki), aimag(d13), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd13h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d13
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d13 = 0.0_ki
      d13 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d13, ki), aimag(d13), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d13h3l1
