module     p0_dbaru_epnebbbarg_d76h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d76h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd76h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc76(40)
      complex(ki) :: QspQ
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      QspQ = dotproduct(Q,Q)
      Qspl5 = dotproduct(Q,l5)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc76(1)=abb76(11)
      acc76(2)=abb76(12)
      acc76(3)=abb76(13)
      acc76(4)=abb76(14)
      acc76(5)=abb76(15)
      acc76(6)=abb76(16)
      acc76(7)=abb76(17)
      acc76(8)=abb76(18)
      acc76(9)=abb76(19)
      acc76(10)=abb76(20)
      acc76(11)=abb76(21)
      acc76(12)=abb76(22)
      acc76(13)=abb76(23)
      acc76(14)=abb76(24)
      acc76(15)=abb76(29)
      acc76(16)=abb76(32)
      acc76(17)=abb76(34)
      acc76(18)=abb76(36)
      acc76(19)=abb76(37)
      acc76(20)=abb76(38)
      acc76(21)=abb76(39)
      acc76(22)=abb76(40)
      acc76(23)=abb76(41)
      acc76(24)=abb76(52)
      acc76(25)=abb76(53)
      acc76(26)=abb76(54)
      acc76(27)=abb76(55)
      acc76(28)=abb76(56)
      acc76(29)=QspQ*acc76(5)
      acc76(30)=Qspl5*acc76(3)
      acc76(31)=Qspval5k1*acc76(13)
      acc76(32)=Qspval5k3*acc76(10)
      acc76(33)=Qspval5l6*acc76(6)
      acc76(34)=Qspval5k7*acc76(8)
      acc76(35)=Qspk2*acc76(4)
      acc76(36)=Qspvak4k3*acc76(14)
      acc76(36)=acc76(12)+acc76(36)
      acc76(36)=Qspval5k2*acc76(36)
      acc76(29)=acc76(36)+acc76(35)+acc76(34)+acc76(33)+acc76(32)+acc76(31)+acc&
      &76(30)+acc76(2)+acc76(29)
      acc76(29)=Qspvak1k2*acc76(29)
      acc76(30)=Qspvak4k2*acc76(1)
      acc76(31)=Qspvak4k3*acc76(28)
      acc76(32)=Qspval6k2*acc76(27)
      acc76(33)=Qspvak7k2*acc76(26)
      acc76(34)=Qspk2*acc76(24)
      acc76(35)=Qspval5k2*acc76(25)
      acc76(30)=acc76(35)+acc76(34)+acc76(33)+acc76(32)+acc76(31)+acc76(7)+acc7&
      &6(30)
      acc76(30)=Qspval5k2*acc76(30)
      acc76(31)=QspQ*acc76(18)
      acc76(32)=Qspl5*acc76(16)
      acc76(33)=Qspvak4k2*acc76(9)
      acc76(34)=Qspval5k1*acc76(15)
      acc76(35)=Qspval5k3*acc76(19)
      acc76(36)=Qspval5l6*acc76(22)
      acc76(37)=Qspval5k7*acc76(23)
      acc76(38)=Qspval6k2*acc76(21)
      acc76(39)=Qspvak7k2*acc76(20)
      acc76(40)=Qspk2*acc76(17)
      brack=acc76(11)+acc76(29)+acc76(30)+acc76(31)+acc76(32)+acc76(33)+acc76(3&
      &4)+acc76(35)+acc76(36)+acc76(37)+acc76(38)+acc76(39)+acc76(40)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd76h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d76
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d76 = 0.0_ki
      d76 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d76, ki), aimag(d76), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d76h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd76h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d76
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d76 = 0.0_ki
      d76 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d76, ki), aimag(d76), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d76h0l1
