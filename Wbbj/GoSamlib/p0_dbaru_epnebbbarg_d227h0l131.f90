module     p0_dbaru_epnebbbarg_d227h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d227h0l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd227h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(30) :: acd227
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd227(1)=dotproduct(k2,ninjaE3)
      acd227(2)=dotproduct(ninjaE3,spvak2k7)
      acd227(3)=abb227(26)
      acd227(4)=dotproduct(k3,ninjaE3)
      acd227(5)=dotproduct(k4,ninjaE3)
      acd227(6)=dotproduct(ninjaE3,spvak1k2)
      acd227(7)=abb227(13)
      acd227(8)=dotproduct(ninjaE3,spval6k3)
      acd227(9)=abb227(15)
      acd227(10)=dotproduct(ninjaE3,spval6k2)
      acd227(11)=abb227(16)
      acd227(12)=dotproduct(ninjaE3,spvak4k2)
      acd227(13)=abb227(17)
      acd227(14)=dotproduct(ninjaE3,spvak1k3)
      acd227(15)=abb227(18)
      acd227(16)=dotproduct(ninjaE3,spval5k2)
      acd227(17)=abb227(20)
      acd227(18)=dotproduct(ninjaE3,spvak4k3)
      acd227(19)=abb227(22)
      acd227(20)=dotproduct(ninjaE3,spval5k3)
      acd227(21)=abb227(27)
      acd227(22)=acd227(5)-acd227(1)+acd227(4)
      acd227(22)=acd227(22)*acd227(3)
      acd227(23)=acd227(7)*acd227(6)
      acd227(24)=acd227(9)*acd227(8)
      acd227(25)=acd227(11)*acd227(10)
      acd227(26)=acd227(13)*acd227(12)
      acd227(27)=acd227(15)*acd227(14)
      acd227(28)=acd227(17)*acd227(16)
      acd227(29)=acd227(19)*acd227(18)
      acd227(30)=acd227(21)*acd227(20)
      acd227(22)=acd227(22)+acd227(30)+acd227(29)+acd227(28)+acd227(27)+acd227(&
      &26)+acd227(25)+acd227(24)+acd227(23)
      acd227(22)=acd227(2)*acd227(22)
      brack(ninjaidxt2mu0)=acd227(22)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd227h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(78) :: acd227
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd227(1)=dotproduct(k2,ninjaE3)
      acd227(2)=dotproduct(ninjaE4,spvak2k7)
      acd227(3)=abb227(26)
      acd227(4)=dotproduct(k2,ninjaE4)
      acd227(5)=dotproduct(ninjaE3,spvak2k7)
      acd227(6)=dotproduct(k3,ninjaE3)
      acd227(7)=dotproduct(k3,ninjaE4)
      acd227(8)=dotproduct(k4,ninjaE3)
      acd227(9)=dotproduct(k4,ninjaE4)
      acd227(10)=dotproduct(ninjaE4,spvak1k2)
      acd227(11)=abb227(13)
      acd227(12)=dotproduct(ninjaE4,spval6k3)
      acd227(13)=abb227(15)
      acd227(14)=dotproduct(ninjaE4,spval6k2)
      acd227(15)=abb227(16)
      acd227(16)=dotproduct(ninjaE4,spvak4k2)
      acd227(17)=abb227(17)
      acd227(18)=dotproduct(ninjaE4,spvak1k3)
      acd227(19)=abb227(18)
      acd227(20)=dotproduct(ninjaE4,spval5k2)
      acd227(21)=abb227(20)
      acd227(22)=dotproduct(ninjaE4,spvak4k3)
      acd227(23)=abb227(22)
      acd227(24)=dotproduct(ninjaE4,spval5k3)
      acd227(25)=abb227(27)
      acd227(26)=dotproduct(ninjaE3,spvak1k2)
      acd227(27)=dotproduct(ninjaE3,spval6k3)
      acd227(28)=dotproduct(ninjaE3,spval6k2)
      acd227(29)=dotproduct(ninjaE3,spvak4k2)
      acd227(30)=dotproduct(ninjaE3,spvak1k3)
      acd227(31)=dotproduct(ninjaE3,spval5k2)
      acd227(32)=dotproduct(ninjaE3,spvak4k3)
      acd227(33)=dotproduct(ninjaE3,spval5k3)
      acd227(34)=abb227(12)
      acd227(35)=dotproduct(k2,ninjaA)
      acd227(36)=dotproduct(ninjaA,spvak2k7)
      acd227(37)=abb227(29)
      acd227(38)=dotproduct(k3,ninjaA)
      acd227(39)=dotproduct(k4,ninjaA)
      acd227(40)=dotproduct(k7,ninjaE3)
      acd227(41)=abb227(40)
      acd227(42)=dotproduct(ninjaA,ninjaE3)
      acd227(43)=dotproduct(ninjaA,spvak1k2)
      acd227(44)=dotproduct(ninjaA,spval6k3)
      acd227(45)=dotproduct(ninjaA,spval6k2)
      acd227(46)=dotproduct(ninjaA,spvak4k2)
      acd227(47)=dotproduct(ninjaA,spvak1k3)
      acd227(48)=dotproduct(ninjaA,spval5k2)
      acd227(49)=dotproduct(ninjaA,spvak4k3)
      acd227(50)=dotproduct(ninjaA,spval5k3)
      acd227(51)=dotproduct(ninjaE3,spvak1k7)
      acd227(52)=abb227(10)
      acd227(53)=abb227(11)
      acd227(54)=abb227(49)
      acd227(55)=abb227(28)
      acd227(56)=dotproduct(ninjaE3,spval5k7)
      acd227(57)=abb227(35)
      acd227(58)=dotproduct(ninjaE3,spval6k7)
      acd227(59)=abb227(43)
      acd227(60)=dotproduct(k7,ninjaA)
      acd227(61)=dotproduct(ninjaA,ninjaA)
      acd227(62)=dotproduct(ninjaA,spvak1k7)
      acd227(63)=dotproduct(ninjaA,spval5k7)
      acd227(64)=dotproduct(ninjaA,spval6k7)
      acd227(65)=abb227(14)
      acd227(66)=-acd227(9)+acd227(4)-acd227(7)
      acd227(66)=acd227(66)*acd227(3)
      acd227(67)=acd227(25)*acd227(24)
      acd227(68)=acd227(23)*acd227(22)
      acd227(69)=acd227(21)*acd227(20)
      acd227(70)=acd227(19)*acd227(18)
      acd227(71)=acd227(17)*acd227(16)
      acd227(72)=acd227(15)*acd227(14)
      acd227(73)=acd227(13)*acd227(12)
      acd227(74)=acd227(11)*acd227(10)
      acd227(66)=acd227(70)+acd227(71)+acd227(72)+acd227(73)-acd227(66)+acd227(&
      &67)+acd227(68)+acd227(69)+acd227(74)
      acd227(66)=acd227(66)*acd227(5)
      acd227(67)=-acd227(8)+acd227(1)-acd227(6)
      acd227(68)=acd227(67)*acd227(3)
      acd227(69)=acd227(25)*acd227(33)
      acd227(70)=acd227(23)*acd227(32)
      acd227(71)=acd227(21)*acd227(31)
      acd227(72)=acd227(19)*acd227(30)
      acd227(73)=acd227(17)*acd227(29)
      acd227(74)=acd227(15)*acd227(28)
      acd227(75)=acd227(13)*acd227(27)
      acd227(76)=acd227(11)*acd227(26)
      acd227(68)=acd227(72)-acd227(68)+acd227(69)+acd227(70)+acd227(71)+acd227(&
      &73)+acd227(74)+acd227(75)+acd227(76)
      acd227(69)=acd227(68)*acd227(2)
      acd227(66)=acd227(66)+acd227(69)+acd227(34)
      acd227(68)=acd227(36)*acd227(68)
      acd227(69)=acd227(25)*acd227(50)
      acd227(70)=acd227(23)*acd227(49)
      acd227(71)=acd227(21)*acd227(48)
      acd227(72)=acd227(19)*acd227(47)
      acd227(73)=-acd227(39)+acd227(35)-acd227(38)
      acd227(74)=acd227(73)*acd227(3)
      acd227(75)=acd227(17)*acd227(46)
      acd227(76)=acd227(15)*acd227(45)
      acd227(77)=acd227(13)*acd227(44)
      acd227(78)=acd227(11)*acd227(43)
      acd227(69)=acd227(71)+acd227(72)-acd227(74)+acd227(53)+acd227(75)+acd227(&
      &76)+acd227(77)+acd227(78)+acd227(69)+acd227(70)
      acd227(70)=acd227(5)*acd227(69)
      acd227(71)=acd227(59)*acd227(58)
      acd227(72)=acd227(57)*acd227(56)
      acd227(74)=acd227(52)*acd227(51)
      acd227(75)=acd227(41)*acd227(40)
      acd227(76)=acd227(34)*acd227(42)
      acd227(77)=acd227(32)*acd227(55)
      acd227(78)=acd227(29)*acd227(54)
      acd227(67)=acd227(37)*acd227(67)
      acd227(67)=acd227(70)+acd227(68)+acd227(67)+acd227(78)+acd227(77)+2.0_ki*&
      &acd227(76)+acd227(75)+acd227(74)+acd227(71)+acd227(72)
      acd227(68)=ninjaP*acd227(66)
      acd227(69)=acd227(36)*acd227(69)
      acd227(70)=acd227(59)*acd227(64)
      acd227(71)=acd227(57)*acd227(63)
      acd227(72)=acd227(52)*acd227(62)
      acd227(74)=acd227(41)*acd227(60)
      acd227(75)=acd227(49)*acd227(55)
      acd227(76)=acd227(46)*acd227(54)
      acd227(77)=acd227(34)*acd227(61)
      acd227(73)=acd227(37)*acd227(73)
      acd227(68)=acd227(69)+acd227(73)+acd227(77)+acd227(76)+acd227(75)+acd227(&
      &74)+acd227(72)+acd227(71)+acd227(65)+acd227(70)+acd227(68)
      brack(ninjaidxt1mu0)=acd227(67)
      brack(ninjaidxt0mu0)=acd227(68)
      brack(ninjaidxt0mu2)=acd227(66)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d227h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd227h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
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
end module     p0_dbaru_epnebbbarg_d227h0l131
