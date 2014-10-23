module     p0_dbaru_epnebbbarg_d180h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d180h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd180h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc180(36)
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspl5
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
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
      acc180(8)=abb180(21)
      acc180(9)=abb180(22)
      acc180(10)=abb180(23)
      acc180(11)=abb180(24)
      acc180(12)=abb180(25)
      acc180(13)=abb180(26)
      acc180(14)=abb180(27)
      acc180(15)=abb180(28)
      acc180(16)=abb180(29)
      acc180(17)=abb180(30)
      acc180(18)=abb180(31)
      acc180(19)=abb180(32)
      acc180(20)=abb180(33)
      acc180(21)=abb180(34)
      acc180(22)=abb180(35)
      acc180(23)=abb180(36)
      acc180(24)=acc180(8)*Qspvak2k7
      acc180(25)=acc180(10)*Qspvak2l6
      acc180(26)=acc180(11)*Qspvak2l5
      acc180(24)=acc180(22)+acc180(26)+acc180(25)+acc180(24)
      acc180(24)=Qspvak4k2*acc180(24)
      acc180(25)=acc180(15)*Qspvak2l5
      acc180(26)=acc180(16)*Qspvak2k7
      acc180(27)=acc180(18)*Qspvak2l6
      acc180(25)=acc180(27)+acc180(26)+acc180(25)+acc180(14)
      acc180(25)=Qspvak1k3*acc180(25)
      acc180(26)=acc180(20)*Qspvak2k7
      acc180(27)=acc180(21)*Qspvak2l6
      acc180(28)=acc180(23)*Qspvak2l5
      acc180(26)=acc180(28)+acc180(27)+acc180(26)+acc180(19)
      acc180(26)=Qspvak1k2*acc180(26)
      acc180(27)=Qspl6+Qspk7
      acc180(27)=acc180(6)*acc180(27)
      acc180(28)=acc180(1)*Qspvak2l6
      acc180(29)=acc180(5)*Qspvak2l5
      acc180(30)=acc180(7)*Qspvak2k7
      acc180(31)=Qspvak4l5*acc180(9)
      acc180(32)=Qspvak2k3*acc180(12)
      acc180(33)=Qspvak1l5*acc180(13)
      acc180(34)=Qspl5*acc180(17)
      acc180(35)=Qspk2*acc180(2)
      acc180(36)=QspQ*acc180(4)
      brack=acc180(3)+acc180(24)+acc180(25)+acc180(26)+acc180(27)+acc180(28)+ac&
      &c180(29)+acc180(30)+acc180(31)+acc180(32)+acc180(33)+acc180(34)+acc180(3&
      &5)+acc180(36)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd180h3
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
   & bind(c, name="p0_dbaru_epnebbbarg_d180h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd180h3
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
end module p0_dbaru_epnebbbarg_d180h3l1
