module     p0_dbaru_epnebbbarg_d72h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d72h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd72h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc72(66)
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1k4
      complex(ki) :: Qspval6k4
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: QspQ
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l5
      Qspk2 = dotproduct(Q,k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1k4 = dotproduct(Q,spvak1k4)
      Qspval6k4 = dotproduct(Q,spval6k4)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      QspQ = dotproduct(Q,Q)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      acc72(1)=abb72(9)
      acc72(2)=abb72(10)
      acc72(3)=abb72(11)
      acc72(4)=abb72(12)
      acc72(5)=abb72(13)
      acc72(6)=abb72(14)
      acc72(7)=abb72(15)
      acc72(8)=abb72(16)
      acc72(9)=abb72(17)
      acc72(10)=abb72(18)
      acc72(11)=abb72(19)
      acc72(12)=abb72(20)
      acc72(13)=abb72(21)
      acc72(14)=abb72(22)
      acc72(15)=abb72(23)
      acc72(16)=abb72(24)
      acc72(17)=abb72(25)
      acc72(18)=abb72(26)
      acc72(19)=abb72(27)
      acc72(20)=abb72(28)
      acc72(21)=abb72(29)
      acc72(22)=abb72(30)
      acc72(23)=abb72(31)
      acc72(24)=abb72(32)
      acc72(25)=abb72(33)
      acc72(26)=abb72(34)
      acc72(27)=abb72(35)
      acc72(28)=abb72(36)
      acc72(29)=abb72(37)
      acc72(30)=abb72(38)
      acc72(31)=abb72(39)
      acc72(32)=abb72(40)
      acc72(33)=abb72(41)
      acc72(34)=abb72(44)
      acc72(35)=abb72(45)
      acc72(36)=abb72(46)
      acc72(37)=abb72(47)
      acc72(38)=abb72(49)
      acc72(39)=abb72(50)
      acc72(40)=abb72(52)
      acc72(41)=abb72(53)
      acc72(42)=abb72(54)
      acc72(43)=abb72(55)
      acc72(44)=abb72(56)
      acc72(45)=abb72(57)
      acc72(46)=abb72(58)
      acc72(47)=abb72(62)
      acc72(48)=Qspk2*acc72(21)
      acc72(49)=Qspval6l5*acc72(2)
      acc72(50)=Qspval6k7*acc72(1)
      acc72(48)=acc72(50)+acc72(49)+acc72(18)+acc72(48)
      acc72(48)=Qspvak1k2*acc72(48)
      acc72(49)=-Qspvak1l5*acc72(2)
      acc72(50)=-Qspvak1k7*acc72(1)
      acc72(49)=acc72(50)+acc72(5)+acc72(49)
      acc72(49)=Qspval6k2*acc72(49)
      acc72(50)=-acc72(45)*Qspvak1k4
      acc72(51)=acc72(23)*Qspval6k4
      acc72(52)=Qspk2*acc72(9)
      acc72(53)=Qspval6l5*acc72(15)
      acc72(54)=Qspval6k7*acc72(17)
      acc72(55)=Qspk1*acc72(12)
      acc72(56)=Qspvak1k3*acc72(40)
      acc72(57)=Qspval6k3*acc72(27)
      acc72(48)=acc72(48)+acc72(57)+acc72(56)+acc72(55)+acc72(49)+acc72(54)+acc&
      &72(53)+acc72(52)+acc72(51)+acc72(3)+acc72(50)
      acc72(48)=Qspvak4k3*acc72(48)
      acc72(49)=Qspk4+Qspk3
      acc72(50)=acc72(49)-Qspk1
      acc72(51)=-acc72(22)*acc72(50)
      acc72(52)=Qspvak2k1*acc72(25)
      acc72(53)=Qspvak2k3*acc72(11)
      acc72(54)=QspQ*acc72(19)
      acc72(55)=Qspk2*acc72(26)
      acc72(56)=Qspval6k1*acc72(33)
      acc72(57)=Qspval6k3*acc72(4)
      acc72(51)=acc72(57)+acc72(56)+acc72(55)+acc72(54)+acc72(53)+acc72(10)+acc&
      &72(52)+acc72(51)
      acc72(51)=Qspvak1k2*acc72(51)
      acc72(52)=acc72(44)*acc72(50)
      acc72(53)=QspQ*acc72(45)
      acc72(54)=-Qspval6l5*acc72(37)
      acc72(55)=-Qspval6k7*acc72(7)
      acc72(56)=-Qspval6k2*acc72(4)
      acc72(52)=acc72(56)+acc72(55)+acc72(54)+acc72(53)+acc72(52)
      acc72(52)=Qspvak1k3*acc72(52)
      acc72(50)=-acc72(47)*acc72(50)
      acc72(53)=-QspQ*acc72(23)
      acc72(54)=Qspvak1l5*acc72(37)
      acc72(55)=Qspvak1k7*acc72(7)
      acc72(50)=acc72(55)+acc72(54)+acc72(53)+acc72(50)
      acc72(50)=Qspval6k3*acc72(50)
      acc72(53)=Qspval6l5*acc72(43)
      acc72(54)=Qspval6k7*acc72(46)
      acc72(55)=Qspval6k2*acc72(41)
      acc72(53)=acc72(55)+acc72(54)+acc72(38)+acc72(53)
      acc72(53)=Qspk1*acc72(53)
      acc72(54)=Qspvak1l5*acc72(35)
      acc72(55)=Qspvak1k7*acc72(8)
      acc72(54)=acc72(55)+acc72(31)+acc72(54)
      acc72(54)=Qspval6k1*acc72(54)
      acc72(49)=-acc72(34)*acc72(49)
      acc72(55)=acc72(32)*Qspvak2l6
      acc72(56)=acc72(30)*Qspvak2k7
      acc72(57)=acc72(13)*Qspvak2l5
      acc72(58)=Qspvak2k1*acc72(36)
      acc72(59)=Qspvak2k3*acc72(6)
      acc72(60)=QspQ*acc72(28)
      acc72(61)=Qspk2*acc72(14)
      acc72(62)=Qspvak1l5*acc72(24)
      acc72(63)=Qspvak1k7*acc72(29)
      acc72(64)=Qspval6l5*acc72(39)
      acc72(65)=Qspval6k7*acc72(42)
      acc72(66)=Qspval6k2*acc72(20)
      brack=acc72(16)+acc72(48)+acc72(49)+acc72(50)+acc72(51)+acc72(52)+acc72(5&
      &3)+acc72(54)+acc72(55)+acc72(56)+acc72(57)+acc72(58)+acc72(59)+acc72(60)&
      &+acc72(61)+acc72(62)+acc72(63)+acc72(64)+acc72(65)+acc72(66)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd72h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d72
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d72 = 0.0_ki
      d72 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d72, ki), aimag(d72), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d72h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd72h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d72
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d72 = 0.0_ki
      d72 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d72, ki), aimag(d72), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d72h1l1
