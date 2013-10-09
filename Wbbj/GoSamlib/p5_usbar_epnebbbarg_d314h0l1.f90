module     p5_usbar_epnebbbarg_d314h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d314h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd314h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc314(65)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k1
      complex(ki) :: QspQ
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k1
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspl5 = dotproduct(Q,l5)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      QspQ = dotproduct(Q,Q)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      acc314(1)=abb314(8)
      acc314(2)=abb314(9)
      acc314(3)=abb314(10)
      acc314(4)=abb314(11)
      acc314(5)=abb314(12)
      acc314(6)=abb314(13)
      acc314(7)=abb314(14)
      acc314(8)=abb314(15)
      acc314(9)=abb314(16)
      acc314(10)=abb314(17)
      acc314(11)=abb314(18)
      acc314(12)=abb314(19)
      acc314(13)=abb314(20)
      acc314(14)=abb314(21)
      acc314(15)=abb314(22)
      acc314(16)=abb314(23)
      acc314(17)=abb314(24)
      acc314(18)=abb314(25)
      acc314(19)=abb314(26)
      acc314(20)=abb314(27)
      acc314(21)=abb314(28)
      acc314(22)=abb314(29)
      acc314(23)=abb314(30)
      acc314(24)=abb314(31)
      acc314(25)=abb314(32)
      acc314(26)=abb314(33)
      acc314(27)=abb314(34)
      acc314(28)=abb314(35)
      acc314(29)=abb314(36)
      acc314(30)=abb314(37)
      acc314(31)=abb314(38)
      acc314(32)=abb314(39)
      acc314(33)=abb314(40)
      acc314(34)=abb314(41)
      acc314(35)=abb314(42)
      acc314(36)=abb314(44)
      acc314(37)=abb314(45)
      acc314(38)=abb314(46)
      acc314(39)=abb314(47)
      acc314(40)=abb314(48)
      acc314(41)=abb314(51)
      acc314(42)=abb314(52)
      acc314(43)=abb314(53)
      acc314(44)=abb314(55)
      acc314(45)=abb314(60)
      acc314(46)=abb314(62)
      acc314(47)=abb314(68)
      acc314(48)=abb314(69)
      acc314(49)=abb314(71)
      acc314(50)=abb314(76)
      acc314(51)=abb314(79)
      acc314(52)=-acc314(10)*Qspvak2k1
      acc314(53)=acc314(22)*Qspvak4k1
      acc314(52)=acc314(53)+acc314(52)+acc314(7)
      acc314(52)=acc314(52)*Qspval5k2
      acc314(53)=acc314(34)*Qspvak4k2
      acc314(54)=acc314(48)*Qspk2
      acc314(53)=acc314(54)+acc314(44)+acc314(53)
      acc314(53)=acc314(53)*Qspval6k1
      acc314(54)=acc314(25)*Qspval6k2
      acc314(54)=acc314(54)+acc314(20)
      acc314(54)=acc314(54)*Qspvak2k1
      acc314(55)=-Qspval6k2*acc314(34)
      acc314(55)=acc314(39)+acc314(55)
      acc314(55)=acc314(55)*Qspvak4k1
      acc314(56)=acc314(26)*Qspl5
      acc314(57)=acc314(28)*Qspvak4k7
      acc314(58)=acc314(29)*Qspvak4k2
      acc314(59)=acc314(30)*Qspk2
      acc314(60)=acc314(35)*Qspval6k7
      acc314(61)=acc314(40)*Qspvak2k7
      acc314(62)=Qspval5k1*acc314(23)
      acc314(52)=acc314(59)+acc314(58)+acc314(53)+acc314(52)+acc314(55)+acc314(&
      &54)+acc314(62)+acc314(43)+acc314(61)+acc314(60)+acc314(57)+acc314(56)
      acc314(52)=Qspe7*acc314(52)
      acc314(53)=acc314(16)*Qspvae7k1
      acc314(54)=acc314(18)*Qspe7
      acc314(55)=acc314(21)*Qspk2
      acc314(56)=acc314(24)*Qspvak2k1
      acc314(57)=acc314(33)*Qspvak4k1
      acc314(58)=acc314(36)*Qspvak4k2
      acc314(59)=acc314(45)*Qspval6k1
      acc314(53)=acc314(59)+acc314(58)+acc314(57)+acc314(56)+acc314(55)+acc314(&
      &54)+acc314(53)+acc314(11)
      acc314(53)=QspQ*acc314(53)
      acc314(54)=acc314(4)*Qspvak4k2
      acc314(55)=acc314(6)*Qspk2
      acc314(56)=acc314(38)*Qspl5
      acc314(57)=Qspval6e7*acc314(49)
      acc314(58)=Qspvak4e7*acc314(50)
      acc314(59)=Qspvak2e7*acc314(51)
      acc314(54)=acc314(59)+acc314(58)+acc314(57)+acc314(56)+acc314(31)+acc314(&
      &55)+acc314(54)
      acc314(54)=Qspvae7k1*acc314(54)
      acc314(55)=acc314(37)*Qspvak4k1
      acc314(56)=acc314(42)*Qspvak2k1
      acc314(57)=-acc314(46)*Qspval6k1
      acc314(58)=-acc314(32)*Qspvak4k2
      acc314(59)=-acc314(41)*Qspk2
      acc314(55)=acc314(59)+acc314(58)+acc314(12)+acc314(57)+acc314(55)+acc314(&
      &56)
      acc314(56)=Qspk1+Qspk7
      acc314(55)=acc314(56)*acc314(55)
      acc314(56)=Qspval6k7*acc314(46)
      acc314(57)=-Qspvak4k7*acc314(37)
      acc314(58)=-Qspvak2k7*acc314(42)
      acc314(59)=acc314(13)*Qspvak4k2
      acc314(60)=acc314(27)*Qspk2
      acc314(56)=acc314(60)+acc314(59)+acc314(8)+acc314(58)+acc314(57)+acc314(5&
      &6)
      acc314(56)=Qspvak7k1*acc314(56)
      acc314(57)=acc314(2)*Qspvak2k1
      acc314(58)=acc314(3)*Qspval6k1
      acc314(59)=acc314(5)*Qspvak4k2
      acc314(60)=acc314(9)*Qspvak4k1
      acc314(61)=acc314(14)*Qspvak2k7
      acc314(62)=acc314(15)*Qspk2
      acc314(63)=acc314(17)*Qspval6k7
      acc314(64)=acc314(19)*Qspvak4k7
      acc314(65)=acc314(47)*Qspl5
      brack=acc314(1)+acc314(52)+acc314(53)+acc314(54)+acc314(55)+acc314(56)+ac&
      &c314(57)+acc314(58)+acc314(59)+acc314(60)+acc314(61)+acc314(62)+acc314(6&
      &3)+acc314(64)+acc314(65)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram314_sign, shift => diagram314_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd314h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d314
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d314 = 0.0_ki
      d314 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d314, ki), aimag(d314), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd314h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d314
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d314 = 0.0_ki
      d314 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d314, ki), aimag(d314), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d314h0l1
