module     p0_dbaru_epnebbbarg_d305h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d305h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd305h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc305(37)
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: QspQ
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2l5
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      QspQ = dotproduct(Q,Q)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      acc305(1)=abb305(9)
      acc305(2)=abb305(10)
      acc305(3)=abb305(11)
      acc305(4)=abb305(12)
      acc305(5)=abb305(13)
      acc305(6)=abb305(15)
      acc305(7)=abb305(16)
      acc305(8)=abb305(17)
      acc305(9)=abb305(18)
      acc305(10)=abb305(19)
      acc305(11)=abb305(20)
      acc305(12)=abb305(21)
      acc305(13)=abb305(23)
      acc305(14)=abb305(24)
      acc305(15)=abb305(25)
      acc305(16)=abb305(26)
      acc305(17)=abb305(27)
      acc305(18)=abb305(28)
      acc305(19)=abb305(29)
      acc305(20)=abb305(30)
      acc305(21)=abb305(31)
      acc305(22)=abb305(32)
      acc305(23)=abb305(34)
      acc305(24)=abb305(35)
      acc305(25)=abb305(38)
      acc305(26)=abb305(42)
      acc305(27)=abb305(43)
      acc305(28)=abb305(44)
      acc305(29)=-Qspvak1l5*acc305(2)
      acc305(30)=-Qspvak4l5*acc305(1)
      acc305(29)=acc305(30)+acc305(28)+acc305(29)
      acc305(29)=Qspval6k2*acc305(29)
      acc305(30)=Qspvak1k2*acc305(5)
      acc305(31)=-Qspvak4k2*acc305(15)
      acc305(30)=acc305(31)+acc305(9)+acc305(30)
      acc305(30)=Qspk2*acc305(30)
      acc305(31)=acc305(7)*Qspvak7k2
      acc305(32)=-acc305(26)*Qspvak7l5
      acc305(33)=Qspvak1l5*acc305(12)
      acc305(34)=Qspvak4l5*acc305(14)
      acc305(35)=Qspval6l5*acc305(27)
      acc305(36)=Qspval6l5*acc305(2)
      acc305(36)=acc305(3)+acc305(36)
      acc305(36)=Qspvak1k2*acc305(36)
      acc305(37)=Qspval6l5*acc305(1)
      acc305(37)=acc305(4)+acc305(37)
      acc305(37)=Qspvak4k2*acc305(37)
      acc305(29)=acc305(30)+acc305(37)+acc305(36)+acc305(35)+acc305(29)+acc305(&
      &34)+acc305(33)+acc305(32)+acc305(31)+acc305(6)
      acc305(29)=Qspvak2k7*acc305(29)
      acc305(30)=acc305(24)*Qspvak4k7
      acc305(31)=acc305(21)*Qspvak1k7
      acc305(32)=QspQ*acc305(18)
      acc305(33)=Qspk7*acc305(20)
      acc305(30)=acc305(33)+acc305(32)+acc305(10)+acc305(30)+acc305(31)
      acc305(30)=Qspk2*acc305(30)
      acc305(31)=-QspQ*acc305(26)
      acc305(32)=Qspk7*acc305(13)
      acc305(31)=acc305(32)+acc305(11)+acc305(31)
      acc305(31)=Qspvak2l5*acc305(31)
      acc305(32)=QspQ*acc305(16)
      acc305(33)=Qspk7*acc305(23)
      acc305(34)=Qspvak1l5*acc305(22)
      acc305(35)=Qspvak4l5*acc305(25)
      acc305(36)=Qspvak1k2*acc305(19)
      acc305(37)=Qspvak4k2*acc305(17)
      brack=acc305(8)+acc305(29)+acc305(30)+acc305(31)+acc305(32)+acc305(33)+ac&
      &c305(34)+acc305(35)+acc305(36)+acc305(37)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd305h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d305
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d305 = 0.0_ki
      d305 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d305, ki), aimag(d305), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d305h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd305h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d305
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d305 = 0.0_ki
      d305 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d305, ki), aimag(d305), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d305h1l1
