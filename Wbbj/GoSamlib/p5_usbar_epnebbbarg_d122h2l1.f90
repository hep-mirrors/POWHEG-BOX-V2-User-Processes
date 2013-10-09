module     p5_usbar_epnebbbarg_d122h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d122h2l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd122h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc122(63)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspl5
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspl5 = dotproduct(Q,l5)
      acc122(1)=abb122(10)
      acc122(2)=abb122(11)
      acc122(3)=abb122(12)
      acc122(4)=abb122(13)
      acc122(5)=abb122(14)
      acc122(6)=abb122(15)
      acc122(7)=abb122(16)
      acc122(8)=abb122(17)
      acc122(9)=abb122(18)
      acc122(10)=abb122(19)
      acc122(11)=abb122(20)
      acc122(12)=abb122(21)
      acc122(13)=abb122(22)
      acc122(14)=abb122(23)
      acc122(15)=abb122(24)
      acc122(16)=abb122(25)
      acc122(17)=abb122(26)
      acc122(18)=abb122(27)
      acc122(19)=abb122(28)
      acc122(20)=abb122(29)
      acc122(21)=abb122(30)
      acc122(22)=abb122(31)
      acc122(23)=abb122(32)
      acc122(24)=abb122(33)
      acc122(25)=abb122(34)
      acc122(26)=abb122(35)
      acc122(27)=abb122(36)
      acc122(28)=abb122(37)
      acc122(29)=abb122(38)
      acc122(30)=abb122(39)
      acc122(31)=abb122(40)
      acc122(32)=abb122(41)
      acc122(33)=abb122(42)
      acc122(34)=abb122(43)
      acc122(35)=abb122(44)
      acc122(36)=abb122(45)
      acc122(37)=abb122(46)
      acc122(38)=abb122(56)
      acc122(39)=abb122(57)
      acc122(40)=abb122(58)
      acc122(41)=abb122(59)
      acc122(42)=abb122(64)
      acc122(43)=abb122(67)
      acc122(44)=abb122(69)
      acc122(45)=abb122(72)
      acc122(46)=abb122(73)
      acc122(47)=abb122(75)
      acc122(48)=abb122(87)
      acc122(49)=abb122(88)
      acc122(50)=abb122(96)
      acc122(51)=Qspk7+Qspl6
      acc122(52)=acc122(12)*acc122(51)
      acc122(53)=-acc122(36)*Qspvak2k7
      acc122(54)=acc122(20)*Qspvak2l6
      acc122(55)=acc122(16)*Qspvak4k7
      acc122(56)=-acc122(10)*Qspvak4l6
      acc122(57)=-acc122(7)*Qspvak4e7
      acc122(58)=Qspe7*acc122(5)
      acc122(59)=Qspvak2e7*acc122(1)
      acc122(60)=Qspvae7l6*acc122(4)
      acc122(61)=Qspvak4k2*acc122(11)
      acc122(62)=Qspk2*acc122(8)
      acc122(52)=acc122(62)+acc122(61)+acc122(60)+acc122(59)+acc122(58)+acc122(&
      &57)+acc122(56)+acc122(55)+acc122(54)+acc122(3)+acc122(53)+acc122(52)
      acc122(52)=Qspval5k1*acc122(52)
      acc122(53)=Qspval6k2*acc122(33)
      acc122(54)=Qspvak7k2*acc122(37)
      acc122(55)=Qspvae7k2*acc122(32)
      acc122(56)=Qspval5e7*acc122(9)
      acc122(57)=acc122(36)*Qspval5k7
      acc122(58)=-acc122(20)*Qspval5l6
      acc122(59)=Qspval5k2*acc122(15)
      acc122(60)=Qspe7*acc122(24)
      acc122(61)=Qspvak2e7*acc122(34)
      acc122(62)=Qspvae7l6*acc122(31)
      acc122(53)=acc122(62)+acc122(61)+acc122(60)+acc122(59)+acc122(58)+acc122(&
      &57)+acc122(56)+acc122(55)+acc122(54)+acc122(14)+acc122(53)
      acc122(53)=Qspvak2k1*acc122(53)
      acc122(54)=acc122(29)*Qspval6k2
      acc122(55)=acc122(27)*Qspvak7k2
      acc122(56)=-acc122(23)*Qspvae7k2
      acc122(57)=-acc122(16)*Qspval5k7
      acc122(58)=acc122(10)*Qspval5l6
      acc122(59)=acc122(7)*Qspval5e7
      acc122(60)=-Qspval5k2*acc122(11)
      acc122(61)=Qspe7*acc122(26)
      acc122(62)=Qspvak2e7*acc122(35)
      acc122(63)=Qspvae7l6*acc122(6)
      acc122(54)=acc122(63)+acc122(62)+acc122(61)+acc122(60)+acc122(59)+acc122(&
      &58)+acc122(57)+acc122(56)+acc122(55)+acc122(25)+acc122(54)
      acc122(54)=Qspvak4k1*acc122(54)
      acc122(55)=acc122(45)*acc122(51)
      acc122(56)=Qspval6k1*acc122(43)
      acc122(57)=Qspvak7k1*acc122(50)
      acc122(58)=Qspvae7k1*acc122(49)
      acc122(59)=Qspe7*acc122(41)
      acc122(60)=Qspvak2e7*acc122(39)
      acc122(61)=Qspvae7l6*acc122(44)
      acc122(62)=Qspvak4k2*acc122(13)
      acc122(63)=Qspk2*acc122(40)
      acc122(55)=acc122(63)+acc122(62)+acc122(61)+acc122(60)+acc122(59)+acc122(&
      &58)+acc122(57)+acc122(38)+acc122(56)+acc122(55)
      acc122(55)=Qspk2*acc122(55)
      acc122(56)=acc122(19)*acc122(51)
      acc122(57)=-acc122(29)*Qspval6k1
      acc122(58)=-acc122(27)*Qspvak7k1
      acc122(59)=acc122(23)*Qspvae7k1
      acc122(60)=Qspe7*acc122(18)
      acc122(61)=Qspvak2e7*acc122(22)
      acc122(62)=Qspvae7l6*acc122(21)
      acc122(56)=acc122(62)+acc122(61)+acc122(60)+acc122(59)+acc122(58)+acc122(&
      &17)+acc122(57)+acc122(56)
      acc122(56)=Qspvak4k2*acc122(56)
      acc122(51)=acc122(48)*acc122(51)
      acc122(57)=acc122(28)*Qspl5
      acc122(58)=Qspval5k2*acc122(2)
      acc122(59)=Qspe7*acc122(42)
      acc122(60)=Qspvak2e7*acc122(47)
      acc122(61)=Qspvae7l6*acc122(46)
      brack=acc122(30)+acc122(51)+acc122(52)+acc122(53)+acc122(54)+acc122(55)+a&
      &cc122(56)+acc122(57)+acc122(58)+acc122(59)+acc122(60)+acc122(61)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram122_sign, shift => diagram122_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd122h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d122
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d122 = 0.0_ki
      d122 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d122, ki), aimag(d122), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd122h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d122
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d122 = 0.0_ki
      d122 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d122, ki), aimag(d122), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d122h2l1
