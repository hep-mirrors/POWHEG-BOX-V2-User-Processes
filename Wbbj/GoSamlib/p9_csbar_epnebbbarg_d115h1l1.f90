module     p9_csbar_epnebbbarg_d115h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d115h1l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd115h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc115(54)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspval6l5
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      QspQ = dotproduct(Q,Q)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspval6l5 = dotproduct(Q,spval6l5)
      acc115(1)=abb115(8)
      acc115(2)=abb115(9)
      acc115(3)=abb115(10)
      acc115(4)=abb115(11)
      acc115(5)=abb115(12)
      acc115(6)=abb115(13)
      acc115(7)=abb115(14)
      acc115(8)=abb115(15)
      acc115(9)=abb115(16)
      acc115(10)=abb115(17)
      acc115(11)=abb115(18)
      acc115(12)=abb115(19)
      acc115(13)=abb115(20)
      acc115(14)=abb115(21)
      acc115(15)=abb115(22)
      acc115(16)=abb115(23)
      acc115(17)=abb115(24)
      acc115(18)=abb115(25)
      acc115(19)=abb115(27)
      acc115(20)=abb115(28)
      acc115(21)=abb115(29)
      acc115(22)=abb115(30)
      acc115(23)=abb115(31)
      acc115(24)=abb115(32)
      acc115(25)=abb115(33)
      acc115(26)=abb115(34)
      acc115(27)=abb115(36)
      acc115(28)=abb115(37)
      acc115(29)=abb115(38)
      acc115(30)=abb115(40)
      acc115(31)=abb115(41)
      acc115(32)=abb115(42)
      acc115(33)=abb115(44)
      acc115(34)=abb115(47)
      acc115(35)=abb115(48)
      acc115(36)=abb115(50)
      acc115(37)=abb115(69)
      acc115(38)=abb115(88)
      acc115(39)=abb115(104)
      acc115(40)=abb115(105)
      acc115(41)=Qspl6+Qspl5
      acc115(42)=QspQ+acc115(41)
      acc115(42)=acc115(40)*acc115(42)
      acc115(43)=acc115(36)*Qspvak4k1
      acc115(44)=acc115(35)*Qspvak4k2
      acc115(45)=acc115(34)*Qspvak4l6
      acc115(46)=acc115(32)*Qspvak2l5
      acc115(47)=acc115(29)*Qspvak2l6
      acc115(48)=acc115(3)*Qspvak4l5
      acc115(49)=Qspval5k1*acc115(26)
      acc115(50)=Qspvak2k1*acc115(4)
      acc115(51)=Qspval6k1*acc115(1)
      acc115(52)=Qspk1*acc115(39)
      acc115(53)=Qspk2*acc115(2)
      acc115(42)=acc115(53)+acc115(52)+acc115(51)+acc115(50)+acc115(49)+acc115(&
      &48)+acc115(47)+acc115(46)+acc115(45)+acc115(44)+acc115(37)+acc115(43)+ac&
      &c115(42)
      acc115(42)=Qspe7*acc115(42)
      acc115(43)=-QspQ+Qspk1+Qspk7
      acc115(44)=acc115(10)*acc115(43)
      acc115(45)=Qspvak2k7*acc115(27)
      acc115(46)=Qspvak4k7*acc115(33)
      acc115(47)=Qspvak7k1*acc115(15)
      acc115(48)=Qspvae7k1*acc115(16)
      acc115(44)=acc115(48)+acc115(47)+acc115(46)+acc115(7)+acc115(45)+acc115(4&
      &4)
      acc115(44)=Qspval6l5*acc115(44)
      acc115(43)=-acc115(19)*acc115(43)
      acc115(45)=Qspvak2k7*acc115(20)
      acc115(46)=Qspvak4k7*acc115(31)
      acc115(47)=Qspvak7k1*acc115(5)
      acc115(48)=Qspvae7k1*acc115(30)
      acc115(43)=acc115(48)+acc115(47)+acc115(46)+acc115(17)+acc115(45)+acc115(&
      &43)
      acc115(43)=Qspk2*acc115(43)
      acc115(45)=Qspvak2k1*acc115(8)
      acc115(46)=Qspval6k1*acc115(6)
      acc115(45)=acc115(45)-acc115(46)
      acc115(46)=acc115(23)-acc115(45)
      acc115(46)=Qspk7*acc115(46)
      acc115(47)=Qspvae7k1*acc115(21)
      acc115(45)=acc115(47)+acc115(14)+acc115(45)
      acc115(45)=Qspk1*acc115(45)
      acc115(47)=-acc115(38)*acc115(41)
      acc115(48)=Qspval5k1*acc115(22)
      acc115(49)=Qspvak2k7*acc115(18)
      acc115(50)=Qspvak4k7*acc115(28)
      acc115(51)=Qspvak7k1*acc115(13)
      acc115(52)=QspQ*acc115(9)
      acc115(53)=Qspvak2k1*acc115(25)
      acc115(54)=Qspval6k1*acc115(12)
      acc115(41)=-acc115(21)*acc115(41)
      acc115(41)=acc115(11)+acc115(41)
      acc115(41)=Qspvae7k1*acc115(41)
      brack=acc115(24)+acc115(41)+acc115(42)+acc115(43)+acc115(44)+acc115(45)+a&
      &cc115(46)+acc115(47)+acc115(48)+acc115(49)+acc115(50)+acc115(51)+acc115(&
      &52)+acc115(53)+acc115(54)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram115_sign, shift => diagram115_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd115h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d115
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k7-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d115 = 0.0_ki
      d115 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d115, ki), aimag(d115), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd115h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d115
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k7-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d115 = 0.0_ki
      d115 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d115, ki), aimag(d115), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d115h1l1
