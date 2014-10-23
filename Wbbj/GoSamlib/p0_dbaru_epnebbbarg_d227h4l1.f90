module     p0_dbaru_epnebbbarg_d227h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d227h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd227h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc227(24)
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk2 = dotproduct(Q,k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      acc227(1)=abb227(10)
      acc227(2)=abb227(11)
      acc227(3)=abb227(12)
      acc227(4)=abb227(13)
      acc227(5)=abb227(14)
      acc227(6)=abb227(15)
      acc227(7)=abb227(16)
      acc227(8)=abb227(18)
      acc227(9)=abb227(20)
      acc227(10)=abb227(25)
      acc227(11)=abb227(26)
      acc227(12)=abb227(29)
      acc227(13)=abb227(33)
      acc227(14)=abb227(40)
      acc227(15)=abb227(44)
      acc227(16)=abb227(53)
      acc227(17)=acc227(3)*Qspvak4k2
      acc227(18)=acc227(4)*Qspvak4k3
      acc227(19)=Qspval6k3*acc227(11)
      acc227(20)=Qspval6k2*acc227(16)
      acc227(21)=Qspval5k3*acc227(13)
      acc227(22)=Qspval5k2*acc227(14)
      acc227(23)=Qspvak1k3*acc227(6)
      acc227(24)=Qspvak1k2*acc227(8)
      acc227(17)=acc227(24)+acc227(23)+acc227(22)+acc227(21)+acc227(20)+acc227(&
      &19)+acc227(9)+acc227(18)+acc227(17)
      acc227(17)=Qspvak7k2*acc227(17)
      acc227(18)=-Qspk2+Qspk4+Qspk3
      acc227(19)=acc227(15)*Qspvak7k2
      acc227(19)=acc227(19)+acc227(12)
      acc227(18)=acc227(19)*acc227(18)
      acc227(19)=acc227(2)*Qspvak4k2
      acc227(20)=acc227(10)*Qspvak4k3
      acc227(21)=Qspk7*acc227(7)
      acc227(22)=QspQ*acc227(5)
      brack=acc227(1)+acc227(17)+acc227(18)+acc227(19)+acc227(20)+acc227(21)+ac&
      &c227(22)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd227h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d227
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d227 = 0.0_ki
      d227 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d227, ki), aimag(d227), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d227h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd227h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d227
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d227 = 0.0_ki
      d227 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d227, ki), aimag(d227), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d227h4l1
