module     p0_dbaru_epnebbbarg_d229h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d229h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd229h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc229(46)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
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
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      QspQ = dotproduct(Q,Q)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
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
      acc229(14)=abb229(28)
      acc229(15)=abb229(29)
      acc229(16)=abb229(31)
      acc229(17)=abb229(32)
      acc229(18)=abb229(34)
      acc229(19)=abb229(35)
      acc229(20)=abb229(36)
      acc229(21)=abb229(37)
      acc229(22)=abb229(42)
      acc229(23)=abb229(45)
      acc229(24)=abb229(48)
      acc229(25)=abb229(50)
      acc229(26)=abb229(52)
      acc229(27)=abb229(55)
      acc229(28)=abb229(57)
      acc229(29)=abb229(80)
      acc229(30)=abb229(102)
      acc229(31)=abb229(194)
      acc229(32)=Qspk4+Qspk3
      acc229(33)=acc229(32)-Qspk2
      acc229(34)=-acc229(22)*acc229(33)
      acc229(35)=Qspvak1k2*acc229(3)
      acc229(36)=Qspvak1k3*acc229(17)
      acc229(37)=Qspvak4k2*acc229(26)
      acc229(38)=Qspvak4k3*acc229(24)
      acc229(34)=acc229(38)+acc229(37)+acc229(36)+acc229(35)+acc229(13)+acc229(&
      &34)
      acc229(34)=Qspvak2l5*acc229(34)
      acc229(35)=-acc229(20)*acc229(33)
      acc229(36)=Qspvak1k2*acc229(15)
      acc229(37)=Qspvak1k3*acc229(11)
      acc229(38)=Qspvak4k2*acc229(28)
      acc229(39)=Qspvak4k3*acc229(23)
      acc229(35)=acc229(39)+acc229(38)+acc229(37)+acc229(36)+acc229(16)+acc229(&
      &35)
      acc229(35)=Qspvak2l6*acc229(35)
      acc229(33)=acc229(8)*acc229(33)
      acc229(36)=Qspvak1k2*acc229(9)
      acc229(37)=Qspvak1k3*acc229(2)
      acc229(38)=Qspvak4k2*acc229(10)
      acc229(39)=Qspvak4k3*acc229(19)
      acc229(33)=acc229(39)+acc229(38)+acc229(37)+acc229(36)+acc229(6)+acc229(3&
      &3)
      acc229(33)=Qspvak2k7*acc229(33)
      acc229(32)=-acc229(31)*acc229(32)
      acc229(36)=acc229(27)*Qspk1
      acc229(37)=acc229(21)*Qspvak1k7
      acc229(38)=acc229(12)*QspQ
      acc229(39)=acc229(5)*Qspvak1l5
      acc229(40)=acc229(1)*Qspvak1l6
      acc229(41)=Qspk7+Qspl5+Qspl6
      acc229(41)=acc229(30)*acc229(41)
      acc229(42)=Qspk2*acc229(25)
      acc229(43)=Qspvak1k2*acc229(7)
      acc229(44)=Qspvak1k3*acc229(14)
      acc229(45)=Qspvak4k2*acc229(4)
      acc229(46)=Qspvak4k3*acc229(18)
      brack=acc229(29)+acc229(32)+acc229(33)+acc229(34)+acc229(35)+acc229(36)+a&
      &cc229(37)+acc229(38)+acc229(39)+acc229(40)+acc229(41)+acc229(42)+acc229(&
      &43)+acc229(44)+acc229(45)+acc229(46)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd229h3
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
   & bind(c, name="p0_dbaru_epnebbbarg_d229h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd229h3
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
end module p0_dbaru_epnebbbarg_d229h3l1
