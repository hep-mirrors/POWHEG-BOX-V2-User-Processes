module     p0_dbaru_epnebbbarg_d63h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d63h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd63h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc63(39)
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk7
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk7 = dotproduct(Q,k7)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      acc63(1)=abb63(14)
      acc63(2)=abb63(15)
      acc63(3)=abb63(16)
      acc63(4)=abb63(17)
      acc63(5)=abb63(18)
      acc63(6)=abb63(19)
      acc63(7)=abb63(20)
      acc63(8)=abb63(21)
      acc63(9)=abb63(22)
      acc63(10)=abb63(24)
      acc63(11)=abb63(25)
      acc63(12)=abb63(32)
      acc63(13)=abb63(35)
      acc63(14)=abb63(37)
      acc63(15)=abb63(38)
      acc63(16)=abb63(42)
      acc63(17)=abb63(43)
      acc63(18)=abb63(50)
      acc63(19)=abb63(64)
      acc63(20)=abb63(87)
      acc63(21)=-Qspl5-Qspl6
      acc63(21)=acc63(4)*acc63(21)
      acc63(22)=Qspvak7l6*acc63(18)
      acc63(23)=Qspvak7l5*acc63(3)
      acc63(24)=Qspvak7k2*acc63(2)
      acc63(25)=Qspval6l5*acc63(13)
      acc63(26)=Qspval6k2*acc63(10)
      acc63(27)=Qspval5l6*acc63(17)
      acc63(28)=Qspval5k2*acc63(5)
      acc63(29)=Qspvak4k3*acc63(12)
      acc63(30)=Qspvak4k1*acc63(11)
      acc63(31)=Qspvak2l6*acc63(7)
      acc63(32)=Qspvak2l5*acc63(6)
      acc63(33)=Qspvak1k4*acc63(9)
      acc63(34)=Qspvak1k3*acc63(8)
      acc63(35)=Qspk7*acc63(14)
      acc63(36)=Qspk4*acc63(19)
      acc63(37)=Qspk3*acc63(20)
      acc63(38)=Qspk2*acc63(16)
      acc63(39)=Qspk1*acc63(15)
      brack=acc63(1)+acc63(21)+acc63(22)+acc63(23)+acc63(24)+acc63(25)+acc63(26&
      &)+acc63(27)+acc63(28)+acc63(29)+acc63(30)+acc63(31)+acc63(32)+acc63(33)+&
      &acc63(34)+acc63(35)+acc63(36)+acc63(37)+acc63(38)+acc63(39)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd63h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d63
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d63 = 0.0_ki
      d63 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d63, ki), aimag(d63), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d63h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd63h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d63
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d63 = 0.0_ki
      d63 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d63, ki), aimag(d63), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d63h7l1
