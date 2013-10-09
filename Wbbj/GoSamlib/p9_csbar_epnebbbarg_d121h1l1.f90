module     p9_csbar_epnebbbarg_d121h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d121h1l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd121h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc121(56)
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspe7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak3l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: QspQ
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspe7 = dotproduct(Q,e7)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspk1 = dotproduct(Q,k1)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak3l5 = dotproduct(Q,spvak3l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      QspQ = dotproduct(Q,Q)
      acc121(1)=abb121(8)
      acc121(2)=abb121(9)
      acc121(3)=abb121(10)
      acc121(4)=abb121(11)
      acc121(5)=abb121(12)
      acc121(6)=abb121(13)
      acc121(7)=abb121(14)
      acc121(8)=abb121(15)
      acc121(9)=abb121(16)
      acc121(10)=abb121(17)
      acc121(11)=abb121(18)
      acc121(12)=abb121(19)
      acc121(13)=abb121(20)
      acc121(14)=abb121(21)
      acc121(15)=abb121(22)
      acc121(16)=abb121(23)
      acc121(17)=abb121(24)
      acc121(18)=abb121(25)
      acc121(19)=abb121(26)
      acc121(20)=abb121(27)
      acc121(21)=abb121(28)
      acc121(22)=abb121(30)
      acc121(23)=abb121(31)
      acc121(24)=abb121(33)
      acc121(25)=abb121(34)
      acc121(26)=abb121(35)
      acc121(27)=abb121(36)
      acc121(28)=abb121(37)
      acc121(29)=abb121(38)
      acc121(30)=abb121(39)
      acc121(31)=abb121(40)
      acc121(32)=abb121(43)
      acc121(33)=abb121(44)
      acc121(34)=abb121(46)
      acc121(35)=abb121(47)
      acc121(36)=abb121(48)
      acc121(37)=abb121(49)
      acc121(38)=abb121(50)
      acc121(39)=abb121(52)
      acc121(40)=abb121(55)
      acc121(41)=abb121(57)
      acc121(42)=Qspl6+Qspk7
      acc121(43)=acc121(29)*acc121(42)
      acc121(44)=acc121(4)*Qspvae7k2
      acc121(45)=acc121(19)*Qspval6e7
      acc121(46)=-acc121(25)*Qspe7
      acc121(47)=acc121(28)*Qspk2
      acc121(48)=acc121(39)*Qspvak4l5
      acc121(43)=acc121(47)+acc121(45)+acc121(48)+acc121(46)-acc121(18)+acc121(&
      &44)+acc121(43)
      acc121(44)=-Qspk1+Qspk3+Qspk4
      acc121(43)=acc121(44)*acc121(43)
      acc121(44)=acc121(9)*Qspvak4l5
      acc121(45)=acc121(22)*Qspval6e7
      acc121(46)=acc121(31)*Qspe7
      acc121(47)=acc121(33)*Qspvae7k2
      acc121(48)=acc121(41)*Qspk2
      acc121(49)=-Qspvak3l5*acc121(21)
      acc121(44)=acc121(49)+acc121(48)+acc121(47)+acc121(46)+acc121(45)+acc121(&
      &17)+acc121(44)
      acc121(44)=Qspvak4k3*acc121(44)
      acc121(45)=acc121(1)*Qspe7
      acc121(46)=acc121(2)*Qspvae7k2
      acc121(47)=acc121(5)*Qspvak4l5
      acc121(48)=acc121(6)*Qspval6e7
      acc121(49)=acc121(23)*Qspk2
      acc121(50)=Qspvak1l5*acc121(21)
      acc121(45)=acc121(50)+acc121(49)+acc121(14)+acc121(48)+acc121(47)+acc121(&
      &46)+acc121(45)
      acc121(45)=Qspvak4k1*acc121(45)
      acc121(46)=acc121(36)*acc121(42)
      acc121(47)=acc121(24)*Qspk2
      acc121(48)=acc121(37)*Qspvae7k2
      acc121(46)=acc121(48)+acc121(47)+acc121(20)+acc121(46)
      acc121(46)=Qspvak2e7*acc121(46)
      acc121(47)=-acc121(16)*Qspvak4k1
      acc121(48)=acc121(40)*Qspvak4k3
      acc121(47)=acc121(48)+acc121(47)
      acc121(42)=acc121(42)*acc121(47)
      acc121(47)=acc121(26)*Qspval6e7
      acc121(48)=acc121(32)*Qspe7
      acc121(47)=acc121(48)+acc121(47)
      acc121(47)=Qspk2*acc121(47)
      acc121(48)=acc121(3)*Qspval6e7
      acc121(49)=acc121(30)*Qspe7
      acc121(48)=acc121(49)+acc121(27)+acc121(48)
      acc121(48)=Qspvak2k7*acc121(48)
      acc121(49)=-acc121(35)*Qspval6e7
      acc121(49)=acc121(49)+acc121(13)
      acc121(49)=Qspvak2l6*acc121(49)
      acc121(50)=Qspvae7l5*acc121(34)
      acc121(51)=Qspvak7l5*acc121(38)
      acc121(52)=Qspval6l5*acc121(8)
      acc121(53)=Qspvak2l5*acc121(7)
      acc121(54)=Qspvak2k3*acc121(15)
      acc121(55)=Qspvak2k1*acc121(11)
      acc121(56)=QspQ*acc121(10)
      brack=acc121(12)+acc121(42)+acc121(43)+acc121(44)+acc121(45)+acc121(46)+a&
      &cc121(47)+acc121(48)+acc121(49)+acc121(50)+acc121(51)+acc121(52)+acc121(&
      &53)+acc121(54)+acc121(55)+acc121(56)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram121_sign, shift => diagram121_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd121h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d121
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d121 = 0.0_ki
      d121 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d121, ki), aimag(d121), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd121h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d121
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d121 = 0.0_ki
      d121 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d121, ki), aimag(d121), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d121h1l1
