module     p0_dbaru_epnebbbarg_d304h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d304h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd304h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc304(31)
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k2
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc304(1)=abb304(11)
      acc304(2)=abb304(12)
      acc304(3)=abb304(13)
      acc304(4)=abb304(14)
      acc304(5)=abb304(15)
      acc304(6)=abb304(16)
      acc304(7)=abb304(18)
      acc304(8)=abb304(19)
      acc304(9)=abb304(20)
      acc304(10)=abb304(21)
      acc304(11)=abb304(22)
      acc304(12)=abb304(23)
      acc304(13)=abb304(24)
      acc304(14)=abb304(25)
      acc304(15)=abb304(26)
      acc304(16)=abb304(27)
      acc304(17)=abb304(30)
      acc304(18)=abb304(31)
      acc304(19)=abb304(32)
      acc304(20)=abb304(35)
      acc304(21)=abb304(37)
      acc304(22)=abb304(39)
      acc304(23)=abb304(41)
      acc304(24)=abb304(42)
      acc304(25)=acc304(5)*Qspval6k7
      acc304(26)=acc304(10)*Qspvak1k2
      acc304(27)=acc304(12)*Qspl6
      acc304(28)=acc304(15)*Qspval6k2
      acc304(29)=acc304(17)*Qspvak2k7
      acc304(30)=acc304(20)*Qspvak4k2
      acc304(31)=acc304(21)*Qspval6l5
      acc304(25)=acc304(31)+acc304(30)+acc304(29)+acc304(28)+acc304(27)+acc304(&
      &26)+acc304(6)+acc304(25)
      acc304(25)=Qspk2*acc304(25)
      acc304(26)=acc304(2)*Qspvak1k2
      acc304(27)=acc304(4)*Qspvak4k2
      acc304(26)=acc304(27)+acc304(26)
      acc304(26)=acc304(26)*Qspvak2k7
      acc304(27)=acc304(16)*Qspvak1k2
      acc304(28)=acc304(22)*Qspvak4k2
      acc304(26)=acc304(28)+acc304(18)+acc304(27)+acc304(26)
      acc304(26)=Qspval6l5*acc304(26)
      acc304(27)=acc304(9)*Qspval6l5
      acc304(28)=acc304(11)*Qspvak1k2
      acc304(29)=acc304(24)*Qspvak4k2
      acc304(27)=acc304(29)+acc304(13)+acc304(28)+acc304(27)
      acc304(27)=QspQ*acc304(27)
      acc304(28)=-QspQ+Qspl6
      acc304(28)=acc304(19)*acc304(28)
      acc304(29)=acc304(3)*Qspvak2k7
      acc304(28)=acc304(28)+acc304(29)+acc304(1)
      acc304(28)=Qspval6k2*acc304(28)
      acc304(29)=acc304(7)*Qspvak1k2
      acc304(30)=acc304(23)*Qspvak4k2
      acc304(29)=acc304(30)+acc304(29)
      acc304(29)=Qspl6*acc304(29)
      acc304(30)=-Qspvak7k2*acc304(19)
      acc304(30)=acc304(30)+acc304(14)
      acc304(30)=Qspval6k7*acc304(30)
      brack=acc304(8)+acc304(25)+acc304(26)+acc304(27)+acc304(28)+acc304(29)+ac&
      &c304(30)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd304h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d304
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d304 = 0.0_ki
      d304 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d304, ki), aimag(d304), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d304h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd304h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d304
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d304 = 0.0_ki
      d304 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d304, ki), aimag(d304), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d304h1l1
