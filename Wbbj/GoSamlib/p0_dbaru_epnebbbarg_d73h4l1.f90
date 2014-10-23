module     p0_dbaru_epnebbbarg_d73h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d73h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd73h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc73(19)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspl6
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspl6 = dotproduct(Q,l6)
      acc73(1)=abb73(7)
      acc73(2)=abb73(8)
      acc73(3)=abb73(9)
      acc73(4)=abb73(10)
      acc73(5)=abb73(11)
      acc73(6)=abb73(12)
      acc73(7)=abb73(13)
      acc73(8)=abb73(14)
      acc73(9)=abb73(16)
      acc73(10)=abb73(17)
      acc73(11)=abb73(18)
      acc73(12)=abb73(19)
      acc73(13)=abb73(20)
      acc73(14)=abb73(21)
      acc73(15)=acc73(1)*Qspvak1k2
      acc73(15)=acc73(5)+acc73(15)
      acc73(15)=acc73(15)*Qspvak4k3
      acc73(16)=acc73(12)*Qspvak1k2
      acc73(15)=acc73(16)+acc73(4)+acc73(15)
      acc73(15)=Qspval6k2*acc73(15)
      acc73(16)=acc73(8)*Qspvak4k2
      acc73(17)=acc73(13)*Qspval6k2
      acc73(16)=acc73(17)+acc73(9)+acc73(16)
      acc73(16)=Qspk2*acc73(16)
      acc73(17)=acc73(10)*Qspval6k2
      acc73(18)=acc73(14)*Qspvak4k2
      acc73(17)=acc73(18)+acc73(11)+acc73(17)
      acc73(17)=QspQ*acc73(17)
      acc73(18)=acc73(2)*Qspvak1k2
      acc73(18)=acc73(3)+acc73(18)
      acc73(18)=Qspval6k3*acc73(18)
      acc73(19)=Qspl6*acc73(7)
      brack=acc73(6)+acc73(15)+acc73(16)+acc73(17)+acc73(18)+acc73(19)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd73h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d73
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d73 = 0.0_ki
      d73 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d73, ki), aimag(d73), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d73h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd73h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d73
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d73 = 0.0_ki
      d73 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d73, ki), aimag(d73), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d73h4l1
