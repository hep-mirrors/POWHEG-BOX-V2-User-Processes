module     p1_dbarc_epnebbbarg_d175h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d175h1l1.f90
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
      use p1_dbarc_epnebbbarg_abbrevd175h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc175(63)
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      acc175(1)=abb175(11)
      acc175(2)=abb175(12)
      acc175(3)=abb175(13)
      acc175(4)=abb175(14)
      acc175(5)=abb175(15)
      acc175(6)=abb175(16)
      acc175(7)=abb175(17)
      acc175(8)=abb175(18)
      acc175(9)=abb175(19)
      acc175(10)=abb175(20)
      acc175(11)=abb175(21)
      acc175(12)=abb175(22)
      acc175(13)=abb175(23)
      acc175(14)=abb175(24)
      acc175(15)=abb175(25)
      acc175(16)=abb175(26)
      acc175(17)=abb175(27)
      acc175(18)=abb175(28)
      acc175(19)=abb175(29)
      acc175(20)=abb175(30)
      acc175(21)=abb175(31)
      acc175(22)=abb175(32)
      acc175(23)=abb175(33)
      acc175(24)=abb175(34)
      acc175(25)=abb175(35)
      acc175(26)=abb175(36)
      acc175(27)=abb175(37)
      acc175(28)=abb175(38)
      acc175(29)=abb175(41)
      acc175(30)=abb175(42)
      acc175(31)=abb175(44)
      acc175(32)=abb175(46)
      acc175(33)=abb175(50)
      acc175(34)=abb175(51)
      acc175(35)=abb175(53)
      acc175(36)=abb175(57)
      acc175(37)=abb175(58)
      acc175(38)=abb175(61)
      acc175(39)=abb175(62)
      acc175(40)=abb175(67)
      acc175(41)=abb175(69)
      acc175(42)=abb175(84)
      acc175(43)=abb175(89)
      acc175(44)=abb175(91)
      acc175(45)=abb175(121)
      acc175(46)=abb175(145)
      acc175(47)=Qspval5k2*acc175(18)
      acc175(48)=Qspval6k2*acc175(25)
      acc175(49)=Qspval6l5*acc175(19)
      acc175(50)=Qspval6k7*acc175(45)
      acc175(51)=Qspvak7k2*acc175(46)
      acc175(52)=Qspvae7k2*acc175(38)
      acc175(53)=Qspval6e7*acc175(44)
      acc175(47)=-acc175(49)-acc175(47)+acc175(48)+acc175(50)+acc175(51)+acc175&
      &(52)-acc175(53)
      acc175(48)=acc175(47)+acc175(43)
      acc175(49)=-Qspk4-Qspk3
      acc175(48)=acc175(48)*acc175(49)
      acc175(47)=acc175(31)+acc175(47)
      acc175(47)=Qspk2*acc175(47)
      acc175(49)=Qspval5k2*acc175(27)
      acc175(50)=Qspval6k2*acc175(24)
      acc175(51)=Qspval6l5*acc175(23)
      acc175(52)=Qspval6k7*acc175(16)
      acc175(53)=Qspvak7k2*acc175(12)
      acc175(54)=Qspvae7k2*acc175(13)
      acc175(55)=Qspval6e7*acc175(6)
      acc175(49)=acc175(55)+acc175(54)+acc175(53)+acc175(52)+acc175(51)+acc175(&
      &50)+acc175(1)+acc175(49)
      acc175(49)=Qspvak1k2*acc175(49)
      acc175(50)=Qspval5k2*acc175(4)
      acc175(51)=Qspval6k2*acc175(14)
      acc175(52)=Qspval6l5*acc175(26)
      acc175(53)=Qspval6k7*acc175(32)
      acc175(54)=Qspvak7k2*acc175(21)
      acc175(55)=Qspvae7k2*acc175(8)
      acc175(56)=Qspval6e7*acc175(2)
      acc175(50)=acc175(56)+acc175(55)+acc175(54)+acc175(53)+acc175(52)+acc175(&
      &51)+acc175(22)+acc175(50)
      acc175(50)=Qspvak4k2*acc175(50)
      acc175(51)=Qspval5k2*acc175(41)
      acc175(52)=Qspval6k2*acc175(39)
      acc175(53)=Qspval6l5*acc175(36)
      acc175(54)=Qspval6k7*acc175(37)
      acc175(55)=Qspvak7k2*acc175(35)
      acc175(56)=Qspvae7k2*acc175(34)
      acc175(57)=Qspval6e7*acc175(33)
      acc175(51)=acc175(57)+acc175(56)+acc175(55)+acc175(54)+acc175(53)+acc175(&
      &52)+acc175(30)+acc175(51)
      acc175(51)=Qspvak4k3*acc175(51)
      acc175(52)=acc175(29)*QspQ
      acc175(53)=acc175(28)*Qspval6k3
      acc175(54)=acc175(11)*Qspl6
      acc175(55)=acc175(5)*Qspvak1k3
      acc175(56)=-Qspl5-Qspk7
      acc175(56)=acc175(10)*acc175(56)
      acc175(57)=Qspval5k2*acc175(17)
      acc175(58)=Qspval6k2*acc175(20)
      acc175(59)=Qspval6l5*acc175(15)
      acc175(60)=Qspval6k7*acc175(42)
      acc175(61)=Qspvak7k2*acc175(3)
      acc175(62)=Qspvae7k2*acc175(9)
      acc175(63)=Qspval6e7*acc175(40)
      brack=acc175(7)+acc175(47)+acc175(48)+acc175(49)+acc175(50)+acc175(51)+ac&
      &c175(52)+acc175(53)+acc175(54)+acc175(55)+acc175(56)+acc175(57)+acc175(5&
      &8)+acc175(59)+acc175(60)+acc175(61)+acc175(62)+acc175(63)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p1_dbarc_epnebbbarg_groups, only: &
!           & sign => diagram175_sign, shift => diagram175_shift
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd175h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d175
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d175 = 0.0_ki
      d175 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d175, ki), aimag(d175), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd175h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d175
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d175 = 0.0_ki
      d175 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d175, ki), aimag(d175), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p1_dbarc_epnebbbarg_d175h1l1
