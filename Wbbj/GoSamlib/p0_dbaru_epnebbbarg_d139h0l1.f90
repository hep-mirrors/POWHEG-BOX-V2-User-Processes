module     p0_dbaru_epnebbbarg_d139h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d139h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd139h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc139(29)
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: QspQ
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspk2 = dotproduct(Q,k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      QspQ = dotproduct(Q,Q)
      acc139(1)=abb139(10)
      acc139(2)=abb139(11)
      acc139(3)=abb139(13)
      acc139(4)=abb139(14)
      acc139(5)=abb139(15)
      acc139(6)=abb139(18)
      acc139(7)=abb139(19)
      acc139(8)=abb139(20)
      acc139(9)=abb139(21)
      acc139(10)=abb139(23)
      acc139(11)=abb139(25)
      acc139(12)=abb139(27)
      acc139(13)=abb139(28)
      acc139(14)=abb139(29)
      acc139(15)=abb139(31)
      acc139(16)=abb139(32)
      acc139(17)=abb139(34)
      acc139(18)=abb139(35)
      acc139(19)=abb139(36)
      acc139(20)=acc139(2)*Qspvak1k7
      acc139(21)=acc139(3)*Qspval5k2
      acc139(22)=acc139(6)*Qspk1
      acc139(23)=acc139(10)*Qspk7
      acc139(24)=acc139(14)*Qspvak4k2
      acc139(25)=acc139(17)*Qspval6k2
      acc139(26)=acc139(18)*Qspvak4k3
      acc139(20)=acc139(26)+acc139(25)+acc139(24)+acc139(12)+acc139(23)+acc139(&
      &22)+acc139(21)+acc139(20)
      acc139(20)=Qspvak2k7*acc139(20)
      acc139(21)=-Qspk2+Qspk4+Qspk3
      acc139(22)=acc139(16)*Qspvak2k7
      acc139(22)=acc139(22)+acc139(19)
      acc139(21)=acc139(22)*acc139(21)
      acc139(22)=acc139(1)*Qspvak1k7
      acc139(23)=acc139(4)*Qspk1
      acc139(24)=acc139(7)*Qspval5k2
      acc139(25)=acc139(8)*Qspval6k2
      acc139(26)=acc139(9)*Qspvak4k2
      acc139(27)=acc139(11)*Qspvak4k3
      acc139(28)=acc139(15)*Qspk7
      acc139(29)=QspQ*acc139(5)
      brack=acc139(13)+acc139(20)+acc139(21)+acc139(22)+acc139(23)+acc139(24)+a&
      &cc139(25)+acc139(26)+acc139(27)+acc139(28)+acc139(29)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd139h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d139
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k7-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d139 = 0.0_ki
      d139 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d139, ki), aimag(d139), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d139h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd139h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d139
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k7-k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d139 = 0.0_ki
      d139 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d139, ki), aimag(d139), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d139h0l1
