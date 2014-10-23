module     p0_dbaru_epnebbbarg_d85h7l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d85h7l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd85h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc85(78)
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k7
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk7
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk7 = dotproduct(Q,k7)
      acc85(1)=abb85(7)
      acc85(2)=abb85(8)
      acc85(3)=abb85(9)
      acc85(4)=abb85(10)
      acc85(5)=abb85(11)
      acc85(6)=abb85(12)
      acc85(7)=abb85(13)
      acc85(8)=abb85(14)
      acc85(9)=abb85(15)
      acc85(10)=abb85(16)
      acc85(11)=abb85(17)
      acc85(12)=abb85(18)
      acc85(13)=abb85(19)
      acc85(14)=abb85(20)
      acc85(15)=abb85(21)
      acc85(16)=abb85(22)
      acc85(17)=abb85(23)
      acc85(18)=abb85(24)
      acc85(19)=abb85(25)
      acc85(20)=abb85(26)
      acc85(21)=abb85(27)
      acc85(22)=abb85(28)
      acc85(23)=abb85(29)
      acc85(24)=abb85(30)
      acc85(25)=abb85(31)
      acc85(26)=abb85(32)
      acc85(27)=abb85(33)
      acc85(28)=abb85(34)
      acc85(29)=abb85(35)
      acc85(30)=abb85(36)
      acc85(31)=abb85(37)
      acc85(32)=abb85(38)
      acc85(33)=abb85(39)
      acc85(34)=abb85(40)
      acc85(35)=abb85(41)
      acc85(36)=abb85(42)
      acc85(37)=abb85(43)
      acc85(38)=abb85(44)
      acc85(39)=abb85(45)
      acc85(40)=abb85(46)
      acc85(41)=abb85(47)
      acc85(42)=abb85(48)
      acc85(43)=abb85(49)
      acc85(44)=abb85(50)
      acc85(45)=abb85(51)
      acc85(46)=abb85(52)
      acc85(47)=abb85(53)
      acc85(48)=abb85(54)
      acc85(49)=abb85(55)
      acc85(50)=abb85(57)
      acc85(51)=abb85(58)
      acc85(52)=abb85(59)
      acc85(53)=abb85(60)
      acc85(54)=abb85(61)
      acc85(55)=abb85(62)
      acc85(56)=abb85(63)
      acc85(57)=abb85(64)
      acc85(58)=abb85(65)
      acc85(59)=abb85(66)
      acc85(60)=abb85(67)
      acc85(61)=abb85(68)
      acc85(62)=abb85(69)
      acc85(63)=abb85(70)
      acc85(64)=abb85(71)
      acc85(65)=abb85(72)
      acc85(66)=abb85(73)
      acc85(67)=Qspk1*acc85(47)
      acc85(68)=Qspvak1k7*acc85(22)
      acc85(69)=-acc85(36)*Qspvak3k2
      acc85(70)=Qspvak1k2*acc85(48)
      acc85(71)=Qspvak1l5*acc85(19)
      acc85(72)=Qspvak1l6*acc85(1)
      acc85(73)=Qspvak1k2*acc85(56)
      acc85(73)=acc85(23)+acc85(73)
      acc85(73)=Qspvak2l5*acc85(73)
      acc85(74)=Qspvak1k2*acc85(58)
      acc85(74)=acc85(26)+acc85(74)
      acc85(74)=Qspvak2l6*acc85(74)
      acc85(75)=Qspvak4k2*acc85(51)
      acc85(76)=Qspvak7k2*acc85(49)
      acc85(67)=acc85(76)+acc85(75)+acc85(74)+acc85(73)+acc85(72)+acc85(71)+acc&
      &85(70)+acc85(69)+acc85(68)+acc85(4)+acc85(67)
      acc85(67)=Qspvak4k3*acc85(67)
      acc85(68)=Qspvak1l5*acc85(37)
      acc85(69)=Qspvak1l6*acc85(65)
      acc85(68)=acc85(68)+acc85(69)
      acc85(69)=Qspk4+Qspk3
      acc85(70)=Qspk2-acc85(69)
      acc85(71)=acc85(39)*acc85(70)
      acc85(72)=Qspvak2l5*acc85(55)
      acc85(73)=Qspvak2l6*acc85(57)
      acc85(74)=-Qspvak4k2*acc85(31)
      acc85(75)=Qspvak4k3*acc85(45)
      acc85(76)=QspQ*acc85(28)
      acc85(71)=acc85(76)+acc85(75)+acc85(74)+acc85(73)+acc85(72)+acc85(35)+acc&
      &85(71)+acc85(68)
      acc85(71)=Qspk2*acc85(71)
      acc85(72)=Qspvak1l5*acc85(5)
      acc85(73)=Qspvak1l6*acc85(66)
      acc85(74)=Qspvak2l5*acc85(54)
      acc85(75)=Qspvak2l6*acc85(59)
      acc85(76)=-Qspvak4k2*acc85(36)
      acc85(72)=acc85(76)+acc85(75)+acc85(74)+acc85(73)+acc85(25)+acc85(72)
      acc85(72)=QspQ*acc85(72)
      acc85(73)=acc85(31)*acc85(69)
      acc85(74)=Qspvak2l5*acc85(61)
      acc85(75)=Qspvak2l6*acc85(62)
      acc85(73)=acc85(75)+acc85(74)+acc85(20)+acc85(73)
      acc85(73)=Qspvak4k2*acc85(73)
      acc85(68)=acc85(68)+acc85(30)
      acc85(68)=-acc85(68)*acc85(69)
      acc85(74)=Qspvak1k3*acc85(41)
      acc85(75)=-Qspvak1k2*acc85(5)
      acc85(74)=acc85(75)+acc85(38)+acc85(74)
      acc85(74)=Qspvak2l5*acc85(74)
      acc85(75)=Qspvak1k3*acc85(46)
      acc85(76)=-Qspvak1k2*acc85(66)
      acc85(75)=acc85(76)+acc85(53)+acc85(75)
      acc85(75)=Qspvak2l6*acc85(75)
      acc85(76)=Qspk1*acc85(18)
      acc85(77)=Qspvak1k7*acc85(7)
      acc85(78)=Qspvak3k2*acc85(34)
      acc85(67)=acc85(71)+acc85(72)+acc85(73)+acc85(75)+acc85(74)+acc85(78)+acc&
      &85(77)+acc85(14)+acc85(76)+acc85(67)+acc85(68)
      acc85(67)=Qspvak7k2*acc85(67)
      acc85(68)=Qspvak2l5*acc85(15)
      acc85(71)=Qspvak2l6*acc85(9)
      acc85(68)=acc85(71)+acc85(29)+acc85(68)
      acc85(68)=Qspvak4k2*acc85(68)
      acc85(71)=-acc85(24)*acc85(69)
      acc85(72)=Qspk7*acc85(13)
      acc85(73)=Qspvak2l5*acc85(2)
      acc85(74)=Qspvak2l6*acc85(3)
      acc85(75)=Qspvak4k3*acc85(42)
      acc85(76)=QspQ*acc85(6)
      acc85(68)=acc85(76)+acc85(75)+acc85(68)+acc85(74)+acc85(73)+acc85(8)+acc8&
      &5(72)+acc85(71)
      acc85(68)=QspQ*acc85(68)
      acc85(71)=Qspvak2l5*acc85(64)
      acc85(72)=Qspvak2l6*acc85(60)
      acc85(71)=acc85(72)+acc85(50)+acc85(71)
      acc85(71)=Qspvak4k2*acc85(71)
      acc85(70)=QspQ+acc85(70)
      acc85(70)=acc85(13)*acc85(70)
      acc85(72)=Qspk7*acc85(17)
      acc85(73)=Qspvak2l5*acc85(27)
      acc85(74)=Qspvak2l6*acc85(52)
      acc85(75)=Qspvak4k3*acc85(44)
      acc85(70)=acc85(75)+acc85(71)+acc85(74)+acc85(73)+acc85(12)+acc85(72)+acc&
      &85(70)
      acc85(70)=Qspk2*acc85(70)
      acc85(71)=acc85(72)+acc85(16)
      acc85(69)=-acc85(71)*acc85(69)
      acc85(71)=Qspk7*acc85(11)
      acc85(72)=Qspk7*acc85(63)
      acc85(72)=acc85(33)+acc85(72)
      acc85(72)=Qspvak2l5*acc85(72)
      acc85(73)=Qspk7*acc85(40)
      acc85(73)=acc85(32)+acc85(73)
      acc85(73)=Qspvak2l6*acc85(73)
      acc85(74)=Qspk7*acc85(43)
      acc85(74)=acc85(21)+acc85(74)
      acc85(74)=Qspvak4k3*acc85(74)
      brack=acc85(10)+acc85(67)+acc85(68)+acc85(69)+acc85(70)+acc85(71)+acc85(7&
      &2)+acc85(73)+acc85(74)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd85h7
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d85
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d85 = 0.0_ki
      d85 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d85, ki), aimag(d85), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d85h7l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd85h7
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d85
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d85 = 0.0_ki
      d85 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d85, ki), aimag(d85), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d85h7l1
