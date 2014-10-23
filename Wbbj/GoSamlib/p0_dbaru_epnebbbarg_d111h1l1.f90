module     p0_dbaru_epnebbbarg_d111h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d111h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd111h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc111(43)
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak7k2
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc111(1)=abb111(10)
      acc111(2)=abb111(11)
      acc111(3)=abb111(12)
      acc111(4)=abb111(13)
      acc111(5)=abb111(15)
      acc111(6)=abb111(16)
      acc111(7)=abb111(17)
      acc111(8)=abb111(18)
      acc111(9)=abb111(19)
      acc111(10)=abb111(20)
      acc111(11)=abb111(21)
      acc111(12)=abb111(22)
      acc111(13)=abb111(23)
      acc111(14)=abb111(24)
      acc111(15)=abb111(25)
      acc111(16)=abb111(26)
      acc111(17)=abb111(27)
      acc111(18)=abb111(28)
      acc111(19)=abb111(29)
      acc111(20)=abb111(30)
      acc111(21)=abb111(31)
      acc111(22)=abb111(32)
      acc111(23)=abb111(33)
      acc111(24)=abb111(34)
      acc111(25)=abb111(37)
      acc111(26)=abb111(42)
      acc111(27)=abb111(43)
      acc111(28)=abb111(44)
      acc111(29)=abb111(45)
      acc111(30)=abb111(50)
      acc111(31)=abb111(53)
      acc111(32)=Qspl5+Qspl6
      acc111(33)=-QspQ-acc111(32)
      acc111(33)=acc111(33)*acc111(8)
      acc111(34)=acc111(4)*Qspk2
      acc111(35)=acc111(5)*Qspval6k2
      acc111(36)=acc111(13)*Qspval5k2
      acc111(37)=Qspvak4l5*acc111(19)
      acc111(38)=Qspvak4k2*acc111(2)
      acc111(39)=Qspvak1l5*acc111(17)
      acc111(40)=Qspvak1k2*acc111(3)
      acc111(33)=acc111(33)+acc111(40)+acc111(39)+acc111(38)+acc111(37)+acc111(&
      &36)+acc111(7)+acc111(35)+acc111(34)
      acc111(33)=Qspvak2k7*acc111(33)
      acc111(34)=acc111(10)*QspQ
      acc111(35)=acc111(14)*Qspval6l5
      acc111(36)=acc111(20)*Qspvak1k7
      acc111(37)=acc111(28)*Qspk7
      acc111(38)=acc111(29)*Qspvak4k7
      acc111(34)=acc111(38)+acc111(37)+acc111(36)+acc111(35)+acc111(34)+acc111(&
      &9)
      acc111(34)=Qspk2*acc111(34)
      acc111(35)=-Qspk7+QspQ
      acc111(35)=acc111(24)*acc111(35)
      acc111(36)=acc111(18)*Qspvak4k7
      acc111(37)=acc111(23)*Qspvak1k7
      acc111(35)=acc111(35)+acc111(37)+acc111(36)+acc111(16)
      acc111(35)=Qspval6l5*acc111(35)
      acc111(36)=acc111(30)*Qspk2
      acc111(36)=acc111(36)+acc111(26)
      acc111(32)=acc111(32)*acc111(36)
      acc111(36)=Qspk2-Qspk7
      acc111(36)=acc111(15)*acc111(36)
      acc111(36)=acc111(25)+acc111(36)
      acc111(36)=Qspval6k2*acc111(36)
      acc111(37)=acc111(1)*Qspval5k2
      acc111(38)=acc111(6)*QspQ
      acc111(39)=acc111(12)*Qspvak1k7
      acc111(40)=acc111(22)*Qspk7
      acc111(41)=acc111(27)*Qspvak4k7
      acc111(42)=acc111(31)*Qspk2**2
      acc111(43)=Qspvak7k2*acc111(11)
      brack=acc111(21)+acc111(32)+acc111(33)+acc111(34)+acc111(35)+acc111(36)+a&
      &cc111(37)+acc111(38)+acc111(39)+acc111(40)+acc111(41)+acc111(42)+acc111(&
      &43)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd111h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d111
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d111 = 0.0_ki
      d111 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d111, ki), aimag(d111), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d111h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd111h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d111
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d111 = 0.0_ki
      d111 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d111, ki), aimag(d111), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d111h1l1
