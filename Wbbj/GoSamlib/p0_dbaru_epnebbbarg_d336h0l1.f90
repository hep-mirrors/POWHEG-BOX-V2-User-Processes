module     p0_dbaru_epnebbbarg_d336h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d336h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd336h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc336(34)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: QspQ
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk7 = dotproduct(Q,k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspl5 = dotproduct(Q,l5)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      QspQ = dotproduct(Q,Q)
      acc336(1)=abb336(12)
      acc336(2)=abb336(13)
      acc336(3)=abb336(14)
      acc336(4)=abb336(15)
      acc336(5)=abb336(16)
      acc336(6)=abb336(17)
      acc336(7)=abb336(18)
      acc336(8)=abb336(19)
      acc336(9)=abb336(20)
      acc336(10)=abb336(22)
      acc336(11)=abb336(23)
      acc336(12)=abb336(24)
      acc336(13)=abb336(25)
      acc336(14)=abb336(26)
      acc336(15)=abb336(27)
      acc336(16)=abb336(30)
      acc336(17)=abb336(32)
      acc336(18)=abb336(33)
      acc336(19)=abb336(36)
      acc336(20)=abb336(39)
      acc336(21)=abb336(42)
      acc336(22)=abb336(48)
      acc336(23)=acc336(5)*Qspvak1k2
      acc336(24)=acc336(6)*Qspk7
      acc336(25)=acc336(7)*Qspvak1k3
      acc336(26)=acc336(8)*Qspl5
      acc336(27)=acc336(11)*Qspvak4k2
      acc336(28)=acc336(12)*Qspk2
      acc336(29)=acc336(14)*Qspval6k3
      acc336(30)=acc336(16)*Qspval6k2
      acc336(31)=Qspvak7k2*acc336(13)
      acc336(32)=Qspval5k7*acc336(18)
      acc336(33)=Qspval5k3*acc336(19)
      acc336(34)=Qspval5k2*acc336(10)
      acc336(23)=acc336(34)+acc336(33)+acc336(32)+acc336(31)+acc336(30)+acc336(&
      &29)+acc336(28)+acc336(27)+acc336(26)+acc336(25)+acc336(24)+acc336(23)+ac&
      &c336(2)
      acc336(23)=Qspvak2k7*acc336(23)
      acc336(24)=-Qspk7-Qspl5
      acc336(24)=acc336(15)*acc336(24)
      acc336(25)=acc336(1)*Qspvak1k2
      acc336(26)=acc336(3)*Qspk2
      acc336(27)=acc336(17)*Qspvak1k3
      acc336(28)=acc336(20)*Qspvak4k2
      acc336(29)=acc336(21)*Qspval6k3
      acc336(30)=acc336(22)*Qspval6k2
      acc336(31)=QspQ*acc336(4)
      brack=acc336(9)+acc336(23)+acc336(24)+acc336(25)+acc336(26)+acc336(27)+ac&
      &c336(28)+acc336(29)+acc336(30)+acc336(31)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd336h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d336
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d336 = 0.0_ki
      d336 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d336, ki), aimag(d336), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d336h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd336h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d336
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d336 = 0.0_ki
      d336 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d336, ki), aimag(d336), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d336h0l1
