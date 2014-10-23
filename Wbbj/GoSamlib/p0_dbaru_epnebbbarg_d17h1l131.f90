module     p0_dbaru_epnebbbarg_d17h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d17h1l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd17h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd17
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd17(1)=dotproduct(k2,ninjaE3)
      acd17(2)=dotproduct(k7,ninjaE3)
      acd17(3)=dotproduct(ninjaE3,spvak4k3)
      acd17(4)=abb17(14)
      acd17(5)=dotproduct(ninjaE3,spvak2k7)
      acd17(6)=abb17(15)
      acd17(7)=dotproduct(ninjaE3,spvak1k7)
      acd17(8)=abb17(23)
      acd17(9)=dotproduct(ninjaE3,spval6l5)
      acd17(10)=abb17(28)
      acd17(11)=abb17(18)
      acd17(12)=abb17(21)
      acd17(13)=acd17(10)*acd17(2)
      acd17(14)=acd17(11)*acd17(5)
      acd17(15)=acd17(12)*acd17(7)
      acd17(13)=acd17(15)+acd17(14)+acd17(13)
      acd17(13)=acd17(13)*acd17(9)
      acd17(14)=acd17(4)*acd17(2)
      acd17(15)=acd17(6)*acd17(5)
      acd17(16)=-acd17(8)*acd17(7)
      acd17(14)=acd17(16)+acd17(14)+acd17(15)
      acd17(14)=acd17(14)*acd17(1)
      acd17(13)=acd17(14)+acd17(13)
      acd17(13)=acd17(3)*acd17(13)
      brack(ninjaidxt2mu0)=acd17(13)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd17h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(86) :: acd17
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd17(1)=dotproduct(k2,ninjaE3)
      acd17(2)=dotproduct(k7,ninjaE3)
      acd17(3)=dotproduct(ninjaE4,spvak4k3)
      acd17(4)=abb17(14)
      acd17(5)=dotproduct(k7,ninjaE4)
      acd17(6)=dotproduct(ninjaE3,spvak4k3)
      acd17(7)=dotproduct(ninjaE3,spvak2k7)
      acd17(8)=abb17(15)
      acd17(9)=dotproduct(ninjaE4,spvak2k7)
      acd17(10)=dotproduct(ninjaE4,spvak1k7)
      acd17(11)=abb17(23)
      acd17(12)=dotproduct(ninjaE3,spvak1k7)
      acd17(13)=abb17(65)
      acd17(14)=dotproduct(k2,ninjaE4)
      acd17(15)=dotproduct(ninjaE4,spval6l5)
      acd17(16)=abb17(28)
      acd17(17)=dotproduct(ninjaE3,spval6l5)
      acd17(18)=abb17(62)
      acd17(19)=abb17(18)
      acd17(20)=abb17(17)
      acd17(21)=abb17(21)
      acd17(22)=abb17(16)
      acd17(23)=abb17(66)
      acd17(24)=dotproduct(k1,ninjaE3)
      acd17(25)=abb17(37)
      acd17(26)=dotproduct(k2,ninjaA)
      acd17(27)=dotproduct(k3,ninjaE3)
      acd17(28)=abb17(74)
      acd17(29)=dotproduct(k4,ninjaE3)
      acd17(30)=dotproduct(k7,ninjaA)
      acd17(31)=dotproduct(ninjaA,spvak4k3)
      acd17(32)=dotproduct(ninjaA,ninjaE3)
      acd17(33)=dotproduct(ninjaA,spvak2k7)
      acd17(34)=dotproduct(ninjaA,spvak1k7)
      acd17(35)=abb17(12)
      acd17(36)=dotproduct(ninjaE3,spvak1k3)
      acd17(37)=abb17(27)
      acd17(38)=abb17(67)
      acd17(39)=abb17(19)
      acd17(40)=abb17(75)
      acd17(41)=dotproduct(l5,ninjaE3)
      acd17(42)=dotproduct(l6,ninjaE3)
      acd17(43)=dotproduct(ninjaA,spval6l5)
      acd17(44)=abb17(24)
      acd17(45)=abb17(13)
      acd17(46)=abb17(11)
      acd17(47)=abb17(20)
      acd17(48)=abb17(29)
      acd17(49)=dotproduct(k1,ninjaA)
      acd17(50)=abb17(48)
      acd17(51)=dotproduct(k3,ninjaA)
      acd17(52)=dotproduct(k4,ninjaA)
      acd17(53)=dotproduct(ninjaA,ninjaA)
      acd17(54)=dotproduct(ninjaA,spvak1k3)
      acd17(55)=abb17(44)
      acd17(56)=abb17(50)
      acd17(57)=dotproduct(l5,ninjaA)
      acd17(58)=dotproduct(l6,ninjaA)
      acd17(59)=abb17(31)
      acd17(60)=abb17(26)
      acd17(61)=abb17(10)
      acd17(62)=abb17(22)
      acd17(63)=abb17(73)
      acd17(64)=abb17(25)
      acd17(65)=acd17(11)*acd17(10)
      acd17(66)=acd17(8)*acd17(9)
      acd17(67)=acd17(4)*acd17(5)
      acd17(65)=-acd17(67)+acd17(65)-acd17(66)
      acd17(65)=acd17(65)*acd17(1)
      acd17(66)=acd17(21)*acd17(10)
      acd17(67)=acd17(19)*acd17(9)
      acd17(68)=acd17(16)*acd17(5)
      acd17(66)=acd17(68)+acd17(66)+acd17(67)
      acd17(66)=acd17(66)*acd17(17)
      acd17(67)=acd17(19)*acd17(15)
      acd17(68)=acd17(8)*acd17(14)
      acd17(67)=acd17(67)+acd17(68)
      acd17(67)=acd17(67)*acd17(7)
      acd17(68)=acd17(16)*acd17(15)
      acd17(69)=acd17(4)*acd17(14)
      acd17(68)=acd17(68)+acd17(69)
      acd17(68)=acd17(68)*acd17(2)
      acd17(69)=acd17(21)*acd17(15)
      acd17(70)=acd17(11)*acd17(14)
      acd17(69)=acd17(69)-acd17(70)
      acd17(69)=acd17(69)*acd17(12)
      acd17(65)=acd17(66)-acd17(65)+acd17(69)+acd17(22)+acd17(67)+acd17(68)
      acd17(66)=acd17(6)*acd17(65)
      acd17(67)=acd17(2)*acd17(3)
      acd17(68)=acd17(67)*acd17(16)
      acd17(69)=acd17(7)*acd17(3)
      acd17(70)=acd17(69)*acd17(19)
      acd17(71)=acd17(12)*acd17(3)
      acd17(72)=acd17(71)*acd17(21)
      acd17(68)=acd17(68)+acd17(70)+acd17(72)+acd17(23)
      acd17(70)=acd17(17)*acd17(68)
      acd17(67)=acd17(67)*acd17(4)
      acd17(69)=acd17(69)*acd17(8)
      acd17(71)=acd17(71)*acd17(11)
      acd17(67)=-acd17(67)-acd17(69)+acd17(71)-acd17(13)
      acd17(69)=-acd17(1)*acd17(67)
      acd17(71)=acd17(7)*acd17(20)
      acd17(72)=acd17(2)*acd17(18)
      acd17(66)=acd17(66)+acd17(69)+acd17(70)+acd17(71)+acd17(72)
      acd17(69)=acd17(43)*acd17(21)
      acd17(70)=acd17(26)*acd17(11)
      acd17(69)=acd17(47)+acd17(69)-acd17(70)
      acd17(69)=acd17(69)*acd17(12)
      acd17(70)=acd17(43)*acd17(16)
      acd17(71)=acd17(26)*acd17(4)
      acd17(70)=acd17(70)+acd17(71)+acd17(44)
      acd17(70)=acd17(70)*acd17(2)
      acd17(71)=acd17(43)*acd17(19)
      acd17(72)=acd17(26)*acd17(8)
      acd17(71)=acd17(71)+acd17(72)+acd17(45)
      acd17(71)=acd17(71)*acd17(7)
      acd17(72)=2.0_ki*acd17(32)
      acd17(73)=acd17(72)*acd17(22)
      acd17(74)=acd17(42)+acd17(24)+acd17(41)
      acd17(75)=acd17(74)*acd17(25)
      acd17(69)=acd17(73)+acd17(75)+acd17(69)+acd17(70)+acd17(71)
      acd17(70)=acd17(21)*acd17(34)
      acd17(71)=acd17(19)*acd17(33)
      acd17(73)=acd17(16)*acd17(30)
      acd17(70)=acd17(70)+acd17(71)+acd17(73)+acd17(46)
      acd17(71)=acd17(17)*acd17(70)
      acd17(73)=acd17(11)*acd17(34)
      acd17(75)=acd17(8)*acd17(33)
      acd17(76)=acd17(4)*acd17(30)
      acd17(73)=-acd17(35)-acd17(76)+acd17(73)-acd17(75)
      acd17(75)=-acd17(1)*acd17(73)
      acd17(71)=acd17(75)+acd17(71)+acd17(69)
      acd17(71)=acd17(6)*acd17(71)
      acd17(75)=acd17(36)*acd17(48)
      acd17(76)=acd17(72)*acd17(23)
      acd17(77)=acd17(27)+acd17(29)
      acd17(78)=acd17(77)*acd17(40)
      acd17(75)=acd17(75)+acd17(76)+acd17(78)
      acd17(76)=acd17(2)*acd17(16)
      acd17(78)=acd17(12)*acd17(21)
      acd17(79)=acd17(7)*acd17(19)
      acd17(76)=acd17(76)+acd17(78)+acd17(79)
      acd17(76)=acd17(31)*acd17(76)
      acd17(76)=acd17(76)+acd17(75)
      acd17(76)=acd17(17)*acd17(76)
      acd17(78)=acd17(36)*acd17(37)
      acd17(79)=acd17(72)*acd17(13)
      acd17(80)=acd17(77)*acd17(28)
      acd17(78)=acd17(78)+acd17(79)-acd17(80)
      acd17(79)=acd17(2)*acd17(4)
      acd17(80)=-acd17(12)*acd17(11)
      acd17(81)=acd17(7)*acd17(8)
      acd17(79)=acd17(79)+acd17(80)+acd17(81)
      acd17(79)=acd17(31)*acd17(79)
      acd17(79)=acd17(79)+acd17(78)
      acd17(79)=acd17(1)*acd17(79)
      acd17(80)=acd17(77)*acd17(39)
      acd17(81)=acd17(20)*acd17(72)
      acd17(81)=acd17(81)-acd17(80)
      acd17(81)=acd17(7)*acd17(81)
      acd17(82)=acd17(77)*acd17(38)
      acd17(83)=acd17(18)*acd17(72)
      acd17(83)=acd17(83)-acd17(82)
      acd17(83)=acd17(2)*acd17(83)
      acd17(71)=acd17(71)+acd17(79)+acd17(76)+acd17(81)+acd17(83)
      acd17(65)=ninjaP*acd17(65)
      acd17(76)=acd17(43)*acd17(70)
      acd17(79)=-acd17(26)*acd17(73)
      acd17(81)=acd17(22)*acd17(53)
      acd17(83)=acd17(34)*acd17(47)
      acd17(84)=acd17(49)+acd17(58)+acd17(57)
      acd17(84)=acd17(25)*acd17(84)
      acd17(85)=acd17(33)*acd17(45)
      acd17(86)=acd17(30)*acd17(44)
      acd17(65)=acd17(79)+acd17(76)+acd17(86)+acd17(85)+acd17(84)+acd17(83)+acd&
      &17(62)+acd17(81)+acd17(65)
      acd17(65)=acd17(6)*acd17(65)
      acd17(69)=acd17(31)*acd17(69)
      acd17(68)=ninjaP*acd17(68)
      acd17(70)=acd17(31)*acd17(70)
      acd17(76)=acd17(48)*acd17(54)
      acd17(79)=acd17(23)*acd17(53)
      acd17(81)=acd17(51)+acd17(52)
      acd17(83)=acd17(40)*acd17(81)
      acd17(68)=acd17(70)+acd17(83)+acd17(79)+acd17(63)+acd17(76)+acd17(68)
      acd17(68)=acd17(17)*acd17(68)
      acd17(67)=-ninjaP*acd17(67)
      acd17(70)=-acd17(31)*acd17(73)
      acd17(73)=acd17(37)*acd17(54)
      acd17(76)=acd17(13)*acd17(53)
      acd17(79)=-acd17(28)*acd17(81)
      acd17(67)=acd17(70)+acd17(79)+acd17(76)+acd17(55)+acd17(73)+acd17(67)
      acd17(67)=acd17(1)*acd17(67)
      acd17(70)=acd17(43)*acd17(75)
      acd17(73)=acd17(26)*acd17(78)
      acd17(75)=acd17(33)*acd17(20)
      acd17(76)=acd17(30)*acd17(18)
      acd17(75)=acd17(76)+acd17(60)+acd17(75)
      acd17(72)=acd17(75)*acd17(72)
      acd17(75)=ninjaP+acd17(53)
      acd17(76)=acd17(20)*acd17(75)
      acd17(78)=-acd17(39)*acd17(81)
      acd17(76)=acd17(78)+acd17(61)+acd17(76)
      acd17(76)=acd17(7)*acd17(76)
      acd17(75)=acd17(18)*acd17(75)
      acd17(78)=-acd17(38)*acd17(81)
      acd17(75)=acd17(78)+acd17(59)+acd17(75)
      acd17(75)=acd17(2)*acd17(75)
      acd17(77)=-acd17(56)*acd17(77)
      acd17(74)=-acd17(50)*acd17(74)
      acd17(78)=acd17(36)*acd17(64)
      acd17(79)=-acd17(33)*acd17(80)
      acd17(80)=-acd17(30)*acd17(82)
      acd17(65)=acd17(65)+acd17(67)+acd17(68)+acd17(69)+acd17(75)+acd17(76)+acd&
      &17(73)+acd17(70)+acd17(72)+acd17(80)+acd17(79)+acd17(78)+acd17(74)+acd17&
      &(77)
      brack(ninjaidxt1mu0)=acd17(71)
      brack(ninjaidxt0mu0)=acd17(65)
      brack(ninjaidxt0mu2)=acd17(66)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d17h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd17h1
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
end module     p0_dbaru_epnebbbarg_d17h1l131
