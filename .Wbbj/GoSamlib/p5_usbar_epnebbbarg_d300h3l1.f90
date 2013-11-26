module     p5_usbar_epnebbbarg_d300h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d300h3l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd300h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc300(74)
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak7k1
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak4k1
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      acc300(1)=abb300(7)
      acc300(2)=abb300(8)
      acc300(3)=abb300(9)
      acc300(4)=abb300(10)
      acc300(5)=abb300(11)
      acc300(6)=abb300(12)
      acc300(7)=abb300(13)
      acc300(8)=abb300(14)
      acc300(9)=abb300(15)
      acc300(10)=abb300(16)
      acc300(11)=abb300(17)
      acc300(12)=abb300(18)
      acc300(13)=abb300(19)
      acc300(14)=abb300(20)
      acc300(15)=abb300(21)
      acc300(16)=abb300(22)
      acc300(17)=abb300(23)
      acc300(18)=abb300(24)
      acc300(19)=abb300(25)
      acc300(20)=abb300(26)
      acc300(21)=abb300(27)
      acc300(22)=abb300(28)
      acc300(23)=abb300(29)
      acc300(24)=abb300(30)
      acc300(25)=abb300(31)
      acc300(26)=abb300(32)
      acc300(27)=abb300(33)
      acc300(28)=abb300(34)
      acc300(29)=abb300(35)
      acc300(30)=abb300(36)
      acc300(31)=abb300(37)
      acc300(32)=abb300(41)
      acc300(33)=abb300(43)
      acc300(34)=abb300(45)
      acc300(35)=abb300(46)
      acc300(36)=abb300(47)
      acc300(37)=abb300(48)
      acc300(38)=abb300(51)
      acc300(39)=abb300(52)
      acc300(40)=abb300(53)
      acc300(41)=abb300(60)
      acc300(42)=abb300(70)
      acc300(43)=abb300(71)
      acc300(44)=abb300(72)
      acc300(45)=abb300(73)
      acc300(46)=abb300(74)
      acc300(47)=abb300(75)
      acc300(48)=abb300(77)
      acc300(49)=abb300(78)
      acc300(50)=abb300(79)
      acc300(51)=abb300(82)
      acc300(52)=abb300(83)
      acc300(53)=abb300(85)
      acc300(54)=abb300(86)
      acc300(55)=abb300(87)
      acc300(56)=abb300(96)
      acc300(57)=abb300(101)
      acc300(58)=abb300(102)
      acc300(59)=abb300(105)
      acc300(60)=abb300(106)
      acc300(61)=abb300(107)
      acc300(62)=abb300(108)
      acc300(63)=Qspval6k1*acc300(38)
      acc300(64)=Qspvak7l6*acc300(58)
      acc300(65)=Qspvak2e7*acc300(59)
      acc300(66)=Qspk1*acc300(57)
      acc300(67)=Qspvak2l5*acc300(51)
      acc300(67)=acc300(56)+acc300(67)
      acc300(67)=Qspvak7k1*acc300(67)
      acc300(68)=Qspvak2e7*acc300(61)
      acc300(68)=acc300(4)+acc300(68)
      acc300(68)=QspQ*acc300(68)
      acc300(69)=Qspvak2e7*acc300(60)
      acc300(69)=acc300(34)+acc300(69)
      acc300(69)=Qspk7*acc300(69)
      acc300(63)=acc300(69)+acc300(68)+acc300(67)+acc300(66)+acc300(65)+acc300(&
      &64)+acc300(48)+acc300(63)
      acc300(63)=Qspvak4k3*acc300(63)
      acc300(64)=Qspk1-Qspl6
      acc300(65)=Qspk7-acc300(64)
      acc300(66)=acc300(20)*acc300(65)
      acc300(67)=Qspvak2k3*acc300(30)
      acc300(68)=Qspvak2l6*acc300(19)
      acc300(69)=Qspvak2k7*acc300(17)
      acc300(70)=QspQ*acc300(12)
      acc300(71)=Qspvak2l5*acc300(27)
      acc300(71)=acc300(2)+acc300(71)
      acc300(71)=Qspvak4k3*acc300(71)
      acc300(72)=Qspvak2k1*acc300(1)
      acc300(66)=acc300(72)+acc300(71)+acc300(70)+acc300(69)+acc300(68)+acc300(&
      &3)+acc300(67)+acc300(66)
      acc300(66)=Qspvak2k1*acc300(66)
      acc300(67)=Qspvak2l6*acc300(49)
      acc300(68)=Qspvak2k7*acc300(46)
      acc300(67)=acc300(68)+acc300(43)+acc300(67)
      acc300(67)=Qspvak4k3*acc300(67)
      acc300(68)=acc300(45)*acc300(65)
      acc300(69)=Qspvak2l6*acc300(14)
      acc300(70)=Qspvak2k7*acc300(36)
      acc300(71)=Qspk2*acc300(39)
      acc300(72)=QspQ*acc300(37)
      acc300(66)=acc300(66)+acc300(67)+acc300(72)+acc300(71)+acc300(70)+acc300(&
      &40)+acc300(69)+acc300(68)
      acc300(66)=Qspe7*acc300(66)
      acc300(67)=QspQ*acc300(11)
      acc300(68)=Qspk7*acc300(18)
      acc300(67)=acc300(68)+acc300(6)+acc300(67)
      acc300(67)=Qspvak4k3*acc300(67)
      acc300(68)=acc300(25)*acc300(64)
      acc300(69)=Qspk2*acc300(21)
      acc300(70)=Qspvak7k1*acc300(26)
      acc300(71)=QspQ*acc300(5)
      acc300(72)=Qspk7*acc300(9)
      acc300(67)=acc300(67)+acc300(72)+acc300(71)+acc300(70)+acc300(7)+acc300(6&
      &9)+acc300(68)
      acc300(67)=Qspvak2k1*acc300(67)
      acc300(64)=acc300(53)*acc300(64)
      acc300(68)=Qspvak4k1*acc300(32)
      acc300(69)=Qspvak2e7*acc300(28)
      acc300(70)=Qspk2*acc300(42)
      acc300(71)=QspQ*acc300(8)
      acc300(64)=acc300(71)+acc300(70)+acc300(69)+acc300(16)+acc300(68)+acc300(&
      &64)
      acc300(64)=QspQ*acc300(64)
      acc300(68)=Qspvak2k3*acc300(23)
      acc300(69)=Qspvak2l6*acc300(41)
      acc300(70)=Qspvak2k7*acc300(44)
      acc300(71)=Qspk2*acc300(22)
      acc300(68)=acc300(71)+acc300(70)+acc300(69)+acc300(31)+acc300(68)
      acc300(68)=Qspvak7k1*acc300(68)
      acc300(65)=-QspQ-acc300(65)
      acc300(65)=acc300(29)*acc300(65)
      acc300(69)=Qspvak4k1*acc300(62)
      acc300(70)=Qspvak2e7*acc300(54)
      acc300(71)=Qspk2*acc300(52)
      acc300(65)=acc300(71)+acc300(70)+acc300(35)-acc300(69)+acc300(65)
      acc300(65)=Qspk7*acc300(65)
      acc300(70)=Qspval6k1*acc300(33)
      acc300(71)=Qspvak7l6*acc300(50)
      acc300(72)=Qspvak2e7*acc300(24)
      acc300(73)=Qspvak4k1*acc300(13)
      acc300(73)=acc300(55)+acc300(73)
      acc300(73)=Qspk2*acc300(73)
      acc300(74)=acc300(47)-acc300(69)
      acc300(74)=Qspl6*acc300(74)
      acc300(69)=acc300(10)+acc300(69)
      acc300(69)=Qspk1*acc300(69)
      brack=acc300(15)+acc300(63)+acc300(64)+acc300(65)+acc300(66)+acc300(67)+a&
      &cc300(68)+acc300(69)+acc300(70)+acc300(71)+acc300(72)+acc300(73)+acc300(&
      &74)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram300_sign, shift => diagram300_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd300h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d300
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d300 = 0.0_ki
      d300 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d300, ki), aimag(d300), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd300h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d300
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d300 = 0.0_ki
      d300 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d300, ki), aimag(d300), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d300h3l1
