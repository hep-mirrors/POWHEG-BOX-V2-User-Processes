module     p0_dbaru_epnebbbarg_d125h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d125h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd125h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc125(53)
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk7
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      QspQ = dotproduct(Q,Q)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk7 = dotproduct(Q,k7)
      acc125(1)=abb125(8)
      acc125(2)=abb125(9)
      acc125(3)=abb125(10)
      acc125(4)=abb125(11)
      acc125(5)=abb125(12)
      acc125(6)=abb125(13)
      acc125(7)=abb125(14)
      acc125(8)=abb125(15)
      acc125(9)=abb125(16)
      acc125(10)=abb125(17)
      acc125(11)=abb125(18)
      acc125(12)=abb125(19)
      acc125(13)=abb125(20)
      acc125(14)=abb125(21)
      acc125(15)=abb125(22)
      acc125(16)=abb125(23)
      acc125(17)=abb125(24)
      acc125(18)=abb125(25)
      acc125(19)=abb125(26)
      acc125(20)=abb125(27)
      acc125(21)=abb125(28)
      acc125(22)=abb125(29)
      acc125(23)=abb125(30)
      acc125(24)=abb125(31)
      acc125(25)=abb125(32)
      acc125(26)=abb125(33)
      acc125(27)=abb125(34)
      acc125(28)=abb125(35)
      acc125(29)=abb125(37)
      acc125(30)=abb125(38)
      acc125(31)=abb125(39)
      acc125(32)=abb125(43)
      acc125(33)=abb125(44)
      acc125(34)=abb125(45)
      acc125(35)=abb125(50)
      acc125(36)=abb125(52)
      acc125(37)=abb125(57)
      acc125(38)=abb125(58)
      acc125(39)=abb125(59)
      acc125(40)=abb125(61)
      acc125(41)=abb125(63)
      acc125(42)=abb125(64)
      acc125(43)=Qspl5+Qspl6
      acc125(44)=-acc125(21)*acc125(43)
      acc125(45)=acc125(10)*Qspvak4k3
      acc125(46)=acc125(15)*Qspvak2l5
      acc125(47)=acc125(24)*Qspvak2l6
      acc125(48)=acc125(32)*Qspk2
      acc125(49)=acc125(41)*Qspvak2k7
      acc125(44)=acc125(49)+acc125(48)+acc125(47)+acc125(46)+acc125(11)+acc125(&
      &45)+acc125(44)
      acc125(44)=QspQ*acc125(44)
      acc125(45)=acc125(1)*Qspvak2l6
      acc125(46)=acc125(4)*Qspvak2l5
      acc125(47)=acc125(30)*Qspk2
      acc125(48)=Qspvak1l6*acc125(8)
      acc125(49)=Qspvak1l5*acc125(12)
      acc125(45)=acc125(49)+acc125(48)+acc125(47)+acc125(5)+acc125(46)+acc125(4&
      &5)
      acc125(46)=Qspvak4k3*Qspvak2k7
      acc125(45)=acc125(46)*acc125(45)
      acc125(47)=Qspk3+Qspk4
      acc125(48)=acc125(47)-Qspk1
      acc125(49)=-acc125(36)*acc125(48)
      acc125(50)=-acc125(7)*Qspvak4k3
      acc125(51)=acc125(19)*Qspvak2k7
      acc125(46)=-acc125(35)*acc125(46)
      acc125(46)=acc125(46)+acc125(31)+acc125(51)+acc125(50)+acc125(49)
      acc125(43)=acc125(43)*acc125(46)
      acc125(46)=acc125(42)*acc125(48)
      acc125(48)=acc125(37)*Qspvak2k7
      acc125(49)=acc125(39)*Qspvak4k3
      acc125(46)=acc125(49)+acc125(38)+acc125(48)+acc125(46)
      acc125(46)=Qspk2*acc125(46)
      acc125(48)=-acc125(22)*Qspvak2l5
      acc125(49)=acc125(28)*Qspvak2k7
      acc125(50)=-acc125(33)*Qspvak2l6
      acc125(48)=-acc125(34)+acc125(50)+acc125(49)+acc125(48)
      acc125(47)=acc125(47)*acc125(48)
      acc125(48)=acc125(25)*Qspvak2l5
      acc125(49)=acc125(27)*Qspvak2l6
      acc125(50)=acc125(40)*Qspvak2k7
      acc125(48)=acc125(50)+acc125(49)+acc125(48)+acc125(16)
      acc125(48)=Qspk1*acc125(48)
      acc125(49)=acc125(9)*Qspvak4k3
      acc125(50)=acc125(18)*Qspvak2k7
      acc125(49)=acc125(50)+acc125(14)+acc125(49)
      acc125(49)=Qspvak2l5*acc125(49)
      acc125(50)=acc125(20)*Qspvak4k3
      acc125(51)=acc125(29)*Qspvak2k7
      acc125(50)=acc125(51)+acc125(50)+acc125(13)
      acc125(50)=Qspvak2l6*acc125(50)
      acc125(51)=Qspvak1k3*acc125(23)
      acc125(51)=acc125(51)+acc125(2)
      acc125(51)=Qspvak2k7*acc125(51)
      acc125(52)=acc125(6)*Qspvak4k3
      acc125(52)=acc125(26)+acc125(52)
      acc125(52)=Qspk7*acc125(52)
      acc125(53)=acc125(3)*Qspvak4k3
      brack=acc125(17)+acc125(43)+acc125(44)+acc125(45)+acc125(46)+acc125(47)+a&
      &cc125(48)+acc125(49)+acc125(50)+acc125(51)+acc125(52)+acc125(53)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd125h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d125
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d125 = 0.0_ki
      d125 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d125, ki), aimag(d125), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d125h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd125h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d125
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d125 = 0.0_ki
      d125 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d125, ki), aimag(d125), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d125h3l1
