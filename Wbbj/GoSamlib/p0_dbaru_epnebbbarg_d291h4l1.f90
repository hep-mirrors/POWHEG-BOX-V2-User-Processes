module     p0_dbaru_epnebbbarg_d291h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d291h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd291h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc291(60)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      acc291(1)=abb291(10)
      acc291(2)=abb291(11)
      acc291(3)=abb291(12)
      acc291(4)=abb291(13)
      acc291(5)=abb291(14)
      acc291(6)=abb291(15)
      acc291(7)=abb291(16)
      acc291(8)=abb291(17)
      acc291(9)=abb291(18)
      acc291(10)=abb291(19)
      acc291(11)=abb291(20)
      acc291(12)=abb291(21)
      acc291(13)=abb291(22)
      acc291(14)=abb291(23)
      acc291(15)=abb291(24)
      acc291(16)=abb291(25)
      acc291(17)=abb291(26)
      acc291(18)=abb291(27)
      acc291(19)=abb291(28)
      acc291(20)=abb291(29)
      acc291(21)=abb291(30)
      acc291(22)=abb291(31)
      acc291(23)=abb291(32)
      acc291(24)=abb291(33)
      acc291(25)=abb291(34)
      acc291(26)=abb291(36)
      acc291(27)=abb291(37)
      acc291(28)=abb291(38)
      acc291(29)=abb291(39)
      acc291(30)=abb291(40)
      acc291(31)=abb291(41)
      acc291(32)=abb291(42)
      acc291(33)=abb291(43)
      acc291(34)=abb291(44)
      acc291(35)=abb291(45)
      acc291(36)=abb291(46)
      acc291(37)=abb291(47)
      acc291(38)=abb291(48)
      acc291(39)=abb291(49)
      acc291(40)=abb291(50)
      acc291(41)=abb291(51)
      acc291(42)=abb291(52)
      acc291(43)=abb291(53)
      acc291(44)=abb291(54)
      acc291(45)=abb291(62)
      acc291(46)=abb291(82)
      acc291(47)=abb291(96)
      acc291(48)=Qspl6+Qspl5
      acc291(49)=acc291(8)*acc291(48)
      acc291(50)=QspQ*acc291(22)
      acc291(51)=Qspk2*acc291(9)
      acc291(52)=Qspvak4k3*acc291(4)
      acc291(53)=Qspvak4k3*acc291(1)
      acc291(53)=acc291(15)+acc291(53)
      acc291(53)=Qspvak1k2*acc291(53)
      acc291(49)=acc291(53)+acc291(52)+acc291(51)+acc291(2)+acc291(50)+acc291(4&
      &9)
      acc291(49)=Qspval6k2*acc291(49)
      acc291(50)=-acc291(44)*acc291(48)
      acc291(51)=QspQ*acc291(25)
      acc291(52)=Qspk2*acc291(21)
      acc291(50)=acc291(51)+acc291(52)+acc291(50)
      acc291(50)=Qspvak4k2*acc291(50)
      acc291(51)=Qspval6k3*acc291(26)
      acc291(52)=Qspval6l5*acc291(42)
      acc291(53)=Qspl6*acc291(41)
      acc291(51)=acc291(53)+acc291(51)+acc291(52)
      acc291(51)=Qspvak1k2*acc291(51)
      acc291(52)=acc291(18)*acc291(48)
      acc291(53)=acc291(36)*Qspval6k7
      acc291(54)=Qspval6k1*acc291(10)
      acc291(55)=Qspval6k3*acc291(45)
      acc291(56)=Qspval5k2*acc291(28)
      acc291(57)=Qspval6l5*acc291(3)
      acc291(58)=QspQ*acc291(17)
      acc291(59)=Qspk2*acc291(27)
      acc291(60)=Qspval5k2*acc291(16)
      acc291(60)=acc291(39)+acc291(60)
      acc291(60)=Qspvak4k3*acc291(60)
      acc291(49)=acc291(49)+acc291(51)+acc291(60)+acc291(50)+acc291(59)+acc291(&
      &58)+acc291(57)+acc291(56)+acc291(55)+acc291(54)+acc291(53)+acc291(14)+ac&
      &c291(52)
      acc291(49)=Qspvak7k2*acc291(49)
      acc291(50)=-acc291(47)*acc291(48)
      acc291(51)=Qspk1-Qspk7
      acc291(51)=acc291(35)*acc291(51)
      acc291(52)=QspQ*acc291(23)
      acc291(53)=Qspk2*acc291(33)
      acc291(54)=Qspvak4k3*acc291(30)
      acc291(55)=Qspvak4k3*acc291(43)
      acc291(55)=acc291(6)+acc291(55)
      acc291(55)=Qspvak1k2*acc291(55)
      acc291(50)=acc291(55)+acc291(54)+acc291(53)+acc291(52)+acc291(12)+acc291(&
      &51)+acc291(50)
      acc291(50)=Qspval6k2*acc291(50)
      acc291(51)=-acc291(40)*acc291(48)
      acc291(52)=QspQ*acc291(34)
      acc291(53)=Qspk2*acc291(19)
      acc291(51)=acc291(52)+acc291(53)+acc291(51)
      acc291(51)=Qspvak4k2*acc291(51)
      acc291(52)=Qspval6k3*acc291(24)
      acc291(53)=Qspval6l5*acc291(20)
      acc291(54)=Qspl6*acc291(38)
      acc291(52)=acc291(54)+acc291(52)+acc291(53)
      acc291(52)=Qspvak1k2*acc291(52)
      acc291(48)=-acc291(46)*acc291(48)
      acc291(53)=Qspval6k1*acc291(5)
      acc291(54)=Qspval5k2*acc291(29)
      acc291(55)=Qspval6l5*acc291(13)
      acc291(56)=QspQ*acc291(37)
      acc291(57)=Qspk2*acc291(11)
      acc291(58)=Qspval5k2*acc291(32)
      acc291(58)=acc291(31)+acc291(58)
      acc291(58)=Qspvak4k3*acc291(58)
      brack=acc291(7)+acc291(48)+acc291(49)+acc291(50)+acc291(51)+acc291(52)+ac&
      &c291(53)+acc291(54)+acc291(55)+acc291(56)+acc291(57)+acc291(58)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd291h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d291
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d291 = 0.0_ki
      d291 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d291, ki), aimag(d291), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d291h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd291h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d291
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d291 = 0.0_ki
      d291 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d291, ki), aimag(d291), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d291h4l1
