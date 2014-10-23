module     p0_dbaru_epnebbbarg_d179h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d179h4l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd179h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(27) :: acd179
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd179(1)=dotproduct(k2,ninjaE3)
      acd179(2)=dotproduct(ninjaE3,spval5k2)
      acd179(3)=abb179(29)
      acd179(4)=dotproduct(ninjaE3,spval6k2)
      acd179(5)=abb179(24)
      acd179(6)=dotproduct(ninjaE3,spvak7k2)
      acd179(7)=abb179(82)
      acd179(8)=dotproduct(k3,ninjaE3)
      acd179(9)=dotproduct(k4,ninjaE3)
      acd179(10)=dotproduct(ninjaE3,spvak1k2)
      acd179(11)=abb179(13)
      acd179(12)=abb179(17)
      acd179(13)=abb179(36)
      acd179(14)=dotproduct(ninjaE3,spvak4k2)
      acd179(15)=abb179(23)
      acd179(16)=dotproduct(ninjaE3,spvak4k3)
      acd179(17)=abb179(40)
      acd179(18)=abb179(14)
      acd179(19)=abb179(35)
      acd179(20)=abb179(39)
      acd179(21)=abb179(33)
      acd179(22)=-acd179(1)+acd179(8)+acd179(9)
      acd179(23)=-acd179(7)*acd179(22)
      acd179(24)=acd179(16)*acd179(21)
      acd179(25)=acd179(14)*acd179(19)
      acd179(26)=acd179(10)*acd179(13)
      acd179(23)=acd179(26)+acd179(24)+acd179(25)+acd179(23)
      acd179(23)=acd179(6)*acd179(23)
      acd179(24)=acd179(5)*acd179(22)
      acd179(25)=acd179(16)*acd179(20)
      acd179(26)=acd179(14)*acd179(18)
      acd179(27)=acd179(10)*acd179(12)
      acd179(24)=acd179(27)+acd179(25)+acd179(26)+acd179(24)
      acd179(24)=acd179(4)*acd179(24)
      acd179(22)=acd179(3)*acd179(22)
      acd179(25)=acd179(16)*acd179(17)
      acd179(26)=acd179(14)*acd179(15)
      acd179(27)=acd179(10)*acd179(11)
      acd179(22)=acd179(27)+acd179(25)+acd179(26)+acd179(22)
      acd179(22)=acd179(2)*acd179(22)
      acd179(22)=acd179(22)+acd179(23)+acd179(24)
      brack(ninjaidxt2mu0)=acd179(22)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd179h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(86) :: acd179
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd179(1)=dotproduct(k2,ninjaE3)
      acd179(2)=dotproduct(ninjaE4,spval5k2)
      acd179(3)=abb179(29)
      acd179(4)=dotproduct(ninjaE4,spval6k2)
      acd179(5)=abb179(24)
      acd179(6)=dotproduct(ninjaE4,spvak7k2)
      acd179(7)=abb179(82)
      acd179(8)=dotproduct(k2,ninjaE4)
      acd179(9)=dotproduct(ninjaE3,spval5k2)
      acd179(10)=dotproduct(ninjaE3,spval6k2)
      acd179(11)=dotproduct(ninjaE3,spvak7k2)
      acd179(12)=dotproduct(k3,ninjaE3)
      acd179(13)=dotproduct(k3,ninjaE4)
      acd179(14)=dotproduct(k4,ninjaE3)
      acd179(15)=dotproduct(k4,ninjaE4)
      acd179(16)=dotproduct(ninjaE3,spvak1k2)
      acd179(17)=abb179(13)
      acd179(18)=abb179(17)
      acd179(19)=abb179(36)
      acd179(20)=dotproduct(ninjaE4,spvak1k2)
      acd179(21)=dotproduct(ninjaE4,spvak4k2)
      acd179(22)=abb179(23)
      acd179(23)=dotproduct(ninjaE4,spvak4k3)
      acd179(24)=abb179(40)
      acd179(25)=dotproduct(ninjaE3,spvak4k2)
      acd179(26)=abb179(14)
      acd179(27)=abb179(35)
      acd179(28)=abb179(39)
      acd179(29)=abb179(33)
      acd179(30)=dotproduct(ninjaE3,spvak4k3)
      acd179(31)=abb179(19)
      acd179(32)=dotproduct(k2,ninjaA)
      acd179(33)=dotproduct(ninjaA,spval5k2)
      acd179(34)=dotproduct(ninjaA,spval6k2)
      acd179(35)=dotproduct(ninjaA,spvak7k2)
      acd179(36)=abb179(18)
      acd179(37)=dotproduct(k3,ninjaA)
      acd179(38)=abb179(57)
      acd179(39)=dotproduct(k4,ninjaA)
      acd179(40)=dotproduct(l5,ninjaE3)
      acd179(41)=abb179(28)
      acd179(42)=dotproduct(l6,ninjaE3)
      acd179(43)=abb179(21)
      acd179(44)=dotproduct(k7,ninjaE3)
      acd179(45)=dotproduct(ninjaA,ninjaE3)
      acd179(46)=dotproduct(ninjaA,spvak1k2)
      acd179(47)=dotproduct(ninjaA,spvak4k2)
      acd179(48)=dotproduct(ninjaA,spvak4k3)
      acd179(49)=abb179(20)
      acd179(50)=abb179(31)
      acd179(51)=abb179(41)
      acd179(52)=abb179(22)
      acd179(53)=dotproduct(ninjaE3,spvak1k3)
      acd179(54)=abb179(15)
      acd179(55)=abb179(16)
      acd179(56)=abb179(27)
      acd179(57)=dotproduct(l5,ninjaA)
      acd179(58)=dotproduct(l6,ninjaA)
      acd179(59)=dotproduct(k7,ninjaA)
      acd179(60)=dotproduct(ninjaA,ninjaA)
      acd179(61)=dotproduct(ninjaA,spvak1k3)
      acd179(62)=abb179(34)
      acd179(63)=acd179(24)*acd179(23)
      acd179(64)=acd179(22)*acd179(21)
      acd179(65)=acd179(17)*acd179(20)
      acd179(63)=acd179(65)+acd179(63)+acd179(64)
      acd179(63)=acd179(63)*acd179(9)
      acd179(64)=acd179(28)*acd179(23)
      acd179(65)=acd179(26)*acd179(21)
      acd179(66)=acd179(18)*acd179(20)
      acd179(64)=acd179(66)+acd179(64)+acd179(65)
      acd179(64)=acd179(64)*acd179(10)
      acd179(65)=acd179(29)*acd179(23)
      acd179(66)=acd179(27)*acd179(21)
      acd179(67)=acd179(19)*acd179(20)
      acd179(65)=acd179(67)+acd179(65)+acd179(66)
      acd179(65)=acd179(65)*acd179(11)
      acd179(66)=acd179(30)*acd179(29)
      acd179(67)=acd179(25)*acd179(27)
      acd179(68)=acd179(16)*acd179(19)
      acd179(66)=acd179(66)+acd179(67)+acd179(68)
      acd179(67)=acd179(66)*acd179(6)
      acd179(68)=acd179(30)*acd179(24)
      acd179(69)=acd179(25)*acd179(22)
      acd179(70)=acd179(16)*acd179(17)
      acd179(68)=acd179(70)+acd179(68)+acd179(69)
      acd179(69)=acd179(68)*acd179(2)
      acd179(70)=acd179(30)*acd179(28)
      acd179(71)=acd179(25)*acd179(26)
      acd179(72)=acd179(16)*acd179(18)
      acd179(70)=acd179(72)+acd179(70)+acd179(71)
      acd179(71)=acd179(70)*acd179(4)
      acd179(72)=acd179(12)+acd179(14)
      acd179(73)=acd179(1)-acd179(72)
      acd179(74)=acd179(73)*acd179(6)
      acd179(75)=-acd179(15)+acd179(8)-acd179(13)
      acd179(76)=acd179(75)*acd179(11)
      acd179(74)=acd179(74)+acd179(76)
      acd179(74)=acd179(74)*acd179(7)
      acd179(76)=acd179(73)*acd179(4)
      acd179(77)=acd179(75)*acd179(10)
      acd179(76)=acd179(76)+acd179(77)
      acd179(76)=acd179(76)*acd179(5)
      acd179(77)=acd179(73)*acd179(2)
      acd179(75)=acd179(75)*acd179(9)
      acd179(75)=acd179(77)+acd179(75)
      acd179(75)=acd179(75)*acd179(3)
      acd179(63)=-acd179(75)+acd179(63)+acd179(67)+acd179(69)+acd179(71)+acd179&
      &(31)+acd179(74)-acd179(76)+acd179(64)+acd179(65)
      acd179(64)=acd179(35)*acd179(66)
      acd179(65)=acd179(34)*acd179(70)
      acd179(66)=acd179(33)*acd179(68)
      acd179(67)=acd179(29)*acd179(48)
      acd179(68)=acd179(27)*acd179(47)
      acd179(69)=acd179(19)*acd179(46)
      acd179(67)=acd179(67)+acd179(68)+acd179(69)+acd179(55)
      acd179(68)=acd179(11)*acd179(67)
      acd179(69)=acd179(28)*acd179(48)
      acd179(70)=acd179(26)*acd179(47)
      acd179(71)=acd179(18)*acd179(46)
      acd179(69)=acd179(70)+acd179(69)+acd179(71)+acd179(52)
      acd179(70)=acd179(10)*acd179(69)
      acd179(71)=acd179(24)*acd179(48)
      acd179(74)=acd179(22)*acd179(47)
      acd179(75)=acd179(17)*acd179(46)
      acd179(71)=acd179(74)+acd179(71)+acd179(75)+acd179(50)
      acd179(74)=acd179(9)*acd179(71)
      acd179(75)=acd179(35)*acd179(73)
      acd179(76)=acd179(37)+acd179(39)
      acd179(77)=acd179(32)-acd179(76)
      acd179(78)=acd179(11)*acd179(77)
      acd179(75)=acd179(75)+acd179(78)
      acd179(75)=acd179(7)*acd179(75)
      acd179(78)=-acd179(34)*acd179(73)
      acd179(79)=-acd179(10)*acd179(77)
      acd179(78)=acd179(78)+acd179(79)
      acd179(78)=acd179(5)*acd179(78)
      acd179(73)=-acd179(33)*acd179(73)
      acd179(79)=-acd179(9)*acd179(77)
      acd179(73)=acd179(73)+acd179(79)
      acd179(73)=acd179(3)*acd179(73)
      acd179(72)=-acd179(38)*acd179(72)
      acd179(79)=acd179(54)*acd179(53)
      acd179(80)=acd179(41)*acd179(40)
      acd179(81)=-acd179(44)-acd179(42)
      acd179(81)=acd179(43)*acd179(81)
      acd179(82)=acd179(31)*acd179(45)
      acd179(83)=acd179(30)*acd179(56)
      acd179(84)=acd179(25)*acd179(51)
      acd179(85)=acd179(16)*acd179(49)
      acd179(86)=acd179(1)*acd179(36)
      acd179(64)=acd179(73)+acd179(78)+acd179(75)+acd179(74)+acd179(70)+acd179(&
      &68)+acd179(66)+acd179(65)+acd179(64)+acd179(86)+acd179(85)+acd179(84)+ac&
      &d179(83)+2.0_ki*acd179(82)+acd179(81)+acd179(79)+acd179(80)+acd179(72)
      acd179(65)=ninjaP*acd179(63)
      acd179(66)=acd179(7)*acd179(35)
      acd179(68)=-acd179(5)*acd179(34)
      acd179(70)=-acd179(3)*acd179(33)
      acd179(66)=acd179(70)+acd179(68)+acd179(66)
      acd179(66)=acd179(77)*acd179(66)
      acd179(67)=acd179(35)*acd179(67)
      acd179(68)=acd179(34)*acd179(69)
      acd179(69)=acd179(33)*acd179(71)
      acd179(70)=-acd179(38)*acd179(76)
      acd179(71)=acd179(54)*acd179(61)
      acd179(72)=acd179(41)*acd179(57)
      acd179(73)=-acd179(59)-acd179(58)
      acd179(73)=acd179(43)*acd179(73)
      acd179(74)=acd179(31)*acd179(60)
      acd179(75)=acd179(48)*acd179(56)
      acd179(76)=acd179(47)*acd179(51)
      acd179(77)=acd179(46)*acd179(49)
      acd179(78)=acd179(32)*acd179(36)
      acd179(65)=acd179(65)+acd179(69)+acd179(68)+acd179(67)+acd179(78)+acd179(&
      &77)+acd179(76)+acd179(75)+acd179(74)+acd179(73)+acd179(72)+acd179(62)+ac&
      &d179(71)+acd179(66)+acd179(70)
      brack(ninjaidxt1mu0)=acd179(64)
      brack(ninjaidxt0mu0)=acd179(65)
      brack(ninjaidxt0mu2)=acd179(63)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d179h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd179h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d179h4l131
