module     p0_dbaru_epnebbbarg_d306h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d306h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd306h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc306(53)
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k2
      complex(ki) :: QspQ
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk7
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      QspQ = dotproduct(Q,Q)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
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
      acc306(18)=abb306(31)
      acc306(19)=abb306(32)
      acc306(20)=abb306(33)
      acc306(21)=abb306(34)
      acc306(22)=abb306(38)
      acc306(23)=abb306(39)
      acc306(24)=abb306(40)
      acc306(25)=abb306(42)
      acc306(26)=abb306(43)
      acc306(27)=abb306(44)
      acc306(28)=abb306(45)
      acc306(29)=abb306(46)
      acc306(30)=abb306(47)
      acc306(31)=abb306(48)
      acc306(32)=abb306(54)
      acc306(33)=abb306(55)
      acc306(34)=abb306(59)
      acc306(35)=abb306(63)
      acc306(36)=abb306(73)
      acc306(37)=abb306(74)
      acc306(38)=abb306(77)
      acc306(39)=abb306(78)
      acc306(40)=Qspvak2l6*acc306(29)
      acc306(41)=Qspvak2l5*acc306(14)
      acc306(40)=acc306(41)+acc306(27)+acc306(40)
      acc306(40)=Qspvak4k2*acc306(40)
      acc306(41)=Qspvak1l5*acc306(13)
      acc306(42)=Qspvak4l5*acc306(26)
      acc306(41)=acc306(42)+acc306(1)+acc306(41)
      acc306(41)=Qspk2*acc306(41)
      acc306(42)=Qspvak1l5*acc306(12)
      acc306(43)=Qspvak4l5*acc306(24)
      acc306(44)=Qspvak7k2*acc306(19)
      acc306(45)=QspQ*acc306(11)
      acc306(46)=Qspl5*acc306(25)
      acc306(47)=Qspvak2l6*acc306(8)
      acc306(47)=acc306(3)+acc306(47)
      acc306(47)=Qspvak1k2*acc306(47)
      acc306(48)=Qspvak1l6*acc306(10)
      acc306(49)=Qspvak1k7*acc306(2)
      acc306(50)=Qspvak1k2*acc306(7)
      acc306(50)=acc306(30)+acc306(50)
      acc306(50)=Qspvak2l5*acc306(50)
      acc306(51)=Qspvak4l6*acc306(15)
      acc306(52)=Qspvak4k7*acc306(9)
      acc306(53)=Qspvak2k7*acc306(28)
      acc306(40)=acc306(53)+acc306(41)+acc306(52)+acc306(51)+acc306(40)+acc306(&
      &50)+acc306(49)+acc306(48)+acc306(47)+acc306(46)+acc306(45)+acc306(44)+ac&
      &c306(43)+acc306(18)+acc306(42)
      acc306(40)=Qspvak2k7*acc306(40)
      acc306(41)=Qspk7*acc306(22)
      acc306(42)=QspQ*acc306(33)
      acc306(43)=Qspl5*acc306(23)
      acc306(44)=Qspvak1l6*acc306(5)
      acc306(45)=Qspvak1k7*acc306(31)
      acc306(46)=Qspvak4l6*acc306(21)
      acc306(47)=Qspvak4k7*acc306(38)
      acc306(48)=Qspk2*acc306(4)
      acc306(41)=acc306(48)+acc306(47)+acc306(46)+acc306(45)+acc306(44)+acc306(&
      &43)+acc306(42)+acc306(17)+acc306(41)
      acc306(41)=Qspk2*acc306(41)
      acc306(42)=Qspk7*acc306(35)
      acc306(43)=Qspvak7k2*acc306(16)
      acc306(44)=QspQ*acc306(32)
      acc306(45)=Qspl5*acc306(37)
      acc306(46)=Qspvak1l6*acc306(6)
      acc306(47)=Qspvak1k7*acc306(20)
      acc306(48)=Qspvak4l6*acc306(39)
      acc306(49)=Qspvak4k7*acc306(36)
      brack=acc306(34)+acc306(40)+acc306(41)+acc306(42)+acc306(43)+acc306(44)+a&
      &cc306(45)+acc306(46)+acc306(47)+acc306(48)+acc306(49)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd306h3
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
   & bind(c, name="p0_dbaru_epnebbbarg_d306h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd306h3
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
end module p0_dbaru_epnebbbarg_d306h3l1
