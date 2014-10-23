module     p0_dbaru_epnebbbarg_d107h5l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d107h5l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd107h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc107(41)
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak3l5
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak3l5 = dotproduct(Q,spvak3l5)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      acc107(1)=abb107(11)
      acc107(2)=abb107(12)
      acc107(3)=abb107(13)
      acc107(4)=abb107(14)
      acc107(5)=abb107(15)
      acc107(6)=abb107(16)
      acc107(7)=abb107(17)
      acc107(8)=abb107(18)
      acc107(9)=abb107(19)
      acc107(10)=abb107(20)
      acc107(11)=abb107(21)
      acc107(12)=abb107(22)
      acc107(13)=abb107(23)
      acc107(14)=abb107(24)
      acc107(15)=abb107(25)
      acc107(16)=abb107(26)
      acc107(17)=abb107(27)
      acc107(18)=abb107(28)
      acc107(19)=abb107(31)
      acc107(20)=abb107(36)
      acc107(21)=abb107(37)
      acc107(22)=abb107(40)
      acc107(23)=abb107(46)
      acc107(24)=abb107(52)
      acc107(25)=abb107(54)
      acc107(26)=abb107(55)
      acc107(27)=acc107(4)*Qspvak4k2
      acc107(28)=acc107(20)*Qspval6l5
      acc107(29)=acc107(22)*Qspvak4l5
      acc107(30)=Qspvak3l5*acc107(7)
      acc107(31)=Qspvak3k2*acc107(9)
      acc107(27)=acc107(31)+acc107(30)+acc107(29)+acc107(28)+acc107(15)+acc107(&
      &27)
      acc107(27)=Qspvak4k3*acc107(27)
      acc107(28)=acc107(5)*Qspvak4l5
      acc107(29)=acc107(13)*Qspval6l5
      acc107(30)=-Qspvak2l5*acc107(7)
      acc107(28)=acc107(30)+acc107(29)+acc107(8)+acc107(28)
      acc107(28)=Qspvak4k2*acc107(28)
      acc107(29)=acc107(19)*Qspvak4l5
      acc107(30)=acc107(25)*Qspval6l5
      acc107(29)=acc107(29)+acc107(30)
      acc107(30)=-acc107(10)*Qspvak4k2
      acc107(30)=acc107(26)+acc107(30)-acc107(29)
      acc107(31)=Qspk3+Qspk4
      acc107(30)=acc107(31)*acc107(30)
      acc107(29)=acc107(21)+acc107(29)
      acc107(29)=Qspk2*acc107(29)
      acc107(31)=acc107(3)*Qspvak4k2**2
      acc107(32)=Qspvak7k3*acc107(6)
      acc107(33)=Qspvak7k2*acc107(24)
      acc107(34)=Qspval6k3*acc107(11)
      acc107(35)=Qspval6k2*acc107(1)
      acc107(36)=Qspval5k3*acc107(18)
      acc107(37)=Qspval5k2*acc107(14)
      acc107(38)=Qspvak2k3*acc107(16)
      acc107(39)=Qspvak1k3*acc107(17)
      acc107(40)=Qspvak1k2*acc107(12)
      acc107(41)=QspQ*acc107(23)
      brack=acc107(2)+acc107(27)+acc107(28)+acc107(29)+acc107(30)+acc107(31)+ac&
      &c107(32)+acc107(33)+acc107(34)+acc107(35)+acc107(36)+acc107(37)+acc107(3&
      &8)+acc107(39)+acc107(40)+acc107(41)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd107h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d107
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d107 = 0.0_ki
      d107 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d107, ki), aimag(d107), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d107h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd107h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d107
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d107 = 0.0_ki
      d107 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d107, ki), aimag(d107), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d107h5l1
