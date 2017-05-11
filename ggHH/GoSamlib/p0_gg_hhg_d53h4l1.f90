module     p0_gg_hhg_d53h4l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d53h4l1.f90
   ! generator: buildfortran.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd53h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc53(93)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspk5
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak1k2
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspk5 = dotproduct(Q,k5)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspk1 = dotproduct(Q,k1)
      Qspl4 = dotproduct(Q,l4)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      QspQ = dotproduct(Q,Q)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc53(1)=abb53(7)
      acc53(2)=abb53(8)
      acc53(3)=abb53(9)
      acc53(4)=abb53(10)
      acc53(5)=abb53(11)
      acc53(6)=abb53(12)
      acc53(7)=abb53(13)
      acc53(8)=abb53(14)
      acc53(9)=abb53(15)
      acc53(10)=abb53(16)
      acc53(11)=abb53(17)
      acc53(12)=abb53(18)
      acc53(13)=abb53(19)
      acc53(14)=abb53(20)
      acc53(15)=abb53(21)
      acc53(16)=abb53(22)
      acc53(17)=abb53(23)
      acc53(18)=abb53(24)
      acc53(19)=abb53(25)
      acc53(20)=abb53(26)
      acc53(21)=abb53(27)
      acc53(22)=abb53(28)
      acc53(23)=abb53(29)
      acc53(24)=abb53(31)
      acc53(25)=abb53(32)
      acc53(26)=abb53(33)
      acc53(27)=abb53(34)
      acc53(28)=abb53(35)
      acc53(29)=abb53(37)
      acc53(30)=abb53(38)
      acc53(31)=abb53(39)
      acc53(32)=abb53(40)
      acc53(33)=abb53(41)
      acc53(34)=abb53(42)
      acc53(35)=abb53(43)
      acc53(36)=abb53(44)
      acc53(37)=abb53(45)
      acc53(38)=abb53(46)
      acc53(39)=abb53(47)
      acc53(40)=abb53(48)
      acc53(41)=abb53(49)
      acc53(42)=abb53(50)
      acc53(43)=abb53(51)
      acc53(44)=abb53(52)
      acc53(45)=abb53(53)
      acc53(46)=abb53(54)
      acc53(47)=abb53(55)
      acc53(48)=abb53(56)
      acc53(49)=abb53(57)
      acc53(50)=abb53(58)
      acc53(51)=abb53(59)
      acc53(52)=abb53(60)
      acc53(53)=abb53(61)
      acc53(54)=abb53(62)
      acc53(55)=abb53(63)
      acc53(56)=abb53(64)
      acc53(57)=abb53(65)
      acc53(58)=abb53(66)
      acc53(59)=abb53(67)
      acc53(60)=abb53(68)
      acc53(61)=abb53(69)
      acc53(62)=abb53(70)
      acc53(63)=abb53(71)
      acc53(64)=abb53(72)
      acc53(65)=abb53(75)
      acc53(66)=abb53(76)
      acc53(67)=abb53(77)
      acc53(68)=abb53(78)
      acc53(69)=abb53(79)
      acc53(70)=abb53(81)
      acc53(71)=abb53(83)
      acc53(72)=abb53(84)
      acc53(73)=abb53(85)
      acc53(74)=abb53(88)
      acc53(75)=abb53(89)
      acc53(76)=abb53(91)
      acc53(77)=abb53(92)
      acc53(78)=abb53(95)
      acc53(79)=abb53(99)
      acc53(80)=abb53(100)
      acc53(81)=abb53(102)
      acc53(82)=Qspvak2k1*acc53(15)
      acc53(83)=Qspvak5l4*acc53(8)
      acc53(84)=Qspvak1k5*acc53(27)
      acc53(85)=Qspk5*acc53(71)
      acc53(86)=Qspval4k2*acc53(56)
      acc53(87)=Qspk1*acc53(74)
      acc53(88)=Qspl4*acc53(72)
      acc53(89)=Qspvak5k2*acc53(25)
      acc53(90)=Qspk2*acc53(22)
      acc53(91)=Qspvak5k2*acc53(63)
      acc53(91)=acc53(62)+acc53(91)
      acc53(91)=Qspvak2k5*acc53(91)
      acc53(92)=QspQ*acc53(37)
      acc53(82)=acc53(92)+acc53(91)+acc53(90)+acc53(89)+acc53(88)+acc53(87)+acc&
      &53(86)+acc53(85)+acc53(84)+acc53(83)+acc53(43)+acc53(82)
      acc53(82)=QspQ*acc53(82)
      acc53(83)=Qspvak5k1*acc53(64)
      acc53(84)=Qspvak5l4*acc53(6)
      acc53(85)=Qspk5*acc53(18)
      acc53(86)=Qspval4k2*acc53(3)
      acc53(87)=Qspk1*acc53(30)
      acc53(88)=Qspl4*acc53(59)
      acc53(89)=-Qspl4*acc53(29)
      acc53(89)=acc53(26)+acc53(89)
      acc53(89)=Qspvak5k2*acc53(89)
      acc53(90)=Qspvak5k2*acc53(55)
      acc53(90)=acc53(20)+acc53(90)
      acc53(90)=Qspk2*acc53(90)
      acc53(83)=acc53(90)+acc53(89)+acc53(88)+acc53(87)+acc53(86)+acc53(85)+acc&
      &53(84)+acc53(10)+acc53(83)
      acc53(83)=Qspvak2k5*acc53(83)
      acc53(84)=acc53(49)*Qspvak5k1
      acc53(85)=Qspvak5l4*acc53(77)
      acc53(86)=Qspk5*acc53(76)
      acc53(87)=Qspval4k2*acc53(78)
      acc53(88)=Qspk1*acc53(81)
      acc53(89)=Qspl4*acc53(79)
      acc53(90)=Qspk2*acc53(80)
      acc53(84)=acc53(90)+acc53(89)+acc53(88)+acc53(87)+acc53(86)+acc53(85)+acc&
      &53(21)+acc53(84)
      acc53(84)=Qspk2*acc53(84)
      acc53(85)=Qspk2*acc53(45)
      acc53(86)=Qspvak2k5*acc53(7)
      acc53(87)=QspQ*acc53(28)
      acc53(85)=acc53(87)+acc53(86)+acc53(36)+acc53(85)
      acc53(85)=Qspvak1k2*acc53(85)
      acc53(86)=Qspvak2k1*acc53(13)
      acc53(87)=Qspvak5l4*acc53(75)
      acc53(88)=Qspvak1k5*acc53(12)
      acc53(89)=Qspk5*acc53(16)
      acc53(90)=Qspval4k2*acc53(73)
      acc53(91)=Qspk1*acc53(53)
      acc53(92)=Qspl4*acc53(23)
      acc53(93)=Qspvak5k2*acc53(51)
      acc53(82)=acc53(85)+acc53(82)+acc53(83)+acc53(84)+acc53(93)+acc53(92)+acc&
      &53(91)+acc53(90)+acc53(89)+acc53(88)+acc53(87)+acc53(5)+acc53(86)
      acc53(82)=Qspvak1k2*acc53(82)
      acc53(83)=Qspk1*acc53(49)
      acc53(84)=Qspl4*acc53(31)
      acc53(83)=acc53(84)+acc53(17)+acc53(83)
      acc53(83)=Qspvak5k2*acc53(83)
      acc53(84)=Qspvak1k5*acc53(69)
      acc53(85)=Qspk5*acc53(47)
      acc53(86)=Qspval4k2*acc53(61)
      acc53(87)=Qspk1*acc53(11)
      acc53(88)=Qspl4*acc53(50)
      acc53(89)=Qspvak5k2*acc53(46)
      acc53(89)=acc53(39)+acc53(89)
      acc53(89)=Qspk2*acc53(89)
      acc53(90)=Qspvak2k5*acc53(1)
      acc53(91)=Qspvak5k2*acc53(9)
      acc53(91)=acc53(40)+acc53(91)
      acc53(91)=QspQ*acc53(91)
      acc53(83)=acc53(91)+acc53(90)+acc53(89)+acc53(83)+acc53(88)+acc53(87)+acc&
      &53(86)+acc53(85)+acc53(32)+acc53(84)
      acc53(83)=QspQ*acc53(83)
      acc53(84)=Qspk5*acc53(65)
      acc53(85)=Qspval4k2*acc53(67)
      acc53(86)=Qspk1*acc53(68)
      acc53(87)=-Qspl4*acc53(4)
      acc53(88)=Qspvak5k2*acc53(44)
      acc53(89)=Qspk2*acc53(66)
      acc53(84)=acc53(89)+acc53(88)+acc53(87)+acc53(86)+acc53(85)+acc53(2)+acc5&
      &3(84)
      acc53(84)=Qspvak2k5*acc53(84)
      acc53(85)=Qspk5*acc53(41)
      acc53(86)=Qspval4k2*acc53(60)
      acc53(87)=Qspk1*acc53(48)
      acc53(88)=Qspl4*acc53(42)
      acc53(89)=Qspvak5k2*acc53(57)
      acc53(85)=acc53(89)+acc53(88)+acc53(87)+acc53(86)+acc53(19)+acc53(85)
      acc53(85)=Qspk2*acc53(85)
      acc53(86)=Qspvak1k5*acc53(70)
      acc53(87)=Qspk1*acc53(52)
      acc53(88)=-Qspl4*acc53(54)
      acc53(86)=acc53(88)+acc53(87)+acc53(24)+acc53(86)
      acc53(86)=Qspvak5k2*acc53(86)
      acc53(87)=Qspvak1k5*acc53(33)
      acc53(88)=Qspk5*acc53(34)
      acc53(89)=Qspval4k2*acc53(58)
      acc53(90)=Qspk1*acc53(38)
      acc53(91)=Qspl4*acc53(35)
      brack=acc53(14)+acc53(82)+acc53(83)+acc53(84)+acc53(85)+acc53(86)+acc53(8&
      &7)+acc53(88)+acc53(89)+acc53(90)+acc53(91)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd53h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d53
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d53 = 0.0_ki
      d53 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d53, ki), aimag(d53), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d53h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd53h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d53
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d53 = 0.0_ki
      d53 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d53, ki), aimag(d53), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d53h4l1
