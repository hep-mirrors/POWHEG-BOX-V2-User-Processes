module     p0_dbaru_epnebbbarg_d38h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d38h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd38h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc38(31)
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      acc38(1)=abb38(12)
      acc38(2)=abb38(13)
      acc38(3)=abb38(14)
      acc38(4)=abb38(15)
      acc38(5)=abb38(16)
      acc38(6)=abb38(17)
      acc38(7)=abb38(18)
      acc38(8)=abb38(19)
      acc38(9)=abb38(20)
      acc38(10)=abb38(21)
      acc38(11)=abb38(23)
      acc38(12)=abb38(24)
      acc38(13)=abb38(25)
      acc38(14)=abb38(27)
      acc38(15)=abb38(30)
      acc38(16)=abb38(31)
      acc38(17)=abb38(33)
      acc38(18)=abb38(37)
      acc38(19)=abb38(42)
      acc38(20)=abb38(48)
      acc38(21)=abb38(81)
      acc38(22)=Qspvak1k3*acc38(13)
      acc38(23)=Qspvak1k2*acc38(11)
      acc38(24)=Qspvak4k2*acc38(7)
      acc38(25)=Qspvak4k3*acc38(10)
      acc38(26)=Qspk4+Qspk3
      acc38(27)=acc38(26)-Qspk2
      acc38(28)=acc38(15)*acc38(27)
      acc38(22)=acc38(28)+acc38(25)+acc38(24)+acc38(23)+acc38(4)+acc38(22)
      acc38(22)=Qspval5k2*acc38(22)
      acc38(23)=Qspvak1k3*acc38(8)
      acc38(24)=Qspvak1k2*acc38(14)
      acc38(25)=Qspvak4k2*acc38(12)
      acc38(28)=Qspvak4k3*acc38(18)
      acc38(27)=acc38(19)*acc38(27)
      acc38(23)=acc38(27)+acc38(28)+acc38(25)+acc38(24)+acc38(16)+acc38(23)
      acc38(23)=Qspval6k2*acc38(23)
      acc38(24)=-acc38(21)*acc38(26)
      acc38(25)=acc38(3)*QspQ
      acc38(26)=Qspk1-Qspk7
      acc38(26)=acc38(9)*acc38(26)
      acc38(27)=-Qspl5-Qspl6
      acc38(27)=acc38(2)*acc38(27)
      acc38(28)=Qspk2*acc38(20)
      acc38(29)=Qspvak1k2*acc38(6)
      acc38(30)=Qspvak4k2*acc38(5)
      acc38(31)=Qspvak4k3*acc38(17)
      brack=acc38(1)+acc38(22)+acc38(23)+acc38(24)+acc38(25)+acc38(26)+acc38(27&
      &)+acc38(28)+acc38(29)+acc38(30)+acc38(31)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd38h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d38
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d38 = 0.0_ki
      d38 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d38, ki), aimag(d38), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d38h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd38h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d38
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6-k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d38 = 0.0_ki
      d38 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d38, ki), aimag(d38), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d38h0l1
