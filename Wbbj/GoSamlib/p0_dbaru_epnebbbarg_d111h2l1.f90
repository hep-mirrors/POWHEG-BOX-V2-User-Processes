module     p0_dbaru_epnebbbarg_d111h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d111h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd111h2
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
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k2
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc111(1)=abb111(10)
      acc111(2)=abb111(11)
      acc111(3)=abb111(12)
      acc111(4)=abb111(13)
      acc111(5)=abb111(14)
      acc111(6)=abb111(16)
      acc111(7)=abb111(18)
      acc111(8)=abb111(19)
      acc111(9)=abb111(20)
      acc111(10)=abb111(21)
      acc111(11)=abb111(22)
      acc111(12)=abb111(23)
      acc111(13)=abb111(24)
      acc111(14)=abb111(25)
      acc111(15)=abb111(26)
      acc111(16)=abb111(27)
      acc111(17)=abb111(29)
      acc111(18)=abb111(30)
      acc111(19)=abb111(31)
      acc111(20)=abb111(32)
      acc111(21)=abb111(33)
      acc111(22)=abb111(34)
      acc111(23)=abb111(35)
      acc111(24)=abb111(37)
      acc111(25)=abb111(41)
      acc111(26)=abb111(42)
      acc111(27)=abb111(43)
      acc111(28)=abb111(44)
      acc111(29)=abb111(45)
      acc111(30)=abb111(48)
      acc111(31)=abb111(52)
      acc111(32)=Qspl5+Qspl6
      acc111(33)=-QspQ-acc111(32)
      acc111(33)=acc111(33)*acc111(7)
      acc111(34)=acc111(9)*Qspk2
      acc111(35)=acc111(11)*Qspval6k2
      acc111(36)=acc111(12)*Qspval5k2
      acc111(37)=Qspvak4l6*acc111(21)
      acc111(38)=Qspvak4k2*acc111(2)
      acc111(39)=Qspvak1l6*acc111(13)
      acc111(40)=Qspvak1k2*acc111(3)
      acc111(33)=acc111(33)+acc111(40)+acc111(39)+acc111(38)+acc111(37)+acc111(&
      &36)+acc111(35)+acc111(34)+acc111(4)
      acc111(33)=Qspvak2k7*acc111(33)
      acc111(34)=acc111(5)*Qspval5l6
      acc111(35)=acc111(15)*QspQ
      acc111(36)=acc111(18)*Qspvak1k7
      acc111(37)=acc111(26)*Qspvak4k7
      acc111(38)=acc111(27)*Qspk7
      acc111(34)=acc111(38)+acc111(37)+acc111(36)+acc111(35)+acc111(8)+acc111(3&
      &4)
      acc111(34)=Qspk2*acc111(34)
      acc111(35)=-Qspk7+QspQ
      acc111(35)=acc111(16)*acc111(35)
      acc111(36)=acc111(23)*Qspvak1k7
      acc111(37)=acc111(28)*Qspvak4k7
      acc111(35)=acc111(35)+acc111(37)+acc111(36)+acc111(22)
      acc111(35)=Qspval5l6*acc111(35)
      acc111(36)=acc111(30)*Qspk2
      acc111(36)=acc111(36)-acc111(25)
      acc111(32)=acc111(32)*acc111(36)
      acc111(36)=Qspk2-Qspk7
      acc111(36)=acc111(14)*acc111(36)
      acc111(36)=acc111(1)+acc111(36)
      acc111(36)=Qspval5k2*acc111(36)
      acc111(37)=acc111(6)*QspQ
      acc111(38)=acc111(10)*Qspvak1k7
      acc111(39)=acc111(20)*Qspk7
      acc111(40)=acc111(24)*Qspvak4k7
      acc111(41)=acc111(29)*Qspval6k2
      acc111(42)=acc111(31)*Qspk2**2
      acc111(43)=Qspvak7k2*acc111(17)
      brack=acc111(19)+acc111(32)+acc111(33)+acc111(34)+acc111(35)+acc111(36)+a&
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
      use p0_dbaru_epnebbbarg_abbrevd111h2
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
   & bind(c, name="p0_dbaru_epnebbbarg_d111h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd111h2
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
end module p0_dbaru_epnebbbarg_d111h2l1
