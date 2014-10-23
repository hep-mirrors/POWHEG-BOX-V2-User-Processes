module     p0_dbaru_epnebbbarg_d13h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d13h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd13h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc13(53)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l5
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      QspQ = dotproduct(Q,Q)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      acc13(1)=abb13(11)
      acc13(2)=abb13(12)
      acc13(3)=abb13(13)
      acc13(4)=abb13(14)
      acc13(5)=abb13(15)
      acc13(6)=abb13(16)
      acc13(7)=abb13(17)
      acc13(8)=abb13(18)
      acc13(9)=abb13(19)
      acc13(10)=abb13(20)
      acc13(11)=abb13(21)
      acc13(12)=abb13(23)
      acc13(13)=abb13(24)
      acc13(14)=abb13(25)
      acc13(15)=abb13(26)
      acc13(16)=abb13(27)
      acc13(17)=abb13(28)
      acc13(18)=abb13(29)
      acc13(19)=abb13(30)
      acc13(20)=abb13(31)
      acc13(21)=abb13(32)
      acc13(22)=abb13(33)
      acc13(23)=abb13(34)
      acc13(24)=abb13(35)
      acc13(25)=abb13(36)
      acc13(26)=abb13(37)
      acc13(27)=abb13(38)
      acc13(28)=abb13(40)
      acc13(29)=abb13(41)
      acc13(30)=abb13(42)
      acc13(31)=abb13(43)
      acc13(32)=abb13(44)
      acc13(33)=abb13(45)
      acc13(34)=abb13(48)
      acc13(35)=abb13(49)
      acc13(36)=abb13(55)
      acc13(37)=abb13(56)
      acc13(38)=abb13(57)
      acc13(39)=abb13(63)
      acc13(40)=abb13(64)
      acc13(41)=abb13(65)
      acc13(42)=Qspl6+Qspl5
      acc13(43)=Qspk1+acc13(42)
      acc13(43)=acc13(35)*acc13(43)
      acc13(44)=Qspvak7k2*acc13(37)
      acc13(45)=Qspvak1k7*acc13(10)
      acc13(46)=Qspval5k2*acc13(33)
      acc13(47)=Qspvak1k2*acc13(31)
      acc13(48)=Qspvak1k3*acc13(29)
      acc13(49)=Qspvak4k2*acc13(14)
      acc13(50)=QspQ*acc13(26)
      acc13(51)=Qspval6k2*acc13(5)
      acc13(52)=-Qspvak1k2*acc13(7)
      acc13(52)=acc13(39)+acc13(52)
      acc13(52)=Qspvak4k3*acc13(52)
      acc13(53)=Qspval6l5*acc13(20)
      acc13(43)=acc13(53)+acc13(52)+acc13(51)+acc13(50)+acc13(49)+acc13(48)+acc&
      &13(47)+acc13(46)+acc13(45)+acc13(15)+acc13(44)+acc13(43)
      acc13(43)=Qspk2*acc13(43)
      acc13(44)=-Qspvak4k3*acc13(11)
      acc13(44)=acc13(44)+acc13(24)
      acc13(44)=Qspvak1k2*acc13(44)
      acc13(45)=Qspvak7k2*acc13(36)
      acc13(46)=Qspk1*acc13(34)
      acc13(47)=Qspvak1k7*acc13(18)
      acc13(48)=Qspval5k2*acc13(17)
      acc13(49)=Qspvak1k3*acc13(1)
      acc13(50)=Qspvak4k2*acc13(3)
      acc13(51)=Qspval6k2*acc13(28)
      acc13(44)=acc13(51)+acc13(50)+acc13(49)+acc13(48)+acc13(47)+acc13(46)+acc&
      &13(13)+acc13(45)+acc13(44)
      acc13(44)=Qspval6l5*acc13(44)
      acc13(45)=acc13(27)*Qspvak1l5
      acc13(46)=Qspval5k2*acc13(8)
      acc13(47)=Qspvak1k2*acc13(2)
      acc13(48)=QspQ*acc13(40)
      acc13(49)=Qspval6k2*acc13(9)
      acc13(45)=acc13(49)+acc13(48)+acc13(47)+acc13(46)+acc13(38)+acc13(45)
      acc13(45)=Qspvak4k3*acc13(45)
      acc13(46)=-Qspvak1k3*acc13(25)
      acc13(47)=-Qspvak4k2*acc13(41)
      acc13(46)=acc13(47)+acc13(46)-acc13(32)
      acc13(46)=acc13(42)*acc13(46)
      acc13(47)=Qspvak1k3*acc13(22)
      acc13(48)=Qspvak4k2*acc13(23)
      acc13(47)=acc13(48)+acc13(4)+acc13(47)
      acc13(47)=QspQ*acc13(47)
      acc13(42)=-acc13(21)*acc13(42)
      acc13(48)=-QspQ*acc13(17)
      acc13(42)=acc13(48)+acc13(19)+acc13(42)
      acc13(42)=Qspval6k2*acc13(42)
      acc13(48)=Qspk1*acc13(12)
      acc13(49)=Qspvak1k7*acc13(6)
      acc13(50)=Qspval5k2*acc13(30)
      brack=acc13(16)+acc13(42)+acc13(43)+acc13(44)+acc13(45)+acc13(46)+acc13(4&
      &7)+acc13(48)+acc13(49)+acc13(50)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd13h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d13
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d13 = 0.0_ki
      d13 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d13, ki), aimag(d13), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d13h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd13h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d13
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d13 = 0.0_ki
      d13 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d13, ki), aimag(d13), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d13h1l1
