module     p0_dbaru_epnebbbarg_d92h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity0d92h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd92h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc92(68)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: QspQ
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      QspQ = dotproduct(Q,Q)
      acc92(1)=abb92(11)
      acc92(2)=abb92(12)
      acc92(3)=abb92(13)
      acc92(4)=abb92(14)
      acc92(5)=abb92(15)
      acc92(6)=abb92(16)
      acc92(7)=abb92(17)
      acc92(8)=abb92(18)
      acc92(9)=abb92(19)
      acc92(10)=abb92(20)
      acc92(11)=abb92(21)
      acc92(12)=abb92(22)
      acc92(13)=abb92(23)
      acc92(14)=abb92(24)
      acc92(15)=abb92(25)
      acc92(16)=abb92(26)
      acc92(17)=abb92(27)
      acc92(18)=abb92(28)
      acc92(19)=abb92(29)
      acc92(20)=abb92(31)
      acc92(21)=abb92(32)
      acc92(22)=abb92(33)
      acc92(23)=abb92(35)
      acc92(24)=abb92(36)
      acc92(25)=abb92(38)
      acc92(26)=abb92(39)
      acc92(27)=abb92(40)
      acc92(28)=abb92(42)
      acc92(29)=abb92(43)
      acc92(30)=abb92(47)
      acc92(31)=abb92(48)
      acc92(32)=abb92(51)
      acc92(33)=abb92(52)
      acc92(34)=abb92(54)
      acc92(35)=abb92(57)
      acc92(36)=abb92(62)
      acc92(37)=abb92(66)
      acc92(38)=abb92(68)
      acc92(39)=abb92(74)
      acc92(40)=abb92(82)
      acc92(41)=abb92(84)
      acc92(42)=abb92(90)
      acc92(43)=abb92(93)
      acc92(44)=abb92(100)
      acc92(45)=abb92(132)
      acc92(46)=abb92(141)
      acc92(47)=abb92(157)
      acc92(48)=abb92(171)
      acc92(49)=abb92(180)
      acc92(50)=abb92(182)
      acc92(51)=Qspk4+Qspk3
      acc92(52)=acc92(47)*acc92(51)
      acc92(53)=Qspk7*acc92(44)
      acc92(54)=Qspe7*acc92(23)
      acc92(55)=Qspvak4k3*acc92(17)
      acc92(56)=Qspvak4k2*acc92(12)
      acc92(57)=Qspvae7k2*acc92(22)
      acc92(58)=Qspvak1k2*acc92(6)
      acc92(59)=Qspval5k2*acc92(38)
      acc92(60)=Qspk2*acc92(5)
      acc92(52)=acc92(60)+acc92(59)+acc92(58)+acc92(57)+acc92(56)+acc92(55)+acc&
      &92(54)+acc92(53)+acc92(31)+acc92(52)
      acc92(52)=Qspk2*acc92(52)
      acc92(53)=-acc92(43)*acc92(51)
      acc92(54)=-Qspk1+Qspl6+Qspl5
      acc92(55)=acc92(16)*acc92(54)
      acc92(56)=Qspk7*acc92(41)
      acc92(57)=Qspe7*acc92(34)
      acc92(58)=Qspvak4k3*acc92(3)
      acc92(59)=Qspvak4k2*acc92(7)
      acc92(60)=Qspvae7k2*acc92(10)
      acc92(61)=Qspk2*acc92(2)
      acc92(53)=acc92(61)+acc92(60)+acc92(59)+acc92(58)+acc92(57)+acc92(56)+acc&
      &92(30)+acc92(55)+acc92(53)
      acc92(53)=Qspval6k2*acc92(53)
      acc92(55)=acc92(21)*acc92(51)
      acc92(56)=Qspk7*acc92(20)
      acc92(57)=Qspe7*acc92(4)
      acc92(58)=Qspvak4k3*acc92(11)
      acc92(59)=Qspvak4k2*acc92(14)
      acc92(60)=Qspvae7k2*acc92(8)
      acc92(55)=acc92(60)+acc92(59)+acc92(58)+acc92(57)+acc92(56)+acc92(1)+acc9&
      &2(55)
      acc92(55)=Qspvak1k2*acc92(55)
      acc92(56)=-acc92(40)*acc92(51)
      acc92(57)=Qspk7*acc92(39)
      acc92(58)=Qspe7*acc92(9)
      acc92(59)=Qspvak4k3*acc92(19)
      acc92(60)=Qspvak4k2*acc92(15)
      acc92(61)=Qspvae7k2*acc92(37)
      acc92(56)=acc92(61)+acc92(60)+acc92(59)+acc92(58)+acc92(57)+acc92(27)+acc&
      &92(56)
      acc92(56)=Qspval5k2*acc92(56)
      acc92(51)=-acc92(50)*acc92(51)
      acc92(57)=acc92(33)*Qspvak1l5
      acc92(58)=acc92(32)*Qspval6k1
      acc92(59)=acc92(28)*Qspval6l5
      acc92(60)=acc92(24)*Qspvak1l6
      acc92(61)=acc92(13)*QspQ
      acc92(62)=Qspk1*acc92(42)
      acc92(63)=Qspl5*acc92(46)
      acc92(64)=Qspl6*acc92(49)
      acc92(65)=Qspk7*acc92(48)
      acc92(66)=Qspe7*acc92(45)
      acc92(67)=Qspvak4k3*acc92(35)
      acc92(68)=-acc92(25)*acc92(54)
      acc92(68)=acc92(18)+acc92(68)
      acc92(68)=Qspvak4k2*acc92(68)
      acc92(54)=-acc92(36)*acc92(54)
      acc92(54)=acc92(29)+acc92(54)
      acc92(54)=Qspvae7k2*acc92(54)
      brack=acc92(26)+acc92(51)+acc92(52)+acc92(53)+acc92(54)+acc92(55)+acc92(5&
      &6)+acc92(57)+acc92(58)+acc92(59)+acc92(60)+acc92(61)+acc92(62)+acc92(63)&
      &+acc92(64)+acc92(65)+acc92(66)+acc92(67)+acc92(68)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram92_sign, shift => diagram92_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd92h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d92
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d92 = 0.0_ki
      d92 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d92, ki), aimag(d92), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd92h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d92
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d92 = 0.0_ki
      d92 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d92, ki), aimag(d92), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d92h0l1
