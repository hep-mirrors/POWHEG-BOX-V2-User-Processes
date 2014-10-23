module     p0_dbaru_epnebbbarg_d127h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d127h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd127h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc127(40)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k2
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      acc127(1)=abb127(12)
      acc127(2)=abb127(13)
      acc127(3)=abb127(14)
      acc127(4)=abb127(15)
      acc127(5)=abb127(16)
      acc127(6)=abb127(17)
      acc127(7)=abb127(18)
      acc127(8)=abb127(19)
      acc127(9)=abb127(20)
      acc127(10)=abb127(21)
      acc127(11)=abb127(22)
      acc127(12)=abb127(23)
      acc127(13)=abb127(24)
      acc127(14)=abb127(25)
      acc127(15)=abb127(26)
      acc127(16)=abb127(27)
      acc127(17)=abb127(30)
      acc127(18)=abb127(32)
      acc127(19)=abb127(34)
      acc127(20)=abb127(43)
      acc127(21)=abb127(45)
      acc127(22)=abb127(46)
      acc127(23)=abb127(49)
      acc127(24)=abb127(51)
      acc127(25)=abb127(53)
      acc127(26)=abb127(54)
      acc127(27)=abb127(56)
      acc127(28)=abb127(58)
      acc127(29)=abb127(63)
      acc127(30)=abb127(65)
      acc127(31)=abb127(68)
      acc127(32)=Qspk4+Qspk3
      acc127(33)=acc127(25)*acc127(32)
      acc127(34)=Qspvak1k3*acc127(1)
      acc127(35)=Qspk1*acc127(28)
      acc127(36)=QspQ*acc127(21)
      acc127(37)=Qspvak1k2*acc127(11)
      acc127(38)=Qspvak1k2*acc127(2)
      acc127(38)=acc127(6)+acc127(38)
      acc127(38)=Qspvak4k3*acc127(38)
      acc127(33)=acc127(38)+acc127(37)+acc127(36)+acc127(35)+acc127(20)+acc127(&
      &34)+acc127(33)
      acc127(33)=Qspval5k2*acc127(33)
      acc127(34)=acc127(30)*acc127(32)
      acc127(35)=Qspvak1k3*acc127(9)
      acc127(36)=Qspk1*acc127(31)
      acc127(37)=QspQ*acc127(29)
      acc127(38)=Qspvak1k2*acc127(12)
      acc127(39)=Qspvak1k2*acc127(15)
      acc127(39)=acc127(16)+acc127(39)
      acc127(39)=Qspvak4k3*acc127(39)
      acc127(34)=acc127(39)+acc127(38)+acc127(37)+acc127(36)+acc127(27)+acc127(&
      &35)+acc127(34)
      acc127(34)=Qspval6k2*acc127(34)
      acc127(35)=acc127(24)*acc127(32)
      acc127(36)=Qspvak1k3*acc127(3)
      acc127(37)=Qspk1*acc127(26)
      acc127(38)=QspQ*acc127(23)
      acc127(39)=Qspvak1k2*acc127(5)
      acc127(40)=Qspvak1k2*acc127(14)
      acc127(40)=acc127(4)+acc127(40)
      acc127(40)=Qspvak4k3*acc127(40)
      acc127(35)=acc127(40)+acc127(39)+acc127(38)+acc127(37)+acc127(22)+acc127(&
      &36)+acc127(35)
      acc127(35)=Qspvak7k2*acc127(35)
      acc127(36)=-acc127(17)*Qspvak3k2
      acc127(37)=Qspvak4k2*acc127(19)
      acc127(38)=Qspvak1k2*acc127(8)
      acc127(36)=acc127(38)+acc127(36)+acc127(37)
      acc127(36)=Qspvak4k3*acc127(36)
      acc127(32)=-Qspk1+acc127(32)
      acc127(32)=acc127(18)*acc127(32)
      acc127(37)=QspQ*acc127(17)
      acc127(32)=acc127(37)+acc127(13)+acc127(32)
      acc127(32)=Qspvak4k2*acc127(32)
      acc127(37)=QspQ*acc127(10)
      acc127(38)=Qspvak1k2*acc127(7)
      brack=acc127(32)+acc127(33)+acc127(34)+acc127(35)+acc127(36)+acc127(37)+a&
      &cc127(38)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd127h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d127
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d127 = 0.0_ki
      d127 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d127, ki), aimag(d127), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d127h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd127h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d127
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d127 = 0.0_ki
      d127 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d127, ki), aimag(d127), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d127h4l1
