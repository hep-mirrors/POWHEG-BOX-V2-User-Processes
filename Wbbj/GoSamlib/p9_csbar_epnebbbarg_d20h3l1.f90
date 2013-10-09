module     p9_csbar_epnebbbarg_d20h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d20h3l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd20h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc20(49)
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5l6
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
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5l6 = dotproduct(Q,spval5l6)
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
      acc20(3)=abb20(18)
      acc20(4)=abb20(19)
      acc20(5)=abb20(22)
      acc20(6)=abb20(24)
      acc20(7)=abb20(25)
      acc20(8)=abb20(26)
      acc20(9)=abb20(27)
      acc20(10)=abb20(30)
      acc20(11)=abb20(33)
      acc20(12)=abb20(34)
      acc20(13)=abb20(35)
      acc20(14)=abb20(37)
      acc20(15)=abb20(38)
      acc20(16)=abb20(40)
      acc20(17)=abb20(41)
      acc20(18)=abb20(45)
      acc20(19)=abb20(48)
      acc20(20)=abb20(52)
      acc20(21)=abb20(57)
      acc20(22)=abb20(70)
      acc20(23)=abb20(85)
      acc20(24)=abb20(86)
      acc20(25)=abb20(90)
      acc20(26)=abb20(100)
      acc20(27)=abb20(101)
      acc20(28)=Qspl5+Qspl6
      acc20(28)=acc20(28)*acc20(24)
      acc20(29)=acc20(4)*Qspvak2k3
      acc20(30)=Qspvae7l6*acc20(27)
      acc20(31)=Qspvae7l5*acc20(26)
      acc20(32)=Qspvak2e7*acc20(25)
      acc20(33)=Qspvae7k1*acc20(9)
      acc20(34)=Qspvak7l6*acc20(19)
      acc20(35)=Qspvak7l5*acc20(22)
      acc20(36)=Qspvak7k1*acc20(7)
      acc20(37)=Qspval6l5*acc20(17)
      acc20(38)=Qspval6k1*acc20(10)
      acc20(39)=Qspval5l6*acc20(14)
      acc20(40)=Qspval5k1*acc20(6)
      acc20(41)=Qspvak2k7*acc20(23)
      acc20(42)=Qspvak2l6*acc20(12)
      acc20(43)=Qspvak2l5*acc20(5)
      acc20(44)=Qspvak2k4*acc20(11)
      acc20(45)=Qspvak2k1*acc20(1)
      acc20(46)=Qspe7*acc20(8)
      acc20(47)=Qspk7*acc20(20)
      acc20(48)=Qspk2*acc20(13)
      acc20(49)=Qspk1*acc20(16)
      acc20(28)=acc20(28)+acc20(49)+acc20(48)+acc20(47)+acc20(46)+acc20(45)+acc&
      &20(44)+acc20(43)+acc20(42)+acc20(41)+acc20(40)+acc20(39)+acc20(38)+acc20&
      &(37)+acc20(36)+acc20(35)+acc20(34)+acc20(33)+acc20(32)+acc20(31)+acc20(3&
      &0)+acc20(29)+acc20(2)
      acc20(28)=Qspvak4k3*acc20(28)
      acc20(29)=-Qspk4-Qspk3
      acc20(30)=acc20(21)*Qspvak4k3
      acc20(30)=acc20(30)-acc20(15)
      acc20(29)=acc20(30)*acc20(29)
      acc20(30)=acc20(3)*Qspvak2k3
      acc20(31)=QspQ*acc20(18)
      brack=acc20(28)+acc20(29)+acc20(30)+acc20(31)
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
      use p9_csbar_epnebbbarg_abbrevd20h3
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
      use p9_csbar_epnebbbarg_abbrevd20h3
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
end module p9_csbar_epnebbbarg_d20h3l1
