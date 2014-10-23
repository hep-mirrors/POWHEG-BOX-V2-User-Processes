module     p0_dbaru_epnebbbarg_d229h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d229h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd229h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc229(40)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      acc229(1)=abb229(15)
      acc229(2)=abb229(16)
      acc229(3)=abb229(17)
      acc229(4)=abb229(18)
      acc229(5)=abb229(19)
      acc229(6)=abb229(20)
      acc229(7)=abb229(21)
      acc229(8)=abb229(22)
      acc229(9)=abb229(23)
      acc229(10)=abb229(24)
      acc229(11)=abb229(25)
      acc229(12)=abb229(26)
      acc229(13)=abb229(27)
      acc229(14)=abb229(29)
      acc229(15)=abb229(30)
      acc229(16)=abb229(31)
      acc229(17)=abb229(32)
      acc229(18)=abb229(33)
      acc229(19)=abb229(35)
      acc229(20)=abb229(36)
      acc229(21)=abb229(49)
      acc229(22)=abb229(50)
      acc229(23)=abb229(58)
      acc229(24)=abb229(62)
      acc229(25)=abb229(68)
      acc229(26)=abb229(85)
      acc229(27)=abb229(125)
      acc229(28)=abb229(202)
      acc229(29)=Qspk4+Qspk3
      acc229(30)=acc229(29)-Qspk2
      acc229(31)=acc229(24)*acc229(30)
      acc229(32)=Qspvak1k2*acc229(10)
      acc229(33)=Qspvak1k3*acc229(18)
      acc229(34)=Qspvak4k2*acc229(11)
      acc229(35)=Qspvak4k3*acc229(23)
      acc229(31)=acc229(35)+acc229(34)+acc229(33)+acc229(32)+acc229(16)+acc229(&
      &31)
      acc229(31)=Qspval5k2*acc229(31)
      acc229(32)=-acc229(25)*acc229(30)
      acc229(33)=Qspvak1k2*acc229(14)
      acc229(34)=Qspvak1k3*acc229(17)
      acc229(35)=Qspvak4k2*acc229(4)
      acc229(36)=Qspvak4k3*acc229(21)
      acc229(32)=acc229(36)+acc229(35)+acc229(34)+acc229(33)+acc229(19)+acc229(&
      &32)
      acc229(32)=Qspval6k2*acc229(32)
      acc229(30)=-acc229(20)*acc229(30)
      acc229(33)=Qspvak1k2*acc229(5)
      acc229(34)=Qspvak1k3*acc229(15)
      acc229(35)=Qspvak4k2*acc229(1)
      acc229(36)=Qspvak4k3*acc229(9)
      acc229(30)=acc229(36)+acc229(35)+acc229(34)+acc229(33)+acc229(3)+acc229(3&
      &0)
      acc229(30)=Qspvak7k2*acc229(30)
      acc229(29)=-acc229(28)*acc229(29)
      acc229(33)=acc229(27)*Qspk1
      acc229(34)=acc229(8)*QspQ
      acc229(35)=-Qspk7-Qspl5-Qspl6
      acc229(35)=acc229(26)*acc229(35)
      acc229(36)=Qspk2*acc229(22)
      acc229(37)=Qspvak1k2*acc229(6)
      acc229(38)=Qspvak1k3*acc229(13)
      acc229(39)=Qspvak4k2*acc229(2)
      acc229(40)=Qspvak4k3*acc229(12)
      brack=acc229(7)+acc229(29)+acc229(30)+acc229(31)+acc229(32)+acc229(33)+ac&
      &c229(34)+acc229(35)+acc229(36)+acc229(37)+acc229(38)+acc229(39)+acc229(4&
      &0)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd229h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d229
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d229 = 0.0_ki
      d229 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d229, ki), aimag(d229), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d229h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd229h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d229
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d229 = 0.0_ki
      d229 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d229, ki), aimag(d229), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d229h4l1
