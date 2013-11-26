module     p5_usbar_epnebbbarg_d305h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d305h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd305h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc305(79)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak3e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak3e7 = dotproduct(Q,spvak3e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc305(1)=abb305(7)
      acc305(2)=abb305(8)
      acc305(3)=abb305(9)
      acc305(4)=abb305(10)
      acc305(5)=abb305(11)
      acc305(6)=abb305(12)
      acc305(7)=abb305(13)
      acc305(8)=abb305(14)
      acc305(9)=abb305(15)
      acc305(10)=abb305(16)
      acc305(11)=abb305(17)
      acc305(12)=abb305(18)
      acc305(13)=abb305(19)
      acc305(14)=abb305(20)
      acc305(15)=abb305(21)
      acc305(16)=abb305(22)
      acc305(17)=abb305(23)
      acc305(18)=abb305(24)
      acc305(19)=abb305(25)
      acc305(20)=abb305(26)
      acc305(21)=abb305(27)
      acc305(22)=abb305(28)
      acc305(23)=abb305(29)
      acc305(24)=abb305(30)
      acc305(25)=abb305(31)
      acc305(26)=abb305(32)
      acc305(27)=abb305(33)
      acc305(28)=abb305(34)
      acc305(29)=abb305(35)
      acc305(30)=abb305(37)
      acc305(31)=abb305(39)
      acc305(32)=abb305(40)
      acc305(33)=abb305(41)
      acc305(34)=abb305(42)
      acc305(35)=abb305(43)
      acc305(36)=abb305(44)
      acc305(37)=abb305(46)
      acc305(38)=abb305(47)
      acc305(39)=abb305(48)
      acc305(40)=abb305(49)
      acc305(41)=abb305(50)
      acc305(42)=abb305(52)
      acc305(43)=abb305(53)
      acc305(44)=abb305(54)
      acc305(45)=abb305(56)
      acc305(46)=abb305(58)
      acc305(47)=abb305(59)
      acc305(48)=abb305(61)
      acc305(49)=abb305(62)
      acc305(50)=abb305(63)
      acc305(51)=abb305(64)
      acc305(52)=abb305(65)
      acc305(53)=abb305(66)
      acc305(54)=abb305(67)
      acc305(55)=abb305(71)
      acc305(56)=abb305(72)
      acc305(57)=abb305(76)
      acc305(58)=abb305(77)
      acc305(59)=abb305(78)
      acc305(60)=acc305(19)*Qspvak1k2
      acc305(61)=Qspvak4k2*acc305(3)
      acc305(62)=Qspval6k2*acc305(8)
      acc305(60)=acc305(62)+acc305(61)+acc305(9)+acc305(60)
      acc305(60)=Qspvak4k1*acc305(60)
      acc305(61)=-acc305(19)*Qspvak3k2
      acc305(62)=Qspvak4k2*acc305(32)
      acc305(63)=Qspval6k2*acc305(58)
      acc305(61)=acc305(63)+acc305(62)+acc305(34)+acc305(61)
      acc305(61)=Qspvak4k3*acc305(61)
      acc305(62)=-Qspk1+Qspk4+Qspk3
      acc305(63)=acc305(46)*acc305(62)
      acc305(64)=Qspk2*acc305(17)
      acc305(65)=Qspval5k1*acc305(37)
      acc305(66)=Qspval5k2*acc305(53)
      acc305(67)=Qspval5k3*acc305(40)
      acc305(68)=Qspval6k1*acc305(1)
      acc305(69)=Qspval6k3*acc305(5)
      acc305(70)=Qspval6k7*acc305(22)
      acc305(71)=Qspvak7k2*acc305(39)
      acc305(72)=QspQ*acc305(23)
      acc305(73)=acc305(62)*Qspvak4k2
      acc305(74)=acc305(59)*acc305(73)
      acc305(75)=acc305(62)*Qspval6k2
      acc305(76)=-acc305(35)*acc305(75)
      acc305(60)=acc305(61)+acc305(60)+acc305(76)+acc305(74)+acc305(72)+acc305(&
      &71)+acc305(70)+acc305(69)+acc305(68)+acc305(67)+acc305(66)+acc305(65)+ac&
      &c305(10)+acc305(64)+acc305(63)
      acc305(60)=Qspe7*acc305(60)
      acc305(61)=-acc305(20)*Qspvak1e7
      acc305(63)=-acc305(6)*Qspvak1k2
      acc305(64)=Qspvak4e7*acc305(16)
      acc305(65)=Qspk7*acc305(21)
      acc305(66)=QspQ*acc305(14)
      acc305(67)=Qspvak4k2*acc305(2)
      acc305(68)=Qspval6k2*acc305(24)
      acc305(61)=acc305(68)+acc305(67)+acc305(66)+acc305(65)+acc305(64)+acc305(&
      &63)+acc305(4)+acc305(61)
      acc305(61)=Qspvak4k1*acc305(61)
      acc305(63)=acc305(20)*Qspvak3e7
      acc305(64)=acc305(6)*Qspvak3k2
      acc305(65)=Qspvak4e7*acc305(56)
      acc305(66)=Qspk7*acc305(55)
      acc305(67)=QspQ*acc305(51)
      acc305(68)=Qspvak4k2*acc305(27)
      acc305(69)=Qspval6k2*acc305(57)
      acc305(63)=acc305(69)+acc305(68)+acc305(67)+acc305(66)+acc305(65)+acc305(&
      &64)+acc305(26)+acc305(63)
      acc305(63)=Qspvak4k3*acc305(63)
      acc305(64)=Qspvak4e7*acc305(50)
      acc305(65)=Qspk7*acc305(48)
      acc305(66)=QspQ*acc305(33)
      acc305(64)=-acc305(64)-acc305(65)+acc305(66)+acc305(38)
      acc305(62)=acc305(64)*acc305(62)
      acc305(64)=Qspvae7k2*acc305(54)
      acc305(65)=Qspval6e7*acc305(44)
      acc305(64)=acc305(65)+acc305(13)+acc305(64)
      acc305(64)=Qspk7*acc305(64)
      acc305(65)=Qspvae7k2*acc305(52)
      acc305(66)=-Qspval6e7*acc305(47)
      acc305(65)=acc305(66)+acc305(11)+acc305(65)
      acc305(65)=QspQ*acc305(65)
      acc305(66)=acc305(28)*Qspvak2k3
      acc305(67)=acc305(25)*Qspvak2k1
      acc305(68)=Qspk2*acc305(29)
      acc305(69)=Qspval5k1*acc305(43)
      acc305(70)=Qspval5k2*acc305(31)
      acc305(71)=Qspval5k3*acc305(45)
      acc305(72)=Qspval6k1*acc305(41)
      acc305(74)=Qspval6k3*acc305(42)
      acc305(76)=Qspval6k7*acc305(36)
      acc305(77)=Qspvak7k2*acc305(18)
      acc305(78)=Qspvae7k2*acc305(12)
      acc305(79)=Qspval6e7*acc305(49)
      acc305(73)=-acc305(30)*acc305(73)
      acc305(75)=acc305(7)*acc305(75)
      brack=acc305(15)+acc305(60)+acc305(61)+acc305(62)+acc305(63)+acc305(64)+a&
      &cc305(65)+acc305(66)+acc305(67)+acc305(68)+acc305(69)+acc305(70)+acc305(&
      &71)+acc305(72)+acc305(73)+acc305(74)+acc305(75)+acc305(76)+acc305(77)+ac&
      &c305(78)+acc305(79)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram305_sign, shift => diagram305_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd305h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d305
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d305 = 0.0_ki
      d305 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d305, ki), aimag(d305), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd305h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d305
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d305 = 0.0_ki
      d305 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d305, ki), aimag(d305), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d305h0l1
