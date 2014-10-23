module     p0_dbaru_epnebbbarg_d336h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d336h0l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd336h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(37) :: acd336
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd336(1)=dotproduct(k2,ninjaE3)
      acd336(2)=dotproduct(ninjaE3,spvak2k7)
      acd336(3)=abb336(24)
      acd336(4)=dotproduct(l5,ninjaE3)
      acd336(5)=abb336(19)
      acd336(6)=dotproduct(k7,ninjaE3)
      acd336(7)=abb336(17)
      acd336(8)=dotproduct(ninjaE3,spvak1k2)
      acd336(9)=abb336(16)
      acd336(10)=dotproduct(ninjaE3,spvak1k3)
      acd336(11)=abb336(18)
      acd336(12)=dotproduct(ninjaE3,spval5k2)
      acd336(13)=abb336(22)
      acd336(14)=dotproduct(ninjaE3,spvak4k2)
      acd336(15)=abb336(23)
      acd336(16)=dotproduct(ninjaE3,spvak7k2)
      acd336(17)=abb336(25)
      acd336(18)=dotproduct(ninjaE3,spval6k3)
      acd336(19)=abb336(26)
      acd336(20)=dotproduct(ninjaE3,spval6k2)
      acd336(21)=abb336(30)
      acd336(22)=dotproduct(ninjaE3,spval5k7)
      acd336(23)=abb336(33)
      acd336(24)=dotproduct(ninjaE3,spval5k3)
      acd336(25)=abb336(36)
      acd336(26)=acd336(3)*acd336(1)
      acd336(27)=acd336(5)*acd336(4)
      acd336(28)=acd336(7)*acd336(6)
      acd336(29)=acd336(9)*acd336(8)
      acd336(30)=acd336(11)*acd336(10)
      acd336(31)=acd336(13)*acd336(12)
      acd336(32)=acd336(15)*acd336(14)
      acd336(33)=acd336(17)*acd336(16)
      acd336(34)=acd336(19)*acd336(18)
      acd336(35)=acd336(21)*acd336(20)
      acd336(36)=acd336(23)*acd336(22)
      acd336(37)=acd336(25)*acd336(24)
      acd336(26)=acd336(37)+acd336(36)+acd336(35)+acd336(34)+acd336(33)+acd336(&
      &32)+acd336(31)+acd336(30)+acd336(29)+acd336(28)+acd336(26)+acd336(27)
      acd336(26)=acd336(2)*acd336(26)
      brack(ninjaidxt2mu0)=acd336(26)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd336h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(77) :: acd336
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd336(1)=dotproduct(k2,ninjaE3)
      acd336(2)=dotproduct(ninjaE4,spvak2k7)
      acd336(3)=abb336(24)
      acd336(4)=dotproduct(k2,ninjaE4)
      acd336(5)=dotproduct(ninjaE3,spvak2k7)
      acd336(6)=dotproduct(l5,ninjaE3)
      acd336(7)=abb336(19)
      acd336(8)=dotproduct(l5,ninjaE4)
      acd336(9)=dotproduct(k7,ninjaE3)
      acd336(10)=abb336(17)
      acd336(11)=dotproduct(k7,ninjaE4)
      acd336(12)=dotproduct(ninjaE3,spvak1k2)
      acd336(13)=abb336(16)
      acd336(14)=dotproduct(ninjaE4,spvak1k2)
      acd336(15)=dotproduct(ninjaE4,spvak1k3)
      acd336(16)=abb336(18)
      acd336(17)=dotproduct(ninjaE4,spval5k2)
      acd336(18)=abb336(22)
      acd336(19)=dotproduct(ninjaE4,spvak4k2)
      acd336(20)=abb336(23)
      acd336(21)=dotproduct(ninjaE4,spvak7k2)
      acd336(22)=abb336(25)
      acd336(23)=dotproduct(ninjaE4,spval6k3)
      acd336(24)=abb336(26)
      acd336(25)=dotproduct(ninjaE4,spval6k2)
      acd336(26)=abb336(30)
      acd336(27)=dotproduct(ninjaE4,spval5k7)
      acd336(28)=abb336(33)
      acd336(29)=dotproduct(ninjaE4,spval5k3)
      acd336(30)=abb336(36)
      acd336(31)=dotproduct(ninjaE3,spvak1k3)
      acd336(32)=dotproduct(ninjaE3,spval5k2)
      acd336(33)=dotproduct(ninjaE3,spvak4k2)
      acd336(34)=dotproduct(ninjaE3,spvak7k2)
      acd336(35)=dotproduct(ninjaE3,spval6k3)
      acd336(36)=dotproduct(ninjaE3,spval6k2)
      acd336(37)=dotproduct(ninjaE3,spval5k7)
      acd336(38)=dotproduct(ninjaE3,spval5k3)
      acd336(39)=abb336(15)
      acd336(40)=dotproduct(k2,ninjaA)
      acd336(41)=dotproduct(ninjaA,spvak2k7)
      acd336(42)=abb336(14)
      acd336(43)=dotproduct(l5,ninjaA)
      acd336(44)=abb336(27)
      acd336(45)=dotproduct(k7,ninjaA)
      acd336(46)=dotproduct(ninjaA,ninjaE3)
      acd336(47)=dotproduct(ninjaA,spvak1k2)
      acd336(48)=dotproduct(ninjaA,spvak1k3)
      acd336(49)=dotproduct(ninjaA,spval5k2)
      acd336(50)=dotproduct(ninjaA,spvak4k2)
      acd336(51)=dotproduct(ninjaA,spvak7k2)
      acd336(52)=dotproduct(ninjaA,spval6k3)
      acd336(53)=dotproduct(ninjaA,spval6k2)
      acd336(54)=dotproduct(ninjaA,spval5k7)
      acd336(55)=dotproduct(ninjaA,spval5k3)
      acd336(56)=abb336(12)
      acd336(57)=abb336(13)
      acd336(58)=abb336(32)
      acd336(59)=abb336(39)
      acd336(60)=abb336(42)
      acd336(61)=abb336(48)
      acd336(62)=dotproduct(ninjaA,ninjaA)
      acd336(63)=abb336(20)
      acd336(64)=acd336(30)*acd336(29)
      acd336(65)=acd336(28)*acd336(27)
      acd336(66)=acd336(26)*acd336(25)
      acd336(67)=acd336(24)*acd336(23)
      acd336(68)=acd336(22)*acd336(21)
      acd336(69)=acd336(20)*acd336(19)
      acd336(70)=acd336(18)*acd336(17)
      acd336(71)=acd336(16)*acd336(15)
      acd336(72)=acd336(13)*acd336(14)
      acd336(73)=acd336(10)*acd336(11)
      acd336(74)=acd336(7)*acd336(8)
      acd336(75)=acd336(3)*acd336(4)
      acd336(64)=acd336(69)+acd336(65)+acd336(66)+acd336(67)+acd336(68)+acd336(&
      &72)+acd336(73)+acd336(74)+acd336(75)+acd336(64)+acd336(70)+acd336(71)
      acd336(64)=acd336(64)*acd336(5)
      acd336(65)=acd336(30)*acd336(38)
      acd336(66)=acd336(28)*acd336(37)
      acd336(67)=acd336(26)*acd336(36)
      acd336(68)=acd336(24)*acd336(35)
      acd336(69)=acd336(22)*acd336(34)
      acd336(70)=acd336(20)*acd336(33)
      acd336(71)=acd336(18)*acd336(32)
      acd336(72)=acd336(16)*acd336(31)
      acd336(73)=acd336(13)*acd336(12)
      acd336(74)=acd336(10)*acd336(9)
      acd336(75)=acd336(7)*acd336(6)
      acd336(76)=acd336(3)*acd336(1)
      acd336(65)=acd336(72)+acd336(71)+acd336(70)+acd336(69)+acd336(66)+acd336(&
      &65)+acd336(67)+acd336(68)+acd336(73)+acd336(74)+acd336(75)+acd336(76)
      acd336(66)=acd336(65)*acd336(2)
      acd336(64)=acd336(64)+acd336(66)+acd336(39)
      acd336(65)=acd336(41)*acd336(65)
      acd336(66)=acd336(30)*acd336(55)
      acd336(67)=acd336(28)*acd336(54)
      acd336(68)=acd336(26)*acd336(53)
      acd336(69)=acd336(24)*acd336(52)
      acd336(70)=acd336(22)*acd336(51)
      acd336(71)=acd336(20)*acd336(50)
      acd336(72)=acd336(18)*acd336(49)
      acd336(73)=acd336(16)*acd336(48)
      acd336(74)=acd336(13)*acd336(47)
      acd336(75)=acd336(10)*acd336(45)
      acd336(76)=acd336(7)*acd336(43)
      acd336(77)=acd336(3)*acd336(40)
      acd336(66)=acd336(70)+acd336(66)+acd336(67)+acd336(68)+acd336(69)+acd336(&
      &75)+acd336(76)+acd336(77)+acd336(57)+acd336(71)+acd336(72)+acd336(73)+ac&
      &d336(74)
      acd336(67)=acd336(5)*acd336(66)
      acd336(68)=-acd336(6)-acd336(9)
      acd336(68)=acd336(44)*acd336(68)
      acd336(69)=acd336(39)*acd336(46)
      acd336(70)=acd336(36)*acd336(61)
      acd336(71)=acd336(35)*acd336(60)
      acd336(72)=acd336(33)*acd336(59)
      acd336(73)=acd336(31)*acd336(58)
      acd336(74)=acd336(12)*acd336(56)
      acd336(75)=acd336(1)*acd336(42)
      acd336(65)=acd336(67)+acd336(65)+acd336(75)+acd336(74)+acd336(73)+acd336(&
      &72)+acd336(71)+2.0_ki*acd336(69)+acd336(70)+acd336(68)
      acd336(67)=ninjaP*acd336(64)
      acd336(66)=acd336(41)*acd336(66)
      acd336(68)=acd336(53)*acd336(61)
      acd336(69)=acd336(52)*acd336(60)
      acd336(70)=acd336(50)*acd336(59)
      acd336(71)=acd336(48)*acd336(58)
      acd336(72)=acd336(47)*acd336(56)
      acd336(73)=acd336(40)*acd336(42)
      acd336(74)=-acd336(45)-acd336(43)
      acd336(74)=acd336(44)*acd336(74)
      acd336(75)=acd336(39)*acd336(62)
      acd336(66)=acd336(66)+acd336(75)+acd336(74)+acd336(73)+acd336(72)+acd336(&
      &71)+acd336(70)+acd336(69)+acd336(63)+acd336(68)+acd336(67)
      brack(ninjaidxt1mu0)=acd336(65)
      brack(ninjaidxt0mu0)=acd336(66)
      brack(ninjaidxt0mu2)=acd336(64)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d336h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd336h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6+k5
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
end module     p0_dbaru_epnebbbarg_d336h0l131
