module     p0_dbaru_epnebbbarg_d12h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d12h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd12h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc12(36)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k7
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      acc12(1)=abb12(9)
      acc12(2)=abb12(10)
      acc12(3)=abb12(11)
      acc12(4)=abb12(12)
      acc12(5)=abb12(13)
      acc12(6)=abb12(14)
      acc12(7)=abb12(15)
      acc12(8)=abb12(16)
      acc12(9)=abb12(17)
      acc12(10)=abb12(18)
      acc12(11)=abb12(19)
      acc12(12)=abb12(20)
      acc12(13)=abb12(21)
      acc12(14)=abb12(23)
      acc12(15)=abb12(25)
      acc12(16)=abb12(26)
      acc12(17)=abb12(27)
      acc12(18)=abb12(28)
      acc12(19)=abb12(29)
      acc12(20)=abb12(31)
      acc12(21)=abb12(32)
      acc12(22)=abb12(33)
      acc12(23)=abb12(34)
      acc12(24)=abb12(35)
      acc12(25)=abb12(36)
      acc12(26)=abb12(39)
      acc12(27)=abb12(40)
      acc12(28)=Qspk4+Qspk3
      acc12(29)=acc12(28)+QspQ
      acc12(30)=-acc12(23)*acc12(29)
      acc12(31)=Qspvak1k3*acc12(19)
      acc12(32)=Qspvak4k2*acc12(3)
      acc12(33)=Qspvak4k3*acc12(1)
      acc12(34)=Qspvak4k3*acc12(9)
      acc12(34)=acc12(26)+acc12(34)
      acc12(34)=Qspvak1k2*acc12(34)
      acc12(30)=acc12(34)+acc12(33)+acc12(32)+acc12(16)+acc12(31)+acc12(30)
      acc12(30)=Qspval5k2*acc12(30)
      acc12(29)=-acc12(21)*acc12(29)
      acc12(31)=Qspvak1k3*acc12(11)
      acc12(32)=Qspvak4k2*acc12(6)
      acc12(33)=Qspvak4k3*acc12(7)
      acc12(34)=Qspvak4k3*acc12(5)
      acc12(34)=acc12(27)+acc12(34)
      acc12(34)=Qspvak1k2*acc12(34)
      acc12(29)=acc12(34)+acc12(33)+acc12(32)+acc12(17)+acc12(31)+acc12(29)
      acc12(29)=Qspval6k2*acc12(29)
      acc12(31)=acc12(25)*Qspvak7k2
      acc12(32)=-acc12(18)*Qspvak3k2
      acc12(33)=Qspvak4k2*acc12(20)
      acc12(31)=acc12(33)+acc12(31)+acc12(32)
      acc12(31)=Qspvak4k3*acc12(31)
      acc12(28)=acc12(28)-Qspk2
      acc12(32)=-acc12(24)*acc12(28)
      acc12(33)=QspQ*acc12(22)
      acc12(34)=Qspvak4k3*acc12(2)
      acc12(32)=acc12(34)+acc12(33)+acc12(32)
      acc12(32)=Qspvak1k2*acc12(32)
      acc12(28)=acc12(14)*acc12(28)
      acc12(33)=QspQ*acc12(18)
      acc12(28)=acc12(33)+acc12(4)+acc12(28)
      acc12(28)=Qspvak4k2*acc12(28)
      acc12(33)=acc12(12)*Qspk1
      acc12(34)=acc12(10)*Qspvak1k7
      acc12(35)=Qspvak3k2*acc12(15)
      acc12(36)=QspQ*acc12(8)
      brack=acc12(13)+acc12(28)+acc12(29)+acc12(30)+acc12(31)+acc12(32)+acc12(3&
      &3)+acc12(34)+acc12(35)+acc12(36)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd12h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d12
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d12 = 0.0_ki
      d12 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d12, ki), aimag(d12), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d12h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd12h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d12
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d12 = 0.0_ki
      d12 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d12, ki), aimag(d12), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d12h0l1
