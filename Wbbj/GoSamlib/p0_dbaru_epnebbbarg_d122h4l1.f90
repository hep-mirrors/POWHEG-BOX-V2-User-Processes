module     p0_dbaru_epnebbbarg_d122h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d122h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd122h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc122(45)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval6l5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak3k2
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      acc122(1)=abb122(12)
      acc122(2)=abb122(13)
      acc122(3)=abb122(14)
      acc122(4)=abb122(15)
      acc122(5)=abb122(16)
      acc122(6)=abb122(17)
      acc122(7)=abb122(18)
      acc122(8)=abb122(19)
      acc122(9)=abb122(20)
      acc122(10)=abb122(21)
      acc122(11)=abb122(22)
      acc122(12)=abb122(23)
      acc122(13)=abb122(24)
      acc122(14)=abb122(25)
      acc122(15)=abb122(26)
      acc122(16)=abb122(27)
      acc122(17)=abb122(28)
      acc122(18)=abb122(29)
      acc122(19)=abb122(30)
      acc122(20)=abb122(31)
      acc122(21)=abb122(32)
      acc122(22)=abb122(33)
      acc122(23)=abb122(34)
      acc122(24)=abb122(37)
      acc122(25)=abb122(45)
      acc122(26)=abb122(46)
      acc122(27)=abb122(47)
      acc122(28)=abb122(51)
      acc122(29)=abb122(52)
      acc122(30)=abb122(61)
      acc122(31)=abb122(67)
      acc122(32)=Qspk4+Qspk3
      acc122(33)=acc122(32)-Qspk2
      acc122(34)=acc122(19)*acc122(33)
      acc122(35)=acc122(12)*Qspvak1l6
      acc122(36)=acc122(5)*Qspvak7k3
      acc122(37)=Qspvak4k3*acc122(15)
      acc122(38)=Qspvak1k2*acc122(23)
      acc122(39)=Qspvak4k2*acc122(2)
      acc122(34)=acc122(39)+acc122(38)+acc122(37)+acc122(36)+acc122(13)+acc122(&
      &35)+acc122(34)
      acc122(34)=Qspval6k2*acc122(34)
      acc122(33)=-acc122(31)*acc122(33)
      acc122(35)=acc122(12)*Qspvak1k7
      acc122(36)=-acc122(5)*Qspval6k3
      acc122(37)=Qspvak4k3*acc122(10)
      acc122(38)=Qspvak1k2*acc122(21)
      acc122(39)=Qspvak4k2*acc122(3)
      acc122(33)=acc122(39)+acc122(38)+acc122(37)+acc122(36)+acc122(16)+acc122(&
      &35)+acc122(33)
      acc122(33)=Qspvak7k2*acc122(33)
      acc122(35)=-acc122(18)*acc122(32)
      acc122(36)=Qspvak4k3*acc122(9)
      acc122(37)=Qspvak4k2*acc122(8)
      acc122(35)=acc122(37)+acc122(36)+acc122(7)+acc122(35)
      acc122(35)=Qspvak4k2*acc122(35)
      acc122(36)=-Qspl6-Qspk7
      acc122(36)=acc122(22)*acc122(36)
      acc122(37)=Qspk2*acc122(20)
      acc122(36)=acc122(37)+acc122(17)+acc122(36)
      acc122(36)=Qspvak1k2*acc122(36)
      acc122(32)=acc122(24)*acc122(32)
      acc122(37)=acc122(29)*Qspval5k2
      acc122(38)=acc122(28)*Qspvak7l5
      acc122(39)=acc122(26)*Qspval6l5
      acc122(40)=acc122(25)*QspQ
      acc122(41)=acc122(1)*Qspvak1k3
      acc122(42)=Qspval6k3*acc122(27)
      acc122(43)=Qspvak7k3*acc122(30)
      acc122(44)=Qspk2*acc122(14)
      acc122(45)=acc122(11)*Qspvak3k2
      acc122(45)=acc122(45)+acc122(6)
      acc122(45)=Qspvak4k3*acc122(45)
      brack=acc122(4)+acc122(32)+acc122(33)+acc122(34)+acc122(35)+acc122(36)+ac&
      &c122(37)+acc122(38)+acc122(39)+acc122(40)+acc122(41)+acc122(42)+acc122(4&
      &3)+acc122(44)+acc122(45)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd122h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d122
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d122 = 0.0_ki
      d122 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d122, ki), aimag(d122), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d122h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd122h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d122
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d122 = 0.0_ki
      d122 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d122, ki), aimag(d122), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d122h4l1
