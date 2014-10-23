module     p0_dbaru_epnebbbarg_d109h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d109h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd109h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc109(33)
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk2
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk2 = dotproduct(Q,k2)
      acc109(1)=abb109(11)
      acc109(2)=abb109(12)
      acc109(3)=abb109(13)
      acc109(4)=abb109(14)
      acc109(5)=abb109(15)
      acc109(6)=abb109(16)
      acc109(7)=abb109(17)
      acc109(8)=abb109(18)
      acc109(9)=abb109(19)
      acc109(10)=abb109(20)
      acc109(11)=abb109(21)
      acc109(12)=abb109(22)
      acc109(13)=abb109(23)
      acc109(14)=abb109(24)
      acc109(15)=abb109(25)
      acc109(16)=abb109(30)
      acc109(17)=abb109(31)
      acc109(18)=abb109(32)
      acc109(19)=abb109(33)
      acc109(20)=abb109(34)
      acc109(21)=abb109(35)
      acc109(22)=abb109(39)
      acc109(23)=Qspvak1k7*acc109(1)
      acc109(24)=Qspvak4k7*acc109(21)
      acc109(25)=Qspk7*acc109(15)
      acc109(26)=Qspvak2k7*acc109(3)
      acc109(23)=acc109(26)+acc109(25)+acc109(24)+acc109(13)+acc109(23)
      acc109(23)=Qspval6l5*acc109(23)
      acc109(24)=-Qspval6k7*acc109(21)
      acc109(25)=Qspk7*acc109(22)
      acc109(26)=Qspvak2k7*acc109(11)
      acc109(24)=acc109(26)+acc109(25)+acc109(18)+acc109(24)
      acc109(24)=Qspvak4l5*acc109(24)
      acc109(25)=-Qspval6k7*acc109(1)
      acc109(26)=Qspk7*acc109(8)
      acc109(25)=acc109(26)+acc109(5)+acc109(25)
      acc109(25)=Qspvak1l5*acc109(25)
      acc109(26)=acc109(16)*Qspval6k2
      acc109(27)=acc109(6)*Qspvak4k2
      acc109(28)=acc109(4)*Qspvak1k2
      acc109(29)=Qspk2*acc109(19)
      acc109(29)=acc109(14)+acc109(29)
      acc109(29)=Qspvak1k7*acc109(29)
      acc109(30)=Qspk2*acc109(20)
      acc109(30)=acc109(17)+acc109(30)
      acc109(30)=Qspvak4k7*acc109(30)
      acc109(31)=Qspval6k7*acc109(12)
      acc109(32)=Qspk7*acc109(10)
      acc109(33)=Qspvak1l5*acc109(9)
      acc109(33)=acc109(2)+acc109(33)
      acc109(33)=Qspvak2k7*acc109(33)
      brack=acc109(7)+acc109(23)+acc109(24)+acc109(25)+acc109(26)+acc109(27)+ac&
      &c109(28)+acc109(29)+acc109(30)+acc109(31)+acc109(32)+acc109(33)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd109h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d109
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d109 = 0.0_ki
      d109 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d109, ki), aimag(d109), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d109h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd109h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d109
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d109 = 0.0_ki
      d109 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d109, ki), aimag(d109), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d109h1l1
