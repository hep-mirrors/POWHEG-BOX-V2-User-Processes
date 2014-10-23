module     p0_dbaru_epnebbbarg_d121h5l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d121h5l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd121h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc121(32)
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspl5
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspk2 = dotproduct(Q,k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspl5 = dotproduct(Q,l5)
      acc121(1)=abb121(11)
      acc121(2)=abb121(12)
      acc121(3)=abb121(13)
      acc121(4)=abb121(14)
      acc121(5)=abb121(15)
      acc121(6)=abb121(16)
      acc121(7)=abb121(17)
      acc121(8)=abb121(18)
      acc121(9)=abb121(20)
      acc121(10)=abb121(21)
      acc121(11)=abb121(22)
      acc121(12)=abb121(23)
      acc121(13)=abb121(24)
      acc121(14)=abb121(25)
      acc121(15)=abb121(26)
      acc121(16)=abb121(27)
      acc121(17)=abb121(29)
      acc121(18)=abb121(30)
      acc121(19)=abb121(31)
      acc121(20)=abb121(33)
      acc121(21)=abb121(34)
      acc121(22)=abb121(35)
      acc121(23)=abb121(36)
      acc121(24)=abb121(37)
      acc121(25)=abb121(39)
      acc121(26)=Qspval6l5*acc121(4)
      acc121(27)=Qspvak7l5*acc121(17)
      acc121(28)=Qspk7+Qspl6
      acc121(29)=acc121(11)*acc121(28)
      acc121(30)=Qspk2*acc121(23)
      acc121(31)=Qspval6k2*acc121(3)
      acc121(32)=Qspvak7k2*acc121(15)
      acc121(26)=acc121(32)+acc121(31)+acc121(30)+acc121(29)+acc121(27)+acc121(&
      &12)+acc121(26)
      acc121(26)=Qspvak1k2*acc121(26)
      acc121(27)=Qspval6l5*acc121(9)
      acc121(29)=Qspvak7l5*acc121(16)
      acc121(28)=acc121(7)*acc121(28)
      acc121(30)=Qspk2*acc121(24)
      acc121(31)=Qspval6k2*acc121(5)
      acc121(32)=Qspvak7k2*acc121(20)
      acc121(27)=acc121(32)+acc121(31)+acc121(30)+acc121(28)+acc121(29)+acc121(&
      &22)+acc121(27)
      acc121(27)=Qspvak4k2*acc121(27)
      acc121(28)=Qspvak1l5*acc121(25)
      acc121(29)=Qspvak4l5*acc121(13)
      acc121(30)=Qspk2*acc121(1)
      acc121(28)=acc121(30)+acc121(29)+acc121(21)+acc121(28)
      acc121(28)=Qspval6k2*acc121(28)
      acc121(29)=Qspvak1l5*acc121(18)
      acc121(30)=Qspvak4l5*acc121(8)
      acc121(31)=Qspk2*acc121(2)
      acc121(29)=acc121(31)+acc121(30)+acc121(14)+acc121(29)
      acc121(29)=Qspvak7k2*acc121(29)
      acc121(30)=acc121(10)*Qspl5
      acc121(31)=Qspk2*acc121(19)
      brack=acc121(6)+acc121(26)+acc121(27)+acc121(28)+acc121(29)+acc121(30)+ac&
      &c121(31)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd121h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d121
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d121 = 0.0_ki
      d121 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d121, ki), aimag(d121), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d121h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd121h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d121
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d121 = 0.0_ki
      d121 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d121, ki), aimag(d121), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d121h5l1
