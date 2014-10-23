module     p0_dbaru_epnebbbarg_d317h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d317h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd317h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc317(112)
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: QspQ
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      QspQ = dotproduct(Q,Q)
      acc317(1)=abb317(12)
      acc317(2)=abb317(13)
      acc317(3)=abb317(14)
      acc317(4)=abb317(15)
      acc317(5)=abb317(16)
      acc317(6)=abb317(17)
      acc317(7)=abb317(18)
      acc317(8)=abb317(19)
      acc317(9)=abb317(20)
      acc317(10)=abb317(21)
      acc317(11)=abb317(22)
      acc317(12)=abb317(23)
      acc317(13)=abb317(24)
      acc317(14)=abb317(25)
      acc317(15)=abb317(26)
      acc317(16)=abb317(27)
      acc317(17)=abb317(28)
      acc317(18)=abb317(29)
      acc317(19)=abb317(30)
      acc317(20)=abb317(31)
      acc317(21)=abb317(32)
      acc317(22)=abb317(33)
      acc317(23)=abb317(34)
      acc317(24)=abb317(35)
      acc317(25)=abb317(36)
      acc317(26)=abb317(37)
      acc317(27)=abb317(38)
      acc317(28)=abb317(39)
      acc317(29)=abb317(40)
      acc317(30)=abb317(41)
      acc317(31)=abb317(42)
      acc317(32)=abb317(43)
      acc317(33)=abb317(44)
      acc317(34)=abb317(45)
      acc317(35)=abb317(46)
      acc317(36)=abb317(47)
      acc317(37)=abb317(48)
      acc317(38)=abb317(49)
      acc317(39)=abb317(50)
      acc317(40)=abb317(51)
      acc317(41)=abb317(52)
      acc317(42)=abb317(53)
      acc317(43)=abb317(54)
      acc317(44)=abb317(55)
      acc317(45)=abb317(56)
      acc317(46)=abb317(57)
      acc317(47)=abb317(58)
      acc317(48)=abb317(59)
      acc317(49)=abb317(60)
      acc317(50)=abb317(61)
      acc317(51)=abb317(62)
      acc317(52)=abb317(63)
      acc317(53)=abb317(65)
      acc317(54)=abb317(66)
      acc317(55)=abb317(68)
      acc317(56)=abb317(69)
      acc317(57)=abb317(70)
      acc317(58)=abb317(71)
      acc317(59)=abb317(72)
      acc317(60)=abb317(73)
      acc317(61)=abb317(75)
      acc317(62)=abb317(77)
      acc317(63)=abb317(78)
      acc317(64)=abb317(80)
      acc317(65)=abb317(81)
      acc317(66)=abb317(83)
      acc317(67)=abb317(84)
      acc317(68)=abb317(86)
      acc317(69)=abb317(88)
      acc317(70)=abb317(89)
      acc317(71)=abb317(91)
      acc317(72)=abb317(95)
      acc317(73)=abb317(98)
      acc317(74)=abb317(99)
      acc317(75)=abb317(104)
      acc317(76)=abb317(107)
      acc317(77)=abb317(109)
      acc317(78)=abb317(117)
      acc317(79)=abb317(118)
      acc317(80)=abb317(139)
      acc317(81)=abb317(153)
      acc317(82)=abb317(163)
      acc317(83)=abb317(167)
      acc317(84)=abb317(173)
      acc317(85)=abb317(175)
      acc317(86)=abb317(208)
      acc317(87)=abb317(218)
      acc317(88)=abb317(219)
      acc317(89)=Qspl5+Qspk7
      acc317(89)=acc317(89)*acc317(21)
      acc317(90)=Qspk3+Qspk4
      acc317(91)=acc317(72)*acc317(90)
      acc317(92)=acc317(1)*Qspvak4k2
      acc317(93)=acc317(3)*Qspvak1k2
      acc317(94)=acc317(11)*Qspvak4k3
      acc317(95)=acc317(24)*Qspl6
      acc317(96)=acc317(29)*Qspvak2k7
      acc317(97)=acc317(35)*Qspvak1k3
      acc317(98)=acc317(40)*Qspval5l6
      acc317(99)=acc317(42)*Qspvak1l6
      acc317(100)=acc317(59)*Qspvak2k3
      acc317(101)=acc317(65)*Qspk2
      acc317(102)=acc317(70)*Qspvak4l6
      acc317(103)=acc317(79)*Qspvak7l6
      acc317(89)=acc317(101)+acc317(94)+acc317(93)+acc317(92)+acc317(91)+acc317&
      &(89)+acc317(103)+acc317(102)+acc317(100)+acc317(99)+acc317(98)+acc317(97&
      &)+acc317(96)+acc317(95)+acc317(13)
      acc317(89)=Qspvak7k2*acc317(89)
      acc317(91)=acc317(6)*Qspvak4k2
      acc317(92)=acc317(15)*Qspvak7k2
      acc317(93)=acc317(30)*Qspvak1k2
      acc317(94)=acc317(32)*Qspvak1k3
      acc317(95)=acc317(55)*Qspvak2l6
      acc317(96)=acc317(57)*Qspk2
      acc317(97)=acc317(63)*Qspvak1l6
      acc317(98)=acc317(69)*Qspvak2k3
      acc317(99)=acc317(73)*Qspvak4k3
      acc317(100)=acc317(77)*Qspvak2l5
      acc317(91)=acc317(100)+acc317(99)+acc317(98)+acc317(97)+acc317(96)+acc317&
      &(95)+acc317(48)+acc317(94)+acc317(93)+acc317(92)+acc317(91)
      acc317(91)=QspQ*acc317(91)
      acc317(92)=Qspvak2l6*Qspvak7k2
      acc317(93)=acc317(7)*acc317(92)
      acc317(94)=acc317(44)*Qspvak2l6
      acc317(95)=acc317(45)*Qspvak2l5
      acc317(96)=Qspvak2l5*Qspvak7k2
      acc317(97)=acc317(53)*acc317(96)
      acc317(98)=acc317(80)*Qspk7
      acc317(99)=acc317(83)*Qspk2
      acc317(100)=acc317(84)*Qspvak7l6
      acc317(101)=acc317(85)*Qspl6
      acc317(93)=acc317(101)+acc317(100)+acc317(99)+acc317(98)+acc317(97)+acc31&
      &7(95)+acc317(94)+acc317(9)+acc317(93)
      acc317(93)=Qspvak4k3*acc317(93)
      acc317(94)=acc317(2)*Qspk2
      acc317(95)=acc317(16)*Qspvak2l5
      acc317(97)=acc317(18)*acc317(96)
      acc317(98)=acc317(19)*Qspk7
      acc317(99)=acc317(22)*Qspvak2l6
      acc317(100)=acc317(60)*acc317(92)
      acc317(101)=acc317(61)*Qspvak7l6
      acc317(102)=acc317(81)*Qspl6
      acc317(94)=acc317(102)+acc317(101)+acc317(100)+acc317(99)+acc317(98)+acc3&
      &17(97)+acc317(95)+acc317(8)+acc317(94)
      acc317(94)=Qspvak4k2*acc317(94)
      acc317(95)=acc317(4)*Qspvak2l6
      acc317(97)=acc317(28)*Qspk7
      acc317(98)=acc317(37)*Qspk2
      acc317(99)=acc317(38)*Qspl6
      acc317(100)=acc317(39)*Qspvak7l6
      acc317(101)=acc317(46)*Qspvak2l5
      acc317(102)=acc317(49)*acc317(92)
      acc317(103)=acc317(50)*acc317(96)
      acc317(95)=acc317(103)+acc317(102)+acc317(101)+acc317(100)+acc317(99)+acc&
      &317(98)+acc317(97)+acc317(27)+acc317(95)
      acc317(95)=Qspvak1k2*acc317(95)
      acc317(97)=acc317(33)*Qspvak1k3
      acc317(98)=acc317(56)*Qspk7
      acc317(99)=acc317(58)*Qspl6
      acc317(100)=acc317(64)*Qspvak1l6
      acc317(101)=acc317(67)*Qspvak2k3
      acc317(97)=acc317(101)+acc317(100)+acc317(99)+acc317(98)+acc317(97)+acc31&
      &7(31)
      acc317(97)=Qspk2*acc317(97)
      acc317(98)=acc317(23)*acc317(96)
      acc317(99)=-acc317(41)*Qspvak2l6
      acc317(100)=-acc317(51)*Qspvak2l5
      acc317(101)=acc317(71)*acc317(92)
      acc317(98)=acc317(101)+acc317(100)+acc317(98)+acc317(99)
      acc317(99)=acc317(90)-Qspk2
      acc317(98)=acc317(99)*acc317(98)
      acc317(100)=acc317(74)*Qspk2
      acc317(101)=-acc317(75)*QspQ
      acc317(102)=acc317(87)*Qspk7
      acc317(103)=acc317(88)*Qspl6
      acc317(100)=acc317(103)+acc317(102)+acc317(86)+acc317(101)+acc317(100)
      acc317(90)=acc317(90)*acc317(100)
      acc317(100)=acc317(43)*Qspvak1l6
      acc317(101)=-acc317(52)*Qspvak1k3
      acc317(102)=acc317(54)*Qspvak2k3
      acc317(100)=acc317(102)+acc317(101)+acc317(100)
      acc317(101)=Qspl6+Qspk7
      acc317(100)=acc317(101)*acc317(100)
      acc317(99)=-acc317(66)*acc317(99)
      acc317(99)=acc317(62)+acc317(99)
      acc317(99)=Qspvak7l6*acc317(99)
      acc317(101)=acc317(5)*Qspvak2k7
      acc317(102)=acc317(10)*Qspvak2l6
      acc317(103)=acc317(12)*Qspvak1k3
      acc317(92)=acc317(14)*acc317(92)
      acc317(96)=acc317(17)*acc317(96)
      acc317(104)=acc317(20)*Qspvak2l5
      acc317(105)=acc317(25)*Qspvak1l6
      acc317(106)=acc317(34)*Qspk2**2
      acc317(107)=acc317(36)*Qspvak2k3
      acc317(108)=acc317(47)*Qspval5l6
      acc317(109)=acc317(68)*Qspvak4l6
      acc317(110)=acc317(76)*Qspl6
      acc317(111)=acc317(78)*Qspk7
      acc317(112)=acc317(82)*Qspl5
      brack=acc317(26)+acc317(89)+acc317(90)+acc317(91)+acc317(92)+acc317(93)+a&
      &cc317(94)+acc317(95)+acc317(96)+acc317(97)+acc317(98)+acc317(99)+acc317(&
      &100)+acc317(101)+acc317(102)+acc317(103)+acc317(104)+acc317(105)+acc317(&
      &106)+acc317(107)+acc317(108)+acc317(109)+acc317(110)+acc317(111)+acc317(&
      &112)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd317h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d317
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d317 = 0.0_ki
      d317 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d317, ki), aimag(d317), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d317h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd317h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d317
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d317 = 0.0_ki
      d317 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d317, ki), aimag(d317), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d317h7l1
