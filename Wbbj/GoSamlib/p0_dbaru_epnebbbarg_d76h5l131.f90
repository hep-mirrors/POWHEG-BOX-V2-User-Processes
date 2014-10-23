module     p0_dbaru_epnebbbarg_d76h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d76h5l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd76h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd76
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd76h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(117) :: acd76
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd76(1)=dotproduct(k2,ninjaE3)
      acd76(2)=dotproduct(ninjaE3,spvak1k2)
      acd76(3)=dotproduct(ninjaE3,spvak4k3)
      acd76(4)=abb76(20)
      acd76(5)=dotproduct(ninjaE3,spvak7k2)
      acd76(6)=abb76(43)
      acd76(7)=dotproduct(ninjaE3,spval6l5)
      acd76(8)=abb76(91)
      acd76(9)=dotproduct(ninjaE3,spvak7l5)
      acd76(10)=dotproduct(ninjaE3,spval6k2)
      acd76(11)=abb76(42)
      acd76(12)=dotproduct(ninjaE3,spvak1l5)
      acd76(13)=dotproduct(k1,ninjaE3)
      acd76(14)=abb76(146)
      acd76(15)=abb76(160)
      acd76(16)=dotproduct(k2,ninjaA)
      acd76(17)=abb76(113)
      acd76(18)=dotproduct(ninjaA,spvak1k2)
      acd76(19)=dotproduct(ninjaA,spvak4k3)
      acd76(20)=dotproduct(ninjaA,spvak7k2)
      acd76(21)=abb76(21)
      acd76(22)=abb76(87)
      acd76(23)=abb76(51)
      acd76(24)=abb76(112)
      acd76(25)=dotproduct(ninjaE3,spvak4k2)
      acd76(26)=abb76(28)
      acd76(27)=dotproduct(ninjaE3,spvak1k3)
      acd76(28)=abb76(88)
      acd76(29)=dotproduct(ninjaE3,spval6k3)
      acd76(30)=abb76(154)
      acd76(31)=dotproduct(ninjaE3,spvak7k3)
      acd76(32)=abb76(82)
      acd76(33)=dotproduct(ninjaE3,spval5k2)
      acd76(34)=abb76(163)
      acd76(35)=dotproduct(l5,ninjaE3)
      acd76(36)=abb76(17)
      acd76(37)=abb76(108)
      acd76(38)=abb76(86)
      acd76(39)=abb76(153)
      acd76(40)=abb76(124)
      acd76(41)=dotproduct(l6,ninjaE3)
      acd76(42)=abb76(13)
      acd76(43)=abb76(107)
      acd76(44)=abb76(46)
      acd76(45)=abb76(48)
      acd76(46)=dotproduct(k7,ninjaE3)
      acd76(47)=abb76(145)
      acd76(48)=abb76(41)
      acd76(49)=dotproduct(ninjaA,ninjaE3)
      acd76(50)=abb76(22)
      acd76(51)=abb76(140)
      acd76(52)=abb76(77)
      acd76(53)=abb76(65)
      acd76(54)=abb76(129)
      acd76(55)=dotproduct(ninjaA,spvak7l5)
      acd76(56)=dotproduct(ninjaA,spval6l5)
      acd76(57)=dotproduct(ninjaA,spval6k2)
      acd76(58)=dotproduct(ninjaA,spvak1l5)
      acd76(59)=dotproduct(ninjaE3,spval6k1)
      acd76(60)=abb76(27)
      acd76(61)=abb76(63)
      acd76(62)=abb76(19)
      acd76(63)=dotproduct(ninjaE3,spvak2k7)
      acd76(64)=abb76(30)
      acd76(65)=dotproduct(ninjaE3,spvak2l6)
      acd76(66)=abb76(31)
      acd76(67)=dotproduct(ninjaE3,spvak2k3)
      acd76(68)=abb76(32)
      acd76(69)=dotproduct(ninjaE3,spvak2k1)
      acd76(70)=abb76(33)
      acd76(71)=abb76(89)
      acd76(72)=dotproduct(ninjaE3,spval6k7)
      acd76(73)=abb76(76)
      acd76(74)=abb76(15)
      acd76(75)=abb76(35)
      acd76(76)=abb76(67)
      acd76(77)=abb76(85)
      acd76(78)=abb76(151)
      acd76(79)=abb76(149)
      acd76(80)=abb76(143)
      acd76(81)=dotproduct(ninjaE3,spvak7k1)
      acd76(82)=abb76(45)
      acd76(83)=abb76(58)
      acd76(84)=dotproduct(ninjaE3,spvak1k7)
      acd76(85)=abb76(70)
      acd76(86)=dotproduct(ninjaE3,spvak1l6)
      acd76(87)=abb76(80)
      acd76(88)=dotproduct(ninjaE3,spvak7l6)
      acd76(89)=abb76(147)
      acd76(90)=abb76(16)
      acd76(91)=abb76(25)
      acd76(92)=abb76(69)
      acd76(93)=abb76(81)
      acd76(94)=abb76(155)
      acd76(95)=abb76(161)
      acd76(96)=abb76(49)
      acd76(97)=abb76(62)
      acd76(98)=abb76(54)
      acd76(99)=abb76(57)
      acd76(100)=abb76(144)
      acd76(101)=acd76(12)*acd76(8)
      acd76(102)=acd76(9)*acd76(11)
      acd76(101)=acd76(101)+acd76(102)
      acd76(101)=acd76(10)*acd76(101)
      acd76(102)=acd76(1)*acd76(6)
      acd76(103)=-acd76(7)*acd76(11)
      acd76(102)=acd76(102)+acd76(103)
      acd76(102)=acd76(5)*acd76(102)
      acd76(103)=acd76(1)*acd76(4)
      acd76(104)=-acd76(7)*acd76(8)
      acd76(103)=acd76(103)+acd76(104)
      acd76(103)=acd76(2)*acd76(103)
      acd76(101)=acd76(103)+acd76(101)+acd76(102)
      acd76(101)=acd76(3)*acd76(101)
      acd76(102)=acd76(69)*acd76(99)
      acd76(103)=acd76(67)*acd76(98)
      acd76(104)=acd76(65)*acd76(97)
      acd76(105)=acd76(63)*acd76(96)
      acd76(106)=acd76(72)*acd76(100)
      acd76(107)=acd76(59)*acd76(75)
      acd76(108)=acd76(41)*acd76(44)
      acd76(109)=2.0_ki*acd76(49)
      acd76(110)=acd76(51)*acd76(109)
      acd76(111)=acd76(35)*acd76(37)
      acd76(112)=-acd76(29)*acd76(94)
      acd76(113)=acd76(19)*acd76(6)
      acd76(113)=acd76(24)+acd76(113)
      acd76(113)=acd76(1)*acd76(113)
      acd76(114)=acd76(11)*acd76(19)
      acd76(114)=acd76(114)-acd76(78)
      acd76(115)=-acd76(7)*acd76(114)
      acd76(102)=acd76(115)+acd76(113)+acd76(112)+acd76(111)+acd76(110)+acd76(1&
      &08)+acd76(107)+acd76(106)+acd76(105)+acd76(104)+acd76(102)+acd76(103)
      acd76(102)=acd76(5)*acd76(102)
      acd76(103)=acd76(69)*acd76(70)
      acd76(104)=acd76(67)*acd76(68)
      acd76(105)=acd76(65)*acd76(66)
      acd76(106)=acd76(63)*acd76(64)
      acd76(107)=acd76(72)*acd76(73)
      acd76(108)=acd76(59)*acd76(60)
      acd76(110)=acd76(41)*acd76(42)
      acd76(111)=acd76(50)*acd76(109)
      acd76(112)=acd76(35)*acd76(36)
      acd76(113)=acd76(29)*acd76(71)
      acd76(115)=acd76(19)*acd76(4)
      acd76(115)=acd76(21)+acd76(115)
      acd76(115)=acd76(1)*acd76(115)
      acd76(116)=acd76(8)*acd76(19)
      acd76(116)=acd76(116)-acd76(61)
      acd76(117)=-acd76(7)*acd76(116)
      acd76(103)=acd76(117)+acd76(115)+acd76(113)+acd76(112)+acd76(111)+acd76(1&
      &10)+acd76(108)+acd76(107)+acd76(106)+acd76(105)+acd76(103)+acd76(104)
      acd76(103)=acd76(2)*acd76(103)
      acd76(104)=acd76(88)*acd76(95)
      acd76(105)=acd76(86)*acd76(93)
      acd76(106)=-acd76(75)*acd76(81)
      acd76(107)=-acd76(73)*acd76(84)
      acd76(108)=acd76(46)*acd76(48)
      acd76(110)=acd76(13)*acd76(15)
      acd76(111)=acd76(31)*acd76(94)
      acd76(112)=-acd76(27)*acd76(71)
      acd76(113)=acd76(12)*acd76(116)
      acd76(114)=acd76(9)*acd76(114)
      acd76(115)=acd76(1)*acd76(23)
      acd76(104)=acd76(115)+acd76(114)+acd76(113)+acd76(112)+acd76(111)+acd76(1&
      &10)+acd76(108)+acd76(107)+acd76(106)+acd76(104)+acd76(105)
      acd76(104)=acd76(10)*acd76(104)
      acd76(105)=acd76(88)*acd76(89)
      acd76(106)=acd76(86)*acd76(87)
      acd76(107)=-acd76(84)*acd76(85)
      acd76(108)=-acd76(74)*acd76(81)
      acd76(110)=acd76(46)*acd76(47)
      acd76(111)=acd76(13)*acd76(14)
      acd76(112)=-acd76(31)*acd76(79)
      acd76(113)=-acd76(27)*acd76(83)
      acd76(105)=acd76(113)+acd76(112)+acd76(111)+acd76(110)+acd76(108)+acd76(1&
      &07)+acd76(105)+acd76(106)
      acd76(105)=acd76(7)*acd76(105)
      acd76(106)=acd76(6)*acd76(20)
      acd76(107)=acd76(4)*acd76(18)
      acd76(106)=acd76(107)+acd76(22)+acd76(106)
      acd76(106)=acd76(1)*acd76(106)
      acd76(107)=-acd76(11)*acd76(20)
      acd76(108)=-acd76(8)*acd76(18)
      acd76(107)=acd76(108)+acd76(82)+acd76(107)
      acd76(107)=acd76(7)*acd76(107)
      acd76(108)=acd76(11)*acd76(55)
      acd76(110)=acd76(8)*acd76(58)
      acd76(108)=acd76(110)+acd76(90)+acd76(108)
      acd76(108)=acd76(10)*acd76(108)
      acd76(110)=acd76(6)*acd76(16)
      acd76(111)=-acd76(11)*acd76(56)
      acd76(110)=acd76(111)+acd76(91)+acd76(110)
      acd76(110)=acd76(5)*acd76(110)
      acd76(111)=acd76(4)*acd76(16)
      acd76(112)=-acd76(8)*acd76(56)
      acd76(111)=acd76(112)+acd76(62)+acd76(111)
      acd76(111)=acd76(2)*acd76(111)
      acd76(112)=acd76(8)*acd76(57)
      acd76(112)=acd76(92)+acd76(112)
      acd76(112)=acd76(12)*acd76(112)
      acd76(113)=acd76(11)*acd76(57)
      acd76(113)=acd76(77)+acd76(113)
      acd76(113)=acd76(9)*acd76(113)
      acd76(106)=acd76(111)+acd76(110)+acd76(108)+acd76(107)+acd76(106)+acd76(1&
      &12)+acd76(113)
      acd76(106)=acd76(3)*acd76(106)
      acd76(107)=acd76(33)*acd76(34)
      acd76(108)=acd76(25)*acd76(26)
      acd76(110)=acd76(31)*acd76(32)
      acd76(111)=acd76(27)*acd76(28)
      acd76(112)=acd76(29)*acd76(30)
      acd76(113)=acd76(1)*acd76(17)
      acd76(107)=acd76(113)+acd76(112)+acd76(111)+acd76(110)+acd76(107)+acd76(1&
      &08)
      acd76(107)=acd76(1)*acd76(107)
      acd76(108)=acd76(72)*acd76(85)
      acd76(110)=acd76(59)*acd76(76)
      acd76(111)=acd76(41)*acd76(45)
      acd76(112)=acd76(29)*acd76(83)
      acd76(108)=acd76(112)+acd76(111)+acd76(108)+acd76(110)
      acd76(108)=acd76(12)*acd76(108)
      acd76(110)=acd76(72)*acd76(80)
      acd76(111)=acd76(59)*acd76(74)
      acd76(112)=acd76(41)*acd76(43)
      acd76(113)=acd76(29)*acd76(79)
      acd76(110)=acd76(113)+acd76(112)+acd76(110)+acd76(111)
      acd76(110)=acd76(9)*acd76(110)
      acd76(111)=acd76(54)*acd76(109)
      acd76(112)=acd76(35)*acd76(40)
      acd76(111)=acd76(111)+acd76(112)
      acd76(111)=acd76(31)*acd76(111)
      acd76(112)=acd76(52)*acd76(109)
      acd76(113)=acd76(35)*acd76(38)
      acd76(112)=acd76(112)+acd76(113)
      acd76(112)=acd76(27)*acd76(112)
      acd76(109)=acd76(53)*acd76(109)
      acd76(113)=acd76(35)*acd76(39)
      acd76(109)=acd76(109)+acd76(113)
      acd76(109)=acd76(29)*acd76(109)
      acd76(102)=acd76(106)+acd76(103)+acd76(102)+acd76(104)+acd76(105)+acd76(1&
      &07)+acd76(110)+acd76(108)+acd76(109)+acd76(111)+acd76(112)
      brack(ninjaidxt1mu0)=acd76(101)
      brack(ninjaidxt0mu0)=acd76(102)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d76h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd76h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k5
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d76h5l131
