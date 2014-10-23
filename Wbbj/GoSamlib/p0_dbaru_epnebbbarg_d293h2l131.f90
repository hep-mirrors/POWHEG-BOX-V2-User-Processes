module     p0_dbaru_epnebbbarg_d293h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d293h2l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1mu0 = 0
   integer, parameter :: ninjaidxt0mu0 = 1
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd293h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd293
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd293h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(78) :: acd293
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd293(1)=dotproduct(ninjaE3,spvak2k7)
      acd293(2)=dotproduct(ninjaE3,spvak4k3)
      acd293(3)=dotproduct(ninjaE3,spvak1k2)
      acd293(4)=dotproduct(ninjaE3,spval5l6)
      acd293(5)=abb293(136)
      acd293(6)=dotproduct(k1,ninjaE3)
      acd293(7)=dotproduct(ninjaE3,spval5k2)
      acd293(8)=abb293(131)
      acd293(9)=abb293(88)
      acd293(10)=dotproduct(k2,ninjaE3)
      acd293(11)=abb293(151)
      acd293(12)=dotproduct(l5,ninjaE3)
      acd293(13)=abb293(122)
      acd293(14)=dotproduct(k7,ninjaE3)
      acd293(15)=dotproduct(ninjaA,ninjaE3)
      acd293(16)=abb293(223)
      acd293(17)=dotproduct(ninjaE3,spvak1k3)
      acd293(18)=abb293(17)
      acd293(19)=dotproduct(ninjaE3,spvak4k2)
      acd293(20)=abb293(130)
      acd293(21)=dotproduct(ninjaE3,spvak1l6)
      acd293(22)=abb293(56)
      acd293(23)=abb293(26)
      acd293(24)=abb293(63)
      acd293(25)=dotproduct(ninjaE3,spvak1k7)
      acd293(26)=abb293(84)
      acd293(27)=dotproduct(ninjaE3,spvak2k3)
      acd293(28)=abb293(67)
      acd293(29)=abb293(45)
      acd293(30)=abb293(197)
      acd293(31)=abb293(35)
      acd293(32)=abb293(23)
      acd293(33)=abb293(54)
      acd293(34)=abb293(155)
      acd293(35)=dotproduct(l6,ninjaE3)
      acd293(36)=abb293(22)
      acd293(37)=abb293(132)
      acd293(38)=abb293(33)
      acd293(39)=abb293(53)
      acd293(40)=abb293(52)
      acd293(41)=abb293(102)
      acd293(42)=abb293(103)
      acd293(43)=dotproduct(ninjaA,spvak2k7)
      acd293(44)=dotproduct(ninjaA,spvak4k3)
      acd293(45)=dotproduct(ninjaA,spvak1k2)
      acd293(46)=dotproduct(ninjaA,spval5l6)
      acd293(47)=abb293(24)
      acd293(48)=abb293(48)
      acd293(49)=abb293(108)
      acd293(50)=abb293(100)
      acd293(51)=dotproduct(ninjaE3,spval5k3)
      acd293(52)=dotproduct(ninjaE3,spval5k1)
      acd293(53)=abb293(79)
      acd293(54)=abb293(171)
      acd293(55)=abb293(47)
      acd293(56)=abb293(106)
      acd293(57)=dotproduct(ninjaE3,spvak7k2)
      acd293(58)=dotproduct(ninjaE3,spvak4l6)
      acd293(59)=abb293(25)
      acd293(60)=abb293(60)
      acd293(61)=abb293(158)
      acd293(62)=dotproduct(ninjaE3,spvak7l6)
      acd293(63)=abb293(153)
      acd293(64)=dotproduct(ninjaE3,spvak2l6)
      acd293(65)=abb293(196)
      acd293(66)=abb293(55)
      acd293(67)=abb293(256)
      acd293(68)=acd293(4)*acd293(5)
      acd293(69)=acd293(1)*acd293(2)*acd293(3)*acd293(68)
      acd293(70)=acd293(34)*acd293(57)
      acd293(71)=acd293(25)*acd293(56)
      acd293(72)=2.0_ki*acd293(15)
      acd293(73)=acd293(39)*acd293(72)
      acd293(68)=acd293(45)*acd293(68)
      acd293(74)=acd293(7)*acd293(54)
      acd293(75)=acd293(5)*acd293(46)
      acd293(75)=acd293(55)+acd293(75)
      acd293(75)=acd293(3)*acd293(75)
      acd293(76)=acd293(21)*acd293(49)
      acd293(68)=acd293(76)+acd293(75)+acd293(74)+acd293(68)+acd293(73)+acd293(&
      &70)+acd293(71)
      acd293(68)=acd293(2)*acd293(68)
      acd293(70)=acd293(6)+acd293(35)
      acd293(70)=acd293(8)*acd293(70)
      acd293(71)=acd293(64)*acd293(65)
      acd293(73)=acd293(62)*acd293(63)
      acd293(74)=acd293(58)*acd293(59)
      acd293(75)=acd293(4)*acd293(61)
      acd293(76)=acd293(17)*acd293(47)
      acd293(70)=acd293(76)+acd293(75)+acd293(74)+acd293(71)+acd293(73)+acd293(&
      &70)
      acd293(70)=acd293(7)*acd293(70)
      acd293(71)=acd293(12)+acd293(14)
      acd293(73)=acd293(31)*acd293(71)
      acd293(74)=acd293(52)*acd293(53)
      acd293(75)=-acd293(48)*acd293(51)
      acd293(76)=acd293(38)*acd293(72)
      acd293(77)=acd293(7)*acd293(50)
      acd293(78)=acd293(10)*acd293(22)
      acd293(73)=acd293(78)+acd293(77)+acd293(76)+acd293(74)+acd293(75)+acd293(&
      &73)
      acd293(73)=acd293(21)*acd293(73)
      acd293(74)=-acd293(29)*acd293(71)
      acd293(75)=acd293(36)*acd293(72)
      acd293(76)=acd293(4)*acd293(48)
      acd293(77)=acd293(10)*acd293(18)
      acd293(74)=acd293(77)+acd293(76)+acd293(75)+acd293(74)
      acd293(74)=acd293(17)*acd293(74)
      acd293(75)=acd293(5)*acd293(44)
      acd293(75)=acd293(66)+acd293(75)
      acd293(75)=acd293(4)*acd293(75)
      acd293(76)=acd293(7)*acd293(60)
      acd293(75)=acd293(75)+acd293(76)
      acd293(75)=acd293(3)*acd293(75)
      acd293(76)=acd293(4)*acd293(6)*acd293(9)
      acd293(68)=acd293(68)+acd293(73)+acd293(75)+acd293(70)+acd293(76)+acd293(&
      &74)
      acd293(68)=acd293(1)*acd293(68)
      acd293(70)=acd293(12)-acd293(14)
      acd293(73)=acd293(13)*acd293(70)
      acd293(74)=acd293(25)*acd293(26)
      acd293(75)=acd293(16)*acd293(72)
      acd293(76)=acd293(10)*acd293(11)
      acd293(73)=acd293(76)+acd293(75)+acd293(74)+acd293(73)
      acd293(73)=acd293(10)*acd293(73)
      acd293(74)=acd293(72)*acd293(37)
      acd293(75)=acd293(12)*acd293(30)
      acd293(74)=acd293(74)+acd293(75)
      acd293(75)=acd293(14)*acd293(30)
      acd293(76)=acd293(5)*acd293(43)
      acd293(76)=-acd293(67)+acd293(76)
      acd293(76)=acd293(4)*acd293(76)
      acd293(77)=-acd293(10)*acd293(20)
      acd293(76)=acd293(77)+acd293(76)-acd293(75)+acd293(74)
      acd293(76)=acd293(3)*acd293(76)
      acd293(70)=-acd293(32)*acd293(70)
      acd293(77)=acd293(40)*acd293(72)
      acd293(78)=acd293(10)*acd293(23)
      acd293(70)=acd293(78)+acd293(77)+acd293(70)
      acd293(70)=acd293(21)*acd293(70)
      acd293(77)=acd293(30)*acd293(25)*acd293(57)
      acd293(70)=acd293(70)+acd293(76)+acd293(77)+acd293(73)
      acd293(70)=acd293(2)*acd293(70)
      acd293(73)=-acd293(71)*acd293(34)
      acd293(76)=acd293(42)*acd293(72)
      acd293(73)=acd293(76)+acd293(73)
      acd293(73)=acd293(27)*acd293(73)
      acd293(74)=-acd293(75)-acd293(74)
      acd293(74)=acd293(17)*acd293(74)
      acd293(73)=acd293(74)+acd293(73)
      acd293(73)=acd293(19)*acd293(73)
      acd293(74)=acd293(27)*acd293(28)
      acd293(75)=acd293(17)*acd293(20)
      acd293(74)=acd293(74)+acd293(75)
      acd293(75)=acd293(10)*acd293(19)
      acd293(74)=acd293(74)*acd293(75)
      acd293(71)=acd293(33)*acd293(71)
      acd293(72)=acd293(41)*acd293(72)
      acd293(71)=acd293(72)+acd293(71)
      acd293(71)=acd293(19)*acd293(71)
      acd293(72)=acd293(24)*acd293(75)
      acd293(71)=acd293(71)+acd293(72)
      acd293(71)=acd293(21)*acd293(71)
      acd293(68)=acd293(68)+acd293(70)+acd293(71)+acd293(73)+acd293(74)
      brack(ninjaidxt1mu0)=acd293(69)
      brack(ninjaidxt0mu0)=acd293(68)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d293h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd293h2
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k5
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d293h2l131
