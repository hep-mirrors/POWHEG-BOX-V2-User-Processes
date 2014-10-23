module     p0_dbaru_epnebbbarg_d113h6l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d113h6l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd113h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(12) :: acd113
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd113(1)=dotproduct(k2,ninjaE3)
      acd113(2)=dotproduct(ninjaE3,spvak4k2)
      acd113(3)=dotproduct(ninjaE3,spvak7k2)
      acd113(4)=abb113(14)
      acd113(5)=dotproduct(ninjaE3,spvak1k2)
      acd113(6)=abb113(23)
      acd113(7)=dotproduct(ninjaE3,spval5l6)
      acd113(8)=abb113(10)
      acd113(9)=abb113(27)
      acd113(10)=acd113(5)*acd113(9)
      acd113(11)=acd113(2)*acd113(8)
      acd113(10)=acd113(10)+acd113(11)
      acd113(10)=acd113(7)*acd113(10)
      acd113(11)=acd113(5)*acd113(6)
      acd113(12)=acd113(2)*acd113(4)
      acd113(11)=acd113(11)+acd113(12)
      acd113(11)=acd113(1)*acd113(11)
      acd113(10)=acd113(11)+acd113(10)
      acd113(10)=acd113(3)*acd113(10)
      brack(ninjaidxt2mu0)=acd113(10)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd113h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(85) :: acd113
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd113(1)=dotproduct(k2,ninjaE3)
      acd113(2)=dotproduct(ninjaE3,spvak4k2)
      acd113(3)=dotproduct(ninjaE4,spvak7k2)
      acd113(4)=abb113(14)
      acd113(5)=dotproduct(ninjaE3,spvak7k2)
      acd113(6)=dotproduct(ninjaE4,spvak4k2)
      acd113(7)=dotproduct(ninjaE4,spvak1k2)
      acd113(8)=abb113(23)
      acd113(9)=dotproduct(ninjaE3,spvak1k2)
      acd113(10)=dotproduct(k2,ninjaE4)
      acd113(11)=dotproduct(ninjaE3,spval5l6)
      acd113(12)=abb113(10)
      acd113(13)=dotproduct(ninjaE4,spval5l6)
      acd113(14)=abb113(16)
      acd113(15)=abb113(27)
      acd113(16)=abb113(31)
      acd113(17)=abb113(25)
      acd113(18)=dotproduct(ninjaE3,spval5k2)
      acd113(19)=abb113(58)
      acd113(20)=dotproduct(k2,ninjaA)
      acd113(21)=dotproduct(ninjaA,spvak4k2)
      acd113(22)=dotproduct(ninjaA,spvak7k2)
      acd113(23)=dotproduct(ninjaA,spvak1k2)
      acd113(24)=abb113(29)
      acd113(25)=abb113(50)
      acd113(26)=abb113(26)
      acd113(27)=dotproduct(l5,ninjaE3)
      acd113(28)=abb113(71)
      acd113(29)=dotproduct(l6,ninjaE3)
      acd113(30)=dotproduct(k7,ninjaE3)
      acd113(31)=abb113(39)
      acd113(32)=abb113(64)
      acd113(33)=dotproduct(ninjaA,ninjaE3)
      acd113(34)=dotproduct(ninjaA,spval5l6)
      acd113(35)=abb113(32)
      acd113(36)=abb113(13)
      acd113(37)=abb113(12)
      acd113(38)=abb113(11)
      acd113(39)=abb113(15)
      acd113(40)=dotproduct(ninjaE3,spvak4k7)
      acd113(41)=abb113(18)
      acd113(42)=dotproduct(ninjaE3,spvak4l6)
      acd113(43)=abb113(20)
      acd113(44)=dotproduct(ninjaE3,spvak1k7)
      acd113(45)=abb113(21)
      acd113(46)=dotproduct(ninjaE3,spval6k2)
      acd113(47)=abb113(22)
      acd113(48)=dotproduct(ninjaE3,spvak1l6)
      acd113(49)=abb113(24)
      acd113(50)=abb113(28)
      acd113(51)=dotproduct(l5,ninjaA)
      acd113(52)=dotproduct(l6,ninjaA)
      acd113(53)=dotproduct(k7,ninjaA)
      acd113(54)=dotproduct(ninjaA,spval5k2)
      acd113(55)=abb113(46)
      acd113(56)=dotproduct(ninjaA,ninjaA)
      acd113(57)=abb113(17)
      acd113(58)=dotproduct(ninjaA,spvak4k7)
      acd113(59)=dotproduct(ninjaA,spvak4l6)
      acd113(60)=dotproduct(ninjaA,spvak1k7)
      acd113(61)=dotproduct(ninjaA,spval6k2)
      acd113(62)=dotproduct(ninjaA,spvak1l6)
      acd113(63)=abb113(19)
      acd113(64)=acd113(15)*acd113(7)
      acd113(65)=acd113(12)*acd113(6)
      acd113(64)=acd113(64)+acd113(65)
      acd113(64)=acd113(64)*acd113(11)
      acd113(65)=acd113(8)*acd113(7)
      acd113(66)=acd113(4)*acd113(6)
      acd113(65)=acd113(65)+acd113(66)
      acd113(65)=acd113(65)*acd113(1)
      acd113(66)=acd113(15)*acd113(13)
      acd113(67)=acd113(8)*acd113(10)
      acd113(66)=acd113(66)+acd113(67)
      acd113(66)=acd113(66)*acd113(9)
      acd113(67)=acd113(12)*acd113(13)
      acd113(68)=acd113(4)*acd113(10)
      acd113(67)=acd113(67)+acd113(68)
      acd113(67)=acd113(67)*acd113(2)
      acd113(64)=acd113(16)+acd113(66)+acd113(67)+acd113(64)+acd113(65)
      acd113(65)=acd113(5)*acd113(64)
      acd113(66)=acd113(1)*acd113(3)
      acd113(67)=acd113(66)*acd113(8)
      acd113(68)=acd113(11)*acd113(3)
      acd113(69)=acd113(68)*acd113(15)
      acd113(67)=acd113(17)+acd113(67)+acd113(69)
      acd113(69)=acd113(9)*acd113(67)
      acd113(66)=acd113(66)*acd113(4)
      acd113(68)=acd113(68)*acd113(12)
      acd113(66)=acd113(14)+acd113(66)+acd113(68)
      acd113(68)=acd113(2)*acd113(66)
      acd113(70)=acd113(18)*acd113(19)
      acd113(65)=acd113(65)+acd113(68)+acd113(70)+acd113(69)
      acd113(68)=acd113(12)*acd113(34)
      acd113(69)=acd113(4)*acd113(20)
      acd113(68)=acd113(35)+acd113(68)+acd113(69)
      acd113(68)=acd113(68)*acd113(2)
      acd113(69)=acd113(15)*acd113(34)
      acd113(71)=acd113(8)*acd113(20)
      acd113(69)=acd113(38)+acd113(69)+acd113(71)
      acd113(69)=acd113(69)*acd113(9)
      acd113(71)=acd113(8)*acd113(23)
      acd113(72)=acd113(4)*acd113(21)
      acd113(71)=acd113(25)+acd113(71)+acd113(72)
      acd113(72)=acd113(71)*acd113(1)
      acd113(73)=acd113(15)*acd113(23)
      acd113(74)=acd113(12)*acd113(21)
      acd113(73)=acd113(36)+acd113(73)+acd113(74)
      acd113(74)=acd113(73)*acd113(11)
      acd113(75)=acd113(27)+acd113(29)
      acd113(75)=acd113(75)*acd113(28)
      acd113(76)=acd113(49)*acd113(48)
      acd113(77)=acd113(47)*acd113(46)
      acd113(78)=acd113(45)*acd113(44)
      acd113(79)=acd113(43)*acd113(42)
      acd113(80)=acd113(41)*acd113(40)
      acd113(81)=acd113(30)*acd113(31)
      acd113(82)=acd113(18)*acd113(39)
      acd113(83)=2.0_ki*acd113(33)
      acd113(84)=acd113(83)*acd113(16)
      acd113(68)=acd113(69)+acd113(78)+acd113(79)+acd113(80)+acd113(81)-acd113(&
      &75)+acd113(76)+acd113(77)+acd113(68)+acd113(82)+acd113(72)+acd113(74)+ac&
      &d113(84)
      acd113(69)=acd113(5)*acd113(37)
      acd113(69)=acd113(69)+acd113(68)
      acd113(69)=acd113(5)*acd113(69)
      acd113(72)=acd113(11)*acd113(15)
      acd113(74)=acd113(1)*acd113(8)
      acd113(72)=acd113(72)+acd113(74)
      acd113(72)=acd113(9)*acd113(72)
      acd113(74)=acd113(11)*acd113(12)
      acd113(75)=acd113(1)*acd113(4)
      acd113(74)=acd113(74)+acd113(75)
      acd113(74)=acd113(2)*acd113(74)
      acd113(72)=acd113(72)+acd113(74)
      acd113(72)=acd113(22)*acd113(72)
      acd113(74)=acd113(83)*acd113(70)
      acd113(75)=acd113(17)*acd113(83)
      acd113(76)=acd113(1)*acd113(26)
      acd113(75)=acd113(75)+acd113(76)
      acd113(75)=acd113(9)*acd113(75)
      acd113(76)=acd113(14)*acd113(83)
      acd113(77)=acd113(1)*acd113(24)
      acd113(76)=acd113(76)+acd113(77)
      acd113(76)=acd113(2)*acd113(76)
      acd113(77)=acd113(18)*acd113(30)*acd113(32)
      acd113(69)=acd113(69)+acd113(72)+acd113(76)+acd113(75)+acd113(77)+acd113(&
      &74)
      acd113(64)=ninjaP*acd113(64)
      acd113(72)=acd113(34)*acd113(73)
      acd113(71)=acd113(20)*acd113(71)
      acd113(73)=acd113(49)*acd113(62)
      acd113(74)=acd113(47)*acd113(61)
      acd113(75)=acd113(45)*acd113(60)
      acd113(76)=acd113(43)*acd113(59)
      acd113(77)=acd113(41)*acd113(58)
      acd113(78)=acd113(39)*acd113(54)
      acd113(79)=acd113(31)*acd113(53)
      acd113(80)=acd113(16)*acd113(56)
      acd113(81)=-acd113(52)-acd113(51)
      acd113(81)=acd113(28)*acd113(81)
      acd113(82)=acd113(23)*acd113(38)
      acd113(84)=acd113(21)*acd113(35)
      acd113(85)=acd113(22)*acd113(37)
      acd113(64)=2.0_ki*acd113(85)+acd113(84)+acd113(82)+acd113(81)+acd113(80)+&
      &acd113(79)+acd113(78)+acd113(77)+acd113(76)+acd113(75)+acd113(74)+acd113&
      &(63)+acd113(73)+acd113(71)+acd113(72)+acd113(64)
      acd113(64)=acd113(5)*acd113(64)
      acd113(68)=acd113(22)*acd113(68)
      acd113(71)=acd113(19)*acd113(54)
      acd113(72)=acd113(23)*acd113(17)
      acd113(73)=acd113(21)*acd113(14)
      acd113(71)=acd113(73)+acd113(72)+acd113(57)+acd113(71)
      acd113(71)=acd113(83)*acd113(71)
      acd113(67)=ninjaP*acd113(67)
      acd113(72)=acd113(17)*acd113(56)
      acd113(73)=acd113(20)*acd113(26)
      acd113(67)=acd113(72)+acd113(73)+acd113(67)
      acd113(67)=acd113(9)*acd113(67)
      acd113(66)=ninjaP*acd113(66)
      acd113(72)=acd113(14)*acd113(56)
      acd113(73)=acd113(20)*acd113(24)
      acd113(66)=acd113(72)+acd113(73)+acd113(66)
      acd113(66)=acd113(2)*acd113(66)
      acd113(72)=acd113(32)*acd113(53)
      acd113(73)=acd113(19)*acd113(56)
      acd113(72)=acd113(72)+acd113(73)
      acd113(72)=acd113(18)*acd113(72)
      acd113(73)=acd113(23)*acd113(26)
      acd113(74)=acd113(21)*acd113(24)
      acd113(73)=acd113(74)+acd113(50)+acd113(73)
      acd113(73)=acd113(1)*acd113(73)
      acd113(74)=acd113(32)*acd113(54)
      acd113(74)=acd113(55)+acd113(74)
      acd113(74)=acd113(30)*acd113(74)
      acd113(70)=ninjaP*acd113(70)
      acd113(64)=acd113(64)+acd113(68)+acd113(66)+acd113(67)+acd113(73)+acd113(&
      &70)+acd113(74)+acd113(72)+acd113(71)
      brack(ninjaidxt1mu0)=acd113(69)
      brack(ninjaidxt0mu0)=acd113(64)
      brack(ninjaidxt0mu2)=acd113(65)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d113h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd113h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = - a(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d113h6l131
