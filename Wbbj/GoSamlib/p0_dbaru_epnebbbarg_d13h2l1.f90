module     p0_dbaru_epnebbbarg_d13h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d13h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd13h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc13(72)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: QspQ
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak1l6
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      QspQ = dotproduct(Q,Q)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      acc13(1)=abb13(9)
      acc13(2)=abb13(10)
      acc13(3)=abb13(11)
      acc13(4)=abb13(12)
      acc13(5)=abb13(13)
      acc13(6)=abb13(14)
      acc13(7)=abb13(15)
      acc13(8)=abb13(16)
      acc13(9)=abb13(17)
      acc13(10)=abb13(18)
      acc13(11)=abb13(19)
      acc13(12)=abb13(20)
      acc13(13)=abb13(21)
      acc13(14)=abb13(22)
      acc13(15)=abb13(23)
      acc13(16)=abb13(24)
      acc13(17)=abb13(25)
      acc13(18)=abb13(26)
      acc13(19)=abb13(27)
      acc13(20)=abb13(28)
      acc13(21)=abb13(29)
      acc13(22)=abb13(30)
      acc13(23)=abb13(31)
      acc13(24)=abb13(32)
      acc13(25)=abb13(33)
      acc13(26)=abb13(34)
      acc13(27)=abb13(35)
      acc13(28)=abb13(36)
      acc13(29)=abb13(37)
      acc13(30)=abb13(38)
      acc13(31)=abb13(39)
      acc13(32)=abb13(40)
      acc13(33)=abb13(41)
      acc13(34)=abb13(42)
      acc13(35)=abb13(43)
      acc13(36)=abb13(44)
      acc13(37)=abb13(45)
      acc13(38)=abb13(46)
      acc13(39)=abb13(47)
      acc13(40)=abb13(48)
      acc13(41)=abb13(52)
      acc13(42)=abb13(53)
      acc13(43)=abb13(55)
      acc13(44)=abb13(56)
      acc13(45)=abb13(57)
      acc13(46)=abb13(59)
      acc13(47)=abb13(61)
      acc13(48)=abb13(63)
      acc13(49)=abb13(68)
      acc13(50)=abb13(74)
      acc13(51)=abb13(89)
      acc13(52)=abb13(90)
      acc13(53)=abb13(91)
      acc13(54)=abb13(92)
      acc13(55)=abb13(93)
      acc13(56)=abb13(94)
      acc13(57)=Qspvak1k2*acc13(23)
      acc13(58)=Qspvak7k2*acc13(52)
      acc13(57)=acc13(58)+acc13(33)+acc13(57)
      acc13(57)=Qspvak4k3*acc13(57)
      acc13(58)=Qspl6+Qspl5
      acc13(59)=acc13(50)*acc13(58)
      acc13(60)=Qspk1*acc13(30)
      acc13(61)=Qspk7*acc13(42)
      acc13(62)=Qspvak1k7*acc13(19)
      acc13(63)=Qspvak7k1*acc13(53)
      acc13(64)=Qspval6k2*acc13(17)
      acc13(65)=Qspvak1k2*acc13(38)
      acc13(66)=Qspvak1k3*acc13(27)
      acc13(67)=Qspvak4k2*acc13(2)
      acc13(68)=Qspvak7k2*acc13(51)
      acc13(69)=Qspvak7k3*acc13(29)
      acc13(70)=QspQ*acc13(25)
      acc13(71)=Qspval5k2*acc13(8)
      acc13(72)=Qspval5l6*acc13(26)
      acc13(57)=acc13(72)+acc13(57)+acc13(71)+acc13(70)+acc13(69)+acc13(68)+acc&
      &13(67)+acc13(66)+acc13(65)+acc13(64)+acc13(63)+acc13(62)+acc13(61)+acc13&
      &(15)+acc13(60)+acc13(59)
      acc13(57)=Qspk2*acc13(57)
      acc13(59)=Qspvak1k2*acc13(22)
      acc13(60)=Qspvak7k2*acc13(55)
      acc13(59)=acc13(59)+acc13(60)
      acc13(59)=Qspvak4k3*acc13(59)
      acc13(60)=Qspk1*acc13(36)
      acc13(61)=Qspk7*acc13(7)
      acc13(62)=Qspvak1k7*acc13(21)
      acc13(63)=Qspvak7k1*acc13(49)
      acc13(64)=Qspval6k2*acc13(56)
      acc13(65)=Qspvak1k2*acc13(40)
      acc13(66)=Qspvak1k3*acc13(37)
      acc13(67)=Qspvak4k2*acc13(10)
      acc13(68)=Qspvak7k2*acc13(54)
      acc13(69)=Qspvak7k3*acc13(44)
      acc13(70)=Qspval5k2*acc13(20)
      acc13(59)=acc13(59)+acc13(70)+acc13(69)+acc13(68)+acc13(67)+acc13(66)+acc&
      &13(65)+acc13(64)+acc13(63)+acc13(62)+acc13(61)+acc13(3)+acc13(60)
      acc13(59)=Qspval5l6*acc13(59)
      acc13(60)=acc13(43)*Qspvak7l6
      acc13(61)=acc13(18)*Qspvak1l6
      acc13(62)=Qspval6k2*acc13(45)
      acc13(63)=Qspvak1k2*acc13(5)
      acc13(64)=Qspvak7k2*acc13(48)
      acc13(65)=QspQ*acc13(46)
      acc13(66)=Qspval5k2*acc13(12)
      acc13(60)=acc13(66)+acc13(65)+acc13(64)+acc13(63)+acc13(62)+acc13(61)+acc&
      &13(60)+acc13(31)
      acc13(60)=Qspvak4k3*acc13(60)
      acc13(61)=Qspvak1k3*acc13(24)
      acc13(62)=Qspvak4k2*acc13(39)
      acc13(63)=Qspvak7k3*acc13(28)
      acc13(61)=-acc13(61)-acc13(62)+acc13(63)-acc13(41)
      acc13(61)=acc13(61)*acc13(58)
      acc13(62)=Qspvak1k3*acc13(34)
      acc13(63)=Qspvak4k2*acc13(16)
      acc13(64)=Qspvak7k3*acc13(35)
      acc13(62)=acc13(64)+acc13(63)+acc13(4)+acc13(62)
      acc13(62)=QspQ*acc13(62)
      acc13(58)=-acc13(6)*acc13(58)
      acc13(63)=-QspQ*acc13(56)
      acc13(58)=acc13(63)+acc13(1)+acc13(58)
      acc13(58)=Qspval5k2*acc13(58)
      acc13(63)=Qspk1*acc13(9)
      acc13(64)=Qspk7*acc13(32)
      acc13(65)=Qspvak1k7*acc13(11)
      acc13(66)=Qspvak7k1*acc13(47)
      acc13(67)=Qspval6k2*acc13(14)
      brack=acc13(13)+acc13(57)+acc13(58)+acc13(59)+acc13(60)+acc13(61)+acc13(6&
      &2)+acc13(63)+acc13(64)+acc13(65)+acc13(66)+acc13(67)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram13_sign, shift => diagram13_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd13h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d13
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d13 = 0.0_ki
      d13 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d13, ki), aimag(d13), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd13h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d13
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d13 = 0.0_ki
      d13 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d13, ki), aimag(d13), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d13h2l1
