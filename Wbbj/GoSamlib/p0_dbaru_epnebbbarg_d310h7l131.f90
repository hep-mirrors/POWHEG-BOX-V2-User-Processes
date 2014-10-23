module     p0_dbaru_epnebbbarg_d310h7l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d310h7l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd310h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd310
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd310h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(112) :: acd310
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd310(1)=dotproduct(k2,ninjaE3)
      acd310(2)=dotproduct(ninjaE3,spvak7k2)
      acd310(3)=dotproduct(ninjaE3,spvak2l5)
      acd310(4)=abb310(22)
      acd310(5)=dotproduct(ninjaE3,spvak1l5)
      acd310(6)=abb310(80)
      acd310(7)=dotproduct(k3,ninjaE3)
      acd310(8)=abb310(56)
      acd310(9)=dotproduct(ninjaE3,spvak1l6)
      acd310(10)=abb310(61)
      acd310(11)=dotproduct(k4,ninjaE3)
      acd310(12)=dotproduct(ninjaE3,spvak4k3)
      acd310(13)=abb310(68)
      acd310(14)=abb310(29)
      acd310(15)=abb310(31)
      acd310(16)=dotproduct(ninjaE3,spvak4k2)
      acd310(17)=abb310(48)
      acd310(18)=abb310(54)
      acd310(19)=abb310(70)
      acd310(20)=dotproduct(ninjaE3,spvak1k2)
      acd310(21)=abb310(52)
      acd310(22)=dotproduct(ninjaE3,spvak1k3)
      acd310(23)=abb310(75)
      acd310(24)=dotproduct(ninjaE3,spvak2k3)
      acd310(25)=abb310(51)
      acd310(26)=dotproduct(ninjaE3,spvak2l6)
      acd310(27)=abb310(47)
      acd310(28)=dotproduct(k1,ninjaE3)
      acd310(29)=abb310(60)
      acd310(30)=abb310(58)
      acd310(31)=abb310(114)
      acd310(32)=abb310(23)
      acd310(33)=abb310(67)
      acd310(34)=abb310(53)
      acd310(35)=abb310(69)
      acd310(36)=abb310(77)
      acd310(37)=abb310(40)
      acd310(38)=dotproduct(k2,ninjaA)
      acd310(39)=abb310(57)
      acd310(40)=dotproduct(k7,ninjaE3)
      acd310(41)=abb310(27)
      acd310(42)=dotproduct(ninjaA,ninjaE3)
      acd310(43)=abb310(71)
      acd310(44)=dotproduct(ninjaA,spvak7k2)
      acd310(45)=dotproduct(ninjaA,spvak2l5)
      acd310(46)=dotproduct(ninjaA,spvak1l5)
      acd310(47)=abb310(107)
      acd310(48)=abb310(21)
      acd310(49)=abb310(24)
      acd310(50)=abb310(79)
      acd310(51)=dotproduct(ninjaE3,spvak2k1)
      acd310(52)=abb310(30)
      acd310(53)=abb310(74)
      acd310(54)=abb310(50)
      acd310(55)=dotproduct(k3,ninjaA)
      acd310(56)=dotproduct(ninjaA,spvak1l6)
      acd310(57)=abb310(65)
      acd310(58)=abb310(72)
      acd310(59)=dotproduct(k4,ninjaA)
      acd310(60)=abb310(64)
      acd310(61)=abb310(37)
      acd310(62)=dotproduct(ninjaA,spvak4k3)
      acd310(63)=dotproduct(ninjaA,spvak4k2)
      acd310(64)=dotproduct(ninjaA,spvak1k2)
      acd310(65)=dotproduct(ninjaA,spvak2l6)
      acd310(66)=dotproduct(ninjaA,spvak1k3)
      acd310(67)=dotproduct(ninjaA,spvak2k3)
      acd310(68)=abb310(10)
      acd310(69)=abb310(36)
      acd310(70)=abb310(63)
      acd310(71)=abb310(55)
      acd310(72)=abb310(11)
      acd310(73)=abb310(12)
      acd310(74)=abb310(13)
      acd310(75)=dotproduct(ninjaE3,spvak2k7)
      acd310(76)=abb310(16)
      acd310(77)=abb310(44)
      acd310(78)=dotproduct(ninjaE3,spvak1k7)
      acd310(79)=abb310(49)
      acd310(80)=dotproduct(ninjaE3,spval6l5)
      acd310(81)=abb310(45)
      acd310(82)=abb310(62)
      acd310(83)=abb310(18)
      acd310(84)=abb310(42)
      acd310(85)=abb310(32)
      acd310(86)=abb310(34)
      acd310(87)=abb310(38)
      acd310(88)=abb310(25)
      acd310(89)=abb310(46)
      acd310(90)=acd310(23)*acd310(24)
      acd310(91)=acd310(7)+acd310(11)
      acd310(92)=acd310(91)*acd310(8)
      acd310(93)=acd310(16)*acd310(18)
      acd310(94)=acd310(12)*acd310(14)
      acd310(95)=acd310(1)*acd310(6)
      acd310(90)=acd310(90)+acd310(93)+acd310(94)+acd310(92)+acd310(95)
      acd310(92)=acd310(5)*acd310(90)
      acd310(93)=acd310(91)-acd310(1)
      acd310(94)=-acd310(4)*acd310(93)
      acd310(95)=acd310(23)*acd310(22)
      acd310(96)=acd310(16)*acd310(17)
      acd310(97)=acd310(12)*acd310(13)
      acd310(98)=acd310(20)*acd310(21)
      acd310(94)=acd310(98)-acd310(95)+acd310(96)+acd310(97)+acd310(94)
      acd310(95)=acd310(3)*acd310(94)
      acd310(96)=acd310(25)*acd310(24)
      acd310(97)=acd310(91)*acd310(10)
      acd310(98)=acd310(16)*acd310(19)
      acd310(99)=acd310(12)*acd310(15)
      acd310(96)=acd310(97)-acd310(96)+acd310(98)+acd310(99)
      acd310(97)=acd310(9)*acd310(96)
      acd310(98)=acd310(22)*acd310(25)
      acd310(99)=acd310(27)*acd310(20)
      acd310(98)=acd310(98)+acd310(99)
      acd310(98)=acd310(26)*acd310(98)
      acd310(92)=acd310(97)+acd310(95)+acd310(92)+acd310(98)
      acd310(92)=acd310(2)*acd310(92)
      acd310(95)=acd310(18)*acd310(63)
      acd310(97)=acd310(14)*acd310(62)
      acd310(99)=acd310(6)*acd310(38)
      acd310(100)=acd310(23)*acd310(67)
      acd310(101)=acd310(55)+acd310(59)
      acd310(102)=acd310(8)*acd310(101)
      acd310(95)=acd310(102)+acd310(100)+acd310(99)+acd310(97)+acd310(74)+acd31&
      &0(95)
      acd310(95)=acd310(5)*acd310(95)
      acd310(97)=acd310(21)*acd310(64)
      acd310(99)=acd310(17)*acd310(63)
      acd310(100)=acd310(13)*acd310(62)
      acd310(102)=-acd310(23)*acd310(66)
      acd310(103)=acd310(38)-acd310(101)
      acd310(103)=acd310(4)*acd310(103)
      acd310(97)=acd310(103)+acd310(102)+acd310(100)+acd310(99)+acd310(73)+acd3&
      &10(97)
      acd310(97)=acd310(3)*acd310(97)
      acd310(99)=acd310(19)*acd310(63)
      acd310(100)=acd310(15)*acd310(62)
      acd310(102)=-acd310(25)*acd310(67)
      acd310(101)=acd310(10)*acd310(101)
      acd310(99)=acd310(101)+acd310(102)+acd310(100)+acd310(77)+acd310(99)
      acd310(99)=acd310(9)*acd310(99)
      acd310(100)=acd310(10)*acd310(56)
      acd310(101)=acd310(8)*acd310(46)
      acd310(102)=acd310(4)*acd310(45)
      acd310(100)=-acd310(101)-acd310(100)+acd310(102)-acd310(57)
      acd310(100)=-acd310(100)*acd310(91)
      acd310(101)=acd310(56)*acd310(19)
      acd310(103)=acd310(46)*acd310(18)
      acd310(104)=acd310(45)*acd310(17)
      acd310(101)=acd310(104)+acd310(103)+acd310(72)+acd310(101)
      acd310(101)=acd310(16)*acd310(101)
      acd310(103)=acd310(56)*acd310(15)
      acd310(104)=acd310(46)*acd310(14)
      acd310(105)=acd310(45)*acd310(13)
      acd310(103)=acd310(105)+acd310(104)+acd310(68)+acd310(103)
      acd310(103)=acd310(12)*acd310(103)
      acd310(104)=acd310(22)*acd310(65)
      acd310(105)=-acd310(24)*acd310(56)
      acd310(104)=acd310(104)+acd310(105)
      acd310(104)=acd310(25)*acd310(104)
      acd310(105)=-acd310(45)*acd310(22)
      acd310(106)=acd310(24)*acd310(46)
      acd310(105)=acd310(105)+acd310(106)
      acd310(105)=acd310(23)*acd310(105)
      acd310(106)=acd310(27)*acd310(64)
      acd310(107)=acd310(25)*acd310(66)
      acd310(106)=acd310(107)+acd310(79)+acd310(106)
      acd310(106)=acd310(26)*acd310(106)
      acd310(107)=acd310(27)*acd310(65)
      acd310(108)=acd310(45)*acd310(21)
      acd310(107)=acd310(107)+acd310(108)
      acd310(107)=acd310(20)*acd310(107)
      acd310(108)=acd310(46)*acd310(6)
      acd310(102)=acd310(102)+acd310(48)+acd310(108)
      acd310(102)=acd310(1)*acd310(102)
      acd310(108)=acd310(80)*acd310(81)
      acd310(109)=acd310(75)*acd310(76)
      acd310(110)=-acd310(61)*acd310(78)
      acd310(111)=acd310(24)*acd310(82)
      acd310(112)=acd310(28)*acd310(32)
      acd310(95)=acd310(99)+acd310(97)+acd310(95)+acd310(102)+acd310(107)+acd31&
      &0(103)+acd310(101)+acd310(112)+acd310(106)+acd310(105)+acd310(104)+acd31&
      &0(111)+acd310(110)+acd310(108)+acd310(109)+acd310(100)
      acd310(95)=acd310(2)*acd310(95)
      acd310(93)=acd310(39)*acd310(93)
      acd310(97)=acd310(51)*acd310(52)
      acd310(99)=2.0_ki*acd310(42)
      acd310(100)=acd310(43)*acd310(99)
      acd310(101)=acd310(40)*acd310(41)
      acd310(102)=acd310(28)*acd310(29)
      acd310(103)=acd310(16)*acd310(49)
      acd310(104)=acd310(12)*acd310(47)
      acd310(105)=acd310(20)*acd310(54)
      acd310(93)=acd310(105)+acd310(104)+acd310(103)+acd310(102)+acd310(97)+acd&
      &310(100)+acd310(101)+acd310(93)
      acd310(93)=acd310(1)*acd310(93)
      acd310(96)=acd310(44)*acd310(96)
      acd310(100)=acd310(58)*acd310(91)
      acd310(101)=acd310(28)-acd310(40)
      acd310(102)=acd310(35)*acd310(101)
      acd310(103)=acd310(60)*acd310(99)
      acd310(104)=acd310(51)*acd310(88)
      acd310(105)=acd310(16)*acd310(84)
      acd310(106)=acd310(12)*acd310(70)
      acd310(107)=acd310(1)*acd310(53)
      acd310(96)=acd310(96)+acd310(107)+acd310(106)+acd310(105)+acd310(104)+acd&
      &310(103)+acd310(102)+acd310(100)
      acd310(96)=acd310(9)*acd310(96)
      acd310(100)=-acd310(36)*acd310(101)
      acd310(101)=-acd310(54)*acd310(91)
      acd310(99)=acd310(61)*acd310(99)
      acd310(102)=acd310(26)*acd310(89)
      acd310(103)=acd310(16)*acd310(85)
      acd310(104)=acd310(12)*acd310(71)
      acd310(99)=acd310(104)+acd310(103)+acd310(102)+acd310(99)+acd310(101)+acd&
      &310(100)
      acd310(99)=acd310(20)*acd310(99)
      acd310(90)=acd310(44)*acd310(90)
      acd310(100)=acd310(51)*acd310(87)
      acd310(101)=acd310(1)*acd310(50)
      acd310(90)=acd310(90)+acd310(100)+acd310(101)
      acd310(90)=acd310(5)*acd310(90)
      acd310(94)=acd310(44)*acd310(94)
      acd310(100)=acd310(28)*acd310(34)
      acd310(101)=acd310(20)*acd310(86)
      acd310(94)=acd310(94)+acd310(100)+acd310(101)
      acd310(94)=acd310(3)*acd310(94)
      acd310(100)=acd310(28)*acd310(30)
      acd310(97)=acd310(100)-acd310(97)
      acd310(91)=acd310(97)*acd310(91)
      acd310(97)=acd310(51)*acd310(83)
      acd310(100)=acd310(28)*acd310(33)
      acd310(97)=acd310(97)+acd310(100)
      acd310(97)=acd310(16)*acd310(97)
      acd310(100)=acd310(51)*acd310(69)
      acd310(101)=acd310(28)*acd310(31)
      acd310(100)=acd310(100)+acd310(101)
      acd310(100)=acd310(12)*acd310(100)
      acd310(98)=acd310(44)*acd310(98)
      acd310(101)=acd310(28)*acd310(26)*acd310(37)
      acd310(90)=acd310(95)+acd310(96)+acd310(94)+acd310(90)+acd310(98)+acd310(&
      &93)+acd310(99)+acd310(100)+acd310(101)+acd310(97)+acd310(91)
      brack(ninjaidxt1mu0)=acd310(92)
      brack(ninjaidxt0mu0)=acd310(90)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d310h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd310h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6-k5
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
end module     p0_dbaru_epnebbbarg_d310h7l131
