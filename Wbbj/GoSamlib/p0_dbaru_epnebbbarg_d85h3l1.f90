module     p0_dbaru_epnebbbarg_d85h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d85h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd85h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc85(111)
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      acc85(1)=abb85(5)
      acc85(2)=abb85(6)
      acc85(3)=abb85(7)
      acc85(4)=abb85(8)
      acc85(5)=abb85(9)
      acc85(6)=abb85(10)
      acc85(7)=abb85(11)
      acc85(8)=abb85(12)
      acc85(9)=abb85(13)
      acc85(10)=abb85(14)
      acc85(11)=abb85(15)
      acc85(12)=abb85(16)
      acc85(13)=abb85(17)
      acc85(14)=abb85(18)
      acc85(15)=abb85(19)
      acc85(16)=abb85(20)
      acc85(17)=abb85(21)
      acc85(18)=abb85(22)
      acc85(19)=abb85(23)
      acc85(20)=abb85(24)
      acc85(21)=abb85(25)
      acc85(22)=abb85(26)
      acc85(23)=abb85(27)
      acc85(24)=abb85(28)
      acc85(25)=abb85(29)
      acc85(26)=abb85(31)
      acc85(27)=abb85(32)
      acc85(28)=abb85(33)
      acc85(29)=abb85(34)
      acc85(30)=abb85(35)
      acc85(31)=abb85(36)
      acc85(32)=abb85(37)
      acc85(33)=abb85(38)
      acc85(34)=abb85(39)
      acc85(35)=abb85(40)
      acc85(36)=abb85(41)
      acc85(37)=abb85(42)
      acc85(38)=abb85(43)
      acc85(39)=abb85(44)
      acc85(40)=abb85(45)
      acc85(41)=abb85(46)
      acc85(42)=abb85(47)
      acc85(43)=abb85(48)
      acc85(44)=abb85(49)
      acc85(45)=abb85(50)
      acc85(46)=abb85(51)
      acc85(47)=abb85(52)
      acc85(48)=abb85(53)
      acc85(49)=abb85(54)
      acc85(50)=abb85(55)
      acc85(51)=abb85(56)
      acc85(52)=abb85(57)
      acc85(53)=abb85(58)
      acc85(54)=abb85(59)
      acc85(55)=abb85(60)
      acc85(56)=abb85(61)
      acc85(57)=abb85(62)
      acc85(58)=abb85(63)
      acc85(59)=abb85(64)
      acc85(60)=abb85(65)
      acc85(61)=abb85(66)
      acc85(62)=abb85(67)
      acc85(63)=abb85(68)
      acc85(64)=abb85(69)
      acc85(65)=abb85(70)
      acc85(66)=abb85(71)
      acc85(67)=abb85(72)
      acc85(68)=abb85(73)
      acc85(69)=abb85(74)
      acc85(70)=abb85(75)
      acc85(71)=abb85(76)
      acc85(72)=abb85(77)
      acc85(73)=abb85(78)
      acc85(74)=abb85(79)
      acc85(75)=abb85(80)
      acc85(76)=abb85(81)
      acc85(77)=abb85(82)
      acc85(78)=abb85(83)
      acc85(79)=abb85(84)
      acc85(80)=abb85(85)
      acc85(81)=abb85(86)
      acc85(82)=abb85(87)
      acc85(83)=abb85(88)
      acc85(84)=abb85(89)
      acc85(85)=abb85(90)
      acc85(86)=abb85(91)
      acc85(87)=abb85(92)
      acc85(88)=abb85(93)
      acc85(89)=abb85(94)
      acc85(90)=abb85(95)
      acc85(91)=abb85(96)
      acc85(92)=abb85(97)
      acc85(93)=abb85(98)
      acc85(94)=abb85(99)
      acc85(95)=abb85(100)
      acc85(96)=abb85(101)
      acc85(97)=abb85(102)
      acc85(98)=abb85(103)
      acc85(99)=Qspk7+Qspk1
      acc85(100)=acc85(71)*acc85(99)
      acc85(101)=Qspvak1k7*acc85(49)
      acc85(102)=-acc85(35)*Qspvak3k2
      acc85(103)=Qspvak1k2*acc85(24)
      acc85(104)=Qspvak1l5*acc85(1)
      acc85(105)=Qspvak1l6*acc85(5)
      acc85(106)=Qspvak7k2*acc85(3)
      acc85(107)=Qspvak4k2*acc85(46)
      acc85(108)=Qspvak1k2*acc85(57)
      acc85(108)=acc85(68)+acc85(108)
      acc85(108)=Qspvak2l5*acc85(108)
      acc85(109)=Qspvak1k2*acc85(81)
      acc85(109)=acc85(88)+acc85(109)
      acc85(109)=Qspvak2l6*acc85(109)
      acc85(110)=QspQ*acc85(75)
      acc85(111)=Qspk2*acc85(74)
      acc85(100)=acc85(111)+acc85(110)+acc85(109)+acc85(108)+acc85(107)+acc85(1&
      &06)+acc85(105)+acc85(104)+acc85(103)+acc85(102)+acc85(30)+acc85(101)+acc&
      &85(100)
      acc85(100)=Qspvak4k3*acc85(100)
      acc85(101)=Qspvak1l5*acc85(98)
      acc85(102)=Qspvak1l6*acc85(97)
      acc85(101)=acc85(101)+acc85(102)
      acc85(102)=Qspk4+Qspk3
      acc85(103)=Qspk2-acc85(102)
      acc85(104)=acc85(62)*acc85(103)
      acc85(105)=-Qspvak4k2*acc85(25)
      acc85(106)=Qspvak2l5*acc85(54)
      acc85(107)=Qspvak2l6*acc85(80)
      acc85(108)=QspQ*acc85(50)
      acc85(104)=acc85(108)+acc85(107)+acc85(106)+acc85(105)+acc85(41)+acc85(10&
      &4)+acc85(101)
      acc85(104)=Qspk2*acc85(104)
      acc85(105)=Qspvak1l5*acc85(37)
      acc85(106)=Qspvak1l6*acc85(7)
      acc85(107)=-Qspvak4k2*acc85(35)
      acc85(108)=Qspvak2l5*acc85(61)
      acc85(109)=Qspvak2l6*acc85(82)
      acc85(105)=acc85(109)+acc85(108)+acc85(107)+acc85(106)+acc85(26)+acc85(10&
      &5)
      acc85(105)=QspQ*acc85(105)
      acc85(106)=Qspvak1k3*acc85(10)
      acc85(107)=-Qspvak1k2*acc85(37)
      acc85(108)=Qspvak4k2*acc85(93)
      acc85(106)=acc85(108)+acc85(107)+acc85(33)+acc85(106)
      acc85(106)=Qspvak2l5*acc85(106)
      acc85(107)=Qspvak1k3*acc85(51)
      acc85(108)=-Qspvak1k2*acc85(7)
      acc85(109)=Qspvak4k2*acc85(94)
      acc85(107)=acc85(109)+acc85(108)+acc85(40)+acc85(107)
      acc85(107)=Qspvak2l6*acc85(107)
      acc85(101)=acc85(101)+acc85(42)
      acc85(101)=-acc85(101)*acc85(102)
      acc85(99)=-acc85(29)*acc85(99)
      acc85(108)=Qspvak1k7*acc85(60)
      acc85(109)=Qspvak3k2*acc85(27)
      acc85(110)=acc85(25)*acc85(102)
      acc85(110)=acc85(6)+acc85(110)
      acc85(110)=Qspvak4k2*acc85(110)
      acc85(99)=acc85(100)+acc85(104)+acc85(105)+acc85(107)+acc85(106)+acc85(11&
      &0)+acc85(109)+acc85(31)+acc85(108)+acc85(99)+acc85(101)
      acc85(99)=Qspe7*acc85(99)
      acc85(100)=acc85(39)*acc85(102)
      acc85(101)=Qspk1*acc85(64)
      acc85(104)=Qspvak7k2*acc85(15)
      acc85(105)=-Qspk7*acc85(28)
      acc85(106)=Qspvak4k2*acc85(12)
      acc85(107)=Qspvae7k2*acc85(69)
      acc85(108)=Qspvak4k2*acc85(13)
      acc85(108)=acc85(17)+acc85(108)
      acc85(108)=Qspvak2l5*acc85(108)
      acc85(109)=Qspvak4k2*acc85(11)
      acc85(109)=acc85(20)+acc85(109)
      acc85(109)=Qspvak2l6*acc85(109)
      acc85(110)=QspQ*acc85(34)
      acc85(100)=acc85(110)+acc85(109)+acc85(108)+acc85(107)+acc85(106)+acc85(1&
      &05)+acc85(104)+acc85(8)+acc85(101)+acc85(100)
      acc85(100)=QspQ*acc85(100)
      acc85(101)=-acc85(56)*acc85(103)
      acc85(103)=Qspk1*acc85(63)
      acc85(104)=-Qspvak7k2*acc85(21)
      acc85(105)=Qspk7*acc85(55)
      acc85(106)=Qspvak4k2*acc85(14)
      acc85(107)=Qspvae7k2*acc85(70)
      acc85(108)=Qspvak4k2*acc85(96)
      acc85(108)=acc85(48)+acc85(108)
      acc85(108)=Qspvak2l5*acc85(108)
      acc85(109)=Qspvak4k2*acc85(95)
      acc85(109)=acc85(73)+acc85(109)
      acc85(109)=Qspvak2l6*acc85(109)
      acc85(110)=-QspQ*acc85(28)
      acc85(101)=acc85(110)+acc85(109)+acc85(108)+acc85(107)+acc85(106)+acc85(1&
      &05)+acc85(104)+acc85(16)+acc85(103)+acc85(101)
      acc85(101)=Qspk2*acc85(101)
      acc85(103)=Qspvak7k2*acc85(91)
      acc85(104)=Qspk7*acc85(79)
      acc85(105)=Qspvae7k2*acc85(44)
      acc85(103)=acc85(105)+acc85(104)+acc85(53)+acc85(103)
      acc85(103)=Qspvak2l5*acc85(103)
      acc85(104)=Qspvak7k2*acc85(92)
      acc85(105)=Qspk7*acc85(89)
      acc85(106)=Qspvae7k2*acc85(23)
      acc85(104)=acc85(106)+acc85(105)+acc85(86)+acc85(104)
      acc85(104)=Qspvak2l6*acc85(104)
      acc85(105)=Qspvae7k2*acc85(76)
      acc85(106)=Qspvak2l5*acc85(78)
      acc85(107)=Qspvak2l6*acc85(84)
      acc85(105)=acc85(107)+acc85(106)+acc85(4)+acc85(105)
      acc85(105)=QspQ*acc85(105)
      acc85(106)=Qspvak2l5*acc85(87)
      acc85(107)=Qspvak2l6*acc85(90)
      acc85(106)=acc85(107)+acc85(72)+acc85(106)
      acc85(106)=Qspk2*acc85(106)
      acc85(107)=Qspvak7k2*acc85(2)
      acc85(108)=Qspk7*acc85(59)
      acc85(109)=Qspk7-Qspk1
      acc85(110)=acc85(77)*acc85(109)
      acc85(110)=acc85(45)+acc85(110)
      acc85(110)=Qspvae7k2*acc85(110)
      acc85(103)=acc85(106)+acc85(105)+acc85(104)+acc85(103)+acc85(110)+acc85(1&
      &08)+acc85(18)+acc85(107)
      acc85(103)=Qspvak4k3*acc85(103)
      acc85(104)=Qspvak7k2*acc85(47)
      acc85(105)=Qspk7*acc85(38)
      acc85(106)=Qspvae7k2*acc85(67)
      acc85(104)=acc85(106)+acc85(105)+acc85(19)+acc85(104)
      acc85(104)=Qspvak2l5*acc85(104)
      acc85(105)=Qspvak7k2*acc85(85)
      acc85(106)=Qspk7*acc85(58)
      acc85(107)=Qspvae7k2*acc85(83)
      acc85(105)=acc85(107)+acc85(106)+acc85(52)+acc85(105)
      acc85(105)=Qspvak2l6*acc85(105)
      acc85(106)=-acc85(66)*acc85(109)
      acc85(107)=-acc85(70)*acc85(102)
      acc85(106)=acc85(65)+acc85(107)+acc85(106)
      acc85(106)=Qspvae7k2*acc85(106)
      acc85(107)=acc85(36)*acc85(102)
      acc85(108)=acc85(21)*acc85(102)
      acc85(108)=acc85(9)+acc85(108)
      acc85(108)=Qspvak7k2*acc85(108)
      acc85(102)=acc85(43)*acc85(102)
      acc85(102)=acc85(32)+acc85(102)
      acc85(102)=Qspk7*acc85(102)
      brack=acc85(22)+acc85(99)+acc85(100)+acc85(101)+acc85(102)+acc85(103)+acc&
      &85(104)+acc85(105)+acc85(106)+acc85(107)+acc85(108)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram85_sign, shift => diagram85_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd85h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d85
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d85 = 0.0_ki
      d85 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d85, ki), aimag(d85), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd85h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d85
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d85 = 0.0_ki
      d85 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d85, ki), aimag(d85), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d85h3l1
