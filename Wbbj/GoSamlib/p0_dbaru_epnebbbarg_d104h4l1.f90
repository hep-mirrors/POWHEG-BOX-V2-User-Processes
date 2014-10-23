module     p0_dbaru_epnebbbarg_d104h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d104h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd104h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc104(37)
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk1
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk1 = dotproduct(Q,k1)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      acc104(1)=abb104(11)
      acc104(2)=abb104(12)
      acc104(3)=abb104(13)
      acc104(4)=abb104(14)
      acc104(5)=abb104(15)
      acc104(6)=abb104(16)
      acc104(7)=abb104(17)
      acc104(8)=abb104(18)
      acc104(9)=abb104(19)
      acc104(10)=abb104(20)
      acc104(11)=abb104(21)
      acc104(12)=abb104(22)
      acc104(13)=abb104(23)
      acc104(14)=abb104(24)
      acc104(15)=abb104(25)
      acc104(16)=abb104(26)
      acc104(17)=abb104(35)
      acc104(18)=abb104(45)
      acc104(19)=abb104(61)
      acc104(20)=abb104(66)
      acc104(21)=abb104(68)
      acc104(22)=abb104(69)
      acc104(23)=abb104(74)
      acc104(24)=abb104(75)
      acc104(25)=abb104(77)
      acc104(26)=abb104(78)
      acc104(27)=abb104(80)
      acc104(28)=abb104(82)
      acc104(29)=acc104(11)*Qspvak7k2
      acc104(30)=acc104(12)*Qspval6k2
      acc104(31)=acc104(13)*Qspval5k2
      acc104(29)=acc104(31)+acc104(30)+acc104(29)+acc104(5)
      acc104(29)=acc104(29)*Qspvak1k2
      acc104(30)=acc104(1)*Qspvak7k2
      acc104(31)=acc104(3)*Qspval5k2
      acc104(32)=acc104(4)*Qspval6k2
      acc104(33)=acc104(8)*Qspvak4k2
      acc104(34)=Qspvak3k2*acc104(6)
      acc104(29)=acc104(32)+acc104(31)+acc104(30)+acc104(29)+acc104(34)+acc104(&
      &33)+acc104(2)
      acc104(29)=Qspvak4k3*acc104(29)
      acc104(30)=-acc104(7)*Qspvak4k2
      acc104(31)=acc104(23)*Qspvak7k2
      acc104(32)=-acc104(24)*Qspval6k2
      acc104(33)=-acc104(28)*Qspval5k2
      acc104(30)=acc104(33)+acc104(32)+acc104(31)-acc104(19)+acc104(30)
      acc104(31)=Qspk3+Qspk4
      acc104(30)=acc104(31)*acc104(30)
      acc104(31)=acc104(6)*Qspvak4k2
      acc104(32)=acc104(20)*Qspval6k2
      acc104(33)=acc104(22)*Qspvak7k2
      acc104(34)=acc104(27)*Qspval5k2
      acc104(31)=acc104(34)+acc104(33)+acc104(32)+acc104(17)+acc104(31)
      acc104(31)=QspQ*acc104(31)
      acc104(32)=acc104(10)*Qspvak7k2
      acc104(33)=acc104(14)*Qspval6k2
      acc104(34)=acc104(15)*Qspval5k2
      acc104(32)=acc104(34)+acc104(33)+acc104(32)+acc104(9)
      acc104(32)=Qspvak1k3*acc104(32)
      acc104(33)=Qspk1+Qspl5+Qspl6+Qspk7
      acc104(33)=acc104(18)*acc104(33)
      acc104(34)=acc104(16)*Qspvak1k2
      acc104(35)=acc104(21)*Qspvak7k2
      acc104(36)=acc104(25)*Qspval6k2
      acc104(37)=acc104(26)*Qspval5k2
      brack=acc104(29)+acc104(30)+acc104(31)+acc104(32)+acc104(33)+acc104(34)+a&
      &cc104(35)+acc104(36)+acc104(37)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd104h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d104
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d104 = 0.0_ki
      d104 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d104, ki), aimag(d104), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d104h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd104h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d104
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d104 = 0.0_ki
      d104 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d104, ki), aimag(d104), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d104h4l1
