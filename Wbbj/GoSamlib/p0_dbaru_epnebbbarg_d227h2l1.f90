module     p0_dbaru_epnebbbarg_d227h2l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d227h2l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd227h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc227(33)
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5k7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k7
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspk7 = dotproduct(Q,k7)
      Qspval5k7 = dotproduct(Q,spval5k7)
      QspQ = dotproduct(Q,Q)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      acc227(1)=abb227(11)
      acc227(2)=abb227(12)
      acc227(3)=abb227(13)
      acc227(4)=abb227(14)
      acc227(5)=abb227(15)
      acc227(6)=abb227(16)
      acc227(7)=abb227(17)
      acc227(8)=abb227(21)
      acc227(9)=abb227(24)
      acc227(10)=abb227(25)
      acc227(11)=abb227(31)
      acc227(12)=abb227(33)
      acc227(13)=abb227(34)
      acc227(14)=abb227(35)
      acc227(15)=abb227(36)
      acc227(16)=abb227(38)
      acc227(17)=abb227(42)
      acc227(18)=abb227(44)
      acc227(19)=abb227(45)
      acc227(20)=abb227(61)
      acc227(21)=abb227(69)
      acc227(22)=acc227(18)*Qspval5k2
      acc227(23)=acc227(17)*Qspval5k3
      acc227(24)=acc227(16)*Qspval6k3
      acc227(25)=acc227(9)*Qspval6k2
      acc227(26)=acc227(6)*Qspvak1k3
      acc227(27)=acc227(5)*Qspvak2k3
      acc227(28)=acc227(3)*Qspvak1k2
      acc227(29)=Qspk2*acc227(15)
      acc227(30)=Qspvak4k2*acc227(4)
      acc227(31)=Qspvak4k3*acc227(10)
      acc227(32)=Qspk4+Qspk3
      acc227(33)=acc227(19)*acc227(32)
      acc227(22)=acc227(33)+acc227(31)+acc227(30)+acc227(29)+acc227(2)+acc227(2&
      &8)+acc227(27)+acc227(26)+acc227(25)+acc227(24)+acc227(22)+acc227(23)
      acc227(22)=Qspvak2k7*acc227(22)
      acc227(23)=acc227(20)*Qspval6k7
      acc227(24)=acc227(14)*Qspk7
      acc227(25)=acc227(12)*Qspval5k7
      acc227(26)=acc227(8)*QspQ
      acc227(27)=acc227(7)*Qspvak1k7
      acc227(28)=Qspvak4k2*acc227(11)
      acc227(29)=Qspvak4k3*acc227(21)
      acc227(30)=Qspk2-acc227(32)
      acc227(30)=acc227(13)*acc227(30)
      brack=acc227(1)+acc227(22)+acc227(23)+acc227(24)+acc227(25)+acc227(26)+ac&
      &c227(27)+acc227(28)+acc227(29)+acc227(30)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd227h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d227
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d227 = 0.0_ki
      d227 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d227, ki), aimag(d227), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d227h2l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd227h2
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d227
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d227 = 0.0_ki
      d227 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d227, ki), aimag(d227), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d227h2l1
