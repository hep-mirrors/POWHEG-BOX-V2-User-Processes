module     p0_dbaru_epnebbbarg_d82h5l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d82h5l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd82h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc82(65)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k2
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak7k2
      Qspk1 = dotproduct(Q,k1)
      Qspk7 = dotproduct(Q,k7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      acc82(1)=abb82(8)
      acc82(2)=abb82(9)
      acc82(3)=abb82(10)
      acc82(4)=abb82(11)
      acc82(5)=abb82(12)
      acc82(6)=abb82(13)
      acc82(7)=abb82(14)
      acc82(8)=abb82(15)
      acc82(9)=abb82(16)
      acc82(10)=abb82(17)
      acc82(11)=abb82(18)
      acc82(12)=abb82(19)
      acc82(13)=abb82(20)
      acc82(14)=abb82(21)
      acc82(15)=abb82(22)
      acc82(16)=abb82(23)
      acc82(17)=abb82(24)
      acc82(18)=abb82(25)
      acc82(19)=abb82(26)
      acc82(20)=abb82(27)
      acc82(21)=abb82(28)
      acc82(22)=abb82(30)
      acc82(23)=abb82(32)
      acc82(24)=abb82(33)
      acc82(25)=abb82(35)
      acc82(26)=abb82(36)
      acc82(27)=abb82(37)
      acc82(28)=abb82(38)
      acc82(29)=abb82(40)
      acc82(30)=abb82(42)
      acc82(31)=abb82(43)
      acc82(32)=abb82(44)
      acc82(33)=abb82(46)
      acc82(34)=abb82(47)
      acc82(35)=abb82(48)
      acc82(36)=abb82(49)
      acc82(37)=abb82(50)
      acc82(38)=abb82(51)
      acc82(39)=abb82(52)
      acc82(40)=abb82(53)
      acc82(41)=abb82(54)
      acc82(42)=abb82(55)
      acc82(43)=abb82(56)
      acc82(44)=abb82(57)
      acc82(45)=abb82(58)
      acc82(46)=abb82(59)
      acc82(47)=abb82(61)
      acc82(48)=abb82(62)
      acc82(49)=abb82(63)
      acc82(50)=abb82(64)
      acc82(51)=abb82(65)
      acc82(52)=abb82(66)
      acc82(53)=-Qspk1-Qspk7
      acc82(53)=acc82(43)*acc82(53)
      acc82(54)=Qspval6l5*acc82(48)
      acc82(54)=acc82(54)+acc82(2)
      acc82(54)=Qspvak1k2*acc82(54)
      acc82(55)=acc82(5)*Qspvak1l5
      acc82(56)=acc82(52)*Qspvak1k4
      acc82(57)=-acc82(37)*Qspvak3k2
      acc82(58)=Qspvak4k2*acc82(42)
      acc82(59)=Qspvak1k3*acc82(14)
      acc82(60)=Qspval6k2*acc82(49)
      acc82(61)=QspQ*acc82(45)
      acc82(62)=Qspvak1k2*acc82(13)
      acc82(62)=acc82(44)+acc82(62)
      acc82(62)=Qspk2*acc82(62)
      acc82(53)=acc82(62)+acc82(61)+acc82(60)+acc82(59)+acc82(58)+acc82(57)+acc&
      &82(56)+acc82(40)+acc82(55)+acc82(54)+acc82(53)
      acc82(53)=Qspvak4k3*acc82(53)
      acc82(54)=Qspk4+Qspk3
      acc82(55)=acc82(34)*acc82(54)
      acc82(56)=Qspvak1k2*acc82(22)
      acc82(57)=Qspvak1k3*acc82(8)
      acc82(58)=Qspk1*acc82(24)
      acc82(59)=QspQ*acc82(19)
      acc82(55)=acc82(59)+acc82(58)+acc82(57)+acc82(32)+acc82(56)+acc82(55)
      acc82(55)=Qspk2*acc82(55)
      acc82(56)=Qspvak4k2*acc82(51)
      acc82(57)=Qspval6l5*acc82(27)
      acc82(58)=Qspvak1k3*acc82(4)
      acc82(57)=acc82(58)+acc82(57)+acc82(23)-acc82(56)
      acc82(57)=Qspk1*acc82(57)
      acc82(58)=-Qspvak4k2*acc82(37)
      acc82(59)=Qspvak1k3*acc82(52)
      acc82(60)=Qspval6k2*acc82(38)
      acc82(58)=acc82(60)+acc82(59)+acc82(15)+acc82(58)
      acc82(58)=QspQ*acc82(58)
      acc82(56)=acc82(56)-acc82(30)
      acc82(56)=acc82(56)*acc82(54)
      acc82(59)=-acc82(4)*acc82(54)
      acc82(60)=Qspval6l5*acc82(7)
      acc82(59)=acc82(60)+acc82(1)+acc82(59)
      acc82(59)=Qspvak1k3*acc82(59)
      acc82(60)=Qspk7*acc82(29)
      acc82(61)=Qspvak1k2*acc82(18)
      acc82(62)=Qspvak4k2*acc82(50)
      acc82(63)=Qspvak1k2*acc82(3)
      acc82(63)=acc82(6)+acc82(63)
      acc82(63)=Qspval6l5*acc82(63)
      acc82(54)=acc82(54)-Qspk1
      acc82(64)=-acc82(33)*acc82(54)
      acc82(64)=acc82(28)+acc82(64)
      acc82(64)=Qspval6k2*acc82(64)
      acc82(65)=Qspvak4k3*acc82(46)
      acc82(65)=acc82(35)+acc82(65)
      acc82(65)=Qspvak7k2*acc82(65)
      acc82(53)=acc82(65)+acc82(53)+acc82(55)+acc82(58)+acc82(64)+acc82(57)+acc&
      &82(59)+acc82(63)+acc82(62)+acc82(61)+acc82(25)+acc82(60)+acc82(56)
      acc82(53)=Qspvak7k2*acc82(53)
      acc82(55)=acc82(21)*acc82(54)
      acc82(56)=Qspval6k2*acc82(31)
      acc82(57)=Qspk7*acc82(17)
      acc82(58)=Qspval6l5*acc82(39)
      acc82(59)=-QspQ*acc82(16)
      acc82(55)=acc82(59)+acc82(56)+acc82(58)+acc82(12)+acc82(57)+acc82(55)
      acc82(55)=Qspk2*acc82(55)
      acc82(54)=-acc82(16)*acc82(54)
      acc82(56)=Qspval6l5*acc82(36)
      acc82(57)=Qspval6k2*acc82(26)
      acc82(58)=QspQ*acc82(20)
      acc82(54)=acc82(58)+acc82(57)+acc82(56)+acc82(10)+acc82(54)
      acc82(54)=QspQ*acc82(54)
      acc82(56)=Qspval6k2*Qspk7
      acc82(57)=acc82(47)*acc82(56)
      acc82(58)=Qspval6k2*acc82(11)
      acc82(58)=acc82(9)+acc82(58)
      acc82(58)=QspQ*acc82(58)
      acc82(59)=Qspval6k2*acc82(47)
      acc82(59)=acc82(41)-acc82(59)
      acc82(59)=Qspk2*acc82(59)
      acc82(57)=acc82(59)+acc82(57)+acc82(58)
      acc82(57)=Qspvak4k3*acc82(57)
      acc82(56)=-acc82(31)*acc82(56)
      brack=acc82(53)+acc82(54)+acc82(55)+acc82(56)+acc82(57)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd82h5
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d82
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d82 = 0.0_ki
      d82 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d82, ki), aimag(d82), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d82h5l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd82h5
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d82
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d82 = 0.0_ki
      d82 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d82, ki), aimag(d82), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d82h5l1
