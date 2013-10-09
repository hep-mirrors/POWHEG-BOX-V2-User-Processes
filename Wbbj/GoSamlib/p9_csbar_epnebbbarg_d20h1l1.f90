module     p9_csbar_epnebbbarg_d20h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d20h1l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd20h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc20(55)
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: QspQ
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      QspQ = dotproduct(Q,Q)
      acc20(1)=abb20(15)
      acc20(2)=abb20(16)
      acc20(3)=abb20(17)
      acc20(4)=abb20(18)
      acc20(5)=abb20(19)
      acc20(6)=abb20(20)
      acc20(7)=abb20(21)
      acc20(8)=abb20(22)
      acc20(9)=abb20(26)
      acc20(10)=abb20(32)
      acc20(11)=abb20(34)
      acc20(12)=abb20(35)
      acc20(13)=abb20(36)
      acc20(14)=abb20(40)
      acc20(15)=abb20(41)
      acc20(16)=abb20(46)
      acc20(17)=abb20(47)
      acc20(18)=abb20(48)
      acc20(19)=abb20(49)
      acc20(20)=abb20(52)
      acc20(21)=abb20(57)
      acc20(22)=abb20(61)
      acc20(23)=abb20(63)
      acc20(24)=abb20(64)
      acc20(25)=abb20(65)
      acc20(26)=abb20(66)
      acc20(27)=abb20(72)
      acc20(28)=abb20(86)
      acc20(29)=abb20(89)
      acc20(30)=abb20(176)
      acc20(31)=Qspl5+Qspl6
      acc20(31)=acc20(31)*acc20(30)
      acc20(32)=acc20(6)*Qspvak2k3
      acc20(33)=Qspval6e7*acc20(17)
      acc20(34)=Qspvae7l5*acc20(21)
      acc20(35)=Qspvae7k2*acc20(19)
      acc20(36)=Qspvak2e7*acc20(27)
      acc20(37)=Qspvae7k1*acc20(5)
      acc20(38)=Qspvak7l5*acc20(22)
      acc20(39)=Qspvak7k2*acc20(23)
      acc20(40)=Qspvak7k1*acc20(26)
      acc20(41)=Qspval6k7*acc20(29)
      acc20(42)=Qspval6l5*acc20(11)
      acc20(43)=Qspval6k2*acc20(13)
      acc20(44)=Qspval6k1*acc20(3)
      acc20(45)=Qspval5k2*acc20(8)
      acc20(46)=Qspval5k1*acc20(9)
      acc20(47)=Qspvak2k7*acc20(18)
      acc20(48)=Qspvak2l6*acc20(25)
      acc20(49)=Qspvak2l5*acc20(15)
      acc20(50)=Qspvak2k4*acc20(10)
      acc20(51)=Qspvak2k1*acc20(2)
      acc20(52)=Qspe7*acc20(4)
      acc20(53)=Qspk7*acc20(24)
      acc20(54)=Qspk2*acc20(12)
      acc20(55)=Qspk1*acc20(16)
      acc20(31)=acc20(31)+acc20(55)+acc20(54)+acc20(53)+acc20(52)+acc20(51)+acc&
      &20(50)+acc20(49)+acc20(48)+acc20(47)+acc20(46)+acc20(45)+acc20(44)+acc20&
      &(43)+acc20(42)+acc20(41)+acc20(40)+acc20(39)+acc20(38)+acc20(37)+acc20(3&
      &6)+acc20(35)+acc20(34)+acc20(33)+acc20(32)+acc20(1)
      acc20(31)=Qspvak4k3*acc20(31)
      acc20(32)=Qspk4+Qspk3
      acc20(33)=acc20(28)*Qspvak4k3
      acc20(33)=acc20(33)-acc20(14)
      acc20(32)=acc20(33)*acc20(32)
      acc20(33)=acc20(7)*Qspvak2k3
      acc20(34)=QspQ*acc20(20)
      brack=acc20(31)+acc20(32)+acc20(33)+acc20(34)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram20_sign, shift => diagram20_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd20h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d20
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d20 = 0.0_ki
      d20 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d20, ki), aimag(d20), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd20h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d20
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d20 = 0.0_ki
      d20 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d20, ki), aimag(d20), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d20h1l1
