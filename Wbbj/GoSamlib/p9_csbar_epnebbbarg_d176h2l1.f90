module     p9_csbar_epnebbbarg_d176h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d176h2l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd176h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc176(82)
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvae7k7
      complex(ki) :: Qspvak7e7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvae7k7 = dotproduct(Q,spvae7k7)
      Qspvak7e7 = dotproduct(Q,spvak7e7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      acc176(1)=abb176(12)
      acc176(2)=abb176(13)
      acc176(3)=abb176(14)
      acc176(4)=abb176(15)
      acc176(5)=abb176(16)
      acc176(6)=abb176(17)
      acc176(7)=abb176(18)
      acc176(8)=abb176(19)
      acc176(9)=abb176(20)
      acc176(10)=abb176(21)
      acc176(11)=abb176(22)
      acc176(12)=abb176(23)
      acc176(13)=abb176(24)
      acc176(14)=abb176(25)
      acc176(15)=abb176(26)
      acc176(16)=abb176(27)
      acc176(17)=abb176(28)
      acc176(18)=abb176(29)
      acc176(19)=abb176(30)
      acc176(20)=abb176(31)
      acc176(21)=abb176(37)
      acc176(22)=abb176(40)
      acc176(23)=abb176(41)
      acc176(24)=abb176(42)
      acc176(25)=abb176(44)
      acc176(26)=abb176(45)
      acc176(27)=abb176(46)
      acc176(28)=abb176(49)
      acc176(29)=abb176(50)
      acc176(30)=abb176(51)
      acc176(31)=abb176(53)
      acc176(32)=abb176(55)
      acc176(33)=abb176(56)
      acc176(34)=abb176(57)
      acc176(35)=abb176(58)
      acc176(36)=abb176(60)
      acc176(37)=abb176(61)
      acc176(38)=abb176(63)
      acc176(39)=abb176(64)
      acc176(40)=abb176(65)
      acc176(41)=abb176(66)
      acc176(42)=abb176(69)
      acc176(43)=abb176(70)
      acc176(44)=abb176(72)
      acc176(45)=abb176(73)
      acc176(46)=abb176(74)
      acc176(47)=abb176(75)
      acc176(48)=abb176(78)
      acc176(49)=abb176(79)
      acc176(50)=abb176(80)
      acc176(51)=abb176(81)
      acc176(52)=abb176(82)
      acc176(53)=acc176(8)*Qspvak2l6
      acc176(54)=acc176(21)*Qspvak2l5
      acc176(55)=acc176(32)*Qspvae7l6
      acc176(56)=acc176(49)*Qspvak2e7
      acc176(57)=acc176(50)*Qspvak2k7
      acc176(58)=acc176(51)*Qspvak7l6
      acc176(59)=acc176(52)*Qspval5l6
      acc176(53)=acc176(59)+acc176(58)+acc176(57)+acc176(56)+acc176(55)+acc176(&
      &54)+acc176(12)+acc176(53)
      acc176(53)=Qspvak4k1*acc176(53)
      acc176(54)=acc176(28)*Qspvak2l5
      acc176(55)=acc176(30)*Qspvae7l6
      acc176(56)=acc176(33)*Qspvak2e7
      acc176(57)=acc176(34)*Qspvak7l6
      acc176(58)=acc176(35)*Qspval5l6
      acc176(59)=acc176(37)*Qspvak2k7
      acc176(60)=acc176(39)*Qspvak2l6
      acc176(54)=acc176(60)+acc176(59)+acc176(58)+acc176(57)+acc176(56)+acc176(&
      &55)+acc176(54)+acc176(25)
      acc176(54)=Qspvak2k3*acc176(54)
      acc176(55)=acc176(2)*Qspvak2l5
      acc176(56)=acc176(6)*Qspvae7l6
      acc176(57)=acc176(7)*Qspvak2e7
      acc176(58)=acc176(9)*Qspvak2k7
      acc176(59)=acc176(13)*Qspvak7l6
      acc176(60)=acc176(15)*Qspval5l6
      acc176(61)=acc176(18)*Qspvak2l6
      acc176(55)=acc176(61)+acc176(60)+acc176(59)+acc176(58)+acc176(57)+acc176(&
      &56)+acc176(55)+acc176(3)
      acc176(55)=Qspvak2k1*acc176(55)
      acc176(56)=acc176(5)*Qspvak2l6
      acc176(57)=acc176(17)*Qspvak2l5
      acc176(58)=acc176(22)*Qspvak2e7
      acc176(59)=acc176(27)*Qspval5l6
      acc176(60)=acc176(36)*Qspvak2k7
      acc176(61)=acc176(45)*Qspvak7l6
      acc176(62)=Qspvae7k7*acc176(29)
      acc176(63)=Qspvak7e7*acc176(31)
      acc176(64)=Qspvae7l5*acc176(38)
      acc176(65)=Qspval5e7*acc176(23)
      acc176(66)=Qspvak4e7*acc176(40)
      acc176(67)=Qspvae7k2*acc176(41)
      acc176(68)=Qspvae7k1*acc176(43)
      acc176(69)=Qspvak7l5*acc176(11)
      acc176(70)=Qspvak7k2*acc176(46)
      acc176(71)=Qspvak7k1*acc176(14)
      acc176(72)=Qspval5k7*acc176(19)
      acc176(73)=Qspval5k2*acc176(42)
      acc176(74)=Qspval5k1*acc176(1)
      acc176(75)=Qspvak4k7*acc176(47)
      acc176(76)=Qspvak4l6*acc176(44)
      acc176(77)=Qspvak4l5*acc176(48)
      acc176(78)=Qspk7*acc176(10)
      acc176(79)=Qspl6*acc176(16)
      acc176(80)=Qspl5*acc176(20)
      acc176(81)=Qspk2*acc176(24)
      acc176(82)=QspQ*acc176(26)
      brack=acc176(4)+acc176(53)+acc176(54)+acc176(55)+acc176(56)+acc176(57)+ac&
      &c176(58)+acc176(59)+acc176(60)+acc176(61)+acc176(62)+acc176(63)+acc176(6&
      &4)+acc176(65)+acc176(66)+acc176(67)+acc176(68)+acc176(69)+acc176(70)+acc&
      &176(71)+acc176(72)+acc176(73)+acc176(74)+acc176(75)+acc176(76)+acc176(77&
      &)+acc176(78)+acc176(79)+acc176(80)+acc176(81)+acc176(82)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram176_sign, shift => diagram176_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd176h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d176
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d176 = 0.0_ki
      d176 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d176, ki), aimag(d176), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd176h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d176
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d176 = 0.0_ki
      d176 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d176, ki), aimag(d176), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d176h2l1