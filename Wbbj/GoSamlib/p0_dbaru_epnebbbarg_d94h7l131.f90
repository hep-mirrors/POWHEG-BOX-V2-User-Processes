module     p0_dbaru_epnebbbarg_d94h7l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d94h7l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd94h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(12) :: acd94
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd94(1)=dotproduct(ninjaE3,spvak1k2)
      acd94(2)=dotproduct(ninjaE3,spvak2l5)
      acd94(3)=dotproduct(ninjaE3,spvak7k2)
      acd94(4)=abb94(25)
      acd94(5)=dotproduct(ninjaE3,spvak2l6)
      acd94(6)=abb94(41)
      acd94(7)=dotproduct(ninjaE3,spvak4k2)
      acd94(8)=abb94(30)
      acd94(9)=abb94(35)
      acd94(10)=acd94(5)*acd94(9)
      acd94(11)=acd94(2)*acd94(8)
      acd94(10)=acd94(10)+acd94(11)
      acd94(10)=acd94(7)*acd94(10)
      acd94(11)=acd94(5)*acd94(6)
      acd94(12)=acd94(2)*acd94(4)
      acd94(11)=acd94(11)+acd94(12)
      acd94(11)=acd94(1)*acd94(11)
      acd94(10)=acd94(11)+acd94(10)
      acd94(10)=acd94(3)*acd94(10)
      brack(ninjaidxt2mu0)=acd94(10)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd94h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(113) :: acd94
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd94(1)=dotproduct(k2,ninjaE3)
      acd94(2)=abb94(66)
      acd94(3)=dotproduct(ninjaE3,spvak2l5)
      acd94(4)=dotproduct(ninjaE3,spvak7k2)
      acd94(5)=dotproduct(ninjaE4,spvak1k2)
      acd94(6)=abb94(25)
      acd94(7)=dotproduct(ninjaE4,spvak4k2)
      acd94(8)=abb94(30)
      acd94(9)=dotproduct(ninjaE3,spvak1k2)
      acd94(10)=dotproduct(ninjaE4,spvak7k2)
      acd94(11)=dotproduct(ninjaE3,spvak4k2)
      acd94(12)=dotproduct(ninjaE3,spvak2l6)
      acd94(13)=abb94(41)
      acd94(14)=abb94(35)
      acd94(15)=dotproduct(ninjaE4,spvak2l5)
      acd94(16)=dotproduct(ninjaE4,spvak2l6)
      acd94(17)=abb94(57)
      acd94(18)=abb94(40)
      acd94(19)=abb94(76)
      acd94(20)=abb94(143)
      acd94(21)=dotproduct(l5,ninjaE3)
      acd94(22)=abb94(78)
      acd94(23)=dotproduct(l6,ninjaE3)
      acd94(24)=dotproduct(k7,ninjaE3)
      acd94(25)=abb94(39)
      acd94(26)=dotproduct(ninjaA,ninjaE3)
      acd94(27)=abb94(14)
      acd94(28)=abb94(23)
      acd94(29)=abb94(68)
      acd94(30)=abb94(52)
      acd94(31)=abb94(29)
      acd94(32)=abb94(65)
      acd94(33)=dotproduct(ninjaA,spvak2l5)
      acd94(34)=dotproduct(ninjaA,spvak2l6)
      acd94(35)=dotproduct(ninjaA,spvak7k2)
      acd94(36)=dotproduct(ninjaA,spvak1k2)
      acd94(37)=dotproduct(ninjaA,spvak4k2)
      acd94(38)=abb94(17)
      acd94(39)=dotproduct(ninjaE3,spval5k2)
      acd94(40)=abb94(22)
      acd94(41)=dotproduct(ninjaE3,spval6k2)
      acd94(42)=abb94(18)
      acd94(43)=abb94(33)
      acd94(44)=abb94(28)
      acd94(45)=abb94(12)
      acd94(46)=abb94(47)
      acd94(47)=abb94(34)
      acd94(48)=abb94(42)
      acd94(49)=abb94(60)
      acd94(50)=abb94(24)
      acd94(51)=dotproduct(ninjaE3,spvak4l6)
      acd94(52)=abb94(15)
      acd94(53)=abb94(38)
      acd94(54)=dotproduct(ninjaE3,spvak1l5)
      acd94(55)=abb94(19)
      acd94(56)=dotproduct(ninjaE3,spvak4l5)
      acd94(57)=abb94(37)
      acd94(58)=dotproduct(ninjaE3,spvak1l6)
      acd94(59)=abb94(36)
      acd94(60)=dotproduct(k2,ninjaA)
      acd94(61)=dotproduct(l5,ninjaA)
      acd94(62)=dotproduct(l6,ninjaA)
      acd94(63)=dotproduct(k7,ninjaA)
      acd94(64)=dotproduct(ninjaA,ninjaA)
      acd94(65)=abb94(27)
      acd94(66)=abb94(67)
      acd94(67)=abb94(62)
      acd94(68)=dotproduct(ninjaA,spval5k2)
      acd94(69)=dotproduct(ninjaA,spvak4l6)
      acd94(70)=dotproduct(ninjaA,spval6k2)
      acd94(71)=dotproduct(ninjaA,spvak1l5)
      acd94(72)=dotproduct(ninjaA,spvak4l5)
      acd94(73)=dotproduct(ninjaA,spvak1l6)
      acd94(74)=abb94(11)
      acd94(75)=abb94(16)
      acd94(76)=abb94(43)
      acd94(77)=abb94(13)
      acd94(78)=abb94(46)
      acd94(79)=abb94(77)
      acd94(80)=abb94(31)
      acd94(81)=abb94(20)
      acd94(82)=abb94(26)
      acd94(83)=abb94(48)
      acd94(84)=abb94(32)
      acd94(85)=acd94(8)*acd94(7)
      acd94(86)=acd94(6)*acd94(5)
      acd94(85)=acd94(85)+acd94(86)
      acd94(85)=acd94(85)*acd94(3)
      acd94(86)=acd94(14)*acd94(7)
      acd94(87)=acd94(13)*acd94(5)
      acd94(86)=acd94(86)+acd94(87)
      acd94(86)=acd94(86)*acd94(12)
      acd94(87)=acd94(14)*acd94(16)
      acd94(88)=acd94(8)*acd94(15)
      acd94(87)=acd94(87)+acd94(88)
      acd94(87)=acd94(87)*acd94(11)
      acd94(88)=acd94(13)*acd94(16)
      acd94(89)=acd94(6)*acd94(15)
      acd94(88)=acd94(88)+acd94(89)
      acd94(88)=acd94(88)*acd94(9)
      acd94(85)=acd94(87)+acd94(88)+acd94(17)+acd94(85)+acd94(86)
      acd94(86)=acd94(4)*acd94(85)
      acd94(87)=acd94(3)*acd94(10)
      acd94(88)=acd94(87)*acd94(8)
      acd94(89)=acd94(12)*acd94(10)
      acd94(90)=acd94(89)*acd94(14)
      acd94(88)=acd94(19)+acd94(88)+acd94(90)
      acd94(90)=acd94(11)*acd94(88)
      acd94(87)=acd94(87)*acd94(6)
      acd94(89)=acd94(89)*acd94(13)
      acd94(87)=acd94(18)+acd94(87)+acd94(89)
      acd94(89)=acd94(9)*acd94(87)
      acd94(91)=acd94(1)*acd94(2)
      acd94(86)=acd94(86)+acd94(89)+acd94(91)+acd94(90)
      acd94(89)=acd94(58)*acd94(59)
      acd94(90)=acd94(56)*acd94(57)
      acd94(91)=acd94(54)*acd94(55)
      acd94(92)=acd94(51)*acd94(52)
      acd94(93)=acd94(41)*acd94(53)
      acd94(94)=acd94(39)*acd94(50)
      acd94(95)=acd94(21)+acd94(23)
      acd94(96)=acd94(95)*acd94(30)
      acd94(97)=acd94(1)*acd94(27)
      acd94(98)=2.0_ki*acd94(26)
      acd94(99)=acd94(98)*acd94(17)
      acd94(89)=acd94(92)+acd94(93)+acd94(94)+acd94(99)+acd94(89)-acd94(96)+acd&
      &94(97)+acd94(90)+acd94(91)
      acd94(90)=acd94(14)*acd94(37)
      acd94(91)=acd94(13)*acd94(36)
      acd94(90)=acd94(45)+acd94(90)+acd94(91)
      acd94(91)=acd94(12)*acd94(90)
      acd94(92)=acd94(8)*acd94(37)
      acd94(93)=acd94(6)*acd94(36)
      acd94(92)=acd94(38)+acd94(92)+acd94(93)
      acd94(93)=acd94(3)*acd94(92)
      acd94(94)=acd94(14)*acd94(34)
      acd94(96)=acd94(8)*acd94(33)
      acd94(94)=acd94(94)+acd94(96)
      acd94(96)=acd94(11)*acd94(94)
      acd94(97)=acd94(13)*acd94(34)
      acd94(99)=acd94(6)*acd94(33)
      acd94(97)=acd94(97)+acd94(99)
      acd94(99)=acd94(9)*acd94(97)
      acd94(91)=acd94(99)+acd94(96)+acd94(93)+acd94(91)+acd94(89)
      acd94(91)=acd94(4)*acd94(91)
      acd94(93)=acd94(25)*acd94(24)
      acd94(96)=-acd94(22)*acd94(95)
      acd94(99)=acd94(2)*acd94(98)
      acd94(100)=acd94(1)*acd94(20)
      acd94(96)=acd94(100)+acd94(93)+acd94(99)+acd94(96)
      acd94(96)=acd94(1)*acd94(96)
      acd94(99)=acd94(95)*acd94(32)
      acd94(100)=acd94(98)*acd94(19)
      acd94(99)=acd94(99)-acd94(100)
      acd94(100)=acd94(1)*acd94(29)
      acd94(101)=acd94(35)*acd94(14)
      acd94(101)=acd94(49)+acd94(101)
      acd94(101)=acd94(12)*acd94(101)
      acd94(102)=acd94(35)*acd94(8)
      acd94(102)=acd94(44)+acd94(102)
      acd94(102)=acd94(3)*acd94(102)
      acd94(100)=acd94(102)+acd94(101)+acd94(100)-acd94(99)
      acd94(100)=acd94(11)*acd94(100)
      acd94(101)=acd94(95)*acd94(31)
      acd94(102)=acd94(98)*acd94(18)
      acd94(101)=acd94(101)-acd94(102)
      acd94(102)=acd94(1)*acd94(28)
      acd94(103)=acd94(35)*acd94(13)
      acd94(103)=acd94(48)+acd94(103)
      acd94(103)=acd94(12)*acd94(103)
      acd94(104)=acd94(35)*acd94(6)
      acd94(104)=acd94(43)+acd94(104)
      acd94(104)=acd94(3)*acd94(104)
      acd94(102)=acd94(104)+acd94(103)+acd94(102)-acd94(101)
      acd94(102)=acd94(9)*acd94(102)
      acd94(103)=acd94(41)*acd94(47)
      acd94(104)=acd94(39)*acd94(46)
      acd94(103)=acd94(103)+acd94(104)
      acd94(104)=acd94(12)*acd94(103)
      acd94(105)=acd94(41)*acd94(42)
      acd94(106)=acd94(39)*acd94(40)
      acd94(105)=acd94(105)+acd94(106)
      acd94(106)=acd94(3)*acd94(105)
      acd94(91)=acd94(91)+acd94(102)+acd94(100)+acd94(106)+acd94(96)+acd94(104)
      acd94(85)=ninjaP*acd94(85)
      acd94(96)=acd94(34)*acd94(90)
      acd94(100)=acd94(33)*acd94(92)
      acd94(102)=acd94(59)*acd94(73)
      acd94(104)=acd94(57)*acd94(72)
      acd94(106)=acd94(55)*acd94(71)
      acd94(107)=acd94(53)*acd94(70)
      acd94(108)=acd94(52)*acd94(69)
      acd94(109)=acd94(50)*acd94(68)
      acd94(110)=acd94(17)*acd94(64)
      acd94(111)=acd94(61)+acd94(62)
      acd94(112)=-acd94(30)*acd94(111)
      acd94(113)=acd94(60)*acd94(27)
      acd94(85)=acd94(113)+acd94(112)+acd94(110)+acd94(109)+acd94(108)+acd94(10&
      &7)+acd94(106)+acd94(104)+acd94(76)+acd94(102)+acd94(100)+acd94(96)+acd94&
      &(85)
      acd94(85)=acd94(4)*acd94(85)
      acd94(89)=acd94(35)*acd94(89)
      acd94(88)=ninjaP*acd94(88)
      acd94(94)=acd94(35)*acd94(94)
      acd94(96)=acd94(19)*acd94(64)
      acd94(100)=-acd94(32)*acd94(111)
      acd94(102)=acd94(60)*acd94(29)
      acd94(104)=acd94(34)*acd94(49)
      acd94(106)=acd94(33)*acd94(44)
      acd94(88)=acd94(94)+acd94(106)+acd94(104)+acd94(102)+acd94(100)+acd94(83)&
      &+acd94(96)+acd94(88)
      acd94(88)=acd94(11)*acd94(88)
      acd94(87)=ninjaP*acd94(87)
      acd94(94)=acd94(35)*acd94(97)
      acd94(96)=acd94(18)*acd94(64)
      acd94(97)=-acd94(31)*acd94(111)
      acd94(100)=acd94(60)*acd94(28)
      acd94(102)=acd94(34)*acd94(48)
      acd94(104)=acd94(33)*acd94(43)
      acd94(87)=acd94(94)+acd94(104)+acd94(102)+acd94(100)+acd94(97)+acd94(82)+&
      &acd94(96)+acd94(87)
      acd94(87)=acd94(9)*acd94(87)
      acd94(94)=ninjaP+acd94(64)
      acd94(94)=acd94(2)*acd94(94)
      acd94(96)=acd94(25)*acd94(63)
      acd94(97)=-acd94(22)*acd94(111)
      acd94(100)=acd94(60)*acd94(20)
      acd94(102)=acd94(37)*acd94(29)
      acd94(104)=acd94(36)*acd94(28)
      acd94(94)=acd94(104)+acd94(102)+2.0_ki*acd94(100)+acd94(97)+acd94(65)+acd&
      &94(96)+acd94(94)
      acd94(94)=acd94(1)*acd94(94)
      acd94(90)=acd94(35)*acd94(90)
      acd94(96)=acd94(47)*acd94(70)
      acd94(97)=acd94(46)*acd94(68)
      acd94(100)=acd94(37)*acd94(49)
      acd94(102)=acd94(36)*acd94(48)
      acd94(90)=acd94(90)+acd94(102)+acd94(100)+acd94(97)+acd94(75)+acd94(96)
      acd94(90)=acd94(12)*acd94(90)
      acd94(92)=acd94(35)*acd94(92)
      acd94(96)=acd94(42)*acd94(70)
      acd94(97)=acd94(40)*acd94(68)
      acd94(100)=acd94(37)*acd94(44)
      acd94(102)=acd94(36)*acd94(43)
      acd94(92)=acd94(92)+acd94(102)+acd94(100)+acd94(97)+acd94(74)+acd94(96)
      acd94(92)=acd94(3)*acd94(92)
      acd94(96)=acd94(60)*acd94(22)
      acd94(96)=acd94(96)-acd94(66)
      acd94(95)=-acd94(96)*acd94(95)
      acd94(96)=acd94(60)*acd94(2)
      acd94(96)=acd94(67)+acd94(96)
      acd94(96)=acd94(96)*acd94(98)
      acd94(97)=acd94(34)*acd94(103)
      acd94(98)=acd94(33)*acd94(105)
      acd94(99)=-acd94(37)*acd94(99)
      acd94(100)=-acd94(36)*acd94(101)
      acd94(101)=acd94(58)*acd94(84)
      acd94(102)=acd94(56)*acd94(81)
      acd94(103)=acd94(54)*acd94(80)
      acd94(104)=acd94(51)*acd94(78)
      acd94(105)=acd94(41)*acd94(79)
      acd94(106)=acd94(39)*acd94(77)
      acd94(93)=acd94(60)*acd94(93)
      acd94(85)=acd94(85)+acd94(87)+acd94(88)+acd94(92)+acd94(90)+acd94(89)+acd&
      &94(94)+acd94(100)+acd94(99)+acd94(98)+acd94(97)+acd94(96)+acd94(93)+acd9&
      &4(106)+acd94(105)+acd94(104)+acd94(103)+acd94(101)+acd94(102)+acd94(95)
      brack(ninjaidxt1mu0)=acd94(91)
      brack(ninjaidxt0mu0)=acd94(85)
      brack(ninjaidxt0mu2)=acd94(86)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d94h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd94h7
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
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d94h7l131