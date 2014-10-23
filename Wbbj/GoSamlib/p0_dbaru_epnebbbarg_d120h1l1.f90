module     p0_dbaru_epnebbbarg_d120h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d120h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd120h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc120(50)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l5
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      acc120(1)=abb120(10)
      acc120(2)=abb120(11)
      acc120(3)=abb120(12)
      acc120(4)=abb120(13)
      acc120(5)=abb120(14)
      acc120(6)=abb120(15)
      acc120(7)=abb120(16)
      acc120(8)=abb120(17)
      acc120(9)=abb120(18)
      acc120(10)=abb120(19)
      acc120(11)=abb120(21)
      acc120(12)=abb120(23)
      acc120(13)=abb120(24)
      acc120(14)=abb120(26)
      acc120(15)=abb120(27)
      acc120(16)=abb120(28)
      acc120(17)=abb120(29)
      acc120(18)=abb120(30)
      acc120(19)=abb120(31)
      acc120(20)=abb120(32)
      acc120(21)=abb120(33)
      acc120(22)=abb120(34)
      acc120(23)=abb120(35)
      acc120(24)=abb120(36)
      acc120(25)=abb120(38)
      acc120(26)=abb120(39)
      acc120(27)=abb120(40)
      acc120(28)=abb120(41)
      acc120(29)=abb120(42)
      acc120(30)=abb120(44)
      acc120(31)=abb120(45)
      acc120(32)=abb120(46)
      acc120(33)=abb120(47)
      acc120(34)=abb120(48)
      acc120(35)=abb120(51)
      acc120(36)=abb120(59)
      acc120(37)=Qspk4+Qspk3
      acc120(38)=acc120(37)-Qspk2
      acc120(39)=acc120(33)*acc120(38)
      acc120(40)=Qspvak2k3*acc120(10)
      acc120(41)=Qspvak4k2*acc120(1)
      acc120(42)=Qspvak4k3*acc120(2)
      acc120(43)=Qspval6l5*acc120(32)
      acc120(44)=Qspval6k7*acc120(30)
      acc120(39)=acc120(44)+acc120(43)+acc120(42)+acc120(41)+acc120(34)+acc120(&
      &40)+acc120(39)
      acc120(39)=Qspvak1k2*acc120(39)
      acc120(40)=-acc120(26)*acc120(38)
      acc120(41)=-acc120(32)*Qspval6k2
      acc120(42)=acc120(31)*Qspval6k3
      acc120(43)=Qspvak4k2*acc120(15)
      acc120(44)=Qspvak4k3*acc120(16)
      acc120(40)=acc120(44)+acc120(43)+acc120(42)+acc120(13)+acc120(41)+acc120(&
      &40)
      acc120(40)=Qspvak1l5*acc120(40)
      acc120(41)=-acc120(27)*acc120(38)
      acc120(42)=-acc120(30)*Qspval6k2
      acc120(43)=acc120(28)*Qspval6k3
      acc120(44)=Qspvak4k2*acc120(5)
      acc120(45)=Qspvak4k3*acc120(22)
      acc120(41)=acc120(45)+acc120(44)+acc120(43)+acc120(11)+acc120(42)+acc120(&
      &41)
      acc120(41)=Qspvak1k7*acc120(41)
      acc120(42)=-acc120(36)*acc120(38)
      acc120(43)=-Qspvak1k3*acc120(31)
      acc120(44)=Qspvak4k2*acc120(21)
      acc120(45)=Qspvak4k3*acc120(25)
      acc120(42)=acc120(45)+acc120(44)+acc120(24)+acc120(43)+acc120(42)
      acc120(42)=Qspval6l5*acc120(42)
      acc120(38)=-acc120(35)*acc120(38)
      acc120(43)=-Qspvak1k3*acc120(28)
      acc120(44)=Qspvak4k2*acc120(20)
      acc120(45)=Qspvak4k3*acc120(23)
      acc120(38)=acc120(45)+acc120(44)+acc120(7)+acc120(43)+acc120(38)
      acc120(38)=Qspval6k7*acc120(38)
      acc120(37)=-acc120(12)*acc120(37)
      acc120(43)=acc120(19)*Qspvak2l6
      acc120(44)=acc120(18)*Qspk1
      acc120(45)=acc120(4)*Qspvak2k7
      acc120(46)=acc120(3)*Qspvak2l5
      acc120(47)=Qspvak2k3*acc120(29)
      acc120(48)=Qspvak4k2*acc120(8)
      acc120(49)=Qspvak4k3*acc120(6)
      acc120(50)=Qspvak1k3*acc120(17)
      acc120(50)=acc120(14)+acc120(50)
      acc120(50)=Qspk2*acc120(50)
      brack=acc120(9)+acc120(37)+acc120(38)+acc120(39)+acc120(40)+acc120(41)+ac&
      &c120(42)+acc120(43)+acc120(44)+acc120(45)+acc120(46)+acc120(47)+acc120(4&
      &8)+acc120(49)+acc120(50)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd120h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d120
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d120 = 0.0_ki
      d120 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d120, ki), aimag(d120), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d120h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd120h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d120
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d120 = 0.0_ki
      d120 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d120, ki), aimag(d120), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d120h1l1
