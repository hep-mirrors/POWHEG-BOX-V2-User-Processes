module     p0_dbaru_epnebbbarg_d179h5l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d179h5l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd179h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc179(51)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspl5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspl5 = dotproduct(Q,l5)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      acc179(1)=abb179(13)
      acc179(2)=abb179(14)
      acc179(3)=abb179(15)
      acc179(4)=abb179(16)
      acc179(5)=abb179(17)
      acc179(6)=abb179(18)
      acc179(7)=abb179(19)
      acc179(8)=abb179(20)
      acc179(9)=abb179(21)
      acc179(10)=abb179(22)
      acc179(11)=abb179(24)
      acc179(12)=abb179(25)
      acc179(13)=abb179(26)
      acc179(14)=abb179(27)
      acc179(15)=abb179(28)
      acc179(16)=abb179(29)
      acc179(17)=abb179(30)
      acc179(18)=abb179(31)
      acc179(19)=abb179(32)
      acc179(20)=abb179(33)
      acc179(21)=abb179(34)
      acc179(22)=abb179(37)
      acc179(23)=abb179(38)
      acc179(24)=abb179(39)
      acc179(25)=abb179(40)
      acc179(26)=abb179(42)
      acc179(27)=abb179(43)
      acc179(28)=abb179(47)
      acc179(29)=abb179(48)
      acc179(30)=abb179(49)
      acc179(31)=abb179(54)
      acc179(32)=abb179(56)
      acc179(33)=abb179(60)
      acc179(34)=abb179(63)
      acc179(35)=abb179(88)
      acc179(36)=abb179(94)
      acc179(37)=abb179(98)
      acc179(38)=abb179(107)
      acc179(39)=Qspk7+Qspl6
      acc179(40)=acc179(37)*acc179(39)
      acc179(41)=Qspval6k2*acc179(20)
      acc179(42)=Qspval6l5*acc179(27)
      acc179(43)=Qspvak7k2*acc179(13)
      acc179(44)=Qspvak7l5*acc179(38)
      acc179(40)=acc179(40)+acc179(41)+acc179(42)+acc179(43)-acc179(44)
      acc179(41)=acc179(40)+acc179(36)
      acc179(42)=Qspk4+Qspk3
      acc179(41)=acc179(41)*acc179(42)
      acc179(43)=acc179(11)*acc179(39)
      acc179(44)=Qspval6k2*acc179(9)
      acc179(45)=Qspval6l5*acc179(22)
      acc179(46)=Qspvak7k2*acc179(8)
      acc179(47)=Qspvak7l5*acc179(17)
      acc179(43)=acc179(47)+acc179(46)+acc179(45)+acc179(44)+acc179(1)+acc179(4&
      &3)
      acc179(43)=Qspvak1k2*acc179(43)
      acc179(44)=acc179(33)*acc179(39)
      acc179(45)=Qspval6k2*acc179(19)
      acc179(46)=Qspval6l5*acc179(12)
      acc179(47)=Qspvak7k2*acc179(6)
      acc179(48)=Qspvak7l5*acc179(25)
      acc179(44)=acc179(48)+acc179(47)+acc179(46)+acc179(45)+acc179(32)+acc179(&
      &44)
      acc179(44)=Qspvak4k2*acc179(44)
      acc179(45)=-acc179(26)*acc179(39)
      acc179(46)=Qspval6k2*acc179(23)
      acc179(47)=Qspval6l5*acc179(31)
      acc179(48)=Qspvak7k2*acc179(30)
      acc179(49)=Qspvak7l5*acc179(29)
      acc179(45)=acc179(49)+acc179(48)+acc179(47)+acc179(46)+acc179(24)+acc179(&
      &45)
      acc179(45)=Qspvak4k3*acc179(45)
      acc179(42)=Qspk2-acc179(42)
      acc179(42)=acc179(34)*acc179(42)
      acc179(46)=Qspvak1k2*acc179(15)
      acc179(47)=Qspvak4k2*acc179(18)
      acc179(48)=Qspvak4k3*acc179(28)
      acc179(40)=acc179(48)+acc179(47)+acc179(46)+acc179(5)+acc179(42)-acc179(4&
      &0)
      acc179(40)=Qspk2*acc179(40)
      acc179(39)=-acc179(16)*acc179(39)
      acc179(42)=acc179(35)*Qspl5
      acc179(46)=acc179(10)*QspQ
      acc179(47)=acc179(7)*Qspvak1k3
      acc179(48)=Qspval6k2*acc179(4)
      acc179(49)=Qspval6l5*acc179(21)
      acc179(50)=Qspvak7k2*acc179(2)
      acc179(51)=Qspvak7l5*acc179(14)
      brack=acc179(3)+acc179(39)+acc179(40)+acc179(41)+acc179(42)+acc179(43)+ac&
      &c179(44)+acc179(45)+acc179(46)+acc179(47)+acc179(48)+acc179(49)+acc179(5&
      &0)+acc179(51)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd179h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d179
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d179 = 0.0_ki
      d179 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d179, ki), aimag(d179), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d179h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd179h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d179
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d179 = 0.0_ki
      d179 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d179, ki), aimag(d179), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d179h5l1
