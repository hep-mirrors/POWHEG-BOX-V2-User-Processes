module     p0_dbaru_epnebbbarg_d108h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d108h5l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd108h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd108
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd108h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(106) :: acd108
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd108(1)=dotproduct(k2,ninjaE3)
      acd108(2)=dotproduct(ninjaE3,spvak7k2)
      acd108(3)=abb108(25)
      acd108(4)=dotproduct(ninjaE3,spval6l5)
      acd108(5)=abb108(59)
      acd108(6)=dotproduct(ninjaE3,spvak7l5)
      acd108(7)=abb108(84)
      acd108(8)=dotproduct(ninjaE3,spvak1l5)
      acd108(9)=abb108(23)
      acd108(10)=dotproduct(ninjaE3,spvak1k2)
      acd108(11)=abb108(22)
      acd108(12)=dotproduct(ninjaE3,spvak1k3)
      acd108(13)=abb108(50)
      acd108(14)=dotproduct(ninjaE3,spvak7k3)
      acd108(15)=abb108(87)
      acd108(16)=dotproduct(k3,ninjaE3)
      acd108(17)=dotproduct(k4,ninjaE3)
      acd108(18)=dotproduct(ninjaE3,spvak4k3)
      acd108(19)=abb108(11)
      acd108(20)=abb108(28)
      acd108(21)=abb108(37)
      acd108(22)=abb108(43)
      acd108(23)=abb108(33)
      acd108(24)=dotproduct(ninjaE3,spvak4k2)
      acd108(25)=abb108(26)
      acd108(26)=abb108(66)
      acd108(27)=dotproduct(ninjaE3,spvak2k3)
      acd108(28)=abb108(27)
      acd108(29)=abb108(14)
      acd108(30)=abb108(17)
      acd108(31)=abb108(41)
      acd108(32)=abb108(19)
      acd108(33)=abb108(39)
      acd108(34)=abb108(35)
      acd108(35)=abb108(48)
      acd108(36)=dotproduct(ninjaE3,spval6k3)
      acd108(37)=dotproduct(ninjaE3,spval6k2)
      acd108(38)=abb108(34)
      acd108(39)=dotproduct(k1,ninjaE3)
      acd108(40)=abb108(60)
      acd108(41)=dotproduct(k2,ninjaA)
      acd108(42)=dotproduct(ninjaA,spvak7k2)
      acd108(43)=dotproduct(ninjaA,spval6l5)
      acd108(44)=dotproduct(ninjaA,spvak7l5)
      acd108(45)=dotproduct(ninjaA,spvak1l5)
      acd108(46)=dotproduct(ninjaA,spvak1k2)
      acd108(47)=dotproduct(ninjaA,spvak1k3)
      acd108(48)=dotproduct(ninjaA,spvak7k3)
      acd108(49)=abb108(42)
      acd108(50)=dotproduct(k3,ninjaA)
      acd108(51)=abb108(76)
      acd108(52)=dotproduct(k4,ninjaA)
      acd108(53)=dotproduct(l6,ninjaE3)
      acd108(54)=abb108(61)
      acd108(55)=dotproduct(k7,ninjaE3)
      acd108(56)=abb108(13)
      acd108(57)=dotproduct(ninjaA,spvak4k3)
      acd108(58)=dotproduct(ninjaA,spvak4k2)
      acd108(59)=dotproduct(ninjaA,spvak2k3)
      acd108(60)=dotproduct(ninjaA,spval6k3)
      acd108(61)=dotproduct(ninjaA,spval6k2)
      acd108(62)=abb108(20)
      acd108(63)=abb108(16)
      acd108(64)=dotproduct(ninjaE3,spval6k1)
      acd108(65)=abb108(12)
      acd108(66)=abb108(15)
      acd108(67)=abb108(80)
      acd108(68)=abb108(18)
      acd108(69)=abb108(30)
      acd108(70)=abb108(24)
      acd108(71)=dotproduct(ninjaE3,spvak7k1)
      acd108(72)=abb108(29)
      acd108(73)=dotproduct(ninjaE3,spvak1k7)
      acd108(74)=abb108(31)
      acd108(75)=dotproduct(ninjaE3,spvak1l6)
      acd108(76)=abb108(32)
      acd108(77)=abb108(49)
      acd108(78)=dotproduct(ninjaE3,spval6k7)
      acd108(79)=abb108(44)
      acd108(80)=dotproduct(ninjaE3,spvak7l6)
      acd108(81)=abb108(77)
      acd108(82)=acd108(35)*acd108(14)
      acd108(83)=acd108(34)*acd108(12)
      acd108(82)=acd108(82)+acd108(83)
      acd108(83)=acd108(16)+acd108(17)
      acd108(84)=-acd108(1)+acd108(83)
      acd108(84)=acd108(5)*acd108(84)
      acd108(85)=acd108(24)*acd108(29)
      acd108(86)=acd108(18)*acd108(20)
      acd108(87)=acd108(10)*acd108(33)
      acd108(88)=acd108(2)*acd108(26)
      acd108(84)=acd108(88)+acd108(87)+acd108(86)+acd108(85)+acd108(84)-acd108(&
      &82)
      acd108(84)=acd108(4)*acd108(84)
      acd108(85)=acd108(14)*acd108(15)
      acd108(86)=acd108(12)*acd108(13)
      acd108(85)=acd108(85)+acd108(86)
      acd108(86)=acd108(10)*acd108(11)
      acd108(87)=acd108(8)*acd108(9)
      acd108(88)=acd108(6)*acd108(7)
      acd108(89)=acd108(2)*acd108(3)
      acd108(86)=acd108(89)+acd108(88)+acd108(87)+acd108(86)+acd108(85)
      acd108(86)=acd108(1)*acd108(86)
      acd108(87)=-acd108(11)*acd108(83)
      acd108(88)=acd108(27)*acd108(38)
      acd108(89)=acd108(24)*acd108(32)
      acd108(90)=acd108(18)*acd108(23)
      acd108(87)=acd108(90)+acd108(88)+acd108(89)+acd108(87)
      acd108(87)=acd108(10)*acd108(87)
      acd108(88)=acd108(34)*acd108(36)
      acd108(89)=acd108(33)*acd108(37)
      acd108(88)=acd108(88)-acd108(89)
      acd108(89)=-acd108(9)*acd108(83)
      acd108(90)=acd108(24)*acd108(31)
      acd108(91)=acd108(18)*acd108(22)
      acd108(89)=acd108(91)+acd108(90)+acd108(89)+acd108(88)
      acd108(89)=acd108(8)*acd108(89)
      acd108(90)=acd108(35)*acd108(36)
      acd108(91)=acd108(26)*acd108(37)
      acd108(90)=acd108(90)-acd108(91)
      acd108(91)=-acd108(7)*acd108(83)
      acd108(92)=acd108(24)*acd108(30)
      acd108(93)=acd108(18)*acd108(21)
      acd108(91)=acd108(93)+acd108(92)+acd108(91)+acd108(90)
      acd108(91)=acd108(6)*acd108(91)
      acd108(92)=-acd108(3)*acd108(83)
      acd108(93)=acd108(27)*acd108(28)
      acd108(94)=acd108(24)*acd108(25)
      acd108(95)=acd108(18)*acd108(19)
      acd108(92)=acd108(95)+acd108(93)+acd108(94)+acd108(92)
      acd108(92)=acd108(2)*acd108(92)
      acd108(84)=acd108(84)+acd108(86)+acd108(92)+acd108(91)+acd108(87)+acd108(&
      &89)
      acd108(86)=acd108(58)*acd108(29)
      acd108(87)=acd108(57)*acd108(20)
      acd108(89)=-acd108(35)*acd108(48)
      acd108(91)=-acd108(34)*acd108(47)
      acd108(92)=acd108(46)*acd108(33)
      acd108(93)=acd108(42)*acd108(26)
      acd108(94)=-acd108(52)+acd108(41)-acd108(50)
      acd108(95)=-acd108(5)*acd108(94)
      acd108(86)=acd108(95)+acd108(93)+acd108(92)+acd108(91)+acd108(89)+acd108(&
      &86)+acd108(87)
      acd108(86)=acd108(4)*acd108(86)
      acd108(87)=acd108(11)*acd108(46)
      acd108(89)=acd108(9)*acd108(45)
      acd108(91)=acd108(7)*acd108(44)
      acd108(92)=acd108(5)*acd108(43)
      acd108(93)=acd108(3)*acd108(42)
      acd108(87)=acd108(93)+acd108(87)+acd108(89)+acd108(91)-acd108(92)
      acd108(89)=acd108(87)+acd108(51)
      acd108(83)=-acd108(89)*acd108(83)
      acd108(89)=acd108(46)*acd108(32)
      acd108(91)=acd108(45)*acd108(31)
      acd108(92)=acd108(44)*acd108(30)
      acd108(93)=acd108(42)*acd108(25)
      acd108(95)=acd108(43)*acd108(29)
      acd108(89)=acd108(95)+acd108(93)+acd108(92)+acd108(91)+acd108(66)+acd108(&
      &89)
      acd108(89)=acd108(24)*acd108(89)
      acd108(91)=acd108(46)*acd108(23)
      acd108(92)=acd108(45)*acd108(22)
      acd108(93)=acd108(44)*acd108(21)
      acd108(95)=acd108(42)*acd108(19)
      acd108(96)=acd108(43)*acd108(20)
      acd108(91)=acd108(96)+acd108(95)+acd108(93)+acd108(92)+acd108(62)+acd108(&
      &91)
      acd108(91)=acd108(18)*acd108(91)
      acd108(92)=acd108(38)*acd108(59)
      acd108(93)=acd108(58)*acd108(32)
      acd108(95)=acd108(57)*acd108(23)
      acd108(96)=acd108(43)*acd108(33)
      acd108(97)=acd108(11)*acd108(94)
      acd108(92)=acd108(97)+acd108(96)+acd108(95)+acd108(93)+acd108(69)+acd108(&
      &92)
      acd108(92)=acd108(10)*acd108(92)
      acd108(93)=acd108(58)*acd108(31)
      acd108(95)=acd108(57)*acd108(22)
      acd108(96)=acd108(34)*acd108(60)
      acd108(97)=-acd108(33)*acd108(61)
      acd108(98)=acd108(9)*acd108(94)
      acd108(93)=acd108(98)+acd108(97)+acd108(96)+acd108(95)+acd108(68)+acd108(&
      &93)
      acd108(93)=acd108(8)*acd108(93)
      acd108(95)=acd108(58)*acd108(30)
      acd108(96)=acd108(57)*acd108(21)
      acd108(97)=acd108(35)*acd108(60)
      acd108(98)=-acd108(26)*acd108(61)
      acd108(99)=acd108(7)*acd108(94)
      acd108(95)=acd108(99)+acd108(98)+acd108(97)+acd108(96)+acd108(67)+acd108(&
      &95)
      acd108(95)=acd108(6)*acd108(95)
      acd108(96)=acd108(28)*acd108(59)
      acd108(97)=acd108(58)*acd108(25)
      acd108(98)=acd108(57)*acd108(19)
      acd108(99)=acd108(43)*acd108(26)
      acd108(94)=acd108(3)*acd108(94)
      acd108(94)=acd108(94)+acd108(99)+acd108(98)+acd108(97)+acd108(63)+acd108(&
      &96)
      acd108(94)=acd108(2)*acd108(94)
      acd108(96)=acd108(15)*acd108(48)
      acd108(97)=acd108(13)*acd108(47)
      acd108(87)=acd108(97)+acd108(49)+acd108(96)+acd108(87)
      acd108(87)=acd108(1)*acd108(87)
      acd108(96)=acd108(46)*acd108(38)
      acd108(97)=acd108(42)*acd108(28)
      acd108(96)=acd108(97)+acd108(96)+acd108(70)
      acd108(96)=acd108(27)*acd108(96)
      acd108(88)=acd108(45)*acd108(88)
      acd108(90)=acd108(44)*acd108(90)
      acd108(85)=acd108(41)*acd108(85)
      acd108(82)=-acd108(43)*acd108(82)
      acd108(97)=acd108(80)*acd108(81)
      acd108(98)=acd108(78)*acd108(79)
      acd108(99)=acd108(75)*acd108(76)
      acd108(100)=acd108(73)*acd108(74)
      acd108(101)=acd108(71)*acd108(72)
      acd108(102)=acd108(64)*acd108(65)
      acd108(103)=acd108(55)*acd108(56)
      acd108(104)=acd108(53)*acd108(54)
      acd108(105)=acd108(39)*acd108(40)
      acd108(106)=acd108(37)*acd108(77)
      acd108(82)=acd108(86)+acd108(87)+acd108(94)+acd108(95)+acd108(93)+acd108(&
      &92)+acd108(91)+acd108(89)+acd108(82)+acd108(85)+acd108(90)+acd108(88)+ac&
      &d108(106)+acd108(105)+acd108(104)+acd108(103)+acd108(102)+acd108(101)+ac&
      &d108(100)+acd108(99)+acd108(97)+acd108(98)+acd108(96)+acd108(83)
      brack(ninjaidxt1mu0)=acd108(84)
      brack(ninjaidxt0mu0)=acd108(82)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d108h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd108h5
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
end module     p0_dbaru_epnebbbarg_d108h5l131