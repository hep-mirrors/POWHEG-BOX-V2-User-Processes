module     p0_dbaru_epnebbbarg_d180h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d180h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd180h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc180(32)
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspl5
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspl5 = dotproduct(Q,l5)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      acc180(1)=abb180(14)
      acc180(2)=abb180(15)
      acc180(3)=abb180(16)
      acc180(4)=abb180(17)
      acc180(5)=abb180(18)
      acc180(6)=abb180(19)
      acc180(7)=abb180(20)
      acc180(8)=abb180(23)
      acc180(9)=abb180(25)
      acc180(10)=abb180(26)
      acc180(11)=abb180(28)
      acc180(12)=abb180(29)
      acc180(13)=abb180(30)
      acc180(14)=abb180(32)
      acc180(15)=abb180(33)
      acc180(16)=abb180(34)
      acc180(17)=abb180(39)
      acc180(18)=abb180(42)
      acc180(19)=abb180(44)
      acc180(20)=abb180(45)
      acc180(21)=abb180(47)
      acc180(22)=acc180(13)*Qspval5k2
      acc180(23)=acc180(16)*Qspvak7k2
      acc180(24)=acc180(17)*Qspval6k2
      acc180(22)=acc180(24)+acc180(23)+acc180(15)+acc180(22)
      acc180(22)=Qspvak4k2*acc180(22)
      acc180(23)=acc180(19)*Qspvak7k2
      acc180(24)=acc180(20)*Qspval6k2
      acc180(25)=acc180(21)*Qspval5k2
      acc180(23)=acc180(25)+acc180(24)+acc180(23)+acc180(18)
      acc180(23)=Qspvak1k3*acc180(23)
      acc180(24)=acc180(3)*Qspvak7k2
      acc180(25)=acc180(4)*Qspval6k2
      acc180(26)=acc180(5)*Qspval5k2
      acc180(24)=acc180(26)+acc180(25)+acc180(24)+acc180(2)
      acc180(24)=Qspvak1k2*acc180(24)
      acc180(25)=Qspl6+Qspk7
      acc180(25)=acc180(10)*acc180(25)
      acc180(26)=acc180(1)*Qspval5k2
      acc180(27)=acc180(6)*Qspval6k2
      acc180(28)=acc180(11)*Qspvak7k2
      acc180(29)=Qspval5k3*acc180(12)
      acc180(30)=Qspl5*acc180(8)
      acc180(31)=Qspk2*acc180(14)
      acc180(32)=QspQ*acc180(9)
      brack=acc180(7)+acc180(22)+acc180(23)+acc180(24)+acc180(25)+acc180(26)+ac&
      &c180(27)+acc180(28)+acc180(29)+acc180(30)+acc180(31)+acc180(32)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd180h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d180
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d180 = 0.0_ki
      d180 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d180, ki), aimag(d180), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d180h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd180h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d180
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d180 = 0.0_ki
      d180 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d180, ki), aimag(d180), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d180h4l1
