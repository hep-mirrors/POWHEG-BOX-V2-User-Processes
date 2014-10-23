module     p0_dbaru_epnebbbarg_d333h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d333h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd333h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc333(23)
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspval6k7
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k7
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspl6 = dotproduct(Q,l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      acc333(1)=abb333(13)
      acc333(2)=abb333(14)
      acc333(3)=abb333(15)
      acc333(4)=abb333(16)
      acc333(5)=abb333(17)
      acc333(6)=abb333(18)
      acc333(7)=abb333(19)
      acc333(8)=abb333(20)
      acc333(9)=abb333(23)
      acc333(10)=abb333(24)
      acc333(11)=abb333(25)
      acc333(12)=abb333(28)
      acc333(13)=abb333(32)
      acc333(14)=abb333(37)
      acc333(15)=abb333(56)
      acc333(16)=acc333(12)*Qspvak2k3
      acc333(17)=acc333(11)*Qspl6
      acc333(18)=acc333(9)*Qspvak4l6
      acc333(19)=acc333(5)*Qspvak2l6
      acc333(20)=acc333(4)*Qspvak1l6
      acc333(21)=acc333(3)*Qspvak7l6
      acc333(22)=acc333(2)*Qspk2
      acc333(23)=Qspvak2k7*acc333(13)
      acc333(16)=acc333(23)+acc333(1)+acc333(22)+acc333(21)+acc333(20)+acc333(1&
      &9)+acc333(18)+acc333(16)+acc333(17)
      acc333(16)=Qspvak2k7*acc333(16)
      acc333(17)=acc333(15)*Qspvak4k7
      acc333(18)=acc333(14)*Qspval6k7
      acc333(19)=acc333(10)*QspQ
      acc333(20)=acc333(8)*Qspk7
      acc333(21)=acc333(6)*Qspvak1k7
      brack=acc333(7)+acc333(16)+acc333(17)+acc333(18)+acc333(19)+acc333(20)+ac&
      &c333(21)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd333h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d333
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d333 = 0.0_ki
      d333 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d333, ki), aimag(d333), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d333h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd333h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d333
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d333 = 0.0_ki
      d333 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d333, ki), aimag(d333), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d333h3l1
