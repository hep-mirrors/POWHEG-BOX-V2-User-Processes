module     p9_csbar_epnebbbarg_d99h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d99h1l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd99h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc99(66)
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspvak7e7
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvae7k7
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak7k1
      Qspk2 = dotproduct(Q,k2)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspvak7e7 = dotproduct(Q,spvak7e7)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvae7k7 = dotproduct(Q,spvae7k7)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      acc99(1)=abb99(9)
      acc99(2)=abb99(10)
      acc99(3)=abb99(11)
      acc99(4)=abb99(12)
      acc99(5)=abb99(13)
      acc99(6)=abb99(14)
      acc99(7)=abb99(15)
      acc99(8)=abb99(16)
      acc99(9)=abb99(17)
      acc99(10)=abb99(18)
      acc99(11)=abb99(19)
      acc99(12)=abb99(20)
      acc99(13)=abb99(21)
      acc99(14)=abb99(22)
      acc99(15)=abb99(23)
      acc99(16)=abb99(24)
      acc99(17)=abb99(25)
      acc99(18)=abb99(26)
      acc99(19)=abb99(27)
      acc99(20)=abb99(28)
      acc99(21)=abb99(29)
      acc99(22)=abb99(30)
      acc99(23)=abb99(31)
      acc99(24)=abb99(32)
      acc99(25)=abb99(33)
      acc99(26)=abb99(34)
      acc99(27)=abb99(35)
      acc99(28)=abb99(36)
      acc99(29)=abb99(37)
      acc99(30)=abb99(38)
      acc99(31)=abb99(39)
      acc99(32)=abb99(40)
      acc99(33)=abb99(41)
      acc99(34)=abb99(42)
      acc99(35)=abb99(43)
      acc99(36)=abb99(44)
      acc99(37)=abb99(45)
      acc99(38)=abb99(49)
      acc99(39)=abb99(51)
      acc99(40)=abb99(58)
      acc99(41)=abb99(59)
      acc99(42)=Qspk2*acc99(33)
      acc99(43)=acc99(41)*Qspvak2e7
      acc99(44)=-acc99(40)*Qspvak4e7
      acc99(45)=acc99(39)*Qspvak4k2
      acc99(46)=-acc99(38)*Qspvak4k7
      acc99(47)=acc99(32)*Qspvak4l5
      acc99(48)=-acc99(13)*Qspvak2k7
      acc99(49)=acc99(3)*Qspvak2l5
      acc99(42)=acc99(49)+acc99(48)+acc99(47)+acc99(46)+acc99(45)+acc99(44)+acc&
      &99(43)+acc99(29)+acc99(42)
      acc99(42)=Qspval6k1*acc99(42)
      acc99(43)=Qspval6k2*acc99(37)
      acc99(44)=-acc99(41)*Qspval6e7
      acc99(45)=acc99(13)*Qspval6k7
      acc99(46)=-acc99(3)*Qspval6l5
      acc99(47)=Qspval5k2*acc99(10)
      acc99(48)=Qspvak7k2*acc99(36)
      acc99(49)=Qspvae7k2*acc99(24)
      acc99(43)=acc99(49)+acc99(48)+acc99(47)+acc99(46)+acc99(45)+acc99(44)+acc&
      &99(5)+acc99(43)
      acc99(43)=Qspvak2k1*acc99(43)
      acc99(44)=acc99(40)*Qspval6e7
      acc99(45)=-acc99(39)*Qspval6k2
      acc99(46)=acc99(38)*Qspval6k7
      acc99(47)=-acc99(32)*Qspval6l5
      acc99(48)=Qspval5k2*acc99(15)
      acc99(49)=Qspvak7k2*acc99(35)
      acc99(50)=Qspvae7k2*acc99(17)
      acc99(44)=acc99(50)+acc99(49)+acc99(48)+acc99(47)+acc99(46)+acc99(45)+acc&
      &99(12)+acc99(44)
      acc99(44)=Qspvak4k1*acc99(44)
      acc99(45)=acc99(28)*Qspval5e7
      acc99(46)=acc99(27)*Qspvae7k1
      acc99(47)=acc99(25)*Qspvae7l5
      acc99(48)=acc99(23)*Qspval5k7
      acc99(49)=acc99(22)*Qspvak7e7
      acc99(50)=acc99(21)*Qspvak7l5
      acc99(51)=acc99(19)*Qspvae7k7
      acc99(52)=acc99(14)*Qspl5
      acc99(53)=acc99(9)*Qspk7
      acc99(54)=acc99(7)*Qspval5k1
      acc99(55)=acc99(2)*Qspvak7k1
      acc99(56)=Qspk2*acc99(18)
      acc99(57)=Qspvak2l5*acc99(6)
      acc99(58)=Qspvak2k7*acc99(11)
      acc99(59)=Qspvak4k2*acc99(26)
      acc99(60)=Qspvak4l5*acc99(20)
      acc99(61)=Qspvak4k7*acc99(31)
      acc99(62)=Qspvak2e7*acc99(8)
      acc99(63)=Qspvak4e7*acc99(34)
      acc99(64)=Qspval5k2*acc99(16)
      acc99(65)=Qspvak7k2*acc99(30)
      acc99(66)=Qspvae7k2*acc99(1)
      brack=acc99(4)+acc99(42)+acc99(43)+acc99(44)+acc99(45)+acc99(46)+acc99(47&
      &)+acc99(48)+acc99(49)+acc99(50)+acc99(51)+acc99(52)+acc99(53)+acc99(54)+&
      &acc99(55)+acc99(56)+acc99(57)+acc99(58)+acc99(59)+acc99(60)+acc99(61)+ac&
      &c99(62)+acc99(63)+acc99(64)+acc99(65)+acc99(66)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram99_sign, shift => diagram99_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd99h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d99
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d99 = 0.0_ki
      d99 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d99, ki), aimag(d99), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd99h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d99
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d99 = 0.0_ki
      d99 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d99, ki), aimag(d99), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d99h1l1