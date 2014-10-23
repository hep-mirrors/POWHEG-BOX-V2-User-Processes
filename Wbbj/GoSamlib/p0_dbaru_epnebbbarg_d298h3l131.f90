module     p0_dbaru_epnebbbarg_d298h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d298h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd298h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd298
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd298h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(111) :: acd298
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd298(1)=dotproduct(k2,ninjaE3)
      acd298(2)=dotproduct(ninjaE3,spvak2k7)
      acd298(3)=dotproduct(ninjaE3,spvak4k3)
      acd298(4)=dotproduct(ninjaE3,spvak1l5)
      acd298(5)=abb298(123)
      acd298(6)=dotproduct(ninjaE3,spvak1k2)
      acd298(7)=dotproduct(ninjaE3,spvak2l6)
      acd298(8)=abb298(191)
      acd298(9)=dotproduct(ninjaE3,spvak2l5)
      acd298(10)=abb298(99)
      acd298(11)=dotproduct(k1,ninjaE3)
      acd298(12)=abb298(167)
      acd298(13)=abb298(273)
      acd298(14)=abb298(114)
      acd298(15)=abb298(101)
      acd298(16)=dotproduct(k2,ninjaA)
      acd298(17)=abb298(194)
      acd298(18)=abb298(267)
      acd298(19)=abb298(61)
      acd298(20)=dotproduct(l6,ninjaE3)
      acd298(21)=abb298(183)
      acd298(22)=abb298(266)
      acd298(23)=dotproduct(k7,ninjaE3)
      acd298(24)=abb298(153)
      acd298(25)=abb298(265)
      acd298(26)=dotproduct(ninjaA,ninjaE3)
      acd298(27)=abb298(149)
      acd298(28)=abb298(95)
      acd298(29)=abb298(76)
      acd298(30)=dotproduct(ninjaA,spvak2k7)
      acd298(31)=dotproduct(ninjaA,spvak4k3)
      acd298(32)=dotproduct(ninjaA,spvak1l5)
      acd298(33)=abb298(14)
      acd298(34)=abb298(144)
      acd298(35)=abb298(112)
      acd298(36)=dotproduct(ninjaE3,spvak4l6)
      acd298(37)=abb298(34)
      acd298(38)=dotproduct(ninjaE3,spvak1k3)
      acd298(39)=abb298(110)
      acd298(40)=abb298(137)
      acd298(41)=dotproduct(ninjaE3,spvak2k3)
      acd298(42)=abb298(91)
      acd298(43)=dotproduct(ninjaE3,spvak1l6)
      acd298(44)=abb298(111)
      acd298(45)=dotproduct(ninjaE3,spvak1k7)
      acd298(46)=abb298(119)
      acd298(47)=dotproduct(ninjaE3,spvak7l6)
      acd298(48)=dotproduct(ninjaE3,spval5l6)
      acd298(49)=abb298(278)
      acd298(50)=abb298(98)
      acd298(51)=abb298(132)
      acd298(52)=dotproduct(l5,ninjaE3)
      acd298(53)=abb298(57)
      acd298(54)=abb298(66)
      acd298(55)=abb298(125)
      acd298(56)=abb298(155)
      acd298(57)=abb298(90)
      acd298(58)=abb298(83)
      acd298(59)=abb298(42)
      acd298(60)=abb298(116)
      acd298(61)=abb298(146)
      acd298(62)=abb298(88)
      acd298(63)=abb298(104)
      acd298(64)=dotproduct(ninjaA,spvak1k2)
      acd298(65)=dotproduct(ninjaA,spvak2l6)
      acd298(66)=dotproduct(ninjaA,spvak2l5)
      acd298(67)=abb298(21)
      acd298(68)=abb298(16)
      acd298(69)=abb298(28)
      acd298(70)=abb298(51)
      acd298(71)=abb298(54)
      acd298(72)=dotproduct(ninjaE3,spvak2k1)
      acd298(73)=abb298(62)
      acd298(74)=abb298(129)
      acd298(75)=abb298(41)
      acd298(76)=abb298(138)
      acd298(77)=abb298(134)
      acd298(78)=abb298(117)
      acd298(79)=abb298(50)
      acd298(80)=abb298(148)
      acd298(81)=abb298(145)
      acd298(82)=dotproduct(ninjaE3,spvak7l5)
      acd298(83)=dotproduct(ninjaE3,spvak7k2)
      acd298(84)=abb298(178)
      acd298(85)=abb298(158)
      acd298(86)=abb298(152)
      acd298(87)=abb298(166)
      acd298(88)=abb298(97)
      acd298(89)=abb298(165)
      acd298(90)=dotproduct(ninjaE3,spval6l5)
      acd298(91)=dotproduct(ninjaE3,spval6k2)
      acd298(92)=abb298(106)
      acd298(93)=acd298(6)*acd298(9)
      acd298(94)=-acd298(10)*acd298(93)
      acd298(95)=acd298(7)*acd298(8)
      acd298(96)=-acd298(6)*acd298(95)
      acd298(97)=acd298(1)*acd298(4)*acd298(5)
      acd298(94)=acd298(97)+acd298(94)+acd298(96)
      acd298(94)=acd298(2)*acd298(3)*acd298(94)
      acd298(96)=acd298(48)*acd298(49)
      acd298(97)=acd298(36)*acd298(37)
      acd298(98)=acd298(45)*acd298(46)
      acd298(99)=acd298(20)*acd298(21)
      acd298(100)=acd298(13)*acd298(47)
      acd298(101)=acd298(11)*acd298(12)
      acd298(102)=acd298(38)*acd298(39)
      acd298(103)=acd298(23)*acd298(24)
      acd298(104)=acd298(41)*acd298(42)
      acd298(105)=acd298(43)*acd298(44)
      acd298(106)=2.0_ki*acd298(26)
      acd298(107)=acd298(27)*acd298(106)
      acd298(108)=acd298(5)*acd298(31)
      acd298(108)=acd298(40)+acd298(108)
      acd298(108)=acd298(4)*acd298(108)
      acd298(109)=acd298(6)*acd298(33)
      acd298(110)=acd298(7)*acd298(35)
      acd298(111)=acd298(1)*acd298(17)
      acd298(96)=acd298(111)+acd298(110)+acd298(109)+acd298(108)+acd298(107)+ac&
      &d298(105)+acd298(104)+acd298(103)+acd298(102)+acd298(101)+acd298(100)+ac&
      &d298(99)+acd298(98)+acd298(96)+acd298(97)
      acd298(96)=acd298(1)*acd298(96)
      acd298(97)=-acd298(10)*acd298(66)
      acd298(98)=-acd298(8)*acd298(65)
      acd298(97)=acd298(98)+acd298(68)+acd298(97)
      acd298(97)=acd298(6)*acd298(97)
      acd298(98)=acd298(83)*acd298(84)
      acd298(99)=-acd298(56)*acd298(82)
      acd298(100)=acd298(47)*acd298(81)
      acd298(101)=acd298(43)*acd298(80)
      acd298(102)=acd298(5)*acd298(16)
      acd298(102)=acd298(79)+acd298(102)
      acd298(102)=acd298(4)*acd298(102)
      acd298(103)=-acd298(10)*acd298(64)
      acd298(103)=acd298(78)+acd298(103)
      acd298(103)=acd298(9)*acd298(103)
      acd298(95)=-acd298(64)*acd298(95)
      acd298(104)=acd298(5)*acd298(32)
      acd298(104)=acd298(34)+acd298(104)
      acd298(104)=acd298(1)*acd298(104)
      acd298(95)=acd298(104)+acd298(95)+acd298(97)+acd298(103)+acd298(102)+acd2&
      &98(101)+acd298(100)+acd298(98)+acd298(99)
      acd298(95)=acd298(3)*acd298(95)
      acd298(97)=acd298(45)*acd298(77)
      acd298(98)=acd298(11)*acd298(14)
      acd298(99)=acd298(38)*acd298(85)
      acd298(100)=-acd298(4)*acd298(86)
      acd298(101)=-acd298(8)*acd298(31)
      acd298(101)=acd298(69)+acd298(101)
      acd298(101)=acd298(6)*acd298(101)
      acd298(97)=acd298(101)+acd298(100)+acd298(99)+acd298(97)+acd298(98)
      acd298(97)=acd298(7)*acd298(97)
      acd298(98)=acd298(45)*acd298(76)
      acd298(99)=acd298(11)*acd298(15)
      acd298(100)=acd298(38)*acd298(87)
      acd298(101)=acd298(43)*acd298(86)
      acd298(98)=acd298(101)+acd298(100)+acd298(98)+acd298(99)
      acd298(98)=acd298(9)*acd298(98)
      acd298(99)=acd298(72)*acd298(89)
      acd298(100)=acd298(52)*acd298(55)
      acd298(101)=-acd298(41)*acd298(85)
      acd298(99)=acd298(101)+acd298(99)+acd298(100)
      acd298(99)=acd298(43)*acd298(99)
      acd298(100)=acd298(38)*acd298(59)
      acd298(101)=acd298(41)*acd298(60)
      acd298(102)=acd298(43)*acd298(61)
      acd298(100)=acd298(102)+acd298(100)+acd298(101)
      acd298(100)=acd298(100)*acd298(106)
      acd298(101)=acd298(72)*acd298(73)
      acd298(102)=acd298(41)*acd298(71)
      acd298(103)=-acd298(10)*acd298(31)
      acd298(103)=acd298(70)+acd298(103)
      acd298(103)=acd298(9)*acd298(103)
      acd298(101)=acd298(103)+acd298(101)+acd298(102)
      acd298(101)=acd298(6)*acd298(101)
      acd298(102)=-acd298(43)*acd298(77)
      acd298(103)=-acd298(4)*acd298(76)
      acd298(104)=acd298(6)*acd298(67)
      acd298(102)=acd298(104)+acd298(102)+acd298(103)
      acd298(102)=acd298(2)*acd298(102)
      acd298(103)=acd298(38)*acd298(53)
      acd298(104)=acd298(41)*acd298(54)
      acd298(103)=acd298(103)+acd298(104)
      acd298(103)=acd298(52)*acd298(103)
      acd298(104)=acd298(72)*acd298(88)
      acd298(105)=-acd298(41)*acd298(87)
      acd298(104)=acd298(104)+acd298(105)
      acd298(104)=acd298(4)*acd298(104)
      acd298(95)=acd298(102)+acd298(95)+acd298(96)+acd298(97)+acd298(101)+acd29&
      &8(98)+acd298(104)+acd298(100)+acd298(99)+acd298(103)
      acd298(95)=acd298(2)*acd298(95)
      acd298(96)=acd298(20)*acd298(22)
      acd298(97)=acd298(23)*acd298(25)
      acd298(98)=acd298(28)*acd298(106)
      acd298(99)=acd298(5)*acd298(30)
      acd298(99)=acd298(51)+acd298(99)
      acd298(99)=acd298(4)*acd298(99)
      acd298(100)=acd298(7)*acd298(50)
      acd298(101)=acd298(1)*acd298(18)
      acd298(96)=acd298(101)+acd298(100)+acd298(99)+acd298(98)+acd298(96)+acd29&
      &8(97)
      acd298(96)=acd298(1)*acd298(96)
      acd298(97)=acd298(91)*acd298(92)
      acd298(98)=-acd298(63)*acd298(90)
      acd298(99)=acd298(23)*acd298(57)
      acd298(100)=acd298(62)*acd298(106)
      acd298(101)=-acd298(8)*acd298(30)
      acd298(101)=acd298(74)+acd298(101)
      acd298(101)=acd298(6)*acd298(101)
      acd298(97)=acd298(101)+acd298(100)+acd298(99)+acd298(97)+acd298(98)
      acd298(97)=acd298(7)*acd298(97)
      acd298(98)=acd298(20)*acd298(56)
      acd298(99)=acd298(23)*acd298(58)
      acd298(100)=acd298(63)*acd298(106)
      acd298(98)=acd298(100)+acd298(98)+acd298(99)
      acd298(98)=acd298(9)*acd298(98)
      acd298(99)=-acd298(10)*acd298(30)
      acd298(99)=acd298(75)+acd298(99)
      acd298(93)=acd298(99)*acd298(93)
      acd298(93)=acd298(96)+acd298(97)+acd298(98)+acd298(93)
      acd298(93)=acd298(3)*acd298(93)
      acd298(96)=-acd298(23)-acd298(20)+acd298(11)
      acd298(96)=acd298(13)*acd298(96)
      acd298(97)=acd298(29)*acd298(106)
      acd298(98)=acd298(1)*acd298(19)
      acd298(96)=acd298(98)+acd298(97)+acd298(96)
      acd298(96)=acd298(1)*acd298(7)*acd298(96)
      acd298(93)=acd298(95)+acd298(96)+acd298(93)
      brack(ninjaidxt1mu0)=acd298(94)
      brack(ninjaidxt0mu0)=acd298(93)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d298h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd298h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k5
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d298h3l131
