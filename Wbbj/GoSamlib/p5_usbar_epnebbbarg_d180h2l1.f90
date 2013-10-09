module     p5_usbar_epnebbbarg_d180h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d180h2l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd180h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc180(65)
      complex(ki) :: Qspe7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspl5
      complex(ki) :: QspQ
      Qspe7 = dotproduct(Q,e7)
      Qspk2 = dotproduct(Q,k2)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
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
      acc180(34)=abb180(45)
      acc180(35)=abb180(46)
      acc180(36)=abb180(47)
      acc180(37)=abb180(48)
      acc180(38)=abb180(49)
      acc180(39)=abb180(50)
      acc180(40)=abb180(51)
      acc180(41)=abb180(53)
      acc180(42)=abb180(54)
      acc180(43)=abb180(56)
      acc180(44)=abb180(58)
      acc180(45)=abb180(59)
      acc180(46)=abb180(60)
      acc180(47)=abb180(61)
      acc180(48)=abb180(62)
      acc180(49)=abb180(63)
      acc180(50)=abb180(64)
      acc180(51)=abb180(65)
      acc180(52)=acc180(21)*Qspe7
      acc180(53)=acc180(27)*Qspk2
      acc180(54)=acc180(28)*Qspvae7l6
      acc180(55)=acc180(29)*Qspvak2e7
      acc180(56)=acc180(31)*Qspval5e7
      acc180(57)=acc180(33)*Qspvae7k2
      acc180(58)=acc180(36)*Qspvak7k2
      acc180(59)=acc180(37)*Qspval6k2
      acc180(60)=acc180(40)*Qspval5k7
      acc180(61)=acc180(41)*Qspval5l6
      acc180(62)=acc180(42)*Qspval5k2
      acc180(52)=acc180(62)+acc180(61)+acc180(60)+acc180(59)+acc180(58)+acc180(&
      &57)+acc180(56)+acc180(55)+acc180(54)+acc180(53)+acc180(52)+acc180(17)
      acc180(52)=Qspvak4k1*acc180(52)
      acc180(53)=acc180(10)*Qspvak2e7
      acc180(54)=acc180(22)*Qspe7
      acc180(55)=acc180(38)*Qspval5e7
      acc180(56)=acc180(44)*Qspvae7l6
      acc180(57)=acc180(45)*Qspvae7k2
      acc180(58)=acc180(46)*Qspk2
      acc180(59)=acc180(47)*Qspvak7k2
      acc180(60)=acc180(48)*Qspval6k2
      acc180(61)=acc180(49)*Qspval5k7
      acc180(62)=acc180(50)*Qspval5l6
      acc180(63)=acc180(51)*Qspval5k2
      acc180(53)=acc180(63)+acc180(62)+acc180(61)+acc180(60)+acc180(59)+acc180(&
      &58)+acc180(57)+acc180(56)+acc180(55)+acc180(30)+acc180(54)+acc180(53)
      acc180(53)=Qspvak2k3*acc180(53)
      acc180(54)=acc180(6)*Qspe7
      acc180(55)=acc180(11)*Qspvae7k2
      acc180(56)=acc180(12)*Qspval5l6
      acc180(57)=acc180(15)*Qspval5k2
      acc180(58)=acc180(23)*Qspk2
      acc180(59)=acc180(24)*Qspvae7l6
      acc180(60)=acc180(25)*Qspval5e7
      acc180(61)=acc180(32)*Qspvak2e7
      acc180(62)=acc180(34)*Qspvak7k2
      acc180(63)=acc180(35)*Qspval6k2
      acc180(64)=acc180(39)*Qspval5k7
      acc180(54)=acc180(64)+acc180(63)+acc180(62)+acc180(61)+acc180(60)+acc180(&
      &59)+acc180(58)+acc180(16)+acc180(57)+acc180(56)+acc180(55)+acc180(54)
      acc180(54)=Qspvak2k1*acc180(54)
      acc180(55)=-acc180(19)*Qspvak2k1
      acc180(56)=acc180(26)*Qspvak4k1
      acc180(57)=acc180(43)*Qspvak2k3
      acc180(55)=acc180(57)+acc180(56)-acc180(7)+acc180(55)
      acc180(56)=Qspl6+Qspk7
      acc180(55)=acc180(56)*acc180(55)
      acc180(56)=acc180(2)*Qspe7
      acc180(57)=acc180(3)*Qspk2
      acc180(58)=acc180(4)*Qspvae7l6
      acc180(59)=acc180(13)*Qspvak2e7
      acc180(60)=acc180(20)*Qspval5k2
      acc180(61)=Qspval5k3*acc180(8)
      acc180(62)=Qspval5k1*acc180(1)
      acc180(63)=Qspvak4k2*acc180(14)
      acc180(64)=Qspl5*acc180(9)
      acc180(65)=QspQ*acc180(5)
      brack=acc180(18)+acc180(52)+acc180(53)+acc180(54)+acc180(55)+acc180(56)+a&
      &cc180(57)+acc180(58)+acc180(59)+acc180(60)+acc180(61)+acc180(62)+acc180(&
      &63)+acc180(64)+acc180(65)
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
      use p5_usbar_epnebbbarg_abbrevd180h2
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
      use p5_usbar_epnebbbarg_abbrevd180h2
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
end module p5_usbar_epnebbbarg_d180h2l1
