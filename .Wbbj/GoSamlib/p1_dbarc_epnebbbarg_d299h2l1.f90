module     p1_dbarc_epnebbbarg_d299h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d299h2l1.f90
   ! generator: buildfortran.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd299h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc299(105)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4l6
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2e7
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      acc299(1)=abb299(8)
      acc299(2)=abb299(9)
      acc299(3)=abb299(10)
      acc299(4)=abb299(11)
      acc299(5)=abb299(12)
      acc299(6)=abb299(13)
      acc299(7)=abb299(14)
      acc299(8)=abb299(15)
      acc299(9)=abb299(16)
      acc299(10)=abb299(17)
      acc299(11)=abb299(18)
      acc299(12)=abb299(19)
      acc299(13)=abb299(20)
      acc299(14)=abb299(21)
      acc299(15)=abb299(22)
      acc299(16)=abb299(23)
      acc299(17)=abb299(24)
      acc299(18)=abb299(25)
      acc299(19)=abb299(26)
      acc299(20)=abb299(27)
      acc299(21)=abb299(28)
      acc299(22)=abb299(29)
      acc299(23)=abb299(30)
      acc299(24)=abb299(31)
      acc299(25)=abb299(32)
      acc299(26)=abb299(33)
      acc299(27)=abb299(34)
      acc299(28)=abb299(35)
      acc299(29)=abb299(36)
      acc299(30)=abb299(37)
      acc299(31)=abb299(38)
      acc299(32)=abb299(39)
      acc299(33)=abb299(40)
      acc299(34)=abb299(41)
      acc299(35)=abb299(42)
      acc299(36)=abb299(44)
      acc299(37)=abb299(47)
      acc299(38)=abb299(48)
      acc299(39)=abb299(50)
      acc299(40)=abb299(52)
      acc299(41)=abb299(53)
      acc299(42)=abb299(54)
      acc299(43)=abb299(55)
      acc299(44)=abb299(58)
      acc299(45)=abb299(59)
      acc299(46)=abb299(60)
      acc299(47)=abb299(61)
      acc299(48)=abb299(62)
      acc299(49)=abb299(63)
      acc299(50)=abb299(65)
      acc299(51)=abb299(66)
      acc299(52)=abb299(67)
      acc299(53)=abb299(68)
      acc299(54)=abb299(69)
      acc299(55)=abb299(70)
      acc299(56)=abb299(71)
      acc299(57)=abb299(72)
      acc299(58)=abb299(73)
      acc299(59)=abb299(74)
      acc299(60)=abb299(75)
      acc299(61)=abb299(76)
      acc299(62)=abb299(77)
      acc299(63)=abb299(78)
      acc299(64)=abb299(79)
      acc299(65)=abb299(80)
      acc299(66)=abb299(81)
      acc299(67)=abb299(84)
      acc299(68)=abb299(85)
      acc299(69)=abb299(86)
      acc299(70)=abb299(87)
      acc299(71)=abb299(88)
      acc299(72)=abb299(89)
      acc299(73)=abb299(90)
      acc299(74)=abb299(92)
      acc299(75)=abb299(94)
      acc299(76)=abb299(95)
      acc299(77)=abb299(97)
      acc299(78)=abb299(99)
      acc299(79)=abb299(100)
      acc299(80)=abb299(102)
      acc299(81)=abb299(103)
      acc299(82)=abb299(104)
      acc299(83)=abb299(106)
      acc299(84)=abb299(111)
      acc299(85)=abb299(116)
      acc299(86)=abb299(117)
      acc299(87)=abb299(119)
      acc299(88)=abb299(125)
      acc299(89)=abb299(126)
      acc299(90)=abb299(137)
      acc299(91)=-Qspk7-Qspl6
      acc299(91)=acc299(48)*acc299(91)
      acc299(92)=Qspvak1k2*acc299(23)
      acc299(93)=Qspvak4k2*acc299(40)
      acc299(94)=Qspvak4l6*acc299(35)
      acc299(95)=QspQ*acc299(14)
      acc299(96)=Qspk2*acc299(80)
      acc299(91)=acc299(96)+acc299(95)+acc299(94)+acc299(93)+acc299(8)+acc299(9&
      &2)+acc299(91)
      acc299(91)=Qspk2*acc299(91)
      acc299(92)=-QspQ-Qspl6
      acc299(92)=acc299(56)*acc299(92)
      acc299(93)=Qspvak7l6*acc299(75)
      acc299(94)=Qspval6k2*acc299(25)
      acc299(95)=Qspvak1k2*acc299(17)
      acc299(96)=Qspvak7k2*acc299(76)
      acc299(97)=Qspvak1k2*acc299(28)
      acc299(97)=acc299(1)+acc299(97)
      acc299(97)=Qspk2*acc299(97)
      acc299(92)=acc299(97)+acc299(96)+acc299(95)+acc299(94)+acc299(2)+acc299(9&
      &3)+acc299(92)
      acc299(92)=Qspvak4k3*acc299(92)
      acc299(93)=Qspvak2k3*acc299(32)
      acc299(94)=Qspvak2l6*acc299(31)
      acc299(95)=Qspvak2k7*acc299(30)
      acc299(93)=acc299(95)+acc299(94)+acc299(10)+acc299(93)
      acc299(93)=Qspvak1k2*acc299(93)
      acc299(94)=Qspvak4k2*acc299(83)
      acc299(95)=Qspvak4l6*acc299(78)
      acc299(94)=acc299(94)-acc299(95)
      acc299(95)=acc299(49)+acc299(94)
      acc299(95)=Qspl6*acc299(95)
      acc299(94)=acc299(82)+acc299(94)
      acc299(94)=Qspk7*acc299(94)
      acc299(96)=Qspvak4k2*acc299(51)
      acc299(97)=Qspvak4l6*acc299(86)
      acc299(96)=acc299(97)+acc299(3)+acc299(96)
      acc299(96)=QspQ*acc299(96)
      acc299(97)=acc299(73)*Qspvak2k1
      acc299(98)=acc299(67)*Qspvak2l5
      acc299(99)=acc299(5)*Qspvak1l6
      acc299(100)=Qspvak2k3*acc299(58)
      acc299(101)=Qspvak7l6*acc299(53)
      acc299(102)=Qspval6k2*acc299(55)
      acc299(103)=Qspvak2l6*acc299(61)
      acc299(104)=Qspvak2k7*acc299(20)
      acc299(105)=Qspvak7k2*acc299(47)
      acc299(91)=acc299(92)+acc299(91)+acc299(96)+acc299(94)+acc299(95)+acc299(&
      &105)+acc299(93)+acc299(104)+acc299(103)+acc299(102)+acc299(101)+acc299(1&
      &00)+acc299(99)+acc299(6)+acc299(97)+acc299(98)
      acc299(91)=Qspe7*acc299(91)
      acc299(92)=Qspvak7k2*acc299(39)
      acc299(93)=Qspk7*acc299(18)
      acc299(94)=QspQ*acc299(27)
      acc299(92)=acc299(94)+acc299(93)+acc299(16)+acc299(92)
      acc299(92)=Qspk2*acc299(92)
      acc299(93)=Qspvae7k2*acc299(69)
      acc299(94)=Qspvae7l6*acc299(44)
      acc299(93)=acc299(94)+acc299(38)+acc299(93)
      acc299(93)=Qspk7*acc299(93)
      acc299(94)=Qspvae7k2*acc299(72)
      acc299(95)=Qspvae7l6*acc299(45)
      acc299(94)=acc299(95)+acc299(21)+acc299(94)
      acc299(94)=QspQ*acc299(94)
      acc299(95)=Qspval6k2*acc299(42)
      acc299(96)=Qspvak2l6*acc299(43)
      acc299(97)=Qspvak2k7*acc299(59)
      acc299(98)=Qspvae7k2*acc299(36)
      acc299(99)=Qspvae7l6*acc299(41)
      acc299(100)=Qspvak7k2*acc299(64)
      acc299(101)=Qspl6*acc299(50)
      acc299(92)=acc299(92)+acc299(94)+acc299(93)+acc299(101)+acc299(100)+acc29&
      &9(99)+acc299(98)+acc299(97)+acc299(96)+acc299(11)+acc299(95)
      acc299(92)=Qspvak4k3*acc299(92)
      acc299(93)=Qspk7*acc299(90)
      acc299(94)=Qspvak2e7*acc299(81)
      acc299(95)=Qspvae7k2*acc299(24)
      acc299(96)=Qspvae7l6*acc299(87)
      acc299(97)=Qspvak4k2*acc299(54)
      acc299(98)=Qspvak4l6*acc299(63)
      acc299(99)=Qspl6*acc299(9)
      acc299(100)=QspQ*acc299(22)
      acc299(94)=acc299(100)-acc299(93)+acc299(99)+acc299(98)+acc299(97)+acc299&
      &(96)+acc299(95)+acc299(4)+acc299(94)
      acc299(94)=QspQ*acc299(94)
      acc299(95)=Qspvak4k2*acc299(60)
      acc299(96)=Qspvak4l6*acc299(85)
      acc299(97)=Qspvak7k2*acc299(65)
      acc299(98)=Qspl6*acc299(57)
      acc299(99)=Qspk7*acc299(19)
      acc299(100)=QspQ*acc299(13)
      acc299(101)=Qspk2*acc299(70)
      acc299(95)=acc299(101)+acc299(100)+acc299(99)+acc299(98)+acc299(97)+acc29&
      &9(96)+acc299(7)+acc299(95)
      acc299(95)=Qspk2*acc299(95)
      acc299(96)=Qspvak4k2*acc299(77)
      acc299(97)=Qspvak4l6*acc299(71)
      acc299(96)=acc299(96)-acc299(97)
      acc299(97)=Qspvak2e7*acc299(84)
      acc299(98)=Qspvae7k2*acc299(89)
      acc299(99)=Qspvae7l6*acc299(88)
      acc299(100)=-Qspl6*acc299(90)
      acc299(93)=-acc299(93)+acc299(100)+acc299(99)+acc299(98)+acc299(15)+acc29&
      &9(97)-acc299(96)
      acc299(93)=Qspk7*acc299(93)
      acc299(97)=Qspvak2k3*acc299(46)
      acc299(98)=Qspvak2l6*acc299(62)
      acc299(99)=Qspvak2k7*acc299(34)
      acc299(97)=acc299(99)+acc299(98)+acc299(29)+acc299(97)
      acc299(97)=Qspvak7k2*acc299(97)
      acc299(96)=acc299(52)-acc299(96)
      acc299(96)=Qspl6*acc299(96)
      acc299(98)=Qspvak7l6*acc299(37)
      acc299(99)=Qspvak2e7*acc299(33)
      acc299(100)=Qspval6k2*acc299(68)
      acc299(101)=Qspvak2l6*acc299(66)
      acc299(102)=Qspvak2k7*acc299(26)
      acc299(103)=Qspvae7k2*acc299(74)
      acc299(104)=Qspvae7l6*acc299(79)
      brack=acc299(12)+acc299(91)+acc299(92)+acc299(93)+acc299(94)+acc299(95)+a&
      &cc299(96)+acc299(97)+acc299(98)+acc299(99)+acc299(100)+acc299(101)+acc29&
      &9(102)+acc299(103)+acc299(104)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram299_sign, shift => diagram299_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd299h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d299
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d299 = 0.0_ki
      d299 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d299, ki), aimag(d299), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd299h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d299
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d299 = 0.0_ki
      d299 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d299, ki), aimag(d299), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d299h2l1
