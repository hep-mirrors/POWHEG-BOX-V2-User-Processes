module     p0_dbaru_epnebbbarg_d93h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d93h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd93h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc93(51)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspval6l5
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      acc93(1)=abb93(12)
      acc93(2)=abb93(13)
      acc93(3)=abb93(14)
      acc93(4)=abb93(15)
      acc93(5)=abb93(16)
      acc93(6)=abb93(17)
      acc93(7)=abb93(18)
      acc93(8)=abb93(19)
      acc93(9)=abb93(20)
      acc93(10)=abb93(21)
      acc93(11)=abb93(22)
      acc93(12)=abb93(23)
      acc93(13)=abb93(24)
      acc93(14)=abb93(25)
      acc93(15)=abb93(26)
      acc93(16)=abb93(27)
      acc93(17)=abb93(28)
      acc93(18)=abb93(29)
      acc93(19)=abb93(30)
      acc93(20)=abb93(31)
      acc93(21)=abb93(33)
      acc93(22)=abb93(34)
      acc93(23)=abb93(37)
      acc93(24)=abb93(38)
      acc93(25)=abb93(39)
      acc93(26)=abb93(40)
      acc93(27)=abb93(42)
      acc93(28)=abb93(43)
      acc93(29)=abb93(44)
      acc93(30)=abb93(45)
      acc93(31)=abb93(46)
      acc93(32)=abb93(50)
      acc93(33)=abb93(53)
      acc93(34)=abb93(54)
      acc93(35)=abb93(55)
      acc93(36)=abb93(59)
      acc93(37)=abb93(64)
      acc93(38)=abb93(86)
      acc93(39)=Qspk4+Qspk3
      acc93(40)=acc93(34)*acc93(39)
      acc93(41)=Qspl6+Qspl5
      acc93(42)=acc93(29)*acc93(41)
      acc93(43)=Qspvak1k2*acc93(18)
      acc93(44)=Qspk2*acc93(28)
      acc93(45)=Qspvak4k2*acc93(35)
      acc93(46)=Qspvak4k3*acc93(37)
      acc93(47)=Qspvak7k2*acc93(36)
      acc93(48)=Qspk1*acc93(33)
      acc93(49)=Qspvak1l6*acc93(19)
      acc93(40)=acc93(49)+acc93(48)+acc93(47)+acc93(46)+acc93(45)+acc93(44)+acc&
      &93(20)+acc93(43)+acc93(42)+acc93(40)
      acc93(40)=Qspvak2l5*acc93(40)
      acc93(42)=-acc93(26)*acc93(39)
      acc93(43)=acc93(41)-Qspk1
      acc93(44)=-acc93(5)*acc93(43)
      acc93(45)=Qspvak2k1*acc93(2)
      acc93(46)=Qspk2*acc93(22)
      acc93(47)=-Qspvak2l6*acc93(19)
      acc93(48)=Qspvak4k2*acc93(1)
      acc93(49)=Qspvak4k3*acc93(30)
      acc93(50)=Qspvak7k2*acc93(27)
      acc93(42)=acc93(50)+acc93(49)+acc93(48)+acc93(47)+acc93(46)+acc93(12)+acc&
      &93(45)+acc93(44)+acc93(42)
      acc93(42)=Qspvak1l5*acc93(42)
      acc93(43)=acc93(13)*acc93(43)
      acc93(44)=-Qspk2+acc93(39)
      acc93(44)=acc93(3)*acc93(44)
      acc93(45)=Qspvak2k1*acc93(14)
      acc93(46)=Qspvak4k2*acc93(4)
      acc93(47)=Qspvak4k3*acc93(24)
      acc93(48)=Qspvak7k2*acc93(21)
      acc93(43)=acc93(48)+acc93(47)+acc93(46)+acc93(25)+acc93(45)+acc93(44)+acc&
      &93(43)
      acc93(43)=Qspvak1l6*acc93(43)
      acc93(39)=acc93(38)*acc93(39)
      acc93(41)=acc93(23)*acc93(41)
      acc93(44)=acc93(10)*Qspval6l5
      acc93(45)=Qspvak2k1*acc93(31)
      acc93(46)=Qspk2*acc93(11)
      acc93(47)=Qspvak1k2*acc93(7)
      acc93(47)=acc93(8)+acc93(47)
      acc93(47)=Qspvak2l6*acc93(47)
      acc93(48)=Qspvak4k2*acc93(6)
      acc93(49)=Qspvak4k3*acc93(9)
      acc93(50)=Qspvak7k2*acc93(15)
      acc93(51)=Qspvak2l6*acc93(32)
      acc93(51)=acc93(17)+acc93(51)
      acc93(51)=Qspk1*acc93(51)
      brack=acc93(16)+acc93(39)+acc93(40)+acc93(41)+acc93(42)+acc93(43)+acc93(4&
      &4)+acc93(45)+acc93(46)+acc93(47)+acc93(48)+acc93(49)+acc93(50)+acc93(51)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd93h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d93
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d93 = 0.0_ki
      d93 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d93, ki), aimag(d93), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d93h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd93h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d93
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d93 = 0.0_ki
      d93 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d93, ki), aimag(d93), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d93h7l1
