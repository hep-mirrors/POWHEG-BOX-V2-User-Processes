module     p0_dbaru_epnebbbarg_d315h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d315h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd315h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc315(75)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvae7k2
      complex(ki) :: QspQ
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspval6k1
      Qspk2 = dotproduct(Q,k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspk1 = dotproduct(Q,k1)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspe7 = dotproduct(Q,e7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      QspQ = dotproduct(Q,Q)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspval6k1 = dotproduct(Q,spval6k1)
      acc315(1)=abb315(8)
      acc315(2)=abb315(9)
      acc315(3)=abb315(10)
      acc315(4)=abb315(11)
      acc315(5)=abb315(12)
      acc315(6)=abb315(13)
      acc315(7)=abb315(14)
      acc315(8)=abb315(15)
      acc315(9)=abb315(16)
      acc315(10)=abb315(17)
      acc315(11)=abb315(18)
      acc315(12)=abb315(20)
      acc315(13)=abb315(21)
      acc315(14)=abb315(22)
      acc315(15)=abb315(23)
      acc315(16)=abb315(24)
      acc315(17)=abb315(25)
      acc315(18)=abb315(26)
      acc315(19)=abb315(27)
      acc315(20)=abb315(28)
      acc315(21)=abb315(29)
      acc315(22)=abb315(30)
      acc315(23)=abb315(31)
      acc315(24)=abb315(32)
      acc315(25)=abb315(34)
      acc315(26)=abb315(35)
      acc315(27)=abb315(38)
      acc315(28)=abb315(39)
      acc315(29)=abb315(40)
      acc315(30)=abb315(41)
      acc315(31)=abb315(42)
      acc315(32)=abb315(43)
      acc315(33)=abb315(44)
      acc315(34)=abb315(45)
      acc315(35)=abb315(46)
      acc315(36)=abb315(47)
      acc315(37)=abb315(48)
      acc315(38)=abb315(51)
      acc315(39)=abb315(52)
      acc315(40)=abb315(54)
      acc315(41)=abb315(57)
      acc315(42)=abb315(59)
      acc315(43)=abb315(63)
      acc315(44)=abb315(64)
      acc315(45)=abb315(65)
      acc315(46)=abb315(67)
      acc315(47)=abb315(68)
      acc315(48)=abb315(69)
      acc315(49)=abb315(70)
      acc315(50)=abb315(71)
      acc315(51)=abb315(73)
      acc315(52)=abb315(74)
      acc315(53)=abb315(75)
      acc315(54)=abb315(76)
      acc315(55)=abb315(78)
      acc315(56)=abb315(79)
      acc315(57)=abb315(81)
      acc315(58)=abb315(84)
      acc315(59)=abb315(85)
      acc315(60)=abb315(86)
      acc315(61)=-Qspk2+Qspk4+Qspk3
      acc315(62)=acc315(5)*acc315(61)
      acc315(63)=-acc315(60)*Qspval5k3
      acc315(64)=-acc315(54)*Qspval6k3
      acc315(65)=Qspvak4k2*acc315(4)
      acc315(66)=Qspvak4k3*acc315(22)
      acc315(62)=acc315(66)+acc315(65)+acc315(64)+acc315(2)+acc315(63)+acc315(6&
      &2)
      acc315(62)=Qspvak1k2*acc315(62)
      acc315(63)=acc315(56)*acc315(61)
      acc315(64)=Qspvak1k3*acc315(54)
      acc315(65)=Qspvak4k2*acc315(42)
      acc315(66)=Qspvak4k3*acc315(59)
      acc315(63)=acc315(66)+acc315(65)+acc315(47)+acc315(64)+acc315(63)
      acc315(63)=Qspval6k2*acc315(63)
      acc315(64)=Qspvak1k3*acc315(60)
      acc315(64)=acc315(64)+acc315(37)
      acc315(64)=Qspval5k2*acc315(64)
      acc315(65)=-acc315(18)*acc315(61)
      acc315(66)=Qspk1*acc315(46)
      acc315(67)=Qspl6*acc315(34)
      acc315(68)=Qspvak1l6*acc315(28)
      acc315(69)=Qspval5k3*acc315(35)
      acc315(70)=Qspvak4k2*acc315(1)
      acc315(71)=Qspvak4k3*acc315(20)
      acc315(62)=acc315(62)+acc315(63)+acc315(71)+acc315(70)+acc315(69)+acc315(&
      &68)+acc315(67)+acc315(21)+acc315(66)+acc315(65)+acc315(64)
      acc315(62)=Qspe7*acc315(62)
      acc315(63)=-acc315(48)*acc315(61)
      acc315(64)=Qspval6k3*acc315(53)
      acc315(65)=Qspvak1k3*acc315(52)
      acc315(66)=Qspvak4k2*acc315(17)
      acc315(67)=Qspvak4k3*acc315(43)
      acc315(63)=acc315(67)+acc315(66)+acc315(65)+acc315(23)+acc315(64)+acc315(&
      &63)
      acc315(63)=Qspvak7k2*acc315(63)
      acc315(64)=acc315(3)*acc315(61)
      acc315(65)=Qspval5k7*acc315(15)
      acc315(66)=Qspvak4k2*acc315(24)
      acc315(67)=Qspvak4k3*acc315(19)
      acc315(68)=Qspvak7k2*acc315(7)
      acc315(64)=acc315(68)+acc315(67)+acc315(66)+acc315(36)+acc315(65)+acc315(&
      &64)
      acc315(64)=Qspvak1k2*acc315(64)
      acc315(65)=-acc315(55)*acc315(61)
      acc315(66)=Qspvak4k2*acc315(26)
      acc315(67)=Qspvak4k3*acc315(58)
      acc315(68)=Qspvak7k2*acc315(57)
      acc315(65)=acc315(68)+acc315(67)+acc315(66)+acc315(41)+acc315(65)
      acc315(65)=Qspval6k2*acc315(65)
      acc315(66)=Qspvak1k7*acc315(49)
      acc315(67)=Qspvae7k2*acc315(50)
      acc315(68)=QspQ*acc315(16)
      acc315(66)=acc315(66)+acc315(67)+acc315(68)-acc315(10)
      acc315(61)=acc315(66)*acc315(61)
      acc315(66)=Qspvak1k7*acc315(8)
      acc315(67)=Qspvae7k2*acc315(39)
      acc315(68)=QspQ*acc315(11)
      acc315(66)=acc315(68)+acc315(67)+acc315(6)+acc315(66)
      acc315(66)=Qspvak4k2*acc315(66)
      acc315(67)=Qspvak1k7*acc315(40)
      acc315(68)=Qspvae7k2*acc315(51)
      acc315(69)=QspQ*acc315(33)
      acc315(67)=acc315(69)+acc315(68)+acc315(9)+acc315(67)
      acc315(67)=Qspvak4k3*acc315(67)
      acc315(68)=Qspval5e7*acc315(14)
      acc315(69)=Qspvae7k2*acc315(31)
      acc315(68)=acc315(69)+acc315(12)+acc315(68)
      acc315(68)=QspQ*acc315(68)
      acc315(69)=Qspvak1k3*acc315(44)
      acc315(69)=acc315(69)+acc315(32)
      acc315(69)=Qspval5k7*acc315(69)
      acc315(70)=acc315(29)*Qspval6k1
      acc315(71)=Qspk1*acc315(45)
      acc315(72)=Qspl6*acc315(30)
      acc315(73)=Qspvak1l6*acc315(25)
      acc315(74)=Qspval5e7*acc315(27)
      acc315(75)=Qspvae7k2*acc315(38)
      brack=acc315(13)+acc315(61)+acc315(62)+acc315(63)+acc315(64)+acc315(65)+a&
      &cc315(66)+acc315(67)+acc315(68)+acc315(69)+acc315(70)+acc315(71)+acc315(&
      &72)+acc315(73)+acc315(74)+acc315(75)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram315_sign, shift => diagram315_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd315h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d315
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d315 = 0.0_ki
      d315 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d315, ki), aimag(d315), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd315h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d315
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d315 = 0.0_ki
      d315 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d315, ki), aimag(d315), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d315h0l1
