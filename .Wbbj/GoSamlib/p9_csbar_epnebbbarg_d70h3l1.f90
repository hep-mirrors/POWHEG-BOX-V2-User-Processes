module     p9_csbar_epnebbbarg_d70h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d70h3l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd70h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc70(98)
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspe7
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspe7 = dotproduct(Q,e7)
      acc70(1)=abb70(5)
      acc70(2)=abb70(6)
      acc70(3)=abb70(7)
      acc70(4)=abb70(8)
      acc70(5)=abb70(9)
      acc70(6)=abb70(10)
      acc70(7)=abb70(11)
      acc70(8)=abb70(12)
      acc70(9)=abb70(13)
      acc70(10)=abb70(14)
      acc70(11)=abb70(15)
      acc70(12)=abb70(16)
      acc70(13)=abb70(17)
      acc70(14)=abb70(18)
      acc70(15)=abb70(19)
      acc70(16)=abb70(20)
      acc70(17)=abb70(21)
      acc70(18)=abb70(24)
      acc70(19)=abb70(26)
      acc70(20)=abb70(27)
      acc70(21)=abb70(29)
      acc70(22)=abb70(30)
      acc70(23)=abb70(31)
      acc70(24)=abb70(33)
      acc70(25)=abb70(34)
      acc70(26)=abb70(36)
      acc70(27)=abb70(38)
      acc70(28)=abb70(39)
      acc70(29)=abb70(40)
      acc70(30)=abb70(41)
      acc70(31)=abb70(42)
      acc70(32)=abb70(43)
      acc70(33)=abb70(44)
      acc70(34)=abb70(45)
      acc70(35)=abb70(46)
      acc70(36)=abb70(47)
      acc70(37)=abb70(48)
      acc70(38)=abb70(49)
      acc70(39)=abb70(50)
      acc70(40)=abb70(51)
      acc70(41)=abb70(52)
      acc70(42)=abb70(53)
      acc70(43)=abb70(54)
      acc70(44)=abb70(55)
      acc70(45)=abb70(56)
      acc70(46)=abb70(57)
      acc70(47)=abb70(58)
      acc70(48)=abb70(59)
      acc70(49)=abb70(60)
      acc70(50)=abb70(62)
      acc70(51)=abb70(63)
      acc70(52)=abb70(65)
      acc70(53)=abb70(68)
      acc70(54)=abb70(69)
      acc70(55)=abb70(70)
      acc70(56)=abb70(71)
      acc70(57)=abb70(72)
      acc70(58)=abb70(73)
      acc70(59)=abb70(74)
      acc70(60)=abb70(75)
      acc70(61)=abb70(76)
      acc70(62)=abb70(77)
      acc70(63)=abb70(78)
      acc70(64)=abb70(79)
      acc70(65)=abb70(80)
      acc70(66)=abb70(81)
      acc70(67)=abb70(82)
      acc70(68)=abb70(83)
      acc70(69)=abb70(84)
      acc70(70)=abb70(85)
      acc70(71)=abb70(86)
      acc70(72)=abb70(87)
      acc70(73)=abb70(88)
      acc70(74)=abb70(89)
      acc70(75)=abb70(90)
      acc70(76)=abb70(91)
      acc70(77)=abb70(92)
      acc70(78)=abb70(93)
      acc70(79)=abb70(99)
      acc70(80)=abb70(100)
      acc70(81)=abb70(102)
      acc70(82)=abb70(103)
      acc70(83)=abb70(104)
      acc70(84)=abb70(105)
      acc70(85)=abb70(106)
      acc70(86)=abb70(107)
      acc70(87)=Qspvak4k1*acc70(6)
      acc70(88)=Qspvak2k3*acc70(53)
      acc70(89)=Qspvae7k1*acc70(54)
      acc70(90)=Qspvak4k3*acc70(29)
      acc70(87)=acc70(90)+acc70(89)+acc70(88)+acc70(13)+acc70(87)
      acc70(87)=QspQ*acc70(87)
      acc70(88)=Qspvak4k1*acc70(82)
      acc70(89)=Qspvak2k3*acc70(86)
      acc70(90)=Qspvae7k1*acc70(23)
      acc70(88)=acc70(90)+acc70(89)+acc70(79)+acc70(88)
      acc70(88)=Qspk7*acc70(88)
      acc70(89)=Qspvak2k7*acc70(38)
      acc70(90)=Qspvak7k1*acc70(31)
      acc70(91)=Qspvae7k1*acc70(1)
      acc70(89)=acc70(91)+acc70(90)+acc70(48)+acc70(89)
      acc70(89)=Qspvak4k3*acc70(89)
      acc70(90)=Qspk4+Qspk3
      acc70(91)=-acc70(60)*acc70(90)
      acc70(92)=Qspvak2k7*acc70(40)
      acc70(93)=Qspvak7k1*acc70(4)
      acc70(94)=Qspvak2k3*acc70(39)
      acc70(95)=Qspvae7k1*acc70(21)
      acc70(87)=acc70(87)+acc70(89)+acc70(88)+acc70(95)+acc70(94)+acc70(93)+acc&
      &70(92)+acc70(49)+acc70(91)
      acc70(87)=Qspvak2l5*acc70(87)
      acc70(88)=Qspvak4k1*acc70(75)
      acc70(89)=Qspvak2k3*acc70(63)
      acc70(91)=Qspvae7k1*acc70(58)
      acc70(92)=Qspvak4k3*acc70(69)
      acc70(88)=acc70(92)+acc70(91)+acc70(89)+acc70(56)+acc70(88)
      acc70(88)=QspQ*acc70(88)
      acc70(89)=Qspvak4k1*acc70(74)
      acc70(91)=Qspvak2k3*acc70(85)
      acc70(92)=Qspvae7k1*acc70(25)
      acc70(89)=acc70(92)+acc70(91)+acc70(57)+acc70(89)
      acc70(89)=Qspk7*acc70(89)
      acc70(91)=Qspvak2k7*acc70(78)
      acc70(92)=Qspvak7k1*acc70(71)
      acc70(93)=Qspvae7k1*acc70(70)
      acc70(91)=acc70(93)+acc70(92)+acc70(55)+acc70(91)
      acc70(91)=Qspvak4k3*acc70(91)
      acc70(92)=-acc70(61)*acc70(90)
      acc70(93)=Qspvak2k7*acc70(76)
      acc70(94)=Qspvak7k1*acc70(65)
      acc70(95)=Qspvak2k3*acc70(83)
      acc70(96)=Qspvae7k1*acc70(64)
      acc70(88)=acc70(88)+acc70(91)+acc70(89)+acc70(96)+acc70(95)+acc70(94)+acc&
      &70(93)+acc70(50)+acc70(92)
      acc70(88)=Qspvak2l6*acc70(88)
      acc70(89)=acc70(90)+Qspk7
      acc70(91)=-acc70(42)*acc70(89)
      acc70(92)=Qspvak2k7*acc70(43)
      acc70(93)=Qspvak4k1*acc70(34)
      acc70(94)=Qspvak7k1*acc70(16)
      acc70(95)=Qspvak2k3*acc70(11)
      acc70(96)=-Qspvak2k1*acc70(81)
      acc70(96)=acc70(67)+acc70(96)
      acc70(96)=Qspvak4k3*acc70(96)
      acc70(97)=QspQ*acc70(80)
      acc70(91)=acc70(97)+acc70(96)+acc70(95)+acc70(94)+acc70(93)+acc70(92)+acc&
      &70(51)+acc70(91)
      acc70(91)=Qspvak2l5*acc70(91)
      acc70(92)=-acc70(59)*acc70(89)
      acc70(93)=Qspvak2k7*acc70(77)
      acc70(94)=Qspvak4k1*acc70(72)
      acc70(95)=Qspvak7k1*acc70(66)
      acc70(96)=Qspvak2k3*acc70(84)
      acc70(97)=-Qspvak2k1*acc70(73)
      acc70(97)=acc70(68)+acc70(97)
      acc70(97)=Qspvak4k3*acc70(97)
      acc70(98)=QspQ*acc70(62)
      acc70(92)=acc70(98)+acc70(97)+acc70(96)+acc70(95)+acc70(94)+acc70(93)+acc&
      &70(52)+acc70(92)
      acc70(92)=Qspvak2l6*acc70(92)
      acc70(93)=-acc70(3)*acc70(89)
      acc70(94)=Qspvak4k3*acc70(14)
      acc70(95)=QspQ*acc70(12)
      acc70(93)=acc70(95)+acc70(94)+acc70(33)+acc70(93)
      acc70(93)=Qspvak2k1*acc70(93)
      acc70(94)=Qspvak2k7*acc70(44)
      acc70(95)=Qspvak4k1*acc70(35)
      acc70(96)=Qspvak7k1*acc70(26)
      acc70(97)=Qspvak2k3*acc70(20)
      acc70(91)=acc70(92)+acc70(91)+acc70(97)+acc70(96)+acc70(94)+acc70(95)+acc&
      &70(93)
      acc70(91)=Qspe7*acc70(91)
      acc70(89)=acc70(19)*acc70(89)
      acc70(92)=Qspvak4k1*acc70(36)
      acc70(93)=Qspvak2k3*acc70(27)
      acc70(94)=Qspvae7k1*acc70(24)
      acc70(95)=Qspvak2k1*acc70(5)
      acc70(96)=Qspvak4k3*acc70(17)
      acc70(97)=QspQ*acc70(10)
      acc70(89)=acc70(97)+acc70(96)+acc70(95)+acc70(94)+acc70(93)+acc70(92)+acc&
      &70(2)+acc70(89)
      acc70(89)=QspQ*acc70(89)
      acc70(92)=Qspvak4k1*acc70(37)
      acc70(93)=Qspvak2k3*acc70(46)
      acc70(94)=Qspvae7k1*acc70(9)
      acc70(95)=Qspvak2k1*acc70(8)
      acc70(92)=acc70(95)+acc70(94)+acc70(92)+acc70(93)
      acc70(92)=Qspk7*acc70(92)
      acc70(93)=Qspvak2k7*acc70(45)
      acc70(94)=Qspvak7k1*acc70(32)
      acc70(95)=Qspvae7k1*acc70(30)
      acc70(96)=Qspvak2k1*acc70(15)
      acc70(93)=acc70(96)+acc70(95)+acc70(93)+acc70(94)
      acc70(93)=Qspvak4k3*acc70(93)
      acc70(94)=Qspvak2k7*acc70(41)
      acc70(95)=Qspvak7k1*acc70(7)
      acc70(96)=Qspvak2k3*acc70(28)
      acc70(97)=Qspvae7k1*acc70(22)
      acc70(90)=acc70(18)*acc70(90)
      acc70(90)=acc70(47)+acc70(90)
      acc70(90)=Qspvak2k1*acc70(90)
      brack=acc70(87)+acc70(88)+acc70(89)+acc70(90)+acc70(91)+acc70(92)+acc70(9&
      &3)+acc70(94)+acc70(95)+acc70(96)+acc70(97)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram70_sign, shift => diagram70_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd70h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d70
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3-k2+k7+k4
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d70 = 0.0_ki
      d70 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d70, ki), aimag(d70), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd70h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d70
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3-k2+k7+k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d70 = 0.0_ki
      d70 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d70, ki), aimag(d70), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d70h3l1
