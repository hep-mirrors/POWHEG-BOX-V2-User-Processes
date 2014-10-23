module     p0_dbaru_epnebbbarg_d175h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d175h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd175h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc175(49)
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspl6
      complex(ki) :: QspQ
      Qspk2 = dotproduct(Q,k2)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspl6 = dotproduct(Q,l6)
      QspQ = dotproduct(Q,Q)
      acc175(1)=abb175(13)
      acc175(2)=abb175(14)
      acc175(3)=abb175(15)
      acc175(4)=abb175(16)
      acc175(5)=abb175(17)
      acc175(6)=abb175(18)
      acc175(7)=abb175(19)
      acc175(8)=abb175(20)
      acc175(9)=abb175(21)
      acc175(10)=abb175(22)
      acc175(11)=abb175(23)
      acc175(12)=abb175(24)
      acc175(13)=abb175(25)
      acc175(14)=abb175(26)
      acc175(15)=abb175(27)
      acc175(16)=abb175(28)
      acc175(17)=abb175(30)
      acc175(18)=abb175(31)
      acc175(19)=abb175(33)
      acc175(20)=abb175(35)
      acc175(21)=abb175(39)
      acc175(22)=abb175(41)
      acc175(23)=abb175(44)
      acc175(24)=abb175(50)
      acc175(25)=abb175(53)
      acc175(26)=abb175(57)
      acc175(27)=abb175(59)
      acc175(28)=abb175(61)
      acc175(29)=abb175(64)
      acc175(30)=abb175(67)
      acc175(31)=acc175(27)*Qspk2
      acc175(32)=acc175(28)*Qspvak7l6
      acc175(33)=acc175(29)*Qspval5l6
      acc175(31)=acc175(33)+acc175(32)+acc175(31)+acc175(26)
      acc175(31)=Qspvak4k3*acc175(31)
      acc175(32)=acc175(3)*Qspvak7l6
      acc175(33)=acc175(6)*Qspval5l6
      acc175(34)=acc175(20)*Qspk2
      acc175(32)=acc175(34)+acc175(33)+acc175(32)+acc175(2)
      acc175(32)=Qspvak4k2*acc175(32)
      acc175(33)=acc175(8)*Qspk2
      acc175(34)=acc175(11)*Qspvak7l6
      acc175(35)=acc175(14)*Qspval5l6
      acc175(33)=acc175(35)+acc175(34)+acc175(33)+acc175(1)
      acc175(33)=Qspvak1k2*acc175(33)
      acc175(34)=-acc175(13)*Qspval5l6
      acc175(35)=acc175(30)*Qspvak7l6
      acc175(34)=acc175(35)+acc175(34)
      acc175(35)=Qspk3+Qspk4
      acc175(36)=acc175(35)-Qspk2
      acc175(34)=acc175(36)*acc175(34)
      acc175(36)=Qspk2*acc175(35)
      acc175(37)=Qspk2**2
      acc175(36)=-acc175(37)+acc175(36)
      acc175(36)=acc175(12)*acc175(36)
      acc175(37)=Qspl5+Qspk7
      acc175(37)=acc175(22)*acc175(37)
      acc175(35)=acc175(25)*acc175(35)
      acc175(38)=acc175(4)*Qspk2
      acc175(39)=acc175(10)*Qspval5l6
      acc175(40)=acc175(24)*Qspvak7l6
      acc175(41)=Qspvak4l6*acc175(17)
      acc175(42)=Qspvak2k7*acc175(21)
      acc175(43)=Qspvak2l6*acc175(9)
      acc175(44)=Qspvak2l5*acc175(15)
      acc175(45)=Qspvak2k3*acc175(16)
      acc175(46)=Qspvak1l6*acc175(19)
      acc175(47)=Qspvak1k3*acc175(5)
      acc175(48)=Qspl6*acc175(23)
      acc175(49)=QspQ*acc175(18)
      brack=acc175(7)+acc175(31)+acc175(32)+acc175(33)+acc175(34)+acc175(35)+ac&
      &c175(36)+acc175(37)+acc175(38)+acc175(39)+acc175(40)+acc175(41)+acc175(4&
      &2)+acc175(43)+acc175(44)+acc175(45)+acc175(46)+acc175(47)+acc175(48)+acc&
      &175(49)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd175h6
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d175
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d175 = 0.0_ki
      d175 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d175, ki), aimag(d175), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d175h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd175h6
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d175
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k6
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d175 = 0.0_ki
      d175 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d175, ki), aimag(d175), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d175h6l1
