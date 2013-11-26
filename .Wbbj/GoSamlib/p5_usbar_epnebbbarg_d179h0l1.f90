module     p5_usbar_epnebbbarg_d179h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d179h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd179h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc179(75)
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspk3
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspl5
      complex(ki) :: QspQ
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspe7 = dotproduct(Q,e7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspk2 = dotproduct(Q,k2)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspk3 = dotproduct(Q,k3)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspl5 = dotproduct(Q,l5)
      QspQ = dotproduct(Q,Q)
      acc179(1)=abb179(11)
      acc179(2)=abb179(12)
      acc179(3)=abb179(13)
      acc179(4)=abb179(14)
      acc179(5)=abb179(15)
      acc179(6)=abb179(16)
      acc179(7)=abb179(17)
      acc179(8)=abb179(18)
      acc179(9)=abb179(19)
      acc179(10)=abb179(20)
      acc179(11)=abb179(21)
      acc179(12)=abb179(22)
      acc179(13)=abb179(23)
      acc179(14)=abb179(24)
      acc179(15)=abb179(25)
      acc179(16)=abb179(26)
      acc179(17)=abb179(27)
      acc179(18)=abb179(28)
      acc179(19)=abb179(29)
      acc179(20)=abb179(30)
      acc179(21)=abb179(31)
      acc179(22)=abb179(32)
      acc179(23)=abb179(33)
      acc179(24)=abb179(34)
      acc179(25)=abb179(35)
      acc179(26)=abb179(36)
      acc179(27)=abb179(37)
      acc179(28)=abb179(38)
      acc179(29)=abb179(40)
      acc179(30)=abb179(41)
      acc179(31)=abb179(42)
      acc179(32)=abb179(43)
      acc179(33)=abb179(44)
      acc179(34)=abb179(45)
      acc179(35)=abb179(46)
      acc179(36)=abb179(47)
      acc179(37)=abb179(48)
      acc179(38)=abb179(49)
      acc179(39)=abb179(50)
      acc179(40)=abb179(51)
      acc179(41)=abb179(54)
      acc179(42)=abb179(55)
      acc179(43)=abb179(56)
      acc179(44)=abb179(58)
      acc179(45)=abb179(62)
      acc179(46)=abb179(64)
      acc179(47)=abb179(68)
      acc179(48)=abb179(69)
      acc179(49)=abb179(71)
      acc179(50)=abb179(78)
      acc179(51)=abb179(79)
      acc179(52)=abb179(84)
      acc179(53)=abb179(86)
      acc179(54)=abb179(87)
      acc179(55)=abb179(95)
      acc179(56)=abb179(155)
      acc179(57)=abb179(238)
      acc179(58)=abb179(245)
      acc179(59)=acc179(40)*Qspvae7k2
      acc179(60)=acc179(43)*Qspval6k2
      acc179(61)=acc179(45)*Qspe7
      acc179(62)=acc179(48)*Qspval6e7
      acc179(63)=acc179(50)*Qspk2
      acc179(64)=acc179(51)*Qspval5e7
      acc179(65)=acc179(52)*Qspvak7k2
      acc179(66)=acc179(53)*Qspval5k7
      acc179(67)=acc179(54)*Qspval5l6
      acc179(59)=acc179(67)+acc179(66)+acc179(65)+acc179(64)+acc179(63)+acc179(&
      &62)+acc179(61)+acc179(60)+acc179(59)+acc179(38)
      acc179(59)=Qspvak4k3*acc179(59)
      acc179(60)=acc179(5)*Qspval6e7
      acc179(61)=acc179(6)*Qspval6k2
      acc179(62)=acc179(10)*Qspval5e7
      acc179(63)=acc179(14)*Qspvae7k2
      acc179(64)=acc179(15)*Qspvak7k2
      acc179(65)=acc179(30)*Qspval5l6
      acc179(66)=acc179(36)*Qspe7
      acc179(67)=acc179(37)*Qspval5k7
      acc179(68)=acc179(49)*Qspk2
      acc179(60)=acc179(68)+acc179(67)+acc179(66)+acc179(65)+acc179(27)+acc179(&
      &64)+acc179(63)+acc179(62)+acc179(61)+acc179(60)
      acc179(60)=Qspvak4k1*acc179(60)
      acc179(61)=acc179(3)*Qspe7
      acc179(62)=acc179(11)*Qspk2
      acc179(63)=acc179(16)*Qspval5l6
      acc179(64)=acc179(17)*Qspval6k2
      acc179(65)=acc179(18)*Qspval6e7
      acc179(66)=acc179(31)*Qspval5e7
      acc179(67)=acc179(33)*Qspvae7k2
      acc179(68)=acc179(34)*Qspvak7k2
      acc179(69)=acc179(35)*Qspval5k7
      acc179(61)=acc179(69)+acc179(68)+acc179(67)+acc179(66)+acc179(65)+acc179(&
      &64)+acc179(63)+acc179(62)+acc179(61)+acc179(2)
      acc179(61)=Qspvak2k1*acc179(61)
      acc179(62)=-acc179(9)*Qspval6e7
      acc179(63)=acc179(19)*Qspval6k2
      acc179(64)=-acc179(22)*Qspval5l6
      acc179(65)=acc179(24)*Qspvae7k2
      acc179(66)=acc179(26)*Qspval5k7
      acc179(67)=-acc179(29)*Qspvak7k2
      acc179(68)=acc179(44)*Qspval5e7
      acc179(69)=-acc179(46)*Qspk2
      acc179(70)=acc179(57)*Qspe7
      acc179(62)=acc179(70)+acc179(56)+acc179(69)+acc179(68)+acc179(67)+acc179(&
      &66)+acc179(65)+acc179(64)+acc179(63)+acc179(62)
      acc179(63)=-Qspk4+Qspk1-Qspk3
      acc179(62)=acc179(63)*acc179(62)
      acc179(63)=-acc179(58)*acc179(63)
      acc179(64)=acc179(4)*Qspvak2k1
      acc179(65)=acc179(41)*Qspvak4k1
      acc179(66)=-acc179(47)*Qspvak4k3
      acc179(63)=acc179(66)+acc179(65)-acc179(12)+acc179(64)+acc179(63)
      acc179(64)=Qspl6+Qspk7
      acc179(63)=acc179(64)*acc179(63)
      acc179(64)=acc179(1)*Qspval6e7
      acc179(65)=acc179(7)*Qspval6k2
      acc179(66)=acc179(8)*Qspvae7k2
      acc179(67)=acc179(13)*Qspk2
      acc179(68)=acc179(21)*Qspval5k7
      acc179(69)=acc179(23)*Qspvak7k2
      acc179(70)=acc179(28)*Qspval5e7
      acc179(71)=acc179(32)*Qspval5l6
      acc179(72)=acc179(42)*Qspe7
      acc179(73)=Qspvak2k3*acc179(20)
      acc179(74)=Qspl5*acc179(55)
      acc179(75)=QspQ*acc179(25)
      brack=acc179(39)+acc179(59)+acc179(60)+acc179(61)+acc179(62)+acc179(63)+a&
      &cc179(64)+acc179(65)+acc179(66)+acc179(67)+acc179(68)+acc179(69)+acc179(&
      &70)+acc179(71)+acc179(72)+acc179(73)+acc179(74)+acc179(75)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram179_sign, shift => diagram179_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd179h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d179
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d179 = 0.0_ki
      d179 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d179, ki), aimag(d179), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd179h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d179
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d179 = 0.0_ki
      d179 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d179, ki), aimag(d179), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d179h0l1
