module     p0_dbaru_epnebbbarg_d14h0l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d14h0l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd14h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd14
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd14(1)=dotproduct(k7,ninjaE3)
      acd14(2)=dotproduct(ninjaE3,spvak4k3)
      acd14(3)=dotproduct(ninjaE3,spval6k2)
      acd14(4)=abb14(65)
      acd14(5)=dotproduct(ninjaE3,spval5k2)
      acd14(6)=abb14(56)
      acd14(7)=dotproduct(ninjaE3,spvak1k7)
      acd14(8)=abb14(19)
      acd14(9)=abb14(22)
      acd14(10)=dotproduct(ninjaE3,spvak2k7)
      acd14(11)=abb14(24)
      acd14(12)=abb14(28)
      acd14(13)=acd14(6)*acd14(1)
      acd14(14)=acd14(9)*acd14(7)
      acd14(15)=acd14(12)*acd14(10)
      acd14(13)=acd14(15)+acd14(14)+acd14(13)
      acd14(13)=acd14(13)*acd14(5)
      acd14(14)=acd14(4)*acd14(1)
      acd14(15)=acd14(8)*acd14(7)
      acd14(16)=acd14(11)*acd14(10)
      acd14(14)=acd14(16)+acd14(15)+acd14(14)
      acd14(14)=acd14(14)*acd14(3)
      acd14(13)=acd14(14)+acd14(13)
      acd14(13)=acd14(2)*acd14(13)
      brack(ninjaidxt1x0mu0)=acd14(13)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd14h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(75) :: acd14
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd14(1)=dotproduct(k7,ninjaA1)
      acd14(2)=dotproduct(ninjaE3,spval5k2)
      acd14(3)=dotproduct(ninjaE3,spvak4k3)
      acd14(4)=abb14(56)
      acd14(5)=dotproduct(ninjaE3,spval6k2)
      acd14(6)=abb14(65)
      acd14(7)=dotproduct(k7,ninjaE3)
      acd14(8)=dotproduct(ninjaA1,spval5k2)
      acd14(9)=dotproduct(ninjaA1,spvak4k3)
      acd14(10)=dotproduct(ninjaA1,spval6k2)
      acd14(11)=dotproduct(ninjaE3,spvak2k7)
      acd14(12)=abb14(28)
      acd14(13)=dotproduct(ninjaE3,spvak1k7)
      acd14(14)=abb14(22)
      acd14(15)=dotproduct(ninjaA1,spvak2k7)
      acd14(16)=abb14(24)
      acd14(17)=abb14(19)
      acd14(18)=dotproduct(ninjaA1,spvak1k7)
      acd14(19)=dotproduct(k1,ninjaE3)
      acd14(20)=abb14(47)
      acd14(21)=dotproduct(ninjaE3,spvak1k3)
      acd14(22)=abb14(20)
      acd14(23)=abb14(37)
      acd14(24)=abb14(21)
      acd14(25)=abb14(54)
      acd14(26)=abb14(57)
      acd14(27)=dotproduct(k2,ninjaE3)
      acd14(28)=dotproduct(k3,ninjaE3)
      acd14(29)=dotproduct(k4,ninjaE3)
      acd14(30)=dotproduct(k7,ninjaA0)
      acd14(31)=dotproduct(ninjaA0,ninjaE3)
      acd14(32)=abb14(42)
      acd14(33)=dotproduct(ninjaA0,spval5k2)
      acd14(34)=dotproduct(ninjaA0,spvak4k3)
      acd14(35)=dotproduct(ninjaA0,spval6k2)
      acd14(36)=abb14(31)
      acd14(37)=abb14(17)
      acd14(38)=abb14(63)
      acd14(39)=abb14(23)
      acd14(40)=abb14(11)
      acd14(41)=abb14(41)
      acd14(42)=dotproduct(ninjaA0,spvak2k7)
      acd14(43)=dotproduct(ninjaA0,spvak1k7)
      acd14(44)=abb14(9)
      acd14(45)=abb14(14)
      acd14(46)=abb14(32)
      acd14(47)=abb14(26)
      acd14(48)=abb14(60)
      acd14(49)=abb14(16)
      acd14(50)=abb14(27)
      acd14(51)=abb14(64)
      acd14(52)=dotproduct(ninjaE3,spvak1k4)
      acd14(53)=dotproduct(ninjaE3,spvak1k2)
      acd14(54)=abb14(29)
      acd14(55)=acd14(16)*acd14(11)
      acd14(56)=acd14(17)*acd14(13)
      acd14(55)=acd14(56)+acd14(55)
      acd14(55)=acd14(5)*acd14(55)
      acd14(57)=acd14(14)*acd14(13)
      acd14(58)=acd14(57)*acd14(2)
      acd14(59)=acd14(11)*acd14(2)
      acd14(60)=acd14(59)*acd14(12)
      acd14(61)=acd14(7)*acd14(5)
      acd14(62)=acd14(61)*acd14(6)
      acd14(63)=acd14(7)*acd14(2)
      acd14(64)=acd14(63)*acd14(4)
      acd14(55)=acd14(58)+acd14(60)+acd14(55)+acd14(62)+acd14(64)
      acd14(58)=acd14(9)*acd14(55)
      acd14(60)=acd14(11)*acd14(3)
      acd14(62)=acd14(60)*acd14(12)
      acd14(64)=acd14(7)*acd14(3)
      acd14(65)=acd14(64)*acd14(4)
      acd14(57)=acd14(57)*acd14(3)
      acd14(57)=acd14(57)+acd14(62)+acd14(65)
      acd14(62)=acd14(8)*acd14(57)
      acd14(65)=acd14(60)*acd14(16)
      acd14(66)=acd14(64)*acd14(6)
      acd14(56)=acd14(56)*acd14(3)
      acd14(56)=acd14(56)+acd14(65)+acd14(66)
      acd14(65)=acd14(10)*acd14(56)
      acd14(66)=acd14(5)*acd14(3)
      acd14(67)=acd14(66)*acd14(6)
      acd14(68)=acd14(2)*acd14(3)
      acd14(69)=acd14(68)*acd14(4)
      acd14(67)=acd14(67)+acd14(69)
      acd14(69)=acd14(1)*acd14(67)
      acd14(70)=acd14(66)*acd14(16)
      acd14(71)=acd14(68)*acd14(12)
      acd14(70)=acd14(70)+acd14(71)
      acd14(71)=acd14(15)*acd14(70)
      acd14(72)=acd14(66)*acd14(17)
      acd14(73)=acd14(68)*acd14(14)
      acd14(72)=acd14(72)+acd14(73)
      acd14(73)=acd14(18)*acd14(72)
      acd14(58)=acd14(73)+acd14(71)+acd14(69)+acd14(65)+acd14(62)+acd14(58)
      acd14(62)=acd14(27)*acd14(25)
      acd14(65)=2.0_ki*acd14(31)
      acd14(69)=acd14(41)*acd14(65)
      acd14(71)=acd14(45)*acd14(21)
      acd14(73)=acd14(52)*acd14(39)
      acd14(74)=acd14(54)*acd14(53)
      acd14(62)=acd14(74)+acd14(73)+acd14(71)+acd14(69)+acd14(62)
      acd14(62)=acd14(3)*acd14(62)
      acd14(55)=acd14(34)*acd14(55)
      acd14(69)=acd14(20)*acd14(7)
      acd14(71)=acd14(22)*acd14(21)
      acd14(73)=acd14(24)*acd14(11)
      acd14(69)=acd14(73)+acd14(69)-acd14(71)
      acd14(71)=-acd14(25)*acd14(3)
      acd14(73)=acd14(23)*acd14(2)
      acd14(74)=acd14(26)*acd14(5)
      acd14(71)=acd14(74)+acd14(73)+acd14(71)-acd14(69)
      acd14(71)=acd14(19)*acd14(71)
      acd14(73)=acd14(29)+acd14(28)
      acd14(69)=acd14(69)*acd14(73)
      acd14(73)=-acd14(39)*acd14(21)
      acd14(74)=acd14(32)*acd14(7)
      acd14(75)=acd14(40)*acd14(11)
      acd14(73)=acd14(75)+acd14(74)+acd14(73)
      acd14(65)=acd14(65)*acd14(73)
      acd14(57)=acd14(33)*acd14(57)
      acd14(56)=acd14(35)*acd14(56)
      acd14(73)=acd14(44)*acd14(2)
      acd14(74)=acd14(46)*acd14(5)
      acd14(73)=acd14(74)+acd14(73)
      acd14(73)=acd14(21)*acd14(73)
      acd14(67)=acd14(30)*acd14(67)
      acd14(70)=acd14(42)*acd14(70)
      acd14(72)=acd14(43)*acd14(72)
      acd14(63)=acd14(36)*acd14(63)
      acd14(64)=acd14(37)*acd14(64)
      acd14(61)=acd14(38)*acd14(61)
      acd14(59)=acd14(47)*acd14(59)
      acd14(68)=acd14(48)*acd14(68)
      acd14(60)=acd14(49)*acd14(60)
      acd14(74)=acd14(50)*acd14(11)*acd14(5)
      acd14(66)=acd14(51)*acd14(66)
      acd14(55)=acd14(66)+acd14(74)+acd14(60)+acd14(68)+acd14(59)+acd14(61)+acd&
      &14(64)+acd14(63)+acd14(72)+acd14(70)+acd14(67)+acd14(56)+acd14(57)+acd14&
      &(55)+acd14(71)+acd14(62)+acd14(65)+acd14(73)+acd14(69)
      brack(ninjaidxt0x0mu0)=acd14(55)
      brack(ninjaidxt0x1mu0)=acd14(58)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d14h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd14h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
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
end module     p0_dbaru_epnebbbarg_d14h0l132
