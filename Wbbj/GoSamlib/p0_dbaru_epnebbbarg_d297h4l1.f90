module     p0_dbaru_epnebbbarg_d297h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d297h4l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd297h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc297(60)
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7k2
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc297(1)=abb297(10)
      acc297(2)=abb297(11)
      acc297(3)=abb297(12)
      acc297(4)=abb297(13)
      acc297(5)=abb297(14)
      acc297(6)=abb297(15)
      acc297(7)=abb297(16)
      acc297(8)=abb297(17)
      acc297(9)=abb297(18)
      acc297(10)=abb297(19)
      acc297(11)=abb297(20)
      acc297(12)=abb297(21)
      acc297(13)=abb297(22)
      acc297(14)=abb297(23)
      acc297(15)=abb297(24)
      acc297(16)=abb297(25)
      acc297(17)=abb297(26)
      acc297(18)=abb297(28)
      acc297(19)=abb297(29)
      acc297(20)=abb297(30)
      acc297(21)=abb297(31)
      acc297(22)=abb297(32)
      acc297(23)=abb297(33)
      acc297(24)=abb297(34)
      acc297(25)=abb297(35)
      acc297(26)=abb297(36)
      acc297(27)=abb297(37)
      acc297(28)=abb297(38)
      acc297(29)=abb297(39)
      acc297(30)=abb297(40)
      acc297(31)=abb297(41)
      acc297(32)=abb297(43)
      acc297(33)=abb297(44)
      acc297(34)=abb297(45)
      acc297(35)=abb297(46)
      acc297(36)=abb297(48)
      acc297(37)=abb297(49)
      acc297(38)=abb297(52)
      acc297(39)=abb297(54)
      acc297(40)=abb297(55)
      acc297(41)=abb297(56)
      acc297(42)=abb297(58)
      acc297(43)=abb297(59)
      acc297(44)=abb297(61)
      acc297(45)=abb297(65)
      acc297(46)=abb297(70)
      acc297(47)=abb297(75)
      acc297(48)=abb297(76)
      acc297(49)=Qspl6+Qspk7
      acc297(50)=acc297(2)*acc297(49)
      acc297(51)=Qspvak4k3*acc297(22)
      acc297(52)=QspQ*acc297(5)
      acc297(53)=Qspk2*acc297(4)
      acc297(54)=Qspvak4k3*acc297(13)
      acc297(54)=acc297(6)+acc297(54)
      acc297(54)=Qspvak1k2*acc297(54)
      acc297(50)=acc297(54)+acc297(53)+acc297(52)+acc297(1)+acc297(51)+acc297(5&
      &0)
      acc297(50)=Qspval6k2*acc297(50)
      acc297(51)=Qspval6k7*acc297(42)
      acc297(52)=Qspval6k3*acc297(3)
      acc297(53)=Qspl6*acc297(38)
      acc297(51)=acc297(53)+acc297(51)+acc297(52)
      acc297(51)=Qspvak1k2*acc297(51)
      acc297(52)=acc297(27)*acc297(49)
      acc297(53)=QspQ*acc297(32)
      acc297(54)=Qspk2*acc297(31)
      acc297(52)=acc297(53)+acc297(54)+acc297(52)
      acc297(52)=Qspvak4k2*acc297(52)
      acc297(53)=Qspval6k1*acc297(10)
      acc297(54)=Qspval6l5*acc297(46)
      acc297(55)=Qspval6k3*acc297(30)
      acc297(56)=QspQ*acc297(44)
      acc297(57)=Qspk2*acc297(40)
      acc297(58)=Qspk7*acc297(43)
      acc297(59)=Qspl6*acc297(47)
      acc297(60)=Qspvak7k2*acc297(45)
      acc297(50)=acc297(60)+acc297(50)+acc297(52)+acc297(51)+acc297(59)+acc297(&
      &58)+acc297(57)+acc297(56)+acc297(55)+acc297(54)+acc297(29)+acc297(53)
      acc297(50)=Qspvak7k2*acc297(50)
      acc297(51)=-acc297(35)*acc297(49)
      acc297(52)=QspQ*acc297(28)
      acc297(53)=Qspk2*acc297(36)
      acc297(51)=acc297(52)+acc297(53)+acc297(51)
      acc297(51)=Qspvak4k2*acc297(51)
      acc297(52)=Qspvak4k3*acc297(20)
      acc297(53)=QspQ*acc297(11)
      acc297(54)=Qspk2*acc297(34)
      acc297(55)=Qspk7*acc297(33)
      acc297(56)=Qspl6*acc297(23)
      acc297(57)=Qspvak4k3*acc297(16)
      acc297(57)=acc297(24)+acc297(57)
      acc297(57)=Qspvak1k2*acc297(57)
      acc297(58)=Qspval6k2*acc297(7)
      acc297(51)=acc297(58)+acc297(51)+acc297(57)+acc297(56)+acc297(55)+acc297(&
      &54)+acc297(53)+acc297(9)+acc297(52)
      acc297(51)=Qspval6k2*acc297(51)
      acc297(52)=Qspval6k7*acc297(37)
      acc297(53)=Qspval6k3*acc297(17)
      acc297(54)=Qspl6*acc297(41)
      acc297(52)=acc297(54)+acc297(52)+acc297(53)
      acc297(52)=Qspvak1k2*acc297(52)
      acc297(49)=-acc297(25)*acc297(49)
      acc297(53)=QspQ*acc297(14)
      acc297(54)=Qspk2*acc297(15)
      acc297(49)=acc297(53)+acc297(54)+acc297(49)
      acc297(49)=Qspvak4k2*acc297(49)
      acc297(53)=Qspval6k1*acc297(8)
      acc297(54)=Qspval6l5*acc297(19)
      acc297(55)=Qspval6k3*acc297(48)
      acc297(56)=QspQ*acc297(26)
      acc297(57)=Qspk2*acc297(18)
      acc297(58)=Qspk7*acc297(21)
      acc297(59)=Qspl6*acc297(39)
      brack=acc297(12)+acc297(49)+acc297(50)+acc297(51)+acc297(52)+acc297(53)+a&
      &cc297(54)+acc297(55)+acc297(56)+acc297(57)+acc297(58)+acc297(59)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd297h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d297
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d297 = 0.0_ki
      d297 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d297, ki), aimag(d297), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d297h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd297h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d297
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d297 = 0.0_ki
      d297 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d297, ki), aimag(d297), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d297h4l1
