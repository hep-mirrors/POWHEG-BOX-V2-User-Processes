module     p0_dbaru_epnebbbarg_d298h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d298h2l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd298h2
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
      use p0_dbaru_epnebbbarg_abbrevd298h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(78) :: acd298
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd298(1)=dotproduct(ninjaE3,spvak1k2)
      acd298(2)=dotproduct(ninjaE3,spvak2k7)
      acd298(3)=dotproduct(ninjaE3,spvak4k3)
      acd298(4)=dotproduct(ninjaE3,spval5l6)
      acd298(5)=abb298(51)
      acd298(6)=dotproduct(k1,ninjaE3)
      acd298(7)=dotproduct(ninjaE3,spvak2l6)
      acd298(8)=dotproduct(ninjaE3,spval5k2)
      acd298(9)=abb298(151)
      acd298(10)=dotproduct(ninjaE3,spval5k7)
      acd298(11)=abb298(152)
      acd298(12)=abb298(75)
      acd298(13)=dotproduct(k2,ninjaE3)
      acd298(14)=abb298(10)
      acd298(15)=abb298(156)
      acd298(16)=abb298(99)
      acd298(17)=abb298(142)
      acd298(18)=dotproduct(ninjaE3,spvak1l6)
      acd298(19)=abb298(36)
      acd298(20)=dotproduct(ninjaE3,spvak1k3)
      acd298(21)=abb298(126)
      acd298(22)=abb298(105)
      acd298(23)=dotproduct(l5,ninjaE3)
      acd298(24)=abb298(26)
      acd298(25)=abb298(97)
      acd298(26)=dotproduct(l6,ninjaE3)
      acd298(27)=abb298(90)
      acd298(28)=dotproduct(k7,ninjaE3)
      acd298(29)=abb298(136)
      acd298(30)=abb298(103)
      acd298(31)=dotproduct(ninjaA,ninjaE3)
      acd298(32)=abb298(70)
      acd298(33)=abb298(158)
      acd298(34)=abb298(134)
      acd298(35)=abb298(17)
      acd298(36)=abb298(116)
      acd298(37)=abb298(128)
      acd298(38)=abb298(91)
      acd298(39)=dotproduct(ninjaA,spvak1k2)
      acd298(40)=dotproduct(ninjaA,spvak2k7)
      acd298(41)=dotproduct(ninjaA,spvak4k3)
      acd298(42)=dotproduct(ninjaA,spval5l6)
      acd298(43)=abb298(81)
      acd298(44)=abb298(107)
      acd298(45)=abb298(33)
      acd298(46)=abb298(140)
      acd298(47)=dotproduct(ninjaE3,spvak4l6)
      acd298(48)=abb298(14)
      acd298(49)=abb298(96)
      acd298(50)=abb298(31)
      acd298(51)=abb298(68)
      acd298(52)=dotproduct(ninjaE3,spvak7l6)
      acd298(53)=dotproduct(ninjaE3,spvak1k7)
      acd298(54)=abb298(109)
      acd298(55)=abb298(11)
      acd298(56)=abb298(49)
      acd298(57)=abb298(37)
      acd298(58)=abb298(86)
      acd298(59)=dotproduct(ninjaE3,spval5k3)
      acd298(60)=abb298(94)
      acd298(61)=dotproduct(ninjaE3,spval5k1)
      acd298(62)=abb298(85)
      acd298(63)=acd298(4)*acd298(3)
      acd298(64)=acd298(2)*acd298(1)*acd298(5)*acd298(63)
      acd298(65)=acd298(28)+acd298(6)
      acd298(65)=acd298(12)*acd298(65)
      acd298(66)=acd298(47)*acd298(48)
      acd298(67)=acd298(53)*acd298(54)
      acd298(68)=acd298(26)*acd298(27)
      acd298(69)=acd298(9)*acd298(52)
      acd298(70)=acd298(20)*acd298(50)
      acd298(71)=acd298(18)*acd298(49)
      acd298(72)=2.0_ki*acd298(31)
      acd298(73)=acd298(34)*acd298(72)
      acd298(74)=acd298(13)*acd298(16)
      acd298(75)=acd298(1)*acd298(45)
      acd298(76)=acd298(7)*acd298(43)
      acd298(77)=acd298(3)*acd298(46)
      acd298(78)=acd298(4)*acd298(51)
      acd298(65)=acd298(78)+acd298(77)+acd298(76)+acd298(75)+acd298(74)+acd298(&
      &73)+acd298(71)+acd298(70)+acd298(69)+acd298(68)+acd298(66)+acd298(67)+ac&
      &d298(65)
      acd298(65)=acd298(8)*acd298(65)
      acd298(66)=acd298(72)*acd298(33)
      acd298(67)=acd298(13)*acd298(15)
      acd298(66)=acd298(66)-acd298(67)
      acd298(67)=acd298(53)*acd298(58)
      acd298(68)=acd298(20)*acd298(60)
      acd298(69)=acd298(28)+acd298(26)
      acd298(70)=acd298(6)+acd298(69)
      acd298(70)=acd298(11)*acd298(70)
      acd298(71)=acd298(5)*acd298(41)
      acd298(71)=acd298(56)+acd298(71)
      acd298(71)=acd298(1)*acd298(71)
      acd298(73)=acd298(5)*acd298(39)
      acd298(73)=-acd298(44)+acd298(73)
      acd298(73)=acd298(3)*acd298(73)
      acd298(67)=acd298(73)+acd298(71)+acd298(70)+acd298(67)+acd298(68)+acd298(&
      &66)
      acd298(67)=acd298(4)*acd298(67)
      acd298(68)=-acd298(60)*acd298(59)
      acd298(70)=acd298(23)*acd298(24)
      acd298(71)=-acd298(11)*acd298(61)
      acd298(73)=-acd298(10)*acd298(58)
      acd298(68)=acd298(73)+acd298(71)+acd298(68)+acd298(70)
      acd298(68)=acd298(18)*acd298(68)
      acd298(70)=acd298(20)*acd298(37)
      acd298(71)=-acd298(18)*acd298(36)
      acd298(70)=acd298(70)+acd298(71)
      acd298(70)=acd298(70)*acd298(72)
      acd298(71)=acd298(20)*acd298(21)
      acd298(73)=acd298(18)*acd298(19)
      acd298(71)=acd298(71)+acd298(73)
      acd298(71)=acd298(13)*acd298(71)
      acd298(73)=acd298(20)*acd298(23)*acd298(25)
      acd298(74)=acd298(5)*acd298(42)
      acd298(74)=acd298(55)+acd298(74)
      acd298(74)=acd298(74)*acd298(3)*acd298(1)
      acd298(65)=acd298(65)+acd298(67)+acd298(74)+acd298(71)+acd298(70)+acd298(&
      &73)+acd298(68)
      acd298(65)=acd298(2)*acd298(65)
      acd298(67)=acd298(28)*acd298(30)
      acd298(68)=acd298(38)*acd298(72)
      acd298(70)=acd298(13)*acd298(22)
      acd298(71)=acd298(5)*acd298(40)
      acd298(71)=acd298(57)+acd298(71)
      acd298(71)=acd298(1)*acd298(71)
      acd298(67)=acd298(71)+acd298(70)+acd298(67)+acd298(68)
      acd298(63)=acd298(67)*acd298(63)
      acd298(67)=acd298(69)-acd298(6)
      acd298(68)=-acd298(9)*acd298(67)
      acd298(69)=acd298(32)*acd298(72)
      acd298(70)=acd298(13)*acd298(14)
      acd298(68)=acd298(70)+acd298(69)+acd298(68)
      acd298(68)=acd298(7)*acd298(68)
      acd298(69)=acd298(28)*acd298(29)
      acd298(70)=acd298(35)*acd298(72)
      acd298(71)=acd298(13)*acd298(17)
      acd298(69)=acd298(71)+acd298(69)+acd298(70)
      acd298(69)=acd298(3)*acd298(69)
      acd298(68)=acd298(68)+acd298(69)
      acd298(68)=acd298(8)*acd298(68)
      acd298(67)=-acd298(11)*acd298(67)
      acd298(66)=acd298(67)-acd298(66)
      acd298(67)=acd298(7)*acd298(10)
      acd298(66)=acd298(66)*acd298(67)
      acd298(69)=acd298(10)*acd298(52)*acd298(62)
      acd298(67)=acd298(44)*acd298(67)
      acd298(67)=acd298(69)+acd298(67)
      acd298(67)=acd298(3)*acd298(67)
      acd298(63)=acd298(65)+acd298(68)+acd298(63)+acd298(66)+acd298(67)
      brack(ninjaidxt1mu0)=acd298(64)
      brack(ninjaidxt0mu0)=acd298(63)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d298h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd298h2
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
end module     p0_dbaru_epnebbbarg_d298h2l131
