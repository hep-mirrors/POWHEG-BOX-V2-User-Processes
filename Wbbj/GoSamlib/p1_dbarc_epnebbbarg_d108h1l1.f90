module     p1_dbarc_epnebbbarg_d108h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d108h1l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd108h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc108(63)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k1
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k1 = dotproduct(Q,spval6k1)
      acc108(1)=abb108(9)
      acc108(2)=abb108(10)
      acc108(3)=abb108(11)
      acc108(4)=abb108(12)
      acc108(5)=abb108(13)
      acc108(6)=abb108(14)
      acc108(7)=abb108(15)
      acc108(8)=abb108(16)
      acc108(9)=abb108(17)
      acc108(10)=abb108(18)
      acc108(11)=abb108(19)
      acc108(12)=abb108(20)
      acc108(13)=abb108(22)
      acc108(14)=abb108(23)
      acc108(15)=abb108(24)
      acc108(16)=abb108(26)
      acc108(17)=abb108(27)
      acc108(18)=abb108(28)
      acc108(19)=abb108(29)
      acc108(20)=abb108(30)
      acc108(21)=abb108(32)
      acc108(22)=abb108(33)
      acc108(23)=abb108(34)
      acc108(24)=abb108(40)
      acc108(25)=abb108(41)
      acc108(26)=abb108(42)
      acc108(27)=abb108(43)
      acc108(28)=abb108(44)
      acc108(29)=abb108(45)
      acc108(30)=abb108(47)
      acc108(31)=abb108(49)
      acc108(32)=abb108(51)
      acc108(33)=abb108(52)
      acc108(34)=abb108(53)
      acc108(35)=abb108(54)
      acc108(36)=abb108(59)
      acc108(37)=abb108(61)
      acc108(38)=abb108(62)
      acc108(39)=abb108(64)
      acc108(40)=abb108(66)
      acc108(41)=abb108(67)
      acc108(42)=abb108(68)
      acc108(43)=abb108(69)
      acc108(44)=Qspk4+Qspk3
      acc108(45)=acc108(44)-Qspk2
      acc108(46)=acc108(42)*acc108(45)
      acc108(47)=-acc108(43)*Qspvak7k3
      acc108(48)=-acc108(25)*Qspvak1k3
      acc108(49)=Qspvak4k2*acc108(3)
      acc108(50)=Qspvak4k3*acc108(41)
      acc108(51)=Qspvak1k2*acc108(27)
      acc108(52)=Qspvak7k2*acc108(13)
      acc108(46)=acc108(52)+acc108(51)+acc108(50)+acc108(49)+acc108(47)+acc108(&
      &48)+acc108(46)
      acc108(46)=Qspval6l5*acc108(46)
      acc108(47)=-acc108(23)*acc108(45)
      acc108(48)=acc108(25)*Qspval6k3
      acc108(49)=-Qspval6k2*acc108(27)
      acc108(50)=Qspvak4k2*acc108(29)
      acc108(51)=Qspvak4k3*acc108(28)
      acc108(47)=acc108(51)+acc108(50)+acc108(49)+acc108(9)+acc108(48)+acc108(4&
      &7)
      acc108(47)=Qspvak1l5*acc108(47)
      acc108(48)=-acc108(36)*acc108(45)
      acc108(49)=acc108(43)*Qspval6k3
      acc108(50)=-Qspval6k2*acc108(13)
      acc108(51)=Qspvak4k2*acc108(7)
      acc108(52)=Qspvak4k3*acc108(26)
      acc108(48)=acc108(52)+acc108(51)+acc108(50)+acc108(30)+acc108(49)+acc108(&
      &48)
      acc108(48)=Qspvak7l5*acc108(48)
      acc108(49)=acc108(5)*acc108(45)
      acc108(50)=Qspvak2k3*acc108(10)
      acc108(51)=Qspvak4k2*acc108(6)
      acc108(52)=Qspvak4k3*acc108(1)
      acc108(49)=acc108(52)+acc108(51)+acc108(4)+acc108(50)+acc108(49)
      acc108(49)=Qspvak1k2*acc108(49)
      acc108(45)=acc108(39)*acc108(45)
      acc108(50)=Qspvak2k3*acc108(16)
      acc108(51)=Qspvak4k2*acc108(12)
      acc108(52)=Qspvak4k3*acc108(31)
      acc108(45)=acc108(52)+acc108(51)+acc108(37)+acc108(50)+acc108(45)
      acc108(45)=Qspvak7k2*acc108(45)
      acc108(50)=Qspvak1k3*acc108(32)
      acc108(51)=Qspvak7k3*acc108(38)
      acc108(50)=acc108(51)+acc108(14)+acc108(50)
      acc108(50)=Qspk2*acc108(50)
      acc108(44)=-acc108(35)*acc108(44)
      acc108(51)=acc108(40)*Qspval6k7
      acc108(52)=acc108(34)*Qspvak7k1
      acc108(53)=acc108(33)*Qspvak7l6
      acc108(54)=acc108(24)*Qspk1
      acc108(55)=acc108(22)*Qspvak1l6
      acc108(56)=acc108(21)*Qspk7
      acc108(57)=acc108(20)*Qspvak1k7
      acc108(58)=acc108(18)*Qspl6
      acc108(59)=acc108(17)*Qspval6k1
      acc108(60)=Qspvak2k3*acc108(15)
      acc108(61)=Qspval6k2*acc108(11)
      acc108(62)=Qspvak4k2*acc108(2)
      acc108(63)=Qspvak4k3*acc108(19)
      brack=acc108(8)+acc108(44)+acc108(45)+acc108(46)+acc108(47)+acc108(48)+ac&
      &c108(49)+acc108(50)+acc108(51)+acc108(52)+acc108(53)+acc108(54)+acc108(5&
      &5)+acc108(56)+acc108(57)+acc108(58)+acc108(59)+acc108(60)+acc108(61)+acc&
      &108(62)+acc108(63)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram108_sign, shift => diagram108_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd108h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d108
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d108 = 0.0_ki
      d108 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d108, ki), aimag(d108), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd108h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d108
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d108 = 0.0_ki
      d108 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d108, ki), aimag(d108), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d108h1l1
