module     p0_dbaru_epnebbbarg_d306h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d306h1l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd306h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc306(56)
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspval6k7
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvak4e7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk7
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvak4e7 = dotproduct(Q,spvak4e7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk7 = dotproduct(Q,k7)
      acc306(1)=abb306(8)
      acc306(2)=abb306(9)
      acc306(3)=abb306(10)
      acc306(4)=abb306(11)
      acc306(5)=abb306(12)
      acc306(6)=abb306(13)
      acc306(7)=abb306(14)
      acc306(8)=abb306(15)
      acc306(9)=abb306(16)
      acc306(10)=abb306(17)
      acc306(11)=abb306(18)
      acc306(12)=abb306(19)
      acc306(13)=abb306(20)
      acc306(14)=abb306(21)
      acc306(15)=abb306(22)
      acc306(16)=abb306(23)
      acc306(17)=abb306(24)
      acc306(18)=abb306(25)
      acc306(19)=abb306(26)
      acc306(20)=abb306(27)
      acc306(21)=abb306(28)
      acc306(22)=abb306(29)
      acc306(23)=abb306(30)
      acc306(24)=abb306(31)
      acc306(25)=abb306(32)
      acc306(26)=abb306(33)
      acc306(27)=abb306(34)
      acc306(28)=abb306(35)
      acc306(29)=abb306(36)
      acc306(30)=abb306(37)
      acc306(31)=abb306(38)
      acc306(32)=abb306(41)
      acc306(33)=abb306(42)
      acc306(34)=abb306(43)
      acc306(35)=abb306(44)
      acc306(36)=abb306(48)
      acc306(37)=abb306(53)
      acc306(38)=abb306(55)
      acc306(39)=abb306(56)
      acc306(40)=abb306(59)
      acc306(41)=abb306(61)
      acc306(42)=abb306(63)
      acc306(43)=abb306(65)
      acc306(44)=acc306(2)*Qspvak4l5
      acc306(45)=acc306(1)*Qspvak1l5
      acc306(44)=acc306(45)+acc306(37)+acc306(44)
      acc306(44)=Qspval6k2*acc306(44)
      acc306(45)=-acc306(1)*Qspval6l5
      acc306(46)=Qspk2*acc306(12)
      acc306(45)=acc306(46)+acc306(8)+acc306(45)
      acc306(45)=Qspvak1k2*acc306(45)
      acc306(46)=-acc306(2)*Qspval6l5
      acc306(47)=Qspk2*acc306(13)
      acc306(46)=acc306(47)+acc306(11)+acc306(46)
      acc306(46)=Qspvak4k2*acc306(46)
      acc306(47)=Qspl5*acc306(39)
      acc306(48)=Qspvak1k7*acc306(20)
      acc306(49)=Qspvak4k7*acc306(21)
      acc306(50)=Qspval6k7*acc306(34)
      acc306(51)=QspQ*acc306(31)
      acc306(52)=Qspk2*acc306(18)
      acc306(44)=acc306(46)+acc306(45)+acc306(52)+acc306(44)+acc306(51)+acc306(&
      &50)+acc306(49)+acc306(48)+acc306(35)+acc306(47)
      acc306(44)=Qspe7*acc306(44)
      acc306(45)=acc306(40)*Qspvak1e7
      acc306(46)=acc306(38)*Qspvak4e7
      acc306(47)=acc306(30)*Qspval6e7
      acc306(48)=Qspl5*acc306(27)
      acc306(49)=QspQ*acc306(5)
      acc306(50)=Qspk2*acc306(4)
      acc306(51)=Qspvak1k2*acc306(25)
      acc306(52)=Qspvak4k2*acc306(7)
      acc306(45)=acc306(52)+acc306(51)+acc306(50)+acc306(49)+acc306(48)+acc306(&
      &9)+acc306(47)+acc306(45)+acc306(46)
      acc306(45)=Qspvae7k2*acc306(45)
      acc306(46)=acc306(42)*Qspval6k7
      acc306(47)=-acc306(33)*Qspvak4k7
      acc306(48)=-acc306(23)*Qspvak1k7
      acc306(46)=acc306(48)+acc306(47)+acc306(29)+acc306(46)
      acc306(46)=Qspvak7k2*acc306(46)
      acc306(47)=Qspk2+Qspk7
      acc306(48)=acc306(23)*acc306(47)
      acc306(49)=QspQ*acc306(16)
      acc306(50)=Qspvak7k2*acc306(26)
      acc306(48)=acc306(50)+acc306(49)+acc306(3)+acc306(48)
      acc306(48)=Qspvak1k2*acc306(48)
      acc306(47)=acc306(33)*acc306(47)
      acc306(49)=QspQ*acc306(32)
      acc306(50)=Qspvak7k2*acc306(24)
      acc306(47)=acc306(50)+acc306(49)+acc306(22)+acc306(47)
      acc306(47)=Qspvak4k2*acc306(47)
      acc306(49)=-Qspk7*acc306(42)
      acc306(50)=QspQ*acc306(41)
      acc306(49)=acc306(50)+acc306(43)+acc306(49)
      acc306(49)=Qspval6k2*acc306(49)
      acc306(50)=Qspl5*acc306(19)
      acc306(51)=Qspvak1k7*acc306(15)
      acc306(52)=Qspvak4k7*acc306(14)
      acc306(53)=Qspval6k7*acc306(28)
      acc306(54)=Qspk7*acc306(36)
      acc306(55)=QspQ*acc306(17)
      acc306(56)=-Qspval6k2*acc306(42)
      acc306(56)=acc306(6)+acc306(56)
      acc306(56)=Qspk2*acc306(56)
      brack=acc306(10)+acc306(44)+acc306(45)+acc306(46)+acc306(47)+acc306(48)+a&
      &cc306(49)+acc306(50)+acc306(51)+acc306(52)+acc306(53)+acc306(54)+acc306(&
      &55)+acc306(56)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram306_sign, shift => diagram306_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd306h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d306
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d306 = 0.0_ki
      d306 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d306, ki), aimag(d306), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd306h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d306
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d306 = 0.0_ki
      d306 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d306, ki), aimag(d306), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d306h1l1
