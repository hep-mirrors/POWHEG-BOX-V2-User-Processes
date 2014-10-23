module     p0_dbaru_epnebbbarg_d225h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d225h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd225h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc225(67)
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      Qspl6 = dotproduct(Q,l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      acc225(1)=abb225(15)
      acc225(2)=abb225(16)
      acc225(3)=abb225(17)
      acc225(4)=abb225(18)
      acc225(5)=abb225(19)
      acc225(6)=abb225(20)
      acc225(7)=abb225(21)
      acc225(8)=abb225(22)
      acc225(9)=abb225(23)
      acc225(10)=abb225(24)
      acc225(11)=abb225(25)
      acc225(12)=abb225(26)
      acc225(13)=abb225(27)
      acc225(14)=abb225(28)
      acc225(15)=abb225(33)
      acc225(16)=abb225(34)
      acc225(17)=abb225(35)
      acc225(18)=abb225(36)
      acc225(19)=abb225(38)
      acc225(20)=abb225(39)
      acc225(21)=abb225(40)
      acc225(22)=abb225(43)
      acc225(23)=abb225(44)
      acc225(24)=abb225(45)
      acc225(25)=abb225(47)
      acc225(26)=abb225(48)
      acc225(27)=abb225(49)
      acc225(28)=abb225(50)
      acc225(29)=abb225(51)
      acc225(30)=abb225(56)
      acc225(31)=abb225(63)
      acc225(32)=abb225(64)
      acc225(33)=abb225(66)
      acc225(34)=abb225(69)
      acc225(35)=abb225(70)
      acc225(36)=abb225(75)
      acc225(37)=abb225(79)
      acc225(38)=abb225(81)
      acc225(39)=abb225(106)
      acc225(40)=abb225(107)
      acc225(41)=abb225(110)
      acc225(42)=abb225(121)
      acc225(43)=abb225(131)
      acc225(44)=abb225(182)
      acc225(45)=abb225(213)
      acc225(46)=acc225(4)*Qspl6
      acc225(47)=acc225(15)*Qspvak2k7
      acc225(48)=acc225(17)*Qspval6l5
      acc225(49)=acc225(18)*Qspk7
      acc225(50)=acc225(21)*Qspl5
      acc225(51)=acc225(22)*Qspval5k2
      acc225(52)=acc225(23)*Qspk2
      acc225(53)=acc225(26)*Qspval6k2
      acc225(54)=acc225(27)*Qspval5k7
      acc225(55)=acc225(31)*Qspval6k7
      acc225(56)=acc225(37)*Qspval5l6
      acc225(46)=acc225(56)+acc225(55)+acc225(54)+acc225(53)+acc225(52)+acc225(&
      &51)+acc225(50)+acc225(49)+acc225(48)+acc225(47)+acc225(46)+acc225(3)
      acc225(46)=Qspvak4k2*acc225(46)
      acc225(47)=acc225(2)*Qspk2
      acc225(48)=acc225(6)*Qspval5k2
      acc225(49)=acc225(7)*Qspval6l5
      acc225(50)=acc225(9)*Qspval6k7
      acc225(51)=acc225(10)*Qspval6k2
      acc225(52)=acc225(11)*Qspvak2k7
      acc225(53)=acc225(12)*Qspval5k7
      acc225(54)=acc225(14)*Qspval5l6
      acc225(55)=acc225(20)*Qspk7
      acc225(56)=acc225(24)*Qspl6
      acc225(57)=acc225(29)*Qspl5
      acc225(47)=acc225(57)+acc225(56)+acc225(55)+acc225(54)+acc225(53)+acc225(&
      &52)+acc225(51)+acc225(50)+acc225(8)+acc225(49)+acc225(48)+acc225(47)
      acc225(47)=Qspvak1k2*acc225(47)
      acc225(48)=-Qspl6-Qspl5
      acc225(48)=acc225(44)*acc225(48)
      acc225(49)=acc225(1)*Qspk2
      acc225(50)=acc225(5)*Qspval5k2
      acc225(51)=acc225(25)*Qspvak2k7
      acc225(52)=acc225(34)*Qspval6k2
      acc225(53)=acc225(39)*Qspval5l6
      acc225(54)=acc225(40)*Qspval6k7
      acc225(55)=acc225(41)*Qspval6l5
      acc225(56)=acc225(42)*Qspval5k7
      acc225(57)=acc225(45)*Qspk7
      acc225(58)=Qspvak7k2*acc225(36)
      acc225(59)=Qspvak4k3*acc225(28)
      acc225(60)=Qspvak4k1*acc225(35)
      acc225(61)=Qspvak3k2*acc225(19)
      acc225(62)=Qspvak1k4*acc225(30)
      acc225(63)=Qspvak1k3*acc225(16)
      acc225(64)=Qspk4*acc225(33)
      acc225(65)=Qspk3*acc225(43)
      acc225(66)=Qspk1*acc225(38)
      acc225(67)=QspQ*acc225(13)
      brack=acc225(32)+acc225(46)+acc225(47)+acc225(48)+acc225(49)+acc225(50)+a&
      &cc225(51)+acc225(52)+acc225(53)+acc225(54)+acc225(55)+acc225(56)+acc225(&
      &57)+acc225(58)+acc225(59)+acc225(60)+acc225(61)+acc225(62)+acc225(63)+ac&
      &c225(64)+acc225(65)+acc225(66)+acc225(67)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd225h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d225
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d225 = 0.0_ki
      d225 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d225, ki), aimag(d225), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d225h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd225h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d225
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d225 = 0.0_ki
      d225 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d225, ki), aimag(d225), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d225h0l1
