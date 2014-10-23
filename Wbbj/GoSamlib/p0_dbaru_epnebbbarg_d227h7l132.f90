module     p0_dbaru_epnebbbarg_d227h7l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d227h7l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1x0mu0 = 0
   integer, parameter :: ninjaidxt0x0mu0 = 1
   integer, parameter :: ninjaidxt0x1mu0 = 2
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd227h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(35) :: acd227
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd227(1)=dotproduct(k2,ninjaE3)
      acd227(2)=dotproduct(ninjaE3,spvak7k2)
      acd227(3)=abb227(62)
      acd227(4)=dotproduct(k3,ninjaE3)
      acd227(5)=abb227(41)
      acd227(6)=dotproduct(k4,ninjaE3)
      acd227(7)=dotproduct(ninjaE3,spvak1k3)
      acd227(8)=abb227(12)
      acd227(9)=dotproduct(ninjaE3,spvak2k3)
      acd227(10)=abb227(13)
      acd227(11)=dotproduct(ninjaE3,spvak4k2)
      acd227(12)=abb227(18)
      acd227(13)=dotproduct(ninjaE3,spvak1k2)
      acd227(14)=abb227(19)
      acd227(15)=dotproduct(ninjaE3,spvak4k3)
      acd227(16)=abb227(21)
      acd227(17)=dotproduct(ninjaE3,spval5k3)
      acd227(18)=abb227(84)
      acd227(19)=dotproduct(ninjaE3,spval6k2)
      acd227(20)=abb227(87)
      acd227(21)=dotproduct(ninjaE3,spval6k3)
      acd227(22)=abb227(89)
      acd227(23)=dotproduct(ninjaE3,spval5k2)
      acd227(24)=abb227(90)
      acd227(25)=acd227(6)+acd227(4)
      acd227(25)=acd227(25)*acd227(5)
      acd227(26)=acd227(3)*acd227(1)
      acd227(27)=acd227(8)*acd227(7)
      acd227(28)=acd227(10)*acd227(9)
      acd227(29)=acd227(12)*acd227(11)
      acd227(30)=acd227(14)*acd227(13)
      acd227(31)=acd227(16)*acd227(15)
      acd227(32)=acd227(18)*acd227(17)
      acd227(33)=acd227(20)*acd227(19)
      acd227(34)=acd227(22)*acd227(21)
      acd227(35)=acd227(24)*acd227(23)
      acd227(25)=acd227(25)+acd227(35)+acd227(34)+acd227(33)+acd227(32)+acd227(&
      &31)+acd227(30)+acd227(29)+acd227(28)+acd227(27)+acd227(26)
      acd227(25)=acd227(2)*acd227(25)
      brack(ninjaidxt1x0mu0)=acd227(25)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd227h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(72) :: acd227
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd227(1)=dotproduct(k2,ninjaA1)
      acd227(2)=dotproduct(ninjaE3,spvak7k2)
      acd227(3)=abb227(62)
      acd227(4)=dotproduct(k2,ninjaE3)
      acd227(5)=dotproduct(ninjaA1,spvak7k2)
      acd227(6)=dotproduct(k3,ninjaA1)
      acd227(7)=abb227(41)
      acd227(8)=dotproduct(k3,ninjaE3)
      acd227(9)=dotproduct(k4,ninjaA1)
      acd227(10)=dotproduct(k4,ninjaE3)
      acd227(11)=dotproduct(ninjaA1,spvak1k3)
      acd227(12)=abb227(12)
      acd227(13)=dotproduct(ninjaE3,spvak1k3)
      acd227(14)=dotproduct(ninjaE3,spvak2k3)
      acd227(15)=abb227(13)
      acd227(16)=dotproduct(ninjaE3,spvak4k2)
      acd227(17)=abb227(18)
      acd227(18)=dotproduct(ninjaE3,spvak4k3)
      acd227(19)=abb227(21)
      acd227(20)=dotproduct(ninjaE3,spvak1k2)
      acd227(21)=abb227(19)
      acd227(22)=dotproduct(ninjaE3,spval5k3)
      acd227(23)=abb227(84)
      acd227(24)=dotproduct(ninjaE3,spval6k2)
      acd227(25)=abb227(87)
      acd227(26)=dotproduct(ninjaE3,spval6k3)
      acd227(27)=abb227(89)
      acd227(28)=dotproduct(ninjaE3,spval5k2)
      acd227(29)=abb227(90)
      acd227(30)=dotproduct(ninjaA1,spvak2k3)
      acd227(31)=dotproduct(ninjaA1,spvak4k2)
      acd227(32)=dotproduct(ninjaA1,spvak4k3)
      acd227(33)=dotproduct(ninjaA1,spvak1k2)
      acd227(34)=dotproduct(ninjaA1,spval5k3)
      acd227(35)=dotproduct(ninjaA1,spval6k2)
      acd227(36)=dotproduct(ninjaA1,spval6k3)
      acd227(37)=dotproduct(ninjaA1,spval5k2)
      acd227(38)=dotproduct(k2,ninjaA0)
      acd227(39)=dotproduct(ninjaA0,spvak7k2)
      acd227(40)=abb227(32)
      acd227(41)=dotproduct(k3,ninjaA0)
      acd227(42)=dotproduct(k4,ninjaA0)
      acd227(43)=dotproduct(k7,ninjaE3)
      acd227(44)=abb227(27)
      acd227(45)=dotproduct(ninjaA0,ninjaE3)
      acd227(46)=abb227(14)
      acd227(47)=dotproduct(ninjaA0,spvak1k3)
      acd227(48)=dotproduct(ninjaA0,spvak2k3)
      acd227(49)=dotproduct(ninjaA0,spvak4k2)
      acd227(50)=dotproduct(ninjaA0,spvak4k3)
      acd227(51)=dotproduct(ninjaA0,spvak1k2)
      acd227(52)=dotproduct(ninjaA0,spval5k3)
      acd227(53)=dotproduct(ninjaA0,spval6k2)
      acd227(54)=dotproduct(ninjaA0,spval6k3)
      acd227(55)=dotproduct(ninjaA0,spval5k2)
      acd227(56)=abb227(15)
      acd227(57)=abb227(16)
      acd227(58)=abb227(17)
      acd227(59)=acd227(8)+acd227(10)
      acd227(60)=acd227(59)*acd227(7)
      acd227(61)=acd227(29)*acd227(28)
      acd227(62)=acd227(27)*acd227(26)
      acd227(63)=acd227(25)*acd227(24)
      acd227(64)=acd227(23)*acd227(22)
      acd227(65)=acd227(21)*acd227(20)
      acd227(66)=acd227(19)*acd227(18)
      acd227(67)=acd227(17)*acd227(16)
      acd227(68)=acd227(15)*acd227(14)
      acd227(69)=acd227(12)*acd227(13)
      acd227(70)=acd227(3)*acd227(4)
      acd227(60)=acd227(67)+acd227(68)+acd227(69)+acd227(70)+acd227(63)+acd227(&
      &64)+acd227(65)+acd227(66)+acd227(60)+acd227(61)+acd227(62)
      acd227(61)=acd227(5)*acd227(60)
      acd227(62)=acd227(29)*acd227(37)
      acd227(63)=acd227(27)*acd227(36)
      acd227(64)=acd227(25)*acd227(35)
      acd227(65)=acd227(23)*acd227(34)
      acd227(66)=acd227(21)*acd227(33)
      acd227(67)=acd227(19)*acd227(32)
      acd227(68)=acd227(17)*acd227(31)
      acd227(69)=acd227(15)*acd227(30)
      acd227(70)=acd227(12)*acd227(11)
      acd227(71)=acd227(3)*acd227(1)
      acd227(72)=acd227(9)+acd227(6)
      acd227(72)=acd227(7)*acd227(72)
      acd227(62)=acd227(72)+acd227(71)+acd227(70)+acd227(69)+acd227(68)+acd227(&
      &67)+acd227(66)+acd227(65)+acd227(64)+acd227(62)+acd227(63)
      acd227(62)=acd227(2)*acd227(62)
      acd227(61)=acd227(61)+acd227(62)
      acd227(60)=acd227(39)*acd227(60)
      acd227(62)=acd227(29)*acd227(55)
      acd227(63)=acd227(27)*acd227(54)
      acd227(64)=acd227(25)*acd227(53)
      acd227(65)=acd227(23)*acd227(52)
      acd227(66)=acd227(21)*acd227(51)
      acd227(67)=acd227(19)*acd227(50)
      acd227(68)=acd227(17)*acd227(49)
      acd227(69)=acd227(15)*acd227(48)
      acd227(70)=acd227(12)*acd227(47)
      acd227(71)=acd227(3)*acd227(38)
      acd227(72)=acd227(42)+acd227(41)
      acd227(72)=acd227(7)*acd227(72)
      acd227(62)=acd227(72)+acd227(71)+acd227(70)+acd227(69)+acd227(68)+acd227(&
      &67)+acd227(66)+acd227(65)+acd227(64)+acd227(63)+acd227(56)+acd227(62)
      acd227(62)=acd227(2)*acd227(62)
      acd227(59)=acd227(4)-acd227(59)
      acd227(59)=acd227(40)*acd227(59)
      acd227(63)=acd227(45)*acd227(46)
      acd227(64)=acd227(43)*acd227(44)
      acd227(65)=acd227(18)*acd227(58)
      acd227(66)=acd227(16)*acd227(57)
      acd227(59)=acd227(62)+acd227(60)+acd227(66)+acd227(65)+2.0_ki*acd227(63)+&
      &acd227(64)+acd227(59)
      brack(ninjaidxt0x0mu0)=acd227(59)
      brack(ninjaidxt0x1mu0)=acd227(61)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d227h7_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd227h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d227h7l132
