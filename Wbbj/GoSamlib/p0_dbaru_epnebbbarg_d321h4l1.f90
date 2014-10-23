module     p0_dbaru_epnebbbarg_d321h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d321h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd321h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc321(54)
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspvak7k2
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc321(1)=abb321(12)
      acc321(2)=abb321(13)
      acc321(3)=abb321(14)
      acc321(4)=abb321(15)
      acc321(5)=abb321(16)
      acc321(6)=abb321(17)
      acc321(7)=abb321(18)
      acc321(8)=abb321(19)
      acc321(9)=abb321(20)
      acc321(10)=abb321(21)
      acc321(11)=abb321(22)
      acc321(12)=abb321(23)
      acc321(13)=abb321(25)
      acc321(14)=abb321(26)
      acc321(15)=abb321(27)
      acc321(16)=abb321(29)
      acc321(17)=abb321(30)
      acc321(18)=abb321(31)
      acc321(19)=abb321(32)
      acc321(20)=abb321(33)
      acc321(21)=abb321(34)
      acc321(22)=abb321(35)
      acc321(23)=abb321(37)
      acc321(24)=abb321(38)
      acc321(25)=abb321(41)
      acc321(26)=abb321(43)
      acc321(27)=abb321(44)
      acc321(28)=abb321(45)
      acc321(29)=abb321(46)
      acc321(30)=abb321(47)
      acc321(31)=abb321(49)
      acc321(32)=abb321(50)
      acc321(33)=abb321(55)
      acc321(34)=abb321(61)
      acc321(35)=abb321(70)
      acc321(36)=abb321(71)
      acc321(37)=abb321(73)
      acc321(38)=abb321(79)
      acc321(39)=Qspk4+Qspk3
      acc321(40)=acc321(39)-Qspk2
      acc321(41)=acc321(4)*acc321(40)
      acc321(42)=Qspvak4k3*acc321(20)
      acc321(43)=Qspvak4k2*acc321(14)
      acc321(44)=Qspvak1k2*acc321(8)
      acc321(41)=acc321(44)+acc321(43)+acc321(1)+acc321(42)+acc321(41)
      acc321(41)=Qspval5k2*acc321(41)
      acc321(40)=acc321(28)*acc321(40)
      acc321(42)=Qspvak4k3*acc321(21)
      acc321(43)=Qspvak4k2*acc321(30)
      acc321(44)=Qspvak1k2*acc321(9)
      acc321(40)=acc321(44)+acc321(43)+acc321(18)+acc321(42)+acc321(40)
      acc321(40)=Qspval6k2*acc321(40)
      acc321(39)=acc321(22)*acc321(39)
      acc321(42)=acc321(25)*Qspl6
      acc321(43)=Qspl5*acc321(33)
      acc321(44)=Qspvak1k3*acc321(12)
      acc321(45)=Qspval6k3*acc321(31)
      acc321(46)=Qspval6l5*acc321(17)
      acc321(47)=-acc321(37)*Qspval6k7
      acc321(48)=Qspk7*acc321(24)
      acc321(49)=Qspvak4k3*acc321(11)
      acc321(50)=QspQ*acc321(35)
      acc321(51)=Qspk2*acc321(34)
      acc321(52)=Qspvak4k2*acc321(23)
      acc321(53)=Qspvak1k2*acc321(5)
      acc321(54)=Qspvak7k2*acc321(36)
      acc321(39)=acc321(54)+acc321(40)+acc321(41)+acc321(53)+acc321(52)+acc321(&
      &51)+acc321(50)+acc321(49)+acc321(48)+acc321(47)+acc321(46)+acc321(45)+ac&
      &c321(44)+acc321(43)+acc321(42)+acc321(3)+acc321(39)
      acc321(39)=Qspvak7k2*acc321(39)
      acc321(40)=Qspk7*acc321(37)
      acc321(41)=QspQ*acc321(29)
      acc321(40)=acc321(41)+acc321(7)+acc321(40)
      acc321(40)=Qspval6k2*acc321(40)
      acc321(41)=Qspl5*acc321(27)
      acc321(42)=Qspvak1k3*acc321(32)
      acc321(43)=Qspval6k3*acc321(38)
      acc321(44)=Qspval6l5*acc321(19)
      acc321(45)=Qspk7*acc321(15)
      acc321(46)=QspQ*acc321(10)
      acc321(47)=Qspk2*acc321(16)
      acc321(48)=Qspvak4k2*acc321(26)
      acc321(49)=QspQ*acc321(2)
      acc321(49)=acc321(6)+acc321(49)
      acc321(49)=Qspvak1k2*acc321(49)
      brack=acc321(13)+acc321(39)+acc321(40)+acc321(41)+acc321(42)+acc321(43)+a&
      &cc321(44)+acc321(45)+acc321(46)+acc321(47)+acc321(48)+acc321(49)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd321h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d321
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k6
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d321 = 0.0_ki
      d321 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d321, ki), aimag(d321), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d321h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd321h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d321
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k6
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d321 = 0.0_ki
      d321 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d321, ki), aimag(d321), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d321h4l1
