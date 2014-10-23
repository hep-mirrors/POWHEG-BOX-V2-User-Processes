module     p0_dbaru_epnebbbarg_d292h4l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d292h4l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd292h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc292(50)
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk7
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspl5
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak7k2
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk7 = dotproduct(Q,k7)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspl5 = dotproduct(Q,l5)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc292(1)=abb292(10)
      acc292(2)=abb292(11)
      acc292(3)=abb292(12)
      acc292(4)=abb292(13)
      acc292(5)=abb292(14)
      acc292(6)=abb292(15)
      acc292(7)=abb292(16)
      acc292(8)=abb292(17)
      acc292(9)=abb292(18)
      acc292(10)=abb292(19)
      acc292(11)=abb292(20)
      acc292(12)=abb292(21)
      acc292(13)=abb292(22)
      acc292(14)=abb292(23)
      acc292(15)=abb292(24)
      acc292(16)=abb292(25)
      acc292(17)=abb292(26)
      acc292(18)=abb292(27)
      acc292(19)=abb292(28)
      acc292(20)=abb292(29)
      acc292(21)=abb292(32)
      acc292(22)=abb292(34)
      acc292(23)=abb292(36)
      acc292(24)=abb292(37)
      acc292(25)=abb292(38)
      acc292(26)=abb292(39)
      acc292(27)=abb292(40)
      acc292(28)=abb292(41)
      acc292(29)=abb292(42)
      acc292(30)=abb292(43)
      acc292(31)=abb292(44)
      acc292(32)=abb292(46)
      acc292(33)=abb292(47)
      acc292(34)=abb292(48)
      acc292(35)=abb292(49)
      acc292(36)=abb292(50)
      acc292(37)=abb292(51)
      acc292(38)=abb292(52)
      acc292(39)=Qspvak4k3*acc292(10)
      acc292(40)=Qspval6k2*acc292(36)
      acc292(41)=Qspk7*acc292(16)
      acc292(42)=QspQ*acc292(11)
      acc292(43)=Qspk2*acc292(18)
      acc292(44)=Qspvak4k2*acc292(26)
      acc292(45)=Qspvak4k3*acc292(7)
      acc292(45)=acc292(3)+acc292(45)
      acc292(45)=Qspvak1k2*acc292(45)
      acc292(46)=Qspval5k2*acc292(24)
      acc292(39)=acc292(46)+acc292(45)+acc292(44)+acc292(43)+acc292(42)+acc292(&
      &41)+acc292(40)+acc292(1)+acc292(39)
      acc292(39)=Qspval5k2*acc292(39)
      acc292(40)=Qspl5*acc292(13)
      acc292(41)=Qspval5k3*acc292(2)
      acc292(42)=Qspval5l6*acc292(8)
      acc292(43)=-acc292(11)*Qspval5k1
      acc292(40)=acc292(43)+acc292(42)+acc292(41)+acc292(4)+acc292(40)
      acc292(40)=Qspvak1k2*acc292(40)
      acc292(41)=Qspl5*acc292(12)
      acc292(42)=Qspval5k1*acc292(27)
      acc292(43)=Qspval5k3*acc292(22)
      acc292(44)=Qspval5l6*acc292(31)
      acc292(45)=Qspval6k2*acc292(29)
      acc292(46)=Qspk7*acc292(19)
      acc292(47)=QspQ*acc292(28)
      acc292(48)=Qspk2*acc292(17)
      acc292(49)=Qspvak4k2*acc292(5)
      acc292(50)=Qspval5k2*acc292(25)
      acc292(50)=acc292(30)+acc292(50)
      acc292(50)=Qspvak7k2*acc292(50)
      acc292(39)=acc292(50)+acc292(39)+acc292(40)+acc292(49)+acc292(48)+acc292(&
      &47)+acc292(46)+acc292(45)+acc292(44)+acc292(43)+acc292(42)+acc292(15)+ac&
      &c292(41)
      acc292(39)=Qspvak7k2*acc292(39)
      acc292(40)=Qspk2-Qspk7
      acc292(41)=-acc292(23)*acc292(40)
      acc292(42)=QspQ*acc292(6)
      acc292(41)=acc292(42)+acc292(41)
      acc292(41)=Qspvak4k2*acc292(41)
      acc292(42)=Qspk7*acc292(35)
      acc292(43)=-QspQ*acc292(33)
      acc292(44)=Qspk2*acc292(32)
      acc292(41)=acc292(41)+acc292(44)+acc292(43)+acc292(34)+acc292(42)
      acc292(41)=Qspval5k2*acc292(41)
      acc292(40)=acc292(38)*acc292(40)
      acc292(42)=QspQ*acc292(37)
      acc292(40)=acc292(42)+acc292(40)
      acc292(40)=Qspvak4k2*acc292(40)
      acc292(42)=QspQ*acc292(14)
      acc292(43)=Qspk2*acc292(20)
      acc292(42)=acc292(42)+acc292(43)
      acc292(42)=Qspvak1k2*acc292(42)
      acc292(43)=QspQ*acc292(9)
      acc292(44)=Qspk2*acc292(21)
      brack=acc292(39)+acc292(40)+acc292(41)+acc292(42)+acc292(43)+acc292(44)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd292h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d292
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d292 = 0.0_ki
      d292 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d292, ki), aimag(d292), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d292h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd292h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d292
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d292 = 0.0_ki
      d292 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d292, ki), aimag(d292), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d292h4l1
