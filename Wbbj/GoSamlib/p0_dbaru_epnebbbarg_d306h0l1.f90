module     p0_dbaru_epnebbbarg_d306h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d306h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd306h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc306(48)
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk7
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk7 = dotproduct(Q,k7)
      acc306(1)=abb306(10)
      acc306(2)=abb306(11)
      acc306(3)=abb306(12)
      acc306(4)=abb306(13)
      acc306(5)=abb306(14)
      acc306(6)=abb306(15)
      acc306(7)=abb306(16)
      acc306(8)=abb306(17)
      acc306(9)=abb306(18)
      acc306(10)=abb306(19)
      acc306(11)=abb306(20)
      acc306(12)=abb306(21)
      acc306(13)=abb306(22)
      acc306(14)=abb306(23)
      acc306(15)=abb306(24)
      acc306(16)=abb306(25)
      acc306(17)=abb306(26)
      acc306(18)=abb306(27)
      acc306(19)=abb306(28)
      acc306(20)=abb306(29)
      acc306(21)=abb306(30)
      acc306(22)=abb306(31)
      acc306(23)=abb306(32)
      acc306(24)=abb306(33)
      acc306(25)=abb306(34)
      acc306(26)=abb306(35)
      acc306(27)=abb306(37)
      acc306(28)=abb306(42)
      acc306(29)=abb306(46)
      acc306(30)=abb306(47)
      acc306(31)=abb306(48)
      acc306(32)=abb306(49)
      acc306(33)=abb306(50)
      acc306(34)=abb306(52)
      acc306(35)=abb306(53)
      acc306(36)=acc306(13)*QspQ
      acc306(37)=acc306(15)*Qspvak1k2
      acc306(38)=acc306(20)*Qspvak4k2
      acc306(39)=acc306(26)*Qspl5
      acc306(40)=acc306(27)*Qspvak1k7
      acc306(41)=acc306(30)*Qspval6k7
      acc306(42)=acc306(35)*Qspvak4k7
      acc306(36)=acc306(42)+acc306(41)+acc306(40)+acc306(39)+acc306(38)+acc306(&
      &37)+acc306(14)+acc306(36)
      acc306(36)=Qspk2*acc306(36)
      acc306(37)=acc306(9)*Qspvak1k2
      acc306(38)=acc306(22)*Qspvak4k2
      acc306(37)=acc306(24)+acc306(38)+acc306(37)
      acc306(37)=acc306(37)*Qspval5k2
      acc306(38)=acc306(1)*Qspvak4k2
      acc306(39)=acc306(25)*Qspvak1k2
      acc306(37)=acc306(39)+acc306(2)+acc306(38)+acc306(37)
      acc306(37)=Qspvak2k7*acc306(37)
      acc306(38)=acc306(16)*Qspvak1k2
      acc306(39)=acc306(17)*Qspvak4k2
      acc306(40)=acc306(31)*Qspval6k2
      acc306(38)=acc306(40)+acc306(39)+acc306(38)+acc306(7)
      acc306(38)=QspQ*acc306(38)
      acc306(39)=-Qspval6k7*acc306(32)
      acc306(40)=acc306(5)*Qspvak1k7
      acc306(41)=acc306(6)*Qspvak4k7
      acc306(39)=acc306(41)+acc306(40)+acc306(3)+acc306(39)
      acc306(39)=Qspvak7k2*acc306(39)
      acc306(40)=Qspk2+Qspk7
      acc306(40)=acc306(32)*acc306(40)
      acc306(41)=acc306(4)*Qspvak2k7
      acc306(40)=acc306(40)+acc306(33)+acc306(41)
      acc306(40)=Qspval6k2*acc306(40)
      acc306(41)=acc306(18)*Qspvak1k2
      acc306(42)=acc306(29)*Qspvak4k2
      acc306(41)=acc306(42)+acc306(19)+acc306(41)
      acc306(41)=Qspk7*acc306(41)
      acc306(42)=acc306(8)*Qspvak1k7
      acc306(43)=acc306(11)*Qspvak1k2
      acc306(44)=acc306(12)*Qspvak4k7
      acc306(45)=acc306(21)*Qspvak4k2
      acc306(46)=acc306(23)*Qspk2**2
      acc306(47)=acc306(28)*Qspval6k7
      acc306(48)=acc306(34)*Qspl5
      brack=acc306(10)+acc306(36)+acc306(37)+acc306(38)+acc306(39)+acc306(40)+a&
      &cc306(41)+acc306(42)+acc306(43)+acc306(44)+acc306(45)+acc306(46)+acc306(&
      &47)+acc306(48)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd306h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d306
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d306 = 0.0_ki
      d306 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d306, ki), aimag(d306), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d306h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd306h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d306
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d306 = 0.0_ki
      d306 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d306, ki), aimag(d306), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d306h0l1
