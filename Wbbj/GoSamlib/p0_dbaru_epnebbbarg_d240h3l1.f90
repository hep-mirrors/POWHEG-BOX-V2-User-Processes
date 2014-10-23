module     p0_dbaru_epnebbbarg_d240h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d240h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd240h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc240(62)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      QspQ = dotproduct(Q,Q)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      acc240(1)=abb240(16)
      acc240(2)=abb240(17)
      acc240(3)=abb240(18)
      acc240(4)=abb240(19)
      acc240(5)=abb240(20)
      acc240(6)=abb240(21)
      acc240(7)=abb240(23)
      acc240(8)=abb240(24)
      acc240(9)=abb240(25)
      acc240(10)=abb240(26)
      acc240(11)=abb240(27)
      acc240(12)=abb240(28)
      acc240(13)=abb240(29)
      acc240(14)=abb240(30)
      acc240(15)=abb240(31)
      acc240(16)=abb240(32)
      acc240(17)=abb240(33)
      acc240(18)=abb240(34)
      acc240(19)=abb240(35)
      acc240(20)=abb240(36)
      acc240(21)=abb240(38)
      acc240(22)=abb240(41)
      acc240(23)=abb240(46)
      acc240(24)=abb240(47)
      acc240(25)=abb240(49)
      acc240(26)=abb240(52)
      acc240(27)=abb240(56)
      acc240(28)=abb240(57)
      acc240(29)=abb240(58)
      acc240(30)=abb240(65)
      acc240(31)=abb240(69)
      acc240(32)=abb240(72)
      acc240(33)=abb240(85)
      acc240(34)=abb240(129)
      acc240(35)=abb240(135)
      acc240(36)=abb240(149)
      acc240(37)=abb240(166)
      acc240(38)=abb240(189)
      acc240(39)=abb240(268)
      acc240(40)=Qspk4+Qspk3
      acc240(41)=acc240(40)-Qspk2
      acc240(42)=-acc240(26)*acc240(41)
      acc240(43)=Qspvak1k3*acc240(6)
      acc240(44)=Qspvak1k2*acc240(1)
      acc240(45)=Qspvak4k2*acc240(10)
      acc240(46)=Qspvak4k3*acc240(20)
      acc240(42)=acc240(46)+acc240(45)+acc240(44)+acc240(14)+acc240(43)+acc240(&
      &42)
      acc240(42)=Qspvak2l5*acc240(42)
      acc240(43)=acc240(35)*acc240(41)
      acc240(44)=Qspvak1k3*acc240(7)
      acc240(45)=Qspvak1k2*acc240(19)
      acc240(46)=Qspvak4k2*acc240(31)
      acc240(47)=Qspvak4k3*acc240(13)
      acc240(43)=acc240(47)+acc240(46)+acc240(45)+acc240(29)+acc240(44)+acc240(&
      &43)
      acc240(43)=Qspvak2l6*acc240(43)
      acc240(41)=-acc240(34)*acc240(41)
      acc240(44)=Qspvak1k3*acc240(5)
      acc240(45)=Qspvak1k2*acc240(18)
      acc240(46)=Qspvak4k2*acc240(28)
      acc240(47)=Qspvak4k3*acc240(27)
      acc240(41)=acc240(47)+acc240(46)+acc240(45)+acc240(30)+acc240(44)+acc240(&
      &41)
      acc240(41)=Qspvak2k7*acc240(41)
      acc240(40)=acc240(36)*acc240(40)
      acc240(44)=acc240(39)*Qspval5k2
      acc240(45)=acc240(38)*Qspvak7k2
      acc240(46)=acc240(37)*Qspval6k3
      acc240(47)=acc240(33)*Qspval5k3
      acc240(48)=acc240(32)*Qspval6k2
      acc240(49)=acc240(23)*Qspvak7k3
      acc240(50)=acc240(22)*QspQ
      acc240(51)=acc240(17)*Qspvak1l6
      acc240(52)=acc240(16)*Qspvak4l6
      acc240(53)=acc240(12)*Qspvak4k7
      acc240(54)=acc240(11)*Qspvak4l5
      acc240(55)=acc240(8)*Qspvak1k7
      acc240(56)=acc240(4)*Qspvak2k3
      acc240(57)=acc240(3)*Qspvak1l5
      acc240(58)=-Qspk7-Qspl5-Qspl6
      acc240(58)=acc240(9)*acc240(58)
      acc240(59)=Qspk2*acc240(2)
      acc240(60)=Qspvak1k2*acc240(15)
      acc240(61)=Qspvak4k2*acc240(25)
      acc240(62)=Qspvak4k3*acc240(21)
      brack=acc240(24)+acc240(40)+acc240(41)+acc240(42)+acc240(43)+acc240(44)+a&
      &cc240(45)+acc240(46)+acc240(47)+acc240(48)+acc240(49)+acc240(50)+acc240(&
      &51)+acc240(52)+acc240(53)+acc240(54)+acc240(55)+acc240(56)+acc240(57)+ac&
      &c240(58)+acc240(59)+acc240(60)+acc240(61)+acc240(62)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd240h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d240
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d240 = 0.0_ki
      d240 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d240, ki), aimag(d240), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d240h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd240h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d240
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d240 = 0.0_ki
      d240 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d240, ki), aimag(d240), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d240h3l1
