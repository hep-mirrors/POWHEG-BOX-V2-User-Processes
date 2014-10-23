module     p0_dbaru_epnebbbarg_d176h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d176h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd176h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc176(52)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: QspQ
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      QspQ = dotproduct(Q,Q)
      acc176(1)=abb176(14)
      acc176(2)=abb176(15)
      acc176(3)=abb176(16)
      acc176(4)=abb176(17)
      acc176(5)=abb176(18)
      acc176(6)=abb176(19)
      acc176(7)=abb176(20)
      acc176(8)=abb176(21)
      acc176(9)=abb176(22)
      acc176(10)=abb176(23)
      acc176(11)=abb176(24)
      acc176(12)=abb176(25)
      acc176(13)=abb176(26)
      acc176(14)=abb176(27)
      acc176(15)=abb176(29)
      acc176(16)=abb176(30)
      acc176(17)=abb176(32)
      acc176(18)=abb176(33)
      acc176(19)=abb176(34)
      acc176(20)=abb176(35)
      acc176(21)=abb176(36)
      acc176(22)=abb176(37)
      acc176(23)=abb176(39)
      acc176(24)=abb176(41)
      acc176(25)=abb176(43)
      acc176(26)=abb176(44)
      acc176(27)=abb176(45)
      acc176(28)=abb176(46)
      acc176(29)=abb176(47)
      acc176(30)=abb176(50)
      acc176(31)=abb176(64)
      acc176(32)=acc176(1)*Qspvak1k2
      acc176(33)=acc176(22)*Qspvak4k2
      acc176(34)=acc176(27)*Qspvak1k3
      acc176(32)=acc176(31)+acc176(34)+acc176(33)+acc176(32)
      acc176(32)=Qspval6k7*acc176(32)
      acc176(33)=acc176(4)*Qspvak1k3
      acc176(34)=acc176(7)*Qspvak1k2
      acc176(35)=acc176(16)*Qspvak4k2
      acc176(33)=acc176(35)+acc176(10)+acc176(34)+acc176(33)
      acc176(33)=Qspval6l5*acc176(33)
      acc176(34)=acc176(14)*Qspvak1k2
      acc176(35)=acc176(19)*Qspvak4k2
      acc176(36)=acc176(30)*Qspvak1k3
      acc176(34)=acc176(36)+acc176(35)+acc176(34)+acc176(8)
      acc176(34)=Qspk2*acc176(34)
      acc176(35)=acc176(5)*Qspvak1k2
      acc176(36)=acc176(6)*Qspvak1k3
      acc176(37)=acc176(18)*Qspvak4k2
      acc176(38)=Qspvak7l5*acc176(21)
      acc176(39)=Qspvak7k2*acc176(29)
      acc176(40)=Qspval6k3*acc176(13)
      acc176(41)=Qspval6k2*acc176(3)
      acc176(42)=Qspval5k7*acc176(9)
      acc176(43)=Qspval5k2*acc176(15)
      acc176(44)=Qspvak2k7*acc176(25)
      acc176(45)=Qspvak2l5*acc176(26)
      acc176(46)=Qspvak2k3*acc176(24)
      acc176(47)=Qspvak1k7*acc176(23)
      acc176(48)=Qspvak1l5*acc176(28)
      acc176(49)=Qspk7*acc176(11)
      acc176(50)=Qspl6*acc176(17)
      acc176(51)=Qspl5*acc176(12)
      acc176(52)=QspQ*acc176(20)
      brack=acc176(2)+acc176(32)+acc176(33)+acc176(34)+acc176(35)+acc176(36)+ac&
      &c176(37)+acc176(38)+acc176(39)+acc176(40)+acc176(41)+acc176(42)+acc176(4&
      &3)+acc176(44)+acc176(45)+acc176(46)+acc176(47)+acc176(48)+acc176(49)+acc&
      &176(50)+acc176(51)+acc176(52)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd176h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d176
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d176 = 0.0_ki
      d176 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d176, ki), aimag(d176), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d176h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd176h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d176
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d176 = 0.0_ki
      d176 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d176, ki), aimag(d176), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d176h1l1
