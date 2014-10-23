module     p0_dbaru_epnebbbarg_d179h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d179h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd179h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc179(37)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspl5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspl5 = dotproduct(Q,l5)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      acc179(1)=abb179(13)
      acc179(2)=abb179(14)
      acc179(3)=abb179(15)
      acc179(4)=abb179(16)
      acc179(5)=abb179(17)
      acc179(6)=abb179(18)
      acc179(7)=abb179(19)
      acc179(8)=abb179(20)
      acc179(9)=abb179(21)
      acc179(10)=abb179(22)
      acc179(11)=abb179(23)
      acc179(12)=abb179(24)
      acc179(13)=abb179(25)
      acc179(14)=abb179(26)
      acc179(15)=abb179(28)
      acc179(16)=abb179(29)
      acc179(17)=abb179(30)
      acc179(18)=abb179(32)
      acc179(19)=abb179(40)
      acc179(20)=abb179(43)
      acc179(21)=abb179(46)
      acc179(22)=abb179(49)
      acc179(23)=abb179(52)
      acc179(24)=abb179(90)
      acc179(25)=abb179(94)
      acc179(26)=Qspk4+Qspk3
      acc179(27)=acc179(26)-Qspk2
      acc179(28)=-acc179(17)*acc179(27)
      acc179(29)=Qspvak1k2*acc179(13)
      acc179(30)=Qspvak4k2*acc179(16)
      acc179(31)=Qspvak4k3*acc179(18)
      acc179(28)=acc179(31)+acc179(30)+acc179(29)+acc179(14)+acc179(28)
      acc179(28)=Qspvak2l5*acc179(28)
      acc179(29)=-acc179(5)*acc179(27)
      acc179(30)=Qspvak1k2*acc179(11)
      acc179(31)=Qspvak4k2*acc179(4)
      acc179(32)=Qspvak4k3*acc179(10)
      acc179(29)=acc179(32)+acc179(31)+acc179(30)+acc179(2)+acc179(29)
      acc179(29)=Qspvak2l6*acc179(29)
      acc179(27)=acc179(19)*acc179(27)
      acc179(30)=Qspvak1k2*acc179(8)
      acc179(31)=Qspvak4k2*acc179(21)
      acc179(32)=Qspvak4k3*acc179(23)
      acc179(27)=acc179(32)+acc179(31)+acc179(30)+acc179(1)+acc179(27)
      acc179(27)=Qspvak2k7*acc179(27)
      acc179(26)=-acc179(20)*acc179(26)
      acc179(30)=acc179(22)*Qspl5
      acc179(31)=acc179(15)*QspQ
      acc179(32)=acc179(7)*Qspvak1k3
      acc179(33)=-Qspl6-Qspk7
      acc179(33)=acc179(9)*acc179(33)
      acc179(34)=Qspk2*acc179(3)
      acc179(35)=Qspvak1k2*acc179(12)
      acc179(36)=Qspvak4k2*acc179(25)
      acc179(37)=Qspvak4k3*acc179(24)
      brack=acc179(6)+acc179(26)+acc179(27)+acc179(28)+acc179(29)+acc179(30)+ac&
      &c179(31)+acc179(32)+acc179(33)+acc179(34)+acc179(35)+acc179(36)+acc179(3&
      &7)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd179h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d179
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d179 = 0.0_ki
      d179 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d179, ki), aimag(d179), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d179h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd179h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d179
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d179 = 0.0_ki
      d179 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d179, ki), aimag(d179), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d179h3l1
