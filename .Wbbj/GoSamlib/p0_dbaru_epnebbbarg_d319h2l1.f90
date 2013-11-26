module     p0_dbaru_epnebbbarg_d319h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d319h2l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd319h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc319(112)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7l6
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l6
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      acc319(1)=abb319(10)
      acc319(2)=abb319(11)
      acc319(3)=abb319(12)
      acc319(4)=abb319(13)
      acc319(5)=abb319(14)
      acc319(6)=abb319(15)
      acc319(7)=abb319(16)
      acc319(8)=abb319(17)
      acc319(9)=abb319(18)
      acc319(10)=abb319(19)
      acc319(11)=abb319(20)
      acc319(12)=abb319(21)
      acc319(13)=abb319(22)
      acc319(14)=abb319(23)
      acc319(15)=abb319(24)
      acc319(16)=abb319(25)
      acc319(17)=abb319(26)
      acc319(18)=abb319(27)
      acc319(19)=abb319(28)
      acc319(20)=abb319(29)
      acc319(21)=abb319(30)
      acc319(22)=abb319(31)
      acc319(23)=abb319(32)
      acc319(24)=abb319(33)
      acc319(25)=abb319(34)
      acc319(26)=abb319(35)
      acc319(27)=abb319(36)
      acc319(28)=abb319(37)
      acc319(29)=abb319(38)
      acc319(30)=abb319(39)
      acc319(31)=abb319(40)
      acc319(32)=abb319(41)
      acc319(33)=abb319(42)
      acc319(34)=abb319(43)
      acc319(35)=abb319(44)
      acc319(36)=abb319(45)
      acc319(37)=abb319(46)
      acc319(38)=abb319(47)
      acc319(39)=abb319(48)
      acc319(40)=abb319(49)
      acc319(41)=abb319(50)
      acc319(42)=abb319(51)
      acc319(43)=abb319(52)
      acc319(44)=abb319(53)
      acc319(45)=abb319(54)
      acc319(46)=abb319(55)
      acc319(47)=abb319(56)
      acc319(48)=abb319(57)
      acc319(49)=abb319(58)
      acc319(50)=abb319(59)
      acc319(51)=abb319(60)
      acc319(52)=abb319(61)
      acc319(53)=abb319(62)
      acc319(54)=abb319(63)
      acc319(55)=abb319(64)
      acc319(56)=abb319(65)
      acc319(57)=abb319(66)
      acc319(58)=abb319(67)
      acc319(59)=abb319(68)
      acc319(60)=abb319(69)
      acc319(61)=abb319(71)
      acc319(62)=abb319(72)
      acc319(63)=abb319(73)
      acc319(64)=abb319(74)
      acc319(65)=abb319(77)
      acc319(66)=abb319(78)
      acc319(67)=abb319(83)
      acc319(68)=abb319(84)
      acc319(69)=abb319(86)
      acc319(70)=abb319(87)
      acc319(71)=abb319(90)
      acc319(72)=abb319(93)
      acc319(73)=abb319(94)
      acc319(74)=abb319(95)
      acc319(75)=abb319(99)
      acc319(76)=abb319(105)
      acc319(77)=abb319(107)
      acc319(78)=abb319(109)
      acc319(79)=abb319(116)
      acc319(80)=abb319(121)
      acc319(81)=abb319(122)
      acc319(82)=abb319(123)
      acc319(83)=abb319(124)
      acc319(84)=abb319(126)
      acc319(85)=abb319(130)
      acc319(86)=abb319(138)
      acc319(87)=abb319(168)
      acc319(88)=abb319(173)
      acc319(89)=abb319(243)
      acc319(90)=abb319(246)
      acc319(91)=abb319(251)
      acc319(92)=Qspk4+Qspk3
      acc319(93)=acc319(92)-Qspk2
      acc319(94)=acc319(50)*acc319(93)
      acc319(95)=Qspvak1k2*acc319(39)
      acc319(96)=Qspvak4k2*acc319(57)
      acc319(97)=Qspvak4k3*acc319(84)
      acc319(98)=Qspval5l6*acc319(59)
      acc319(94)=acc319(98)+acc319(97)+acc319(96)+acc319(95)+acc319(23)+acc319(&
      &94)
      acc319(94)=Qspk2*acc319(94)
      acc319(95)=-acc319(59)*acc319(92)
      acc319(96)=Qspvak1k2*acc319(53)
      acc319(97)=Qspvak4k2*acc319(4)
      acc319(98)=Qspvak4k3*acc319(78)
      acc319(95)=acc319(98)+acc319(97)+acc319(96)+acc319(26)+acc319(95)
      acc319(95)=Qspval5l6*acc319(95)
      acc319(96)=-acc319(90)*acc319(92)
      acc319(97)=Qspk7+Qspl5
      acc319(98)=acc319(88)*acc319(97)
      acc319(99)=Qspl6*acc319(68)
      acc319(100)=Qspvak1k3*acc319(14)
      acc319(101)=Qspvak1l6*acc319(6)
      acc319(102)=Qspvak2k3*acc319(27)
      acc319(103)=Qspvak2l5*acc319(37)
      acc319(104)=Qspvak4l6*acc319(66)
      acc319(105)=Qspvak2l6*acc319(20)
      acc319(106)=Qspvak2k7*acc319(15)
      acc319(107)=Qspvak7l6*acc319(51)
      acc319(108)=QspQ*acc319(54)
      acc319(109)=Qspvak1k2*acc319(24)
      acc319(110)=Qspvak4k2*acc319(5)
      acc319(111)=Qspvak4k3*acc319(71)
      acc319(94)=acc319(94)+acc319(95)+acc319(111)+acc319(110)+acc319(109)+acc3&
      &19(108)+acc319(107)+acc319(106)+acc319(105)+acc319(104)+acc319(103)+acc3&
      &19(102)+acc319(101)+acc319(100)+acc319(3)+acc319(99)+acc319(98)+acc319(9&
      &6)
      acc319(94)=Qspe7*acc319(94)
      acc319(95)=Qspvak2l6*acc319(28)
      acc319(96)=Qspvak2k7*acc319(67)
      acc319(98)=Qspvak7l6*acc319(70)
      acc319(99)=Qspk7*acc319(91)
      acc319(95)=acc319(95)-acc319(96)+acc319(98)+acc319(99)
      acc319(93)=acc319(42)*acc319(93)
      acc319(96)=Qspvak2e7*acc319(31)
      acc319(98)=Qspvae7l6*acc319(58)
      acc319(99)=QspQ*acc319(77)
      acc319(100)=Qspvak1k2*acc319(32)
      acc319(101)=Qspvak4k2*acc319(60)
      acc319(102)=Qspvak4k3*acc319(83)
      acc319(103)=Qspval5l6*acc319(56)
      acc319(93)=acc319(103)+acc319(102)+acc319(101)+acc319(100)+acc319(99)+acc&
      &319(98)+acc319(96)+acc319(8)+acc319(93)+acc319(95)
      acc319(93)=Qspk2*acc319(93)
      acc319(96)=Qspvak2l6*acc319(16)
      acc319(98)=Qspvak2k7*acc319(55)
      acc319(99)=Qspvak7l6*acc319(48)
      acc319(100)=Qspk7*acc319(25)
      acc319(101)=Qspvak2e7*acc319(49)
      acc319(102)=Qspvae7l6*acc319(47)
      acc319(103)=QspQ*acc319(46)
      acc319(96)=acc319(103)+acc319(102)+acc319(101)+acc319(100)+acc319(99)+acc&
      &319(98)+acc319(36)+acc319(96)
      acc319(96)=Qspvak1k2*acc319(96)
      acc319(98)=Qspvak2l6*acc319(34)
      acc319(99)=Qspvak2k7*acc319(75)
      acc319(100)=Qspvak7l6*acc319(30)
      acc319(101)=Qspk7*acc319(19)
      acc319(102)=Qspvak2e7*acc319(29)
      acc319(103)=Qspvae7l6*acc319(2)
      acc319(104)=QspQ*acc319(18)
      acc319(98)=acc319(104)+acc319(103)+acc319(102)+acc319(101)+acc319(100)+ac&
      &c319(99)+acc319(22)+acc319(98)
      acc319(98)=Qspvak4k2*acc319(98)
      acc319(99)=Qspvak2l6*acc319(1)
      acc319(100)=Qspvak2k7*acc319(73)
      acc319(101)=Qspvak7l6*acc319(80)
      acc319(102)=Qspk7*acc319(82)
      acc319(103)=Qspvak2e7*acc319(79)
      acc319(104)=Qspvae7l6*acc319(76)
      acc319(105)=QspQ*acc319(81)
      acc319(99)=acc319(105)+acc319(104)+acc319(103)+acc319(102)+acc319(101)+ac&
      &c319(100)+acc319(72)+acc319(99)
      acc319(99)=Qspvak4k3*acc319(99)
      acc319(100)=-acc319(56)*acc319(92)
      acc319(101)=QspQ*acc319(63)
      acc319(102)=Qspvak1k2*acc319(52)
      acc319(103)=Qspvak4k2*acc319(62)
      acc319(104)=Qspvak4k3*acc319(85)
      acc319(100)=acc319(104)+acc319(103)+acc319(102)+acc319(38)+acc319(101)+ac&
      &c319(100)
      acc319(100)=Qspval5l6*acc319(100)
      acc319(101)=Qspvak2e7*acc319(44)
      acc319(102)=Qspvae7l6*acc319(65)
      acc319(103)=QspQ*acc319(69)
      acc319(95)=acc319(89)+acc319(95)+acc319(103)+acc319(101)+acc319(102)
      acc319(92)=-acc319(95)*acc319(92)
      acc319(95)=Qspvak2e7*acc319(45)
      acc319(101)=Qspvae7l6*acc319(61)
      acc319(95)=acc319(101)+acc319(21)+acc319(95)
      acc319(95)=QspQ*acc319(95)
      acc319(101)=Qspl6*acc319(64)
      acc319(102)=Qspvak1k3*acc319(7)
      acc319(103)=Qspvak1l6*acc319(13)
      acc319(104)=Qspvak2k3*acc319(33)
      acc319(105)=Qspvak2l5*acc319(35)
      acc319(106)=Qspvak4l6*acc319(74)
      acc319(107)=Qspl5*acc319(87)
      acc319(108)=Qspvak2l6*acc319(17)
      acc319(109)=Qspvak2k7*acc319(11)
      acc319(110)=Qspvak7l6*acc319(41)
      acc319(111)=Qspk7*acc319(86)
      acc319(112)=acc319(12)*acc319(97)
      acc319(112)=acc319(10)+acc319(112)
      acc319(112)=Qspvak2e7*acc319(112)
      acc319(97)=acc319(43)*acc319(97)
      acc319(97)=acc319(40)+acc319(97)
      acc319(97)=Qspvae7l6*acc319(97)
      brack=acc319(9)+acc319(92)+acc319(93)+acc319(94)+acc319(95)+acc319(96)+ac&
      &c319(97)+acc319(98)+acc319(99)+acc319(100)+acc319(101)+acc319(102)+acc31&
      &9(103)+acc319(104)+acc319(105)+acc319(106)+acc319(107)+acc319(108)+acc31&
      &9(109)+acc319(110)+acc319(111)+acc319(112)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram319_sign, shift => diagram319_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd319h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d319
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d319 = 0.0_ki
      d319 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d319, ki), aimag(d319), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd319h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d319
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d319 = 0.0_ki
      d319 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d319, ki), aimag(d319), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d319h2l1
