module     p0_dbaru_epnebbbarg_d103h6l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d103h6l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd103h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd103
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd103(1)=dotproduct(k2,ninjaE3)
      acd103(2)=dotproduct(ninjaE3,spvak4k3)
      acd103(3)=dotproduct(ninjaE3,spvak7k2)
      acd103(4)=abb103(15)
      acd103(5)=dotproduct(l5,ninjaE3)
      acd103(6)=abb103(22)
      acd103(7)=dotproduct(l6,ninjaE3)
      acd103(8)=dotproduct(ninjaE3,spval5k2)
      acd103(9)=abb103(12)
      acd103(10)=dotproduct(ninjaE3,spvak1l6)
      acd103(11)=abb103(16)
      acd103(12)=dotproduct(ninjaE3,spvak1k2)
      acd103(13)=abb103(17)
      acd103(14)=dotproduct(ninjaE3,spval5l6)
      acd103(15)=abb103(39)
      acd103(16)=acd103(7)+acd103(5)
      acd103(16)=acd103(6)*acd103(16)
      acd103(17)=acd103(4)*acd103(1)
      acd103(18)=acd103(9)*acd103(8)
      acd103(19)=acd103(11)*acd103(10)
      acd103(20)=acd103(13)*acd103(12)
      acd103(21)=acd103(15)*acd103(14)
      acd103(16)=acd103(21)+acd103(20)+acd103(19)+acd103(18)+acd103(17)+acd103(&
      &16)
      acd103(16)=acd103(16)*acd103(3)*acd103(2)
      brack(ninjaidxt2mu0)=acd103(16)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd103h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(97) :: acd103
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd103(1)=dotproduct(k2,ninjaE3)
      acd103(2)=dotproduct(ninjaE3,spvak4k3)
      acd103(3)=dotproduct(ninjaE4,spvak7k2)
      acd103(4)=abb103(15)
      acd103(5)=dotproduct(ninjaE3,spvak7k2)
      acd103(6)=dotproduct(ninjaE4,spvak4k3)
      acd103(7)=abb103(56)
      acd103(8)=dotproduct(k2,ninjaE4)
      acd103(9)=dotproduct(l5,ninjaE3)
      acd103(10)=abb103(22)
      acd103(11)=abb103(30)
      acd103(12)=dotproduct(l5,ninjaE4)
      acd103(13)=dotproduct(l6,ninjaE3)
      acd103(14)=dotproduct(l6,ninjaE4)
      acd103(15)=dotproduct(ninjaE3,spval5k2)
      acd103(16)=abb103(12)
      acd103(17)=dotproduct(ninjaE4,spval5k2)
      acd103(18)=dotproduct(ninjaE4,spvak1l6)
      acd103(19)=abb103(16)
      acd103(20)=dotproduct(ninjaE4,spvak1k2)
      acd103(21)=abb103(17)
      acd103(22)=dotproduct(ninjaE4,spval5l6)
      acd103(23)=abb103(39)
      acd103(24)=dotproduct(ninjaE3,spvak1l6)
      acd103(25)=dotproduct(ninjaE3,spvak1k2)
      acd103(26)=dotproduct(ninjaE3,spval5l6)
      acd103(27)=abb103(38)
      acd103(28)=abb103(42)
      acd103(29)=dotproduct(ninjaE3,spvak1k3)
      acd103(30)=abb103(28)
      acd103(31)=abb103(63)
      acd103(32)=dotproduct(k2,ninjaA)
      acd103(33)=dotproduct(k3,ninjaE3)
      acd103(34)=abb103(50)
      acd103(35)=dotproduct(k4,ninjaE3)
      acd103(36)=dotproduct(ninjaA,ninjaE3)
      acd103(37)=dotproduct(ninjaA,spvak4k3)
      acd103(38)=dotproduct(ninjaA,spvak7k2)
      acd103(39)=abb103(47)
      acd103(40)=abb103(29)
      acd103(41)=abb103(40)
      acd103(42)=abb103(65)
      acd103(43)=abb103(19)
      acd103(44)=abb103(35)
      acd103(45)=dotproduct(l5,ninjaA)
      acd103(46)=abb103(49)
      acd103(47)=dotproduct(l6,ninjaA)
      acd103(48)=dotproduct(k7,ninjaE3)
      acd103(49)=dotproduct(ninjaA,spval5k2)
      acd103(50)=dotproduct(ninjaA,spvak1l6)
      acd103(51)=dotproduct(ninjaA,spvak1k2)
      acd103(52)=dotproduct(ninjaA,spval5l6)
      acd103(53)=abb103(11)
      acd103(54)=abb103(14)
      acd103(55)=abb103(13)
      acd103(56)=abb103(25)
      acd103(57)=abb103(24)
      acd103(58)=dotproduct(ninjaE3,spvak1k4)
      acd103(59)=abb103(23)
      acd103(60)=dotproduct(k3,ninjaA)
      acd103(61)=dotproduct(k4,ninjaA)
      acd103(62)=dotproduct(ninjaA,ninjaA)
      acd103(63)=abb103(58)
      acd103(64)=dotproduct(ninjaA,spvak1k3)
      acd103(65)=abb103(33)
      acd103(66)=abb103(31)
      acd103(67)=dotproduct(k7,ninjaA)
      acd103(68)=abb103(27)
      acd103(69)=abb103(20)
      acd103(70)=dotproduct(ninjaA,spvak1k4)
      acd103(71)=abb103(10)
      acd103(72)=abb103(60)
      acd103(73)=abb103(59)
      acd103(74)=abb103(18)
      acd103(75)=abb103(64)
      acd103(76)=acd103(12)+acd103(14)
      acd103(76)=acd103(76)*acd103(10)
      acd103(77)=acd103(23)*acd103(22)
      acd103(78)=acd103(21)*acd103(20)
      acd103(79)=acd103(19)*acd103(18)
      acd103(80)=acd103(16)*acd103(17)
      acd103(81)=acd103(4)*acd103(8)
      acd103(76)=acd103(77)+acd103(78)+acd103(79)+acd103(80)+acd103(76)+acd103(&
      &81)
      acd103(76)=acd103(76)*acd103(5)
      acd103(77)=acd103(21)*acd103(25)
      acd103(78)=acd103(19)*acd103(24)
      acd103(79)=acd103(26)*acd103(23)
      acd103(80)=acd103(15)*acd103(16)
      acd103(81)=acd103(1)*acd103(4)
      acd103(77)=acd103(81)+acd103(77)+acd103(78)+acd103(79)+acd103(80)
      acd103(78)=acd103(9)+acd103(13)
      acd103(79)=acd103(78)*acd103(10)
      acd103(79)=acd103(79)+acd103(77)
      acd103(80)=acd103(3)*acd103(79)
      acd103(76)=acd103(76)+acd103(27)+acd103(80)
      acd103(80)=acd103(2)*acd103(76)
      acd103(81)=acd103(26)*acd103(31)
      acd103(82)=acd103(15)*acd103(28)
      acd103(83)=acd103(1)*acd103(7)
      acd103(84)=acd103(78)*acd103(11)
      acd103(85)=acd103(29)*acd103(30)
      acd103(81)=acd103(85)-acd103(81)+acd103(82)+acd103(83)+acd103(84)
      acd103(82)=acd103(6)*acd103(79)
      acd103(83)=acd103(5)*acd103(82)
      acd103(80)=acd103(80)+acd103(83)+acd103(81)
      acd103(77)=acd103(77)*acd103(38)
      acd103(83)=acd103(10)*acd103(38)
      acd103(83)=acd103(83)+acd103(46)
      acd103(84)=acd103(83)*acd103(78)
      acd103(86)=acd103(33)+acd103(35)
      acd103(87)=acd103(86)+acd103(48)
      acd103(87)=acd103(87)*acd103(41)
      acd103(88)=acd103(30)*acd103(58)
      acd103(89)=acd103(25)*acd103(56)
      acd103(90)=acd103(29)*acd103(55)
      acd103(91)=acd103(26)*acd103(57)
      acd103(92)=acd103(15)*acd103(53)
      acd103(93)=acd103(1)*acd103(39)
      acd103(94)=2.0_ki*acd103(36)
      acd103(95)=acd103(94)*acd103(27)
      acd103(77)=acd103(92)+acd103(93)+acd103(95)+acd103(77)+acd103(88)+acd103(&
      &89)+acd103(90)+acd103(91)+acd103(87)+acd103(84)
      acd103(84)=acd103(23)*acd103(52)
      acd103(87)=acd103(21)*acd103(51)
      acd103(88)=acd103(19)*acd103(50)
      acd103(89)=acd103(16)*acd103(49)
      acd103(90)=acd103(4)*acd103(32)
      acd103(84)=acd103(87)+acd103(84)+acd103(90)+acd103(54)+acd103(88)+acd103(&
      &89)
      acd103(87)=acd103(45)+acd103(47)
      acd103(88)=acd103(87)*acd103(10)
      acd103(88)=acd103(84)+acd103(88)
      acd103(89)=acd103(5)*acd103(88)
      acd103(89)=acd103(89)+acd103(77)
      acd103(89)=acd103(2)*acd103(89)
      acd103(79)=acd103(37)*acd103(79)
      acd103(90)=acd103(29)*acd103(59)
      acd103(79)=acd103(90)+acd103(79)
      acd103(79)=acd103(5)*acd103(79)
      acd103(90)=acd103(94)*acd103(11)
      acd103(91)=acd103(86)*acd103(40)
      acd103(90)=acd103(90)-acd103(91)
      acd103(90)=acd103(90)*acd103(78)
      acd103(85)=acd103(94)*acd103(85)
      acd103(91)=acd103(44)*acd103(86)
      acd103(92)=-acd103(31)*acd103(94)
      acd103(91)=acd103(92)+acd103(91)
      acd103(91)=acd103(26)*acd103(91)
      acd103(92)=acd103(42)*acd103(86)
      acd103(93)=acd103(28)*acd103(94)
      acd103(92)=acd103(93)+acd103(92)
      acd103(92)=acd103(15)*acd103(92)
      acd103(93)=-acd103(34)*acd103(86)
      acd103(95)=acd103(7)*acd103(94)
      acd103(93)=acd103(95)+acd103(93)
      acd103(93)=acd103(1)*acd103(93)
      acd103(95)=-acd103(29)*acd103(43)*acd103(86)
      acd103(79)=acd103(89)+acd103(79)+acd103(93)+acd103(92)+acd103(91)+acd103(&
      &85)+acd103(95)+acd103(90)
      acd103(76)=ninjaP*acd103(76)
      acd103(84)=acd103(38)*acd103(84)
      acd103(83)=acd103(87)*acd103(83)
      acd103(85)=acd103(51)*acd103(56)
      acd103(89)=acd103(64)*acd103(55)
      acd103(90)=acd103(62)*acd103(27)
      acd103(91)=acd103(52)*acd103(57)
      acd103(92)=acd103(49)*acd103(53)
      acd103(93)=acd103(32)*acd103(39)
      acd103(95)=acd103(30)*acd103(70)
      acd103(96)=acd103(60)+acd103(61)
      acd103(97)=acd103(67)+acd103(96)
      acd103(97)=acd103(41)*acd103(97)
      acd103(76)=acd103(84)+acd103(97)+acd103(95)+acd103(93)+acd103(92)+acd103(&
      &91)+acd103(90)+acd103(89)+acd103(71)+acd103(85)+acd103(76)+acd103(83)
      acd103(76)=acd103(2)*acd103(76)
      acd103(77)=acd103(37)*acd103(77)
      acd103(82)=ninjaP*acd103(82)
      acd103(83)=acd103(37)*acd103(88)
      acd103(84)=acd103(64)*acd103(59)
      acd103(82)=acd103(83)+acd103(82)+acd103(73)+acd103(84)
      acd103(82)=acd103(5)*acd103(82)
      acd103(83)=acd103(43)*acd103(64)
      acd103(84)=acd103(52)*acd103(44)
      acd103(85)=acd103(49)*acd103(42)
      acd103(88)=acd103(32)*acd103(34)
      acd103(89)=acd103(87)*acd103(40)
      acd103(83)=-acd103(88)-acd103(83)-acd103(89)-acd103(65)+acd103(84)+acd103&
      &(85)
      acd103(83)=acd103(83)*acd103(86)
      acd103(84)=-acd103(52)*acd103(31)
      acd103(85)=acd103(49)*acd103(28)
      acd103(86)=acd103(32)*acd103(7)
      acd103(88)=acd103(30)*acd103(64)
      acd103(87)=acd103(11)*acd103(87)
      acd103(84)=acd103(87)+acd103(88)+acd103(86)+acd103(85)+acd103(69)+acd103(&
      &84)
      acd103(84)=acd103(84)*acd103(94)
      acd103(81)=ninjaP*acd103(81)
      acd103(85)=-acd103(43)*acd103(96)
      acd103(86)=acd103(30)*acd103(62)
      acd103(87)=acd103(38)*acd103(59)
      acd103(85)=acd103(87)+acd103(86)+acd103(74)+acd103(85)
      acd103(85)=acd103(29)*acd103(85)
      acd103(86)=acd103(11)*acd103(62)
      acd103(87)=acd103(96)*acd103(40)
      acd103(86)=acd103(66)+acd103(86)-acd103(87)
      acd103(78)=acd103(86)*acd103(78)
      acd103(86)=acd103(44)*acd103(96)
      acd103(87)=-acd103(62)*acd103(31)
      acd103(86)=acd103(75)+acd103(87)+acd103(86)
      acd103(86)=acd103(26)*acd103(86)
      acd103(87)=acd103(42)*acd103(96)
      acd103(88)=acd103(62)*acd103(28)
      acd103(87)=acd103(72)+acd103(88)+acd103(87)
      acd103(87)=acd103(15)*acd103(87)
      acd103(88)=-acd103(34)*acd103(96)
      acd103(89)=acd103(62)*acd103(7)
      acd103(88)=acd103(63)+acd103(89)+acd103(88)
      acd103(88)=acd103(1)*acd103(88)
      acd103(89)=acd103(48)*acd103(68)
      acd103(76)=acd103(76)+acd103(82)+acd103(77)+acd103(81)+acd103(88)+acd103(&
      &87)+acd103(86)+acd103(84)+acd103(89)+acd103(85)+acd103(78)+acd103(83)
      brack(ninjaidxt1mu0)=acd103(79)
      brack(ninjaidxt0mu0)=acd103(76)
      brack(ninjaidxt0mu2)=acd103(80)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d103h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd103h6
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
end module     p0_dbaru_epnebbbarg_d103h6l131
