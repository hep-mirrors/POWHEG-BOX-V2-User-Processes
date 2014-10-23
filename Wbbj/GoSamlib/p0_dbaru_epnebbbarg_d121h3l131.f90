module     p0_dbaru_epnebbbarg_d121h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d121h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd121h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd121
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd121h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(79) :: acd121
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd121(1)=dotproduct(k2,ninjaE3)
      acd121(2)=abb121(16)
      acd121(3)=dotproduct(l6,ninjaE3)
      acd121(4)=abb121(30)
      acd121(5)=dotproduct(k7,ninjaE3)
      acd121(6)=dotproduct(ninjaE3,spvak2l6)
      acd121(7)=abb121(17)
      acd121(8)=dotproduct(ninjaE3,spvak2k7)
      acd121(9)=abb121(36)
      acd121(10)=dotproduct(ninjaE3,spvak1k7)
      acd121(11)=abb121(22)
      acd121(12)=dotproduct(ninjaE3,spvak1l5)
      acd121(13)=abb121(42)
      acd121(14)=dotproduct(ninjaE3,spvak4k7)
      acd121(15)=abb121(31)
      acd121(16)=dotproduct(ninjaE3,spvak1l6)
      acd121(17)=abb121(33)
      acd121(18)=dotproduct(ninjaE3,spvak4l6)
      acd121(19)=abb121(34)
      acd121(20)=dotproduct(ninjaE3,spvak4l5)
      acd121(21)=abb121(40)
      acd121(22)=dotproduct(ninjaE3,spvak2l5)
      acd121(23)=dotproduct(ninjaE3,spvak4k2)
      acd121(24)=abb121(21)
      acd121(25)=dotproduct(ninjaE3,spvak1k2)
      acd121(26)=abb121(19)
      acd121(27)=abb121(25)
      acd121(28)=abb121(26)
      acd121(29)=abb121(14)
      acd121(30)=abb121(15)
      acd121(31)=abb121(38)
      acd121(32)=abb121(35)
      acd121(33)=abb121(27)
      acd121(34)=abb121(37)
      acd121(35)=dotproduct(k2,ninjaA)
      acd121(36)=dotproduct(l6,ninjaA)
      acd121(37)=dotproduct(k7,ninjaA)
      acd121(38)=dotproduct(ninjaA,spvak2l6)
      acd121(39)=dotproduct(ninjaA,spvak2k7)
      acd121(40)=dotproduct(ninjaA,spvak1k7)
      acd121(41)=dotproduct(ninjaA,spvak1l5)
      acd121(42)=dotproduct(ninjaA,spvak4k7)
      acd121(43)=dotproduct(ninjaA,spvak1l6)
      acd121(44)=dotproduct(ninjaA,spvak4l6)
      acd121(45)=dotproduct(ninjaA,spvak4l5)
      acd121(46)=abb121(18)
      acd121(47)=dotproduct(l5,ninjaE3)
      acd121(48)=abb121(24)
      acd121(49)=dotproduct(ninjaA,spvak2l5)
      acd121(50)=dotproduct(ninjaA,spvak4k2)
      acd121(51)=dotproduct(ninjaA,spvak1k2)
      acd121(52)=abb121(11)
      acd121(53)=abb121(12)
      acd121(54)=abb121(13)
      acd121(55)=abb121(23)
      acd121(56)=abb121(43)
      acd121(57)=abb121(28)
      acd121(58)=abb121(39)
      acd121(59)=acd121(13)*acd121(12)
      acd121(60)=acd121(21)*acd121(20)
      acd121(61)=acd121(10)*acd121(11)
      acd121(62)=acd121(14)*acd121(15)
      acd121(63)=acd121(16)*acd121(17)
      acd121(64)=acd121(18)*acd121(19)
      acd121(59)=acd121(61)+acd121(62)+acd121(63)+acd121(64)+acd121(59)+acd121(&
      &60)
      acd121(60)=acd121(7)*acd121(6)
      acd121(61)=acd121(9)*acd121(8)
      acd121(60)=acd121(60)+acd121(61)+acd121(59)
      acd121(60)=acd121(1)*acd121(60)
      acd121(61)=acd121(27)*acd121(23)
      acd121(62)=acd121(29)*acd121(25)
      acd121(63)=acd121(31)*acd121(12)
      acd121(64)=acd121(32)*acd121(20)
      acd121(61)=acd121(61)+acd121(62)+acd121(63)+acd121(64)
      acd121(62)=acd121(6)*acd121(61)
      acd121(63)=acd121(28)*acd121(23)
      acd121(64)=acd121(30)*acd121(25)
      acd121(65)=acd121(33)*acd121(12)
      acd121(66)=acd121(34)*acd121(20)
      acd121(63)=acd121(64)+acd121(63)+acd121(65)+acd121(66)
      acd121(64)=acd121(8)*acd121(63)
      acd121(65)=acd121(24)*acd121(23)
      acd121(66)=acd121(26)*acd121(25)
      acd121(65)=acd121(65)+acd121(66)
      acd121(66)=-acd121(22)*acd121(65)
      acd121(67)=acd121(5)+acd121(3)
      acd121(68)=acd121(4)*acd121(1)
      acd121(69)=acd121(68)*acd121(67)
      acd121(70)=acd121(2)*acd121(1)**2
      acd121(60)=acd121(70)+acd121(60)+acd121(64)+acd121(62)+acd121(69)+acd121(&
      &66)
      acd121(62)=acd121(4)*acd121(67)
      acd121(64)=acd121(2)*acd121(1)
      acd121(59)=2.0_ki*acd121(64)+acd121(62)+acd121(59)
      acd121(59)=acd121(35)*acd121(59)
      acd121(61)=acd121(38)*acd121(61)
      acd121(62)=acd121(39)*acd121(63)
      acd121(63)=acd121(40)*acd121(11)
      acd121(64)=acd121(42)*acd121(15)
      acd121(66)=acd121(43)*acd121(17)
      acd121(67)=acd121(44)*acd121(19)
      acd121(63)=acd121(46)+acd121(67)+acd121(66)+acd121(64)+acd121(63)
      acd121(63)=acd121(1)*acd121(63)
      acd121(64)=acd121(13)*acd121(1)
      acd121(66)=acd121(31)*acd121(6)
      acd121(67)=acd121(33)*acd121(8)
      acd121(64)=acd121(67)+acd121(64)+acd121(66)
      acd121(64)=acd121(41)*acd121(64)
      acd121(66)=acd121(34)*acd121(8)
      acd121(67)=acd121(21)*acd121(1)
      acd121(69)=acd121(32)*acd121(6)
      acd121(66)=acd121(66)+acd121(67)+acd121(69)
      acd121(66)=acd121(45)*acd121(66)
      acd121(67)=-acd121(24)*acd121(22)
      acd121(69)=acd121(27)*acd121(6)
      acd121(70)=acd121(28)*acd121(8)
      acd121(67)=acd121(70)+acd121(67)+acd121(69)
      acd121(67)=acd121(50)*acd121(67)
      acd121(69)=-acd121(26)*acd121(22)
      acd121(70)=acd121(29)*acd121(6)
      acd121(71)=acd121(30)*acd121(8)
      acd121(69)=acd121(71)+acd121(69)+acd121(70)
      acd121(69)=acd121(51)*acd121(69)
      acd121(70)=acd121(37)+acd121(36)
      acd121(68)=acd121(68)*acd121(70)
      acd121(70)=acd121(35)*acd121(6)
      acd121(71)=acd121(38)*acd121(1)
      acd121(70)=acd121(70)+acd121(71)
      acd121(70)=acd121(7)*acd121(70)
      acd121(71)=acd121(35)*acd121(8)
      acd121(72)=acd121(39)*acd121(1)
      acd121(71)=acd121(71)+acd121(72)
      acd121(71)=acd121(9)*acd121(71)
      acd121(65)=-acd121(49)*acd121(65)
      acd121(72)=acd121(48)*acd121(47)
      acd121(73)=acd121(52)*acd121(22)
      acd121(74)=acd121(53)*acd121(23)
      acd121(75)=acd121(54)*acd121(25)
      acd121(76)=acd121(55)*acd121(6)
      acd121(77)=acd121(56)*acd121(8)
      acd121(78)=acd121(57)*acd121(12)
      acd121(79)=acd121(58)*acd121(20)
      acd121(59)=acd121(79)+acd121(78)+acd121(77)+acd121(76)+acd121(75)+acd121(&
      &74)+acd121(73)+acd121(72)+acd121(65)+acd121(69)+acd121(67)+acd121(66)+ac&
      &d121(64)+acd121(70)+acd121(71)+acd121(59)+acd121(63)+acd121(62)+acd121(6&
      &1)+acd121(68)
      brack(ninjaidxt1mu0)=acd121(60)
      brack(ninjaidxt0mu0)=acd121(59)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d121h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd121h3
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
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d121h3l131
