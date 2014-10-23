module     p0_dbaru_epnebbbarg_d82h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d82h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd82h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc82(41)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k2
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc82(1)=abb82(8)
      acc82(2)=abb82(9)
      acc82(3)=abb82(10)
      acc82(4)=abb82(11)
      acc82(5)=abb82(12)
      acc82(6)=abb82(13)
      acc82(7)=abb82(14)
      acc82(8)=abb82(15)
      acc82(9)=abb82(16)
      acc82(10)=abb82(17)
      acc82(11)=abb82(18)
      acc82(12)=abb82(19)
      acc82(13)=abb82(20)
      acc82(14)=abb82(22)
      acc82(15)=abb82(23)
      acc82(16)=abb82(24)
      acc82(17)=abb82(26)
      acc82(18)=abb82(27)
      acc82(19)=abb82(29)
      acc82(20)=abb82(30)
      acc82(21)=abb82(33)
      acc82(22)=abb82(34)
      acc82(23)=abb82(36)
      acc82(24)=abb82(37)
      acc82(25)=abb82(38)
      acc82(26)=abb82(39)
      acc82(27)=abb82(40)
      acc82(28)=abb82(41)
      acc82(29)=abb82(42)
      acc82(30)=abb82(43)
      acc82(31)=abb82(45)
      acc82(32)=Qspk4+Qspk3
      acc82(33)=acc82(24)*acc82(32)
      acc82(34)=Qspvak1k3*acc82(7)
      acc82(35)=Qspk1*acc82(26)
      acc82(36)=QspQ*acc82(6)
      acc82(37)=Qspvak1k2*acc82(12)
      acc82(38)=Qspvak1k2*acc82(13)
      acc82(38)=acc82(30)+acc82(38)
      acc82(38)=Qspvak4k3*acc82(38)
      acc82(33)=acc82(38)+acc82(37)+acc82(36)+acc82(35)+acc82(34)+acc82(14)+acc&
      &82(33)
      acc82(33)=Qspval5k2*acc82(33)
      acc82(34)=-acc82(27)*acc82(32)
      acc82(35)=Qspvak1k3*acc82(2)
      acc82(36)=Qspk1*acc82(28)
      acc82(37)=QspQ*acc82(19)
      acc82(38)=Qspvak1k2*acc82(16)
      acc82(39)=Qspvak1k2*acc82(9)
      acc82(39)=acc82(29)+acc82(39)
      acc82(39)=Qspvak4k3*acc82(39)
      acc82(34)=acc82(39)+acc82(38)+acc82(37)+acc82(36)+acc82(35)+acc82(25)+acc&
      &82(34)
      acc82(34)=Qspval6k2*acc82(34)
      acc82(35)=-acc82(20)*Qspvak3k2
      acc82(36)=Qspvak1k2*acc82(3)
      acc82(37)=Qspvak4k2*acc82(31)
      acc82(35)=acc82(37)+acc82(35)+acc82(36)
      acc82(35)=Qspvak4k3*acc82(35)
      acc82(32)=-Qspk1+acc82(32)
      acc82(32)=acc82(22)*acc82(32)
      acc82(36)=-QspQ*acc82(20)
      acc82(32)=acc82(36)+acc82(23)+acc82(32)
      acc82(32)=Qspvak4k2*acc82(32)
      acc82(36)=Qspk7*acc82(17)
      acc82(37)=Qspvak1k3*acc82(1)
      acc82(38)=Qspk1*acc82(18)
      acc82(39)=QspQ*acc82(15)
      acc82(40)=Qspvak1k2*acc82(10)
      acc82(41)=Qspvak4k3*acc82(11)
      acc82(41)=acc82(21)+acc82(41)
      acc82(41)=Qspvak7k2*acc82(41)
      acc82(32)=acc82(41)+acc82(34)+acc82(33)+acc82(35)+acc82(32)+acc82(40)+acc&
      &82(39)+acc82(38)+acc82(36)+acc82(37)
      acc82(32)=Qspvak7k2*acc82(32)
      acc82(33)=Qspval5k2*acc82(8)
      acc82(34)=Qspval6k2*acc82(4)
      acc82(33)=acc82(34)+acc82(33)
      acc82(33)=Qspk7*acc82(33)
      acc82(34)=QspQ*acc82(5)
      brack=acc82(32)+acc82(33)+acc82(34)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd82h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d82
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d82 = 0.0_ki
      d82 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d82, ki), aimag(d82), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d82h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd82h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d82
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d82 = 0.0_ki
      d82 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d82, ki), aimag(d82), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d82h4l1
