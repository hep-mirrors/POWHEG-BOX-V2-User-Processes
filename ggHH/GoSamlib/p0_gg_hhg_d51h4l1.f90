module     p0_gg_hhg_d51h4l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d51h4l1.f90
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
      use p0_gg_hhg_abbrevd51h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc51(93)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspk5
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspl3
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak1k2
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspk5 = dotproduct(Q,k5)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspk1 = dotproduct(Q,k1)
      Qspl3 = dotproduct(Q,l3)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      QspQ = dotproduct(Q,Q)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc51(1)=abb51(7)
      acc51(2)=abb51(8)
      acc51(3)=abb51(9)
      acc51(4)=abb51(10)
      acc51(5)=abb51(11)
      acc51(6)=abb51(12)
      acc51(7)=abb51(13)
      acc51(8)=abb51(14)
      acc51(9)=abb51(15)
      acc51(10)=abb51(16)
      acc51(11)=abb51(17)
      acc51(12)=abb51(18)
      acc51(13)=abb51(19)
      acc51(14)=abb51(20)
      acc51(15)=abb51(21)
      acc51(16)=abb51(22)
      acc51(17)=abb51(23)
      acc51(18)=abb51(24)
      acc51(19)=abb51(25)
      acc51(20)=abb51(26)
      acc51(21)=abb51(27)
      acc51(22)=abb51(28)
      acc51(23)=abb51(29)
      acc51(24)=abb51(31)
      acc51(25)=abb51(32)
      acc51(26)=abb51(33)
      acc51(27)=abb51(34)
      acc51(28)=abb51(35)
      acc51(29)=abb51(37)
      acc51(30)=abb51(38)
      acc51(31)=abb51(39)
      acc51(32)=abb51(40)
      acc51(33)=abb51(41)
      acc51(34)=abb51(42)
      acc51(35)=abb51(43)
      acc51(36)=abb51(44)
      acc51(37)=abb51(45)
      acc51(38)=abb51(46)
      acc51(39)=abb51(47)
      acc51(40)=abb51(48)
      acc51(41)=abb51(49)
      acc51(42)=abb51(50)
      acc51(43)=abb51(51)
      acc51(44)=abb51(52)
      acc51(45)=abb51(53)
      acc51(46)=abb51(54)
      acc51(47)=abb51(55)
      acc51(48)=abb51(56)
      acc51(49)=abb51(57)
      acc51(50)=abb51(58)
      acc51(51)=abb51(59)
      acc51(52)=abb51(60)
      acc51(53)=abb51(61)
      acc51(54)=abb51(62)
      acc51(55)=abb51(63)
      acc51(56)=abb51(64)
      acc51(57)=abb51(65)
      acc51(58)=abb51(66)
      acc51(59)=abb51(67)
      acc51(60)=abb51(68)
      acc51(61)=abb51(69)
      acc51(62)=abb51(70)
      acc51(63)=abb51(71)
      acc51(64)=abb51(72)
      acc51(65)=abb51(75)
      acc51(66)=abb51(76)
      acc51(67)=abb51(77)
      acc51(68)=abb51(78)
      acc51(69)=abb51(79)
      acc51(70)=abb51(81)
      acc51(71)=abb51(83)
      acc51(72)=abb51(84)
      acc51(73)=abb51(85)
      acc51(74)=abb51(88)
      acc51(75)=abb51(89)
      acc51(76)=abb51(91)
      acc51(77)=abb51(92)
      acc51(78)=abb51(95)
      acc51(79)=abb51(99)
      acc51(80)=abb51(100)
      acc51(81)=abb51(102)
      acc51(82)=Qspvak2k1*acc51(15)
      acc51(83)=Qspvak5l3*acc51(8)
      acc51(84)=Qspvak1k5*acc51(27)
      acc51(85)=Qspk5*acc51(71)
      acc51(86)=Qspval3k2*acc51(56)
      acc51(87)=Qspk1*acc51(74)
      acc51(88)=Qspl3*acc51(72)
      acc51(89)=Qspvak5k2*acc51(25)
      acc51(90)=Qspk2*acc51(22)
      acc51(91)=Qspvak5k2*acc51(63)
      acc51(91)=acc51(62)+acc51(91)
      acc51(91)=Qspvak2k5*acc51(91)
      acc51(92)=QspQ*acc51(37)
      acc51(82)=acc51(92)+acc51(91)+acc51(90)+acc51(89)+acc51(88)+acc51(87)+acc&
      &51(86)+acc51(85)+acc51(84)+acc51(83)+acc51(43)+acc51(82)
      acc51(82)=QspQ*acc51(82)
      acc51(83)=Qspvak5k1*acc51(64)
      acc51(84)=Qspvak5l3*acc51(6)
      acc51(85)=Qspk5*acc51(18)
      acc51(86)=Qspval3k2*acc51(3)
      acc51(87)=Qspk1*acc51(30)
      acc51(88)=Qspl3*acc51(59)
      acc51(89)=-Qspl3*acc51(29)
      acc51(89)=acc51(26)+acc51(89)
      acc51(89)=Qspvak5k2*acc51(89)
      acc51(90)=Qspvak5k2*acc51(55)
      acc51(90)=acc51(20)+acc51(90)
      acc51(90)=Qspk2*acc51(90)
      acc51(83)=acc51(90)+acc51(89)+acc51(88)+acc51(87)+acc51(86)+acc51(85)+acc&
      &51(84)+acc51(10)+acc51(83)
      acc51(83)=Qspvak2k5*acc51(83)
      acc51(84)=acc51(49)*Qspvak5k1
      acc51(85)=Qspvak5l3*acc51(77)
      acc51(86)=Qspk5*acc51(76)
      acc51(87)=Qspval3k2*acc51(78)
      acc51(88)=Qspk1*acc51(81)
      acc51(89)=Qspl3*acc51(79)
      acc51(90)=Qspk2*acc51(80)
      acc51(84)=acc51(90)+acc51(89)+acc51(88)+acc51(87)+acc51(86)+acc51(85)+acc&
      &51(21)+acc51(84)
      acc51(84)=Qspk2*acc51(84)
      acc51(85)=Qspk2*acc51(45)
      acc51(86)=Qspvak2k5*acc51(7)
      acc51(87)=QspQ*acc51(28)
      acc51(85)=acc51(87)+acc51(86)+acc51(36)+acc51(85)
      acc51(85)=Qspvak1k2*acc51(85)
      acc51(86)=Qspvak2k1*acc51(13)
      acc51(87)=Qspvak5l3*acc51(75)
      acc51(88)=Qspvak1k5*acc51(12)
      acc51(89)=Qspk5*acc51(16)
      acc51(90)=Qspval3k2*acc51(73)
      acc51(91)=Qspk1*acc51(53)
      acc51(92)=Qspl3*acc51(23)
      acc51(93)=Qspvak5k2*acc51(51)
      acc51(82)=acc51(85)+acc51(82)+acc51(83)+acc51(84)+acc51(93)+acc51(92)+acc&
      &51(91)+acc51(90)+acc51(89)+acc51(88)+acc51(87)+acc51(5)+acc51(86)
      acc51(82)=Qspvak1k2*acc51(82)
      acc51(83)=Qspk1*acc51(49)
      acc51(84)=Qspl3*acc51(31)
      acc51(83)=acc51(84)+acc51(17)+acc51(83)
      acc51(83)=Qspvak5k2*acc51(83)
      acc51(84)=Qspvak1k5*acc51(69)
      acc51(85)=Qspk5*acc51(47)
      acc51(86)=Qspval3k2*acc51(61)
      acc51(87)=Qspk1*acc51(11)
      acc51(88)=Qspl3*acc51(50)
      acc51(89)=Qspvak5k2*acc51(46)
      acc51(89)=acc51(39)+acc51(89)
      acc51(89)=Qspk2*acc51(89)
      acc51(90)=Qspvak2k5*acc51(1)
      acc51(91)=Qspvak5k2*acc51(9)
      acc51(91)=acc51(40)+acc51(91)
      acc51(91)=QspQ*acc51(91)
      acc51(83)=acc51(91)+acc51(90)+acc51(89)+acc51(83)+acc51(88)+acc51(87)+acc&
      &51(86)+acc51(85)+acc51(32)+acc51(84)
      acc51(83)=QspQ*acc51(83)
      acc51(84)=Qspk5*acc51(65)
      acc51(85)=Qspval3k2*acc51(67)
      acc51(86)=Qspk1*acc51(68)
      acc51(87)=-Qspl3*acc51(4)
      acc51(88)=Qspvak5k2*acc51(44)
      acc51(89)=Qspk2*acc51(66)
      acc51(84)=acc51(89)+acc51(88)+acc51(87)+acc51(86)+acc51(85)+acc51(2)+acc5&
      &1(84)
      acc51(84)=Qspvak2k5*acc51(84)
      acc51(85)=Qspk5*acc51(41)
      acc51(86)=Qspval3k2*acc51(60)
      acc51(87)=Qspk1*acc51(48)
      acc51(88)=Qspl3*acc51(42)
      acc51(89)=Qspvak5k2*acc51(57)
      acc51(85)=acc51(89)+acc51(88)+acc51(87)+acc51(86)+acc51(19)+acc51(85)
      acc51(85)=Qspk2*acc51(85)
      acc51(86)=Qspvak1k5*acc51(70)
      acc51(87)=Qspk1*acc51(52)
      acc51(88)=-Qspl3*acc51(54)
      acc51(86)=acc51(88)+acc51(87)+acc51(24)+acc51(86)
      acc51(86)=Qspvak5k2*acc51(86)
      acc51(87)=Qspvak1k5*acc51(33)
      acc51(88)=Qspk5*acc51(34)
      acc51(89)=Qspval3k2*acc51(58)
      acc51(90)=Qspk1*acc51(38)
      acc51(91)=Qspl3*acc51(35)
      brack=acc51(14)+acc51(82)+acc51(83)+acc51(84)+acc51(85)+acc51(86)+acc51(8&
      &7)+acc51(88)+acc51(89)+acc51(90)+acc51(91)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd51h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d51
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d51 = 0.0_ki
      d51 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d51, ki), aimag(d51), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d51h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd51h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d51
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d51 = 0.0_ki
      d51 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d51, ki), aimag(d51), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d51h4l1
