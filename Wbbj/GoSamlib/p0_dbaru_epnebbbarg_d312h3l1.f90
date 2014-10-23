module     p0_dbaru_epnebbbarg_d312h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d312h3l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd312h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc312(90)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      acc312(1)=abb312(11)
      acc312(2)=abb312(12)
      acc312(3)=abb312(13)
      acc312(4)=abb312(14)
      acc312(5)=abb312(15)
      acc312(6)=abb312(16)
      acc312(7)=abb312(17)
      acc312(8)=abb312(18)
      acc312(9)=abb312(19)
      acc312(10)=abb312(20)
      acc312(11)=abb312(21)
      acc312(12)=abb312(22)
      acc312(13)=abb312(23)
      acc312(14)=abb312(24)
      acc312(15)=abb312(25)
      acc312(16)=abb312(26)
      acc312(17)=abb312(27)
      acc312(18)=abb312(28)
      acc312(19)=abb312(29)
      acc312(20)=abb312(30)
      acc312(21)=abb312(31)
      acc312(22)=abb312(32)
      acc312(23)=abb312(33)
      acc312(24)=abb312(34)
      acc312(25)=abb312(35)
      acc312(26)=abb312(36)
      acc312(27)=abb312(37)
      acc312(28)=abb312(38)
      acc312(29)=abb312(39)
      acc312(30)=abb312(40)
      acc312(31)=abb312(41)
      acc312(32)=abb312(42)
      acc312(33)=abb312(43)
      acc312(34)=abb312(44)
      acc312(35)=abb312(45)
      acc312(36)=abb312(46)
      acc312(37)=abb312(47)
      acc312(38)=abb312(48)
      acc312(39)=abb312(49)
      acc312(40)=abb312(50)
      acc312(41)=abb312(51)
      acc312(42)=abb312(52)
      acc312(43)=abb312(53)
      acc312(44)=abb312(54)
      acc312(45)=abb312(55)
      acc312(46)=abb312(56)
      acc312(47)=abb312(57)
      acc312(48)=abb312(58)
      acc312(49)=abb312(59)
      acc312(50)=abb312(60)
      acc312(51)=abb312(61)
      acc312(52)=abb312(62)
      acc312(53)=abb312(64)
      acc312(54)=abb312(65)
      acc312(55)=abb312(67)
      acc312(56)=abb312(69)
      acc312(57)=abb312(72)
      acc312(58)=abb312(86)
      acc312(59)=abb312(88)
      acc312(60)=abb312(98)
      acc312(61)=abb312(100)
      acc312(62)=abb312(105)
      acc312(63)=abb312(110)
      acc312(64)=abb312(112)
      acc312(65)=abb312(117)
      acc312(66)=abb312(118)
      acc312(67)=abb312(121)
      acc312(68)=abb312(123)
      acc312(69)=abb312(124)
      acc312(70)=abb312(126)
      acc312(71)=abb312(130)
      acc312(72)=abb312(133)
      acc312(73)=abb312(139)
      acc312(74)=abb312(143)
      acc312(75)=abb312(144)
      acc312(76)=abb312(153)
      acc312(77)=Qspk4+Qspk3
      acc312(78)=acc312(74)*acc312(77)
      acc312(79)=Qspvak1k2*acc312(49)
      acc312(80)=Qspvak1k3*acc312(54)
      acc312(81)=Qspvak4k2*acc312(27)
      acc312(82)=Qspvak4k3*acc312(75)
      acc312(78)=acc312(82)+acc312(81)+acc312(79)+acc312(80)+acc312(78)
      acc312(78)=Qspvak2l5*acc312(78)
      acc312(79)=-acc312(41)*acc312(77)
      acc312(80)=-Qspvak2k3*acc312(54)
      acc312(81)=Qspvak4k2*acc312(52)
      acc312(82)=Qspvak4k3*acc312(51)
      acc312(79)=acc312(82)+acc312(81)+acc312(6)+acc312(80)+acc312(79)
      acc312(79)=Qspvak1l5*acc312(79)
      acc312(80)=Qspvak1k2*acc312(24)
      acc312(81)=Qspvak1k3*acc312(11)
      acc312(80)=acc312(81)+acc312(65)+acc312(80)
      acc312(80)=Qspvak2l6*acc312(80)
      acc312(81)=-acc312(15)*acc312(77)
      acc312(82)=-Qspvak2k3*acc312(11)
      acc312(81)=acc312(3)+acc312(82)+acc312(81)
      acc312(81)=Qspvak1l6*acc312(81)
      acc312(82)=Qspvak1l5*acc312(50)
      acc312(83)=-Qspvak2l5*acc312(74)
      acc312(82)=acc312(83)+acc312(10)+acc312(82)
      acc312(82)=Qspk2*acc312(82)
      acc312(83)=-acc312(56)*acc312(77)
      acc312(84)=Qspk1*acc312(69)
      acc312(85)=Qspvak1k2*acc312(8)
      acc312(86)=Qspvak1k3*acc312(7)
      acc312(87)=QspQ*acc312(62)
      acc312(88)=Qspvak2k3*acc312(32)
      acc312(89)=Qspvak1l6*acc312(23)
      acc312(89)=acc312(16)+acc312(89)
      acc312(89)=Qspvak4k2*acc312(89)
      acc312(90)=Qspvak1l6*acc312(19)
      acc312(90)=acc312(21)+acc312(90)
      acc312(90)=Qspvak4k3*acc312(90)
      acc312(78)=acc312(82)+acc312(78)+acc312(79)+acc312(90)+acc312(89)+acc312(&
      &81)+acc312(80)+acc312(88)+acc312(87)+acc312(86)+acc312(85)+acc312(20)+ac&
      &c312(84)+acc312(83)
      acc312(78)=Qspvak2k7*acc312(78)
      acc312(79)=Qspvak1k7*acc312(48)
      acc312(80)=Qspvak2k1*acc312(28)
      acc312(81)=Qspvak2l6*acc312(55)
      acc312(79)=-acc312(81)+acc312(79)-acc312(80)
      acc312(80)=-acc312(70)*acc312(77)
      acc312(81)=Qspk7-Qspl5
      acc312(82)=acc312(68)*acc312(81)
      acc312(83)=QspQ*acc312(71)
      acc312(84)=Qspvak2k3*acc312(22)
      acc312(85)=Qspvak1l6*acc312(35)
      acc312(86)=Qspvak4k2*acc312(44)
      acc312(87)=Qspvak4k3*acc312(46)
      acc312(88)=Qspvak1l5*acc312(40)
      acc312(89)=-Qspvak2l5*acc312(72)
      acc312(90)=Qspk2*acc312(66)
      acc312(80)=acc312(90)+acc312(89)+acc312(88)+acc312(87)+acc312(86)+acc312(&
      &85)+acc312(84)+acc312(83)+acc312(42)+acc312(82)+acc312(80)+acc312(79)
      acc312(80)=Qspk2*acc312(80)
      acc312(82)=Qspvak1k7*acc312(14)
      acc312(83)=Qspvak2k1*acc312(38)
      acc312(84)=QspQ*acc312(43)
      acc312(85)=Qspvak2l6*acc312(34)
      acc312(86)=Qspvak1l6*acc312(2)
      acc312(82)=acc312(86)+acc312(85)+acc312(84)+acc312(83)+acc312(18)+acc312(&
      &82)
      acc312(82)=Qspvak4k2*acc312(82)
      acc312(83)=Qspvak1k7*acc312(1)
      acc312(84)=Qspvak2k1*acc312(29)
      acc312(85)=QspQ*acc312(67)
      acc312(86)=Qspvak2l6*acc312(64)
      acc312(87)=Qspvak1l6*acc312(17)
      acc312(83)=acc312(87)+acc312(86)+acc312(85)+acc312(84)+acc312(36)+acc312(&
      &83)
      acc312(83)=Qspvak4k3*acc312(83)
      acc312(84)=acc312(72)*acc312(77)
      acc312(85)=Qspvak1k2*acc312(47)
      acc312(86)=-Qspvak1k3*acc312(4)
      acc312(87)=Qspvak4k2*acc312(58)
      acc312(88)=Qspvak4k3*acc312(73)
      acc312(84)=acc312(88)+acc312(87)+acc312(85)+acc312(86)+acc312(84)
      acc312(84)=Qspvak2l5*acc312(84)
      acc312(85)=acc312(39)*acc312(77)
      acc312(86)=Qspvak2k3*acc312(4)
      acc312(87)=Qspvak4k2*acc312(45)
      acc312(88)=Qspvak4k3*acc312(37)
      acc312(85)=acc312(88)+acc312(87)+acc312(30)+acc312(86)+acc312(85)
      acc312(85)=Qspvak1l5*acc312(85)
      acc312(86)=QspQ*acc312(63)
      acc312(79)=-acc312(59)+acc312(86)+acc312(79)
      acc312(79)=-acc312(79)*acc312(77)
      acc312(86)=-acc312(76)*acc312(81)
      acc312(87)=QspQ*acc312(31)
      acc312(86)=acc312(87)+acc312(61)+acc312(86)
      acc312(86)=Qspvak2k3*acc312(86)
      acc312(87)=Qspvak1k2*acc312(9)
      acc312(88)=Qspvak1k3*acc312(25)
      acc312(87)=acc312(88)+acc312(5)+acc312(87)
      acc312(87)=Qspvak2l6*acc312(87)
      acc312(77)=-acc312(53)*acc312(77)
      acc312(88)=-Qspvak2k3*acc312(25)
      acc312(77)=acc312(12)+acc312(88)+acc312(77)
      acc312(77)=Qspvak1l6*acc312(77)
      acc312(81)=acc312(57)*acc312(81)
      acc312(88)=Qspk1*acc312(60)
      acc312(89)=Qspvak2k1*acc312(26)
      acc312(90)=QspQ*acc312(33)
      brack=acc312(13)+acc312(77)+acc312(78)+acc312(79)+acc312(80)+acc312(81)+a&
      &cc312(82)+acc312(83)+acc312(84)+acc312(85)+acc312(86)+acc312(87)+acc312(&
      &88)+acc312(89)+acc312(90)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd312h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d312
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d312 = 0.0_ki
      d312 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d312, ki), aimag(d312), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d312h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd312h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d312
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d312 = 0.0_ki
      d312 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d312, ki), aimag(d312), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d312h3l1
