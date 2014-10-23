module     p0_dbaru_epnebbbarg_d80h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d80h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd80h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd80
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd80(1)=dotproduct(ninjaE3,spvak1k2)
      acd80(2)=dotproduct(ninjaE3,spvak4k3)
      acd80(3)=dotproduct(ninjaE3,spval5k2)
      acd80(4)=dotproduct(ninjaE3,spvak7k2)
      acd80(5)=abb80(14)
      acd80(6)=dotproduct(ninjaE3,spval6k2)
      acd80(7)=abb80(21)
      acd80(8)=acd80(5)*acd80(3)
      acd80(9)=acd80(7)*acd80(6)
      acd80(8)=acd80(8)+acd80(9)
      acd80(8)=acd80(1)*acd80(8)*acd80(4)*acd80(2)
      brack(ninjaidxt2mu0)=acd80(8)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd80h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(116) :: acd80
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd80(1)=dotproduct(ninjaE3,spval6k2)
      acd80(2)=dotproduct(ninjaE3,spvak1k2)
      acd80(3)=dotproduct(ninjaE3,spvak4k3)
      acd80(4)=dotproduct(ninjaE4,spvak7k2)
      acd80(5)=abb80(21)
      acd80(6)=dotproduct(ninjaE3,spvak7k2)
      acd80(7)=dotproduct(ninjaE4,spvak4k3)
      acd80(8)=dotproduct(ninjaE4,spvak1k2)
      acd80(9)=abb80(47)
      acd80(10)=dotproduct(ninjaE4,spval6k2)
      acd80(11)=dotproduct(ninjaE4,spval5k2)
      acd80(12)=abb80(14)
      acd80(13)=dotproduct(ninjaE3,spval5k2)
      acd80(14)=abb80(71)
      acd80(15)=abb80(43)
      acd80(16)=dotproduct(ninjaE3,spvak4k2)
      acd80(17)=abb80(57)
      acd80(18)=dotproduct(k2,ninjaE3)
      acd80(19)=abb80(73)
      acd80(20)=abb80(26)
      acd80(21)=dotproduct(k3,ninjaE3)
      acd80(22)=dotproduct(k4,ninjaE3)
      acd80(23)=dotproduct(ninjaA,ninjaE3)
      acd80(24)=dotproduct(ninjaA,spval6k2)
      acd80(25)=dotproduct(ninjaA,spvak1k2)
      acd80(26)=dotproduct(ninjaA,spvak4k3)
      acd80(27)=dotproduct(ninjaA,spvak7k2)
      acd80(28)=dotproduct(ninjaA,spval5k2)
      acd80(29)=abb80(16)
      acd80(30)=abb80(76)
      acd80(31)=abb80(55)
      acd80(32)=abb80(64)
      acd80(33)=dotproduct(ninjaE3,spvak1k3)
      acd80(34)=abb80(52)
      acd80(35)=abb80(9)
      acd80(36)=abb80(13)
      acd80(37)=abb80(74)
      acd80(38)=abb80(46)
      acd80(39)=dotproduct(ninjaE3,spvak3k2)
      acd80(40)=abb80(17)
      acd80(41)=abb80(67)
      acd80(42)=abb80(63)
      acd80(43)=abb80(33)
      acd80(44)=dotproduct(k1,ninjaE3)
      acd80(45)=abb80(8)
      acd80(46)=abb80(70)
      acd80(47)=abb80(35)
      acd80(48)=abb80(69)
      acd80(49)=abb80(19)
      acd80(50)=abb80(58)
      acd80(51)=dotproduct(k2,ninjaA)
      acd80(52)=dotproduct(ninjaA,spvak4k2)
      acd80(53)=abb80(72)
      acd80(54)=abb80(59)
      acd80(55)=dotproduct(k3,ninjaA)
      acd80(56)=abb80(44)
      acd80(57)=abb80(40)
      acd80(58)=dotproduct(k4,ninjaA)
      acd80(59)=dotproduct(k7,ninjaE3)
      acd80(60)=dotproduct(ninjaA,ninjaA)
      acd80(61)=abb80(29)
      acd80(62)=abb80(39)
      acd80(63)=abb80(12)
      acd80(64)=abb80(36)
      acd80(65)=dotproduct(ninjaA,spvak3k2)
      acd80(66)=dotproduct(ninjaA,spvak1k3)
      acd80(67)=abb80(60)
      acd80(68)=abb80(49)
      acd80(69)=abb80(34)
      acd80(70)=abb80(62)
      acd80(71)=abb80(15)
      acd80(72)=abb80(65)
      acd80(73)=abb80(45)
      acd80(74)=abb80(25)
      acd80(75)=abb80(48)
      acd80(76)=abb80(66)
      acd80(77)=abb80(22)
      acd80(78)=abb80(38)
      acd80(79)=abb80(23)
      acd80(80)=dotproduct(ninjaE3,spvak1k7)
      acd80(81)=abb80(32)
      acd80(82)=abb80(61)
      acd80(83)=acd80(13)*acd80(12)
      acd80(84)=acd80(1)*acd80(5)
      acd80(83)=acd80(83)+acd80(84)
      acd80(84)=acd80(7)*acd80(83)
      acd80(85)=acd80(5)*acd80(10)
      acd80(86)=acd80(12)*acd80(11)
      acd80(85)=acd80(85)+acd80(86)
      acd80(86)=acd80(3)*acd80(85)
      acd80(84)=acd80(86)+acd80(14)+acd80(84)
      acd80(84)=acd80(2)*acd80(84)
      acd80(86)=acd80(3)*acd80(8)*acd80(83)
      acd80(87)=-acd80(16)*acd80(17)
      acd80(88)=acd80(13)*acd80(15)
      acd80(89)=acd80(1)*acd80(9)
      acd80(84)=acd80(84)+acd80(86)+acd80(89)+acd80(87)+acd80(88)
      acd80(84)=acd80(6)*acd80(84)
      acd80(86)=acd80(2)*acd80(3)
      acd80(87)=acd80(86)*acd80(4)*acd80(83)
      acd80(84)=acd80(87)+acd80(84)
      acd80(87)=acd80(16)*acd80(41)
      acd80(88)=acd80(17)*acd80(39)
      acd80(87)=acd80(87)-acd80(88)
      acd80(89)=acd80(6)*acd80(38)
      acd80(90)=acd80(12)*acd80(25)
      acd80(90)=acd80(90)+acd80(40)
      acd80(91)=acd80(13)*acd80(90)
      acd80(92)=acd80(5)*acd80(25)
      acd80(92)=acd80(92)+acd80(31)
      acd80(93)=acd80(1)*acd80(92)
      acd80(91)=acd80(89)+acd80(93)+acd80(91)+acd80(87)
      acd80(91)=acd80(3)*acd80(91)
      acd80(93)=2.0_ki*acd80(23)
      acd80(94)=acd80(93)*acd80(14)
      acd80(95)=acd80(21)+acd80(22)
      acd80(96)=acd80(95)-acd80(18)
      acd80(97)=-acd80(19)*acd80(96)
      acd80(94)=acd80(94)+acd80(97)
      acd80(98)=acd80(12)*acd80(28)
      acd80(99)=acd80(5)*acd80(24)
      acd80(98)=acd80(35)+acd80(98)+acd80(99)
      acd80(99)=acd80(3)*acd80(98)
      acd80(100)=acd80(12)*acd80(26)
      acd80(100)=acd80(100)+acd80(37)
      acd80(101)=acd80(13)*acd80(100)
      acd80(102)=acd80(5)*acd80(26)
      acd80(102)=acd80(102)+acd80(30)
      acd80(103)=acd80(1)*acd80(102)
      acd80(99)=acd80(99)+acd80(103)+acd80(101)+acd80(94)
      acd80(99)=acd80(2)*acd80(99)
      acd80(101)=acd80(95)*acd80(20)
      acd80(103)=acd80(93)*acd80(17)
      acd80(104)=acd80(20)*acd80(18)
      acd80(101)=-acd80(101)+acd80(103)+acd80(104)
      acd80(103)=-acd80(16)*acd80(101)
      acd80(105)=acd80(95)-acd80(93)
      acd80(106)=acd80(105)*acd80(15)
      acd80(107)=acd80(16)*acd80(42)
      acd80(108)=acd80(33)*acd80(43)
      acd80(106)=-acd80(106)+acd80(107)+acd80(108)
      acd80(107)=acd80(13)*acd80(106)
      acd80(109)=acd80(105)*acd80(9)
      acd80(110)=acd80(16)*acd80(32)
      acd80(111)=acd80(33)*acd80(34)
      acd80(109)=-acd80(111)+acd80(109)-acd80(110)
      acd80(110)=-acd80(1)*acd80(109)
      acd80(91)=acd80(99)+acd80(110)+acd80(103)+acd80(107)+acd80(91)
      acd80(91)=acd80(6)*acd80(91)
      acd80(99)=acd80(27)*acd80(12)
      acd80(99)=acd80(36)+acd80(99)
      acd80(99)=acd80(13)*acd80(99)
      acd80(103)=acd80(27)*acd80(5)
      acd80(103)=acd80(29)+acd80(103)
      acd80(103)=acd80(1)*acd80(103)
      acd80(99)=acd80(99)+acd80(103)
      acd80(86)=acd80(99)*acd80(86)
      acd80(86)=acd80(86)+acd80(91)
      acd80(83)=ninjaP*acd80(83)
      acd80(91)=acd80(8)*acd80(83)
      acd80(99)=acd80(28)*acd80(90)
      acd80(103)=acd80(24)*acd80(92)
      acd80(107)=acd80(52)*acd80(41)
      acd80(110)=-acd80(17)*acd80(65)
      acd80(112)=acd80(25)*acd80(35)
      acd80(113)=acd80(27)*acd80(38)
      acd80(91)=2.0_ki*acd80(113)+acd80(112)+acd80(110)+acd80(73)+acd80(107)+ac&
      &d80(103)+acd80(99)+acd80(91)
      acd80(91)=acd80(3)*acd80(91)
      acd80(99)=acd80(7)*acd80(83)
      acd80(85)=acd80(3)*ninjaP*acd80(85)
      acd80(103)=ninjaP+acd80(60)
      acd80(107)=acd80(14)*acd80(103)
      acd80(110)=acd80(28)*acd80(100)
      acd80(112)=acd80(24)*acd80(102)
      acd80(113)=acd80(55)+acd80(58)
      acd80(114)=acd80(113)-acd80(51)
      acd80(115)=-acd80(19)*acd80(114)
      acd80(116)=acd80(26)*acd80(35)
      acd80(85)=acd80(85)+acd80(116)+acd80(115)+acd80(112)+acd80(110)+acd80(107&
      &)+acd80(99)
      acd80(85)=acd80(2)*acd80(85)
      acd80(99)=-acd80(17)*acd80(103)
      acd80(107)=acd80(28)*acd80(42)
      acd80(110)=acd80(24)*acd80(32)
      acd80(112)=acd80(20)*acd80(114)
      acd80(114)=acd80(26)*acd80(41)
      acd80(99)=acd80(114)+acd80(112)+acd80(110)+acd80(107)+acd80(79)+acd80(99)
      acd80(99)=acd80(16)*acd80(99)
      acd80(103)=acd80(103)-acd80(113)
      acd80(107)=acd80(15)*acd80(103)
      acd80(110)=acd80(26)*acd80(90)
      acd80(112)=acd80(43)*acd80(66)
      acd80(113)=acd80(52)*acd80(42)
      acd80(114)=acd80(25)*acd80(37)
      acd80(107)=acd80(114)+acd80(107)+acd80(113)+acd80(78)+acd80(112)+acd80(11&
      &0)
      acd80(107)=acd80(13)*acd80(107)
      acd80(103)=acd80(9)*acd80(103)
      acd80(110)=acd80(26)*acd80(92)
      acd80(112)=acd80(34)*acd80(66)
      acd80(113)=acd80(52)*acd80(32)
      acd80(114)=acd80(25)*acd80(30)
      acd80(103)=acd80(114)+acd80(103)+acd80(113)+acd80(69)+acd80(112)+acd80(11&
      &0)
      acd80(103)=acd80(1)*acd80(103)
      acd80(110)=acd80(15)*acd80(28)
      acd80(112)=acd80(9)*acd80(24)
      acd80(110)=acd80(110)+acd80(112)
      acd80(112)=-acd80(17)*acd80(52)
      acd80(113)=acd80(25)*acd80(14)
      acd80(112)=acd80(113)+acd80(62)+acd80(112)+acd80(110)
      acd80(112)=acd80(112)*acd80(93)
      acd80(113)=acd80(20)*acd80(52)
      acd80(110)=acd80(110)-acd80(113)
      acd80(95)=-acd80(110)*acd80(95)
      acd80(88)=acd80(89)-acd80(88)
      acd80(88)=acd80(26)*acd80(88)
      acd80(89)=acd80(80)*acd80(81)
      acd80(110)=acd80(44)*acd80(47)
      acd80(113)=acd80(39)*acd80(77)
      acd80(108)=acd80(28)*acd80(108)
      acd80(111)=acd80(24)*acd80(111)
      acd80(104)=-acd80(52)*acd80(104)
      acd80(97)=acd80(25)*acd80(97)
      acd80(85)=acd80(85)+acd80(91)+acd80(103)+acd80(107)+acd80(99)+acd80(112)+&
      &acd80(97)+acd80(104)+acd80(111)+acd80(108)+acd80(113)+acd80(89)+acd80(11&
      &0)+acd80(88)+acd80(95)
      acd80(85)=acd80(6)*acd80(85)
      acd80(83)=acd80(4)*acd80(83)
      acd80(88)=acd80(27)*acd80(98)
      acd80(89)=acd80(28)*acd80(36)
      acd80(91)=acd80(24)*acd80(29)
      acd80(83)=acd80(88)+acd80(91)+acd80(71)+acd80(89)+acd80(83)
      acd80(83)=acd80(3)*acd80(83)
      acd80(88)=acd80(27)*acd80(94)
      acd80(89)=acd80(26)*acd80(36)
      acd80(91)=acd80(27)*acd80(100)
      acd80(89)=acd80(91)+acd80(72)+acd80(89)
      acd80(89)=acd80(13)*acd80(89)
      acd80(91)=acd80(26)*acd80(29)
      acd80(94)=acd80(27)*acd80(102)
      acd80(91)=acd80(94)+acd80(67)+acd80(91)
      acd80(91)=acd80(1)*acd80(91)
      acd80(94)=acd80(44)-acd80(59)
      acd80(95)=-acd80(46)*acd80(94)
      acd80(97)=acd80(53)*acd80(96)
      acd80(98)=acd80(61)*acd80(93)
      acd80(83)=acd80(83)+acd80(91)+acd80(89)+acd80(88)+acd80(98)+acd80(97)+acd&
      &80(95)
      acd80(83)=acd80(2)*acd80(83)
      acd80(87)=acd80(27)*acd80(87)
      acd80(88)=acd80(25)*acd80(36)
      acd80(89)=acd80(27)*acd80(90)
      acd80(88)=acd80(89)+acd80(75)+acd80(88)
      acd80(88)=acd80(13)*acd80(88)
      acd80(89)=acd80(25)*acd80(29)
      acd80(90)=acd80(27)*acd80(92)
      acd80(89)=acd80(90)+acd80(68)+acd80(89)
      acd80(89)=acd80(1)*acd80(89)
      acd80(90)=acd80(39)*acd80(74)
      acd80(91)=acd80(16)*acd80(76)
      acd80(87)=acd80(89)+acd80(88)+acd80(87)+acd80(90)+acd80(91)
      acd80(87)=acd80(3)*acd80(87)
      acd80(88)=-acd80(27)*acd80(101)
      acd80(89)=-acd80(50)*acd80(94)
      acd80(90)=-acd80(54)*acd80(96)
      acd80(91)=acd80(64)*acd80(93)
      acd80(88)=acd80(88)+acd80(91)+acd80(90)+acd80(89)
      acd80(88)=acd80(16)*acd80(88)
      acd80(89)=acd80(27)*acd80(106)
      acd80(90)=acd80(57)*acd80(105)
      acd80(91)=acd80(44)*acd80(49)
      acd80(92)=acd80(16)*acd80(82)
      acd80(89)=acd80(89)+acd80(92)+acd80(91)+acd80(90)
      acd80(89)=acd80(13)*acd80(89)
      acd80(90)=-acd80(27)*acd80(109)
      acd80(91)=acd80(56)*acd80(105)
      acd80(92)=acd80(44)*acd80(45)
      acd80(95)=acd80(16)*acd80(70)
      acd80(90)=acd80(90)+acd80(95)+acd80(92)+acd80(91)
      acd80(90)=acd80(1)*acd80(90)
      acd80(91)=acd80(48)*acd80(94)
      acd80(92)=acd80(63)*acd80(93)
      acd80(91)=acd80(91)+acd80(92)
      acd80(91)=acd80(39)*acd80(91)
      acd80(83)=acd80(85)+acd80(83)+acd80(87)+acd80(90)+acd80(89)+acd80(88)+acd&
      &80(91)
      brack(ninjaidxt1mu0)=acd80(86)
      brack(ninjaidxt0mu0)=acd80(83)
      brack(ninjaidxt0mu2)=acd80(84)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d80h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd80h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
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
end module     p0_dbaru_epnebbbarg_d80h4l131
