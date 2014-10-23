module     p0_dbaru_epnebbbarg_d322h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d322h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd322h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc322(65)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k7
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      acc322(1)=abb322(12)
      acc322(2)=abb322(13)
      acc322(3)=abb322(14)
      acc322(4)=abb322(15)
      acc322(5)=abb322(16)
      acc322(6)=abb322(17)
      acc322(7)=abb322(18)
      acc322(8)=abb322(19)
      acc322(9)=abb322(20)
      acc322(10)=abb322(21)
      acc322(11)=abb322(22)
      acc322(12)=abb322(23)
      acc322(13)=abb322(24)
      acc322(14)=abb322(25)
      acc322(15)=abb322(26)
      acc322(16)=abb322(27)
      acc322(17)=abb322(28)
      acc322(18)=abb322(29)
      acc322(19)=abb322(30)
      acc322(20)=abb322(31)
      acc322(21)=abb322(32)
      acc322(22)=abb322(33)
      acc322(23)=abb322(34)
      acc322(24)=abb322(35)
      acc322(25)=abb322(36)
      acc322(26)=abb322(37)
      acc322(27)=abb322(38)
      acc322(28)=abb322(39)
      acc322(29)=abb322(40)
      acc322(30)=abb322(41)
      acc322(31)=abb322(42)
      acc322(32)=abb322(45)
      acc322(33)=abb322(46)
      acc322(34)=abb322(47)
      acc322(35)=abb322(48)
      acc322(36)=abb322(49)
      acc322(37)=abb322(50)
      acc322(38)=abb322(51)
      acc322(39)=abb322(52)
      acc322(40)=abb322(53)
      acc322(41)=abb322(57)
      acc322(42)=abb322(59)
      acc322(43)=abb322(60)
      acc322(44)=abb322(63)
      acc322(45)=abb322(66)
      acc322(46)=abb322(73)
      acc322(47)=abb322(99)
      acc322(48)=Qspvak1k2*acc322(14)
      acc322(49)=Qspvak1k3*acc322(22)
      acc322(50)=Qspvak4k2*acc322(20)
      acc322(48)=acc322(50)+acc322(49)+acc322(5)+acc322(48)
      acc322(48)=Qspvak2l6*acc322(48)
      acc322(49)=Qspvak1k2*acc322(25)
      acc322(50)=Qspvak1k3*acc322(23)
      acc322(49)=acc322(50)+acc322(3)+acc322(49)
      acc322(49)=Qspvak2l5*acc322(49)
      acc322(50)=acc322(44)*Qspvak4l5
      acc322(51)=acc322(40)*Qspvak1l5
      acc322(52)=acc322(34)*Qspval5l6
      acc322(53)=Qspvak1l6*acc322(26)
      acc322(54)=Qspvak4l6*acc322(37)
      acc322(55)=acc322(31)*Qspvak7l6
      acc322(56)=Qspl5*acc322(41)
      acc322(57)=Qspl6*acc322(42)
      acc322(58)=Qspk7*acc322(43)
      acc322(59)=Qspvak1k2*acc322(9)
      acc322(60)=Qspvak1k3*acc322(15)
      acc322(61)=Qspvak2l5*acc322(17)
      acc322(61)=acc322(16)+acc322(61)
      acc322(61)=Qspvak4k2*acc322(61)
      acc322(62)=QspQ*acc322(2)
      acc322(63)=Qspvak2k3*acc322(33)
      acc322(64)=Qspk2*acc322(30)
      acc322(65)=Qspvak2k7*acc322(46)
      acc322(48)=acc322(65)+acc322(48)+acc322(64)+acc322(63)+acc322(62)+acc322(&
      &61)+acc322(49)+acc322(60)+acc322(59)+acc322(58)+acc322(57)+acc322(56)+ac&
      &c322(55)+acc322(54)+acc322(53)+acc322(1)+acc322(52)+acc322(50)+acc322(51)
      acc322(48)=Qspvak2k7*acc322(48)
      acc322(49)=Qspk7+Qspl6
      acc322(50)=acc322(21)*acc322(49)
      acc322(51)=QspQ*acc322(35)
      acc322(52)=Qspvak2k3*acc322(32)
      acc322(53)=Qspk2*acc322(28)
      acc322(50)=acc322(53)+acc322(52)+acc322(51)+acc322(13)+acc322(50)
      acc322(50)=Qspk2*acc322(50)
      acc322(51)=Qspl5*acc322(31)
      acc322(52)=QspQ*acc322(18)
      acc322(53)=Qspk2*acc322(10)
      acc322(51)=acc322(53)+acc322(52)+acc322(4)+acc322(51)
      acc322(51)=Qspvak2l6*acc322(51)
      acc322(49)=-acc322(27)*acc322(49)
      acc322(52)=-QspQ*acc322(19)
      acc322(49)=acc322(52)+acc322(24)+acc322(49)
      acc322(49)=Qspvak2k3*acc322(49)
      acc322(52)=Qspvak1l6*acc322(36)
      acc322(53)=Qspvak4l6*acc322(45)
      acc322(54)=Qspvak7l6*acc322(38)
      acc322(55)=Qspl5*acc322(11)
      acc322(56)=Qspl6*acc322(39)
      acc322(57)=Qspk7*acc322(47)
      acc322(58)=Qspvak1k2*acc322(12)
      acc322(59)=Qspvak1k3*acc322(7)
      acc322(60)=Qspvak4k2*acc322(6)
      acc322(61)=QspQ*acc322(29)
      brack=acc322(8)+acc322(48)+acc322(49)+acc322(50)+acc322(51)+acc322(52)+ac&
      &c322(53)+acc322(54)+acc322(55)+acc322(56)+acc322(57)+acc322(58)+acc322(5&
      &9)+acc322(60)+acc322(61)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd322h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d322
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d322 = 0.0_ki
      d322 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d322, ki), aimag(d322), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d322h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd322h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d322
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d322 = 0.0_ki
      d322 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d322, ki), aimag(d322), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d322h3l1
