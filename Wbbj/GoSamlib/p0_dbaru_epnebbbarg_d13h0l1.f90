module     p0_dbaru_epnebbbarg_d13h0l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d13h0l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd13h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc13(37)
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk2
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk2 = dotproduct(Q,k2)
      acc13(1)=abb13(11)
      acc13(2)=abb13(12)
      acc13(3)=abb13(13)
      acc13(4)=abb13(14)
      acc13(5)=abb13(15)
      acc13(6)=abb13(16)
      acc13(7)=abb13(17)
      acc13(8)=abb13(18)
      acc13(9)=abb13(19)
      acc13(10)=abb13(20)
      acc13(11)=abb13(21)
      acc13(12)=abb13(22)
      acc13(13)=abb13(23)
      acc13(14)=abb13(24)
      acc13(15)=abb13(25)
      acc13(16)=abb13(26)
      acc13(17)=abb13(28)
      acc13(18)=abb13(30)
      acc13(19)=abb13(32)
      acc13(20)=abb13(33)
      acc13(21)=abb13(35)
      acc13(22)=abb13(36)
      acc13(23)=abb13(37)
      acc13(24)=abb13(44)
      acc13(25)=abb13(46)
      acc13(26)=abb13(47)
      acc13(27)=Qspvak1k3*acc13(3)
      acc13(28)=Qspvak1k7*acc13(8)
      acc13(29)=Qspvak7k2*acc13(25)
      acc13(30)=Qspl6+Qspl5
      acc13(31)=acc13(30)+Qspk1
      acc13(32)=acc13(22)*acc13(31)
      acc13(33)=QspQ*acc13(24)
      acc13(34)=Qspvak4k3*acc13(15)
      acc13(34)=acc13(13)+acc13(34)
      acc13(34)=Qspvak1k2*acc13(34)
      acc13(35)=Qspvak4k2*acc13(11)
      acc13(36)=Qspval5k2*acc13(19)
      acc13(37)=Qspval6k2*acc13(26)
      acc13(27)=acc13(37)+acc13(36)+acc13(35)+acc13(34)+acc13(33)+acc13(32)+acc&
      &13(29)+acc13(28)+acc13(12)+acc13(27)
      acc13(27)=Qspval6k2*acc13(27)
      acc13(28)=Qspvak1k3*acc13(1)
      acc13(29)=Qspvak1k7*acc13(4)
      acc13(32)=Qspvak7k2*acc13(18)
      acc13(31)=acc13(6)*acc13(31)
      acc13(33)=QspQ*acc13(10)
      acc13(34)=Qspvak4k3*acc13(16)
      acc13(34)=acc13(14)+acc13(34)
      acc13(34)=Qspvak1k2*acc13(34)
      acc13(35)=Qspvak4k2*acc13(2)
      acc13(36)=Qspval5k2*acc13(21)
      acc13(28)=acc13(36)+acc13(35)+acc13(34)+acc13(33)+acc13(31)+acc13(32)+acc&
      &13(29)+acc13(5)+acc13(28)
      acc13(28)=Qspval5k2*acc13(28)
      acc13(29)=-acc13(23)*acc13(30)
      acc13(30)=Qspk2*acc13(20)
      acc13(31)=QspQ*acc13(17)
      acc13(29)=acc13(31)+acc13(30)+acc13(29)
      acc13(29)=Qspvak4k2*acc13(29)
      acc13(30)=Qspk2*acc13(9)
      acc13(31)=QspQ*acc13(7)
      brack=acc13(27)+acc13(28)+acc13(29)+acc13(30)+acc13(31)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd13h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d13
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d13 = 0.0_ki
      d13 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d13, ki), aimag(d13), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d13h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd13h0
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d13
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d13 = 0.0_ki
      d13 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d13, ki), aimag(d13), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d13h0l1
