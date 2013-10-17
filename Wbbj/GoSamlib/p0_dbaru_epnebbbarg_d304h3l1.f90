module     p0_dbaru_epnebbbarg_d304h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity3d304h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd304h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc304(63)
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvae7k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak7k2
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspl6 = dotproduct(Q,l6)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc304(1)=abb304(9)
      acc304(2)=abb304(10)
      acc304(3)=abb304(11)
      acc304(4)=abb304(12)
      acc304(5)=abb304(13)
      acc304(6)=abb304(14)
      acc304(7)=abb304(15)
      acc304(8)=abb304(16)
      acc304(9)=abb304(17)
      acc304(10)=abb304(18)
      acc304(11)=abb304(19)
      acc304(12)=abb304(20)
      acc304(13)=abb304(21)
      acc304(14)=abb304(22)
      acc304(15)=abb304(23)
      acc304(16)=abb304(24)
      acc304(17)=abb304(25)
      acc304(18)=abb304(26)
      acc304(19)=abb304(27)
      acc304(20)=abb304(28)
      acc304(21)=abb304(29)
      acc304(22)=abb304(30)
      acc304(23)=abb304(31)
      acc304(24)=abb304(32)
      acc304(25)=abb304(33)
      acc304(26)=abb304(34)
      acc304(27)=abb304(35)
      acc304(28)=abb304(36)
      acc304(29)=abb304(37)
      acc304(30)=abb304(38)
      acc304(31)=abb304(39)
      acc304(32)=abb304(40)
      acc304(33)=abb304(41)
      acc304(34)=abb304(42)
      acc304(35)=abb304(43)
      acc304(36)=abb304(44)
      acc304(37)=abb304(45)
      acc304(38)=abb304(46)
      acc304(39)=abb304(47)
      acc304(40)=abb304(48)
      acc304(41)=abb304(49)
      acc304(42)=abb304(51)
      acc304(43)=abb304(52)
      acc304(44)=abb304(53)
      acc304(45)=abb304(56)
      acc304(46)=abb304(80)
      acc304(47)=Qspvak2e7*acc304(8)
      acc304(48)=Qspl6*acc304(23)
      acc304(49)=Qspvae7k2*acc304(31)
      acc304(50)=QspQ*acc304(16)
      acc304(51)=Qspvak1k2*acc304(11)
      acc304(52)=Qspvak4k2*acc304(28)
      acc304(53)=Qspk2*acc304(21)
      acc304(47)=acc304(53)+acc304(52)+acc304(51)+acc304(50)+acc304(49)+acc304(&
      &48)+acc304(9)+acc304(47)
      acc304(47)=Qspk2*acc304(47)
      acc304(48)=-QspQ+Qspl6
      acc304(48)=acc304(46)*acc304(48)
      acc304(49)=Qspvak2l5*acc304(27)
      acc304(49)=acc304(49)+acc304(34)
      acc304(49)=Qspvak1k2*acc304(49)
      acc304(50)=Qspvak1l6*acc304(36)
      acc304(51)=Qspvak4l6*acc304(40)
      acc304(52)=Qspval6k2*acc304(19)
      acc304(53)=Qspvak2l5*acc304(13)
      acc304(53)=acc304(20)+acc304(53)
      acc304(53)=Qspvak4k2*acc304(53)
      acc304(54)=Qspk2*acc304(5)
      acc304(48)=acc304(54)+acc304(53)+acc304(52)+acc304(51)+acc304(1)+acc304(5&
      &0)+acc304(49)+acc304(48)
      acc304(48)=Qspe7*acc304(48)
      acc304(49)=Qspvae7k2*acc304(14)
      acc304(50)=QspQ*acc304(12)
      acc304(51)=Qspvak1k2*acc304(26)
      acc304(49)=acc304(51)+acc304(50)+acc304(6)+acc304(49)
      acc304(49)=Qspvak2l5*acc304(49)
      acc304(50)=Qspl6*acc304(41)
      acc304(51)=QspQ*acc304(15)
      acc304(52)=Qspvak2l5*acc304(17)
      acc304(50)=acc304(52)+acc304(51)+acc304(30)+acc304(50)
      acc304(50)=Qspvak4k2*acc304(50)
      acc304(51)=Qspvak2k7*acc304(43)
      acc304(52)=Qspvak2l6*acc304(38)
      acc304(51)=acc304(52)+acc304(29)+acc304(51)
      acc304(51)=Qspvae7k2*acc304(51)
      acc304(52)=Qspl6*acc304(44)
      acc304(53)=QspQ*acc304(18)
      acc304(52)=acc304(53)+acc304(24)+acc304(52)
      acc304(52)=Qspvak1k2*acc304(52)
      acc304(53)=acc304(35)*Qspvak7l6
      acc304(54)=acc304(33)*Qspvae7l6
      acc304(55)=Qspvak1l6*acc304(25)
      acc304(56)=Qspvak2k7*acc304(42)
      acc304(57)=Qspvak4l6*acc304(37)
      acc304(58)=Qspval6k2*acc304(2)
      acc304(59)=Qspvak7k2*acc304(22)
      acc304(60)=Qspvak2l6*acc304(3)
      acc304(61)=Qspvak7k2*acc304(39)
      acc304(61)=acc304(32)+acc304(61)
      acc304(61)=Qspvak2e7*acc304(61)
      acc304(62)=Qspl6*acc304(45)
      acc304(63)=Qspvak2l6*acc304(7)
      acc304(63)=acc304(4)+acc304(63)
      acc304(63)=QspQ*acc304(63)
      brack=acc304(10)+acc304(47)+acc304(48)+acc304(49)+acc304(50)+acc304(51)+a&
      &cc304(52)+acc304(53)+acc304(54)+acc304(55)+acc304(56)+acc304(57)+acc304(&
      &58)+acc304(59)+acc304(60)+acc304(61)+acc304(62)+acc304(63)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram304_sign, shift => diagram304_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd304h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d304
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d304 = 0.0_ki
      d304 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d304, ki), aimag(d304), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd304h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d304
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d304 = 0.0_ki
      d304 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d304, ki), aimag(d304), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d304h3l1