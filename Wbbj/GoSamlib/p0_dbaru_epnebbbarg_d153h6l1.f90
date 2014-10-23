module     p0_dbaru_epnebbbarg_d153h6l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d153h6l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd153h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc153(60)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5k2
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspk7
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk2 = dotproduct(Q,k2)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5k2 = dotproduct(Q,spval5k2)
      QspQ = dotproduct(Q,Q)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspk7 = dotproduct(Q,k7)
      acc153(1)=abb153(24)
      acc153(2)=abb153(25)
      acc153(3)=abb153(26)
      acc153(4)=abb153(27)
      acc153(5)=abb153(28)
      acc153(6)=abb153(29)
      acc153(7)=abb153(30)
      acc153(8)=abb153(31)
      acc153(9)=abb153(32)
      acc153(10)=abb153(33)
      acc153(11)=abb153(35)
      acc153(12)=abb153(36)
      acc153(13)=abb153(37)
      acc153(14)=abb153(38)
      acc153(15)=abb153(39)
      acc153(16)=abb153(41)
      acc153(17)=abb153(42)
      acc153(18)=abb153(43)
      acc153(19)=abb153(44)
      acc153(20)=abb153(45)
      acc153(21)=abb153(46)
      acc153(22)=abb153(48)
      acc153(23)=abb153(50)
      acc153(24)=abb153(51)
      acc153(25)=abb153(52)
      acc153(26)=abb153(53)
      acc153(27)=abb153(54)
      acc153(28)=abb153(56)
      acc153(29)=abb153(57)
      acc153(30)=abb153(58)
      acc153(31)=abb153(61)
      acc153(32)=abb153(65)
      acc153(33)=abb153(66)
      acc153(34)=abb153(68)
      acc153(35)=abb153(69)
      acc153(36)=abb153(71)
      acc153(37)=abb153(72)
      acc153(38)=abb153(79)
      acc153(39)=abb153(82)
      acc153(40)=abb153(85)
      acc153(41)=abb153(87)
      acc153(42)=abb153(89)
      acc153(43)=abb153(100)
      acc153(44)=abb153(105)
      acc153(45)=abb153(106)
      acc153(46)=acc153(11)*Qspvak1k2
      acc153(47)=acc153(22)*Qspvak4k2
      acc153(48)=acc153(30)*Qspvak1k3
      acc153(46)=acc153(48)+acc153(47)+acc153(20)+acc153(46)
      acc153(46)=acc153(46)*Qspk2
      acc153(47)=acc153(2)*Qspvak1k2
      acc153(48)=acc153(31)*Qspvak1k3
      acc153(49)=acc153(34)*Qspvak4k2
      acc153(47)=acc153(49)+acc153(48)+acc153(5)+acc153(47)
      acc153(47)=acc153(47)*Qspval5l6
      acc153(48)=acc153(1)*Qspvak1k2
      acc153(49)=acc153(8)*Qspvak2k3
      acc153(50)=acc153(12)*Qspval5k3
      acc153(51)=acc153(17)*Qspvak4k2
      acc153(52)=acc153(18)*Qspval5k2
      acc153(53)=acc153(29)*QspQ
      acc153(54)=acc153(38)*Qspval6k3
      acc153(55)=acc153(45)*Qspval6k2
      acc153(56)=Qspvak4l6*acc153(23)
      acc153(57)=Qspvak1l6*acc153(4)
      acc153(58)=Qspvak1l5*acc153(13)
      acc153(46)=acc153(51)+acc153(48)+acc153(47)+acc153(46)+acc153(58)+acc153(&
      &57)+acc153(56)+acc153(55)+acc153(54)+acc153(53)+acc153(52)+acc153(50)+ac&
      &c153(49)+acc153(3)
      acc153(46)=Qspvak7k2*acc153(46)
      acc153(47)=acc153(14)*Qspvak1k3
      acc153(48)=-acc153(25)*Qspvak1k2
      acc153(49)=-acc153(26)*Qspvak4k2
      acc153(50)=acc153(33)*Qspval5l6
      acc153(51)=acc153(44)*Qspk2
      acc153(47)=acc153(51)+acc153(50)+acc153(49)+acc153(48)+acc153(47)+acc153(&
      &10)
      acc153(47)=QspQ*acc153(47)
      acc153(48)=-Qspl6-Qspl5
      acc153(49)=acc153(40)*Qspvak7k2
      acc153(49)=acc153(49)-acc153(9)
      acc153(48)=acc153(49)*acc153(48)
      acc153(49)=acc153(28)*Qspk2
      acc153(50)=acc153(37)*Qspval5l6
      acc153(49)=acc153(50)+acc153(36)+acc153(49)
      acc153(49)=Qspvak7k3*acc153(49)
      acc153(50)=acc153(19)*Qspval5l6
      acc153(51)=acc153(41)*Qspk2
      acc153(50)=acc153(51)+acc153(27)+acc153(50)
      acc153(50)=Qspk7*acc153(50)
      acc153(51)=acc153(6)*Qspval5l6
      acc153(52)=acc153(7)*Qspval5k3
      acc153(53)=acc153(15)*Qspval5k2
      acc153(54)=acc153(21)*Qspvak1k2
      acc153(55)=acc153(24)*Qspvak1k3
      acc153(56)=acc153(32)*Qspvak4k2
      acc153(57)=acc153(35)*Qspvak2k3
      acc153(58)=acc153(39)*Qspval6k2
      acc153(59)=acc153(42)*Qspk2
      acc153(60)=acc153(43)*Qspval6k3
      brack=acc153(16)+acc153(46)+acc153(47)+acc153(48)+acc153(49)+acc153(50)+a&
      &cc153(51)+acc153(52)+acc153(53)+acc153(54)+acc153(55)+acc153(56)+acc153(&
      &57)+acc153(58)+acc153(59)+acc153(60)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd153h6
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
   & bind(c, name="p0_dbaru_epnebbbarg_d153h6l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd153h6
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
end module p0_dbaru_epnebbbarg_d153h6l1
