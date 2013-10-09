module     p0_dbaru_epnebbbarg_d93h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d93h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd93h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc93(66)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk1
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk1 = dotproduct(Q,k1)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      acc93(1)=abb93(11)
      acc93(2)=abb93(12)
      acc93(3)=abb93(13)
      acc93(4)=abb93(14)
      acc93(5)=abb93(15)
      acc93(6)=abb93(16)
      acc93(7)=abb93(17)
      acc93(8)=abb93(18)
      acc93(9)=abb93(19)
      acc93(10)=abb93(20)
      acc93(11)=abb93(21)
      acc93(12)=abb93(22)
      acc93(13)=abb93(23)
      acc93(14)=abb93(24)
      acc93(15)=abb93(25)
      acc93(16)=abb93(26)
      acc93(17)=abb93(27)
      acc93(18)=abb93(28)
      acc93(19)=abb93(29)
      acc93(20)=abb93(30)
      acc93(21)=abb93(31)
      acc93(22)=abb93(32)
      acc93(23)=abb93(33)
      acc93(24)=abb93(34)
      acc93(25)=abb93(35)
      acc93(26)=abb93(36)
      acc93(27)=abb93(37)
      acc93(28)=abb93(39)
      acc93(29)=abb93(40)
      acc93(30)=abb93(41)
      acc93(31)=abb93(43)
      acc93(32)=abb93(50)
      acc93(33)=abb93(52)
      acc93(34)=abb93(55)
      acc93(35)=abb93(56)
      acc93(36)=abb93(62)
      acc93(37)=abb93(63)
      acc93(38)=abb93(71)
      acc93(39)=abb93(84)
      acc93(40)=abb93(89)
      acc93(41)=abb93(90)
      acc93(42)=abb93(96)
      acc93(43)=abb93(97)
      acc93(44)=abb93(101)
      acc93(45)=abb93(112)
      acc93(46)=abb93(146)
      acc93(47)=abb93(173)
      acc93(48)=abb93(180)
      acc93(49)=abb93(181)
      acc93(50)=abb93(203)
      acc93(51)=Qspk4+Qspk3
      acc93(52)=-acc93(30)*acc93(51)
      acc93(53)=Qspk1-Qspl6
      acc93(54)=-Qspl5+acc93(53)
      acc93(54)=acc93(15)*acc93(54)
      acc93(55)=acc93(27)*Qspvak2k1
      acc93(56)=acc93(20)*Qspvak2l6
      acc93(57)=acc93(11)*Qspvak2l5
      acc93(58)=Qspk7*acc93(26)
      acc93(59)=Qspe7*acc93(23)
      acc93(60)=Qspvak4k2*acc93(14)
      acc93(61)=Qspvak4k3*acc93(25)
      acc93(62)=-Qspval5l6*acc93(9)
      acc93(63)=Qspvae7k2*acc93(3)
      acc93(64)=Qspk2*acc93(24)
      acc93(52)=acc93(64)+acc93(63)+acc93(62)+acc93(61)+acc93(60)+acc93(59)+acc&
      &93(58)+acc93(6)+acc93(57)+acc93(55)+acc93(56)+acc93(54)+acc93(52)
      acc93(52)=Qspvak1k2*acc93(52)
      acc93(54)=-acc93(49)*acc93(51)
      acc93(55)=Qspl6+Qspl5
      acc93(55)=acc93(48)*acc93(55)
      acc93(56)=Qspvak1l5*acc93(19)
      acc93(57)=Qspk7*acc93(47)
      acc93(58)=Qspe7*acc93(29)
      acc93(59)=Qspvak4k2*acc93(5)
      acc93(60)=Qspvak4k3*acc93(7)
      acc93(61)=Qspvae7k2*acc93(32)
      acc93(62)=Qspk1*acc93(38)
      acc93(63)=Qspvak1l6*acc93(1)
      acc93(64)=Qspk2*acc93(28)
      acc93(54)=acc93(64)+acc93(63)+acc93(62)+acc93(61)+acc93(60)+acc93(59)+acc&
      &93(58)+acc93(57)+acc93(16)+acc93(56)+acc93(55)+acc93(54)
      acc93(54)=Qspk2*acc93(54)
      acc93(55)=-acc93(42)*acc93(51)
      acc93(53)=-acc93(41)*acc93(53)
      acc93(56)=Qspval5k1*acc93(10)
      acc93(57)=acc93(9)*Qspval5k2
      acc93(58)=Qspk7*acc93(39)
      acc93(59)=Qspe7*acc93(34)
      acc93(60)=Qspvak4k2*acc93(4)
      acc93(61)=Qspvak4k3*acc93(17)
      acc93(62)=Qspvae7k2*acc93(2)
      acc93(53)=acc93(62)+acc93(61)+acc93(60)+acc93(59)+acc93(58)+acc93(57)+acc&
      &93(13)+acc93(56)+acc93(53)+acc93(55)
      acc93(53)=Qspvak1l6*acc93(53)
      acc93(51)=-acc93(44)*acc93(51)
      acc93(55)=acc93(35)*Qspval6k2
      acc93(56)=Qspval5k1*acc93(33)
      acc93(57)=Qspval5k2*acc93(21)
      acc93(58)=Qspl5*acc93(43)
      acc93(59)=Qspl6*acc93(46)
      acc93(60)=Qspk7*acc93(50)
      acc93(61)=Qspe7*acc93(45)
      acc93(62)=Qspvak4k2*acc93(8)
      acc93(63)=Qspvak4k3*acc93(12)
      acc93(64)=Qspvak1l5*acc93(22)
      acc93(64)=acc93(37)+acc93(64)
      acc93(64)=Qspval5l6*acc93(64)
      acc93(65)=Qspvae7k2*acc93(31)
      acc93(66)=Qspval5l6*acc93(40)
      acc93(66)=acc93(36)+acc93(66)
      acc93(66)=Qspk1*acc93(66)
      brack=acc93(18)+acc93(51)+acc93(52)+acc93(53)+acc93(54)+acc93(55)+acc93(5&
      &6)+acc93(57)+acc93(58)+acc93(59)+acc93(60)+acc93(61)+acc93(62)+acc93(63)&
      &+acc93(64)+acc93(65)+acc93(66)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram93_sign, shift => diagram93_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd93h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d93
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d93 = 0.0_ki
      d93 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d93, ki), aimag(d93), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd93h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d93
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d93 = 0.0_ki
      d93 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d93, ki), aimag(d93), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d93h2l1
