module     p0_dbaru_epnebbbarg_d119h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d119h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd119h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc119(19)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      acc119(1)=abb119(10)
      acc119(2)=abb119(11)
      acc119(3)=abb119(12)
      acc119(4)=abb119(13)
      acc119(5)=abb119(14)
      acc119(6)=abb119(15)
      acc119(7)=abb119(16)
      acc119(8)=abb119(17)
      acc119(9)=abb119(19)
      acc119(10)=abb119(20)
      acc119(11)=abb119(27)
      acc119(12)=abb119(33)
      acc119(13)=Qspvak2l5*acc119(7)
      acc119(14)=Qspk2*acc119(3)
      acc119(13)=acc119(14)+acc119(8)+acc119(13)
      acc119(13)=Qspvak1k2*acc119(13)
      acc119(14)=Qspvak2l5*acc119(11)
      acc119(15)=Qspk2*acc119(6)
      acc119(14)=acc119(15)+acc119(9)+acc119(14)
      acc119(14)=Qspvak4k2*acc119(14)
      acc119(15)=acc119(4)*Qspvak1l6
      acc119(16)=acc119(2)*Qspvak4l6
      acc119(17)=acc119(1)*Qspvak2l6
      acc119(18)=-QspQ-Qspl6
      acc119(18)=acc119(12)*acc119(18)
      acc119(19)=Qspk2*acc119(10)
      brack=acc119(5)+acc119(13)+acc119(14)+acc119(15)+acc119(16)+acc119(17)+ac&
      &c119(18)+acc119(19)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd119h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d119
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d119 = 0.0_ki
      d119 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d119, ki), aimag(d119), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d119h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd119h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d119
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d119 = 0.0_ki
      d119 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d119, ki), aimag(d119), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d119h7l1
