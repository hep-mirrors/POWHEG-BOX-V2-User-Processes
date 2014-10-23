module     p0_dbaru_epnebbbarg_d128h3l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d128h3l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd128h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd128
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd128(1)=dotproduct(ninjaE3,spvak1k2)
      acd128(2)=dotproduct(ninjaE3,spvak2k7)
      acd128(3)=dotproduct(ninjaE3,spvak4k3)
      acd128(4)=abb128(19)
      acd128(5)=dotproduct(ninjaE3,spvak2l6)
      acd128(6)=abb128(25)
      acd128(7)=dotproduct(ninjaE3,spvak2l5)
      acd128(8)=abb128(32)
      acd128(9)=acd128(4)*acd128(2)
      acd128(10)=acd128(6)*acd128(5)
      acd128(11)=acd128(8)*acd128(7)
      acd128(9)=acd128(11)+acd128(9)+acd128(10)
      acd128(9)=acd128(9)*acd128(3)*acd128(1)
      brack(ninjaidxt1x0mu0)=acd128(9)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd128h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(73) :: acd128
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd128(1)=dotproduct(ninjaA1,spvak1k2)
      acd128(2)=dotproduct(ninjaE3,spvak2l5)
      acd128(3)=dotproduct(ninjaE3,spvak4k3)
      acd128(4)=abb128(32)
      acd128(5)=dotproduct(ninjaE3,spvak2k7)
      acd128(6)=abb128(19)
      acd128(7)=dotproduct(ninjaE3,spvak2l6)
      acd128(8)=abb128(25)
      acd128(9)=dotproduct(ninjaA1,spvak2l5)
      acd128(10)=dotproduct(ninjaE3,spvak1k2)
      acd128(11)=dotproduct(ninjaA1,spvak2k7)
      acd128(12)=dotproduct(ninjaA1,spvak4k3)
      acd128(13)=dotproduct(ninjaA1,spvak2l6)
      acd128(14)=dotproduct(k1,ninjaE3)
      acd128(15)=abb128(39)
      acd128(16)=dotproduct(k2,ninjaE3)
      acd128(17)=abb128(76)
      acd128(18)=dotproduct(k3,ninjaE3)
      acd128(19)=dotproduct(k4,ninjaE3)
      acd128(20)=dotproduct(ninjaA0,ninjaE3)
      acd128(21)=abb128(30)
      acd128(22)=dotproduct(ninjaE3,spvak1l5)
      acd128(23)=abb128(21)
      acd128(24)=abb128(31)
      acd128(25)=dotproduct(ninjaE3,spvak1k7)
      acd128(26)=abb128(43)
      acd128(27)=abb128(50)
      acd128(28)=dotproduct(ninjaE3,spvak4k2)
      acd128(29)=abb128(16)
      acd128(30)=abb128(49)
      acd128(31)=abb128(57)
      acd128(32)=dotproduct(ninjaE3,spvak1l6)
      acd128(33)=abb128(48)
      acd128(34)=abb128(12)
      acd128(35)=abb128(29)
      acd128(36)=abb128(14)
      acd128(37)=abb128(42)
      acd128(38)=abb128(18)
      acd128(39)=abb128(56)
      acd128(40)=abb128(26)
      acd128(41)=dotproduct(ninjaA0,spvak1k2)
      acd128(42)=dotproduct(ninjaA0,spvak2l5)
      acd128(43)=dotproduct(ninjaA0,spvak2k7)
      acd128(44)=dotproduct(ninjaA0,spvak4k3)
      acd128(45)=dotproduct(ninjaA0,spvak2l6)
      acd128(46)=abb128(47)
      acd128(47)=abb128(20)
      acd128(48)=abb128(34)
      acd128(49)=dotproduct(ninjaE3,spvak1k3)
      acd128(50)=abb128(24)
      acd128(51)=abb128(60)
      acd128(52)=abb128(23)
      acd128(53)=abb128(40)
      acd128(54)=abb128(22)
      acd128(55)=abb128(46)
      acd128(56)=dotproduct(ninjaE3,spvak3k2)
      acd128(57)=abb128(64)
      acd128(58)=abb128(45)
      acd128(59)=acd128(9)*acd128(4)
      acd128(60)=acd128(11)*acd128(6)
      acd128(61)=acd128(13)*acd128(8)
      acd128(59)=acd128(61)+acd128(60)+acd128(59)
      acd128(60)=acd128(10)*acd128(3)
      acd128(59)=acd128(60)*acd128(59)
      acd128(61)=acd128(4)*acd128(2)
      acd128(62)=acd128(6)*acd128(5)
      acd128(63)=acd128(8)*acd128(7)
      acd128(61)=acd128(61)+acd128(62)+acd128(63)
      acd128(62)=acd128(3)*acd128(61)
      acd128(63)=acd128(1)*acd128(62)
      acd128(61)=acd128(10)*acd128(61)
      acd128(64)=acd128(12)*acd128(61)
      acd128(59)=acd128(63)+acd128(64)+acd128(59)
      acd128(63)=acd128(15)*acd128(14)
      acd128(64)=acd128(30)*acd128(16)
      acd128(65)=acd128(46)*acd128(22)
      acd128(66)=acd128(51)*acd128(25)
      acd128(67)=acd128(54)*acd128(28)
      acd128(68)=acd128(56)*acd128(38)
      acd128(69)=acd128(57)*acd128(32)
      acd128(63)=acd128(69)+acd128(68)+acd128(67)+acd128(66)+acd128(65)+acd128(&
      &64)+acd128(63)
      acd128(63)=acd128(3)*acd128(63)
      acd128(64)=-acd128(38)*acd128(28)
      acd128(65)=acd128(21)*acd128(16)
      acd128(66)=acd128(35)*acd128(2)
      acd128(67)=acd128(37)*acd128(5)
      acd128(68)=acd128(39)*acd128(7)
      acd128(64)=acd128(68)+acd128(67)+acd128(66)+acd128(65)+acd128(64)
      acd128(65)=2.0_ki*acd128(20)
      acd128(64)=acd128(65)*acd128(64)
      acd128(66)=acd128(23)*acd128(22)
      acd128(67)=-acd128(26)*acd128(25)
      acd128(68)=-acd128(29)*acd128(28)
      acd128(69)=-acd128(33)*acd128(32)
      acd128(66)=acd128(68)+acd128(69)+acd128(67)+acd128(66)
      acd128(67)=acd128(19)+acd128(18)
      acd128(68)=acd128(67)-acd128(16)
      acd128(66)=acd128(68)*acd128(66)
      acd128(68)=acd128(24)*acd128(2)
      acd128(69)=acd128(27)*acd128(5)
      acd128(70)=acd128(31)*acd128(7)
      acd128(68)=acd128(70)+acd128(69)+acd128(68)
      acd128(68)=acd128(16)*acd128(68)
      acd128(69)=acd128(48)*acd128(2)
      acd128(70)=acd128(52)*acd128(5)
      acd128(71)=acd128(55)*acd128(7)
      acd128(69)=acd128(71)+acd128(70)+acd128(69)
      acd128(69)=acd128(28)*acd128(69)
      acd128(70)=acd128(50)*acd128(2)
      acd128(71)=acd128(53)*acd128(5)
      acd128(72)=acd128(58)*acd128(7)
      acd128(70)=acd128(72)+acd128(71)+acd128(70)
      acd128(70)=acd128(49)*acd128(70)
      acd128(71)=acd128(42)*acd128(4)
      acd128(72)=acd128(43)*acd128(6)
      acd128(73)=acd128(45)*acd128(8)
      acd128(71)=acd128(47)+acd128(73)+acd128(72)+acd128(71)
      acd128(60)=acd128(60)*acd128(71)
      acd128(62)=acd128(41)*acd128(62)
      acd128(61)=acd128(44)*acd128(61)
      acd128(67)=acd128(16)*acd128(67)
      acd128(71)=acd128(16)**2
      acd128(67)=-acd128(71)+acd128(67)
      acd128(67)=acd128(17)*acd128(67)
      acd128(71)=acd128(2)*acd128(10)
      acd128(72)=acd128(22)*acd128(65)
      acd128(71)=acd128(71)+acd128(72)
      acd128(71)=acd128(34)*acd128(71)
      acd128(72)=-acd128(5)*acd128(10)
      acd128(73)=-acd128(25)*acd128(65)
      acd128(72)=acd128(72)+acd128(73)
      acd128(72)=acd128(36)*acd128(72)
      acd128(73)=-acd128(7)*acd128(10)
      acd128(65)=-acd128(32)*acd128(65)
      acd128(65)=acd128(73)+acd128(65)
      acd128(65)=acd128(40)*acd128(65)
      acd128(60)=acd128(65)+acd128(72)+acd128(71)+acd128(61)+acd128(62)+acd128(&
      &67)+acd128(63)+acd128(64)+acd128(60)+acd128(70)+acd128(69)+acd128(68)+ac&
      &d128(66)
      brack(ninjaidxt0x0mu0)=acd128(60)
      brack(ninjaidxt0x1mu0)=acd128(59)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d128h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd128h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
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
end module     p0_dbaru_epnebbbarg_d128h3l132
