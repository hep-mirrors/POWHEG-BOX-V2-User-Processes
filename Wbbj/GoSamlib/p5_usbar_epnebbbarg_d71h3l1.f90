module     p5_usbar_epnebbbarg_d71h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d71h3l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd71h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc71(82)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      acc71(1)=abb71(5)
      acc71(2)=abb71(6)
      acc71(3)=abb71(7)
      acc71(4)=abb71(8)
      acc71(5)=abb71(9)
      acc71(6)=abb71(10)
      acc71(7)=abb71(11)
      acc71(8)=abb71(12)
      acc71(9)=abb71(13)
      acc71(10)=abb71(14)
      acc71(11)=abb71(15)
      acc71(12)=abb71(16)
      acc71(13)=abb71(17)
      acc71(14)=abb71(18)
      acc71(15)=abb71(19)
      acc71(16)=abb71(20)
      acc71(17)=abb71(21)
      acc71(18)=abb71(22)
      acc71(19)=abb71(23)
      acc71(20)=abb71(24)
      acc71(21)=abb71(25)
      acc71(22)=abb71(26)
      acc71(23)=abb71(27)
      acc71(24)=abb71(28)
      acc71(25)=abb71(29)
      acc71(26)=abb71(30)
      acc71(27)=abb71(31)
      acc71(28)=abb71(32)
      acc71(29)=abb71(33)
      acc71(30)=abb71(34)
      acc71(31)=abb71(38)
      acc71(32)=abb71(40)
      acc71(33)=abb71(41)
      acc71(34)=abb71(42)
      acc71(35)=abb71(43)
      acc71(36)=abb71(45)
      acc71(37)=abb71(46)
      acc71(38)=abb71(47)
      acc71(39)=abb71(48)
      acc71(40)=abb71(49)
      acc71(41)=abb71(50)
      acc71(42)=abb71(51)
      acc71(43)=abb71(52)
      acc71(44)=abb71(53)
      acc71(45)=abb71(54)
      acc71(46)=abb71(55)
      acc71(47)=abb71(56)
      acc71(48)=abb71(57)
      acc71(49)=abb71(58)
      acc71(50)=abb71(59)
      acc71(51)=abb71(60)
      acc71(52)=abb71(61)
      acc71(53)=abb71(62)
      acc71(54)=abb71(63)
      acc71(55)=abb71(64)
      acc71(56)=abb71(65)
      acc71(57)=abb71(66)
      acc71(58)=abb71(67)
      acc71(59)=abb71(68)
      acc71(60)=abb71(69)
      acc71(61)=abb71(70)
      acc71(62)=abb71(71)
      acc71(63)=abb71(72)
      acc71(64)=abb71(73)
      acc71(65)=abb71(75)
      acc71(66)=abb71(76)
      acc71(67)=abb71(77)
      acc71(68)=abb71(78)
      acc71(69)=abb71(80)
      acc71(70)=abb71(82)
      acc71(71)=abb71(84)
      acc71(72)=Qspk4+Qspk3
      acc71(73)=acc71(72)+Qspk7
      acc71(74)=acc71(37)*acc71(73)
      acc71(75)=Qspvak2k3*acc71(35)
      acc71(76)=Qspvak2k7*acc71(24)
      acc71(77)=Qspvak7k1*acc71(46)
      acc71(78)=Qspvak4k1*acc71(8)
      acc71(79)=-Qspvak2k1*acc71(50)
      acc71(79)=acc71(31)+acc71(79)
      acc71(79)=Qspvak4k3*acc71(79)
      acc71(80)=QspQ*acc71(34)
      acc71(74)=acc71(80)+acc71(79)+acc71(78)+acc71(77)+acc71(76)+acc71(33)+acc&
      &71(75)+acc71(74)
      acc71(74)=Qspe7*acc71(74)
      acc71(75)=Qspvae7k1*acc71(55)
      acc71(76)=Qspvak4k1*acc71(28)
      acc71(77)=Qspvak2e7*acc71(44)
      acc71(78)=Qspvak4k3*acc71(15)
      acc71(75)=acc71(78)+acc71(77)+acc71(76)+acc71(13)+acc71(75)
      acc71(75)=QspQ*acc71(75)
      acc71(76)=Qspvae7k1*acc71(22)
      acc71(77)=Qspvak4k1*acc71(9)
      acc71(78)=Qspvak2e7*acc71(53)
      acc71(76)=acc71(78)+acc71(77)+acc71(23)+acc71(76)
      acc71(76)=Qspk7*acc71(76)
      acc71(77)=Qspvak7k1*acc71(30)
      acc71(78)=Qspvae7k1*acc71(32)
      acc71(79)=Qspvak2e7*acc71(40)
      acc71(77)=acc71(79)+acc71(78)+acc71(17)+acc71(77)
      acc71(77)=Qspvak4k3*acc71(77)
      acc71(78)=acc71(39)*acc71(72)
      acc71(79)=Qspvak3k1*acc71(14)
      acc71(80)=Qspvak4k1*acc71(42)
      acc71(81)=Qspvak2e7*acc71(47)
      acc71(74)=acc71(74)+acc71(75)+acc71(77)+acc71(76)+acc71(81)+acc71(80)+acc&
      &71(71)+acc71(79)+acc71(78)
      acc71(74)=Qspvak2l5*acc71(74)
      acc71(75)=acc71(49)*acc71(73)
      acc71(76)=Qspvak2k3*acc71(64)
      acc71(77)=Qspvak2k7*acc71(70)
      acc71(78)=Qspvak7k1*acc71(63)
      acc71(79)=Qspvak4k1*acc71(11)
      acc71(80)=-Qspvak2k1*acc71(58)
      acc71(80)=acc71(41)+acc71(80)
      acc71(80)=Qspvak4k3*acc71(80)
      acc71(81)=QspQ*acc71(54)
      acc71(75)=acc71(81)+acc71(80)+acc71(79)+acc71(78)+acc71(77)+acc71(38)+acc&
      &71(76)+acc71(75)
      acc71(75)=Qspe7*acc71(75)
      acc71(76)=Qspvae7k1*acc71(62)
      acc71(77)=Qspvak4k1*acc71(56)
      acc71(78)=Qspvak2e7*acc71(60)
      acc71(79)=Qspvak4k3*acc71(65)
      acc71(76)=acc71(79)+acc71(78)+acc71(77)+acc71(43)+acc71(76)
      acc71(76)=QspQ*acc71(76)
      acc71(77)=Qspvae7k1*acc71(52)
      acc71(78)=Qspvak4k1*acc71(48)
      acc71(79)=Qspvak2e7*acc71(59)
      acc71(77)=acc71(79)+acc71(78)+acc71(45)+acc71(77)
      acc71(77)=Qspk7*acc71(77)
      acc71(78)=Qspvak7k1*acc71(68)
      acc71(79)=Qspvae7k1*acc71(67)
      acc71(80)=Qspvak2e7*acc71(66)
      acc71(78)=acc71(80)+acc71(79)+acc71(20)+acc71(78)
      acc71(78)=Qspvak4k3*acc71(78)
      acc71(79)=acc71(51)*acc71(72)
      acc71(80)=Qspvak3k1*acc71(61)
      acc71(81)=Qspvak4k1*acc71(69)
      acc71(82)=Qspvak2e7*acc71(57)
      acc71(75)=acc71(75)+acc71(76)+acc71(78)+acc71(77)+acc71(82)+acc71(81)+acc&
      &71(36)+acc71(80)+acc71(79)
      acc71(75)=Qspvak2l6*acc71(75)
      acc71(76)=-acc71(26)*acc71(73)
      acc71(77)=Qspvak2k1*acc71(6)
      acc71(78)=Qspvak2k1*acc71(18)
      acc71(78)=acc71(2)+acc71(78)
      acc71(78)=Qspvak4k3*acc71(78)
      acc71(79)=QspQ*acc71(25)
      acc71(76)=acc71(79)+acc71(78)+acc71(77)+acc71(10)+acc71(76)
      acc71(76)=QspQ*acc71(76)
      acc71(73)=acc71(27)*acc71(73)
      acc71(77)=Qspvak2k1*acc71(5)
      acc71(78)=Qspvak4k3*acc71(3)
      acc71(79)=QspQ*acc71(21)
      acc71(73)=acc71(79)+acc71(78)+acc71(77)+acc71(4)+acc71(73)
      acc71(73)=Qspe7*acc71(73)
      acc71(72)=-acc71(29)*acc71(72)
      acc71(77)=Qspvak2k1*acc71(1)
      acc71(78)=Qspvak2k1*acc71(12)
      acc71(78)=acc71(19)+acc71(78)
      acc71(78)=Qspk7*acc71(78)
      acc71(79)=Qspvak2k1*acc71(7)
      acc71(79)=acc71(16)+acc71(79)
      acc71(79)=Qspvak4k3*acc71(79)
      brack=acc71(72)+acc71(73)+acc71(74)+acc71(75)+acc71(76)+acc71(77)+acc71(7&
      &8)+acc71(79)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram71_sign, shift => diagram71_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd71h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d71
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d71 = 0.0_ki
      d71 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d71, ki), aimag(d71), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd71h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d71
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d71 = 0.0_ki
      d71 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d71, ki), aimag(d71), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d71h3l1
