module     p5_usbar_epnebbbarg_d314h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d314h3l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd314h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc314(58)
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k7
      complex(ki) :: QspQ
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k1
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      QspQ = dotproduct(Q,Q)
      Qspl5 = dotproduct(Q,l5)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspe7 = dotproduct(Q,e7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
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
      acc314(19)=abb314(27)
      acc314(20)=abb314(28)
      acc314(21)=abb314(30)
      acc314(22)=abb314(31)
      acc314(23)=abb314(32)
      acc314(24)=abb314(33)
      acc314(25)=abb314(34)
      acc314(26)=abb314(35)
      acc314(27)=abb314(37)
      acc314(28)=abb314(39)
      acc314(29)=abb314(41)
      acc314(30)=abb314(42)
      acc314(31)=abb314(43)
      acc314(32)=abb314(44)
      acc314(33)=abb314(45)
      acc314(34)=abb314(47)
      acc314(35)=abb314(51)
      acc314(36)=abb314(52)
      acc314(37)=abb314(54)
      acc314(38)=abb314(57)
      acc314(39)=abb314(63)
      acc314(40)=abb314(67)
      acc314(41)=abb314(68)
      acc314(42)=abb314(71)
      acc314(43)=abb314(72)
      acc314(44)=abb314(73)
      acc314(45)=abb314(74)
      acc314(46)=-Qspvak4l5*acc314(20)
      acc314(47)=acc314(7)*Qspvak2l6
      acc314(46)=acc314(47)+acc314(4)+acc314(46)
      acc314(46)=acc314(46)*Qspvak2k1
      acc314(47)=Qspvak2l5*acc314(20)
      acc314(48)=acc314(29)*Qspvak2l6
      acc314(47)=acc314(48)+acc314(16)+acc314(47)
      acc314(47)=acc314(47)*Qspvak4k1
      acc314(48)=acc314(9)*Qspvak2k7
      acc314(49)=acc314(15)*Qspvak2l6
      acc314(50)=acc314(18)*Qspvak4l5
      acc314(51)=acc314(24)*QspQ
      acc314(52)=acc314(30)*Qspl5
      acc314(53)=acc314(31)*Qspvak2l5
      acc314(54)=acc314(34)*Qspvak4k7
      acc314(55)=acc314(35)*Qspk2
      acc314(56)=acc314(43)*Qspvak4l6
      acc314(46)=acc314(53)+acc314(50)+acc314(49)+acc314(47)+acc314(46)+acc314(&
      &56)+acc314(55)+acc314(54)+acc314(52)+acc314(51)+acc314(12)+acc314(48)
      acc314(46)=Qspe7*acc314(46)
      acc314(47)=acc314(17)*QspQ
      acc314(48)=acc314(26)*Qspvak2l6
      acc314(49)=acc314(33)*Qspl5
      acc314(50)=acc314(37)*Qspk2
      acc314(51)=acc314(39)*Qspvak4l6
      acc314(52)=Qspvak4e7*acc314(40)
      acc314(53)=Qspvak2e7*acc314(41)
      acc314(47)=acc314(53)+acc314(52)+acc314(51)+acc314(50)+acc314(36)+acc314(&
      &49)+acc314(48)+acc314(47)
      acc314(47)=Qspvae7k1*acc314(47)
      acc314(48)=acc314(22)*Qspvak2k1
      acc314(49)=-acc314(38)*Qspvak4k1
      acc314(50)=-acc314(25)*Qspvak2l6
      acc314(51)=acc314(44)*Qspvak4l6
      acc314(48)=acc314(51)+acc314(50)-acc314(14)+acc314(48)+acc314(49)
      acc314(49)=Qspk1+Qspk7
      acc314(48)=acc314(49)*acc314(48)
      acc314(49)=acc314(11)*Qspvak2k1
      acc314(50)=acc314(13)*Qspvak4k1
      acc314(51)=acc314(23)*Qspvak2l6
      acc314(52)=acc314(42)*Qspvak4l6
      acc314(49)=acc314(52)+acc314(51)+acc314(50)+acc314(49)+acc314(10)
      acc314(49)=QspQ*acc314(49)
      acc314(50)=Qspvak4k7*acc314(38)
      acc314(51)=-Qspvak2k7*acc314(22)
      acc314(52)=acc314(27)*Qspvak2l6
      acc314(53)=acc314(45)*Qspvak4l6
      acc314(50)=acc314(53)+acc314(52)+acc314(21)+acc314(51)+acc314(50)
      acc314(50)=Qspvak7k1*acc314(50)
      acc314(51)=acc314(1)*Qspvak4l6
      acc314(52)=acc314(2)*Qspvak2k1
      acc314(53)=acc314(3)*Qspvak4k1
      acc314(54)=acc314(5)*Qspvak2l6
      acc314(55)=acc314(8)*Qspvak2k7
      acc314(56)=acc314(19)*Qspvak4k7
      acc314(57)=acc314(28)*Qspl5
      acc314(58)=acc314(32)*Qspk2
      brack=acc314(6)+acc314(46)+acc314(47)+acc314(48)+acc314(49)+acc314(50)+ac&
      &c314(51)+acc314(52)+acc314(53)+acc314(54)+acc314(55)+acc314(56)+acc314(5&
      &7)+acc314(58)
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
      use p5_usbar_epnebbbarg_abbrevd314h3
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
      use p5_usbar_epnebbbarg_abbrevd314h3
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
end module p5_usbar_epnebbbarg_d314h3l1
