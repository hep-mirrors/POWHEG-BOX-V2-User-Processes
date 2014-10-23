module     p0_dbaru_epnebbbarg_d23h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d23h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd23h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc23(35)
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspk7
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: QspQ
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspk7 = dotproduct(Q,k7)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      QspQ = dotproduct(Q,Q)
      acc23(1)=abb23(14)
      acc23(2)=abb23(15)
      acc23(3)=abb23(16)
      acc23(4)=abb23(17)
      acc23(5)=abb23(18)
      acc23(6)=abb23(19)
      acc23(7)=abb23(21)
      acc23(8)=abb23(22)
      acc23(9)=abb23(23)
      acc23(10)=abb23(25)
      acc23(11)=abb23(27)
      acc23(12)=abb23(28)
      acc23(13)=abb23(29)
      acc23(14)=abb23(30)
      acc23(15)=abb23(33)
      acc23(16)=abb23(45)
      acc23(17)=abb23(53)
      acc23(18)=abb23(62)
      acc23(19)=abb23(66)
      acc23(20)=abb23(76)
      acc23(21)=Qspl5+Qspl6
      acc23(21)=acc23(21)*acc23(15)
      acc23(22)=acc23(6)*Qspvak1k3
      acc23(23)=Qspvak7l6*acc23(17)
      acc23(24)=Qspvak7l5*acc23(19)
      acc23(25)=Qspvak7k2*acc23(1)
      acc23(26)=Qspval6l5*acc23(14)
      acc23(27)=Qspval6k2*acc23(3)
      acc23(28)=Qspval5l6*acc23(13)
      acc23(29)=Qspval5k2*acc23(7)
      acc23(30)=Qspvak2l6*acc23(8)
      acc23(31)=Qspvak2l5*acc23(4)
      acc23(32)=Qspvak1k4*acc23(12)
      acc23(33)=Qspk7*acc23(9)
      acc23(34)=Qspk2*acc23(10)
      acc23(35)=Qspk1*acc23(11)
      acc23(21)=acc23(21)+acc23(35)+acc23(34)+acc23(33)+acc23(32)+acc23(31)+acc&
      &23(30)+acc23(29)+acc23(28)+acc23(27)+acc23(26)+acc23(25)+acc23(24)+acc23&
      &(23)+acc23(22)+acc23(2)
      acc23(21)=Qspvak4k3*acc23(21)
      acc23(22)=Qspk4+Qspk3
      acc23(23)=acc23(18)*Qspvak4k3
      acc23(23)=acc23(23)-acc23(20)
      acc23(22)=acc23(23)*acc23(22)
      acc23(23)=acc23(5)*Qspvak1k3
      acc23(24)=QspQ*acc23(16)
      brack=acc23(21)+acc23(22)+acc23(23)+acc23(24)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd23h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d23
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d23 = 0.0_ki
      d23 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d23, ki), aimag(d23), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d23h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd23h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d23
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d23 = 0.0_ki
      d23 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d23, ki), aimag(d23), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d23h7l1
