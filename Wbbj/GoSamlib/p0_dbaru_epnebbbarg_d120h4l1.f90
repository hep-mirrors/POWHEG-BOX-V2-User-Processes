module     p0_dbaru_epnebbbarg_d120h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d120h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd120h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc120(37)
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspk1
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspk1 = dotproduct(Q,k1)
      acc120(1)=abb120(10)
      acc120(2)=abb120(11)
      acc120(3)=abb120(12)
      acc120(4)=abb120(14)
      acc120(5)=abb120(15)
      acc120(6)=abb120(16)
      acc120(7)=abb120(18)
      acc120(8)=abb120(19)
      acc120(9)=abb120(20)
      acc120(10)=abb120(21)
      acc120(11)=abb120(23)
      acc120(12)=abb120(24)
      acc120(13)=abb120(25)
      acc120(14)=abb120(26)
      acc120(15)=abb120(27)
      acc120(16)=abb120(28)
      acc120(17)=abb120(29)
      acc120(18)=abb120(32)
      acc120(19)=abb120(37)
      acc120(20)=abb120(38)
      acc120(21)=abb120(39)
      acc120(22)=abb120(41)
      acc120(23)=abb120(43)
      acc120(24)=-Qspvak7k3*acc120(9)
      acc120(25)=Qspval5k3*acc120(13)
      acc120(26)=acc120(1)*Qspvak4k2
      acc120(27)=acc120(6)*Qspvak4k3
      acc120(28)=Qspval6k3*acc120(12)
      acc120(24)=acc120(28)+acc120(16)+acc120(27)+acc120(26)+acc120(25)+acc120(&
      &24)
      acc120(24)=Qspvak1k2*acc120(24)
      acc120(25)=-acc120(12)*Qspvak1k3
      acc120(26)=acc120(5)*Qspvak4k2
      acc120(27)=acc120(8)*Qspvak4k3
      acc120(25)=acc120(22)+acc120(27)+acc120(26)+acc120(25)
      acc120(25)=Qspval6k2*acc120(25)
      acc120(26)=acc120(17)*Qspvak1k2
      acc120(27)=acc120(23)*Qspval6k2
      acc120(26)=acc120(26)+acc120(27)
      acc120(27)=Qspk3+Qspk4
      acc120(28)=Qspk2-acc120(27)
      acc120(26)=acc120(26)*acc120(28)
      acc120(28)=acc120(9)*Qspvak1k3
      acc120(28)=acc120(20)+acc120(28)
      acc120(28)=Qspvak7k2*acc120(28)
      acc120(29)=-acc120(13)*Qspvak1k3
      acc120(29)=acc120(18)+acc120(29)
      acc120(29)=Qspval5k2*acc120(29)
      acc120(27)=acc120(11)*acc120(27)
      acc120(30)=acc120(2)*Qspvak4k2
      acc120(31)=acc120(4)*Qspvak4k3
      acc120(32)=acc120(7)*Qspk2
      acc120(33)=acc120(19)*Qspvak7k3
      acc120(34)=acc120(21)*Qspval5k3
      acc120(35)=Qspvak7l6*acc120(15)
      acc120(36)=Qspval5l6*acc120(10)
      acc120(37)=Qspk1*acc120(14)
      brack=acc120(3)+acc120(24)+acc120(25)+acc120(26)+acc120(27)+acc120(28)+ac&
      &c120(29)+acc120(30)+acc120(31)+acc120(32)+acc120(33)+acc120(34)+acc120(3&
      &5)+acc120(36)+acc120(37)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd120h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d120
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d120 = 0.0_ki
      d120 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d120, ki), aimag(d120), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d120h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd120h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d120
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d120 = 0.0_ki
      d120 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d120, ki), aimag(d120), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d120h4l1
