module     p0_dbaru_epnebbbarg_d101h5l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d101h5l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd101h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc101(61)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl6
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      Qspk7 = dotproduct(Q,k7)
      Qspl6 = dotproduct(Q,l6)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      acc101(1)=abb101(11)
      acc101(2)=abb101(12)
      acc101(3)=abb101(13)
      acc101(4)=abb101(14)
      acc101(5)=abb101(15)
      acc101(6)=abb101(16)
      acc101(7)=abb101(17)
      acc101(8)=abb101(18)
      acc101(9)=abb101(19)
      acc101(10)=abb101(20)
      acc101(11)=abb101(21)
      acc101(12)=abb101(22)
      acc101(13)=abb101(23)
      acc101(14)=abb101(24)
      acc101(15)=abb101(25)
      acc101(16)=abb101(26)
      acc101(17)=abb101(27)
      acc101(18)=abb101(28)
      acc101(19)=abb101(29)
      acc101(20)=abb101(30)
      acc101(21)=abb101(31)
      acc101(22)=abb101(32)
      acc101(23)=abb101(33)
      acc101(24)=abb101(34)
      acc101(25)=abb101(35)
      acc101(26)=abb101(36)
      acc101(27)=abb101(37)
      acc101(28)=abb101(38)
      acc101(29)=abb101(39)
      acc101(30)=abb101(40)
      acc101(31)=abb101(42)
      acc101(32)=abb101(43)
      acc101(33)=abb101(44)
      acc101(34)=abb101(45)
      acc101(35)=abb101(48)
      acc101(36)=abb101(50)
      acc101(37)=abb101(51)
      acc101(38)=abb101(55)
      acc101(39)=abb101(56)
      acc101(40)=abb101(58)
      acc101(41)=abb101(63)
      acc101(42)=abb101(68)
      acc101(43)=abb101(73)
      acc101(44)=abb101(76)
      acc101(45)=abb101(79)
      acc101(46)=abb101(81)
      acc101(47)=Qspk7+Qspl6
      acc101(48)=acc101(47)*acc101(42)
      acc101(49)=Qspk4+Qspk3
      acc101(50)=Qspk2-acc101(49)
      acc101(50)=acc101(37)*acc101(50)
      acc101(51)=Qspvak1k3*acc101(8)
      acc101(52)=Qspvak4k2*acc101(9)
      acc101(53)=Qspvak4k3*acc101(29)
      acc101(54)=Qspval6k2*acc101(38)
      acc101(55)=Qspvak7k2*acc101(44)
      acc101(56)=Qspvak1l5*acc101(30)
      acc101(50)=acc101(56)+acc101(55)+acc101(54)+acc101(53)+acc101(52)-acc101(&
      &48)+acc101(26)+acc101(51)+acc101(50)
      acc101(50)=Qspk2*acc101(50)
      acc101(51)=acc101(35)*acc101(49)
      acc101(52)=-acc101(34)*acc101(47)
      acc101(53)=Qspvak4k2*acc101(3)
      acc101(54)=Qspvak4k3*acc101(31)
      acc101(55)=Qspval6k2*acc101(4)
      acc101(56)=Qspvak7k2*acc101(20)
      acc101(51)=acc101(56)+acc101(55)+acc101(54)+acc101(53)+acc101(33)+acc101(&
      &52)+acc101(51)
      acc101(51)=Qspvak1l5*acc101(51)
      acc101(52)=-acc101(46)*acc101(49)
      acc101(53)=Qspvak2k3*acc101(15)
      acc101(54)=Qspvak4k2*acc101(13)
      acc101(55)=Qspvak4k3*acc101(2)
      acc101(52)=acc101(55)+acc101(54)+acc101(40)+acc101(53)+acc101(52)
      acc101(52)=Qspval6k2*acc101(52)
      acc101(53)=acc101(45)*acc101(49)
      acc101(54)=Qspvak2k3*acc101(18)
      acc101(55)=Qspvak4k2*acc101(19)
      acc101(56)=Qspvak4k3*acc101(5)
      acc101(53)=acc101(56)+acc101(55)+acc101(36)+acc101(54)+acc101(53)
      acc101(53)=Qspvak7k2*acc101(53)
      acc101(54)=Qspvak1k2*acc101(17)
      acc101(48)=acc101(48)-acc101(54)+acc101(41)
      acc101(48)=acc101(48)*acc101(49)
      acc101(49)=Qspval6l5*acc101(25)
      acc101(54)=Qspvak7l5*acc101(22)
      acc101(49)=acc101(49)+acc101(54)
      acc101(49)=Qspvak1k2*acc101(49)
      acc101(54)=acc101(21)*acc101(47)
      acc101(55)=Qspvak1k2*acc101(14)
      acc101(54)=acc101(55)+acc101(6)+acc101(54)
      acc101(54)=Qspvak4k2*acc101(54)
      acc101(47)=-acc101(11)*acc101(47)
      acc101(55)=Qspvak1k2*acc101(7)
      acc101(47)=acc101(55)+acc101(1)+acc101(47)
      acc101(47)=Qspvak4k3*acc101(47)
      acc101(55)=acc101(39)*Qspk1
      acc101(56)=acc101(28)*Qspvak2l5
      acc101(57)=acc101(27)*Qspvak2l6
      acc101(58)=acc101(23)*Qspvak2k7
      acc101(59)=Qspvak2k3*acc101(32)
      acc101(60)=Qspvak1k3*acc101(12)
      acc101(60)=acc101(24)+acc101(60)
      acc101(60)=Qspval6l5*acc101(60)
      acc101(61)=Qspvak1k3*acc101(10)
      acc101(61)=acc101(43)+acc101(61)
      acc101(61)=Qspvak7l5*acc101(61)
      brack=acc101(16)+acc101(47)+acc101(48)+acc101(49)+acc101(50)+acc101(51)+a&
      &cc101(52)+acc101(53)+acc101(54)+acc101(55)+acc101(56)+acc101(57)+acc101(&
      &58)+acc101(59)+acc101(60)+acc101(61)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd101h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d101
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d101 = 0.0_ki
      d101 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d101, ki), aimag(d101), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d101h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd101h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d101
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d101 = 0.0_ki
      d101 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d101, ki), aimag(d101), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d101h5l1
