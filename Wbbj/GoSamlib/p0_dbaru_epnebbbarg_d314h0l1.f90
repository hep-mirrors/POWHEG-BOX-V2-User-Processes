module     p0_dbaru_epnebbbarg_d314h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d314h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd314h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc314(86)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak3k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspl5 = dotproduct(Q,l5)
      Qspvak3k7 = dotproduct(Q,spvak3k7)
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      acc314(1)=abb314(10)
      acc314(2)=abb314(11)
      acc314(3)=abb314(12)
      acc314(4)=abb314(13)
      acc314(5)=abb314(14)
      acc314(6)=abb314(15)
      acc314(7)=abb314(16)
      acc314(8)=abb314(18)
      acc314(9)=abb314(19)
      acc314(10)=abb314(20)
      acc314(11)=abb314(21)
      acc314(12)=abb314(22)
      acc314(13)=abb314(23)
      acc314(14)=abb314(24)
      acc314(15)=abb314(25)
      acc314(16)=abb314(26)
      acc314(17)=abb314(27)
      acc314(18)=abb314(28)
      acc314(19)=abb314(29)
      acc314(20)=abb314(30)
      acc314(21)=abb314(31)
      acc314(22)=abb314(32)
      acc314(23)=abb314(33)
      acc314(24)=abb314(34)
      acc314(25)=abb314(35)
      acc314(26)=abb314(37)
      acc314(27)=abb314(38)
      acc314(28)=abb314(39)
      acc314(29)=abb314(40)
      acc314(30)=abb314(41)
      acc314(31)=abb314(42)
      acc314(32)=abb314(43)
      acc314(33)=abb314(44)
      acc314(34)=abb314(45)
      acc314(35)=abb314(46)
      acc314(36)=abb314(47)
      acc314(37)=abb314(48)
      acc314(38)=abb314(49)
      acc314(39)=abb314(50)
      acc314(40)=abb314(51)
      acc314(41)=abb314(52)
      acc314(42)=abb314(53)
      acc314(43)=abb314(54)
      acc314(44)=abb314(55)
      acc314(45)=abb314(57)
      acc314(46)=abb314(58)
      acc314(47)=abb314(59)
      acc314(48)=abb314(60)
      acc314(49)=abb314(61)
      acc314(50)=abb314(62)
      acc314(51)=abb314(66)
      acc314(52)=abb314(67)
      acc314(53)=abb314(68)
      acc314(54)=abb314(69)
      acc314(55)=abb314(74)
      acc314(56)=abb314(75)
      acc314(57)=abb314(76)
      acc314(58)=abb314(77)
      acc314(59)=abb314(81)
      acc314(60)=abb314(91)
      acc314(61)=abb314(93)
      acc314(62)=abb314(95)
      acc314(63)=abb314(116)
      acc314(64)=abb314(127)
      acc314(65)=abb314(128)
      acc314(66)=abb314(129)
      acc314(67)=abb314(130)
      acc314(68)=abb314(131)
      acc314(69)=abb314(134)
      acc314(70)=abb314(136)
      acc314(71)=Qspk4+Qspk3
      acc314(72)=-acc314(24)*acc314(71)
      acc314(73)=Qspval6k2*acc314(13)
      acc314(74)=Qspvak4k3*acc314(18)
      acc314(75)=Qspvak4k2*acc314(6)
      acc314(72)=acc314(75)+acc314(74)+acc314(73)+acc314(1)+acc314(72)
      acc314(72)=Qspvak4k2*acc314(72)
      acc314(73)=Qspvak3k2*acc314(20)
      acc314(74)=Qspval6k2*acc314(21)
      acc314(73)=acc314(74)+acc314(4)+acc314(73)
      acc314(73)=Qspvak4k3*acc314(73)
      acc314(74)=-acc314(42)*acc314(71)
      acc314(75)=acc314(44)*Qspvak7k3
      acc314(76)=Qspval6l5*acc314(19)
      acc314(77)=Qspvak7k2*acc314(50)
      acc314(78)=Qspvak1k2*acc314(5)
      acc314(79)=Qspvak1k3*acc314(7)
      acc314(80)=Qspval5k2*acc314(36)
      acc314(81)=Qspval6k3*acc314(38)
      acc314(82)=QspQ*acc314(26)
      acc314(83)=acc314(41)*acc314(71)
      acc314(83)=acc314(37)+acc314(83)
      acc314(83)=Qspval6k2*acc314(83)
      acc314(84)=-Qspval6k2*acc314(41)
      acc314(84)=acc314(22)+acc314(84)
      acc314(84)=Qspk2*acc314(84)
      acc314(72)=acc314(72)+acc314(84)+acc314(73)+acc314(83)+acc314(82)+acc314(&
      &81)+acc314(80)+acc314(79)+acc314(78)+acc314(77)+acc314(76)+acc314(75)+ac&
      &c314(2)+acc314(74)
      acc314(72)=Qspvak2k7*acc314(72)
      acc314(73)=acc314(53)*acc314(71)
      acc314(74)=Qspvak4k7*acc314(40)
      acc314(75)=Qspval6k7*acc314(47)
      acc314(76)=Qspl5*acc314(32)
      acc314(77)=QspQ*acc314(23)
      acc314(78)=Qspvak4k3*acc314(30)
      acc314(79)=Qspk2*acc314(35)
      acc314(80)=Qspvak4k2*acc314(10)
      acc314(73)=acc314(80)+acc314(79)+acc314(78)+acc314(77)+acc314(76)+acc314(&
      &75)+acc314(3)+acc314(74)+acc314(73)
      acc314(73)=Qspvak4k2*acc314(73)
      acc314(74)=acc314(54)*Qspvak3k7
      acc314(75)=Qspvak3k2*acc314(33)
      acc314(76)=Qspvak4k7*acc314(58)
      acc314(77)=Qspval6k7*acc314(28)
      acc314(78)=Qspl5*acc314(60)
      acc314(79)=QspQ*acc314(34)
      acc314(74)=acc314(79)+acc314(78)+acc314(77)+acc314(76)+acc314(75)+acc314(&
      &74)+acc314(29)
      acc314(74)=Qspvak4k3*acc314(74)
      acc314(75)=Qspvak4k7*acc314(70)
      acc314(76)=Qspval6k7*acc314(55)
      acc314(77)=Qspl5*acc314(62)
      acc314(75)=acc314(77)+acc314(75)-acc314(76)
      acc314(76)=Qspk2-acc314(71)
      acc314(76)=acc314(63)*acc314(76)
      acc314(77)=Qspval5k2*acc314(8)
      acc314(78)=QspQ*acc314(16)
      acc314(79)=Qspval6k2*acc314(45)
      acc314(80)=Qspvak4k3*acc314(52)
      acc314(76)=acc314(80)+acc314(79)+acc314(78)+acc314(77)+acc314(11)+acc314(&
      &76)+acc314(75)
      acc314(76)=Qspk2*acc314(76)
      acc314(77)=-acc314(16)*acc314(71)
      acc314(78)=Qspvak1k2*acc314(17)
      acc314(79)=Qspvak1k3*acc314(27)
      acc314(80)=Qspval5k2*acc314(56)
      acc314(81)=Qspval6k3*acc314(66)
      acc314(77)=acc314(81)+acc314(80)+acc314(79)+acc314(15)+acc314(78)+acc314(&
      &77)
      acc314(77)=QspQ*acc314(77)
      acc314(75)=-acc314(9)+acc314(75)
      acc314(71)=-acc314(75)*acc314(71)
      acc314(75)=Qspk7-Qspk1
      acc314(78)=acc314(68)*acc314(75)
      acc314(79)=Qspl5*acc314(57)
      acc314(80)=QspQ*acc314(67)
      acc314(78)=acc314(80)+acc314(79)+acc314(51)+acc314(78)
      acc314(78)=Qspval6k2*acc314(78)
      acc314(79)=acc314(31)*acc314(75)
      acc314(80)=Qspval6l5*acc314(59)
      acc314(81)=Qspvak7k2*acc314(39)
      acc314(82)=acc314(46)*acc314(75)
      acc314(82)=acc314(12)+acc314(82)
      acc314(82)=Qspvak1k2*acc314(82)
      acc314(83)=acc314(48)*acc314(75)
      acc314(83)=acc314(43)+acc314(83)
      acc314(83)=Qspvak1k3*acc314(83)
      acc314(84)=Qspval5k2*acc314(25)
      acc314(75)=acc314(65)*acc314(75)
      acc314(75)=acc314(64)+acc314(75)
      acc314(75)=Qspval6k3*acc314(75)
      acc314(85)=Qspval6k7*acc314(14)
      acc314(86)=Qspval5k2*acc314(69)
      acc314(86)=acc314(61)+acc314(86)
      acc314(86)=Qspl5*acc314(86)
      brack=acc314(49)+acc314(71)+acc314(72)+acc314(73)+acc314(74)+acc314(75)+a&
      &cc314(76)+acc314(77)+acc314(78)+acc314(79)+acc314(80)+acc314(81)+acc314(&
      &82)+acc314(83)+acc314(84)+acc314(85)+acc314(86)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd314h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d314
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d314 = 0.0_ki
      d314 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d314, ki), aimag(d314), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d314h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd314h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d314
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d314 = 0.0_ki
      d314 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d314, ki), aimag(d314), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d314h0l1
