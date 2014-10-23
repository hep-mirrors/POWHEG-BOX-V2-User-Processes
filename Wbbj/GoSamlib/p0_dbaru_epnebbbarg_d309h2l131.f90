module     p0_dbaru_epnebbbarg_d309h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d309h2l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd309h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd309
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd309h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(107) :: acd309
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd309(1)=dotproduct(k2,ninjaE3)
      acd309(2)=dotproduct(ninjaE3,spvak2k7)
      acd309(3)=abb309(28)
      acd309(4)=dotproduct(k3,ninjaE3)
      acd309(5)=dotproduct(k4,ninjaE3)
      acd309(6)=dotproduct(ninjaE3,spvak4k2)
      acd309(7)=abb309(17)
      acd309(8)=dotproduct(ninjaE3,spvak4k3)
      acd309(9)=abb309(29)
      acd309(10)=dotproduct(ninjaE3,spvak4l6)
      acd309(11)=abb309(79)
      acd309(12)=abb309(37)
      acd309(13)=abb309(48)
      acd309(14)=abb309(36)
      acd309(15)=dotproduct(ninjaE3,spvak2l6)
      acd309(16)=abb309(32)
      acd309(17)=abb309(40)
      acd309(18)=dotproduct(ninjaE3,spvak3l6)
      acd309(19)=abb309(35)
      acd309(20)=dotproduct(ninjaE3,spvak3k2)
      acd309(21)=abb309(49)
      acd309(22)=dotproduct(k1,ninjaE3)
      acd309(23)=abb309(46)
      acd309(24)=abb309(42)
      acd309(25)=dotproduct(ninjaE3,spvak2k3)
      acd309(26)=abb309(45)
      acd309(27)=dotproduct(k2,ninjaA)
      acd309(28)=dotproduct(ninjaA,spvak2k7)
      acd309(29)=dotproduct(k3,ninjaA)
      acd309(30)=dotproduct(k4,ninjaA)
      acd309(31)=dotproduct(k7,ninjaE3)
      acd309(32)=dotproduct(ninjaA,ninjaE3)
      acd309(33)=abb309(12)
      acd309(34)=dotproduct(ninjaA,spvak4k2)
      acd309(35)=dotproduct(ninjaA,spvak4k3)
      acd309(36)=dotproduct(ninjaA,spvak4l6)
      acd309(37)=dotproduct(ninjaE3,spvak4k1)
      acd309(38)=abb309(77)
      acd309(39)=abb309(26)
      acd309(40)=dotproduct(ninjaE3,spvak2k1)
      acd309(41)=abb309(39)
      acd309(42)=dotproduct(ninjaE3,spvak4k7)
      acd309(43)=abb309(93)
      acd309(44)=abb309(100)
      acd309(45)=abb309(43)
      acd309(46)=abb309(34)
      acd309(47)=abb309(51)
      acd309(48)=abb309(24)
      acd309(49)=dotproduct(ninjaA,spvak2l6)
      acd309(50)=dotproduct(ninjaA,spvak3l6)
      acd309(51)=dotproduct(ninjaA,spvak3k2)
      acd309(52)=abb309(11)
      acd309(53)=abb309(18)
      acd309(54)=abb309(23)
      acd309(55)=abb309(89)
      acd309(56)=abb309(25)
      acd309(57)=abb309(30)
      acd309(58)=abb309(54)
      acd309(59)=abb309(13)
      acd309(60)=dotproduct(ninjaE3,spvak1l6)
      acd309(61)=abb309(19)
      acd309(62)=dotproduct(ninjaE3,spvak2l5)
      acd309(63)=abb309(20)
      acd309(64)=abb309(21)
      acd309(65)=abb309(47)
      acd309(66)=dotproduct(ninjaE3,spvak1k2)
      acd309(67)=abb309(27)
      acd309(68)=dotproduct(ninjaE3,spvak1k3)
      acd309(69)=abb309(50)
      acd309(70)=dotproduct(ninjaE3,spvak7l6)
      acd309(71)=dotproduct(ninjaE3,spvak7k3)
      acd309(72)=abb309(56)
      acd309(73)=dotproduct(ninjaE3,spvak7k2)
      acd309(74)=abb309(69)
      acd309(75)=dotproduct(ninjaE3,spval5l6)
      acd309(76)=abb309(78)
      acd309(77)=abb309(41)
      acd309(78)=abb309(74)
      acd309(79)=abb309(97)
      acd309(80)=dotproduct(ninjaE3,spvak3k7)
      acd309(81)=abb309(82)
      acd309(82)=dotproduct(ninjaE3,spvak3k1)
      acd309(83)=abb309(92)
      acd309(84)=acd309(15)*acd309(16)
      acd309(85)=acd309(4)+acd309(5)
      acd309(86)=acd309(85)*acd309(12)
      acd309(87)=acd309(8)*acd309(14)
      acd309(88)=acd309(6)*acd309(13)
      acd309(84)=acd309(87)+acd309(88)+acd309(84)+acd309(86)
      acd309(86)=acd309(10)*acd309(17)
      acd309(87)=acd309(1)*acd309(7)
      acd309(86)=acd309(87)+acd309(86)+acd309(84)
      acd309(86)=acd309(6)*acd309(86)
      acd309(87)=acd309(8)*acd309(9)
      acd309(88)=acd309(1)-acd309(85)
      acd309(88)=acd309(3)*acd309(88)
      acd309(89)=-acd309(10)*acd309(11)
      acd309(88)=acd309(87)+acd309(89)+acd309(88)
      acd309(88)=acd309(1)*acd309(88)
      acd309(89)=acd309(21)*acd309(20)
      acd309(90)=acd309(16)*acd309(18)
      acd309(89)=acd309(89)-acd309(90)
      acd309(90)=acd309(10)*acd309(19)
      acd309(90)=acd309(90)+acd309(89)
      acd309(90)=acd309(8)*acd309(90)
      acd309(91)=acd309(85)*acd309(11)
      acd309(92)=acd309(10)*acd309(91)
      acd309(86)=acd309(86)+acd309(88)+acd309(92)+acd309(90)
      acd309(86)=acd309(2)*acd309(86)
      acd309(88)=acd309(36)*acd309(17)
      acd309(90)=acd309(35)*acd309(14)
      acd309(92)=acd309(27)*acd309(7)
      acd309(93)=acd309(34)*acd309(13)
      acd309(94)=acd309(16)*acd309(49)
      acd309(95)=acd309(29)+acd309(30)
      acd309(96)=acd309(12)*acd309(95)
      acd309(88)=acd309(96)+acd309(94)+2.0_ki*acd309(93)+acd309(92)+acd309(90)+&
      &acd309(54)+acd309(88)
      acd309(88)=acd309(6)*acd309(88)
      acd309(90)=acd309(21)*acd309(51)
      acd309(92)=acd309(36)*acd309(19)
      acd309(93)=acd309(27)*acd309(9)
      acd309(94)=acd309(34)*acd309(14)
      acd309(96)=-acd309(16)*acd309(50)
      acd309(90)=acd309(96)+acd309(94)+acd309(93)+acd309(92)+acd309(59)+acd309(&
      &90)
      acd309(90)=acd309(8)*acd309(90)
      acd309(92)=acd309(11)*acd309(36)
      acd309(93)=acd309(35)*acd309(9)
      acd309(94)=acd309(34)*acd309(7)
      acd309(96)=2.0_ki*acd309(27)-acd309(95)
      acd309(96)=acd309(3)*acd309(96)
      acd309(93)=-acd309(92)+acd309(96)+acd309(94)+acd309(39)+acd309(93)
      acd309(93)=acd309(1)*acd309(93)
      acd309(94)=acd309(12)*acd309(34)
      acd309(96)=acd309(3)*acd309(27)
      acd309(92)=-acd309(45)+acd309(92)+acd309(94)-acd309(96)
      acd309(92)=acd309(92)*acd309(85)
      acd309(94)=acd309(35)*acd309(19)
      acd309(96)=acd309(34)*acd309(17)
      acd309(95)=-acd309(27)+acd309(95)
      acd309(95)=acd309(11)*acd309(95)
      acd309(94)=acd309(95)+acd309(94)+acd309(96)
      acd309(94)=acd309(10)*acd309(94)
      acd309(95)=acd309(35)*acd309(89)
      acd309(96)=acd309(75)*acd309(76)
      acd309(97)=acd309(73)*acd309(74)
      acd309(98)=acd309(71)*acd309(72)
      acd309(99)=acd309(68)*acd309(69)
      acd309(100)=acd309(66)*acd309(67)
      acd309(101)=acd309(62)*acd309(63)
      acd309(102)=acd309(60)*acd309(61)
      acd309(103)=acd309(47)*acd309(70)
      acd309(104)=2.0_ki*acd309(32)
      acd309(105)=acd309(46)*acd309(104)
      acd309(106)=acd309(25)*acd309(65)
      acd309(107)=acd309(16)*acd309(34)
      acd309(107)=acd309(64)+acd309(107)
      acd309(107)=acd309(15)*acd309(107)
      acd309(88)=acd309(88)+acd309(93)+acd309(90)+acd309(94)+acd309(107)+acd309&
      &(106)+acd309(105)+acd309(103)+acd309(102)+acd309(101)+acd309(100)+acd309&
      &(99)+acd309(98)+acd309(96)+acd309(97)+acd309(95)+acd309(92)
      acd309(88)=acd309(2)*acd309(88)
      acd309(89)=acd309(28)*acd309(89)
      acd309(90)=acd309(82)*acd309(83)
      acd309(92)=acd309(80)*acd309(81)
      acd309(93)=acd309(18)*acd309(55)
      acd309(94)=acd309(42)*acd309(78)
      acd309(95)=acd309(40)*acd309(77)
      acd309(96)=acd309(37)*acd309(53)
      acd309(97)=acd309(28)*acd309(19)
      acd309(97)=acd309(79)+acd309(97)
      acd309(97)=acd309(10)*acd309(97)
      acd309(89)=acd309(97)+acd309(89)+acd309(96)+acd309(95)+acd309(94)+acd309(&
      &93)+acd309(90)+acd309(92)
      acd309(89)=acd309(8)*acd309(89)
      acd309(84)=acd309(28)*acd309(84)
      acd309(90)=acd309(42)*acd309(57)
      acd309(92)=acd309(40)*acd309(56)
      acd309(93)=acd309(37)*acd309(52)
      acd309(94)=-acd309(15)*acd309(55)
      acd309(95)=acd309(28)*acd309(17)
      acd309(95)=acd309(58)+acd309(95)
      acd309(95)=acd309(10)*acd309(95)
      acd309(96)=acd309(1)*acd309(28)
      acd309(97)=acd309(7)*acd309(96)
      acd309(84)=acd309(97)+acd309(95)+acd309(94)+acd309(93)+acd309(90)+acd309(&
      &92)+acd309(84)
      acd309(84)=acd309(6)*acd309(84)
      acd309(90)=acd309(42)*acd309(43)
      acd309(92)=acd309(40)*acd309(41)
      acd309(93)=acd309(37)*acd309(38)
      acd309(90)=-acd309(93)+acd309(90)-acd309(92)
      acd309(92)=-acd309(3)*acd309(85)
      acd309(87)=acd309(87)+acd309(92)
      acd309(87)=acd309(28)*acd309(87)
      acd309(92)=acd309(22)-acd309(31)
      acd309(93)=acd309(23)*acd309(92)
      acd309(94)=acd309(33)*acd309(104)
      acd309(95)=-acd309(28)*acd309(11)
      acd309(95)=acd309(44)+acd309(95)
      acd309(95)=acd309(10)*acd309(95)
      acd309(96)=acd309(3)*acd309(96)
      acd309(87)=acd309(96)+acd309(95)+acd309(94)+acd309(87)+acd309(93)+acd309(&
      &90)
      acd309(87)=acd309(1)*acd309(87)
      acd309(90)=-acd309(90)*acd309(85)
      acd309(93)=-acd309(26)*acd309(92)
      acd309(94)=acd309(48)*acd309(104)
      acd309(93)=acd309(94)+acd309(93)
      acd309(93)=acd309(25)*acd309(93)
      acd309(92)=acd309(24)*acd309(92)
      acd309(94)=-acd309(47)*acd309(104)
      acd309(92)=acd309(94)+acd309(92)
      acd309(92)=acd309(15)*acd309(92)
      acd309(85)=-acd309(44)*acd309(85)
      acd309(91)=acd309(28)*acd309(91)
      acd309(85)=acd309(91)+acd309(85)
      acd309(85)=acd309(10)*acd309(85)
      acd309(84)=acd309(88)+acd309(84)+acd309(87)+acd309(89)+acd309(85)+acd309(&
      &93)+acd309(92)+acd309(90)
      brack(ninjaidxt1mu0)=acd309(86)
      brack(ninjaidxt0mu0)=acd309(84)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d309h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd309h2
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
end module     p0_dbaru_epnebbbarg_d309h2l131
