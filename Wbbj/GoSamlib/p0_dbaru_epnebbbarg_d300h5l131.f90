module     p0_dbaru_epnebbbarg_d300h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d300h5l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd300h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd300
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd300h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(92) :: acd300
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd300(1)=dotproduct(k2,ninjaE3)
      acd300(2)=dotproduct(ninjaE3,spvak1k2)
      acd300(3)=dotproduct(ninjaE3,spvak7k2)
      acd300(4)=dotproduct(ninjaE3,spvak4k3)
      acd300(5)=abb300(137)
      acd300(6)=dotproduct(ninjaE3,spval6l5)
      acd300(7)=abb300(131)
      acd300(8)=dotproduct(ninjaE3,spvak1l5)
      acd300(9)=dotproduct(ninjaE3,spval6k2)
      acd300(10)=dotproduct(k1,ninjaE3)
      acd300(11)=abb300(121)
      acd300(12)=abb300(133)
      acd300(13)=dotproduct(k2,ninjaA)
      acd300(14)=abb300(95)
      acd300(15)=dotproduct(ninjaA,spvak1k2)
      acd300(16)=dotproduct(ninjaA,spvak7k2)
      acd300(17)=dotproduct(ninjaA,spvak4k3)
      acd300(18)=abb300(22)
      acd300(19)=abb300(107)
      acd300(20)=dotproduct(ninjaE3,spvak4k2)
      acd300(21)=abb300(15)
      acd300(22)=abb300(48)
      acd300(23)=dotproduct(ninjaE3,spvak1k3)
      acd300(24)=abb300(35)
      acd300(25)=dotproduct(ninjaE3,spval6k3)
      acd300(26)=abb300(93)
      acd300(27)=abb300(88)
      acd300(28)=dotproduct(ninjaE3,spval5k2)
      acd300(29)=abb300(138)
      acd300(30)=dotproduct(l5,ninjaE3)
      acd300(31)=abb300(19)
      acd300(32)=abb300(122)
      acd300(33)=abb300(127)
      acd300(34)=dotproduct(l6,ninjaE3)
      acd300(35)=abb300(11)
      acd300(36)=abb300(44)
      acd300(37)=dotproduct(k7,ninjaE3)
      acd300(38)=abb300(50)
      acd300(39)=dotproduct(ninjaA,ninjaE3)
      acd300(40)=abb300(25)
      acd300(41)=abb300(70)
      acd300(42)=abb300(123)
      acd300(43)=abb300(129)
      acd300(44)=dotproduct(ninjaA,spvak1l5)
      acd300(45)=dotproduct(ninjaA,spval6l5)
      acd300(46)=dotproduct(ninjaA,spval6k2)
      acd300(47)=abb300(17)
      acd300(48)=dotproduct(ninjaE3,spvak2k1)
      acd300(49)=abb300(24)
      acd300(50)=dotproduct(ninjaE3,spval6k1)
      acd300(51)=abb300(28)
      acd300(52)=dotproduct(ninjaE3,spvak2k3)
      acd300(53)=abb300(31)
      acd300(54)=dotproduct(ninjaE3,spvak2k7)
      acd300(55)=abb300(39)
      acd300(56)=dotproduct(ninjaE3,spvak2l6)
      acd300(57)=abb300(49)
      acd300(58)=abb300(90)
      acd300(59)=abb300(125)
      acd300(60)=dotproduct(ninjaE3,spval6k7)
      acd300(61)=abb300(142)
      acd300(62)=dotproduct(ninjaE3,spvak7l5)
      acd300(63)=abb300(32)
      acd300(64)=abb300(20)
      acd300(65)=abb300(71)
      acd300(66)=abb300(97)
      acd300(67)=abb300(69)
      acd300(68)=abb300(140)
      acd300(69)=abb300(91)
      acd300(70)=abb300(85)
      acd300(71)=abb300(141)
      acd300(72)=dotproduct(ninjaE3,spvak1k7)
      acd300(73)=dotproduct(ninjaE3,spvak1l6)
      acd300(74)=abb300(143)
      acd300(75)=abb300(144)
      acd300(76)=abb300(115)
      acd300(77)=acd300(6)*acd300(7)
      acd300(78)=acd300(1)*acd300(5)
      acd300(77)=acd300(77)+acd300(78)
      acd300(78)=acd300(2)*acd300(77)
      acd300(79)=acd300(7)*acd300(8)
      acd300(80)=-acd300(9)*acd300(79)
      acd300(78)=acd300(80)+acd300(78)
      acd300(78)=acd300(3)*acd300(4)*acd300(78)
      acd300(80)=acd300(56)*acd300(57)
      acd300(81)=acd300(54)*acd300(55)
      acd300(82)=acd300(52)*acd300(53)
      acd300(83)=acd300(48)*acd300(49)
      acd300(84)=acd300(60)*acd300(61)
      acd300(85)=acd300(50)*acd300(51)
      acd300(86)=acd300(34)*acd300(35)
      acd300(87)=acd300(30)*acd300(31)
      acd300(88)=2.0_ki*acd300(39)
      acd300(89)=acd300(40)*acd300(88)
      acd300(90)=-acd300(25)*acd300(59)
      acd300(91)=acd300(7)*acd300(17)
      acd300(91)=acd300(58)+acd300(91)
      acd300(91)=acd300(6)*acd300(91)
      acd300(92)=acd300(5)*acd300(17)
      acd300(92)=acd300(18)+acd300(92)
      acd300(92)=acd300(1)*acd300(92)
      acd300(80)=acd300(92)+acd300(91)+acd300(90)+acd300(89)+acd300(87)+acd300(&
      &86)+acd300(85)+acd300(84)+acd300(83)+acd300(82)+acd300(80)+acd300(81)
      acd300(80)=acd300(2)*acd300(80)
      acd300(81)=acd300(5)*acd300(13)
      acd300(82)=acd300(7)*acd300(45)
      acd300(81)=acd300(82)+acd300(47)+acd300(81)
      acd300(81)=acd300(2)*acd300(81)
      acd300(82)=acd300(37)*acd300(38)
      acd300(83)=acd300(62)*acd300(65)
      acd300(84)=acd300(41)*acd300(88)
      acd300(85)=acd300(8)*acd300(66)
      acd300(86)=-acd300(46)*acd300(79)
      acd300(87)=acd300(7)*acd300(15)
      acd300(87)=acd300(67)+acd300(87)
      acd300(87)=acd300(6)*acd300(87)
      acd300(89)=-acd300(7)*acd300(44)
      acd300(89)=acd300(68)+acd300(89)
      acd300(89)=acd300(9)*acd300(89)
      acd300(90)=acd300(5)*acd300(15)
      acd300(90)=acd300(22)+acd300(90)
      acd300(90)=acd300(1)*acd300(90)
      acd300(81)=acd300(81)+acd300(90)+acd300(89)+acd300(87)+acd300(86)+acd300(&
      &85)+acd300(84)+acd300(82)+acd300(83)
      acd300(81)=acd300(4)*acd300(81)
      acd300(82)=acd300(73)*acd300(75)
      acd300(83)=-acd300(61)*acd300(72)
      acd300(84)=acd300(10)*acd300(12)
      acd300(85)=acd300(23)*acd300(59)
      acd300(86)=-acd300(8)*acd300(58)
      acd300(87)=-acd300(17)*acd300(79)
      acd300(82)=acd300(87)+acd300(86)+acd300(85)+acd300(84)+acd300(82)+acd300(&
      &83)
      acd300(82)=acd300(9)*acd300(82)
      acd300(83)=acd300(28)*acd300(29)
      acd300(84)=acd300(20)*acd300(21)
      acd300(85)=acd300(25)*acd300(26)
      acd300(86)=acd300(23)*acd300(24)
      acd300(87)=acd300(9)*acd300(27)
      acd300(89)=acd300(1)*acd300(14)
      acd300(83)=acd300(89)+acd300(87)+acd300(86)+acd300(85)+acd300(83)+acd300(&
      &84)
      acd300(83)=acd300(1)*acd300(83)
      acd300(84)=acd300(60)*acd300(71)
      acd300(85)=acd300(50)*acd300(69)
      acd300(86)=acd300(34)*acd300(36)
      acd300(87)=acd300(25)*acd300(70)
      acd300(84)=acd300(87)+acd300(86)+acd300(84)+acd300(85)
      acd300(84)=acd300(8)*acd300(84)
      acd300(85)=acd300(73)*acd300(74)
      acd300(86)=-acd300(71)*acd300(72)
      acd300(87)=acd300(10)*acd300(11)
      acd300(89)=-acd300(23)*acd300(70)
      acd300(85)=acd300(89)+acd300(87)+acd300(85)+acd300(86)
      acd300(85)=acd300(6)*acd300(85)
      acd300(86)=acd300(30)*acd300(33)
      acd300(87)=acd300(43)*acd300(88)
      acd300(86)=acd300(86)+acd300(87)
      acd300(86)=acd300(25)*acd300(86)
      acd300(87)=acd300(30)*acd300(32)
      acd300(88)=acd300(42)*acd300(88)
      acd300(87)=acd300(87)+acd300(88)
      acd300(87)=acd300(23)*acd300(87)
      acd300(88)=acd300(1)*acd300(19)
      acd300(89)=acd300(4)*acd300(64)
      acd300(88)=acd300(88)+acd300(89)
      acd300(88)=acd300(3)*acd300(88)
      acd300(80)=acd300(88)+acd300(81)+acd300(80)+acd300(83)+acd300(82)+acd300(&
      &85)+acd300(84)+acd300(86)+acd300(87)
      acd300(80)=acd300(3)*acd300(80)
      acd300(81)=acd300(62)*acd300(76)
      acd300(79)=-acd300(16)*acd300(79)
      acd300(79)=acd300(81)+acd300(79)
      acd300(79)=acd300(9)*acd300(79)
      acd300(77)=acd300(16)*acd300(77)
      acd300(81)=acd300(62)*acd300(63)
      acd300(77)=acd300(81)+acd300(77)
      acd300(77)=acd300(2)*acd300(77)
      acd300(77)=acd300(79)+acd300(77)
      acd300(77)=acd300(4)*acd300(77)
      acd300(77)=acd300(77)+acd300(80)
      brack(ninjaidxt1mu0)=acd300(78)
      brack(ninjaidxt0mu0)=acd300(77)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d300h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd300h5
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
end module     p0_dbaru_epnebbbarg_d300h5l131
