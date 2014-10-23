module     p0_dbaru_epnebbbarg_d244h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d244h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd244h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc244(48)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      acc244(1)=abb244(16)
      acc244(2)=abb244(17)
      acc244(3)=abb244(18)
      acc244(4)=abb244(19)
      acc244(5)=abb244(20)
      acc244(6)=abb244(21)
      acc244(7)=abb244(22)
      acc244(8)=abb244(23)
      acc244(9)=abb244(24)
      acc244(10)=abb244(25)
      acc244(11)=abb244(26)
      acc244(12)=abb244(27)
      acc244(13)=abb244(28)
      acc244(14)=abb244(29)
      acc244(15)=abb244(30)
      acc244(16)=abb244(33)
      acc244(17)=abb244(35)
      acc244(18)=abb244(36)
      acc244(19)=abb244(37)
      acc244(20)=abb244(38)
      acc244(21)=abb244(61)
      acc244(22)=abb244(75)
      acc244(23)=abb244(80)
      acc244(24)=abb244(81)
      acc244(25)=abb244(98)
      acc244(26)=abb244(113)
      acc244(27)=abb244(115)
      acc244(28)=abb244(130)
      acc244(29)=abb244(140)
      acc244(30)=acc244(10)*Qspvak1k2
      acc244(31)=acc244(13)*Qspvak1k3
      acc244(32)=acc244(23)*Qspvak4k2
      acc244(30)=acc244(32)+acc244(31)+acc244(30)+acc244(1)
      acc244(30)=Qspvak2k7*acc244(30)
      acc244(31)=acc244(5)*Qspvak4k2
      acc244(32)=acc244(12)*Qspvak1k2
      acc244(33)=acc244(18)*Qspvak1k3
      acc244(31)=acc244(33)+acc244(32)+acc244(31)+acc244(4)
      acc244(31)=Qspvak2l6*acc244(31)
      acc244(32)=acc244(8)*Qspvak4k2
      acc244(33)=acc244(9)*Qspvak1k3
      acc244(34)=acc244(15)*Qspvak1k2
      acc244(32)=acc244(34)+acc244(33)+acc244(32)+acc244(7)
      acc244(32)=Qspvak2l5*acc244(32)
      acc244(33)=Qspl5+Qspl6+Qspk7
      acc244(33)=acc244(26)*acc244(33)
      acc244(34)=Qspvak7k3*acc244(22)
      acc244(35)=Qspvak7k2*acc244(28)
      acc244(36)=Qspval6k3*acc244(27)
      acc244(37)=Qspval6k2*acc244(29)
      acc244(38)=Qspval5k3*acc244(24)
      acc244(39)=Qspval5k2*acc244(25)
      acc244(40)=Qspvak4k7*acc244(20)
      acc244(41)=Qspvak4l6*acc244(19)
      acc244(42)=Qspvak4l5*acc244(6)
      acc244(43)=Qspvak2k3*acc244(14)
      acc244(44)=Qspvak1k7*acc244(16)
      acc244(45)=Qspvak1l6*acc244(2)
      acc244(46)=Qspvak1l5*acc244(3)
      acc244(47)=Qspk2*acc244(21)
      acc244(48)=QspQ*acc244(17)
      brack=acc244(11)+acc244(30)+acc244(31)+acc244(32)+acc244(33)+acc244(34)+a&
      &cc244(35)+acc244(36)+acc244(37)+acc244(38)+acc244(39)+acc244(40)+acc244(&
      &41)+acc244(42)+acc244(43)+acc244(44)+acc244(45)+acc244(46)+acc244(47)+ac&
      &c244(48)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd244h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d244
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d244 = 0.0_ki
      d244 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d244, ki), aimag(d244), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d244h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd244h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d244
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d244 = 0.0_ki
      d244 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d244, ki), aimag(d244), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d244h3l1
