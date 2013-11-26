module     p9_csbar_epnebbbarg_d14h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d14h2l1.f90
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
      use p9_csbar_epnebbbarg_abbrevd14h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc14(53)
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5l6
      complex(ki) :: QspQ
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7k3
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      QspQ = dotproduct(Q,Q)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      acc14(1)=abb14(7)
      acc14(2)=abb14(8)
      acc14(3)=abb14(9)
      acc14(4)=abb14(10)
      acc14(5)=abb14(11)
      acc14(6)=abb14(12)
      acc14(7)=abb14(13)
      acc14(8)=abb14(14)
      acc14(9)=abb14(16)
      acc14(10)=abb14(17)
      acc14(11)=abb14(18)
      acc14(12)=abb14(19)
      acc14(13)=abb14(20)
      acc14(14)=abb14(21)
      acc14(15)=abb14(22)
      acc14(16)=abb14(23)
      acc14(17)=abb14(24)
      acc14(18)=abb14(26)
      acc14(19)=abb14(27)
      acc14(20)=abb14(28)
      acc14(21)=abb14(29)
      acc14(22)=abb14(30)
      acc14(23)=abb14(31)
      acc14(24)=abb14(32)
      acc14(25)=abb14(35)
      acc14(26)=abb14(36)
      acc14(27)=abb14(37)
      acc14(28)=abb14(38)
      acc14(29)=abb14(40)
      acc14(30)=abb14(41)
      acc14(31)=abb14(43)
      acc14(32)=abb14(44)
      acc14(33)=abb14(45)
      acc14(34)=abb14(46)
      acc14(35)=abb14(48)
      acc14(36)=abb14(49)
      acc14(37)=abb14(50)
      acc14(38)=abb14(51)
      acc14(39)=abb14(52)
      acc14(40)=abb14(53)
      acc14(41)=-Qspk7+Qspk1
      acc14(41)=acc14(41)*acc14(15)
      acc14(42)=-Qspvak3k1*acc14(7)
      acc14(43)=acc14(1)*Qspvak2k1
      acc14(44)=acc14(6)*Qspvak7l6
      acc14(45)=acc14(10)*Qspvak4k1
      acc14(46)=acc14(17)*Qspvak7k2
      acc14(47)=acc14(40)*Qspval5k1
      acc14(41)=acc14(41)+acc14(47)+acc14(19)+acc14(46)+acc14(45)+acc14(44)+acc&
      &14(43)+acc14(42)
      acc14(41)=Qspvak4k3*acc14(41)
      acc14(42)=acc14(7)*Qspvak4k1
      acc14(43)=acc14(21)*Qspvak2k1
      acc14(44)=acc14(26)*Qspk2
      acc14(45)=acc14(28)*Qspvak7l6
      acc14(46)=acc14(30)*Qspval5k1
      acc14(47)=acc14(32)*Qspvak7k2
      acc14(48)=acc14(35)*Qspval5l6
      acc14(42)=acc14(48)+acc14(47)+acc14(46)+acc14(45)+acc14(44)+acc14(43)+acc&
      &14(12)+acc14(42)
      acc14(42)=QspQ*acc14(42)
      acc14(43)=acc14(11)*Qspvak4k1
      acc14(44)=-acc14(13)*Qspvak7k2
      acc14(45)=-acc14(18)*Qspvak2k1
      acc14(46)=-acc14(29)*Qspvak7l6
      acc14(47)=-acc14(38)*Qspval5k1
      acc14(43)=acc14(43)+acc14(44)+acc14(47)+acc14(46)+acc14(45)
      acc14(44)=Qspk3+Qspk4
      acc14(45)=acc14(44)-Qspk1
      acc14(43)=acc14(45)*acc14(43)
      acc14(45)=acc14(4)*Qspvak4k1
      acc14(46)=Qspvak7k1*Qspvak4k3
      acc14(47)=acc14(33)*acc14(46)
      acc14(48)=acc14(34)*Qspk1
      acc14(49)=acc14(37)*Qspvak7k3
      acc14(45)=acc14(49)+acc14(48)+acc14(47)+acc14(23)+acc14(45)
      acc14(45)=Qspval5l6*acc14(45)
      acc14(47)=acc14(16)*Qspvak4k1
      acc14(48)=-acc14(22)*acc14(46)
      acc14(49)=acc14(27)*Qspk1
      acc14(50)=acc14(31)*Qspvak7k3
      acc14(47)=acc14(50)+acc14(49)+acc14(24)+acc14(48)+acc14(47)
      acc14(47)=Qspk2*acc14(47)
      acc14(48)=acc14(14)*Qspk2
      acc14(49)=acc14(36)*Qspval5l6
      acc14(48)=acc14(49)+acc14(48)
      acc14(48)=Qspvak7k1*acc14(48)
      acc14(44)=acc14(20)*acc14(44)
      acc14(49)=acc14(2)*Qspvak4k1
      acc14(50)=acc14(3)*Qspvak7k2
      acc14(51)=acc14(8)*Qspk7
      acc14(52)=acc14(9)*Qspvak3k1
      acc14(53)=acc14(25)*Qspk1
      acc14(46)=acc14(39)*acc14(46)
      brack=acc14(5)+acc14(41)+acc14(42)+acc14(43)+acc14(44)+acc14(45)+acc14(46&
      &)+acc14(47)+acc14(48)+acc14(49)+acc14(50)+acc14(51)+acc14(52)+acc14(53)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram14_sign, shift => diagram14_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd14h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d14
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d14 = 0.0_ki
      d14 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d14, ki), aimag(d14), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd14h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d14
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d14 = 0.0_ki
      d14 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d14, ki), aimag(d14), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d14h2l1
