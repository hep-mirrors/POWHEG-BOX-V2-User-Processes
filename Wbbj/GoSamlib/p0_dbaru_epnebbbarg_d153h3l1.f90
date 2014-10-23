module     p0_dbaru_epnebbbarg_d153h3l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d153h3l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd153h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc153(55)
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4l5
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak4l5 = dotproduct(Q,spvak4l5)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      acc153(1)=abb153(20)
      acc153(2)=abb153(21)
      acc153(3)=abb153(22)
      acc153(4)=abb153(23)
      acc153(5)=abb153(24)
      acc153(6)=abb153(25)
      acc153(7)=abb153(26)
      acc153(8)=abb153(27)
      acc153(9)=abb153(28)
      acc153(10)=abb153(29)
      acc153(11)=abb153(30)
      acc153(12)=abb153(31)
      acc153(13)=abb153(32)
      acc153(14)=abb153(33)
      acc153(15)=abb153(34)
      acc153(16)=abb153(35)
      acc153(17)=abb153(36)
      acc153(18)=abb153(37)
      acc153(19)=abb153(38)
      acc153(20)=abb153(39)
      acc153(21)=abb153(40)
      acc153(22)=abb153(41)
      acc153(23)=abb153(42)
      acc153(24)=abb153(43)
      acc153(25)=abb153(44)
      acc153(26)=abb153(45)
      acc153(27)=abb153(48)
      acc153(28)=abb153(49)
      acc153(29)=abb153(52)
      acc153(30)=abb153(58)
      acc153(31)=abb153(60)
      acc153(32)=abb153(61)
      acc153(33)=abb153(62)
      acc153(34)=abb153(65)
      acc153(35)=abb153(68)
      acc153(36)=abb153(70)
      acc153(37)=abb153(74)
      acc153(38)=abb153(81)
      acc153(39)=abb153(83)
      acc153(40)=abb153(85)
      acc153(41)=abb153(93)
      acc153(42)=abb153(107)
      acc153(43)=acc153(12)*Qspvak1k3
      acc153(44)=acc153(19)*Qspvak4k2
      acc153(45)=acc153(26)*Qspvak1k2
      acc153(43)=acc153(45)+acc153(44)+acc153(43)+acc153(3)
      acc153(43)=acc153(43)*Qspvak2l5
      acc153(44)=acc153(16)*Qspvak1k3
      acc153(45)=acc153(20)*Qspvak1k2
      acc153(46)=acc153(38)*Qspvak4k2
      acc153(44)=acc153(46)+acc153(37)+acc153(45)+acc153(44)
      acc153(44)=acc153(44)*Qspvak2l6
      acc153(45)=acc153(4)*Qspvak1l5
      acc153(46)=acc153(6)*Qspvak1l6
      acc153(47)=acc153(30)*Qspk2
      acc153(48)=acc153(33)*QspQ
      acc153(49)=acc153(36)*Qspvak4l5
      acc153(50)=acc153(41)*Qspvak4l6
      acc153(51)=Qspval6k3*acc153(15)
      acc153(52)=Qspval6k2*acc153(29)
      acc153(53)=Qspval5k3*acc153(14)
      acc153(54)=Qspval5k2*acc153(27)
      acc153(55)=Qspvak2k3*acc153(5)
      acc153(43)=acc153(44)+acc153(43)+acc153(55)+acc153(54)+acc153(53)+acc153(&
      &52)+acc153(51)+acc153(50)+acc153(49)+acc153(48)+acc153(47)+acc153(46)+ac&
      &c153(45)+acc153(2)
      acc153(43)=Qspvak2k7*acc153(43)
      acc153(44)=acc153(13)*Qspvak1k7
      acc153(45)=acc153(22)*Qspk7
      acc153(46)=acc153(25)*QspQ
      acc153(47)=acc153(34)*Qspvak4k7
      acc153(44)=acc153(39)+acc153(47)+acc153(46)+acc153(45)+acc153(44)
      acc153(44)=Qspvak2l6*acc153(44)
      acc153(45)=acc153(9)*Qspk7
      acc153(46)=acc153(17)*QspQ
      acc153(47)=acc153(23)*Qspvak4k7
      acc153(48)=acc153(24)*Qspvak1k7
      acc153(45)=acc153(28)+acc153(48)+acc153(47)+acc153(46)+acc153(45)
      acc153(45)=Qspvak2l5*acc153(45)
      acc153(46)=Qspl6+Qspl5
      acc153(47)=acc153(31)*Qspvak2k7
      acc153(47)=acc153(47)+acc153(11)
      acc153(46)=acc153(47)*acc153(46)
      acc153(47)=acc153(1)*Qspvak1k7
      acc153(48)=acc153(7)*Qspk7
      acc153(49)=-acc153(8)*QspQ
      acc153(50)=acc153(10)*Qspvak1l5
      acc153(51)=acc153(18)*Qspvak1l6
      acc153(52)=acc153(21)*Qspvak4k7
      acc153(53)=acc153(32)*Qspk2
      acc153(54)=acc153(40)*Qspvak4l6
      acc153(55)=acc153(42)*Qspvak4l5
      brack=acc153(35)+acc153(43)+acc153(44)+acc153(45)+acc153(46)+acc153(47)+a&
      &cc153(48)+acc153(49)+acc153(50)+acc153(51)+acc153(52)+acc153(53)+acc153(&
      &54)+acc153(55)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd153h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d153
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d153 = 0.0_ki
      d153 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d153, ki), aimag(d153), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d153h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd153h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d153
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d153 = 0.0_ki
      d153 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d153, ki), aimag(d153), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d153h3l1
