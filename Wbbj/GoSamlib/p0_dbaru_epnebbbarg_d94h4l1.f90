module     p0_dbaru_epnebbbarg_d94h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d94h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd94h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc94(20)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      acc94(1)=abb94(9)
      acc94(2)=abb94(10)
      acc94(3)=abb94(11)
      acc94(4)=abb94(12)
      acc94(5)=abb94(13)
      acc94(6)=abb94(14)
      acc94(7)=abb94(15)
      acc94(8)=abb94(16)
      acc94(9)=abb94(17)
      acc94(10)=abb94(18)
      acc94(11)=abb94(20)
      acc94(12)=abb94(21)
      acc94(13)=abb94(22)
      acc94(14)=abb94(24)
      acc94(15)=abb94(25)
      acc94(16)=Qspvak1k2*acc94(13)
      acc94(17)=Qspvak4k2*acc94(15)
      acc94(16)=acc94(17)+acc94(11)+acc94(16)
      acc94(16)=Qspvak7k2*acc94(16)
      acc94(17)=Qspvak1k2*acc94(8)
      acc94(18)=Qspvak4k2*acc94(14)
      acc94(19)=Qspval5k2*acc94(6)
      acc94(20)=Qspval6k2*acc94(5)
      acc94(16)=acc94(20)+acc94(19)+acc94(16)+acc94(18)+acc94(3)+acc94(17)
      acc94(16)=Qspval6k2*acc94(16)
      acc94(17)=Qspvak1k2*acc94(10)
      acc94(18)=Qspvak4k2*acc94(12)
      acc94(17)=acc94(18)+acc94(2)+acc94(17)
      acc94(17)=Qspvak7k2*acc94(17)
      acc94(18)=Qspvak1k2*acc94(7)
      acc94(19)=Qspvak4k2*acc94(9)
      acc94(20)=Qspval5k2*acc94(4)
      acc94(17)=acc94(20)+acc94(17)+acc94(19)+acc94(1)+acc94(18)
      acc94(17)=Qspval5k2*acc94(17)
      brack=acc94(16)+acc94(17)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd94h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d94
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d94 = 0.0_ki
      d94 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d94, ki), aimag(d94), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d94h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd94h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d94
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d94 = 0.0_ki
      d94 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d94, ki), aimag(d94), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d94h4l1
