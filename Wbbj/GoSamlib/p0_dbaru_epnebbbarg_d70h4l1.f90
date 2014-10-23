module     p0_dbaru_epnebbbarg_d70h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d70h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd70h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc70(55)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspk1
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak3k2
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspl6 = dotproduct(Q,l6)
      Qspk1 = dotproduct(Q,k1)
      Qspl5 = dotproduct(Q,l5)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      acc70(1)=abb70(7)
      acc70(2)=abb70(8)
      acc70(3)=abb70(9)
      acc70(4)=abb70(10)
      acc70(5)=abb70(11)
      acc70(6)=abb70(12)
      acc70(7)=abb70(13)
      acc70(8)=abb70(14)
      acc70(9)=abb70(15)
      acc70(10)=abb70(16)
      acc70(11)=abb70(17)
      acc70(12)=abb70(18)
      acc70(13)=abb70(19)
      acc70(14)=abb70(20)
      acc70(15)=abb70(21)
      acc70(16)=abb70(22)
      acc70(17)=abb70(23)
      acc70(18)=abb70(24)
      acc70(19)=abb70(25)
      acc70(20)=abb70(26)
      acc70(21)=abb70(27)
      acc70(22)=abb70(28)
      acc70(23)=abb70(29)
      acc70(24)=abb70(30)
      acc70(25)=abb70(31)
      acc70(26)=abb70(32)
      acc70(27)=abb70(33)
      acc70(28)=abb70(34)
      acc70(29)=abb70(35)
      acc70(30)=abb70(36)
      acc70(31)=abb70(37)
      acc70(32)=abb70(38)
      acc70(33)=abb70(40)
      acc70(34)=abb70(41)
      acc70(35)=abb70(42)
      acc70(36)=abb70(43)
      acc70(37)=abb70(44)
      acc70(38)=abb70(45)
      acc70(39)=abb70(47)
      acc70(40)=abb70(48)
      acc70(41)=abb70(50)
      acc70(42)=abb70(51)
      acc70(43)=abb70(52)
      acc70(44)=Qspk4+Qspk3
      acc70(45)=acc70(44)+QspQ
      acc70(46)=acc70(35)*acc70(45)
      acc70(47)=Qspvak1k3*acc70(2)
      acc70(48)=-Qspvak1k7*acc70(42)
      acc70(49)=Qspvak4k3*acc70(1)
      acc70(50)=Qspk7*acc70(33)
      acc70(51)=Qspvak1k2*Qspvak4k3
      acc70(52)=acc70(32)*acc70(51)
      acc70(53)=Qspvak4k2*acc70(19)
      acc70(46)=acc70(53)+acc70(52)+acc70(50)+acc70(49)+acc70(48)+acc70(7)+acc7&
      &0(47)+acc70(46)
      acc70(46)=Qspval5k2*acc70(46)
      acc70(45)=acc70(36)*acc70(45)
      acc70(47)=Qspvak1k3*acc70(6)
      acc70(48)=-Qspvak1k7*acc70(43)
      acc70(49)=Qspvak4k3*acc70(15)
      acc70(50)=Qspk7*acc70(34)
      acc70(51)=acc70(25)*acc70(51)
      acc70(52)=Qspvak4k2*acc70(27)
      acc70(45)=acc70(52)+acc70(51)+acc70(50)+acc70(49)+acc70(48)+acc70(8)+acc7&
      &0(47)+acc70(45)
      acc70(45)=Qspval6k2*acc70(45)
      acc70(47)=-Qspk7-acc70(44)
      acc70(47)=acc70(16)*acc70(47)
      acc70(48)=Qspvak4k3*acc70(23)
      acc70(49)=-QspQ*acc70(20)
      acc70(47)=acc70(49)+acc70(48)+acc70(9)+acc70(47)
      acc70(47)=Qspvak4k2*acc70(47)
      acc70(48)=Qspvak4k3*acc70(13)
      acc70(49)=Qspval5k2*acc70(37)
      acc70(50)=Qspval6k2*acc70(38)
      acc70(48)=acc70(50)+acc70(49)+acc70(28)+acc70(48)
      acc70(48)=Qspvak7k2*acc70(48)
      acc70(44)=-acc70(17)*acc70(44)
      acc70(49)=Qspvak1k3*acc70(10)
      acc70(50)=-Qspvak1k7*acc70(41)
      acc70(51)=-Qspl6-Qspk1-Qspl5
      acc70(51)=acc70(29)*acc70(51)
      acc70(52)=acc70(20)*Qspvak3k2
      acc70(52)=acc70(4)+acc70(52)
      acc70(52)=Qspvak4k3*acc70(52)
      acc70(53)=QspQ*acc70(21)
      acc70(54)=Qspk7*acc70(24)
      acc70(55)=-Qspvak4k3*acc70(18)
      acc70(55)=acc70(30)+acc70(55)
      acc70(55)=Qspvak1k2*acc70(55)
      acc70(44)=acc70(48)+acc70(45)+acc70(46)+acc70(47)+acc70(55)+acc70(54)+acc&
      &70(53)+acc70(52)+acc70(51)+acc70(50)+acc70(3)+acc70(49)+acc70(44)
      acc70(44)=Qspvak7k2*acc70(44)
      acc70(45)=QspQ*acc70(42)
      acc70(46)=Qspk7*acc70(5)
      acc70(45)=acc70(45)+acc70(46)
      acc70(45)=Qspvak1k2*acc70(45)
      acc70(46)=QspQ*acc70(39)
      acc70(47)=Qspk7*acc70(40)
      acc70(46)=acc70(46)+acc70(47)
      acc70(46)=Qspvak4k2*acc70(46)
      acc70(45)=acc70(45)+acc70(46)
      acc70(45)=Qspval5k2*acc70(45)
      acc70(46)=QspQ*acc70(43)
      acc70(47)=Qspk7*acc70(31)
      acc70(46)=acc70(46)+acc70(47)
      acc70(46)=Qspvak1k2*acc70(46)
      acc70(47)=QspQ*acc70(22)
      acc70(48)=Qspk7*acc70(26)
      acc70(47)=acc70(47)+acc70(48)
      acc70(47)=Qspvak4k2*acc70(47)
      acc70(46)=acc70(46)+acc70(47)
      acc70(46)=Qspval6k2*acc70(46)
      acc70(47)=QspQ*acc70(41)
      acc70(48)=Qspk7*acc70(12)
      acc70(47)=acc70(47)+acc70(48)
      acc70(47)=Qspvak1k2*acc70(47)
      acc70(48)=QspQ*acc70(11)
      acc70(49)=Qspk7*acc70(14)
      acc70(48)=acc70(48)+acc70(49)
      acc70(48)=Qspvak4k2*acc70(48)
      brack=acc70(44)+acc70(45)+acc70(46)+acc70(47)+acc70(48)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd70h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d70
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3-k2+k7+k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d70 = 0.0_ki
      d70 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d70, ki), aimag(d70), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d70h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd70h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d70
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3-k2+k7+k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d70 = 0.0_ki
      d70 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d70, ki), aimag(d70), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d70h4l1
