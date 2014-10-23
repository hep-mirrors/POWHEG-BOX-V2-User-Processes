module     p0_dbaru_epnebbbarg_d77h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d77h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd77h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc77(42)
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4l6
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2k1
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc77(1)=abb77(11)
      acc77(2)=abb77(12)
      acc77(3)=abb77(13)
      acc77(4)=abb77(14)
      acc77(5)=abb77(15)
      acc77(6)=abb77(16)
      acc77(7)=abb77(17)
      acc77(8)=abb77(18)
      acc77(9)=abb77(19)
      acc77(10)=abb77(20)
      acc77(11)=abb77(21)
      acc77(12)=abb77(22)
      acc77(13)=abb77(23)
      acc77(14)=abb77(24)
      acc77(15)=abb77(25)
      acc77(16)=abb77(26)
      acc77(17)=abb77(27)
      acc77(18)=abb77(28)
      acc77(19)=abb77(29)
      acc77(20)=abb77(30)
      acc77(21)=abb77(31)
      acc77(22)=abb77(32)
      acc77(23)=abb77(33)
      acc77(24)=abb77(35)
      acc77(25)=abb77(37)
      acc77(26)=abb77(39)
      acc77(27)=abb77(41)
      acc77(28)=abb77(59)
      acc77(29)=abb77(69)
      acc77(30)=abb77(76)
      acc77(31)=Qspvak4k2*acc77(3)
      acc77(32)=Qspvak4l6*acc77(14)
      acc77(33)=QspQ*acc77(5)
      acc77(34)=Qspl6*acc77(28)
      acc77(35)=Qspvak1k2*acc77(8)
      acc77(36)=Qspvak1k2*acc77(18)
      acc77(36)=acc77(6)+acc77(36)
      acc77(36)=Qspvak4k3*acc77(36)
      acc77(37)=Qspk2*acc77(30)
      acc77(31)=acc77(37)+acc77(36)+acc77(35)+acc77(34)+acc77(33)+acc77(32)+acc&
      &77(1)+acc77(31)
      acc77(31)=Qspk2*acc77(31)
      acc77(32)=Qspl6+QspQ
      acc77(32)=acc77(27)*acc77(32)
      acc77(33)=Qspval6k2*acc77(15)
      acc77(34)=Qspvak1k2*acc77(12)
      acc77(32)=acc77(34)+acc77(25)+acc77(33)+acc77(32)
      acc77(32)=Qspvak4k3*acc77(32)
      acc77(33)=Qspvak4k2*acc77(7)
      acc77(34)=Qspvak4l6*acc77(17)
      acc77(33)=acc77(34)+acc77(4)+acc77(33)
      acc77(33)=QspQ*acc77(33)
      acc77(34)=Qspvak4k2*acc77(16)
      acc77(35)=Qspvak4l6*acc77(10)
      acc77(34)=acc77(35)+acc77(29)+acc77(34)
      acc77(34)=Qspl6*acc77(34)
      acc77(35)=Qspvak2k3*acc77(23)
      acc77(36)=Qspvak2l6*acc77(2)
      acc77(35)=acc77(36)+acc77(13)+acc77(35)
      acc77(35)=Qspvak1k2*acc77(35)
      acc77(36)=acc77(26)*Qspvak2l5
      acc77(37)=acc77(24)*Qspvak2k7
      acc77(38)=acc77(21)*Qspvak1l6
      acc77(39)=acc77(11)*Qspvak2k1
      acc77(40)=Qspvak2k3*acc77(19)
      acc77(41)=Qspvak2l6*acc77(22)
      acc77(42)=Qspval6k2*acc77(9)
      brack=acc77(20)+acc77(31)+acc77(32)+acc77(33)+acc77(34)+acc77(35)+acc77(3&
      &6)+acc77(37)+acc77(38)+acc77(39)+acc77(40)+acc77(41)+acc77(42)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd77h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d77
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d77 = 0.0_ki
      d77 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d77, ki), aimag(d77), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d77h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd77h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d77
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d77 = 0.0_ki
      d77 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d77, ki), aimag(d77), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d77h2l1
