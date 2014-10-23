module     p0_dbaru_epnebbbarg_d322h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d322h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd322h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc322(54)
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k2
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc322(1)=abb322(12)
      acc322(2)=abb322(13)
      acc322(3)=abb322(14)
      acc322(4)=abb322(15)
      acc322(5)=abb322(16)
      acc322(6)=abb322(17)
      acc322(7)=abb322(18)
      acc322(8)=abb322(19)
      acc322(9)=abb322(20)
      acc322(10)=abb322(21)
      acc322(11)=abb322(22)
      acc322(12)=abb322(23)
      acc322(13)=abb322(24)
      acc322(14)=abb322(25)
      acc322(15)=abb322(26)
      acc322(16)=abb322(27)
      acc322(17)=abb322(28)
      acc322(18)=abb322(29)
      acc322(19)=abb322(30)
      acc322(20)=abb322(32)
      acc322(21)=abb322(33)
      acc322(22)=abb322(34)
      acc322(23)=abb322(35)
      acc322(24)=abb322(36)
      acc322(25)=abb322(39)
      acc322(26)=abb322(43)
      acc322(27)=abb322(44)
      acc322(28)=abb322(45)
      acc322(29)=abb322(49)
      acc322(30)=abb322(50)
      acc322(31)=abb322(53)
      acc322(32)=abb322(54)
      acc322(33)=abb322(57)
      acc322(34)=abb322(62)
      acc322(35)=abb322(74)
      acc322(36)=abb322(79)
      acc322(37)=abb322(81)
      acc322(38)=abb322(85)
      acc322(39)=abb322(87)
      acc322(40)=Qspvak1k3*acc322(28)
      acc322(41)=Qspvak4k2*acc322(26)
      acc322(42)=Qspvak1k2*acc322(7)
      acc322(40)=acc322(42)+acc322(41)+acc322(2)+acc322(40)
      acc322(40)=Qspval6k2*acc322(40)
      acc322(41)=Qspvak1k3*acc322(18)
      acc322(42)=Qspvak4k2*acc322(23)
      acc322(41)=acc322(42)+acc322(24)+acc322(41)
      acc322(41)=Qspval5k2*acc322(41)
      acc322(42)=acc322(39)*Qspval6l5
      acc322(43)=acc322(22)*Qspval5k3
      acc322(44)=Qspval6k3*acc322(36)
      acc322(45)=acc322(38)*Qspval6k7
      acc322(46)=Qspl5*acc322(35)
      acc322(47)=Qspl6*acc322(21)
      acc322(48)=Qspk7*acc322(32)
      acc322(49)=QspQ*acc322(27)
      acc322(50)=Qspk2*acc322(33)
      acc322(51)=Qspvak1k3*acc322(12)
      acc322(52)=Qspvak4k2*acc322(19)
      acc322(53)=Qspval5k2*acc322(14)
      acc322(53)=acc322(3)+acc322(53)
      acc322(53)=Qspvak1k2*acc322(53)
      acc322(54)=Qspvak7k2*acc322(31)
      acc322(40)=acc322(54)+acc322(40)+acc322(53)+acc322(41)+acc322(52)+acc322(&
      &51)+acc322(50)+acc322(49)+acc322(48)+acc322(47)+acc322(46)+acc322(45)+ac&
      &c322(44)+acc322(8)+acc322(42)+acc322(43)
      acc322(40)=Qspvak7k2*acc322(40)
      acc322(41)=-Qspk7-Qspl6
      acc322(41)=acc322(20)*acc322(41)
      acc322(42)=QspQ*acc322(11)
      acc322(43)=Qspk2*acc322(15)
      acc322(41)=acc322(43)+acc322(42)+acc322(13)+acc322(41)
      acc322(41)=Qspvak1k2*acc322(41)
      acc322(42)=Qspl5*acc322(38)
      acc322(43)=QspQ*acc322(9)
      acc322(44)=Qspk2*acc322(6)
      acc322(42)=acc322(44)+acc322(43)+acc322(1)+acc322(42)
      acc322(42)=Qspval6k2*acc322(42)
      acc322(43)=Qspval6k3*acc322(16)
      acc322(44)=Qspval6k7*acc322(37)
      acc322(45)=Qspl5*acc322(34)
      acc322(46)=Qspl6*acc322(30)
      acc322(47)=Qspk7*acc322(29)
      acc322(48)=QspQ*acc322(10)
      acc322(49)=Qspk2*acc322(17)
      acc322(50)=Qspvak1k3*acc322(5)
      acc322(51)=Qspvak4k2*acc322(25)
      brack=acc322(4)+acc322(40)+acc322(41)+acc322(42)+acc322(43)+acc322(44)+ac&
      &c322(45)+acc322(46)+acc322(47)+acc322(48)+acc322(49)+acc322(50)+acc322(5&
      &1)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd322h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d322
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d322 = 0.0_ki
      d322 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d322, ki), aimag(d322), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d322h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd322h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d322
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d322 = 0.0_ki
      d322 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d322, ki), aimag(d322), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d322h4l1
