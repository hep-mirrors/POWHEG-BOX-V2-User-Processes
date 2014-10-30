module     p0_dbaru_epnebbbarg_d115h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d115h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd115h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd115
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd115h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(75) :: acd115
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd115(1)=dotproduct(ninjaE3,spvak7k2)
      acd115(2)=abb115(18)
      acd115(3)=dotproduct(ninjaE3,spval6k2)
      acd115(4)=abb115(43)
      acd115(5)=dotproduct(ninjaE3,spval5k2)
      acd115(6)=abb115(17)
      acd115(7)=dotproduct(k1,ninjaE3)
      acd115(8)=abb115(34)
      acd115(9)=dotproduct(k2,ninjaE3)
      acd115(10)=abb115(31)
      acd115(11)=abb115(62)
      acd115(12)=abb115(20)
      acd115(13)=dotproduct(k3,ninjaE3)
      acd115(14)=abb115(51)
      acd115(15)=dotproduct(k4,ninjaE3)
      acd115(16)=dotproduct(l5,ninjaE3)
      acd115(17)=dotproduct(l6,ninjaE3)
      acd115(18)=dotproduct(k7,ninjaE3)
      acd115(19)=dotproduct(ninjaA,ninjaE3)
      acd115(20)=dotproduct(ninjaE3,spvak4k2)
      acd115(21)=abb115(12)
      acd115(22)=dotproduct(ninjaE3,spvak1k2)
      acd115(23)=abb115(15)
      acd115(24)=dotproduct(ninjaE3,spvak4k3)
      acd115(25)=abb115(21)
      acd115(26)=dotproduct(ninjaE3,spvak1k3)
      acd115(27)=abb115(26)
      acd115(28)=abb115(24)
      acd115(29)=abb115(25)
      acd115(30)=abb115(19)
      acd115(31)=abb115(29)
      acd115(32)=dotproduct(k1,ninjaA)
      acd115(33)=dotproduct(ninjaA,spvak7k2)
      acd115(34)=abb115(35)
      acd115(35)=dotproduct(k2,ninjaA)
      acd115(36)=dotproduct(ninjaA,spval6k2)
      acd115(37)=dotproduct(ninjaA,spval5k2)
      acd115(38)=abb115(59)
      acd115(39)=dotproduct(k3,ninjaA)
      acd115(40)=abb115(64)
      acd115(41)=dotproduct(k4,ninjaA)
      acd115(42)=dotproduct(l5,ninjaA)
      acd115(43)=abb115(48)
      acd115(44)=dotproduct(l6,ninjaA)
      acd115(45)=dotproduct(k7,ninjaA)
      acd115(46)=abb115(41)
      acd115(47)=dotproduct(ninjaA,ninjaA)
      acd115(48)=abb115(16)
      acd115(49)=dotproduct(ninjaA,spvak4k2)
      acd115(50)=dotproduct(ninjaA,spvak1k2)
      acd115(51)=dotproduct(ninjaA,spvak4k3)
      acd115(52)=dotproduct(ninjaA,spvak1k3)
      acd115(53)=abb115(10)
      acd115(54)=abb115(11)
      acd115(55)=abb115(22)
      acd115(56)=abb115(14)
      acd115(57)=abb115(37)
      acd115(58)=-acd115(5)*acd115(6)
      acd115(59)=-acd115(3)*acd115(4)
      acd115(60)=acd115(1)*acd115(2)
      acd115(58)=acd115(60)+acd115(58)+acd115(59)
      acd115(59)=acd115(16)+acd115(17)
      acd115(60)=2.0_ki*acd115(19)
      acd115(61)=acd115(59)+acd115(60)
      acd115(61)=acd115(61)*acd115(2)
      acd115(62)=acd115(13)+acd115(15)
      acd115(63)=acd115(14)*acd115(62)
      acd115(64)=acd115(27)*acd115(26)
      acd115(65)=acd115(23)*acd115(22)
      acd115(66)=acd115(7)*acd115(8)
      acd115(67)=acd115(24)*acd115(25)
      acd115(68)=acd115(20)*acd115(21)
      acd115(69)=acd115(9)*acd115(10)
      acd115(61)=acd115(61)+acd115(67)+acd115(64)+acd115(65)+acd115(66)+acd115(&
      &68)+acd115(69)+acd115(63)
      acd115(63)=acd115(1)*acd115(61)
      acd115(64)=acd115(60)-acd115(18)
      acd115(65)=acd115(64)*acd115(6)
      acd115(66)=acd115(62)-acd115(9)
      acd115(67)=acd115(66)*acd115(12)
      acd115(65)=acd115(65)-acd115(67)
      acd115(67)=acd115(24)*acd115(31)
      acd115(68)=acd115(20)*acd115(30)
      acd115(67)=acd115(67)+acd115(68)-acd115(65)
      acd115(67)=acd115(5)*acd115(67)
      acd115(64)=acd115(64)*acd115(4)
      acd115(66)=acd115(66)*acd115(11)
      acd115(64)=acd115(64)-acd115(66)
      acd115(66)=acd115(24)*acd115(29)
      acd115(68)=acd115(20)*acd115(28)
      acd115(66)=acd115(66)+acd115(68)-acd115(64)
      acd115(66)=acd115(3)*acd115(66)
      acd115(63)=acd115(63)+acd115(67)+acd115(66)
      acd115(61)=acd115(33)*acd115(61)
      acd115(66)=acd115(27)*acd115(52)
      acd115(67)=acd115(25)*acd115(51)
      acd115(68)=acd115(23)*acd115(50)
      acd115(69)=acd115(21)*acd115(49)
      acd115(70)=acd115(10)*acd115(35)
      acd115(71)=acd115(8)*acd115(32)
      acd115(72)=acd115(39)+acd115(41)
      acd115(73)=acd115(14)*acd115(72)
      acd115(74)=acd115(47)+ninjaP
      acd115(75)=acd115(44)+acd115(42)+acd115(74)
      acd115(75)=acd115(2)*acd115(75)
      acd115(66)=acd115(75)+acd115(73)+acd115(71)+acd115(70)+acd115(69)+acd115(&
      &68)+acd115(67)+acd115(53)+acd115(66)
      acd115(66)=acd115(1)*acd115(66)
      acd115(67)=acd115(31)*acd115(51)
      acd115(68)=acd115(30)*acd115(49)
      acd115(69)=acd115(74)-acd115(45)
      acd115(70)=-acd115(6)*acd115(69)
      acd115(71)=acd115(72)-acd115(35)
      acd115(72)=acd115(12)*acd115(71)
      acd115(67)=acd115(72)+acd115(70)+acd115(68)+acd115(56)+acd115(67)
      acd115(67)=acd115(5)*acd115(67)
      acd115(68)=acd115(29)*acd115(51)
      acd115(70)=acd115(28)*acd115(49)
      acd115(69)=-acd115(4)*acd115(69)
      acd115(71)=acd115(11)*acd115(71)
      acd115(68)=acd115(71)+acd115(69)+acd115(70)+acd115(54)+acd115(68)
      acd115(68)=acd115(3)*acd115(68)
      acd115(65)=-acd115(37)*acd115(65)
      acd115(64)=-acd115(36)*acd115(64)
      acd115(69)=acd115(37)*acd115(31)
      acd115(70)=acd115(36)*acd115(29)
      acd115(69)=acd115(70)+acd115(57)+acd115(69)
      acd115(69)=acd115(24)*acd115(69)
      acd115(70)=acd115(37)*acd115(30)
      acd115(71)=acd115(36)*acd115(28)
      acd115(70)=acd115(71)+acd115(55)+acd115(70)
      acd115(70)=acd115(20)*acd115(70)
      acd115(59)=-acd115(43)*acd115(59)
      acd115(62)=acd115(40)*acd115(62)
      acd115(71)=acd115(7)*acd115(34)
      acd115(72)=acd115(18)*acd115(46)
      acd115(60)=acd115(48)*acd115(60)
      acd115(73)=acd115(9)*acd115(38)
      acd115(59)=acd115(66)+acd115(68)+acd115(67)+acd115(73)+acd115(60)+acd115(&
      &70)+acd115(69)+acd115(72)+acd115(71)+acd115(61)+acd115(62)+acd115(59)+ac&
      &d115(64)+acd115(65)
      brack(ninjaidxt1mu0)=acd115(63)
      brack(ninjaidxt0mu0)=acd115(59)
      brack(ninjaidxt0mu2)=acd115(58)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d115h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd115h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k7-k4
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d115h4l131