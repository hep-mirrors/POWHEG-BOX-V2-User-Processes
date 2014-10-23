module     p0_dbaru_epnebbbarg_d302h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d302h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd302h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc302(34)
      complex(ki) :: QspQ
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval6k2
      QspQ = dotproduct(Q,Q)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      acc302(1)=abb302(10)
      acc302(2)=abb302(11)
      acc302(3)=abb302(12)
      acc302(4)=abb302(13)
      acc302(5)=abb302(14)
      acc302(6)=abb302(15)
      acc302(7)=abb302(16)
      acc302(8)=abb302(17)
      acc302(9)=abb302(18)
      acc302(10)=abb302(19)
      acc302(11)=abb302(20)
      acc302(12)=abb302(21)
      acc302(13)=abb302(22)
      acc302(14)=abb302(23)
      acc302(15)=abb302(24)
      acc302(16)=abb302(27)
      acc302(17)=abb302(28)
      acc302(18)=abb302(29)
      acc302(19)=abb302(30)
      acc302(20)=abb302(31)
      acc302(21)=abb302(33)
      acc302(22)=abb302(41)
      acc302(23)=abb302(43)
      acc302(24)=abb302(46)
      acc302(25)=QspQ-Qspl6
      acc302(25)=acc302(22)*acc302(25)
      acc302(26)=Qspvak1l6*acc302(14)
      acc302(27)=Qspvak4l6*acc302(23)
      acc302(28)=Qspvak2l5*acc302(6)
      acc302(28)=acc302(4)+acc302(28)
      acc302(28)=Qspvak1k2*acc302(28)
      acc302(29)=Qspvak2l5*acc302(13)
      acc302(29)=acc302(5)+acc302(29)
      acc302(29)=Qspvak4k2*acc302(29)
      acc302(30)=Qspvak2l6*acc302(11)
      acc302(31)=Qspk2*acc302(1)
      acc302(25)=acc302(31)+acc302(30)+acc302(29)+acc302(28)+acc302(27)+acc302(&
      &15)+acc302(26)+acc302(25)
      acc302(25)=Qspvak2k7*acc302(25)
      acc302(26)=QspQ*acc302(7)
      acc302(27)=Qspvak2l6*acc302(10)
      acc302(28)=Qspk2*acc302(19)
      acc302(26)=acc302(28)+acc302(27)+acc302(12)+acc302(26)
      acc302(26)=Qspk2*acc302(26)
      acc302(27)=acc302(21)*Qspval6k2
      acc302(28)=Qspl6*acc302(20)
      acc302(29)=Qspvak1l6*acc302(17)
      acc302(30)=Qspvak4l6*acc302(24)
      acc302(31)=Qspvak1k2*acc302(2)
      acc302(32)=Qspvak4k2*acc302(16)
      acc302(33)=QspQ*acc302(9)
      acc302(34)=QspQ*acc302(8)
      acc302(34)=acc302(3)+acc302(34)
      acc302(34)=Qspvak2l6*acc302(34)
      brack=acc302(18)+acc302(25)+acc302(26)+acc302(27)+acc302(28)+acc302(29)+a&
      &cc302(30)+acc302(31)+acc302(32)+acc302(33)+acc302(34)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd302h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d302
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d302 = 0.0_ki
      d302 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d302, ki), aimag(d302), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d302h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd302h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d302
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d302 = 0.0_ki
      d302 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d302, ki), aimag(d302), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d302h3l1
