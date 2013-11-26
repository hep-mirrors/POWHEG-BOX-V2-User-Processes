module     p5_usbar_epnebbbarg_d122h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d122h1l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd122h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc122(55)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspk2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspl5
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspk2 = dotproduct(Q,k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspl5 = dotproduct(Q,l5)
      acc122(1)=abb122(10)
      acc122(2)=abb122(11)
      acc122(3)=abb122(12)
      acc122(4)=abb122(13)
      acc122(5)=abb122(14)
      acc122(6)=abb122(15)
      acc122(7)=abb122(19)
      acc122(8)=abb122(22)
      acc122(9)=abb122(30)
      acc122(10)=abb122(31)
      acc122(11)=abb122(35)
      acc122(12)=abb122(44)
      acc122(13)=abb122(51)
      acc122(14)=abb122(55)
      acc122(15)=abb122(58)
      acc122(16)=abb122(60)
      acc122(17)=abb122(61)
      acc122(18)=abb122(65)
      acc122(19)=abb122(68)
      acc122(20)=abb122(69)
      acc122(21)=abb122(74)
      acc122(22)=abb122(75)
      acc122(23)=abb122(77)
      acc122(24)=abb122(78)
      acc122(25)=abb122(80)
      acc122(26)=abb122(83)
      acc122(27)=abb122(87)
      acc122(28)=abb122(89)
      acc122(29)=abb122(92)
      acc122(30)=abb122(94)
      acc122(31)=abb122(95)
      acc122(32)=abb122(96)
      acc122(33)=abb122(97)
      acc122(34)=abb122(98)
      acc122(35)=abb122(99)
      acc122(36)=abb122(100)
      acc122(37)=abb122(101)
      acc122(38)=abb122(102)
      acc122(39)=abb122(103)
      acc122(40)=abb122(105)
      acc122(41)=abb122(107)
      acc122(42)=Qspk7+Qspl6
      acc122(43)=-acc122(4)*acc122(42)
      acc122(44)=-acc122(41)*Qspvak7l5
      acc122(45)=acc122(40)*Qspval6l5
      acc122(46)=acc122(36)*Qspvak4l6
      acc122(47)=-acc122(32)*Qspvak4k7
      acc122(48)=-acc122(30)*Qspvae7l5
      acc122(49)=-acc122(24)*Qspvak4e7
      acc122(50)=Qspk2*acc122(5)
      acc122(51)=Qspe7*acc122(3)
      acc122(52)=Qspvae7k2*acc122(2)
      acc122(53)=Qspval6e7*acc122(6)
      acc122(54)=-Qspvak4l5*acc122(31)
      acc122(43)=acc122(54)+acc122(53)+acc122(52)+acc122(51)+acc122(50)+acc122(&
      &49)+acc122(48)+acc122(47)+acc122(46)+acc122(45)+acc122(1)+acc122(44)+acc&
      &122(43)
      acc122(43)=Qspvak2k1*acc122(43)
      acc122(44)=acc122(22)*acc122(42)
      acc122(45)=-acc122(39)*Qspvak7l5
      acc122(46)=acc122(38)*Qspval6l5
      acc122(47)=acc122(37)*Qspvae7l5
      acc122(48)=-acc122(36)*Qspvak2l6
      acc122(49)=acc122(32)*Qspvak2k7
      acc122(50)=acc122(24)*Qspvak2e7
      acc122(51)=Qspk2*acc122(17)
      acc122(52)=Qspe7*acc122(15)
      acc122(53)=Qspvae7k2*acc122(21)
      acc122(54)=Qspval6e7*acc122(7)
      acc122(55)=Qspvak2l5*acc122(31)
      acc122(44)=acc122(55)+acc122(54)+acc122(53)+acc122(52)+acc122(51)+acc122(&
      &50)+acc122(49)+acc122(48)+acc122(47)+acc122(46)+acc122(16)+acc122(45)+ac&
      &c122(44)
      acc122(44)=Qspvak4k1*acc122(44)
      acc122(45)=-acc122(20)*acc122(42)
      acc122(46)=acc122(41)*Qspvak7k1
      acc122(47)=-acc122(40)*Qspval6k1
      acc122(48)=acc122(30)*Qspvae7k1
      acc122(49)=Qspk2*acc122(27)
      acc122(50)=Qspe7*acc122(11)
      acc122(51)=Qspvae7k2*acc122(28)
      acc122(52)=Qspval6e7*acc122(19)
      acc122(45)=acc122(52)+acc122(51)+acc122(50)+acc122(49)+acc122(48)+acc122(&
      &47)+acc122(9)+acc122(46)+acc122(45)
      acc122(45)=Qspvak2l5*acc122(45)
      acc122(46)=-acc122(33)*acc122(42)
      acc122(47)=acc122(39)*Qspvak7k1
      acc122(48)=-acc122(38)*Qspval6k1
      acc122(49)=-acc122(37)*Qspvae7k1
      acc122(50)=Qspk2*acc122(35)
      acc122(51)=Qspe7*acc122(26)
      acc122(52)=Qspvae7k2*acc122(25)
      acc122(53)=Qspval6e7*acc122(34)
      acc122(46)=acc122(53)+acc122(52)+acc122(51)+acc122(50)+acc122(49)+acc122(&
      &48)+acc122(23)+acc122(47)+acc122(46)
      acc122(46)=Qspvak4l5*acc122(46)
      acc122(42)=-acc122(29)*acc122(42)
      acc122(47)=acc122(13)*Qspl5
      acc122(48)=Qspk2*acc122(8)
      acc122(49)=Qspe7*acc122(12)
      acc122(50)=Qspvae7k2*acc122(18)
      acc122(51)=Qspval6e7*acc122(14)
      brack=acc122(10)+acc122(42)+acc122(43)+acc122(44)+acc122(45)+acc122(46)+a&
      &cc122(47)+acc122(48)+acc122(49)+acc122(50)+acc122(51)
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
      use p5_usbar_epnebbbarg_abbrevd122h1
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
      use p5_usbar_epnebbbarg_abbrevd122h1
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
end module p5_usbar_epnebbbarg_d122h1l1
