module     p0_dbaru_epnebbbarg_d294h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d294h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd294h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc294(55)
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k2
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      acc294(1)=abb294(10)
      acc294(2)=abb294(11)
      acc294(3)=abb294(12)
      acc294(4)=abb294(13)
      acc294(5)=abb294(14)
      acc294(6)=abb294(15)
      acc294(7)=abb294(16)
      acc294(8)=abb294(17)
      acc294(9)=abb294(18)
      acc294(10)=abb294(19)
      acc294(11)=abb294(20)
      acc294(12)=abb294(21)
      acc294(13)=abb294(22)
      acc294(14)=abb294(24)
      acc294(15)=abb294(25)
      acc294(16)=abb294(26)
      acc294(17)=abb294(27)
      acc294(18)=abb294(28)
      acc294(19)=abb294(29)
      acc294(20)=abb294(30)
      acc294(21)=abb294(31)
      acc294(22)=abb294(32)
      acc294(23)=abb294(33)
      acc294(24)=abb294(34)
      acc294(25)=abb294(35)
      acc294(26)=abb294(36)
      acc294(27)=abb294(37)
      acc294(28)=abb294(38)
      acc294(29)=abb294(39)
      acc294(30)=abb294(40)
      acc294(31)=abb294(41)
      acc294(32)=abb294(42)
      acc294(33)=abb294(43)
      acc294(34)=abb294(44)
      acc294(35)=abb294(45)
      acc294(36)=abb294(46)
      acc294(37)=abb294(48)
      acc294(38)=abb294(51)
      acc294(39)=abb294(74)
      acc294(40)=abb294(82)
      acc294(41)=abb294(83)
      acc294(42)=abb294(88)
      acc294(43)=abb294(90)
      acc294(44)=abb294(98)
      acc294(45)=Qspvak4k3*acc294(34)
      acc294(46)=QspQ*acc294(6)
      acc294(47)=Qspk2*acc294(13)
      acc294(48)=Qspvak4k3*acc294(2)
      acc294(48)=acc294(8)+acc294(48)
      acc294(48)=Qspvak1k2*acc294(48)
      acc294(49)=Qspl6*acc294(10)
      acc294(45)=acc294(49)+acc294(48)+acc294(47)+acc294(46)+acc294(4)+acc294(4&
      &5)
      acc294(45)=Qspval6k2*acc294(45)
      acc294(46)=QspQ*acc294(12)
      acc294(47)=Qspk2*acc294(9)
      acc294(46)=acc294(46)+acc294(47)
      acc294(46)=Qspvak4k2*acc294(46)
      acc294(47)=Qspvak4k2*acc294(38)
      acc294(48)=Qspvak1k2*acc294(36)
      acc294(47)=acc294(48)+acc294(41)+acc294(47)
      acc294(47)=Qspl6*acc294(47)
      acc294(48)=Qspval6k1*acc294(29)
      acc294(49)=Qspval6l5*acc294(40)
      acc294(50)=Qspval6k7*acc294(28)
      acc294(51)=Qspval6k3*acc294(43)
      acc294(52)=QspQ*acc294(35)
      acc294(53)=Qspk2*acc294(42)
      acc294(54)=Qspvak1k2*Qspval6k3
      acc294(55)=acc294(1)*acc294(54)
      acc294(45)=acc294(45)+acc294(47)+acc294(55)+acc294(46)+acc294(53)+acc294(&
      &52)+acc294(51)+acc294(50)+acc294(49)+acc294(5)+acc294(48)
      acc294(45)=Qspvak7k2*acc294(45)
      acc294(46)=Qspval5k2*acc294(23)
      acc294(47)=Qspval5k2*acc294(25)
      acc294(47)=acc294(33)+acc294(47)
      acc294(47)=Qspvak4k3*acc294(47)
      acc294(48)=QspQ*acc294(14)
      acc294(49)=Qspk2*acc294(22)
      acc294(50)=Qspvak4k3*acc294(32)
      acc294(50)=acc294(27)+acc294(50)
      acc294(50)=Qspvak1k2*acc294(50)
      acc294(51)=Qspl6*acc294(21)
      acc294(46)=acc294(51)+acc294(50)+acc294(49)+acc294(48)+acc294(47)+acc294(&
      &11)+acc294(46)
      acc294(46)=Qspval6k2*acc294(46)
      acc294(47)=Qspval5k2*acc294(31)
      acc294(48)=Qspvak4k2*acc294(30)
      acc294(49)=Qspvak1k2*acc294(18)
      acc294(47)=acc294(49)+acc294(48)+acc294(19)+acc294(47)
      acc294(47)=Qspl6*acc294(47)
      acc294(48)=QspQ*acc294(26)
      acc294(49)=Qspk2*acc294(20)
      acc294(48)=acc294(48)+acc294(49)
      acc294(48)=Qspvak4k2*acc294(48)
      acc294(49)=Qspval6k1*acc294(24)
      acc294(50)=Qspval6l5*acc294(16)
      acc294(51)=Qspval6k7*acc294(15)
      acc294(52)=Qspval5k2*acc294(17)
      acc294(52)=acc294(44)+acc294(52)
      acc294(52)=Qspval6k3*acc294(52)
      acc294(53)=QspQ*acc294(39)
      acc294(55)=Qspk2*acc294(37)
      acc294(54)=acc294(3)*acc294(54)
      brack=acc294(7)+acc294(45)+acc294(46)+acc294(47)+acc294(48)+acc294(49)+ac&
      &c294(50)+acc294(51)+acc294(52)+acc294(53)+acc294(54)+acc294(55)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd294h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d294
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d294 = 0.0_ki
      d294 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d294, ki), aimag(d294), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d294h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd294h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d294
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d294 = 0.0_ki
      d294 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d294, ki), aimag(d294), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d294h4l1
