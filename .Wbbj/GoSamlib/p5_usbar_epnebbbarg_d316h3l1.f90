module     p5_usbar_epnebbbarg_d316h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d316h3l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd316h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc316(57)
      complex(ki) :: Qspk7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvae7l6
      Qspk7 = dotproduct(Q,k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspk2 = dotproduct(Q,k2)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      acc316(1)=abb316(8)
      acc316(2)=abb316(9)
      acc316(3)=abb316(10)
      acc316(4)=abb316(11)
      acc316(5)=abb316(12)
      acc316(6)=abb316(13)
      acc316(7)=abb316(14)
      acc316(8)=abb316(15)
      acc316(9)=abb316(16)
      acc316(10)=abb316(17)
      acc316(11)=abb316(18)
      acc316(12)=abb316(19)
      acc316(13)=abb316(21)
      acc316(14)=abb316(22)
      acc316(15)=abb316(23)
      acc316(16)=abb316(24)
      acc316(17)=abb316(27)
      acc316(18)=abb316(29)
      acc316(19)=abb316(30)
      acc316(20)=abb316(33)
      acc316(21)=abb316(34)
      acc316(22)=abb316(35)
      acc316(23)=abb316(36)
      acc316(24)=abb316(37)
      acc316(25)=abb316(38)
      acc316(26)=abb316(39)
      acc316(27)=abb316(42)
      acc316(28)=abb316(47)
      acc316(29)=abb316(48)
      acc316(30)=abb316(52)
      acc316(31)=abb316(53)
      acc316(32)=abb316(55)
      acc316(33)=abb316(56)
      acc316(34)=abb316(57)
      acc316(35)=abb316(58)
      acc316(36)=abb316(63)
      acc316(37)=abb316(65)
      acc316(38)=abb316(66)
      acc316(39)=abb316(71)
      acc316(40)=abb316(73)
      acc316(41)=abb316(74)
      acc316(42)=abb316(75)
      acc316(43)=Qspk7+Qspk1
      acc316(44)=acc316(33)*acc316(43)
      acc316(45)=Qspvak2l5*acc316(19)
      acc316(45)=acc316(1)+acc316(45)
      acc316(45)=Qspvak4k1*acc316(45)
      acc316(46)=Qspk2*acc316(22)
      acc316(47)=Qspl6*acc316(35)
      acc316(48)=Qspvak2l5*acc316(11)
      acc316(48)=acc316(7)+acc316(48)
      acc316(48)=Qspvak2k1*acc316(48)
      acc316(49)=Qspvak2l6*acc316(8)
      acc316(50)=Qspvak2k7*acc316(17)
      acc316(51)=Qspvak4l6*acc316(21)
      acc316(52)=Qspvak7l6*acc316(42)
      acc316(53)=QspQ*acc316(13)
      acc316(44)=acc316(53)+acc316(52)+acc316(51)+acc316(50)+acc316(49)+acc316(&
      &48)+acc316(47)+acc316(46)+acc316(6)+acc316(45)+acc316(44)
      acc316(44)=Qspe7*acc316(44)
      acc316(45)=Qspk2*acc316(39)
      acc316(46)=Qspl6*acc316(32)
      acc316(47)=Qspvak2l6*acc316(9)
      acc316(48)=Qspvak2k7*acc316(14)
      acc316(49)=Qspvak4l6*acc316(26)
      acc316(50)=-Qspvak7l6*acc316(16)
      acc316(51)=QspQ*acc316(10)
      acc316(52)=Qspk7*acc316(15)
      acc316(53)=Qspvak2e7*acc316(40)
      acc316(45)=acc316(53)+acc316(52)+acc316(51)+acc316(50)+acc316(49)+acc316(&
      &48)+acc316(47)+acc316(46)+acc316(30)+acc316(45)
      acc316(45)=Qspvae7k1*acc316(45)
      acc316(46)=-acc316(31)*acc316(43)
      acc316(47)=-Qspvak7k1*acc316(16)
      acc316(48)=-QspQ*acc316(24)
      acc316(46)=acc316(48)+acc316(27)+acc316(47)+acc316(46)
      acc316(46)=Qspvae7l6*acc316(46)
      acc316(43)=-acc316(34)*acc316(43)
      acc316(47)=Qspvak7k1*acc316(20)
      acc316(48)=-QspQ*acc316(37)
      acc316(43)=acc316(48)+acc316(38)+acc316(47)+acc316(43)
      acc316(43)=Qspvak2e7*acc316(43)
      acc316(47)=Qspk2*acc316(28)
      acc316(48)=Qspl6*acc316(25)
      acc316(49)=-Qspvak2k1*acc316(36)
      acc316(50)=Qspvak2l6*acc316(5)
      acc316(51)=Qspvak2k7*acc316(12)
      acc316(52)=Qspvak4l6*acc316(3)
      acc316(53)=Qspvak7k1*acc316(4)
      acc316(54)=Qspvak7l6*acc316(41)
      acc316(55)=Qspk1*acc316(29)
      acc316(56)=QspQ*acc316(2)
      acc316(57)=Qspk7*acc316(18)
      brack=acc316(23)+acc316(43)+acc316(44)+acc316(45)+acc316(46)+acc316(47)+a&
      &cc316(48)+acc316(49)+acc316(50)+acc316(51)+acc316(52)+acc316(53)+acc316(&
      &54)+acc316(55)+acc316(56)+acc316(57)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram316_sign, shift => diagram316_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd316h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d316
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d316 = 0.0_ki
      d316 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d316, ki), aimag(d316), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd316h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d316
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d316 = 0.0_ki
      d316 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d316, ki), aimag(d316), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d316h3l1
