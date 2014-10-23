module     p0_dbaru_epnebbbarg_d100h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d100h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd100h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc100(56)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak2l6
      complex(ki) :: QspQ
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k7 = dotproduct(Q,spvak4k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspk2 = dotproduct(Q,k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      QspQ = dotproduct(Q,Q)
      acc100(1)=abb100(11)
      acc100(2)=abb100(12)
      acc100(3)=abb100(13)
      acc100(4)=abb100(14)
      acc100(5)=abb100(15)
      acc100(6)=abb100(16)
      acc100(7)=abb100(17)
      acc100(8)=abb100(18)
      acc100(9)=abb100(19)
      acc100(10)=abb100(20)
      acc100(11)=abb100(21)
      acc100(12)=abb100(22)
      acc100(13)=abb100(23)
      acc100(14)=abb100(24)
      acc100(15)=abb100(25)
      acc100(16)=abb100(26)
      acc100(17)=abb100(27)
      acc100(18)=abb100(28)
      acc100(19)=abb100(29)
      acc100(20)=abb100(30)
      acc100(21)=abb100(31)
      acc100(22)=abb100(32)
      acc100(23)=abb100(33)
      acc100(24)=abb100(34)
      acc100(25)=abb100(35)
      acc100(26)=abb100(36)
      acc100(27)=abb100(37)
      acc100(28)=abb100(38)
      acc100(29)=abb100(39)
      acc100(30)=abb100(40)
      acc100(31)=abb100(41)
      acc100(32)=abb100(43)
      acc100(33)=abb100(46)
      acc100(34)=abb100(47)
      acc100(35)=abb100(50)
      acc100(36)=abb100(54)
      acc100(37)=abb100(55)
      acc100(38)=abb100(56)
      acc100(39)=abb100(57)
      acc100(40)=abb100(61)
      acc100(41)=Qspk7+Qspl6
      acc100(42)=acc100(5)*acc100(41)
      acc100(43)=Qspval6k2*acc100(6)
      acc100(44)=Qspvak1k2*acc100(13)
      acc100(45)=Qspvak1k7*acc100(8)
      acc100(46)=Qspvak4k2*acc100(15)
      acc100(47)=Qspvak4k7*acc100(32)
      acc100(48)=Qspval6k7*acc100(26)
      acc100(42)=acc100(48)+acc100(47)+acc100(46)+acc100(45)+acc100(44)+acc100(&
      &1)+acc100(43)+acc100(42)
      acc100(42)=Qspk2*acc100(42)
      acc100(43)=Qspvak7k2*acc100(16)
      acc100(44)=Qspval6k2*acc100(19)
      acc100(45)=Qspvak1k2*acc100(24)
      acc100(46)=Qspvak1k7*acc100(21)
      acc100(47)=Qspvak4k2*acc100(25)
      acc100(48)=Qspvak4k7*acc100(20)
      acc100(43)=acc100(48)+acc100(47)+acc100(46)+acc100(45)+acc100(44)+acc100(&
      &9)+acc100(43)
      acc100(43)=Qspvak2k7*acc100(43)
      acc100(44)=Qspvak1l6*acc100(28)
      acc100(45)=Qspvak4l6*acc100(33)
      acc100(46)=Qspvak1k2*acc100(4)
      acc100(47)=Qspvak1k7*acc100(14)
      acc100(48)=Qspvak4k2*acc100(12)
      acc100(49)=Qspvak4k7*acc100(38)
      acc100(44)=acc100(49)+acc100(48)+acc100(47)+acc100(46)+acc100(45)+acc100(&
      &11)+acc100(44)
      acc100(44)=Qspval6k7*acc100(44)
      acc100(45)=acc100(10)*Qspvak7l6
      acc100(46)=acc100(7)*Qspvak2l6
      acc100(47)=acc100(3)*QspQ
      acc100(48)=Qspvak1l6*acc100(22)
      acc100(49)=Qspvak4l6*acc100(39)
      acc100(50)=Qspvak7k2*acc100(18)
      acc100(51)=Qspval6k2*acc100(17)
      acc100(52)=Qspl6*acc100(36)
      acc100(53)=Qspk7*acc100(30)
      acc100(54)=-acc100(31)*acc100(41)
      acc100(54)=acc100(2)+acc100(54)
      acc100(54)=Qspvak1k2*acc100(54)
      acc100(55)=acc100(29)*acc100(41)
      acc100(55)=acc100(27)+acc100(55)
      acc100(55)=Qspvak1k7*acc100(55)
      acc100(56)=-acc100(40)*acc100(41)
      acc100(56)=acc100(37)+acc100(56)
      acc100(56)=Qspvak4k2*acc100(56)
      acc100(41)=acc100(35)*acc100(41)
      acc100(41)=acc100(34)+acc100(41)
      acc100(41)=Qspvak4k7*acc100(41)
      brack=acc100(23)+acc100(41)+acc100(42)+acc100(43)+acc100(44)+acc100(45)+a&
      &cc100(46)+acc100(47)+acc100(48)+acc100(49)+acc100(50)+acc100(51)+acc100(&
      &52)+acc100(53)+acc100(54)+acc100(55)+acc100(56)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd100h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d100
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d100 = 0.0_ki
      d100 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d100, ki), aimag(d100), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d100h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd100h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d100
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d100 = 0.0_ki
      d100 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d100, ki), aimag(d100), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d100h1l1
