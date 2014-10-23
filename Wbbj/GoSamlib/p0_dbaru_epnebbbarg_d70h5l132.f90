module     p0_dbaru_epnebbbarg_d70h5l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d70h5l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd70h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd70
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd70(1)=dotproduct(k2,ninjaE3)
      acd70(2)=dotproduct(ninjaE3,spvak1k2)
      acd70(3)=dotproduct(ninjaE3,spvak4k3)
      acd70(4)=dotproduct(ninjaE3,spvak7k2)
      acd70(5)=abb70(40)
      acd70(6)=dotproduct(ninjaE3,spval6l5)
      acd70(7)=abb70(12)
      acd70(8)=acd70(5)*acd70(1)
      acd70(9)=acd70(7)*acd70(6)
      acd70(8)=acd70(8)+acd70(9)
      acd70(8)=acd70(2)*acd70(8)*acd70(4)*acd70(3)
      brack(ninjaidxt1x0mu0)=acd70(8)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd70h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(73) :: acd70
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd70(1)=dotproduct(k2,ninjaA1)
      acd70(2)=dotproduct(ninjaE3,spvak4k3)
      acd70(3)=dotproduct(ninjaE3,spvak7k2)
      acd70(4)=dotproduct(ninjaE3,spvak1k2)
      acd70(5)=abb70(40)
      acd70(6)=dotproduct(k2,ninjaE3)
      acd70(7)=dotproduct(ninjaA1,spvak4k3)
      acd70(8)=dotproduct(ninjaA1,spvak7k2)
      acd70(9)=dotproduct(ninjaA1,spvak1k2)
      acd70(10)=dotproduct(ninjaE3,spval6l5)
      acd70(11)=abb70(12)
      acd70(12)=dotproduct(ninjaA1,spval6l5)
      acd70(13)=dotproduct(k1,ninjaE3)
      acd70(14)=abb70(24)
      acd70(15)=dotproduct(k2,ninjaA0)
      acd70(16)=dotproduct(k3,ninjaE3)
      acd70(17)=abb70(71)
      acd70(18)=dotproduct(k4,ninjaE3)
      acd70(19)=dotproduct(k7,ninjaE3)
      acd70(20)=abb70(79)
      acd70(21)=abb70(60)
      acd70(22)=dotproduct(ninjaE3,spvak4k2)
      acd70(23)=abb70(42)
      acd70(24)=dotproduct(ninjaA0,ninjaE3)
      acd70(25)=abb70(61)
      acd70(26)=abb70(41)
      acd70(27)=dotproduct(ninjaA0,spvak4k3)
      acd70(28)=dotproduct(ninjaA0,spvak7k2)
      acd70(29)=dotproduct(ninjaA0,spvak1k2)
      acd70(30)=abb70(33)
      acd70(31)=abb70(84)
      acd70(32)=abb70(48)
      acd70(33)=dotproduct(ninjaE3,spvak1k3)
      acd70(34)=abb70(38)
      acd70(35)=dotproduct(ninjaE3,spvak1k7)
      acd70(36)=abb70(64)
      acd70(37)=abb70(46)
      acd70(38)=dotproduct(l5,ninjaE3)
      acd70(39)=dotproduct(l6,ninjaE3)
      acd70(40)=abb70(75)
      acd70(41)=abb70(23)
      acd70(42)=abb70(56)
      acd70(43)=abb70(36)
      acd70(44)=dotproduct(ninjaE3,spval6k2)
      acd70(45)=abb70(10)
      acd70(46)=abb70(63)
      acd70(47)=abb70(57)
      acd70(48)=abb70(52)
      acd70(49)=dotproduct(ninjaA0,spval6l5)
      acd70(50)=abb70(9)
      acd70(51)=abb70(37)
      acd70(52)=abb70(11)
      acd70(53)=abb70(44)
      acd70(54)=abb70(13)
      acd70(55)=dotproduct(ninjaE3,spval5k2)
      acd70(56)=abb70(32)
      acd70(57)=dotproduct(ninjaE3,spvak3k2)
      acd70(58)=abb70(93)
      acd70(59)=abb70(16)
      acd70(60)=abb70(62)
      acd70(61)=acd70(10)*acd70(11)
      acd70(62)=acd70(6)*acd70(5)
      acd70(61)=acd70(61)+acd70(62)
      acd70(62)=acd70(9)*acd70(61)
      acd70(63)=acd70(11)*acd70(12)
      acd70(64)=acd70(5)*acd70(1)
      acd70(63)=acd70(63)+acd70(64)
      acd70(63)=acd70(4)*acd70(63)
      acd70(62)=acd70(63)+acd70(62)
      acd70(62)=acd70(2)*acd70(62)
      acd70(61)=acd70(61)*acd70(4)
      acd70(63)=acd70(7)*acd70(61)
      acd70(62)=acd70(62)+acd70(63)
      acd70(62)=acd70(3)*acd70(62)
      acd70(63)=acd70(2)*acd70(8)*acd70(61)
      acd70(62)=acd70(63)+acd70(62)
      acd70(63)=acd70(11)*acd70(49)
      acd70(64)=acd70(5)*acd70(15)
      acd70(63)=acd70(64)+acd70(53)+acd70(63)
      acd70(63)=acd70(4)*acd70(63)
      acd70(64)=acd70(55)*acd70(56)
      acd70(65)=acd70(48)*acd70(57)
      acd70(66)=acd70(44)*acd70(52)
      acd70(67)=acd70(13)+acd70(39)+acd70(38)
      acd70(67)=acd70(14)*acd70(67)
      acd70(68)=2.0_ki*acd70(24)
      acd70(69)=acd70(43)*acd70(68)
      acd70(70)=acd70(22)*acd70(54)
      acd70(71)=acd70(11)*acd70(29)
      acd70(71)=acd70(50)+acd70(71)
      acd70(71)=acd70(10)*acd70(71)
      acd70(72)=acd70(5)*acd70(29)
      acd70(72)=acd70(30)+acd70(72)
      acd70(72)=acd70(6)*acd70(72)
      acd70(63)=acd70(72)+acd70(71)+acd70(63)+acd70(70)+acd70(69)+acd70(67)+acd&
      &70(66)+acd70(64)+acd70(65)
      acd70(63)=acd70(2)*acd70(63)
      acd70(64)=acd70(16)+acd70(18)
      acd70(65)=acd70(64)+acd70(68)
      acd70(66)=-acd70(36)*acd70(65)
      acd70(67)=acd70(35)*acd70(46)
      acd70(69)=acd70(33)*acd70(60)
      acd70(70)=acd70(19)*acd70(40)
      acd70(71)=acd70(22)*acd70(59)
      acd70(72)=acd70(4)*acd70(27)
      acd70(73)=acd70(11)*acd70(72)
      acd70(66)=acd70(73)+acd70(71)+acd70(70)+acd70(67)+acd70(69)+acd70(66)
      acd70(66)=acd70(10)*acd70(66)
      acd70(65)=acd70(17)*acd70(65)
      acd70(67)=acd70(33)*acd70(34)
      acd70(69)=-acd70(25)*acd70(35)
      acd70(70)=acd70(19)*acd70(20)
      acd70(71)=acd70(22)*acd70(32)
      acd70(72)=acd70(5)*acd70(72)
      acd70(65)=acd70(72)+acd70(71)+acd70(70)+acd70(67)+acd70(69)+acd70(65)
      acd70(65)=acd70(6)*acd70(65)
      acd70(67)=acd70(10)*acd70(58)
      acd70(69)=acd70(6)*acd70(31)
      acd70(70)=acd70(2)*acd70(51)
      acd70(67)=acd70(70)+acd70(67)+acd70(69)
      acd70(67)=acd70(3)*acd70(67)
      acd70(64)=-acd70(19)-acd70(64)
      acd70(64)=acd70(37)*acd70(64)
      acd70(69)=-acd70(48)*acd70(68)
      acd70(64)=acd70(69)+acd70(64)
      acd70(64)=acd70(22)*acd70(64)
      acd70(63)=acd70(67)+acd70(63)+acd70(65)+acd70(64)+acd70(66)
      acd70(63)=acd70(3)*acd70(63)
      acd70(64)=acd70(19)*acd70(42)
      acd70(65)=acd70(47)*acd70(68)
      acd70(64)=acd70(64)+acd70(65)
      acd70(64)=acd70(22)*acd70(64)
      acd70(65)=acd70(19)*acd70(41)
      acd70(66)=-acd70(46)*acd70(68)
      acd70(65)=acd70(65)+acd70(66)
      acd70(65)=acd70(4)*acd70(65)
      acd70(64)=acd70(64)+acd70(65)
      acd70(64)=acd70(10)*acd70(64)
      acd70(65)=acd70(19)*acd70(23)
      acd70(66)=acd70(26)*acd70(68)
      acd70(65)=acd70(65)+acd70(66)
      acd70(65)=acd70(22)*acd70(65)
      acd70(66)=acd70(19)*acd70(21)
      acd70(67)=acd70(25)*acd70(68)
      acd70(66)=acd70(66)+acd70(67)
      acd70(66)=acd70(4)*acd70(66)
      acd70(65)=acd70(65)+acd70(66)
      acd70(65)=acd70(6)*acd70(65)
      acd70(61)=acd70(28)*acd70(61)
      acd70(66)=acd70(44)*acd70(45)*acd70(68)
      acd70(61)=acd70(66)+acd70(61)
      acd70(61)=acd70(2)*acd70(61)
      acd70(61)=acd70(63)+acd70(61)+acd70(64)+acd70(65)
      brack(ninjaidxt0x0mu0)=acd70(61)
      brack(ninjaidxt0x1mu0)=acd70(62)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d70h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd70h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k3-k2+k7+k4
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d70h5l132
