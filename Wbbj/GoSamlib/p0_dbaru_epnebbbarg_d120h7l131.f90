module     p0_dbaru_epnebbbarg_d120h7l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d120h7l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd120h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd120
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd120h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(101) :: acd120
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd120(1)=dotproduct(k2,ninjaE3)
      acd120(2)=abb120(96)
      acd120(3)=dotproduct(k3,ninjaE3)
      acd120(4)=dotproduct(k4,ninjaE3)
      acd120(5)=dotproduct(ninjaE3,spvak1k2)
      acd120(6)=abb120(37)
      acd120(7)=dotproduct(ninjaE3,spvak4k3)
      acd120(8)=abb120(32)
      acd120(9)=dotproduct(ninjaE3,spvak4k2)
      acd120(10)=abb120(23)
      acd120(11)=dotproduct(ninjaE3,spvak2l5)
      acd120(12)=abb120(26)
      acd120(13)=dotproduct(ninjaE3,spvak1l5)
      acd120(14)=abb120(33)
      acd120(15)=dotproduct(ninjaE3,spvak1l6)
      acd120(16)=abb120(43)
      acd120(17)=dotproduct(ninjaE3,spvak1k3)
      acd120(18)=abb120(42)
      acd120(19)=abb120(25)
      acd120(20)=abb120(12)
      acd120(21)=abb120(15)
      acd120(22)=abb120(21)
      acd120(23)=dotproduct(ninjaE3,spvak2k3)
      acd120(24)=abb120(24)
      acd120(25)=dotproduct(ninjaE3,spvak7l6)
      acd120(26)=abb120(40)
      acd120(27)=dotproduct(ninjaE3,spval5l6)
      acd120(28)=abb120(45)
      acd120(29)=abb120(36)
      acd120(30)=abb120(19)
      acd120(31)=abb120(35)
      acd120(32)=abb120(30)
      acd120(33)=abb120(28)
      acd120(34)=abb120(22)
      acd120(35)=dotproduct(ninjaE3,spvak7k2)
      acd120(36)=abb120(34)
      acd120(37)=dotproduct(ninjaE3,spval5k2)
      acd120(38)=dotproduct(ninjaE3,spvak7k3)
      acd120(39)=abb120(46)
      acd120(40)=dotproduct(ninjaE3,spval5k3)
      acd120(41)=abb120(49)
      acd120(42)=dotproduct(k1,ninjaE3)
      acd120(43)=abb120(16)
      acd120(44)=dotproduct(k2,ninjaA)
      acd120(45)=dotproduct(k3,ninjaA)
      acd120(46)=dotproduct(k4,ninjaA)
      acd120(47)=dotproduct(ninjaA,spvak1k2)
      acd120(48)=dotproduct(ninjaA,spvak4k3)
      acd120(49)=dotproduct(ninjaA,spvak4k2)
      acd120(50)=dotproduct(ninjaA,spvak2l5)
      acd120(51)=dotproduct(ninjaA,spvak1l5)
      acd120(52)=dotproduct(ninjaA,spvak1l6)
      acd120(53)=dotproduct(ninjaA,spvak1k3)
      acd120(54)=abb120(11)
      acd120(55)=abb120(125)
      acd120(56)=dotproduct(ninjaA,spvak7k2)
      acd120(57)=dotproduct(ninjaA,spvak2k3)
      acd120(58)=dotproduct(ninjaA,spvak7l6)
      acd120(59)=dotproduct(ninjaA,spval5l6)
      acd120(60)=dotproduct(ninjaA,spval5k2)
      acd120(61)=dotproduct(ninjaA,spvak7k3)
      acd120(62)=dotproduct(ninjaA,spval5k3)
      acd120(63)=abb120(44)
      acd120(64)=abb120(20)
      acd120(65)=abb120(13)
      acd120(66)=abb120(14)
      acd120(67)=abb120(18)
      acd120(68)=abb120(27)
      acd120(69)=abb120(39)
      acd120(70)=abb120(63)
      acd120(71)=abb120(64)
      acd120(72)=abb120(53)
      acd120(73)=abb120(65)
      acd120(74)=abb120(76)
      acd120(75)=dotproduct(ninjaE3,spval6l5)
      acd120(76)=abb120(58)
      acd120(77)=dotproduct(ninjaE3,spval6k2)
      acd120(78)=abb120(60)
      acd120(79)=acd120(3)+acd120(4)
      acd120(80)=acd120(1)-acd120(79)
      acd120(80)=acd120(2)*acd120(80)
      acd120(81)=acd120(17)*acd120(18)
      acd120(82)=acd120(9)*acd120(10)
      acd120(83)=acd120(7)*acd120(8)
      acd120(84)=acd120(13)*acd120(14)
      acd120(85)=-acd120(11)*acd120(12)
      acd120(86)=-acd120(15)*acd120(16)
      acd120(87)=-acd120(5)*acd120(6)
      acd120(80)=acd120(87)+acd120(86)+acd120(85)+acd120(84)+acd120(83)+acd120(&
      &81)+acd120(82)+acd120(80)
      acd120(80)=acd120(1)*acd120(80)
      acd120(82)=acd120(23)*acd120(24)
      acd120(83)=acd120(28)*acd120(27)
      acd120(84)=acd120(26)*acd120(25)
      acd120(82)=-acd120(84)+acd120(82)+acd120(83)
      acd120(83)=acd120(6)*acd120(79)
      acd120(84)=acd120(9)*acd120(21)
      acd120(85)=acd120(7)*acd120(20)
      acd120(86)=acd120(11)*acd120(22)
      acd120(83)=acd120(86)+acd120(85)+acd120(84)+acd120(83)+acd120(82)
      acd120(83)=acd120(5)*acd120(83)
      acd120(84)=acd120(36)*acd120(23)
      acd120(85)=-acd120(19)*acd120(79)
      acd120(86)=acd120(9)*acd120(33)
      acd120(87)=acd120(7)*acd120(30)
      acd120(85)=acd120(87)-acd120(84)+acd120(86)+acd120(85)
      acd120(85)=acd120(13)*acd120(85)
      acd120(86)=acd120(12)*acd120(79)
      acd120(87)=acd120(17)*acd120(36)
      acd120(88)=acd120(9)*acd120(32)
      acd120(89)=acd120(7)*acd120(29)
      acd120(86)=acd120(89)+acd120(87)+acd120(88)+acd120(86)
      acd120(86)=acd120(11)*acd120(86)
      acd120(87)=acd120(41)*acd120(40)
      acd120(88)=acd120(39)*acd120(38)
      acd120(89)=acd120(28)*acd120(37)
      acd120(90)=acd120(26)*acd120(35)
      acd120(87)=-acd120(87)-acd120(88)+acd120(89)-acd120(90)
      acd120(88)=acd120(16)*acd120(79)
      acd120(89)=acd120(9)*acd120(34)
      acd120(90)=acd120(7)*acd120(31)
      acd120(88)=acd120(90)+acd120(89)+acd120(88)-acd120(87)
      acd120(88)=acd120(15)*acd120(88)
      acd120(89)=-acd120(41)*acd120(27)
      acd120(90)=-acd120(39)*acd120(25)
      acd120(89)=acd120(89)+acd120(90)
      acd120(89)=acd120(17)*acd120(89)
      acd120(80)=acd120(80)+acd120(83)+acd120(88)+acd120(86)+acd120(89)+acd120(&
      &85)
      acd120(83)=acd120(45)+acd120(46)
      acd120(85)=acd120(83)-acd120(44)
      acd120(86)=acd120(16)*acd120(85)
      acd120(88)=acd120(49)*acd120(34)
      acd120(89)=acd120(48)*acd120(31)
      acd120(90)=acd120(41)*acd120(62)
      acd120(91)=acd120(39)*acd120(61)
      acd120(92)=-acd120(28)*acd120(60)
      acd120(93)=acd120(26)*acd120(56)
      acd120(86)=acd120(93)+acd120(92)+acd120(91)+acd120(90)+acd120(89)+acd120(&
      &69)+acd120(88)+acd120(86)
      acd120(86)=acd120(15)*acd120(86)
      acd120(88)=acd120(6)*acd120(85)
      acd120(89)=acd120(24)*acd120(57)
      acd120(90)=acd120(49)*acd120(21)
      acd120(91)=acd120(48)*acd120(20)
      acd120(92)=acd120(28)*acd120(59)
      acd120(93)=-acd120(26)*acd120(58)
      acd120(94)=acd120(50)*acd120(22)
      acd120(88)=acd120(94)+acd120(93)+acd120(92)+acd120(91)+acd120(90)+acd120(&
      &63)+acd120(89)+acd120(88)
      acd120(88)=acd120(5)*acd120(88)
      acd120(89)=acd120(16)*acd120(52)
      acd120(90)=acd120(12)*acd120(50)
      acd120(91)=acd120(6)*acd120(47)
      acd120(89)=acd120(91)+acd120(89)+acd120(90)
      acd120(90)=acd120(44)*acd120(2)
      acd120(91)=acd120(53)*acd120(18)
      acd120(92)=acd120(49)*acd120(10)
      acd120(93)=acd120(48)*acd120(8)
      acd120(94)=acd120(51)*acd120(14)
      acd120(95)=-acd120(2)*acd120(83)
      acd120(91)=2.0_ki*acd120(90)+acd120(95)+acd120(94)+acd120(93)+acd120(92)+&
      &acd120(54)+acd120(91)-acd120(89)
      acd120(91)=acd120(1)*acd120(91)
      acd120(92)=acd120(51)*acd120(33)
      acd120(93)=acd120(50)*acd120(32)
      acd120(94)=acd120(52)*acd120(34)
      acd120(95)=acd120(47)*acd120(21)
      acd120(96)=acd120(44)*acd120(10)
      acd120(92)=acd120(96)+acd120(95)+acd120(94)+acd120(93)+acd120(65)+acd120(&
      &92)
      acd120(92)=acd120(9)*acd120(92)
      acd120(93)=acd120(51)*acd120(30)
      acd120(94)=acd120(50)*acd120(29)
      acd120(95)=acd120(52)*acd120(31)
      acd120(96)=acd120(47)*acd120(20)
      acd120(97)=acd120(44)*acd120(8)
      acd120(93)=acd120(97)+acd120(96)+acd120(95)+acd120(94)+acd120(64)+acd120(&
      &93)
      acd120(93)=acd120(7)*acd120(93)
      acd120(94)=acd120(49)*acd120(33)
      acd120(95)=acd120(48)*acd120(30)
      acd120(96)=-acd120(36)*acd120(57)
      acd120(83)=-acd120(19)*acd120(83)
      acd120(97)=acd120(44)*acd120(14)
      acd120(83)=acd120(97)+acd120(83)+acd120(96)+acd120(95)+acd120(68)+acd120(&
      &94)
      acd120(83)=acd120(13)*acd120(83)
      acd120(85)=acd120(12)*acd120(85)
      acd120(94)=acd120(49)*acd120(32)
      acd120(95)=acd120(48)*acd120(29)
      acd120(96)=acd120(36)*acd120(53)
      acd120(97)=acd120(47)*acd120(22)
      acd120(85)=acd120(97)+acd120(96)+acd120(95)+acd120(67)+acd120(94)+acd120(&
      &85)
      acd120(85)=acd120(11)*acd120(85)
      acd120(87)=-acd120(52)*acd120(87)
      acd120(94)=acd120(19)*acd120(51)
      acd120(89)=-acd120(89)+acd120(94)+acd120(90)-acd120(55)
      acd120(79)=-acd120(89)*acd120(79)
      acd120(89)=-acd120(41)*acd120(59)
      acd120(90)=-acd120(39)*acd120(58)
      acd120(94)=acd120(50)*acd120(36)
      acd120(89)=acd120(94)+acd120(89)+acd120(90)
      acd120(89)=acd120(17)*acd120(89)
      acd120(82)=acd120(47)*acd120(82)
      acd120(90)=-acd120(41)*acd120(53)
      acd120(90)=acd120(90)+acd120(71)
      acd120(90)=acd120(27)*acd120(90)
      acd120(94)=-acd120(39)*acd120(53)
      acd120(94)=acd120(94)+acd120(70)
      acd120(94)=acd120(25)*acd120(94)
      acd120(95)=acd120(77)*acd120(78)
      acd120(96)=acd120(75)*acd120(76)
      acd120(97)=acd120(42)*acd120(43)
      acd120(98)=acd120(40)*acd120(74)
      acd120(99)=acd120(38)*acd120(73)
      acd120(100)=acd120(37)*acd120(72)
      acd120(101)=acd120(35)*acd120(66)
      acd120(84)=-acd120(51)*acd120(84)
      acd120(81)=acd120(44)*acd120(81)
      acd120(79)=acd120(91)+acd120(88)+acd120(86)+acd120(85)+acd120(83)+acd120(&
      &93)+acd120(92)+acd120(81)+acd120(82)+acd120(87)+acd120(89)+acd120(84)+ac&
      &d120(101)+acd120(100)+acd120(99)+acd120(98)+acd120(97)+acd120(95)+acd120&
      &(96)+acd120(94)+acd120(90)+acd120(79)
      brack(ninjaidxt1mu0)=acd120(80)
      brack(ninjaidxt0mu0)=acd120(79)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d120h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd120h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
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
end module     p0_dbaru_epnebbbarg_d120h7l131
