module     p0_dbaru_epnebbbarg_d71h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d71h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd71h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc71(35)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4k2
      complex(ki) :: QspQ
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak7k2
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      QspQ = dotproduct(Q,Q)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc71(1)=abb71(7)
      acc71(2)=abb71(8)
      acc71(3)=abb71(9)
      acc71(4)=abb71(10)
      acc71(5)=abb71(11)
      acc71(6)=abb71(12)
      acc71(7)=abb71(13)
      acc71(8)=abb71(14)
      acc71(9)=abb71(15)
      acc71(10)=abb71(16)
      acc71(11)=abb71(17)
      acc71(12)=abb71(18)
      acc71(13)=abb71(19)
      acc71(14)=abb71(20)
      acc71(15)=abb71(21)
      acc71(16)=abb71(22)
      acc71(17)=abb71(23)
      acc71(18)=abb71(24)
      acc71(19)=abb71(26)
      acc71(20)=abb71(28)
      acc71(21)=abb71(29)
      acc71(22)=abb71(30)
      acc71(23)=abb71(31)
      acc71(24)=abb71(32)
      acc71(25)=abb71(33)
      acc71(26)=abb71(34)
      acc71(27)=abb71(35)
      acc71(28)=abb71(36)
      acc71(29)=acc71(10)*Qspvak1k2
      acc71(29)=acc71(29)+acc71(2)
      acc71(29)=Qspvak4k3*acc71(29)
      acc71(30)=acc71(1)*Qspvak1k3
      acc71(31)=acc71(12)*Qspvak1k7
      acc71(32)=acc71(14)*Qspk7
      acc71(33)=acc71(19)*Qspvak4k2
      acc71(34)=acc71(21)*QspQ
      acc71(29)=acc71(34)+acc71(33)+acc71(32)+acc71(13)+acc71(31)+acc71(30)+acc&
      &71(29)
      acc71(29)=acc71(29)*Qspval5k2
      acc71(30)=acc71(7)*Qspvak1k2
      acc71(30)=acc71(8)+acc71(30)
      acc71(30)=Qspvak4k3*acc71(30)
      acc71(31)=acc71(6)*Qspvak1k3
      acc71(32)=acc71(22)*Qspk7
      acc71(33)=acc71(24)*QspQ
      acc71(34)=acc71(25)*Qspvak1k7
      acc71(35)=acc71(26)*Qspvak4k2
      acc71(30)=acc71(35)+acc71(34)+acc71(33)+acc71(32)+acc71(20)+acc71(31)+acc&
      &71(30)
      acc71(30)=acc71(30)*Qspval6k2
      acc71(31)=-Qspl5-Qspl6
      acc71(31)=acc71(5)*acc71(31)
      acc71(29)=acc71(30)+acc71(29)+acc71(31)
      acc71(29)=Qspvak7k2*acc71(29)
      acc71(30)=acc71(18)*Qspval5k2
      acc71(31)=acc71(23)*Qspval6k2
      acc71(30)=acc71(31)+acc71(30)
      acc71(30)=Qspvak4k2*acc71(30)
      acc71(31)=acc71(3)*Qspval5k2
      acc71(32)=acc71(15)*Qspval6k2
      acc71(30)=acc71(32)+acc71(31)+acc71(4)+acc71(30)
      acc71(30)=QspQ*acc71(30)
      acc71(31)=acc71(11)*Qspvak4k2
      acc71(31)=acc71(16)+acc71(31)
      acc71(31)=acc71(31)*Qspval5k2
      acc71(32)=acc71(9)*Qspvak4k2
      acc71(32)=acc71(17)+acc71(32)
      acc71(32)=acc71(32)*Qspval6k2
      acc71(31)=acc71(32)+acc71(31)
      acc71(31)=Qspk7*acc71(31)
      acc71(32)=acc71(27)*Qspval6k2
      acc71(33)=acc71(28)*Qspval5k2
      acc71(32)=acc71(33)+acc71(32)
      acc71(32)=acc71(32)*Qspvak7k2**2
      brack=acc71(29)+acc71(30)+acc71(31)+acc71(32)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd71h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d71
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d71 = 0.0_ki
      d71 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d71, ki), aimag(d71), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d71h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd71h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d71
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d71 = 0.0_ki
      d71 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d71, ki), aimag(d71), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d71h4l1
