module     p0_dbaru_epnebbbarg_d38h7l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d38h7l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd38h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(33) :: acd38
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd38(1)=dotproduct(k2,ninjaE3)
      acd38(2)=dotproduct(ninjaE3,spvak2l5)
      acd38(3)=abb38(30)
      acd38(4)=dotproduct(ninjaE3,spvak2l6)
      acd38(5)=abb38(26)
      acd38(6)=dotproduct(k3,ninjaE3)
      acd38(7)=dotproduct(k4,ninjaE3)
      acd38(8)=dotproduct(ninjaE3,spvak4k3)
      acd38(9)=abb38(14)
      acd38(10)=dotproduct(ninjaE3,spvak1k2)
      acd38(11)=abb38(25)
      acd38(12)=dotproduct(ninjaE3,spvak4k2)
      acd38(13)=abb38(17)
      acd38(14)=dotproduct(ninjaE3,spvak1k3)
      acd38(15)=abb38(28)
      acd38(16)=dotproduct(ninjaE3,spvak7k3)
      acd38(17)=abb38(35)
      acd38(18)=dotproduct(ninjaE3,spvak7k2)
      acd38(19)=abb38(36)
      acd38(20)=abb38(20)
      acd38(21)=abb38(16)
      acd38(22)=abb38(24)
      acd38(23)=abb38(23)
      acd38(24)=abb38(32)
      acd38(25)=abb38(33)
      acd38(26)=acd38(18)*acd38(25)
      acd38(27)=acd38(16)*acd38(24)
      acd38(28)=acd38(14)*acd38(23)
      acd38(29)=acd38(12)*acd38(22)
      acd38(30)=acd38(10)*acd38(21)
      acd38(31)=acd38(8)*acd38(20)
      acd38(32)=-acd38(7)+acd38(1)-acd38(6)
      acd38(33)=-acd38(5)*acd38(32)
      acd38(26)=acd38(33)+acd38(31)+acd38(30)+acd38(29)+acd38(28)+acd38(26)+acd&
      &38(27)
      acd38(26)=acd38(4)*acd38(26)
      acd38(27)=acd38(18)*acd38(19)
      acd38(28)=acd38(16)*acd38(17)
      acd38(29)=acd38(14)*acd38(15)
      acd38(30)=acd38(12)*acd38(13)
      acd38(31)=acd38(10)*acd38(11)
      acd38(33)=acd38(8)*acd38(9)
      acd38(32)=-acd38(3)*acd38(32)
      acd38(27)=acd38(32)+acd38(33)+acd38(31)+acd38(30)+acd38(29)+acd38(27)+acd&
      &38(28)
      acd38(27)=acd38(2)*acd38(27)
      acd38(26)=acd38(26)+acd38(27)
      brack(ninjaidxt2mu0)=acd38(26)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd38h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(99) :: acd38
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd38(1)=dotproduct(k2,ninjaE3)
      acd38(2)=dotproduct(ninjaE4,spvak2l5)
      acd38(3)=abb38(30)
      acd38(4)=dotproduct(ninjaE4,spvak2l6)
      acd38(5)=abb38(26)
      acd38(6)=dotproduct(k2,ninjaE4)
      acd38(7)=dotproduct(ninjaE3,spvak2l5)
      acd38(8)=dotproduct(ninjaE3,spvak2l6)
      acd38(9)=dotproduct(k3,ninjaE3)
      acd38(10)=dotproduct(k3,ninjaE4)
      acd38(11)=dotproduct(k4,ninjaE3)
      acd38(12)=dotproduct(k4,ninjaE4)
      acd38(13)=dotproduct(ninjaE3,spvak4k3)
      acd38(14)=abb38(14)
      acd38(15)=abb38(20)
      acd38(16)=dotproduct(ninjaE3,spvak4k2)
      acd38(17)=abb38(17)
      acd38(18)=abb38(24)
      acd38(19)=dotproduct(ninjaE4,spvak4k3)
      acd38(20)=dotproduct(ninjaE4,spvak4k2)
      acd38(21)=dotproduct(ninjaE4,spvak1k2)
      acd38(22)=abb38(25)
      acd38(23)=dotproduct(ninjaE4,spvak1k3)
      acd38(24)=abb38(28)
      acd38(25)=dotproduct(ninjaE4,spvak7k3)
      acd38(26)=abb38(35)
      acd38(27)=dotproduct(ninjaE4,spvak7k2)
      acd38(28)=abb38(36)
      acd38(29)=dotproduct(ninjaE3,spvak1k2)
      acd38(30)=abb38(16)
      acd38(31)=abb38(23)
      acd38(32)=abb38(32)
      acd38(33)=abb38(33)
      acd38(34)=dotproduct(ninjaE3,spvak1k3)
      acd38(35)=dotproduct(ninjaE3,spvak7k3)
      acd38(36)=dotproduct(ninjaE3,spvak7k2)
      acd38(37)=abb38(27)
      acd38(38)=dotproduct(k1,ninjaE3)
      acd38(39)=abb38(70)
      acd38(40)=dotproduct(k2,ninjaA)
      acd38(41)=dotproduct(ninjaA,spvak2l5)
      acd38(42)=dotproduct(ninjaA,spvak2l6)
      acd38(43)=abb38(37)
      acd38(44)=dotproduct(k3,ninjaA)
      acd38(45)=abb38(60)
      acd38(46)=dotproduct(k4,ninjaA)
      acd38(47)=dotproduct(l5,ninjaE3)
      acd38(48)=abb38(22)
      acd38(49)=dotproduct(l6,ninjaE3)
      acd38(50)=dotproduct(k7,ninjaE3)
      acd38(51)=dotproduct(ninjaA,ninjaE3)
      acd38(52)=dotproduct(ninjaA,spvak4k3)
      acd38(53)=dotproduct(ninjaA,spvak4k2)
      acd38(54)=dotproduct(ninjaA,spvak1k2)
      acd38(55)=dotproduct(ninjaA,spvak1k3)
      acd38(56)=dotproduct(ninjaA,spvak7k3)
      acd38(57)=dotproduct(ninjaA,spvak7k2)
      acd38(58)=abb38(12)
      acd38(59)=abb38(13)
      acd38(60)=abb38(15)
      acd38(61)=abb38(18)
      acd38(62)=dotproduct(ninjaE3,spvak1l5)
      acd38(63)=abb38(19)
      acd38(64)=dotproduct(ninjaE3,spvak1l6)
      acd38(65)=abb38(21)
      acd38(66)=dotproduct(ninjaE3,spvak7l5)
      acd38(67)=abb38(47)
      acd38(68)=dotproduct(ninjaE3,spvak7l6)
      acd38(69)=abb38(51)
      acd38(70)=dotproduct(k1,ninjaA)
      acd38(71)=dotproduct(l5,ninjaA)
      acd38(72)=dotproduct(l6,ninjaA)
      acd38(73)=dotproduct(k7,ninjaA)
      acd38(74)=dotproduct(ninjaA,ninjaA)
      acd38(75)=dotproduct(ninjaA,spvak1l5)
      acd38(76)=dotproduct(ninjaA,spvak1l6)
      acd38(77)=dotproduct(ninjaA,spvak7l5)
      acd38(78)=dotproduct(ninjaA,spvak7l6)
      acd38(79)=abb38(68)
      acd38(80)=acd38(33)*acd38(27)
      acd38(81)=acd38(32)*acd38(25)
      acd38(82)=acd38(31)*acd38(23)
      acd38(83)=acd38(30)*acd38(21)
      acd38(84)=acd38(18)*acd38(20)
      acd38(85)=acd38(15)*acd38(19)
      acd38(86)=-acd38(12)+acd38(6)-acd38(10)
      acd38(87)=acd38(86)*acd38(5)
      acd38(80)=acd38(80)+acd38(84)+acd38(85)+acd38(81)+acd38(82)+acd38(83)-acd&
      &38(87)
      acd38(80)=acd38(80)*acd38(8)
      acd38(81)=acd38(28)*acd38(27)
      acd38(82)=acd38(26)*acd38(25)
      acd38(83)=acd38(24)*acd38(23)
      acd38(84)=acd38(22)*acd38(21)
      acd38(85)=acd38(17)*acd38(20)
      acd38(87)=acd38(14)*acd38(19)
      acd38(86)=acd38(86)*acd38(3)
      acd38(81)=acd38(84)+acd38(85)+acd38(87)-acd38(86)+acd38(81)+acd38(82)+acd&
      &38(83)
      acd38(81)=acd38(81)*acd38(7)
      acd38(82)=acd38(33)*acd38(36)
      acd38(83)=acd38(32)*acd38(35)
      acd38(84)=acd38(31)*acd38(34)
      acd38(85)=acd38(30)*acd38(29)
      acd38(86)=acd38(9)+acd38(11)
      acd38(87)=acd38(1)-acd38(86)
      acd38(88)=acd38(87)*acd38(5)
      acd38(89)=acd38(16)*acd38(18)
      acd38(90)=acd38(13)*acd38(15)
      acd38(82)=-acd38(88)+acd38(85)+acd38(84)+acd38(82)+acd38(83)+acd38(89)+ac&
      &d38(90)
      acd38(83)=acd38(4)*acd38(82)
      acd38(84)=acd38(87)*acd38(3)
      acd38(85)=acd38(28)*acd38(36)
      acd38(87)=acd38(26)*acd38(35)
      acd38(88)=acd38(24)*acd38(34)
      acd38(89)=acd38(22)*acd38(29)
      acd38(90)=acd38(16)*acd38(17)
      acd38(91)=acd38(13)*acd38(14)
      acd38(84)=-acd38(84)+acd38(91)+acd38(90)+acd38(89)+acd38(88)+acd38(85)+ac&
      &d38(87)
      acd38(85)=acd38(84)*acd38(2)
      acd38(80)=acd38(80)+acd38(81)+acd38(37)+acd38(83)+acd38(85)
      acd38(81)=acd38(42)*acd38(82)
      acd38(82)=acd38(41)*acd38(84)
      acd38(83)=acd38(33)*acd38(57)
      acd38(84)=acd38(32)*acd38(56)
      acd38(85)=acd38(31)*acd38(55)
      acd38(87)=acd38(30)*acd38(54)
      acd38(88)=acd38(18)*acd38(53)
      acd38(89)=acd38(15)*acd38(52)
      acd38(83)=acd38(83)+acd38(88)+acd38(89)+acd38(84)+acd38(85)+acd38(87)+acd&
      &38(61)
      acd38(84)=acd38(44)+acd38(46)
      acd38(85)=acd38(40)-acd38(84)
      acd38(87)=-acd38(5)*acd38(85)
      acd38(87)=acd38(87)+acd38(83)
      acd38(87)=acd38(8)*acd38(87)
      acd38(88)=acd38(28)*acd38(57)
      acd38(89)=acd38(26)*acd38(56)
      acd38(90)=acd38(24)*acd38(55)
      acd38(91)=acd38(22)*acd38(54)
      acd38(92)=acd38(17)*acd38(53)
      acd38(93)=acd38(14)*acd38(52)
      acd38(88)=acd38(91)+acd38(92)+acd38(93)+acd38(60)+acd38(88)+acd38(89)+acd&
      &38(90)
      acd38(89)=-acd38(3)*acd38(85)
      acd38(89)=acd38(89)+acd38(88)
      acd38(89)=acd38(7)*acd38(89)
      acd38(86)=acd38(45)*acd38(86)
      acd38(90)=acd38(69)*acd38(68)
      acd38(91)=acd38(67)*acd38(66)
      acd38(92)=acd38(65)*acd38(64)
      acd38(93)=acd38(63)*acd38(62)
      acd38(94)=acd38(49)+acd38(47)
      acd38(94)=acd38(48)*acd38(94)
      acd38(95)=-acd38(50)+acd38(38)
      acd38(95)=acd38(39)*acd38(95)
      acd38(96)=acd38(37)*acd38(51)
      acd38(97)=acd38(16)*acd38(59)
      acd38(98)=acd38(13)*acd38(58)
      acd38(99)=acd38(1)*acd38(43)
      acd38(81)=acd38(89)+acd38(87)+acd38(99)+acd38(98)+acd38(97)+2.0_ki*acd38(&
      &96)+acd38(95)+acd38(94)+acd38(93)+acd38(92)+acd38(90)+acd38(91)+acd38(82&
      &)+acd38(81)+acd38(86)
      acd38(82)=ninjaP*acd38(80)
      acd38(83)=acd38(42)*acd38(83)
      acd38(86)=acd38(41)*acd38(88)
      acd38(87)=-acd38(5)*acd38(42)
      acd38(88)=-acd38(3)*acd38(41)
      acd38(87)=acd38(88)+acd38(87)
      acd38(85)=acd38(85)*acd38(87)
      acd38(84)=acd38(45)*acd38(84)
      acd38(87)=acd38(69)*acd38(78)
      acd38(88)=acd38(67)*acd38(77)
      acd38(89)=acd38(65)*acd38(76)
      acd38(90)=acd38(63)*acd38(75)
      acd38(91)=acd38(72)+acd38(71)
      acd38(91)=acd38(48)*acd38(91)
      acd38(92)=-acd38(73)+acd38(70)
      acd38(92)=acd38(39)*acd38(92)
      acd38(93)=acd38(37)*acd38(74)
      acd38(94)=acd38(53)*acd38(59)
      acd38(95)=acd38(52)*acd38(58)
      acd38(96)=acd38(40)*acd38(43)
      acd38(82)=acd38(82)+acd38(86)+acd38(83)+acd38(96)+acd38(95)+acd38(94)+acd&
      &38(93)+acd38(92)+acd38(91)+acd38(90)+acd38(89)+acd38(88)+acd38(79)+acd38&
      &(87)+acd38(85)+acd38(84)
      brack(ninjaidxt1mu0)=acd38(81)
      brack(ninjaidxt0mu0)=acd38(82)
      brack(ninjaidxt0mu2)=acd38(80)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d38h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd38h7
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
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d38h7l131
