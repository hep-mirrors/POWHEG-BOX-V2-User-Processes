module     p1_dbarc_epnebbbarg_d93h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d93h0l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd93h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc93(57)
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspe7
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk1 = dotproduct(Q,k1)
      Qspe7 = dotproduct(Q,e7)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
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
      acc93(11)=abb93(23)
      acc93(12)=abb93(24)
      acc93(13)=abb93(25)
      acc93(14)=abb93(26)
      acc93(15)=abb93(27)
      acc93(16)=abb93(28)
      acc93(17)=abb93(30)
      acc93(18)=abb93(31)
      acc93(19)=abb93(33)
      acc93(20)=abb93(34)
      acc93(21)=abb93(40)
      acc93(22)=abb93(43)
      acc93(23)=abb93(44)
      acc93(24)=abb93(53)
      acc93(25)=abb93(54)
      acc93(26)=abb93(55)
      acc93(27)=abb93(56)
      acc93(28)=abb93(62)
      acc93(29)=abb93(66)
      acc93(30)=abb93(68)
      acc93(31)=abb93(71)
      acc93(32)=abb93(73)
      acc93(33)=abb93(74)
      acc93(34)=abb93(76)
      acc93(35)=abb93(125)
      acc93(36)=abb93(126)
      acc93(37)=abb93(141)
      acc93(38)=abb93(156)
      acc93(39)=abb93(159)
      acc93(40)=abb93(162)
      acc93(41)=abb93(174)
      acc93(42)=abb93(176)
      acc93(43)=Qspval5l6*acc93(29)
      acc93(44)=acc93(1)*Qspk2
      acc93(45)=acc93(3)*Qspvae7k2
      acc93(46)=acc93(6)*Qspvak4k2
      acc93(47)=acc93(7)*Qspvak4k3
      acc93(48)=acc93(9)*Qspk1
      acc93(49)=acc93(11)*Qspe7
      acc93(50)=acc93(13)*Qspval5k1
      acc93(51)=acc93(20)*Qspk7
      acc93(52)=acc93(28)*Qspl6
      acc93(53)=acc93(30)*Qspl5
      acc93(54)=-Qspval6l5*acc93(31)
      acc93(55)=Qspval6k1*acc93(12)
      acc93(43)=acc93(55)+acc93(54)+acc93(53)+acc93(52)+acc93(51)+acc93(17)+acc&
      &93(50)+acc93(49)+acc93(48)+acc93(47)+acc93(46)+acc93(45)+acc93(44)+acc93&
      &(43)
      acc93(43)=Qspvak1k2*acc93(43)
      acc93(44)=-Qspl6-Qspl5
      acc93(44)=acc93(41)*acc93(44)
      acc93(45)=Qspvak1l5*acc93(31)
      acc93(46)=acc93(10)*Qspvae7k2
      acc93(47)=acc93(19)*Qspk2
      acc93(48)=acc93(21)*Qspvak4k3
      acc93(49)=acc93(22)*Qspvak4k2
      acc93(50)=acc93(26)*Qspvak1l6
      acc93(51)=acc93(32)*Qspe7
      acc93(52)=acc93(37)*Qspk1
      acc93(53)=acc93(40)*Qspk7
      acc93(44)=acc93(44)+acc93(53)+acc93(52)+acc93(51)+acc93(50)+acc93(49)+acc&
      &93(48)+acc93(47)+acc93(46)+acc93(8)+acc93(45)
      acc93(44)=Qspval6k2*acc93(44)
      acc93(45)=-Qspvak1l6*acc93(29)
      acc93(46)=acc93(25)*Qspk1
      acc93(47)=acc93(33)*Qspvak1l5
      acc93(45)=acc93(47)+acc93(46)+acc93(18)+acc93(45)
      acc93(45)=Qspval5k2*acc93(45)
      acc93(46)=-acc93(34)*Qspvak1k2
      acc93(47)=-acc93(42)*Qspval6k2
      acc93(46)=acc93(47)+acc93(46)+acc93(39)
      acc93(47)=Qspk3+Qspk4
      acc93(46)=acc93(47)*acc93(46)
      acc93(47)=acc93(2)*Qspvae7k2
      acc93(48)=acc93(4)*Qspk2
      acc93(49)=acc93(5)*Qspvak4k3
      acc93(50)=acc93(14)*Qspvak4k2
      acc93(51)=acc93(16)*Qspval5l6
      acc93(52)=acc93(23)*Qspl5
      acc93(53)=acc93(24)*Qspk1
      acc93(54)=acc93(27)*Qspval5k1
      acc93(55)=acc93(35)*Qspe7
      acc93(56)=acc93(36)*Qspk7
      acc93(57)=acc93(38)*Qspl6
      brack=acc93(15)+acc93(43)+acc93(44)+acc93(45)+acc93(46)+acc93(47)+acc93(4&
      &8)+acc93(49)+acc93(50)+acc93(51)+acc93(52)+acc93(53)+acc93(54)+acc93(55)&
      &+acc93(56)+acc93(57)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram93_sign, shift => diagram93_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd93h0
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
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd93h0
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
end module p1_dbarc_epnebbbarg_d93h0l1
