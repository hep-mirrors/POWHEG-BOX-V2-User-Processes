module     p9_csbar_epnebbbarg_d16h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d16h1l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd16h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc16(53)
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6l5
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2k3
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      acc16(1)=abb16(7)
      acc16(2)=abb16(8)
      acc16(3)=abb16(9)
      acc16(4)=abb16(10)
      acc16(5)=abb16(11)
      acc16(6)=abb16(12)
      acc16(7)=abb16(13)
      acc16(8)=abb16(14)
      acc16(9)=abb16(15)
      acc16(10)=abb16(16)
      acc16(11)=abb16(17)
      acc16(12)=abb16(18)
      acc16(13)=abb16(19)
      acc16(14)=abb16(20)
      acc16(15)=abb16(21)
      acc16(16)=abb16(22)
      acc16(17)=abb16(23)
      acc16(18)=abb16(24)
      acc16(19)=abb16(25)
      acc16(20)=abb16(26)
      acc16(21)=abb16(27)
      acc16(22)=abb16(28)
      acc16(23)=abb16(29)
      acc16(24)=abb16(30)
      acc16(25)=abb16(31)
      acc16(26)=abb16(32)
      acc16(27)=abb16(33)
      acc16(28)=abb16(34)
      acc16(29)=abb16(35)
      acc16(30)=abb16(36)
      acc16(31)=abb16(37)
      acc16(32)=abb16(38)
      acc16(33)=abb16(39)
      acc16(34)=abb16(40)
      acc16(35)=abb16(41)
      acc16(36)=abb16(48)
      acc16(37)=abb16(55)
      acc16(38)=abb16(65)
      acc16(39)=abb16(66)
      acc16(40)=abb16(67)
      acc16(41)=abb16(72)
      acc16(42)=Qspk3+Qspk4
      acc16(43)=acc16(40)*acc16(42)
      acc16(44)=-acc16(9)*Qspvak4k3
      acc16(45)=Qspk2*Qspvak4k3
      acc16(46)=acc16(19)*acc16(45)
      acc16(47)=Qspval6l5*Qspvak4k3
      acc16(48)=-acc16(21)*acc16(47)
      acc16(49)=-acc16(26)*QspQ
      acc16(43)=-acc16(29)+acc16(49)+acc16(48)+acc16(46)+acc16(43)+acc16(44)
      acc16(44)=Qspk1-Qspk7
      acc16(43)=acc16(44)*acc16(43)
      acc16(44)=acc16(2)*Qspvae7k1
      acc16(46)=acc16(20)*Qspval6l5
      acc16(48)=acc16(31)*Qspvak4k3
      acc16(49)=acc16(37)*Qspe7
      acc16(50)=acc16(39)*Qspk2
      acc16(44)=acc16(50)+acc16(49)+acc16(32)+acc16(48)+acc16(46)+acc16(44)
      acc16(44)=QspQ*acc16(44)
      acc16(46)=acc16(3)*Qspvae7k1
      acc16(48)=acc16(4)*Qspe7
      acc16(49)=acc16(23)*Qspvak2k7
      acc16(50)=acc16(35)*Qspvak2k1
      acc16(46)=acc16(50)+acc16(49)+acc16(7)+acc16(48)+acc16(46)
      acc16(46)=Qspvak4k3*acc16(46)
      acc16(48)=-acc16(16)*Qspvae7k1
      acc16(49)=-acc16(30)*Qspval6l5
      acc16(50)=acc16(38)*Qspe7
      acc16(51)=-acc16(41)*Qspk2
      acc16(48)=acc16(51)+acc16(50)-acc16(36)+acc16(49)+acc16(48)
      acc16(42)=acc16(42)*acc16(48)
      acc16(48)=acc16(5)*Qspvae7k1
      acc16(49)=acc16(14)*Qspe7
      acc16(50)=acc16(27)*Qspvak2k1
      acc16(51)=acc16(28)*Qspvak2k7
      acc16(48)=acc16(51)+acc16(50)+acc16(49)+acc16(6)+acc16(48)
      acc16(45)=acc16(45)*acc16(48)
      acc16(48)=acc16(1)*Qspvak2k1
      acc16(49)=acc16(13)*Qspe7
      acc16(50)=acc16(22)*Qspvae7k1
      acc16(51)=acc16(34)*Qspvak2k7
      acc16(48)=acc16(51)+acc16(50)+acc16(49)+acc16(11)+acc16(48)
      acc16(47)=acc16(47)*acc16(48)
      acc16(48)=-Qspl5-Qspl6
      acc16(49)=acc16(10)*Qspvak4k3
      acc16(49)=acc16(49)+acc16(33)
      acc16(48)=acc16(49)*acc16(48)
      acc16(49)=acc16(17)*Qspval6l5
      acc16(50)=acc16(24)*Qspk2
      acc16(49)=acc16(50)+acc16(49)+acc16(15)
      acc16(49)=Qspvak2k3*acc16(49)
      acc16(50)=acc16(8)*Qspvae7k1
      acc16(51)=acc16(12)*Qspe7
      acc16(52)=acc16(18)*Qspval6l5
      acc16(53)=acc16(25)*Qspk2
      brack=acc16(42)+acc16(43)+acc16(44)+acc16(45)+acc16(46)+acc16(47)+acc16(4&
      &8)+acc16(49)+acc16(50)+acc16(51)+acc16(52)+acc16(53)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram16_sign, shift => diagram16_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd16h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d16
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d16 = 0.0_ki
      d16 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d16, ki), aimag(d16), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd16h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d16
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d16 = 0.0_ki
      d16 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d16, ki), aimag(d16), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d16h1l1
