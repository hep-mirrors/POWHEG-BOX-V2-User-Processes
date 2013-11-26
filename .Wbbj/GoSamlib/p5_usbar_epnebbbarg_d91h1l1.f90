module     p5_usbar_epnebbbarg_d91h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d91h1l1.f90
   ! generator: buildfortran.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd91h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc91(56)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2l6
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      acc91(1)=abb91(11)
      acc91(2)=abb91(12)
      acc91(3)=abb91(13)
      acc91(4)=abb91(14)
      acc91(5)=abb91(16)
      acc91(6)=abb91(17)
      acc91(7)=abb91(18)
      acc91(8)=abb91(21)
      acc91(9)=abb91(22)
      acc91(10)=abb91(23)
      acc91(11)=abb91(24)
      acc91(12)=abb91(26)
      acc91(13)=abb91(27)
      acc91(14)=abb91(28)
      acc91(15)=abb91(29)
      acc91(16)=abb91(30)
      acc91(17)=abb91(31)
      acc91(18)=abb91(32)
      acc91(19)=abb91(35)
      acc91(20)=abb91(38)
      acc91(21)=abb91(40)
      acc91(22)=abb91(42)
      acc91(23)=abb91(45)
      acc91(24)=abb91(47)
      acc91(25)=abb91(49)
      acc91(26)=abb91(52)
      acc91(27)=abb91(58)
      acc91(28)=abb91(62)
      acc91(29)=abb91(68)
      acc91(30)=abb91(70)
      acc91(31)=abb91(80)
      acc91(32)=abb91(88)
      acc91(33)=abb91(98)
      acc91(34)=abb91(106)
      acc91(35)=abb91(107)
      acc91(36)=abb91(118)
      acc91(37)=abb91(132)
      acc91(38)=abb91(134)
      acc91(39)=abb91(147)
      acc91(40)=abb91(152)
      acc91(41)=abb91(164)
      acc91(42)=abb91(166)
      acc91(43)=abb91(172)
      acc91(44)=Qspk4+Qspk3
      acc91(45)=acc91(43)*acc91(44)
      acc91(46)=Qspl6+Qspl5
      acc91(47)=acc91(42)*acc91(46)
      acc91(48)=Qspk1*acc91(27)
      acc91(49)=Qspk7*acc91(41)
      acc91(50)=Qspe7*acc91(35)
      acc91(51)=Qspvak4k1*acc91(4)
      acc91(52)=Qspvak4k3*acc91(12)
      acc91(53)=Qspvae7k1*acc91(29)
      acc91(54)=Qspvak2l5*acc91(10)
      acc91(55)=Qspval6l5*acc91(36)
      acc91(56)=Qspk2*acc91(40)
      acc91(45)=acc91(56)+acc91(55)+acc91(54)+acc91(53)+acc91(52)+acc91(51)+acc&
      &91(50)+acc91(49)+acc91(39)+acc91(48)+acc91(47)+acc91(45)
      acc91(45)=Qspk2*acc91(45)
      acc91(47)=-acc91(25)*acc91(44)
      acc91(48)=acc91(18)*Qspval6k2
      acc91(49)=Qspk1*acc91(15)
      acc91(50)=Qspl5*acc91(8)
      acc91(51)=Qspl6*acc91(21)
      acc91(52)=Qspk7*acc91(20)
      acc91(53)=Qspe7*acc91(7)
      acc91(54)=Qspvak4k1*acc91(1)
      acc91(55)=Qspvak4k3*acc91(3)
      acc91(56)=Qspvae7k1*acc91(14)
      acc91(47)=acc91(56)+acc91(55)+acc91(54)+acc91(53)+acc91(52)+acc91(51)+acc&
      &91(50)+acc91(49)+acc91(48)+acc91(9)+acc91(47)
      acc91(47)=Qspvak2l5*acc91(47)
      acc91(48)=-acc91(34)*acc91(44)
      acc91(49)=-acc91(26)*acc91(46)
      acc91(50)=Qspvak2l6*acc91(19)
      acc91(51)=Qspk1*acc91(31)
      acc91(52)=Qspk7*acc91(33)
      acc91(53)=Qspe7*acc91(23)
      acc91(54)=Qspvak4k1*acc91(5)
      acc91(55)=Qspvak4k3*acc91(24)
      acc91(56)=Qspvae7k1*acc91(22)
      acc91(48)=acc91(56)+acc91(55)+acc91(54)+acc91(53)+acc91(52)+acc91(51)+acc&
      &91(16)+acc91(50)+acc91(49)+acc91(48)
      acc91(48)=Qspval6l5*acc91(48)
      acc91(46)=acc91(38)*acc91(46)
      acc91(44)=-acc91(32)*acc91(44)
      acc91(49)=Qspvak2l6*acc91(6)
      acc91(50)=Qspk1*acc91(17)
      acc91(51)=Qspk7*acc91(37)
      acc91(52)=Qspe7*acc91(30)
      acc91(53)=Qspvak4k1*acc91(2)
      acc91(54)=Qspvak4k3*acc91(11)
      acc91(55)=Qspvae7k1*acc91(28)
      brack=acc91(13)+acc91(44)+acc91(45)+acc91(46)+acc91(47)+acc91(48)+acc91(4&
      &9)+acc91(50)+acc91(51)+acc91(52)+acc91(53)+acc91(54)+acc91(55)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram91_sign, shift => diagram91_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd91h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d91
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d91 = 0.0_ki
      d91 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d91, ki), aimag(d91), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd91h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d91
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d91 = 0.0_ki
      d91 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d91, ki), aimag(d91), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d91h1l1
