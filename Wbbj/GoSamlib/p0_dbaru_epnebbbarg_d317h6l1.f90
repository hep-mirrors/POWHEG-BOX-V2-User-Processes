module     p0_dbaru_epnebbbarg_d317h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d317h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd317h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc317(100)
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4l6
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
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
      acc317(48)=abb317(60)
      acc317(49)=abb317(61)
      acc317(50)=abb317(62)
      acc317(51)=abb317(63)
      acc317(52)=abb317(65)
      acc317(53)=abb317(67)
      acc317(54)=abb317(69)
      acc317(55)=abb317(70)
      acc317(56)=abb317(74)
      acc317(57)=abb317(78)
      acc317(58)=abb317(79)
      acc317(59)=abb317(80)
      acc317(60)=abb317(81)
      acc317(61)=abb317(82)
      acc317(62)=abb317(84)
      acc317(63)=abb317(87)
      acc317(64)=abb317(89)
      acc317(65)=abb317(93)
      acc317(66)=abb317(96)
      acc317(67)=abb317(104)
      acc317(68)=abb317(105)
      acc317(69)=abb317(106)
      acc317(70)=abb317(120)
      acc317(71)=abb317(125)
      acc317(72)=abb317(128)
      acc317(73)=abb317(159)
      acc317(74)=abb317(171)
      acc317(75)=abb317(172)
      acc317(76)=Qspl5+Qspk7
      acc317(76)=acc317(76)*acc317(61)
      acc317(77)=Qspk3+Qspk4
      acc317(78)=acc317(63)*acc317(77)
      acc317(79)=acc317(10)*Qspvak1l6
      acc317(80)=acc317(28)*Qspvak2k3
      acc317(81)=acc317(31)*Qspl6
      acc317(82)=acc317(34)*Qspvak4l6
      acc317(83)=acc317(37)*QspQ
      acc317(84)=acc317(39)*Qspvak1k2
      acc317(85)=acc317(42)*Qspvak2l5
      acc317(86)=acc317(43)*Qspvak2l6
      acc317(87)=acc317(46)*Qspvak1k3
      acc317(88)=acc317(53)*Qspvak4k2
      acc317(89)=acc317(55)*Qspvak2k7
      acc317(90)=acc317(57)*Qspvak7l6
      acc317(91)=acc317(59)*Qspvak4k3
      acc317(76)=acc317(91)+acc317(88)+acc317(84)+acc317(78)+acc317(76)+acc317(&
      &90)+acc317(89)+acc317(87)+acc317(86)+acc317(85)+acc317(83)+acc317(82)+ac&
      &c317(81)+acc317(80)+acc317(79)+acc317(1)
      acc317(76)=Qspvak7k2*acc317(76)
      acc317(78)=Qspval5l6*Qspvak7k2
      acc317(79)=acc317(6)*acc317(78)
      acc317(80)=acc317(36)*QspQ
      acc317(81)=acc317(48)*Qspk7
      acc317(82)=acc317(50)*Qspk2
      acc317(83)=acc317(51)*Qspl6
      acc317(84)=acc317(54)*Qspval5l6
      acc317(85)=acc317(60)*Qspvak7l6
      acc317(86)=Qspk2*Qspvak7k2
      acc317(87)=acc317(65)*acc317(86)
      acc317(79)=acc317(87)+acc317(85)+acc317(84)+acc317(83)+acc317(82)+acc317(&
      &81)+acc317(80)+acc317(17)+acc317(79)
      acc317(79)=Qspvak4k2*acc317(79)
      acc317(80)=acc317(9)*Qspk7
      acc317(81)=acc317(19)*Qspl6
      acc317(82)=acc317(21)*Qspk2
      acc317(83)=acc317(23)*QspQ
      acc317(84)=acc317(24)*Qspvak7l6
      acc317(85)=acc317(32)*acc317(78)
      acc317(87)=acc317(40)*acc317(86)
      acc317(88)=acc317(49)*Qspval5l6
      acc317(80)=acc317(88)+acc317(87)+acc317(85)+acc317(84)+acc317(83)+acc317(&
      &82)+acc317(81)+acc317(80)+acc317(5)
      acc317(80)=Qspvak1k2*acc317(80)
      acc317(81)=acc317(11)*acc317(78)
      acc317(82)=acc317(66)*QspQ
      acc317(83)=acc317(68)*Qspk7
      acc317(84)=acc317(69)*Qspk2
      acc317(85)=acc317(70)*Qspvak7l6
      acc317(87)=acc317(71)*acc317(86)
      acc317(88)=acc317(72)*Qspval5l6
      acc317(81)=acc317(88)+acc317(87)+acc317(85)+acc317(84)+acc317(83)+acc317(&
      &82)+acc317(58)+acc317(81)
      acc317(81)=Qspvak4k3*acc317(81)
      acc317(82)=acc317(20)*Qspk2
      acc317(83)=acc317(44)*Qspvak1k3
      acc317(84)=acc317(52)*Qspvak1l6
      acc317(85)=acc317(64)*Qspval5l6
      acc317(82)=acc317(85)+acc317(84)+acc317(83)+acc317(22)+acc317(82)
      acc317(82)=QspQ*acc317(82)
      acc317(83)=acc317(7)*acc317(78)
      acc317(84)=-acc317(30)*Qspval5l6
      acc317(85)=acc317(75)*Qspk7
      acc317(83)=acc317(85)+acc317(84)+acc317(83)
      acc317(84)=acc317(77)-Qspk2
      acc317(83)=acc317(84)*acc317(83)
      acc317(85)=-acc317(47)*QspQ
      acc317(85)=-acc317(74)+acc317(85)
      acc317(85)=acc317(77)*acc317(85)
      acc317(87)=-acc317(14)*Qspvak1k3
      acc317(88)=acc317(38)*Qspvak1l6
      acc317(87)=acc317(88)+acc317(87)
      acc317(88)=Qspl6+Qspk7
      acc317(87)=acc317(88)*acc317(87)
      acc317(88)=acc317(25)*Qspvak1k3
      acc317(89)=acc317(45)*Qspvak1l6
      acc317(88)=acc317(56)+acc317(89)+acc317(88)
      acc317(88)=Qspk2*acc317(88)
      acc317(89)=-acc317(86)*acc317(77)
      acc317(90)=Qspk2**2
      acc317(91)=Qspvak7k2*acc317(90)
      acc317(89)=acc317(91)+acc317(89)
      acc317(89)=acc317(27)*acc317(89)
      acc317(77)=Qspk2*acc317(77)
      acc317(77)=-acc317(90)+acc317(77)
      acc317(77)=acc317(62)*acc317(77)
      acc317(84)=-acc317(29)*acc317(84)
      acc317(84)=acc317(15)+acc317(84)
      acc317(84)=Qspvak7l6*acc317(84)
      acc317(78)=acc317(2)*acc317(78)
      acc317(90)=acc317(3)*Qspvak1l6
      acc317(91)=acc317(4)*Qspl6
      acc317(86)=acc317(8)*acc317(86)
      acc317(92)=acc317(12)*Qspvak1k3
      acc317(93)=acc317(16)*Qspval5l6
      acc317(94)=acc317(18)*Qspvak2k3
      acc317(95)=acc317(26)*Qspvak2l5
      acc317(96)=acc317(33)*Qspvak4l6
      acc317(97)=acc317(35)*Qspvak2k7
      acc317(98)=acc317(41)*Qspvak2l6
      acc317(99)=acc317(67)*Qspl5
      acc317(100)=acc317(73)*Qspk7
      brack=acc317(13)+acc317(76)+acc317(77)+acc317(78)+acc317(79)+acc317(80)+a&
      &cc317(81)+acc317(82)+acc317(83)+acc317(84)+acc317(85)+acc317(86)+acc317(&
      &87)+acc317(88)+acc317(89)+acc317(90)+acc317(91)+acc317(92)+acc317(93)+ac&
      &c317(94)+acc317(95)+acc317(96)+acc317(97)+acc317(98)+acc317(99)+acc317(1&
      &00)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd317h6
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
   & bind(c, name="p0_dbaru_epnebbbarg_d317h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd317h6
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
end module p0_dbaru_epnebbbarg_d317h6l1
