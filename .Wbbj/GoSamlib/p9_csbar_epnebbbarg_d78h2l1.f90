module     p9_csbar_epnebbbarg_d78h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d78h2l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd78h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc78(82)
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak4k1
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      acc78(1)=abb78(9)
      acc78(2)=abb78(10)
      acc78(3)=abb78(11)
      acc78(4)=abb78(12)
      acc78(5)=abb78(13)
      acc78(6)=abb78(14)
      acc78(7)=abb78(15)
      acc78(8)=abb78(16)
      acc78(9)=abb78(17)
      acc78(10)=abb78(18)
      acc78(11)=abb78(19)
      acc78(12)=abb78(20)
      acc78(13)=abb78(21)
      acc78(14)=abb78(22)
      acc78(15)=abb78(23)
      acc78(16)=abb78(24)
      acc78(17)=abb78(25)
      acc78(18)=abb78(26)
      acc78(19)=abb78(27)
      acc78(20)=abb78(28)
      acc78(21)=abb78(29)
      acc78(22)=abb78(30)
      acc78(23)=abb78(31)
      acc78(24)=abb78(32)
      acc78(25)=abb78(33)
      acc78(26)=abb78(34)
      acc78(27)=abb78(35)
      acc78(28)=abb78(36)
      acc78(29)=abb78(37)
      acc78(30)=abb78(38)
      acc78(31)=abb78(39)
      acc78(32)=abb78(40)
      acc78(33)=abb78(41)
      acc78(34)=abb78(42)
      acc78(35)=abb78(43)
      acc78(36)=abb78(44)
      acc78(37)=abb78(45)
      acc78(38)=abb78(46)
      acc78(39)=abb78(47)
      acc78(40)=abb78(48)
      acc78(41)=abb78(49)
      acc78(42)=abb78(53)
      acc78(43)=abb78(54)
      acc78(44)=abb78(56)
      acc78(45)=abb78(58)
      acc78(46)=abb78(62)
      acc78(47)=abb78(63)
      acc78(48)=abb78(65)
      acc78(49)=abb78(66)
      acc78(50)=abb78(67)
      acc78(51)=abb78(69)
      acc78(52)=abb78(70)
      acc78(53)=abb78(71)
      acc78(54)=abb78(72)
      acc78(55)=abb78(74)
      acc78(56)=abb78(75)
      acc78(57)=abb78(77)
      acc78(58)=abb78(78)
      acc78(59)=abb78(79)
      acc78(60)=abb78(80)
      acc78(61)=abb78(82)
      acc78(62)=Qspl5-Qspk1
      acc78(63)=-acc78(54)*acc78(62)
      acc78(64)=acc78(61)*Qspval5k3
      acc78(65)=acc78(55)*Qspval5k7
      acc78(66)=acc78(29)*Qspval5k2
      acc78(67)=QspQ*acc78(42)
      acc78(68)=-Qspvak2k1*acc78(22)
      acc78(69)=Qspk2*acc78(58)
      acc78(70)=Qspval5k1*acc78(30)
      acc78(63)=acc78(70)+acc78(69)+acc78(68)+acc78(67)+acc78(66)+acc78(65)+acc&
      &78(12)+acc78(64)+acc78(63)
      acc78(63)=Qspvak7l6*acc78(63)
      acc78(64)=-Qspval5l6*acc78(28)
      acc78(65)=Qspk2*acc78(13)
      acc78(64)=acc78(65)+acc78(8)+acc78(64)
      acc78(64)=Qspvak7k1*acc78(64)
      acc78(65)=acc78(31)*Qspvak7l5
      acc78(66)=acc78(27)*Qspvak2l5
      acc78(67)=Qspvak2k1*acc78(32)
      acc78(68)=Qspk2*acc78(23)
      acc78(69)=-Qspvak2k1*acc78(26)
      acc78(69)=acc78(1)+acc78(69)
      acc78(69)=Qspvak7k2*acc78(69)
      acc78(70)=-Qspval5k1*acc78(52)
      acc78(71)=Qspvak7l6*acc78(25)
      acc78(64)=acc78(71)+acc78(70)+acc78(69)+acc78(64)+acc78(68)+acc78(67)+acc&
      &78(9)+acc78(65)+acc78(66)
      acc78(64)=Qspvak4k3*acc78(64)
      acc78(65)=-Qspk7+Qspl6
      acc78(65)=acc78(11)*acc78(65)
      acc78(66)=acc78(18)*Qspvak4l6
      acc78(67)=-acc78(55)*Qspvak1l6
      acc78(68)=Qspvak2l6*acc78(37)
      acc78(69)=Qspval5l6*acc78(48)
      acc78(70)=Qspvak7k3*acc78(21)
      acc78(71)=Qspvak7k2*acc78(33)
      acc78(65)=acc78(71)+acc78(70)+acc78(69)+acc78(68)+acc78(67)+acc78(66)+acc&
      &78(7)+acc78(65)
      acc78(65)=Qspval5k1*acc78(65)
      acc78(66)=Qspvak2k7*acc78(35)
      acc78(67)=Qspvak2l6*acc78(24)
      acc78(68)=Qspvak2k3*acc78(15)
      acc78(69)=-Qspval5l6*acc78(29)
      acc78(70)=Qspvak2k1*acc78(41)
      acc78(66)=acc78(70)+acc78(69)+acc78(68)+acc78(67)+acc78(16)+acc78(66)
      acc78(66)=Qspvak7k2*acc78(66)
      acc78(67)=acc78(59)*acc78(62)
      acc78(68)=QspQ*acc78(56)
      acc78(69)=-Qspval5l6*acc78(61)
      acc78(70)=-Qspvak2k1*acc78(2)
      acc78(67)=acc78(70)+acc78(69)+acc78(68)+acc78(67)
      acc78(67)=Qspvak7k3*acc78(67)
      acc78(68)=Qspvak2k7*acc78(36)
      acc78(69)=Qspvak2l6*acc78(22)
      acc78(70)=Qspvak2k3*acc78(2)
      acc78(71)=Qspk2*acc78(46)
      acc78(68)=acc78(71)+acc78(70)+acc78(69)+acc78(10)+acc78(68)
      acc78(68)=Qspvak7k1*acc78(68)
      acc78(69)=Qspk7*acc78(34)
      acc78(70)=Qspvak2k3*acc78(14)
      acc78(71)=Qspvak7k3*acc78(57)
      acc78(69)=acc78(71)+acc78(70)+acc78(6)+acc78(69)
      acc78(69)=Qspk2*acc78(69)
      acc78(62)=-acc78(39)*acc78(62)
      acc78(70)=QspQ*acc78(40)
      acc78(62)=acc78(70)+acc78(62)
      acc78(62)=Qspvak2k3*acc78(62)
      acc78(70)=acc78(51)*Qspval6k1
      acc78(71)=acc78(17)*Qspvak4k1
      acc78(72)=Qspval5k2*acc78(4)
      acc78(73)=Qspval5k3*acc78(45)
      acc78(74)=Qspval5k7*acc78(53)
      acc78(75)=Qspvak2k7*acc78(20)
      acc78(76)=QspQ*acc78(47)
      acc78(77)=Qspk1*acc78(49)
      acc78(78)=Qspl5*acc78(50)
      acc78(79)=Qspvak2l6*acc78(19)
      acc78(80)=Qspk7*acc78(43)
      acc78(81)=Qspk7*acc78(44)
      acc78(81)=acc78(60)+acc78(81)
      acc78(81)=Qspval5l6*acc78(81)
      acc78(82)=Qspk7*acc78(38)
      acc78(82)=acc78(3)+acc78(82)
      acc78(82)=Qspvak2k1*acc78(82)
      brack=acc78(5)+acc78(62)+acc78(63)+acc78(64)+acc78(65)+acc78(66)+acc78(67&
      &)+acc78(68)+acc78(69)+acc78(70)+acc78(71)+acc78(72)+acc78(73)+acc78(74)+&
      &acc78(75)+acc78(76)+acc78(77)+acc78(78)+acc78(79)+acc78(80)+acc78(81)+ac&
      &c78(82)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram78_sign, shift => diagram78_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd78h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d78
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d78 = 0.0_ki
      d78 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d78, ki), aimag(d78), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd78h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d78
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d78 = 0.0_ki
      d78 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d78, ki), aimag(d78), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d78h2l1
