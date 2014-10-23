module     p0_dbaru_epnebbbarg_d91h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d91h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd91h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc91(19)
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspl6
      complex(ki) :: QspQ
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspl6 = dotproduct(Q,l6)
      QspQ = dotproduct(Q,Q)
      acc91(1)=abb91(13)
      acc91(2)=abb91(14)
      acc91(3)=abb91(15)
      acc91(4)=abb91(16)
      acc91(5)=abb91(17)
      acc91(6)=abb91(18)
      acc91(7)=abb91(19)
      acc91(8)=abb91(20)
      acc91(9)=abb91(21)
      acc91(10)=abb91(24)
      acc91(11)=abb91(25)
      acc91(12)=acc91(5)*Qspk2
      acc91(13)=acc91(6)*Qspval6k2
      acc91(14)=acc91(7)*Qspval5k2
      acc91(12)=acc91(14)+acc91(13)+acc91(12)
      acc91(12)=Qspvak2l5*acc91(12)
      acc91(13)=acc91(4)*Qspval5k2
      acc91(14)=acc91(9)*Qspval6k2
      acc91(15)=acc91(11)*Qspk2
      acc91(16)=Qspval5l6*acc91(10)
      acc91(17)=Qspvak2l6*acc91(1)
      acc91(18)=Qspl6*acc91(8)
      acc91(19)=QspQ*acc91(2)
      brack=acc91(3)+acc91(12)+acc91(13)+acc91(14)+acc91(15)+acc91(16)+acc91(17&
      &)+acc91(18)+acc91(19)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd91h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d91
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d91 = 0.0_ki
      d91 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d91, ki), aimag(d91), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d91h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd91h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d91
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d91 = 0.0_ki
      d91 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d91, ki), aimag(d91), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d91h7l1
