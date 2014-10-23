module     p0_dbaru_epnebbbarg_d80h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d80h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd80h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc80(96)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k3
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      acc80(1)=abb80(8)
      acc80(2)=abb80(9)
      acc80(3)=abb80(10)
      acc80(4)=abb80(11)
      acc80(5)=abb80(12)
      acc80(6)=abb80(13)
      acc80(7)=abb80(14)
      acc80(8)=abb80(15)
      acc80(9)=abb80(16)
      acc80(10)=abb80(17)
      acc80(11)=abb80(18)
      acc80(12)=abb80(19)
      acc80(13)=abb80(20)
      acc80(14)=abb80(21)
      acc80(15)=abb80(22)
      acc80(16)=abb80(23)
      acc80(17)=abb80(24)
      acc80(18)=abb80(25)
      acc80(19)=abb80(26)
      acc80(20)=abb80(27)
      acc80(21)=abb80(28)
      acc80(22)=abb80(29)
      acc80(23)=abb80(30)
      acc80(24)=abb80(31)
      acc80(25)=abb80(32)
      acc80(26)=abb80(33)
      acc80(27)=abb80(34)
      acc80(28)=abb80(35)
      acc80(29)=abb80(36)
      acc80(30)=abb80(37)
      acc80(31)=abb80(38)
      acc80(32)=abb80(39)
      acc80(33)=abb80(40)
      acc80(34)=abb80(41)
      acc80(35)=abb80(42)
      acc80(36)=abb80(43)
      acc80(37)=abb80(44)
      acc80(38)=abb80(45)
      acc80(39)=abb80(46)
      acc80(40)=abb80(47)
      acc80(41)=abb80(48)
      acc80(42)=abb80(49)
      acc80(43)=abb80(50)
      acc80(44)=abb80(51)
      acc80(45)=abb80(52)
      acc80(46)=abb80(53)
      acc80(47)=abb80(54)
      acc80(48)=abb80(55)
      acc80(49)=abb80(56)
      acc80(50)=abb80(57)
      acc80(51)=abb80(59)
      acc80(52)=abb80(60)
      acc80(53)=abb80(61)
      acc80(54)=abb80(62)
      acc80(55)=abb80(63)
      acc80(56)=abb80(65)
      acc80(57)=abb80(66)
      acc80(58)=abb80(67)
      acc80(59)=abb80(69)
      acc80(60)=abb80(70)
      acc80(61)=abb80(71)
      acc80(62)=abb80(72)
      acc80(63)=abb80(73)
      acc80(64)=abb80(74)
      acc80(65)=abb80(75)
      acc80(66)=abb80(76)
      acc80(67)=abb80(77)
      acc80(68)=abb80(78)
      acc80(69)=abb80(79)
      acc80(70)=abb80(80)
      acc80(71)=abb80(81)
      acc80(72)=abb80(82)
      acc80(73)=abb80(83)
      acc80(74)=abb80(84)
      acc80(75)=abb80(85)
      acc80(76)=abb80(86)
      acc80(77)=abb80(87)
      acc80(78)=abb80(88)
      acc80(79)=abb80(89)
      acc80(80)=abb80(90)
      acc80(81)=abb80(91)
      acc80(82)=abb80(92)
      acc80(83)=abb80(93)
      acc80(84)=Qspvak2l5*acc80(5)
      acc80(85)=Qspvak2l6*acc80(10)
      acc80(84)=acc80(85)+acc80(41)+acc80(84)
      acc80(84)=Qspvak1k2*acc80(84)
      acc80(85)=acc80(75)*Qspvak1k7
      acc80(86)=Qspvak1l5*acc80(82)
      acc80(87)=Qspvak1l6*acc80(81)
      acc80(88)=Qspk7*acc80(4)
      acc80(89)=-Qspvak3k2*acc80(23)
      acc80(90)=Qspk1*acc80(53)
      acc80(91)=QspQ*acc80(58)
      acc80(92)=Qspvak4k2*acc80(37)
      acc80(93)=Qspk2*acc80(51)
      acc80(94)=Qspvak7k2*acc80(59)
      acc80(84)=acc80(94)+acc80(93)+acc80(84)+acc80(92)+acc80(91)+acc80(90)+acc&
      &80(89)+acc80(88)+acc80(87)+acc80(86)+acc80(1)+acc80(85)
      acc80(84)=Qspvak4k3*acc80(84)
      acc80(85)=Qspvak1l5*acc80(19)
      acc80(86)=Qspvak1l6*acc80(78)
      acc80(85)=acc80(85)-acc80(86)
      acc80(86)=Qspk4+Qspk3
      acc80(87)=Qspk2-acc80(86)
      acc80(88)=acc80(49)*acc80(87)
      acc80(89)=Qspvak2l5*acc80(67)
      acc80(90)=Qspvak2l6*acc80(70)
      acc80(91)=QspQ*acc80(48)
      acc80(92)=-Qspvak4k2*acc80(15)
      acc80(88)=acc80(92)+acc80(91)+acc80(90)+acc80(89)+acc80(43)+acc80(88)-acc&
      &80(85)
      acc80(88)=Qspk2*acc80(88)
      acc80(89)=-Qspvak1l5*acc80(79)
      acc80(90)=Qspvak1l6*acc80(80)
      acc80(91)=Qspvak2l5*acc80(69)
      acc80(92)=Qspvak2l6*acc80(72)
      acc80(89)=acc80(92)+acc80(91)+acc80(90)+acc80(29)+acc80(89)
      acc80(89)=QspQ*acc80(89)
      acc80(90)=acc80(15)*acc80(86)
      acc80(91)=Qspvak2l5*acc80(73)
      acc80(92)=Qspvak2l6*acc80(76)
      acc80(93)=-QspQ*acc80(23)
      acc80(90)=acc80(93)+acc80(92)+acc80(91)+acc80(9)+acc80(90)
      acc80(90)=Qspvak4k2*acc80(90)
      acc80(85)=acc80(85)-acc80(38)
      acc80(85)=acc80(85)*acc80(86)
      acc80(91)=Qspvak2l5*acc80(79)
      acc80(92)=-Qspvak2l6*acc80(80)
      acc80(91)=acc80(91)+acc80(92)
      acc80(91)=Qspvak1k2*acc80(91)
      acc80(92)=Qspvak1k7*acc80(35)
      acc80(93)=Qspvak3k2*acc80(42)
      acc80(94)=Qspvak1k3*acc80(2)
      acc80(94)=acc80(66)+acc80(94)
      acc80(94)=Qspvak2l5*acc80(94)
      acc80(95)=Qspvak1k3*acc80(26)
      acc80(95)=acc80(68)+acc80(95)
      acc80(95)=Qspvak2l6*acc80(95)
      acc80(96)=Qspk1*acc80(40)
      acc80(84)=acc80(88)+acc80(91)+acc80(90)+acc80(89)+acc80(96)+acc80(95)+acc&
      &80(94)+acc80(93)+acc80(18)+acc80(92)+acc80(84)+acc80(85)
      acc80(84)=Qspvak7k2*acc80(84)
      acc80(85)=-acc80(32)*acc80(87)
      acc80(87)=Qspk7*acc80(30)
      acc80(88)=Qspvak2l5*acc80(77)
      acc80(89)=Qspvak2l6*acc80(65)
      acc80(90)=Qspk1*acc80(13)
      acc80(91)=QspQ*acc80(22)
      acc80(92)=Qspvak4k2*acc80(62)
      acc80(93)=Qspvak1k2*acc80(83)
      acc80(85)=acc80(93)+acc80(92)+acc80(91)+acc80(90)+acc80(89)+acc80(88)+acc&
      &80(24)+acc80(87)+acc80(85)
      acc80(85)=Qspk2*acc80(85)
      acc80(87)=Qspk1-Qspk7
      acc80(88)=-acc80(50)*acc80(87)
      acc80(89)=-acc80(62)*acc80(86)
      acc80(90)=Qspvak2l5*acc80(71)
      acc80(91)=Qspvak2l6*acc80(74)
      acc80(92)=QspQ*acc80(27)
      acc80(88)=acc80(92)+acc80(91)+acc80(90)+acc80(34)+acc80(89)+acc80(88)
      acc80(88)=Qspvak4k2*acc80(88)
      acc80(89)=-acc80(56)*acc80(87)
      acc80(90)=-acc80(83)*acc80(86)
      acc80(91)=Qspvak2l5*acc80(7)
      acc80(92)=Qspvak2l6*acc80(12)
      acc80(93)=QspQ*acc80(25)
      acc80(89)=acc80(93)+acc80(92)+acc80(91)+acc80(90)+acc80(89)
      acc80(89)=Qspvak1k2*acc80(89)
      acc80(90)=acc80(44)*acc80(87)
      acc80(91)=Qspvak2l5*acc80(6)
      acc80(92)=Qspvak2l6*acc80(11)
      acc80(93)=-QspQ*acc80(75)
      acc80(90)=acc80(93)+acc80(92)+acc80(91)+acc80(31)+acc80(90)
      acc80(90)=Qspvak1k2*acc80(90)
      acc80(87)=-acc80(54)*acc80(87)
      acc80(91)=QspQ*acc80(55)
      acc80(87)=acc80(91)+acc80(3)+acc80(87)
      acc80(87)=Qspk2*acc80(87)
      acc80(91)=Qspvak3k2*acc80(45)
      acc80(92)=Qspk1*acc80(57)
      acc80(93)=Qspvak4k2*acc80(21)
      acc80(87)=acc80(87)+acc80(90)+acc80(93)+acc80(92)+acc80(52)+acc80(91)
      acc80(87)=Qspvak4k3*acc80(87)
      acc80(90)=-acc80(33)*acc80(86)
      acc80(91)=Qspvak3k2*acc80(39)
      acc80(92)=Qspvak2l5*acc80(46)
      acc80(93)=Qspvak2l6*acc80(47)
      acc80(90)=acc80(93)+acc80(92)+acc80(17)+acc80(91)+acc80(90)
      acc80(90)=Qspk1*acc80(90)
      acc80(91)=Qspvak3k2*acc80(28)
      acc80(92)=Qspvak2l5*acc80(63)
      acc80(93)=Qspvak2l6*acc80(64)
      acc80(94)=Qspk1*acc80(8)
      acc80(91)=acc80(94)+acc80(93)+acc80(92)+acc80(14)+acc80(91)
      acc80(91)=QspQ*acc80(91)
      acc80(86)=-acc80(20)*acc80(86)
      acc80(92)=-Qspk7*acc80(39)
      acc80(92)=acc80(36)+acc80(92)
      acc80(92)=Qspvak3k2*acc80(92)
      acc80(93)=Qspvak2l5*acc80(60)
      acc80(94)=Qspvak2l6*acc80(61)
      brack=acc80(16)+acc80(84)+acc80(85)+acc80(86)+acc80(87)+acc80(88)+acc80(8&
      &9)+acc80(90)+acc80(91)+acc80(92)+acc80(93)+acc80(94)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd80h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d80
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d80 = 0.0_ki
      d80 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d80, ki), aimag(d80), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d80h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd80h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d80
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d80 = 0.0_ki
      d80 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d80, ki), aimag(d80), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d80h7l1
