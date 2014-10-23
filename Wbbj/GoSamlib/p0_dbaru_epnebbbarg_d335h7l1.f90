module     p0_dbaru_epnebbbarg_d335h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d335h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd335h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc335(33)
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k2
      complex(ki) :: QspQ
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspl5 = dotproduct(Q,l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      QspQ = dotproduct(Q,Q)
      acc335(1)=abb335(13)
      acc335(2)=abb335(14)
      acc335(3)=abb335(15)
      acc335(4)=abb335(16)
      acc335(5)=abb335(17)
      acc335(6)=abb335(18)
      acc335(7)=abb335(19)
      acc335(8)=abb335(20)
      acc335(9)=abb335(21)
      acc335(10)=abb335(22)
      acc335(11)=abb335(24)
      acc335(12)=abb335(25)
      acc335(13)=abb335(27)
      acc335(14)=abb335(28)
      acc335(15)=abb335(30)
      acc335(16)=abb335(31)
      acc335(17)=abb335(48)
      acc335(18)=abb335(51)
      acc335(19)=abb335(55)
      acc335(20)=acc335(2)*Qspvak7l5
      acc335(21)=acc335(11)*Qspk7
      acc335(22)=Qspvak4l6*acc335(14)
      acc335(23)=Qspvak4l5*acc335(15)
      acc335(24)=Qspvak4k2*acc335(10)
      acc335(25)=Qspvak2k7*acc335(13)
      acc335(26)=Qspvak2l5*acc335(9)
      acc335(27)=Qspvak2k3*acc335(3)
      acc335(28)=Qspvak1l6*acc335(16)
      acc335(29)=Qspvak1l5*acc335(12)
      acc335(30)=Qspvak1k3*acc335(7)
      acc335(31)=Qspvak1k2*acc335(6)
      acc335(32)=Qspl5*acc335(5)
      acc335(33)=Qspk2*acc335(1)
      acc335(20)=acc335(33)+acc335(32)+acc335(31)+acc335(30)+acc335(29)+acc335(&
      &28)+acc335(27)+acc335(26)+acc335(25)+acc335(24)+acc335(23)+acc335(22)+ac&
      &c335(21)+acc335(20)+acc335(4)
      acc335(20)=Qspvak7k2*acc335(20)
      acc335(21)=acc335(18)*Qspk7
      acc335(22)=acc335(19)*Qspvak7l5
      acc335(23)=QspQ*acc335(17)
      brack=acc335(8)+acc335(20)+acc335(21)+acc335(22)+acc335(23)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd335h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d335
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d335 = 0.0_ki
      d335 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d335, ki), aimag(d335), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d335h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd335h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d335
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d335 = 0.0_ki
      d335 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d335, ki), aimag(d335), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d335h7l1
