module     p0_dbaru_epnebbbarg_d113h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d113h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd113h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc113(43)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval5l6
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k2
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      QspQ = dotproduct(Q,Q)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc113(1)=abb113(10)
      acc113(2)=abb113(11)
      acc113(3)=abb113(12)
      acc113(4)=abb113(13)
      acc113(5)=abb113(14)
      acc113(6)=abb113(15)
      acc113(7)=abb113(16)
      acc113(8)=abb113(17)
      acc113(9)=abb113(18)
      acc113(10)=abb113(19)
      acc113(11)=abb113(20)
      acc113(12)=abb113(21)
      acc113(13)=abb113(22)
      acc113(14)=abb113(23)
      acc113(15)=abb113(24)
      acc113(16)=abb113(25)
      acc113(17)=abb113(26)
      acc113(18)=abb113(27)
      acc113(19)=abb113(28)
      acc113(20)=abb113(29)
      acc113(21)=abb113(31)
      acc113(22)=abb113(32)
      acc113(23)=abb113(39)
      acc113(24)=abb113(46)
      acc113(25)=abb113(48)
      acc113(26)=abb113(50)
      acc113(27)=abb113(58)
      acc113(28)=abb113(64)
      acc113(29)=abb113(71)
      acc113(30)=Qspvak1k2*acc113(14)
      acc113(31)=Qspvak4k2*acc113(5)
      acc113(30)=acc113(31)+acc113(26)+acc113(30)
      acc113(30)=Qspk2*acc113(30)
      acc113(31)=acc113(15)*Qspvak1l6
      acc113(32)=acc113(13)*Qspval6k2
      acc113(33)=acc113(12)*Qspvak1k7
      acc113(34)=acc113(11)*Qspvak4l6
      acc113(35)=acc113(9)*Qspvak4k7
      acc113(36)=-Qspl5-Qspl6
      acc113(36)=acc113(29)*acc113(36)
      acc113(37)=Qspk7*acc113(23)
      acc113(38)=Qspval5k2*acc113(6)
      acc113(39)=Qspval5l6*acc113(4)
      acc113(40)=QspQ*acc113(21)
      acc113(41)=Qspval5l6*acc113(18)
      acc113(41)=acc113(2)+acc113(41)
      acc113(41)=Qspvak1k2*acc113(41)
      acc113(42)=Qspval5l6*acc113(1)
      acc113(42)=acc113(22)+acc113(42)
      acc113(42)=Qspvak4k2*acc113(42)
      acc113(43)=Qspvak7k2*acc113(3)
      acc113(30)=acc113(43)+acc113(30)+acc113(42)+acc113(41)+acc113(40)+acc113(&
      &39)+acc113(38)+acc113(37)+acc113(36)+acc113(35)+acc113(10)+acc113(34)+ac&
      &c113(33)+acc113(31)+acc113(32)
      acc113(30)=Qspvak7k2*acc113(30)
      acc113(31)=Qspval5k2*acc113(27)
      acc113(32)=Qspvak1k2*acc113(16)
      acc113(33)=Qspvak4k2*acc113(7)
      acc113(31)=acc113(33)+acc113(32)+acc113(8)+acc113(31)
      acc113(31)=QspQ*acc113(31)
      acc113(32)=Qspvak1k2*acc113(17)
      acc113(33)=Qspvak4k2*acc113(20)
      acc113(32)=acc113(33)+acc113(19)+acc113(32)
      acc113(32)=Qspk2*acc113(32)
      acc113(33)=Qspval5k2*acc113(28)
      acc113(33)=acc113(33)+acc113(24)
      acc113(33)=Qspk7*acc113(33)
      brack=acc113(25)+acc113(30)+acc113(31)+acc113(32)+acc113(33)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd113h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d113
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d113 = 0.0_ki
      d113 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d113, ki), aimag(d113), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d113h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd113h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d113
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d113 = 0.0_ki
      d113 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d113, ki), aimag(d113), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d113h6l1
