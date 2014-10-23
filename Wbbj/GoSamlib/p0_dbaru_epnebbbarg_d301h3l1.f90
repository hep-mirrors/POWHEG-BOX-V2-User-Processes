module     p0_dbaru_epnebbbarg_d301h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d301h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd301h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc301(42)
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: QspQ
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspval5k2
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      QspQ = dotproduct(Q,Q)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      acc301(1)=abb301(10)
      acc301(2)=abb301(11)
      acc301(3)=abb301(12)
      acc301(4)=abb301(13)
      acc301(5)=abb301(14)
      acc301(6)=abb301(15)
      acc301(7)=abb301(16)
      acc301(8)=abb301(17)
      acc301(9)=abb301(18)
      acc301(10)=abb301(20)
      acc301(11)=abb301(21)
      acc301(12)=abb301(22)
      acc301(13)=abb301(23)
      acc301(14)=abb301(24)
      acc301(15)=abb301(25)
      acc301(16)=abb301(27)
      acc301(17)=abb301(28)
      acc301(18)=abb301(29)
      acc301(19)=abb301(30)
      acc301(20)=abb301(31)
      acc301(21)=abb301(32)
      acc301(22)=abb301(33)
      acc301(23)=abb301(34)
      acc301(24)=abb301(35)
      acc301(25)=abb301(36)
      acc301(26)=abb301(37)
      acc301(27)=abb301(38)
      acc301(28)=abb301(39)
      acc301(29)=abb301(40)
      acc301(30)=abb301(41)
      acc301(31)=abb301(43)
      acc301(32)=Qspvak1l5*acc301(26)
      acc301(33)=Qspvak4l5*acc301(21)
      acc301(32)=acc301(33)+acc301(2)+acc301(32)
      acc301(32)=Qspk2*acc301(32)
      acc301(33)=Qspvak1k2*acc301(9)
      acc301(34)=Qspvak4k2*acc301(18)
      acc301(33)=acc301(34)+acc301(14)+acc301(33)
      acc301(33)=Qspvak2l5*acc301(33)
      acc301(34)=Qspvak2l6*acc301(1)
      acc301(34)=acc301(34)+acc301(7)
      acc301(34)=Qspvak1k2*acc301(34)
      acc301(35)=QspQ*acc301(4)
      acc301(36)=Qspl5*acc301(11)
      acc301(37)=-acc301(25)*Qspvak1l6
      acc301(38)=-acc301(10)*Qspvak4l6
      acc301(39)=Qspvak1l5*acc301(20)
      acc301(40)=Qspvak4l5*acc301(16)
      acc301(41)=Qspvak2l6*acc301(8)
      acc301(41)=acc301(12)+acc301(41)
      acc301(41)=Qspvak4k2*acc301(41)
      acc301(32)=acc301(33)+acc301(32)+acc301(41)+acc301(40)+acc301(39)+acc301(&
      &38)+acc301(37)+acc301(36)+acc301(3)+acc301(35)+acc301(34)
      acc301(32)=Qspvak2k7*acc301(32)
      acc301(33)=Qspvak1k7*acc301(25)
      acc301(34)=Qspvak4k7*acc301(10)
      acc301(33)=acc301(33)+acc301(34)
      acc301(33)=Qspvak2l6*acc301(33)
      acc301(34)=Qspvak1k7*acc301(24)
      acc301(35)=Qspvak4k7*acc301(27)
      acc301(34)=acc301(35)+acc301(28)+acc301(34)
      acc301(34)=Qspk2*acc301(34)
      acc301(35)=Qspvak1k7*acc301(29)
      acc301(36)=Qspvak4k7*acc301(17)
      acc301(35)=acc301(36)+acc301(23)+acc301(35)
      acc301(35)=Qspvak2l5*acc301(35)
      acc301(36)=acc301(30)*Qspval5k2
      acc301(37)=QspQ*acc301(15)
      acc301(38)=Qspl5*acc301(19)
      acc301(39)=Qspvak1l5*acc301(6)
      acc301(40)=Qspvak4l5*acc301(31)
      acc301(41)=Qspvak1k2*acc301(5)
      acc301(42)=Qspvak4k2*acc301(13)
      brack=acc301(22)+acc301(32)+acc301(33)+acc301(34)+acc301(35)+acc301(36)+a&
      &cc301(37)+acc301(38)+acc301(39)+acc301(40)+acc301(41)+acc301(42)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd301h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d301
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d301 = 0.0_ki
      d301 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d301, ki), aimag(d301), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d301h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd301h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d301
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d301 = 0.0_ki
      d301 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d301, ki), aimag(d301), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d301h3l1
