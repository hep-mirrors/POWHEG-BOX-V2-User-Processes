module     p9_csbar_epnebbbarg_d90h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d90h0l1.f90
   ! generator: buildfortran.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd90h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc90(57)
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspval6l5
      complex(ki) :: QspQ
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspk7 = dotproduct(Q,k7)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspval6l5 = dotproduct(Q,spval6l5)
      QspQ = dotproduct(Q,Q)
      acc90(1)=abb90(11)
      acc90(2)=abb90(12)
      acc90(3)=abb90(13)
      acc90(4)=abb90(14)
      acc90(5)=abb90(15)
      acc90(6)=abb90(16)
      acc90(7)=abb90(17)
      acc90(8)=abb90(18)
      acc90(9)=abb90(20)
      acc90(10)=abb90(21)
      acc90(11)=abb90(22)
      acc90(12)=abb90(23)
      acc90(13)=abb90(24)
      acc90(14)=abb90(25)
      acc90(15)=abb90(26)
      acc90(16)=abb90(28)
      acc90(17)=abb90(29)
      acc90(18)=abb90(30)
      acc90(19)=abb90(31)
      acc90(20)=abb90(32)
      acc90(21)=abb90(36)
      acc90(22)=abb90(37)
      acc90(23)=abb90(38)
      acc90(24)=abb90(40)
      acc90(25)=abb90(41)
      acc90(26)=abb90(42)
      acc90(27)=abb90(45)
      acc90(28)=abb90(46)
      acc90(29)=abb90(47)
      acc90(30)=abb90(49)
      acc90(31)=abb90(51)
      acc90(32)=abb90(55)
      acc90(33)=abb90(59)
      acc90(34)=abb90(63)
      acc90(35)=abb90(64)
      acc90(36)=abb90(70)
      acc90(37)=abb90(72)
      acc90(38)=abb90(91)
      acc90(39)=abb90(104)
      acc90(40)=abb90(109)
      acc90(41)=abb90(126)
      acc90(42)=abb90(127)
      acc90(43)=acc90(6)*Qspval6k2
      acc90(44)=acc90(9)*Qspvak4k1
      acc90(45)=acc90(10)*Qspk1
      acc90(46)=acc90(14)*Qspvak4k3
      acc90(47)=acc90(20)*Qspvak4k2
      acc90(48)=acc90(25)*Qspvae7k1
      acc90(49)=acc90(29)*Qspe7
      acc90(50)=acc90(33)*Qspvae7k2
      acc90(51)=acc90(41)*Qspk7
      acc90(43)=acc90(51)+acc90(50)+acc90(49)+acc90(48)+acc90(47)+acc90(46)+acc&
      &90(45)+acc90(44)+acc90(43)+acc90(5)
      acc90(43)=Qspk2*acc90(43)
      acc90(44)=acc90(1)*Qspvak4k1
      acc90(45)=acc90(13)*Qspk1
      acc90(46)=acc90(15)*Qspvak4k3
      acc90(47)=acc90(23)*Qspvae7k1
      acc90(48)=acc90(24)*Qspe7
      acc90(49)=acc90(34)*Qspk7
      acc90(44)=acc90(49)+acc90(48)+acc90(47)+acc90(46)+acc90(45)+acc90(11)+acc&
      &90(44)
      acc90(44)=Qspval6k2*acc90(44)
      acc90(45)=acc90(2)*Qspvak4k1
      acc90(46)=acc90(7)*Qspvae7k1
      acc90(47)=acc90(8)*Qspvak4k3
      acc90(48)=acc90(21)*Qspe7
      acc90(49)=acc90(27)*Qspk1
      acc90(50)=acc90(28)*Qspk7
      acc90(45)=acc90(50)+acc90(49)+acc90(48)+acc90(16)+acc90(47)+acc90(46)+acc&
      &90(45)
      acc90(45)=Qspval5k2*acc90(45)
      acc90(46)=acc90(18)*Qspvak4k2
      acc90(47)=acc90(30)*Qspvae7k2
      acc90(48)=-acc90(37)*Qspval6k2
      acc90(46)=acc90(48)+acc90(46)+acc90(47)
      acc90(47)=Qspl5+Qspl6
      acc90(46)=acc90(47)*acc90(46)
      acc90(47)=acc90(31)*Qspval5k2
      acc90(48)=acc90(38)*Qspval6k2
      acc90(49)=-acc90(42)*Qspk2
      acc90(47)=acc90(49)+acc90(48)-acc90(36)+acc90(47)
      acc90(48)=Qspk3+Qspk4
      acc90(47)=acc90(48)*acc90(47)
      acc90(48)=acc90(3)*Qspvak4k1
      acc90(49)=acc90(4)*Qspvak4k3
      acc90(50)=acc90(17)*Qspk1
      acc90(51)=acc90(19)*Qspvae7k1
      acc90(52)=acc90(22)*Qspl5
      acc90(53)=acc90(35)*Qspe7
      acc90(54)=acc90(39)*Qspk7
      acc90(55)=acc90(40)*Qspl6
      acc90(56)=Qspval6l5*acc90(32)
      acc90(57)=QspQ*acc90(26)
      brack=acc90(12)+acc90(43)+acc90(44)+acc90(45)+acc90(46)+acc90(47)+acc90(4&
      &8)+acc90(49)+acc90(50)+acc90(51)+acc90(52)+acc90(53)+acc90(54)+acc90(55)&
      &+acc90(56)+acc90(57)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram90_sign, shift => diagram90_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd90h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d90
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d90 = 0.0_ki
      d90 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d90, ki), aimag(d90), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd90h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d90
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d90 = 0.0_ki
      d90 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d90, ki), aimag(d90), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d90h0l1
