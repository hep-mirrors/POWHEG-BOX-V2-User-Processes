module     p5_usbar_epnebbbarg_d79h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d79h1l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd79h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc79(52)
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak1k2
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspl6 = dotproduct(Q,l6)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc79(1)=abb79(9)
      acc79(2)=abb79(10)
      acc79(3)=abb79(11)
      acc79(4)=abb79(12)
      acc79(5)=abb79(13)
      acc79(6)=abb79(14)
      acc79(7)=abb79(15)
      acc79(8)=abb79(16)
      acc79(9)=abb79(17)
      acc79(10)=abb79(18)
      acc79(11)=abb79(20)
      acc79(12)=abb79(22)
      acc79(13)=abb79(23)
      acc79(14)=abb79(24)
      acc79(15)=abb79(25)
      acc79(16)=abb79(26)
      acc79(17)=abb79(28)
      acc79(18)=abb79(29)
      acc79(19)=abb79(31)
      acc79(20)=abb79(32)
      acc79(21)=abb79(33)
      acc79(22)=abb79(34)
      acc79(23)=abb79(36)
      acc79(24)=abb79(38)
      acc79(25)=abb79(39)
      acc79(26)=abb79(40)
      acc79(27)=abb79(42)
      acc79(28)=abb79(44)
      acc79(29)=abb79(46)
      acc79(30)=abb79(47)
      acc79(31)=abb79(48)
      acc79(32)=abb79(49)
      acc79(33)=abb79(52)
      acc79(34)=abb79(54)
      acc79(35)=abb79(55)
      acc79(36)=abb79(66)
      acc79(37)=abb79(72)
      acc79(38)=acc79(4)*Qspval6k1
      acc79(39)=acc79(9)*Qspvak2k1
      acc79(40)=acc79(20)*Qspk2
      acc79(41)=acc79(25)*QspQ
      acc79(42)=acc79(30)*Qspk1
      acc79(43)=acc79(33)*Qspvak7k2
      acc79(44)=acc79(35)*Qspval6k2
      acc79(38)=acc79(44)+acc79(43)+acc79(42)+acc79(41)+acc79(40)+acc79(15)+acc&
      &79(39)+acc79(38)
      acc79(38)=Qspvak4k3*acc79(38)
      acc79(39)=acc79(29)*Qspval6l5
      acc79(39)=acc79(31)+acc79(39)
      acc79(39)=acc79(39)*Qspvak4k3
      acc79(40)=acc79(14)*Qspval6k1
      acc79(41)=acc79(16)*Qspval6k2
      acc79(42)=acc79(36)*Qspval6k3
      acc79(43)=acc79(37)*Qspl6
      acc79(39)=acc79(39)+acc79(43)+acc79(42)+acc79(41)+acc79(40)+acc79(7)
      acc79(39)=Qspvak7k1*acc79(39)
      acc79(40)=-acc79(10)*Qspval6k1
      acc79(41)=-acc79(13)*Qspvak4k2
      acc79(42)=acc79(28)*Qspvak4k1
      acc79(40)=acc79(40)+acc79(42)+acc79(41)
      acc79(41)=Qspk1-Qspl6
      acc79(40)=acc79(41)*acc79(40)
      acc79(41)=acc79(12)*Qspval6k1
      acc79(42)=acc79(17)*Qspvak4k2
      acc79(43)=acc79(34)*Qspvak4k1
      acc79(41)=acc79(43)+acc79(27)+acc79(42)+acc79(41)
      acc79(41)=Qspk2*acc79(41)
      acc79(42)=acc79(6)*Qspval6k1
      acc79(43)=acc79(18)*Qspvak4k2
      acc79(44)=acc79(21)*Qspvak4k1
      acc79(42)=acc79(23)+acc79(44)+acc79(43)+acc79(42)
      acc79(42)=QspQ*acc79(42)
      acc79(43)=acc79(1)*Qspvak2k1
      acc79(44)=acc79(3)*Qspval6k1
      acc79(45)=acc79(5)*Qspval6k2
      acc79(46)=acc79(11)*Qspvak7k2
      acc79(47)=acc79(19)*Qspk1
      acc79(48)=acc79(22)*Qspval6l5
      acc79(49)=acc79(26)*Qspval6k3
      acc79(50)=acc79(32)*Qspl6
      acc79(51)=Qspval6k7*acc79(24)
      acc79(52)=Qspvak1k2*acc79(2)
      brack=acc79(8)+acc79(38)+acc79(39)+acc79(40)+acc79(41)+acc79(42)+acc79(43&
      &)+acc79(44)+acc79(45)+acc79(46)+acc79(47)+acc79(48)+acc79(49)+acc79(50)+&
      &acc79(51)+acc79(52)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram79_sign, shift => diagram79_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd79h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d79
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d79 = 0.0_ki
      d79 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d79, ki), aimag(d79), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd79h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d79
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d79 = 0.0_ki
      d79 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d79, ki), aimag(d79), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d79h1l1
