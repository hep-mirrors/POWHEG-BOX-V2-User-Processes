module     p0_dbaru_epnebbbarg_d75h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d75h2l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd75h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd75
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(78) :: acd75
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd75(1)=dotproduct(k2,ninjaE3)
      acd75(2)=dotproduct(ninjaE3,spvak4k3)
      acd75(3)=dotproduct(ninjaE3,spval5k2)
      acd75(4)=abb75(46)
      acd75(5)=dotproduct(l6,ninjaE3)
      acd75(6)=abb75(33)
      acd75(7)=dotproduct(k7,ninjaE3)
      acd75(8)=dotproduct(ninjaE3,spvak1k2)
      acd75(9)=dotproduct(ninjaE3,spval5k7)
      acd75(10)=abb75(9)
      acd75(11)=dotproduct(ninjaE3,spval5l6)
      acd75(12)=abb75(14)
      acd75(13)=dotproduct(ninjaE3,spvak1k7)
      acd75(14)=dotproduct(ninjaE3,spvak2k7)
      acd75(15)=abb75(40)
      acd75(16)=dotproduct(ninjaE3,spvak2l6)
      acd75(17)=abb75(12)
      acd75(18)=dotproduct(ninjaE3,spvak1l6)
      acd75(19)=dotproduct(k2,ninjaA)
      acd75(20)=abb75(45)
      acd75(21)=abb75(43)
      acd75(22)=dotproduct(ninjaA,ninjaE3)
      acd75(23)=abb75(47)
      acd75(24)=dotproduct(ninjaA,spvak4k3)
      acd75(25)=dotproduct(ninjaA,spval5k2)
      acd75(26)=abb75(54)
      acd75(27)=abb75(57)
      acd75(28)=abb75(30)
      acd75(29)=dotproduct(ninjaE3,spvak1k3)
      acd75(30)=abb75(27)
      acd75(31)=dotproduct(ninjaE3,spval5k3)
      acd75(32)=abb75(49)
      acd75(33)=dotproduct(l5,ninjaE3)
      acd75(34)=abb75(52)
      acd75(35)=dotproduct(l6,ninjaA)
      acd75(36)=abb75(38)
      acd75(37)=abb75(53)
      acd75(38)=abb75(48)
      acd75(39)=dotproduct(k7,ninjaA)
      acd75(40)=abb75(29)
      acd75(41)=abb75(18)
      acd75(42)=abb75(21)
      acd75(43)=dotproduct(ninjaA,spvak1k2)
      acd75(44)=dotproduct(ninjaA,spval5k7)
      acd75(45)=dotproduct(ninjaA,spvak1k7)
      acd75(46)=dotproduct(ninjaA,spvak2k7)
      acd75(47)=dotproduct(ninjaA,spvak2l6)
      acd75(48)=dotproduct(ninjaA,spval5l6)
      acd75(49)=dotproduct(ninjaA,spvak1l6)
      acd75(50)=abb75(55)
      acd75(51)=abb75(10)
      acd75(52)=abb75(13)
      acd75(53)=abb75(19)
      acd75(54)=abb75(32)
      acd75(55)=abb75(37)
      acd75(56)=abb75(56)
      acd75(57)=abb75(15)
      acd75(58)=abb75(20)
      acd75(59)=dotproduct(ninjaE3,spvak4k2)
      acd75(60)=abb75(11)
      acd75(61)=abb75(59)
      acd75(62)=abb75(35)
      acd75(63)=abb75(36)
      acd75(64)=acd75(16)*acd75(17)
      acd75(65)=acd75(14)*acd75(15)
      acd75(64)=acd75(64)+acd75(65)
      acd75(65)=acd75(5)+acd75(7)
      acd75(66)=acd75(65)*acd75(6)
      acd75(67)=acd75(12)*acd75(18)
      acd75(68)=acd75(10)*acd75(13)
      acd75(67)=acd75(66)-acd75(64)+acd75(67)+acd75(68)
      acd75(68)=acd75(1)*acd75(4)
      acd75(69)=acd75(68)-acd75(67)
      acd75(69)=acd75(3)*acd75(69)
      acd75(70)=acd75(12)*acd75(11)
      acd75(71)=acd75(10)*acd75(9)
      acd75(70)=acd75(70)+acd75(71)
      acd75(71)=acd75(8)*acd75(70)
      acd75(69)=acd75(71)+acd75(69)
      acd75(69)=acd75(2)*acd75(69)
      acd75(71)=acd75(21)*acd75(65)
      acd75(72)=acd75(31)*acd75(32)
      acd75(73)=acd75(29)*acd75(30)
      acd75(74)=2.0_ki*acd75(22)
      acd75(75)=acd75(23)*acd75(74)
      acd75(76)=acd75(16)*acd75(28)
      acd75(77)=acd75(14)*acd75(27)
      acd75(78)=acd75(1)*acd75(20)
      acd75(71)=acd75(78)+acd75(77)+acd75(76)+acd75(75)+acd75(72)+acd75(73)+acd&
      &75(71)
      acd75(71)=acd75(1)*acd75(71)
      acd75(67)=-acd75(24)*acd75(67)
      acd75(72)=acd75(37)*acd75(65)
      acd75(73)=acd75(29)*acd75(58)
      acd75(75)=acd75(16)*acd75(57)
      acd75(76)=acd75(14)*acd75(56)
      acd75(77)=acd75(8)*acd75(52)
      acd75(78)=acd75(24)*acd75(4)
      acd75(78)=acd75(26)+acd75(78)
      acd75(78)=acd75(1)*acd75(78)
      acd75(67)=acd75(78)+acd75(77)+acd75(67)+acd75(76)+acd75(73)+acd75(75)+acd&
      &75(72)
      acd75(67)=acd75(3)*acd75(67)
      acd75(72)=acd75(17)*acd75(47)
      acd75(73)=acd75(15)*acd75(46)
      acd75(75)=acd75(4)*acd75(19)
      acd75(76)=-acd75(12)*acd75(49)
      acd75(77)=-acd75(10)*acd75(45)
      acd75(78)=-acd75(39)-acd75(35)
      acd75(78)=acd75(6)*acd75(78)
      acd75(72)=acd75(78)+acd75(77)+acd75(76)+acd75(75)+acd75(73)+acd75(54)+acd&
      &75(72)
      acd75(72)=acd75(3)*acd75(72)
      acd75(64)=-acd75(66)+acd75(64)+acd75(68)
      acd75(64)=acd75(25)*acd75(64)
      acd75(66)=acd75(11)*acd75(43)
      acd75(68)=-acd75(25)*acd75(18)
      acd75(66)=acd75(66)+acd75(68)
      acd75(66)=acd75(12)*acd75(66)
      acd75(68)=acd75(9)*acd75(43)
      acd75(73)=-acd75(25)*acd75(13)
      acd75(68)=acd75(68)+acd75(73)
      acd75(68)=acd75(10)*acd75(68)
      acd75(73)=acd75(12)*acd75(48)
      acd75(75)=acd75(10)*acd75(44)
      acd75(73)=acd75(75)+acd75(50)+acd75(73)
      acd75(73)=acd75(8)*acd75(73)
      acd75(75)=acd75(33)*acd75(34)
      acd75(64)=acd75(72)+acd75(73)+acd75(68)+acd75(66)+acd75(75)+acd75(64)
      acd75(64)=acd75(2)*acd75(64)
      acd75(66)=acd75(11)*acd75(63)
      acd75(68)=acd75(9)*acd75(55)
      acd75(72)=acd75(42)*acd75(74)
      acd75(66)=acd75(72)+acd75(66)+acd75(68)
      acd75(66)=acd75(29)*acd75(66)
      acd75(68)=acd75(59)*acd75(60)
      acd75(72)=acd75(31)*acd75(61)
      acd75(73)=acd75(40)*acd75(74)
      acd75(68)=acd75(73)+acd75(68)+acd75(72)
      acd75(68)=acd75(14)*acd75(68)
      acd75(70)=acd75(24)*acd75(70)
      acd75(72)=acd75(11)*acd75(53)
      acd75(73)=acd75(9)*acd75(51)
      acd75(70)=acd75(70)+acd75(72)+acd75(73)
      acd75(70)=acd75(8)*acd75(70)
      acd75(72)=acd75(74)*acd75(36)
      acd75(73)=acd75(31)*acd75(38)
      acd75(72)=acd75(72)-acd75(73)
      acd75(65)=-acd75(72)*acd75(65)
      acd75(72)=acd75(31)*acd75(62)
      acd75(73)=acd75(41)*acd75(74)
      acd75(72)=acd75(72)+acd75(73)
      acd75(72)=acd75(16)*acd75(72)
      acd75(64)=acd75(64)+acd75(67)+acd75(71)+acd75(70)+acd75(68)+acd75(72)+acd&
      &75(66)+acd75(65)
      brack(ninjaidxt1mu0)=acd75(69)
      brack(ninjaidxt0mu0)=acd75(64)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d75h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd75h2
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d75h2l131
