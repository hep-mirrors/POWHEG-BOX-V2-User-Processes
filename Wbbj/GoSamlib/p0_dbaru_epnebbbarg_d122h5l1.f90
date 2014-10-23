module     p0_dbaru_epnebbbarg_d122h5l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d122h5l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd122h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc122(55)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak3l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak1k3
      complex(ki) :: QspQ
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak3l5 = dotproduct(Q,spvak3l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      QspQ = dotproduct(Q,Q)
      acc122(1)=abb122(12)
      acc122(2)=abb122(13)
      acc122(3)=abb122(14)
      acc122(4)=abb122(15)
      acc122(5)=abb122(16)
      acc122(6)=abb122(17)
      acc122(7)=abb122(18)
      acc122(8)=abb122(19)
      acc122(9)=abb122(20)
      acc122(10)=abb122(21)
      acc122(11)=abb122(22)
      acc122(12)=abb122(23)
      acc122(13)=abb122(24)
      acc122(14)=abb122(25)
      acc122(15)=abb122(26)
      acc122(16)=abb122(27)
      acc122(17)=abb122(28)
      acc122(18)=abb122(29)
      acc122(19)=abb122(30)
      acc122(20)=abb122(31)
      acc122(21)=abb122(32)
      acc122(22)=abb122(33)
      acc122(23)=abb122(34)
      acc122(24)=abb122(35)
      acc122(25)=abb122(36)
      acc122(26)=abb122(37)
      acc122(27)=abb122(39)
      acc122(28)=abb122(42)
      acc122(29)=abb122(46)
      acc122(30)=abb122(47)
      acc122(31)=abb122(48)
      acc122(32)=abb122(51)
      acc122(33)=abb122(53)
      acc122(34)=abb122(56)
      acc122(35)=abb122(57)
      acc122(36)=abb122(61)
      acc122(37)=abb122(66)
      acc122(38)=abb122(68)
      acc122(39)=abb122(73)
      acc122(40)=abb122(80)
      acc122(41)=abb122(81)
      acc122(42)=Qspk4+Qspk3
      acc122(43)=acc122(25)*acc122(42)
      acc122(44)=Qspk7+Qspl6
      acc122(45)=acc122(2)*acc122(44)
      acc122(46)=acc122(11)*Qspvak2l5
      acc122(47)=Qspvak4l5*acc122(15)
      acc122(48)=Qspval6k2*acc122(4)
      acc122(49)=Qspvak7k2*acc122(14)
      acc122(50)=Qspvak4k3*acc122(6)
      acc122(51)=Qspk2*acc122(28)
      acc122(52)=Qspvak4k2*acc122(5)
      acc122(43)=acc122(52)+acc122(51)+acc122(50)+acc122(49)+acc122(48)+acc122(&
      &47)+acc122(1)+acc122(46)+acc122(45)+acc122(43)
      acc122(43)=Qspvak4k2*acc122(43)
      acc122(45)=-acc122(17)*acc122(44)
      acc122(46)=-acc122(40)*Qspvak3k2
      acc122(47)=-acc122(11)*Qspvak3l5
      acc122(48)=Qspvak4l5*acc122(29)
      acc122(49)=Qspval6k2*acc122(27)
      acc122(50)=Qspvak7k2*acc122(35)
      acc122(45)=acc122(50)+acc122(49)+acc122(48)+acc122(47)+acc122(46)+acc122(&
      &10)+acc122(45)
      acc122(45)=Qspvak4k3*acc122(45)
      acc122(46)=acc122(44)*acc122(38)
      acc122(47)=Qspvak4l5*acc122(34)
      acc122(46)=acc122(46)-acc122(47)
      acc122(47)=-Qspk2+acc122(42)
      acc122(47)=acc122(39)*acc122(47)
      acc122(48)=Qspvak1k2*acc122(24)
      acc122(49)=Qspval6k2*acc122(20)
      acc122(50)=Qspvak7k2*acc122(22)
      acc122(51)=Qspvak4k3*acc122(36)
      acc122(47)=acc122(51)+acc122(50)+acc122(49)+acc122(48)+acc122(8)+acc122(4&
      &7)+acc122(46)
      acc122(47)=Qspk2*acc122(47)
      acc122(48)=-acc122(20)*acc122(42)
      acc122(49)=-acc122(33)*Qspvak7k3
      acc122(50)=-acc122(16)*Qspvak1l6
      acc122(51)=Qspvak1k2*acc122(13)
      acc122(48)=acc122(51)+acc122(50)+acc122(9)+acc122(49)+acc122(48)
      acc122(48)=Qspval6k2*acc122(48)
      acc122(49)=-acc122(22)*acc122(42)
      acc122(50)=acc122(33)*Qspval6k3
      acc122(51)=-acc122(16)*Qspvak1k7
      acc122(52)=Qspvak1k2*acc122(26)
      acc122(49)=acc122(52)+acc122(51)+acc122(3)+acc122(50)+acc122(49)
      acc122(49)=Qspvak7k2*acc122(49)
      acc122(46)=-acc122(37)-acc122(46)
      acc122(42)=acc122(46)*acc122(42)
      acc122(46)=acc122(31)*Qspval5k2
      acc122(50)=acc122(30)*Qspval6l5
      acc122(51)=acc122(19)*Qspvak7l5
      acc122(52)=acc122(18)*Qspvak1k3
      acc122(53)=acc122(12)*QspQ
      acc122(54)=Qspval6k3*acc122(41)
      acc122(55)=Qspvak7k3*acc122(32)
      acc122(44)=acc122(23)*acc122(44)
      acc122(44)=acc122(21)+acc122(44)
      acc122(44)=Qspvak1k2*acc122(44)
      brack=acc122(7)+acc122(42)+acc122(43)+acc122(44)+acc122(45)+acc122(46)+ac&
      &c122(47)+acc122(48)+acc122(49)+acc122(50)+acc122(51)+acc122(52)+acc122(5&
      &3)+acc122(54)+acc122(55)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd122h5
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
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d122h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd122h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d122
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d122 = 0.0_ki
      d122 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d122, ki), aimag(d122), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d122h5l1
