module     p0_dbaru_epnebbbarg_d17h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d17h0l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd17h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd17
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd17(1)=dotproduct(k7,ninjaE3)
      acd17(2)=dotproduct(ninjaE3,spvak4k3)
      acd17(3)=dotproduct(ninjaE3,spval6k2)
      acd17(4)=abb17(50)
      acd17(5)=dotproduct(ninjaE3,spval5k2)
      acd17(6)=abb17(44)
      acd17(7)=dotproduct(ninjaE3,spvak2k7)
      acd17(8)=abb17(14)
      acd17(9)=abb17(19)
      acd17(10)=dotproduct(ninjaE3,spvak1k7)
      acd17(11)=abb17(22)
      acd17(12)=abb17(23)
      acd17(13)=acd17(6)*acd17(1)
      acd17(14)=acd17(9)*acd17(7)
      acd17(15)=acd17(12)*acd17(10)
      acd17(13)=acd17(15)+acd17(14)+acd17(13)
      acd17(13)=acd17(13)*acd17(5)
      acd17(14)=acd17(4)*acd17(1)
      acd17(15)=acd17(8)*acd17(7)
      acd17(16)=acd17(11)*acd17(10)
      acd17(14)=acd17(16)+acd17(15)+acd17(14)
      acd17(14)=acd17(14)*acd17(3)
      acd17(13)=acd17(14)+acd17(13)
      acd17(13)=acd17(2)*acd17(13)
      brack(ninjaidxt2mu0)=acd17(13)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd17h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(91) :: acd17
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd17(1)=dotproduct(k7,ninjaE3)
      acd17(2)=dotproduct(ninjaE3,spvak4k3)
      acd17(3)=dotproduct(ninjaE4,spval6k2)
      acd17(4)=abb17(50)
      acd17(5)=dotproduct(ninjaE4,spval5k2)
      acd17(6)=abb17(44)
      acd17(7)=dotproduct(ninjaE3,spval6k2)
      acd17(8)=dotproduct(ninjaE4,spvak4k3)
      acd17(9)=dotproduct(ninjaE3,spval5k2)
      acd17(10)=abb17(36)
      acd17(11)=dotproduct(k7,ninjaE4)
      acd17(12)=dotproduct(ninjaE3,spvak2k7)
      acd17(13)=abb17(14)
      acd17(14)=abb17(19)
      acd17(15)=abb17(11)
      acd17(16)=dotproduct(ninjaE4,spvak2k7)
      acd17(17)=dotproduct(ninjaE4,spvak1k7)
      acd17(18)=abb17(22)
      acd17(19)=abb17(23)
      acd17(20)=dotproduct(ninjaE3,spvak1k7)
      acd17(21)=abb17(38)
      acd17(22)=abb17(73)
      acd17(23)=abb17(48)
      acd17(24)=dotproduct(k1,ninjaE3)
      acd17(25)=abb17(39)
      acd17(26)=dotproduct(k2,ninjaE3)
      acd17(27)=abb17(31)
      acd17(28)=dotproduct(k3,ninjaE3)
      acd17(29)=abb17(70)
      acd17(30)=abb17(17)
      acd17(31)=abb17(71)
      acd17(32)=abb17(51)
      acd17(33)=dotproduct(k4,ninjaE3)
      acd17(34)=dotproduct(l5,ninjaE3)
      acd17(35)=dotproduct(l6,ninjaE3)
      acd17(36)=dotproduct(k7,ninjaA)
      acd17(37)=dotproduct(ninjaA,ninjaE3)
      acd17(38)=dotproduct(ninjaA,spvak4k3)
      acd17(39)=dotproduct(ninjaA,spval6k2)
      acd17(40)=dotproduct(ninjaA,spval5k2)
      acd17(41)=abb17(37)
      acd17(42)=dotproduct(ninjaA,spvak2k7)
      acd17(43)=dotproduct(ninjaA,spvak1k7)
      acd17(44)=abb17(12)
      acd17(45)=abb17(34)
      acd17(46)=abb17(27)
      acd17(47)=abb17(20)
      acd17(48)=dotproduct(ninjaE3,spvak1k3)
      acd17(49)=abb17(13)
      acd17(50)=abb17(18)
      acd17(51)=dotproduct(k1,ninjaA)
      acd17(52)=abb17(43)
      acd17(53)=dotproduct(k2,ninjaA)
      acd17(54)=abb17(16)
      acd17(55)=dotproduct(k3,ninjaA)
      acd17(56)=abb17(64)
      acd17(57)=dotproduct(k4,ninjaA)
      acd17(58)=dotproduct(l5,ninjaA)
      acd17(59)=dotproduct(l6,ninjaA)
      acd17(60)=dotproduct(ninjaA,ninjaA)
      acd17(61)=abb17(26)
      acd17(62)=abb17(21)
      acd17(63)=dotproduct(ninjaA,spvak1k3)
      acd17(64)=abb17(10)
      acd17(65)=abb17(15)
      acd17(66)=abb17(24)
      acd17(67)=abb17(41)
      acd17(68)=abb17(49)
      acd17(69)=acd17(18)*acd17(17)
      acd17(70)=acd17(13)*acd17(16)
      acd17(71)=acd17(4)*acd17(11)
      acd17(69)=acd17(71)+acd17(69)+acd17(70)
      acd17(69)=acd17(69)*acd17(7)
      acd17(70)=acd17(19)*acd17(17)
      acd17(71)=acd17(14)*acd17(16)
      acd17(72)=acd17(6)*acd17(11)
      acd17(70)=acd17(72)+acd17(70)+acd17(71)
      acd17(70)=acd17(70)*acd17(9)
      acd17(71)=acd17(14)*acd17(5)
      acd17(72)=acd17(13)*acd17(3)
      acd17(71)=acd17(71)+acd17(72)
      acd17(71)=acd17(71)*acd17(12)
      acd17(72)=acd17(6)*acd17(5)
      acd17(73)=acd17(4)*acd17(3)
      acd17(72)=acd17(72)+acd17(73)
      acd17(72)=acd17(72)*acd17(1)
      acd17(73)=acd17(19)*acd17(5)
      acd17(74)=acd17(18)*acd17(3)
      acd17(73)=acd17(73)+acd17(74)
      acd17(73)=acd17(73)*acd17(20)
      acd17(69)=acd17(70)+acd17(69)+acd17(73)+acd17(21)+acd17(71)+acd17(72)
      acd17(70)=acd17(2)*acd17(69)
      acd17(71)=acd17(1)*acd17(8)
      acd17(72)=acd17(71)*acd17(6)
      acd17(73)=acd17(12)*acd17(8)
      acd17(74)=acd17(73)*acd17(14)
      acd17(75)=acd17(20)*acd17(8)
      acd17(76)=acd17(75)*acd17(19)
      acd17(72)=acd17(72)+acd17(74)+acd17(76)+acd17(23)
      acd17(74)=acd17(9)*acd17(72)
      acd17(71)=acd17(71)*acd17(4)
      acd17(73)=acd17(73)*acd17(13)
      acd17(75)=acd17(75)*acd17(18)
      acd17(71)=acd17(71)+acd17(73)+acd17(75)+acd17(22)
      acd17(73)=acd17(7)*acd17(71)
      acd17(75)=acd17(12)*acd17(15)
      acd17(76)=acd17(1)*acd17(10)
      acd17(70)=acd17(70)+acd17(73)+acd17(74)+acd17(75)+acd17(76)
      acd17(73)=acd17(40)*acd17(6)
      acd17(74)=acd17(39)*acd17(4)
      acd17(73)=acd17(41)+acd17(73)+acd17(74)
      acd17(73)=acd17(73)*acd17(1)
      acd17(74)=acd17(40)*acd17(14)
      acd17(75)=acd17(39)*acd17(13)
      acd17(74)=acd17(44)+acd17(74)+acd17(75)
      acd17(74)=acd17(74)*acd17(12)
      acd17(75)=acd17(40)*acd17(19)
      acd17(76)=acd17(39)*acd17(18)
      acd17(75)=acd17(47)+acd17(75)+acd17(76)
      acd17(75)=acd17(75)*acd17(20)
      acd17(76)=acd17(26)*acd17(27)
      acd17(77)=2.0_ki*acd17(37)
      acd17(78)=acd17(77)*acd17(21)
      acd17(79)=acd17(35)+acd17(24)+acd17(34)
      acd17(80)=acd17(79)*acd17(25)
      acd17(73)=acd17(73)+acd17(74)+acd17(75)+acd17(76)+acd17(78)+acd17(80)
      acd17(74)=acd17(19)*acd17(43)
      acd17(75)=acd17(14)*acd17(42)
      acd17(76)=acd17(6)*acd17(36)
      acd17(74)=acd17(46)+acd17(76)+acd17(74)+acd17(75)
      acd17(75)=acd17(9)*acd17(74)
      acd17(76)=acd17(18)*acd17(43)
      acd17(78)=acd17(13)*acd17(42)
      acd17(80)=acd17(4)*acd17(36)
      acd17(76)=acd17(45)+acd17(80)+acd17(76)+acd17(78)
      acd17(78)=acd17(7)*acd17(76)
      acd17(75)=acd17(78)+acd17(75)+acd17(73)
      acd17(75)=acd17(2)*acd17(75)
      acd17(78)=acd17(48)*acd17(50)
      acd17(80)=acd17(77)*acd17(23)
      acd17(81)=acd17(28)+acd17(33)
      acd17(82)=acd17(81)*acd17(32)
      acd17(78)=acd17(82)+acd17(78)+acd17(80)
      acd17(80)=acd17(1)*acd17(6)
      acd17(82)=acd17(20)*acd17(19)
      acd17(83)=acd17(12)*acd17(14)
      acd17(80)=acd17(80)+acd17(82)+acd17(83)
      acd17(80)=acd17(38)*acd17(80)
      acd17(80)=acd17(80)+acd17(78)
      acd17(80)=acd17(9)*acd17(80)
      acd17(82)=acd17(48)*acd17(49)
      acd17(83)=acd17(77)*acd17(22)
      acd17(84)=acd17(81)*acd17(31)
      acd17(82)=acd17(82)+acd17(83)+acd17(84)
      acd17(83)=acd17(1)*acd17(4)
      acd17(84)=acd17(20)*acd17(18)
      acd17(85)=acd17(12)*acd17(13)
      acd17(83)=acd17(83)+acd17(84)+acd17(85)
      acd17(83)=acd17(38)*acd17(83)
      acd17(83)=acd17(83)+acd17(82)
      acd17(83)=acd17(7)*acd17(83)
      acd17(84)=acd17(81)*acd17(30)
      acd17(85)=acd17(15)*acd17(77)
      acd17(85)=acd17(85)-acd17(84)
      acd17(85)=acd17(12)*acd17(85)
      acd17(86)=acd17(81)*acd17(29)
      acd17(87)=acd17(10)*acd17(77)
      acd17(87)=acd17(87)-acd17(86)
      acd17(87)=acd17(1)*acd17(87)
      acd17(75)=acd17(75)+acd17(83)+acd17(80)+acd17(85)+acd17(87)
      acd17(69)=ninjaP*acd17(69)
      acd17(80)=acd17(40)*acd17(74)
      acd17(83)=acd17(39)*acd17(76)
      acd17(85)=acd17(27)*acd17(53)
      acd17(87)=acd17(21)*acd17(60)
      acd17(88)=acd17(43)*acd17(47)
      acd17(89)=acd17(51)+acd17(59)+acd17(58)
      acd17(89)=acd17(25)*acd17(89)
      acd17(90)=acd17(42)*acd17(44)
      acd17(91)=acd17(36)*acd17(41)
      acd17(69)=acd17(83)+acd17(80)+acd17(91)+acd17(90)+acd17(89)+acd17(88)+acd&
      &17(87)+acd17(65)+acd17(85)+acd17(69)
      acd17(69)=acd17(2)*acd17(69)
      acd17(73)=acd17(38)*acd17(73)
      acd17(72)=ninjaP*acd17(72)
      acd17(74)=acd17(38)*acd17(74)
      acd17(80)=acd17(50)*acd17(63)
      acd17(83)=acd17(23)*acd17(60)
      acd17(85)=acd17(55)+acd17(57)
      acd17(87)=acd17(32)*acd17(85)
      acd17(72)=acd17(74)+acd17(87)+acd17(83)+acd17(68)+acd17(80)+acd17(72)
      acd17(72)=acd17(9)*acd17(72)
      acd17(71)=ninjaP*acd17(71)
      acd17(74)=acd17(38)*acd17(76)
      acd17(76)=acd17(49)*acd17(63)
      acd17(80)=acd17(22)*acd17(60)
      acd17(83)=acd17(31)*acd17(85)
      acd17(71)=acd17(74)+acd17(83)+acd17(80)+acd17(67)+acd17(76)+acd17(71)
      acd17(71)=acd17(7)*acd17(71)
      acd17(74)=acd17(40)*acd17(78)
      acd17(76)=acd17(39)*acd17(82)
      acd17(78)=acd17(42)*acd17(15)
      acd17(80)=acd17(36)*acd17(10)
      acd17(78)=acd17(80)+acd17(62)+acd17(78)
      acd17(77)=acd17(78)*acd17(77)
      acd17(78)=ninjaP+acd17(60)
      acd17(80)=acd17(15)*acd17(78)
      acd17(82)=-acd17(30)*acd17(85)
      acd17(80)=acd17(82)+acd17(64)+acd17(80)
      acd17(80)=acd17(12)*acd17(80)
      acd17(78)=acd17(10)*acd17(78)
      acd17(82)=-acd17(29)*acd17(85)
      acd17(78)=acd17(82)+acd17(61)+acd17(78)
      acd17(78)=acd17(1)*acd17(78)
      acd17(81)=-acd17(56)*acd17(81)
      acd17(79)=acd17(52)*acd17(79)
      acd17(82)=acd17(26)*acd17(54)
      acd17(83)=acd17(48)*acd17(66)
      acd17(84)=-acd17(42)*acd17(84)
      acd17(85)=-acd17(36)*acd17(86)
      acd17(69)=acd17(69)+acd17(71)+acd17(72)+acd17(73)+acd17(78)+acd17(80)+acd&
      &17(76)+acd17(74)+acd17(77)+acd17(85)+acd17(84)+acd17(83)+acd17(82)+acd17&
      &(79)+acd17(81)
      brack(ninjaidxt1mu0)=acd17(75)
      brack(ninjaidxt0mu0)=acd17(69)
      brack(ninjaidxt0mu2)=acd17(70)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d17h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd17h0
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
end module     p0_dbaru_epnebbbarg_d17h0l131
