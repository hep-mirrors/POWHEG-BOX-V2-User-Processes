module     p5_usbar_epnebbbarg_d73h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d73h2l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd73h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc73(71)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvae7k3
      complex(ki) :: QspQ
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak2k3
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      QspQ = dotproduct(Q,Q)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      acc73(1)=abb73(7)
      acc73(2)=abb73(8)
      acc73(3)=abb73(9)
      acc73(4)=abb73(10)
      acc73(5)=abb73(11)
      acc73(6)=abb73(12)
      acc73(7)=abb73(13)
      acc73(8)=abb73(14)
      acc73(9)=abb73(15)
      acc73(10)=abb73(16)
      acc73(11)=abb73(17)
      acc73(12)=abb73(18)
      acc73(13)=abb73(19)
      acc73(14)=abb73(20)
      acc73(15)=abb73(21)
      acc73(16)=abb73(23)
      acc73(17)=abb73(25)
      acc73(18)=abb73(26)
      acc73(19)=abb73(28)
      acc73(20)=abb73(30)
      acc73(21)=abb73(32)
      acc73(22)=abb73(34)
      acc73(23)=abb73(35)
      acc73(24)=abb73(36)
      acc73(25)=abb73(37)
      acc73(26)=abb73(40)
      acc73(27)=abb73(41)
      acc73(28)=abb73(43)
      acc73(29)=abb73(44)
      acc73(30)=abb73(46)
      acc73(31)=abb73(47)
      acc73(32)=abb73(49)
      acc73(33)=abb73(52)
      acc73(34)=abb73(54)
      acc73(35)=abb73(55)
      acc73(36)=abb73(56)
      acc73(37)=abb73(57)
      acc73(38)=abb73(60)
      acc73(39)=abb73(63)
      acc73(40)=abb73(64)
      acc73(41)=abb73(66)
      acc73(42)=abb73(69)
      acc73(43)=abb73(70)
      acc73(44)=abb73(71)
      acc73(45)=abb73(72)
      acc73(46)=abb73(73)
      acc73(47)=abb73(74)
      acc73(48)=abb73(75)
      acc73(49)=abb73(77)
      acc73(50)=abb73(78)
      acc73(51)=abb73(79)
      acc73(52)=abb73(81)
      acc73(53)=abb73(82)
      acc73(54)=abb73(83)
      acc73(55)=abb73(84)
      acc73(56)=Qspk4+Qspk3
      acc73(57)=acc73(56)-Qspk2
      acc73(58)=acc73(51)*acc73(57)
      acc73(59)=acc73(49)*Qspval5k2
      acc73(60)=acc73(45)*Qspvak7k2
      acc73(61)=acc73(8)*Qspvae7k2
      acc73(62)=-acc73(53)*Qspvak7k3
      acc73(63)=acc73(39)*Qspval5k3
      acc73(64)=-acc73(23)*Qspvae7k3
      acc73(65)=QspQ*acc73(33)
      acc73(66)=Qspval5k1*acc73(55)
      acc73(67)=Qspvak7k1*acc73(54)
      acc73(68)=Qspvae7k1*acc73(52)
      acc73(69)=Qspvak2k1*acc73(14)
      acc73(70)=Qspvak2k1*acc73(15)
      acc73(70)=acc73(24)+acc73(70)
      acc73(70)=Qspvak4k3*acc73(70)
      acc73(58)=acc73(70)+acc73(69)+acc73(68)+acc73(67)+acc73(66)+acc73(65)+acc&
      &73(64)+acc73(63)+acc73(62)+acc73(61)+acc73(22)+acc73(59)+acc73(60)+acc73&
      &(58)
      acc73(58)=Qspvak2l6*acc73(58)
      acc73(59)=Qspval5l6*acc73(9)
      acc73(60)=Qspvak7l6*acc73(13)
      acc73(61)=Qspvae7l6*acc73(7)
      acc73(59)=acc73(61)+acc73(60)+acc73(6)+acc73(59)
      acc73(59)=Qspvak2k1*acc73(59)
      acc73(60)=Qspvak2l5*acc73(18)
      acc73(61)=Qspvak2k7*acc73(41)
      acc73(62)=Qspvak2e7*acc73(16)
      acc73(63)=-acc73(21)*Qspvak2k4
      acc73(64)=Qspval5l6*acc73(29)
      acc73(65)=Qspvak7l6*acc73(30)
      acc73(66)=Qspvae7l6*acc73(28)
      acc73(67)=Qspk2*acc73(11)
      acc73(68)=Qspvak2k3*acc73(1)
      acc73(59)=acc73(68)+acc73(67)+acc73(59)+acc73(66)+acc73(65)+acc73(64)+acc&
      &73(63)+acc73(62)+acc73(61)+acc73(10)+acc73(60)
      acc73(59)=Qspvak4k3*acc73(59)
      acc73(57)=acc73(19)*acc73(57)
      acc73(60)=QspQ*acc73(21)
      acc73(61)=Qspval5k1*acc73(2)
      acc73(62)=Qspvak7k1*acc73(27)
      acc73(63)=Qspvae7k1*acc73(26)
      acc73(64)=-Qspval5l6*acc73(39)
      acc73(65)=Qspvak7l6*acc73(53)
      acc73(66)=Qspvae7l6*acc73(23)
      acc73(67)=Qspvak2k1*acc73(3)
      acc73(57)=acc73(67)+acc73(66)+acc73(65)+acc73(64)+acc73(63)+acc73(62)+acc&
      &73(61)+acc73(60)+acc73(57)
      acc73(57)=Qspvak2k3*acc73(57)
      acc73(60)=Qspval5k1*acc73(32)
      acc73(61)=Qspvak7k1*acc73(48)
      acc73(62)=Qspvae7k1*acc73(44)
      acc73(63)=Qspval5l6*acc73(50)
      acc73(64)=Qspvak7l6*acc73(46)
      acc73(65)=Qspvae7l6*acc73(38)
      acc73(66)=Qspvak2k1*acc73(5)
      acc73(60)=acc73(66)+acc73(65)+acc73(64)+acc73(63)+acc73(62)+acc73(61)+acc&
      &73(17)+acc73(60)
      acc73(60)=Qspk2*acc73(60)
      acc73(56)=acc73(31)*acc73(56)
      acc73(61)=Qspvak2l5*acc73(25)
      acc73(62)=Qspvak2k7*acc73(40)
      acc73(63)=Qspvak2e7*acc73(34)
      acc73(64)=QspQ*acc73(20)
      acc73(65)=Qspval5k1*acc73(42)
      acc73(66)=Qspvak7k1*acc73(47)
      acc73(67)=Qspvae7k1*acc73(43)
      acc73(68)=Qspval5l6*acc73(35)
      acc73(69)=Qspvak7l6*acc73(36)
      acc73(70)=Qspvae7l6*acc73(37)
      acc73(71)=Qspvak2k1*acc73(4)
      brack=acc73(12)+acc73(56)+acc73(57)+acc73(58)+acc73(59)+acc73(60)+acc73(6&
      &1)+acc73(62)+acc73(63)+acc73(64)+acc73(65)+acc73(66)+acc73(67)+acc73(68)&
      &+acc73(69)+acc73(70)+acc73(71)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram73_sign, shift => diagram73_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd73h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d73
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d73 = 0.0_ki
      d73 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d73, ki), aimag(d73), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd73h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d73
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d73 = 0.0_ki
      d73 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d73, ki), aimag(d73), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d73h2l1
