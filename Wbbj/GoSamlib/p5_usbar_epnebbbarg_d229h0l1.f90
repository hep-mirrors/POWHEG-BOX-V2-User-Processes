module     p5_usbar_epnebbbarg_d229h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d229h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd229h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc229(87)
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: QspQ
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspl5 = dotproduct(Q,l5)
      Qspk2 = dotproduct(Q,k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      QspQ = dotproduct(Q,Q)
      acc229(1)=abb229(13)
      acc229(2)=abb229(14)
      acc229(3)=abb229(15)
      acc229(4)=abb229(16)
      acc229(5)=abb229(17)
      acc229(6)=abb229(18)
      acc229(7)=abb229(19)
      acc229(8)=abb229(20)
      acc229(9)=abb229(21)
      acc229(10)=abb229(22)
      acc229(11)=abb229(23)
      acc229(12)=abb229(24)
      acc229(13)=abb229(25)
      acc229(14)=abb229(26)
      acc229(15)=abb229(27)
      acc229(16)=abb229(28)
      acc229(17)=abb229(29)
      acc229(18)=abb229(30)
      acc229(19)=abb229(31)
      acc229(20)=abb229(32)
      acc229(21)=abb229(33)
      acc229(22)=abb229(34)
      acc229(23)=abb229(35)
      acc229(24)=abb229(36)
      acc229(25)=abb229(37)
      acc229(26)=abb229(38)
      acc229(27)=abb229(39)
      acc229(28)=abb229(40)
      acc229(29)=abb229(41)
      acc229(30)=abb229(42)
      acc229(31)=abb229(43)
      acc229(32)=abb229(44)
      acc229(33)=abb229(45)
      acc229(34)=abb229(46)
      acc229(35)=abb229(56)
      acc229(36)=abb229(60)
      acc229(37)=abb229(69)
      acc229(38)=abb229(71)
      acc229(39)=abb229(76)
      acc229(40)=abb229(109)
      acc229(41)=abb229(113)
      acc229(42)=abb229(131)
      acc229(43)=abb229(152)
      acc229(44)=abb229(155)
      acc229(45)=abb229(167)
      acc229(46)=abb229(171)
      acc229(47)=abb229(186)
      acc229(48)=abb229(200)
      acc229(49)=abb229(218)
      acc229(50)=abb229(239)
      acc229(51)=abb229(241)
      acc229(52)=abb229(242)
      acc229(53)=abb229(252)
      acc229(54)=abb229(256)
      acc229(55)=abb229(258)
      acc229(56)=abb229(261)
      acc229(57)=abb229(268)
      acc229(58)=abb229(269)
      acc229(59)=abb229(270)
      acc229(60)=acc229(20)*Qspval5e7
      acc229(61)=acc229(41)*Qspval5k2
      acc229(62)=acc229(43)*Qspvae7k2
      acc229(63)=acc229(45)*Qspl5
      acc229(64)=acc229(46)*Qspk2
      acc229(65)=acc229(48)*Qspval6e7
      acc229(66)=acc229(49)*Qspe7
      acc229(67)=acc229(50)*Qspvak7k2
      acc229(68)=acc229(51)*Qspl6
      acc229(69)=acc229(52)*Qspk7
      acc229(70)=acc229(55)*Qspval6l5
      acc229(71)=acc229(56)*Qspval6k7
      acc229(72)=acc229(57)*Qspval6k2
      acc229(73)=acc229(58)*Qspval5l6
      acc229(74)=acc229(59)*Qspval5k7
      acc229(60)=acc229(74)+acc229(73)+acc229(72)+acc229(71)+acc229(70)+acc229(&
      &69)+acc229(68)+acc229(67)+acc229(66)+acc229(65)+acc229(64)+acc229(63)+ac&
      &c229(62)+acc229(61)+acc229(60)+acc229(19)
      acc229(60)=Qspvak4k1*acc229(60)
      acc229(61)=acc229(9)*Qspe7
      acc229(62)=acc229(10)*Qspl5
      acc229(63)=acc229(11)*Qspl6
      acc229(64)=acc229(14)*Qspk7
      acc229(65)=acc229(18)*Qspk2
      acc229(66)=acc229(23)*Qspval6e7
      acc229(67)=acc229(24)*Qspval6l5
      acc229(68)=acc229(25)*Qspval5e7
      acc229(69)=acc229(26)*Qspvae7k2
      acc229(70)=acc229(28)*Qspvak7k2
      acc229(71)=acc229(29)*Qspval5k2
      acc229(72)=acc229(31)*Qspval6k7
      acc229(73)=acc229(32)*Qspval6k2
      acc229(74)=acc229(33)*Qspval5l6
      acc229(75)=acc229(34)*Qspval5k7
      acc229(61)=acc229(75)+acc229(74)+acc229(73)+acc229(72)+acc229(71)+acc229(&
      &70)+acc229(69)+acc229(68)+acc229(67)+acc229(66)+acc229(65)+acc229(64)+ac&
      &c229(63)+acc229(62)+acc229(61)+acc229(8)
      acc229(61)=Qspvak2k1*acc229(61)
      acc229(62)=Qspl6+Qspl5
      acc229(62)=acc229(53)*acc229(62)
      acc229(63)=acc229(1)*Qspval6l5
      acc229(64)=acc229(3)*Qspval5l6
      acc229(65)=acc229(5)*Qspval5k2
      acc229(66)=acc229(6)*Qspk2
      acc229(67)=acc229(12)*Qspe7
      acc229(68)=acc229(35)*Qspval6e7
      acc229(69)=acc229(36)*Qspval5k7
      acc229(70)=acc229(39)*Qspval6k2
      acc229(71)=acc229(40)*Qspval5e7
      acc229(72)=acc229(42)*Qspvae7k2
      acc229(73)=acc229(44)*Qspvak7k2
      acc229(74)=acc229(47)*Qspval6k7
      acc229(75)=acc229(54)*Qspk7
      acc229(76)=Qspvae7k1*acc229(27)
      acc229(77)=Qspvak7k1*acc229(7)
      acc229(78)=Qspval6k1*acc229(4)
      acc229(79)=Qspval5k1*acc229(2)
      acc229(80)=Qspvak4k3*acc229(37)
      acc229(81)=Qspvak4k2*acc229(38)
      acc229(82)=Qspvak3k1*acc229(21)
      acc229(83)=Qspvak2k4*acc229(15)
      acc229(84)=Qspvak2k3*acc229(22)
      acc229(85)=Qspk4*acc229(17)
      acc229(86)=Qspk3*acc229(30)
      acc229(87)=QspQ*acc229(16)
      brack=acc229(13)+acc229(60)+acc229(61)+acc229(62)+acc229(63)+acc229(64)+a&
      &cc229(65)+acc229(66)+acc229(67)+acc229(68)+acc229(69)+acc229(70)+acc229(&
      &71)+acc229(72)+acc229(73)+acc229(74)+acc229(75)+acc229(76)+acc229(77)+ac&
      &c229(78)+acc229(79)+acc229(80)+acc229(81)+acc229(82)+acc229(83)+acc229(8&
      &4)+acc229(85)+acc229(86)+acc229(87)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram229_sign, shift => diagram229_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd229h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d229
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d229 = 0.0_ki
      d229 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d229, ki), aimag(d229), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd229h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d229
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d229 = 0.0_ki
      d229 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d229, ki), aimag(d229), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d229h0l1
