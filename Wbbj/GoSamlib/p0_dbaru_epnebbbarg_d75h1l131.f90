module     p0_dbaru_epnebbbarg_d75h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d75h1l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd75h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd75
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(104) :: acd75
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd75(1)=dotproduct(k2,ninjaE3)
      acd75(2)=dotproduct(ninjaE3,spvak4k3)
      acd75(3)=abb75(63)
      acd75(4)=dotproduct(l6,ninjaE3)
      acd75(5)=abb75(161)
      acd75(6)=dotproduct(k7,ninjaE3)
      acd75(7)=dotproduct(ninjaE3,spvak1k2)
      acd75(8)=abb75(14)
      acd75(9)=dotproduct(ninjaE3,spvak2k7)
      acd75(10)=abb75(25)
      acd75(11)=dotproduct(ninjaE3,spvak1l5)
      acd75(12)=abb75(52)
      acd75(13)=dotproduct(ninjaE3,spval6k7)
      acd75(14)=abb75(100)
      acd75(15)=dotproduct(ninjaE3,spvak1k7)
      acd75(16)=abb75(53)
      acd75(17)=dotproduct(ninjaE3,spvak1l6)
      acd75(18)=abb75(64)
      acd75(19)=abb75(65)
      acd75(20)=abb75(50)
      acd75(21)=abb75(12)
      acd75(22)=dotproduct(ninjaE3,spvak2l6)
      acd75(23)=abb75(17)
      acd75(24)=dotproduct(ninjaE3,spvak2l5)
      acd75(25)=abb75(23)
      acd75(26)=abb75(61)
      acd75(27)=dotproduct(ninjaE3,spval6l5)
      acd75(28)=abb75(80)
      acd75(29)=abb75(74)
      acd75(30)=abb75(78)
      acd75(31)=dotproduct(ninjaE3,spval6k2)
      acd75(32)=dotproduct(k2,ninjaA)
      acd75(33)=dotproduct(ninjaA,spvak4k3)
      acd75(34)=abb75(140)
      acd75(35)=dotproduct(l6,ninjaA)
      acd75(36)=abb75(47)
      acd75(37)=dotproduct(k7,ninjaA)
      acd75(38)=dotproduct(ninjaA,ninjaE3)
      acd75(39)=abb75(118)
      acd75(40)=dotproduct(ninjaA,spvak1k2)
      acd75(41)=dotproduct(ninjaA,spvak2k7)
      acd75(42)=dotproduct(ninjaA,spvak1l5)
      acd75(43)=dotproduct(ninjaA,spval6k7)
      acd75(44)=dotproduct(ninjaA,spvak1k7)
      acd75(45)=dotproduct(ninjaA,spvak1l6)
      acd75(46)=abb75(10)
      acd75(47)=abb75(31)
      acd75(48)=abb75(21)
      acd75(49)=dotproduct(ninjaE3,spvak2k3)
      acd75(50)=abb75(34)
      acd75(51)=dotproduct(ninjaE3,spvak1k3)
      acd75(52)=abb75(88)
      acd75(53)=abb75(68)
      acd75(54)=abb75(143)
      acd75(55)=dotproduct(l5,ninjaE3)
      acd75(56)=abb75(157)
      acd75(57)=abb75(130)
      acd75(58)=abb75(49)
      acd75(59)=abb75(182)
      acd75(60)=abb75(33)
      acd75(61)=abb75(38)
      acd75(62)=abb75(57)
      acd75(63)=abb75(89)
      acd75(64)=abb75(136)
      acd75(65)=dotproduct(ninjaA,spvak2l6)
      acd75(66)=dotproduct(ninjaA,spvak2l5)
      acd75(67)=dotproduct(ninjaA,spval6k2)
      acd75(68)=dotproduct(ninjaA,spval6l5)
      acd75(69)=abb75(11)
      acd75(70)=abb75(60)
      acd75(71)=abb75(13)
      acd75(72)=abb75(18)
      acd75(73)=abb75(29)
      acd75(74)=abb75(55)
      acd75(75)=abb75(56)
      acd75(76)=abb75(46)
      acd75(77)=abb75(16)
      acd75(78)=abb75(59)
      acd75(79)=abb75(81)
      acd75(80)=abb75(20)
      acd75(81)=abb75(30)
      acd75(82)=abb75(155)
      acd75(83)=abb75(95)
      acd75(84)=abb75(37)
      acd75(85)=abb75(19)
      acd75(86)=abb75(94)
      acd75(87)=abb75(82)
      acd75(88)=abb75(27)
      acd75(89)=acd75(22)*acd75(23)
      acd75(90)=acd75(24)*acd75(25)
      acd75(89)=acd75(89)+acd75(90)
      acd75(90)=acd75(28)*acd75(27)
      acd75(91)=acd75(4)+acd75(6)
      acd75(92)=acd75(91)*acd75(19)
      acd75(93)=acd75(13)*acd75(26)
      acd75(94)=acd75(9)*acd75(21)
      acd75(90)=acd75(90)+acd75(93)+acd75(89)+acd75(92)+acd75(94)
      acd75(92)=acd75(7)*acd75(90)
      acd75(93)=acd75(28)*acd75(31)
      acd75(94)=acd75(91)*acd75(20)
      acd75(95)=acd75(13)*acd75(30)
      acd75(96)=acd75(9)*acd75(29)
      acd75(93)=-acd75(94)-acd75(93)+acd75(95)+acd75(96)
      acd75(94)=acd75(11)*acd75(93)
      acd75(95)=acd75(18)*acd75(17)
      acd75(96)=acd75(16)*acd75(15)
      acd75(95)=acd75(95)+acd75(96)
      acd75(96)=-acd75(5)*acd75(91)
      acd75(97)=acd75(13)*acd75(14)
      acd75(98)=acd75(9)*acd75(10)
      acd75(96)=acd75(98)+acd75(97)+acd75(95)+acd75(96)
      acd75(97)=acd75(11)*acd75(12)
      acd75(98)=acd75(7)*acd75(8)
      acd75(99)=acd75(1)*acd75(3)
      acd75(97)=acd75(99)+acd75(98)+acd75(97)+acd75(96)
      acd75(97)=acd75(1)*acd75(97)
      acd75(92)=acd75(97)+acd75(94)+acd75(92)
      acd75(92)=acd75(2)*acd75(92)
      acd75(94)=acd75(18)*acd75(45)
      acd75(97)=acd75(16)*acd75(44)
      acd75(98)=acd75(14)*acd75(43)
      acd75(99)=acd75(10)*acd75(41)
      acd75(100)=acd75(42)*acd75(12)
      acd75(101)=acd75(40)*acd75(8)
      acd75(102)=acd75(35)+acd75(37)
      acd75(103)=-acd75(5)*acd75(102)
      acd75(104)=acd75(32)*acd75(3)
      acd75(94)=2.0_ki*acd75(104)+acd75(103)+acd75(101)+acd75(100)+acd75(99)+ac&
      &d75(98)+acd75(97)+acd75(48)+acd75(94)
      acd75(94)=acd75(1)*acd75(94)
      acd75(97)=acd75(26)*acd75(43)
      acd75(98)=acd75(25)*acd75(66)
      acd75(99)=acd75(23)*acd75(65)
      acd75(100)=acd75(21)*acd75(41)
      acd75(101)=acd75(28)*acd75(68)
      acd75(103)=acd75(19)*acd75(102)
      acd75(104)=acd75(32)*acd75(8)
      acd75(97)=acd75(104)+acd75(103)+acd75(101)+acd75(100)+acd75(99)+acd75(98)&
      &+acd75(70)+acd75(97)
      acd75(97)=acd75(7)*acd75(97)
      acd75(98)=acd75(30)*acd75(43)
      acd75(99)=acd75(29)*acd75(41)
      acd75(100)=-acd75(28)*acd75(67)
      acd75(101)=-acd75(20)*acd75(102)
      acd75(102)=acd75(32)*acd75(12)
      acd75(98)=acd75(102)+acd75(101)+acd75(100)+acd75(99)+acd75(81)+acd75(98)
      acd75(98)=acd75(11)*acd75(98)
      acd75(99)=acd75(20)*acd75(42)
      acd75(100)=acd75(19)*acd75(40)
      acd75(101)=acd75(32)*acd75(5)
      acd75(99)=-acd75(59)-acd75(99)+acd75(100)-acd75(101)
      acd75(99)=acd75(99)*acd75(91)
      acd75(100)=acd75(42)*acd75(30)
      acd75(101)=acd75(40)*acd75(26)
      acd75(102)=acd75(32)*acd75(14)
      acd75(100)=acd75(102)+acd75(101)+acd75(82)+acd75(100)
      acd75(100)=acd75(13)*acd75(100)
      acd75(101)=acd75(42)*acd75(29)
      acd75(102)=acd75(40)*acd75(21)
      acd75(103)=acd75(32)*acd75(10)
      acd75(101)=acd75(103)+acd75(102)+acd75(76)+acd75(101)
      acd75(101)=acd75(9)*acd75(101)
      acd75(89)=acd75(40)*acd75(89)
      acd75(102)=-acd75(42)*acd75(31)
      acd75(103)=acd75(40)*acd75(27)
      acd75(102)=acd75(102)+acd75(103)
      acd75(102)=acd75(28)*acd75(102)
      acd75(95)=acd75(32)*acd75(95)
      acd75(103)=acd75(55)*acd75(56)
      acd75(104)=acd75(24)*acd75(80)
      acd75(89)=acd75(94)+acd75(97)+acd75(98)+acd75(101)+acd75(100)+acd75(95)+a&
      &cd75(102)+acd75(89)+acd75(103)+acd75(104)+acd75(99)
      acd75(89)=acd75(2)*acd75(89)
      acd75(94)=acd75(33)*acd75(96)
      acd75(95)=acd75(36)*acd75(91)
      acd75(96)=acd75(49)*acd75(50)
      acd75(97)=2.0_ki*acd75(38)
      acd75(98)=acd75(39)*acd75(97)
      acd75(99)=acd75(51)*acd75(52)
      acd75(100)=acd75(13)*acd75(54)
      acd75(101)=acd75(9)*acd75(47)
      acd75(102)=acd75(33)*acd75(12)
      acd75(102)=acd75(53)+acd75(102)
      acd75(102)=acd75(11)*acd75(102)
      acd75(103)=acd75(33)*acd75(8)
      acd75(103)=acd75(46)+acd75(103)
      acd75(103)=acd75(7)*acd75(103)
      acd75(104)=acd75(33)*acd75(3)
      acd75(104)=acd75(34)+acd75(104)
      acd75(104)=acd75(1)*acd75(104)
      acd75(94)=acd75(104)+acd75(103)+acd75(102)+acd75(94)+acd75(101)+acd75(100&
      &)+acd75(99)+acd75(96)+acd75(98)+acd75(95)
      acd75(94)=acd75(1)*acd75(94)
      acd75(90)=acd75(33)*acd75(90)
      acd75(95)=acd75(58)*acd75(91)
      acd75(96)=acd75(31)*acd75(74)
      acd75(98)=acd75(27)*acd75(75)
      acd75(99)=acd75(22)*acd75(71)
      acd75(100)=acd75(24)*acd75(72)
      acd75(101)=acd75(13)*acd75(73)
      acd75(102)=acd75(9)*acd75(69)
      acd75(90)=acd75(90)+acd75(102)+acd75(101)+acd75(100)+acd75(99)+acd75(96)+&
      &acd75(98)+acd75(95)
      acd75(90)=acd75(7)*acd75(90)
      acd75(95)=acd75(31)*acd75(86)
      acd75(96)=acd75(27)*acd75(87)
      acd75(98)=acd75(22)*acd75(83)
      acd75(99)=acd75(63)*acd75(97)
      acd75(100)=acd75(24)*acd75(85)
      acd75(95)=acd75(100)+acd75(99)+acd75(98)+acd75(95)+acd75(96)
      acd75(95)=acd75(51)*acd75(95)
      acd75(93)=acd75(33)*acd75(93)
      acd75(96)=-acd75(61)*acd75(91)
      acd75(98)=acd75(13)*acd75(88)
      acd75(99)=acd75(9)*acd75(79)
      acd75(93)=acd75(93)+acd75(99)+acd75(98)+acd75(96)
      acd75(93)=acd75(11)*acd75(93)
      acd75(96)=acd75(49)*acd75(77)
      acd75(98)=acd75(62)*acd75(97)
      acd75(99)=acd75(51)*acd75(78)
      acd75(96)=acd75(99)+acd75(96)+acd75(98)
      acd75(96)=acd75(9)*acd75(96)
      acd75(98)=acd75(49)*acd75(60)
      acd75(99)=acd75(97)*acd75(57)
      acd75(98)=acd75(98)-acd75(99)
      acd75(91)=acd75(98)*acd75(91)
      acd75(98)=acd75(49)*acd75(84)
      acd75(97)=acd75(64)*acd75(97)
      acd75(97)=acd75(98)+acd75(97)
      acd75(97)=acd75(13)*acd75(97)
      acd75(89)=acd75(89)+acd75(94)+acd75(90)+acd75(93)+acd75(96)+acd75(95)+acd&
      &75(97)+acd75(91)
      brack(ninjaidxt1mu0)=acd75(92)
      brack(ninjaidxt0mu0)=acd75(89)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d75h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd75h1
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
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d75h1l131
