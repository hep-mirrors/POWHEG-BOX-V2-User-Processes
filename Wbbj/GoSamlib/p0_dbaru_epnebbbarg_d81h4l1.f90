module     p0_dbaru_epnebbbarg_d81h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d81h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd81h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc81(45)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak3k2
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      acc81(1)=abb81(8)
      acc81(2)=abb81(9)
      acc81(3)=abb81(10)
      acc81(4)=abb81(11)
      acc81(5)=abb81(12)
      acc81(6)=abb81(13)
      acc81(7)=abb81(14)
      acc81(8)=abb81(15)
      acc81(9)=abb81(16)
      acc81(10)=abb81(17)
      acc81(11)=abb81(18)
      acc81(12)=abb81(19)
      acc81(13)=abb81(21)
      acc81(14)=abb81(22)
      acc81(15)=abb81(23)
      acc81(16)=abb81(24)
      acc81(17)=abb81(25)
      acc81(18)=abb81(28)
      acc81(19)=abb81(29)
      acc81(20)=abb81(30)
      acc81(21)=abb81(31)
      acc81(22)=abb81(32)
      acc81(23)=abb81(33)
      acc81(24)=abb81(34)
      acc81(25)=abb81(35)
      acc81(26)=abb81(36)
      acc81(27)=abb81(37)
      acc81(28)=abb81(38)
      acc81(29)=abb81(39)
      acc81(30)=abb81(40)
      acc81(31)=abb81(41)
      acc81(32)=abb81(42)
      acc81(33)=abb81(44)
      acc81(34)=abb81(45)
      acc81(35)=abb81(46)
      acc81(36)=Qspk4+Qspk3
      acc81(37)=acc81(36)-QspQ
      acc81(38)=-acc81(20)*acc81(37)
      acc81(39)=Qspvak1k3*acc81(1)
      acc81(40)=-Qspvak1k7*acc81(35)
      acc81(41)=Qspk7*acc81(18)
      acc81(42)=Qspvak1k2*acc81(5)
      acc81(42)=acc81(4)+acc81(42)
      acc81(42)=Qspvak4k3*acc81(42)
      acc81(43)=Qspvak4k2*acc81(16)
      acc81(38)=acc81(43)+acc81(42)+acc81(41)+acc81(40)+acc81(15)+acc81(39)+acc&
      &81(38)
      acc81(38)=Qspval5k2*acc81(38)
      acc81(37)=-acc81(21)*acc81(37)
      acc81(39)=Qspvak1k3*acc81(7)
      acc81(40)=-Qspvak1k7*acc81(34)
      acc81(41)=Qspk7*acc81(19)
      acc81(42)=Qspvak1k2*acc81(9)
      acc81(42)=acc81(8)+acc81(42)
      acc81(42)=Qspvak4k3*acc81(42)
      acc81(43)=Qspvak4k2*acc81(32)
      acc81(37)=acc81(43)+acc81(42)+acc81(41)+acc81(40)+acc81(17)+acc81(39)+acc&
      &81(37)
      acc81(37)=Qspval6k2*acc81(37)
      acc81(36)=Qspk7+acc81(36)
      acc81(36)=acc81(26)*acc81(36)
      acc81(39)=Qspvak4k3*acc81(6)
      acc81(40)=-QspQ*acc81(27)
      acc81(36)=acc81(40)+acc81(39)+acc81(13)+acc81(36)
      acc81(36)=Qspvak4k2*acc81(36)
      acc81(39)=Qspvak4k3*acc81(24)
      acc81(40)=Qspval5k2*acc81(22)
      acc81(41)=Qspval6k2*acc81(23)
      acc81(39)=acc81(41)+acc81(40)+acc81(14)+acc81(39)
      acc81(39)=Qspvak7k2*acc81(39)
      acc81(40)=acc81(11)*Qspk1
      acc81(41)=Qspvak1k3*acc81(25)
      acc81(42)=Qspvak1k7*acc81(33)
      acc81(43)=Qspvak1k2*acc81(3)
      acc81(44)=-Qspvak4k3*acc81(27)*Qspvak3k2
      acc81(45)=QspQ*acc81(10)
      acc81(36)=acc81(39)+acc81(37)+acc81(38)+acc81(36)+acc81(45)+acc81(44)+acc&
      &81(43)+acc81(42)+acc81(40)+acc81(41)
      acc81(36)=Qspvak7k2*acc81(36)
      acc81(37)=Qspk7*acc81(28)
      acc81(38)=QspQ*acc81(30)
      acc81(37)=acc81(37)+acc81(38)
      acc81(37)=Qspvak4k2*acc81(37)
      acc81(38)=Qspvak1k2*Qspk7
      acc81(39)=acc81(2)*acc81(38)
      acc81(40)=QspQ*Qspvak1k2
      acc81(41)=-acc81(35)*acc81(40)
      acc81(37)=acc81(37)+acc81(39)+acc81(41)
      acc81(37)=Qspval5k2*acc81(37)
      acc81(39)=Qspk7*acc81(29)
      acc81(41)=QspQ*acc81(31)
      acc81(39)=acc81(39)+acc81(41)
      acc81(39)=Qspvak4k2*acc81(39)
      acc81(38)=acc81(12)*acc81(38)
      acc81(40)=-acc81(34)*acc81(40)
      acc81(38)=acc81(39)+acc81(38)+acc81(40)
      acc81(38)=Qspval6k2*acc81(38)
      brack=acc81(36)+acc81(37)+acc81(38)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd81h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d81
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3-k7-k6-k5-k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d81 = 0.0_ki
      d81 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d81, ki), aimag(d81), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d81h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd81h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d81
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3-k7-k6-k5-k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d81 = 0.0_ki
      d81 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d81, ki), aimag(d81), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d81h4l1
