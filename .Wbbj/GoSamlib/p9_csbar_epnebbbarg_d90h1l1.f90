module     p9_csbar_epnebbbarg_d90h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d90h1l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd90h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc90(55)
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspl6
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak2l6
      complex(ki) :: QspQ
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      Qspk1 = dotproduct(Q,k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk7 = dotproduct(Q,k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspl6 = dotproduct(Q,l6)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      QspQ = dotproduct(Q,Q)
      acc90(1)=abb90(11)
      acc90(2)=abb90(12)
      acc90(3)=abb90(13)
      acc90(4)=abb90(14)
      acc90(5)=abb90(15)
      acc90(6)=abb90(16)
      acc90(7)=abb90(17)
      acc90(8)=abb90(18)
      acc90(9)=abb90(19)
      acc90(10)=abb90(20)
      acc90(11)=abb90(23)
      acc90(12)=abb90(24)
      acc90(13)=abb90(25)
      acc90(14)=abb90(26)
      acc90(15)=abb90(27)
      acc90(16)=abb90(28)
      acc90(17)=abb90(29)
      acc90(18)=abb90(31)
      acc90(19)=abb90(32)
      acc90(20)=abb90(33)
      acc90(21)=abb90(34)
      acc90(22)=abb90(35)
      acc90(23)=abb90(37)
      acc90(24)=abb90(38)
      acc90(25)=abb90(39)
      acc90(26)=abb90(41)
      acc90(27)=abb90(42)
      acc90(28)=abb90(46)
      acc90(29)=abb90(47)
      acc90(30)=abb90(48)
      acc90(31)=abb90(49)
      acc90(32)=abb90(50)
      acc90(33)=abb90(54)
      acc90(34)=abb90(55)
      acc90(35)=abb90(61)
      acc90(36)=abb90(65)
      acc90(37)=abb90(84)
      acc90(38)=abb90(94)
      acc90(39)=abb90(98)
      acc90(40)=abb90(102)
      acc90(41)=abb90(104)
      acc90(42)=acc90(4)*Qspvak4k1
      acc90(43)=acc90(5)*Qspk2
      acc90(44)=acc90(13)*Qspe7
      acc90(45)=acc90(15)*Qspk1
      acc90(46)=acc90(17)*Qspvae7k1
      acc90(47)=acc90(25)*Qspvak4k3
      acc90(48)=acc90(30)*Qspk7
      acc90(42)=acc90(48)+acc90(47)+acc90(46)+acc90(45)+acc90(44)+acc90(8)+acc9&
      &0(43)+acc90(42)
      acc90(42)=Qspval6l5*acc90(42)
      acc90(43)=acc90(11)*Qspvak4k1
      acc90(44)=acc90(18)*Qspvak4k3
      acc90(45)=acc90(23)*Qspk1
      acc90(46)=acc90(33)*Qspvae7k1
      acc90(47)=acc90(37)*Qspe7
      acc90(48)=acc90(39)*Qspk7
      acc90(43)=acc90(48)+acc90(47)+acc90(46)+acc90(45)+acc90(44)+acc90(43)
      acc90(43)=Qspl5*acc90(43)
      acc90(44)=acc90(1)*Qspvak4k1
      acc90(45)=acc90(2)*Qspvae7k1
      acc90(46)=acc90(3)*Qspe7
      acc90(47)=acc90(10)*Qspvak4k3
      acc90(48)=acc90(24)*Qspk1
      acc90(49)=acc90(29)*Qspk7
      acc90(44)=acc90(49)+acc90(48)+acc90(47)+acc90(9)+acc90(46)+acc90(45)+acc9&
      &0(44)
      acc90(44)=Qspvak2l5*acc90(44)
      acc90(45)=-acc90(7)*Qspvae7l5
      acc90(46)=-acc90(19)*Qspvak4l5
      acc90(47)=-acc90(26)*Qspval6l5
      acc90(45)=acc90(47)+acc90(31)+acc90(45)+acc90(46)
      acc90(46)=Qspl6+Qspl5
      acc90(45)=acc90(46)*acc90(45)
      acc90(46)=acc90(34)*Qspvak2l5
      acc90(47)=-acc90(35)*Qspval6l5
      acc90(48)=acc90(41)*Qspl5
      acc90(46)=acc90(48)+acc90(40)+acc90(47)+acc90(46)
      acc90(47)=Qspk3+Qspk4
      acc90(46)=acc90(47)*acc90(46)
      acc90(47)=acc90(22)*Qspvak4l5
      acc90(48)=acc90(28)*Qspvae7l5
      acc90(47)=acc90(48)+acc90(47)+acc90(14)
      acc90(47)=Qspk2*acc90(47)
      acc90(48)=acc90(6)*Qspvak4k1
      acc90(49)=acc90(20)*Qspk1
      acc90(50)=acc90(21)*Qspvak4k3
      acc90(51)=acc90(32)*Qspvae7k1
      acc90(52)=acc90(36)*Qspe7
      acc90(53)=acc90(38)*Qspk7
      acc90(54)=Qspvak2l6*acc90(27)
      acc90(55)=QspQ*acc90(12)
      brack=acc90(16)+acc90(42)+acc90(43)+acc90(44)+acc90(45)+acc90(46)+acc90(4&
      &7)+acc90(48)+acc90(49)+acc90(50)+acc90(51)+acc90(52)+acc90(53)+acc90(54)&
      &+acc90(55)
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
      use p9_csbar_epnebbbarg_abbrevd90h1
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
      use p9_csbar_epnebbbarg_abbrevd90h1
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
end module p9_csbar_epnebbbarg_d90h1l1
