module     p5_usbar_epnebbbarg_d312h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d312h3l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd312h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc312(68)
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak7k1
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspk2 = dotproduct(Q,k2)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      acc312(1)=abb312(9)
      acc312(2)=abb312(10)
      acc312(3)=abb312(11)
      acc312(4)=abb312(12)
      acc312(5)=abb312(13)
      acc312(6)=abb312(14)
      acc312(7)=abb312(15)
      acc312(8)=abb312(16)
      acc312(9)=abb312(17)
      acc312(10)=abb312(18)
      acc312(11)=abb312(19)
      acc312(12)=abb312(20)
      acc312(13)=abb312(23)
      acc312(14)=abb312(24)
      acc312(15)=abb312(26)
      acc312(16)=abb312(28)
      acc312(17)=abb312(30)
      acc312(18)=abb312(32)
      acc312(19)=abb312(39)
      acc312(20)=abb312(40)
      acc312(21)=abb312(41)
      acc312(22)=abb312(42)
      acc312(23)=abb312(43)
      acc312(24)=abb312(47)
      acc312(25)=abb312(48)
      acc312(26)=abb312(52)
      acc312(27)=abb312(54)
      acc312(28)=abb312(55)
      acc312(29)=abb312(56)
      acc312(30)=abb312(58)
      acc312(31)=abb312(60)
      acc312(32)=abb312(62)
      acc312(33)=abb312(63)
      acc312(34)=abb312(64)
      acc312(35)=abb312(67)
      acc312(36)=abb312(72)
      acc312(37)=abb312(73)
      acc312(38)=abb312(75)
      acc312(39)=abb312(77)
      acc312(40)=abb312(78)
      acc312(41)=abb312(79)
      acc312(42)=abb312(80)
      acc312(43)=abb312(85)
      acc312(44)=abb312(87)
      acc312(45)=abb312(88)
      acc312(46)=abb312(90)
      acc312(47)=abb312(103)
      acc312(48)=abb312(106)
      acc312(49)=abb312(108)
      acc312(50)=abb312(112)
      acc312(51)=QspQ-Qspl6
      acc312(51)=acc312(50)*acc312(51)
      acc312(52)=Qspval6k1*acc312(36)
      acc312(53)=Qspk1*acc312(49)
      acc312(54)=Qspvak4l6*acc312(41)
      acc312(55)=Qspvak2l6*acc312(17)
      acc312(56)=Qspvak2l5*acc312(47)
      acc312(56)=acc312(38)+acc312(56)
      acc312(56)=Qspvak4k1*acc312(56)
      acc312(57)=Qspvak2l5*acc312(7)
      acc312(57)=acc312(1)+acc312(57)
      acc312(57)=Qspvak2k1*acc312(57)
      acc312(51)=acc312(57)+acc312(56)+acc312(55)+acc312(54)+acc312(53)+acc312(&
      &14)+acc312(52)+acc312(51)
      acc312(51)=Qspe7*acc312(51)
      acc312(52)=Qspl6-Qspk1
      acc312(53)=-acc312(2)*acc312(52)
      acc312(54)=Qspvak2e7*acc312(9)
      acc312(55)=Qspk2*acc312(5)
      acc312(56)=Qspvae7k1*acc312(6)
      acc312(57)=QspQ*acc312(8)
      acc312(58)=Qspvak2l5*acc312(10)
      acc312(53)=acc312(58)+acc312(57)+acc312(56)+acc312(55)+acc312(4)+acc312(5&
      &4)+acc312(53)
      acc312(53)=Qspvak2k1*acc312(53)
      acc312(54)=acc312(22)*acc312(52)
      acc312(55)=Qspk2*acc312(19)
      acc312(56)=Qspvae7k1*acc312(24)
      acc312(57)=QspQ*acc312(29)
      acc312(54)=acc312(57)+acc312(56)+acc312(55)+acc312(25)+acc312(54)
      acc312(54)=Qspvak2l6*acc312(54)
      acc312(55)=-acc312(45)*acc312(52)
      acc312(56)=Qspk2*acc312(40)
      acc312(57)=QspQ*acc312(46)
      acc312(58)=Qspvak2l5*acc312(32)
      acc312(55)=acc312(58)+acc312(57)+acc312(56)+acc312(37)+acc312(55)
      acc312(55)=Qspvak4k1*acc312(55)
      acc312(52)=acc312(42)*acc312(52)
      acc312(56)=Qspk2*acc312(43)
      acc312(52)=acc312(56)+acc312(39)+acc312(52)
      acc312(52)=Qspvak4l6*acc312(52)
      acc312(56)=Qspvak2k7*acc312(23)
      acc312(57)=Qspk2*acc312(28)
      acc312(56)=acc312(57)+acc312(27)+acc312(56)
      acc312(56)=Qspvae7k1*acc312(56)
      acc312(57)=Qspvae7k1*acc312(30)
      acc312(58)=QspQ*acc312(18)
      acc312(57)=acc312(58)+acc312(13)+acc312(57)
      acc312(57)=Qspvak2l5*acc312(57)
      acc312(58)=acc312(31)*Qspvak7l6
      acc312(59)=acc312(15)*Qspvae7l6
      acc312(60)=acc312(12)*Qspvak1l6
      acc312(61)=Qspvak2k7*acc312(21)
      acc312(62)=Qspval6k1*acc312(33)
      acc312(63)=Qspvak7k1*acc312(35)
      acc312(64)=Qspvak7k1*acc312(34)
      acc312(64)=acc312(26)+acc312(64)
      acc312(64)=Qspvak2e7*acc312(64)
      acc312(65)=Qspk1*acc312(20)
      acc312(66)=Qspk2*acc312(16)
      acc312(67)=Qspl6*acc312(48)
      acc312(68)=Qspvak4l6*acc312(44)
      acc312(68)=acc312(3)+acc312(68)
      acc312(68)=QspQ*acc312(68)
      brack=acc312(11)+acc312(51)+acc312(52)+acc312(53)+acc312(54)+acc312(55)+a&
      &cc312(56)+acc312(57)+acc312(58)+acc312(59)+acc312(60)+acc312(61)+acc312(&
      &62)+acc312(63)+acc312(64)+acc312(65)+acc312(66)+acc312(67)+acc312(68)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram312_sign, shift => diagram312_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd312h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d312
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d312 = 0.0_ki
      d312 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d312, ki), aimag(d312), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd312h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d312
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d312 = 0.0_ki
      d312 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d312, ki), aimag(d312), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d312h3l1
