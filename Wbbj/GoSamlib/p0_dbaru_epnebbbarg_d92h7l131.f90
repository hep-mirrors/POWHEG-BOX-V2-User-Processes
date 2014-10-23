module     p0_dbaru_epnebbbarg_d92h7l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d92h7l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd92h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd92
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd92h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(108) :: acd92
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd92(1)=dotproduct(k1,ninjaE3)
      acd92(2)=dotproduct(ninjaE3,spvak2l5)
      acd92(3)=abb92(15)
      acd92(4)=dotproduct(ninjaE3,spvak7l6)
      acd92(5)=abb92(34)
      acd92(6)=dotproduct(ninjaE3,spvak7l5)
      acd92(7)=abb92(47)
      acd92(8)=dotproduct(k2,ninjaE3)
      acd92(9)=dotproduct(l5,ninjaE3)
      acd92(10)=abb92(107)
      acd92(11)=dotproduct(l6,ninjaE3)
      acd92(12)=abb92(96)
      acd92(13)=abb92(16)
      acd92(14)=dotproduct(ninjaE3,spvak1l5)
      acd92(15)=abb92(28)
      acd92(16)=dotproduct(ninjaE3,spvak1l6)
      acd92(17)=abb92(39)
      acd92(18)=dotproduct(ninjaE3,spval5l6)
      acd92(19)=abb92(69)
      acd92(20)=dotproduct(ninjaE3,spval6l5)
      acd92(21)=abb92(80)
      acd92(22)=abb92(38)
      acd92(23)=abb92(49)
      acd92(24)=dotproduct(k3,ninjaE3)
      acd92(25)=abb92(50)
      acd92(26)=dotproduct(k4,ninjaE3)
      acd92(27)=dotproduct(ninjaE3,spvak4k2)
      acd92(28)=abb92(19)
      acd92(29)=dotproduct(ninjaE3,spvak7k2)
      acd92(30)=abb92(78)
      acd92(31)=dotproduct(ninjaE3,spvak4k3)
      acd92(32)=abb92(43)
      acd92(33)=abb92(17)
      acd92(34)=abb92(56)
      acd92(35)=abb92(30)
      acd92(36)=abb92(36)
      acd92(37)=abb92(22)
      acd92(38)=abb92(55)
      acd92(39)=abb92(32)
      acd92(40)=abb92(29)
      acd92(41)=abb92(26)
      acd92(42)=abb92(18)
      acd92(43)=abb92(21)
      acd92(44)=abb92(73)
      acd92(45)=abb92(85)
      acd92(46)=dotproduct(ninjaE3,spvak2l6)
      acd92(47)=abb92(44)
      acd92(48)=abb92(54)
      acd92(49)=abb92(37)
      acd92(50)=abb92(20)
      acd92(51)=abb92(58)
      acd92(52)=abb92(35)
      acd92(53)=dotproduct(k1,ninjaA)
      acd92(54)=dotproduct(ninjaA,spvak2l5)
      acd92(55)=dotproduct(ninjaA,spvak7l6)
      acd92(56)=dotproduct(ninjaA,spvak7l5)
      acd92(57)=abb92(52)
      acd92(58)=dotproduct(k2,ninjaA)
      acd92(59)=dotproduct(l5,ninjaA)
      acd92(60)=dotproduct(l6,ninjaA)
      acd92(61)=dotproduct(ninjaA,spvak1l5)
      acd92(62)=dotproduct(ninjaA,spvak1l6)
      acd92(63)=dotproduct(ninjaA,spval5l6)
      acd92(64)=dotproduct(ninjaA,spval6l5)
      acd92(65)=abb92(46)
      acd92(66)=dotproduct(k3,ninjaA)
      acd92(67)=abb92(93)
      acd92(68)=dotproduct(k4,ninjaA)
      acd92(69)=dotproduct(ninjaA,spvak4k2)
      acd92(70)=dotproduct(ninjaA,spvak7k2)
      acd92(71)=dotproduct(ninjaA,spvak4k3)
      acd92(72)=abb92(77)
      acd92(73)=dotproduct(ninjaA,ninjaE3)
      acd92(74)=abb92(31)
      acd92(75)=dotproduct(ninjaA,spvak2l6)
      acd92(76)=abb92(12)
      acd92(77)=abb92(13)
      acd92(78)=dotproduct(ninjaE3,spvak2k1)
      acd92(79)=abb92(14)
      acd92(80)=abb92(27)
      acd92(81)=abb92(33)
      acd92(82)=abb92(23)
      acd92(83)=abb92(25)
      acd92(84)=abb92(24)
      acd92(85)=dotproduct(ninjaE3,spvak1k2)
      acd92(86)=abb92(40)
      acd92(87)=abb92(42)
      acd92(88)=acd92(24)+acd92(26)
      acd92(89)=-acd92(25)*acd92(88)
      acd92(90)=acd92(9)+acd92(11)-acd92(1)
      acd92(90)=acd92(3)*acd92(90)
      acd92(91)=acd92(31)*acd92(48)
      acd92(92)=acd92(27)*acd92(36)
      acd92(93)=acd92(29)*acd92(41)
      acd92(94)=acd92(8)*acd92(13)
      acd92(89)=acd92(94)+acd92(93)+acd92(92)+acd92(91)+acd92(90)+acd92(89)
      acd92(89)=acd92(2)*acd92(89)
      acd92(90)=acd92(46)*acd92(47)
      acd92(91)=acd92(20)*acd92(45)
      acd92(92)=acd92(18)*acd92(44)
      acd92(93)=acd92(16)*acd92(43)
      acd92(94)=acd92(14)*acd92(42)
      acd92(90)=acd92(94)+acd92(93)+acd92(92)+acd92(90)+acd92(91)
      acd92(90)=acd92(29)*acd92(90)
      acd92(91)=acd92(7)*acd92(6)
      acd92(92)=acd92(5)*acd92(4)
      acd92(91)=acd92(91)+acd92(92)
      acd92(92)=-acd92(12)*acd92(88)
      acd92(93)=acd92(31)*acd92(35)
      acd92(94)=acd92(27)*acd92(33)
      acd92(95)=acd92(29)*acd92(34)
      acd92(92)=acd92(95)+acd92(94)+acd92(93)+acd92(92)+acd92(91)
      acd92(92)=acd92(11)*acd92(92)
      acd92(93)=acd92(10)*acd92(88)
      acd92(94)=acd92(31)*acd92(32)
      acd92(95)=acd92(27)*acd92(28)
      acd92(96)=acd92(29)*acd92(30)
      acd92(93)=acd92(96)+acd92(95)+acd92(94)+acd92(93)+acd92(91)
      acd92(93)=acd92(9)*acd92(93)
      acd92(94)=acd92(20)*acd92(21)
      acd92(95)=acd92(18)*acd92(19)
      acd92(96)=acd92(16)*acd92(17)
      acd92(97)=acd92(14)*acd92(15)
      acd92(94)=acd92(97)-acd92(96)+acd92(94)-acd92(95)
      acd92(95)=acd92(94)*acd92(88)
      acd92(96)=acd92(20)*acd92(52)
      acd92(97)=acd92(18)*acd92(51)
      acd92(98)=acd92(16)*acd92(50)
      acd92(99)=acd92(14)*acd92(49)
      acd92(96)=acd92(99)+acd92(98)+acd92(96)+acd92(97)
      acd92(96)=acd92(31)*acd92(96)
      acd92(97)=acd92(20)*acd92(40)
      acd92(98)=acd92(18)*acd92(39)
      acd92(99)=acd92(16)*acd92(38)
      acd92(100)=acd92(14)*acd92(37)
      acd92(97)=acd92(100)+acd92(99)+acd92(97)+acd92(98)
      acd92(97)=acd92(27)*acd92(97)
      acd92(98)=acd92(6)*acd92(23)
      acd92(99)=acd92(4)*acd92(22)
      acd92(98)=acd92(98)+acd92(99)
      acd92(99)=acd92(11)*acd92(12)
      acd92(100)=-acd92(9)*acd92(10)
      acd92(94)=acd92(100)+acd92(99)-acd92(94)+acd92(98)
      acd92(94)=acd92(8)*acd92(94)
      acd92(91)=-acd92(1)*acd92(91)
      acd92(89)=acd92(89)+acd92(94)+acd92(93)+acd92(92)+acd92(90)+acd92(97)+acd&
      &92(96)+acd92(95)+acd92(91)
      acd92(90)=acd92(47)*acd92(75)
      acd92(91)=acd92(64)*acd92(45)
      acd92(92)=acd92(63)*acd92(44)
      acd92(93)=acd92(62)*acd92(43)
      acd92(94)=acd92(61)*acd92(42)
      acd92(95)=acd92(60)*acd92(34)
      acd92(96)=acd92(59)*acd92(30)
      acd92(97)=acd92(54)*acd92(41)
      acd92(90)=acd92(97)+acd92(96)+acd92(95)+acd92(94)+acd92(93)+acd92(92)+acd&
      &92(91)+acd92(77)+acd92(90)
      acd92(90)=acd92(29)*acd92(90)
      acd92(91)=acd92(64)*acd92(52)
      acd92(92)=acd92(63)*acd92(51)
      acd92(93)=acd92(62)*acd92(50)
      acd92(94)=acd92(61)*acd92(49)
      acd92(95)=acd92(60)*acd92(35)
      acd92(96)=acd92(59)*acd92(32)
      acd92(97)=acd92(54)*acd92(48)
      acd92(91)=acd92(97)+acd92(96)+acd92(95)+acd92(94)+acd92(93)+acd92(92)+acd&
      &92(83)+acd92(91)
      acd92(91)=acd92(31)*acd92(91)
      acd92(92)=acd92(64)*acd92(40)
      acd92(93)=acd92(63)*acd92(39)
      acd92(94)=acd92(62)*acd92(38)
      acd92(95)=acd92(61)*acd92(37)
      acd92(96)=acd92(60)*acd92(33)
      acd92(97)=acd92(59)*acd92(28)
      acd92(99)=acd92(54)*acd92(36)
      acd92(92)=acd92(99)+acd92(97)+acd92(96)+acd92(95)+acd92(94)+acd92(93)+acd&
      &92(76)+acd92(92)
      acd92(92)=acd92(27)*acd92(92)
      acd92(93)=acd92(21)*acd92(64)
      acd92(94)=acd92(19)*acd92(63)
      acd92(95)=acd92(17)*acd92(62)
      acd92(96)=acd92(15)*acd92(61)
      acd92(97)=acd92(12)*acd92(60)
      acd92(99)=acd92(10)*acd92(59)
      acd92(93)=acd92(99)-acd92(95)+acd92(93)-acd92(94)+acd92(96)-acd92(97)
      acd92(94)=acd92(54)*acd92(25)
      acd92(94)=-acd92(93)+acd92(94)-acd92(67)
      acd92(88)=-acd92(94)*acd92(88)
      acd92(94)=acd92(56)*acd92(23)
      acd92(95)=acd92(55)*acd92(22)
      acd92(96)=acd92(54)*acd92(13)
      acd92(93)=acd92(96)+acd92(95)+acd92(65)+acd92(94)-acd92(93)
      acd92(93)=acd92(8)*acd92(93)
      acd92(94)=acd92(66)+acd92(68)
      acd92(95)=-acd92(25)*acd92(94)
      acd92(96)=acd92(71)*acd92(48)
      acd92(97)=acd92(69)*acd92(36)
      acd92(99)=acd92(70)*acd92(41)
      acd92(100)=acd92(58)*acd92(13)
      acd92(101)=-acd92(53)+acd92(59)+acd92(60)
      acd92(102)=acd92(3)*acd92(101)
      acd92(95)=acd92(102)+acd92(100)+acd92(99)+acd92(97)+acd92(80)+acd92(96)+a&
      &cd92(95)
      acd92(95)=acd92(2)*acd92(95)
      acd92(96)=acd92(7)*acd92(56)
      acd92(97)=acd92(5)*acd92(55)
      acd92(99)=acd92(3)*acd92(54)
      acd92(96)=-acd92(72)+acd92(99)+acd92(96)+acd92(97)
      acd92(97)=acd92(71)*acd92(35)
      acd92(100)=acd92(69)*acd92(33)
      acd92(102)=acd92(70)*acd92(34)
      acd92(94)=acd92(58)-acd92(94)
      acd92(103)=acd92(12)*acd92(94)
      acd92(97)=acd92(103)+acd92(102)+acd92(100)+acd92(97)+acd92(96)
      acd92(97)=acd92(11)*acd92(97)
      acd92(100)=acd92(71)*acd92(32)
      acd92(102)=acd92(69)*acd92(28)
      acd92(103)=acd92(70)*acd92(30)
      acd92(104)=-acd92(10)*acd92(94)
      acd92(96)=acd92(104)+acd92(103)+acd92(102)+acd92(100)+acd92(96)
      acd92(96)=acd92(9)*acd92(96)
      acd92(100)=acd92(71)*acd92(52)
      acd92(102)=acd92(69)*acd92(40)
      acd92(103)=acd92(70)*acd92(45)
      acd92(104)=-acd92(21)*acd92(94)
      acd92(100)=acd92(104)+acd92(103)+acd92(100)+acd92(102)
      acd92(100)=acd92(20)*acd92(100)
      acd92(102)=acd92(71)*acd92(51)
      acd92(103)=acd92(69)*acd92(39)
      acd92(104)=acd92(70)*acd92(44)
      acd92(105)=acd92(19)*acd92(94)
      acd92(102)=acd92(105)+acd92(104)+acd92(103)+acd92(84)+acd92(102)
      acd92(102)=acd92(18)*acd92(102)
      acd92(103)=acd92(71)*acd92(50)
      acd92(104)=acd92(69)*acd92(38)
      acd92(105)=acd92(70)*acd92(43)
      acd92(106)=acd92(17)*acd92(94)
      acd92(103)=acd92(106)+acd92(105)+acd92(104)+acd92(82)+acd92(103)
      acd92(103)=acd92(16)*acd92(103)
      acd92(104)=acd92(71)*acd92(49)
      acd92(105)=acd92(69)*acd92(37)
      acd92(106)=acd92(70)*acd92(42)
      acd92(94)=-acd92(15)*acd92(94)
      acd92(94)=acd92(94)+acd92(106)+acd92(105)+acd92(81)+acd92(104)
      acd92(94)=acd92(14)*acd92(94)
      acd92(98)=acd92(58)*acd92(98)
      acd92(104)=acd92(6)*acd92(101)
      acd92(105)=-acd92(1)*acd92(56)
      acd92(104)=acd92(105)+acd92(104)
      acd92(104)=acd92(7)*acd92(104)
      acd92(101)=acd92(4)*acd92(101)
      acd92(105)=-acd92(1)*acd92(55)
      acd92(101)=acd92(105)+acd92(101)
      acd92(101)=acd92(5)*acd92(101)
      acd92(105)=acd92(70)*acd92(47)
      acd92(105)=acd92(105)+acd92(87)
      acd92(105)=acd92(46)*acd92(105)
      acd92(99)=-acd92(99)+acd92(57)
      acd92(99)=acd92(1)*acd92(99)
      acd92(106)=acd92(85)*acd92(86)
      acd92(107)=acd92(78)*acd92(79)
      acd92(108)=acd92(73)*acd92(74)
      acd92(88)=acd92(95)+acd92(93)+acd92(96)+acd92(97)+acd92(90)+acd92(92)+acd&
      &92(91)+acd92(94)+acd92(103)+acd92(102)+acd92(100)+acd92(101)+acd92(104)+&
      &acd92(98)+2.0_ki*acd92(108)+acd92(106)+acd92(107)+acd92(99)+acd92(105)+a&
      &cd92(88)
      brack(ninjaidxt1mu0)=acd92(89)
      brack(ninjaidxt0mu0)=acd92(88)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d92h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd92h7
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
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d92h7l131
