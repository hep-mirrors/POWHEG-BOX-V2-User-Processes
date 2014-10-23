module     p0_dbaru_epnebbbarg_d38h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d38h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd38h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc38(41)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7l5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      QspQ = dotproduct(Q,Q)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
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
      acc38(11)=abb38(22)
      acc38(12)=abb38(23)
      acc38(13)=abb38(24)
      acc38(14)=abb38(25)
      acc38(15)=abb38(26)
      acc38(16)=abb38(27)
      acc38(17)=abb38(28)
      acc38(18)=abb38(30)
      acc38(19)=abb38(32)
      acc38(20)=abb38(33)
      acc38(21)=abb38(35)
      acc38(22)=abb38(36)
      acc38(23)=abb38(37)
      acc38(24)=abb38(47)
      acc38(25)=abb38(51)
      acc38(26)=abb38(60)
      acc38(27)=abb38(68)
      acc38(28)=abb38(70)
      acc38(29)=Qspvak1k2*acc38(14)
      acc38(30)=Qspvak1k3*acc38(17)
      acc38(31)=Qspvak7k2*acc38(22)
      acc38(32)=Qspvak7k3*acc38(21)
      acc38(33)=Qspvak4k2*acc38(6)
      acc38(34)=Qspvak4k3*acc38(3)
      acc38(35)=Qspk4+Qspk3
      acc38(36)=acc38(35)-Qspk2
      acc38(37)=acc38(18)*acc38(36)
      acc38(29)=acc38(37)+acc38(34)+acc38(33)+acc38(32)+acc38(31)+acc38(30)+acc&
      &38(4)+acc38(29)
      acc38(29)=Qspvak2l5*acc38(29)
      acc38(30)=Qspvak1k2*acc38(5)
      acc38(31)=Qspvak1k3*acc38(12)
      acc38(32)=Qspvak7k2*acc38(20)
      acc38(33)=Qspvak7k3*acc38(19)
      acc38(34)=Qspvak4k2*acc38(13)
      acc38(37)=Qspvak4k3*acc38(9)
      acc38(36)=acc38(15)*acc38(36)
      acc38(30)=acc38(36)+acc38(37)+acc38(34)+acc38(33)+acc38(32)+acc38(31)+acc&
      &38(7)+acc38(30)
      acc38(30)=Qspvak2l6*acc38(30)
      acc38(31)=acc38(26)*acc38(35)
      acc38(32)=acc38(25)*Qspvak7l6
      acc38(33)=acc38(24)*Qspvak7l5
      acc38(34)=acc38(16)*QspQ
      acc38(35)=acc38(10)*Qspvak1l6
      acc38(36)=acc38(8)*Qspvak1l5
      acc38(37)=Qspk1-Qspk7
      acc38(37)=acc38(28)*acc38(37)
      acc38(38)=Qspl5+Qspl6
      acc38(38)=acc38(11)*acc38(38)
      acc38(39)=Qspk2*acc38(23)
      acc38(40)=Qspvak4k2*acc38(2)
      acc38(41)=Qspvak4k3*acc38(1)
      brack=acc38(27)+acc38(29)+acc38(30)+acc38(31)+acc38(32)+acc38(33)+acc38(3&
      &4)+acc38(35)+acc38(36)+acc38(37)+acc38(38)+acc38(39)+acc38(40)+acc38(41)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd38h7
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
   & bind(c, name="p0_dbaru_epnebbbarg_d38h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd38h7
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
end module p0_dbaru_epnebbbarg_d38h7l1
