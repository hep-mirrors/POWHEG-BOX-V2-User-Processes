module     p0_dbaru_epnebbbarg_d225h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d225h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd225h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc225(43)
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk3
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk3 = dotproduct(Q,k3)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      acc225(1)=abb225(15)
      acc225(2)=abb225(16)
      acc225(3)=abb225(17)
      acc225(4)=abb225(18)
      acc225(5)=abb225(19)
      acc225(6)=abb225(20)
      acc225(7)=abb225(21)
      acc225(8)=abb225(22)
      acc225(9)=abb225(23)
      acc225(10)=abb225(24)
      acc225(11)=abb225(25)
      acc225(12)=abb225(26)
      acc225(13)=abb225(27)
      acc225(14)=abb225(29)
      acc225(15)=abb225(30)
      acc225(16)=abb225(31)
      acc225(17)=abb225(32)
      acc225(18)=abb225(33)
      acc225(19)=abb225(36)
      acc225(20)=abb225(40)
      acc225(21)=abb225(42)
      acc225(22)=abb225(48)
      acc225(23)=abb225(68)
      acc225(24)=abb225(80)
      acc225(25)=abb225(129)
      acc225(26)=acc225(20)*Qspvak2l5
      acc225(27)=acc225(22)*Qspvak2l6
      acc225(28)=acc225(24)*Qspvak2k7
      acc225(26)=acc225(28)+acc225(27)+acc225(26)+acc225(14)
      acc225(26)=Qspvak4k2*acc225(26)
      acc225(27)=acc225(7)*Qspvak2k7
      acc225(28)=acc225(10)*Qspvak2l6
      acc225(29)=acc225(11)*Qspvak2l5
      acc225(27)=acc225(29)+acc225(28)+acc225(27)+acc225(5)
      acc225(27)=Qspvak1k2*acc225(27)
      acc225(28)=-Qspk3+Qspl5+Qspl6+Qspk7
      acc225(28)=acc225(25)*acc225(28)
      acc225(29)=acc225(2)*Qspvak2k7
      acc225(30)=acc225(3)*Qspvak2l6
      acc225(31)=acc225(15)*Qspvak2l5
      acc225(32)=Qspvak7k2*acc225(18)
      acc225(33)=Qspval6k2*acc225(21)
      acc225(34)=Qspval5k2*acc225(12)
      acc225(35)=Qspvak4k3*acc225(23)
      acc225(36)=Qspvak4k1*acc225(9)
      acc225(37)=Qspvak3k2*acc225(13)
      acc225(38)=Qspvak1k4*acc225(17)
      acc225(39)=Qspvak1k3*acc225(19)
      acc225(40)=Qspk4*acc225(16)
      acc225(41)=Qspk2*acc225(4)
      acc225(42)=Qspk1*acc225(6)
      acc225(43)=QspQ*acc225(8)
      brack=acc225(1)+acc225(26)+acc225(27)+acc225(28)+acc225(29)+acc225(30)+ac&
      &c225(31)+acc225(32)+acc225(33)+acc225(34)+acc225(35)+acc225(36)+acc225(3&
      &7)+acc225(38)+acc225(39)+acc225(40)+acc225(41)+acc225(42)+acc225(43)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd225h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d225
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d225 = 0.0_ki
      d225 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d225, ki), aimag(d225), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d225h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd225h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d225
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d225 = 0.0_ki
      d225 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d225, ki), aimag(d225), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d225h3l1
