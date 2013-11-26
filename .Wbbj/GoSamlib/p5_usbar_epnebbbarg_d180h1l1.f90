module     p5_usbar_epnebbbarg_d180h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d180h1l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd180h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc180(62)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspe7
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspl5
      complex(ki) :: QspQ
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspe7 = dotproduct(Q,e7)
      Qspk2 = dotproduct(Q,k2)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspl5 = dotproduct(Q,l5)
      QspQ = dotproduct(Q,Q)
      acc180(1)=abb180(12)
      acc180(2)=abb180(13)
      acc180(3)=abb180(14)
      acc180(4)=abb180(15)
      acc180(5)=abb180(16)
      acc180(6)=abb180(17)
      acc180(7)=abb180(18)
      acc180(8)=abb180(19)
      acc180(9)=abb180(20)
      acc180(10)=abb180(21)
      acc180(11)=abb180(22)
      acc180(12)=abb180(23)
      acc180(13)=abb180(24)
      acc180(14)=abb180(25)
      acc180(15)=abb180(26)
      acc180(16)=abb180(27)
      acc180(17)=abb180(28)
      acc180(18)=abb180(29)
      acc180(19)=abb180(30)
      acc180(20)=abb180(31)
      acc180(21)=abb180(32)
      acc180(22)=abb180(33)
      acc180(23)=abb180(34)
      acc180(24)=abb180(35)
      acc180(25)=abb180(36)
      acc180(26)=abb180(37)
      acc180(27)=abb180(38)
      acc180(28)=abb180(39)
      acc180(29)=abb180(40)
      acc180(30)=abb180(41)
      acc180(31)=abb180(42)
      acc180(32)=abb180(43)
      acc180(33)=abb180(44)
      acc180(34)=abb180(46)
      acc180(35)=abb180(47)
      acc180(36)=abb180(48)
      acc180(37)=abb180(49)
      acc180(38)=abb180(50)
      acc180(39)=abb180(51)
      acc180(40)=abb180(52)
      acc180(41)=abb180(53)
      acc180(42)=abb180(55)
      acc180(43)=abb180(56)
      acc180(44)=abb180(57)
      acc180(45)=abb180(59)
      acc180(46)=abb180(63)
      acc180(47)=abb180(64)
      acc180(48)=abb180(66)
      acc180(49)=abb180(71)
      acc180(50)=acc180(7)*Qspvak2l5
      acc180(51)=acc180(12)*Qspe7
      acc180(52)=acc180(25)*Qspk2
      acc180(53)=acc180(28)*Qspval6e7
      acc180(54)=acc180(31)*Qspvae7l5
      acc180(55)=acc180(35)*Qspvae7k2
      acc180(56)=acc180(37)*Qspvak2e7
      acc180(57)=acc180(40)*Qspvak7l5
      acc180(58)=acc180(44)*Qspval6l5
      acc180(59)=acc180(48)*Qspvak2k7
      acc180(60)=acc180(49)*Qspvak2l6
      acc180(50)=acc180(60)+acc180(59)+acc180(58)+acc180(57)+acc180(56)+acc180(&
      &55)+acc180(54)+acc180(53)+acc180(52)+acc180(51)+acc180(11)+acc180(50)
      acc180(50)=Qspvak4k1*acc180(50)
      acc180(51)=acc180(17)*Qspe7
      acc180(52)=acc180(26)*Qspvak2l6
      acc180(53)=acc180(27)*Qspvak7l5
      acc180(54)=acc180(30)*Qspvae7k2
      acc180(55)=acc180(32)*Qspk2
      acc180(56)=acc180(36)*Qspval6e7
      acc180(57)=acc180(39)*Qspvae7l5
      acc180(58)=acc180(43)*Qspvak2e7
      acc180(59)=acc180(45)*Qspval6l5
      acc180(60)=acc180(46)*Qspvak2k7
      acc180(61)=acc180(47)*Qspvak2l5
      acc180(51)=acc180(61)+acc180(60)+acc180(59)+acc180(58)+acc180(57)+acc180(&
      &56)+acc180(55)+acc180(54)+acc180(53)+acc180(52)+acc180(51)+acc180(14)
      acc180(51)=Qspvak2k3*acc180(51)
      acc180(52)=acc180(5)*Qspval6e7
      acc180(53)=acc180(9)*Qspvak2l5
      acc180(54)=acc180(13)*Qspe7
      acc180(55)=acc180(16)*Qspk2
      acc180(56)=acc180(18)*Qspvak2l6
      acc180(57)=acc180(19)*Qspval6l5
      acc180(58)=acc180(20)*Qspvak2k7
      acc180(59)=acc180(33)*Qspvae7k2
      acc180(60)=acc180(34)*Qspvae7l5
      acc180(61)=acc180(38)*Qspvak7l5
      acc180(62)=acc180(42)*Qspvak2e7
      acc180(52)=acc180(62)+acc180(61)+acc180(60)+acc180(59)+acc180(58)+acc180(&
      &57)+acc180(56)+acc180(55)+acc180(54)+acc180(53)+acc180(6)+acc180(52)
      acc180(52)=Qspvak2k1*acc180(52)
      acc180(53)=-acc180(22)*Qspvak2k1
      acc180(54)=-acc180(23)*Qspvak4k1
      acc180(55)=acc180(29)*Qspvak2k3
      acc180(53)=acc180(55)+acc180(54)-acc180(3)+acc180(53)
      acc180(54)=Qspl6+Qspk7
      acc180(53)=acc180(54)*acc180(53)
      acc180(54)=acc180(1)*Qspvae7k2
      acc180(55)=acc180(2)*Qspe7
      acc180(56)=acc180(4)*Qspvak2l5
      acc180(57)=acc180(8)*Qspval6e7
      acc180(58)=acc180(24)*Qspk2
      acc180(59)=Qspvak4l5*acc180(15)
      acc180(60)=Qspl5*acc180(21)
      acc180(61)=QspQ*acc180(41)
      brack=acc180(10)+acc180(50)+acc180(51)+acc180(52)+acc180(53)+acc180(54)+a&
      &cc180(55)+acc180(56)+acc180(57)+acc180(58)+acc180(59)+acc180(60)+acc180(&
      &61)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram180_sign, shift => diagram180_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd180h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d180
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d180 = 0.0_ki
      d180 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d180, ki), aimag(d180), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd180h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d180
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d180 = 0.0_ki
      d180 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d180, ki), aimag(d180), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d180h1l1
