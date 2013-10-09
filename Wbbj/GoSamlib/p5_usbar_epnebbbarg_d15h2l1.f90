module     p5_usbar_epnebbbarg_d15h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d15h2l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd15h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc15(59)
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      acc15(1)=abb15(9)
      acc15(2)=abb15(10)
      acc15(3)=abb15(11)
      acc15(4)=abb15(12)
      acc15(5)=abb15(13)
      acc15(6)=abb15(14)
      acc15(7)=abb15(15)
      acc15(8)=abb15(16)
      acc15(9)=abb15(18)
      acc15(10)=abb15(19)
      acc15(11)=abb15(20)
      acc15(12)=abb15(21)
      acc15(13)=abb15(22)
      acc15(14)=abb15(23)
      acc15(15)=abb15(24)
      acc15(16)=abb15(26)
      acc15(17)=abb15(28)
      acc15(18)=abb15(29)
      acc15(19)=abb15(30)
      acc15(20)=abb15(31)
      acc15(21)=abb15(32)
      acc15(22)=abb15(33)
      acc15(23)=abb15(34)
      acc15(24)=abb15(36)
      acc15(25)=abb15(37)
      acc15(26)=abb15(38)
      acc15(27)=abb15(39)
      acc15(28)=abb15(40)
      acc15(29)=abb15(41)
      acc15(30)=abb15(42)
      acc15(31)=abb15(43)
      acc15(32)=abb15(45)
      acc15(33)=abb15(46)
      acc15(34)=abb15(48)
      acc15(35)=abb15(49)
      acc15(36)=abb15(50)
      acc15(37)=abb15(52)
      acc15(38)=abb15(55)
      acc15(39)=abb15(58)
      acc15(40)=abb15(61)
      acc15(41)=abb15(63)
      acc15(42)=abb15(64)
      acc15(43)=abb15(66)
      acc15(44)=abb15(67)
      acc15(45)=abb15(69)
      acc15(46)=Qspk7-Qspk1
      acc15(47)=acc15(20)*acc15(46)
      acc15(48)=acc15(1)*Qspvak2k1
      acc15(49)=acc15(12)*Qspvak7k3
      acc15(50)=acc15(26)*Qspvak4k1
      acc15(51)=acc15(28)*Qspval5k1
      acc15(52)=Qspvak7k1*Qspvak4k3
      acc15(53)=-acc15(32)*acc15(52)
      acc15(54)=acc15(34)*Qspvak7k2
      acc15(55)=acc15(44)*Qspvak7k1
      acc15(47)=acc15(55)+acc15(47)+acc15(54)+acc15(53)+acc15(51)+acc15(27)+acc&
      &15(50)+acc15(49)+acc15(48)
      acc15(47)=Qspval5l6*acc15(47)
      acc15(46)=acc15(31)*acc15(46)
      acc15(48)=acc15(10)*Qspvak4k1
      acc15(49)=acc15(13)*Qspval5k1
      acc15(50)=acc15(30)*Qspvak7k3
      acc15(51)=-acc15(33)*acc15(52)
      acc15(53)=acc15(38)*Qspvak7k2
      acc15(54)=acc15(39)*Qspvak7k1
      acc15(55)=acc15(42)*Qspval6k1
      acc15(46)=acc15(54)+acc15(46)+acc15(55)+acc15(53)+acc15(51)+acc15(50)+acc&
      &15(25)+acc15(49)+acc15(48)
      acc15(46)=Qspk2*acc15(46)
      acc15(48)=acc15(2)*Qspval5k1
      acc15(49)=acc15(6)*Qspvak2k1
      acc15(50)=acc15(11)*Qspvak7k2
      acc15(51)=acc15(19)*Qspval6k1
      acc15(53)=acc15(21)*QspQ
      acc15(54)=acc15(41)*Qspk1
      acc15(55)=Qspvak7l6*acc15(17)
      acc15(56)=Qspvak7l5*acc15(29)
      acc15(48)=acc15(56)+acc15(55)+acc15(54)+acc15(36)+acc15(53)+acc15(51)+acc&
      &15(50)+acc15(49)+acc15(48)
      acc15(48)=Qspvak4k3*acc15(48)
      acc15(49)=acc15(9)*Qspval5k1
      acc15(50)=-acc15(37)*Qspvak7k3
      acc15(51)=acc15(43)*Qspvak4k1
      acc15(49)=acc15(51)+acc15(50)+acc15(49)
      acc15(50)=Qspl5+Qspl6
      acc15(51)=acc15(50)-Qspk1
      acc15(49)=acc15(51)*acc15(49)
      acc15(53)=acc15(23)*Qspvak2k1
      acc15(54)=acc15(24)*Qspvak7k3
      acc15(55)=acc15(35)*Qspvak4k1
      acc15(53)=acc15(55)+acc15(54)+acc15(53)+acc15(22)
      acc15(53)=QspQ*acc15(53)
      acc15(54)=QspQ*Qspval5k1
      acc15(55)=-Qspval6k1*Qspval5l6
      acc15(54)=acc15(54)+acc15(55)
      acc15(54)=acc15(45)*acc15(54)
      acc15(51)=Qspk2-acc15(51)
      acc15(51)=acc15(18)*acc15(51)
      acc15(51)=acc15(4)+acc15(51)
      acc15(51)=Qspvak2k1*acc15(51)
      acc15(50)=acc15(16)*acc15(50)
      acc15(55)=acc15(3)*Qspval5k1
      acc15(56)=acc15(5)*Qspvak7k2
      acc15(57)=acc15(8)*Qspk7
      acc15(58)=acc15(14)*Qspk1
      acc15(52)=acc15(15)*acc15(52)
      acc15(59)=acc15(40)*Qspval6k1
      brack=acc15(7)+acc15(46)+acc15(47)+acc15(48)+acc15(49)+acc15(50)+acc15(51&
      &)+acc15(52)+acc15(53)+acc15(54)+acc15(55)+acc15(56)+acc15(57)+acc15(58)+&
      &acc15(59)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram15_sign, shift => diagram15_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd15h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d15
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d15 = 0.0_ki
      d15 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d15, ki), aimag(d15), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd15h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d15
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d15 = 0.0_ki
      d15 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d15, ki), aimag(d15), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d15h2l1
