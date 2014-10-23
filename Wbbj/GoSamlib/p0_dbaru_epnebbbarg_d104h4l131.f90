module     p0_dbaru_epnebbbarg_d104h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d104h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd104h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd104
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd104(1)=dotproduct(ninjaE3,spvak1k2)
      acd104(2)=dotproduct(ninjaE3,spvak4k3)
      acd104(3)=dotproduct(ninjaE3,spvak7k2)
      acd104(4)=abb104(21)
      acd104(5)=dotproduct(ninjaE3,spval6k2)
      acd104(6)=abb104(22)
      acd104(7)=dotproduct(ninjaE3,spval5k2)
      acd104(8)=abb104(23)
      acd104(9)=acd104(4)*acd104(3)
      acd104(10)=acd104(6)*acd104(5)
      acd104(11)=acd104(8)*acd104(7)
      acd104(9)=acd104(11)+acd104(9)+acd104(10)
      acd104(9)=acd104(9)*acd104(2)*acd104(1)
      brack(ninjaidxt2mu0)=acd104(9)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd104h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(88) :: acd104
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd104(1)=dotproduct(ninjaE3,spvak4k3)
      acd104(2)=dotproduct(ninjaE3,spvak7k2)
      acd104(3)=dotproduct(ninjaE4,spvak1k2)
      acd104(4)=abb104(21)
      acd104(5)=dotproduct(ninjaE3,spval5k2)
      acd104(6)=abb104(23)
      acd104(7)=dotproduct(ninjaE3,spval6k2)
      acd104(8)=abb104(22)
      acd104(9)=dotproduct(ninjaE3,spvak1k2)
      acd104(10)=dotproduct(ninjaE4,spvak7k2)
      acd104(11)=dotproduct(ninjaE4,spval5k2)
      acd104(12)=dotproduct(ninjaE4,spval6k2)
      acd104(13)=dotproduct(ninjaE4,spvak4k3)
      acd104(14)=abb104(69)
      acd104(15)=abb104(80)
      acd104(16)=abb104(66)
      acd104(17)=dotproduct(ninjaE3,spvak4k2)
      acd104(18)=abb104(16)
      acd104(19)=dotproduct(k3,ninjaE3)
      acd104(20)=abb104(74)
      acd104(21)=abb104(82)
      acd104(22)=abb104(75)
      acd104(23)=abb104(17)
      acd104(24)=dotproduct(k4,ninjaE3)
      acd104(25)=dotproduct(ninjaA,ninjaE3)
      acd104(26)=dotproduct(ninjaA,spvak4k3)
      acd104(27)=dotproduct(ninjaA,spvak7k2)
      acd104(28)=dotproduct(ninjaA,spval5k2)
      acd104(29)=dotproduct(ninjaA,spval6k2)
      acd104(30)=dotproduct(ninjaA,spvak1k2)
      acd104(31)=abb104(11)
      acd104(32)=abb104(13)
      acd104(33)=abb104(14)
      acd104(34)=abb104(15)
      acd104(35)=abb104(18)
      acd104(36)=dotproduct(ninjaE3,spvak3k2)
      acd104(37)=dotproduct(ninjaE3,spvak1k3)
      acd104(38)=abb104(20)
      acd104(39)=abb104(25)
      acd104(40)=abb104(24)
      acd104(41)=dotproduct(k1,ninjaE3)
      acd104(42)=abb104(45)
      acd104(43)=dotproduct(k3,ninjaA)
      acd104(44)=dotproduct(ninjaA,spvak4k2)
      acd104(45)=abb104(61)
      acd104(46)=dotproduct(k4,ninjaA)
      acd104(47)=dotproduct(l5,ninjaE3)
      acd104(48)=dotproduct(l6,ninjaE3)
      acd104(49)=dotproduct(k7,ninjaE3)
      acd104(50)=dotproduct(ninjaA,ninjaA)
      acd104(51)=abb104(35)
      acd104(52)=dotproduct(ninjaA,spvak3k2)
      acd104(53)=dotproduct(ninjaA,spvak1k3)
      acd104(54)=abb104(12)
      acd104(55)=abb104(68)
      acd104(56)=abb104(78)
      acd104(57)=abb104(77)
      acd104(58)=abb104(26)
      acd104(59)=abb104(19)
      acd104(60)=acd104(4)*acd104(2)
      acd104(61)=acd104(6)*acd104(5)
      acd104(62)=acd104(8)*acd104(7)
      acd104(60)=acd104(60)+acd104(61)+acd104(62)
      acd104(61)=acd104(1)*acd104(60)
      acd104(62)=acd104(61)*acd104(3)
      acd104(63)=acd104(13)*acd104(9)*acd104(60)
      acd104(62)=acd104(62)+acd104(63)
      acd104(63)=acd104(14)*acd104(2)
      acd104(64)=acd104(15)*acd104(5)
      acd104(65)=acd104(16)*acd104(7)
      acd104(66)=acd104(18)*acd104(17)
      acd104(63)=acd104(63)+acd104(64)+acd104(65)+acd104(66)
      acd104(64)=acd104(6)*acd104(11)
      acd104(65)=acd104(4)*acd104(10)
      acd104(64)=acd104(64)+acd104(65)
      acd104(65)=acd104(9)*acd104(1)
      acd104(64)=acd104(65)*acd104(64)
      acd104(67)=acd104(65)*acd104(8)
      acd104(68)=acd104(67)*acd104(12)
      acd104(64)=acd104(68)+acd104(64)
      acd104(68)=acd104(63)+acd104(64)+acd104(62)
      acd104(69)=acd104(31)*acd104(2)
      acd104(70)=acd104(32)*acd104(5)
      acd104(71)=acd104(33)*acd104(7)
      acd104(72)=acd104(35)*acd104(17)
      acd104(73)=acd104(36)*acd104(18)
      acd104(69)=acd104(73)+acd104(72)+acd104(71)+acd104(70)+acd104(69)
      acd104(69)=acd104(1)*acd104(69)
      acd104(70)=2.0_ki*acd104(25)
      acd104(71)=acd104(70)*acd104(63)
      acd104(72)=acd104(20)*acd104(2)
      acd104(73)=acd104(21)*acd104(5)
      acd104(74)=acd104(22)*acd104(7)
      acd104(72)=-acd104(74)+acd104(72)-acd104(73)
      acd104(73)=acd104(24)+acd104(19)
      acd104(74)=acd104(73)*acd104(72)
      acd104(75)=acd104(38)*acd104(2)
      acd104(76)=acd104(39)*acd104(5)
      acd104(77)=acd104(40)*acd104(7)
      acd104(75)=acd104(77)+acd104(75)+acd104(76)
      acd104(76)=acd104(37)*acd104(75)
      acd104(77)=acd104(26)*acd104(9)
      acd104(78)=acd104(77)*acd104(60)
      acd104(61)=acd104(30)*acd104(61)
      acd104(79)=acd104(27)*acd104(4)
      acd104(80)=acd104(28)*acd104(6)
      acd104(79)=acd104(34)+acd104(80)+acd104(79)
      acd104(65)=acd104(65)*acd104(79)
      acd104(67)=acd104(29)*acd104(67)
      acd104(79)=acd104(73)*acd104(23)
      acd104(80)=-acd104(17)*acd104(79)
      acd104(61)=acd104(80)+acd104(67)+acd104(61)+acd104(69)+acd104(71)+acd104(&
      &78)+acd104(65)+acd104(76)+acd104(74)
      acd104(62)=acd104(62)+acd104(66)+acd104(64)
      acd104(62)=ninjaP*acd104(62)
      acd104(63)=acd104(50)*acd104(63)
      acd104(64)=acd104(23)*acd104(17)
      acd104(64)=acd104(64)-acd104(72)
      acd104(65)=-acd104(46)-acd104(43)
      acd104(64)=acd104(64)*acd104(65)
      acd104(65)=acd104(38)*acd104(27)
      acd104(66)=acd104(39)*acd104(28)
      acd104(67)=acd104(40)*acd104(29)
      acd104(65)=acd104(59)+acd104(67)+acd104(66)+acd104(65)
      acd104(65)=acd104(37)*acd104(65)
      acd104(66)=acd104(20)*acd104(27)
      acd104(67)=-acd104(21)*acd104(28)
      acd104(69)=-acd104(22)*acd104(29)
      acd104(66)=-acd104(45)+acd104(69)+acd104(67)+acd104(66)
      acd104(66)=acd104(73)*acd104(66)
      acd104(60)=acd104(30)*acd104(26)*acd104(60)
      acd104(67)=acd104(53)*acd104(75)
      acd104(69)=acd104(36)*acd104(26)
      acd104(71)=acd104(52)*acd104(1)
      acd104(69)=acd104(71)+acd104(69)
      acd104(69)=acd104(18)*acd104(69)
      acd104(71)=acd104(30)*acd104(1)
      acd104(71)=acd104(71)+acd104(77)
      acd104(72)=acd104(27)*acd104(4)*acd104(71)
      acd104(73)=acd104(28)*acd104(6)*acd104(71)
      acd104(74)=acd104(29)*acd104(8)*acd104(71)
      acd104(75)=ninjaP*acd104(2)
      acd104(76)=acd104(27)*acd104(70)
      acd104(75)=acd104(75)+acd104(76)
      acd104(75)=acd104(14)*acd104(75)
      acd104(76)=ninjaP*acd104(5)
      acd104(77)=acd104(28)*acd104(70)
      acd104(76)=acd104(76)+acd104(77)
      acd104(76)=acd104(15)*acd104(76)
      acd104(77)=ninjaP*acd104(7)
      acd104(78)=acd104(29)*acd104(70)
      acd104(77)=acd104(77)+acd104(78)
      acd104(77)=acd104(16)*acd104(77)
      acd104(78)=acd104(18)*acd104(70)
      acd104(78)=acd104(78)-acd104(79)
      acd104(78)=acd104(44)*acd104(78)
      acd104(79)=acd104(26)*acd104(2)
      acd104(80)=acd104(27)*acd104(1)
      acd104(79)=acd104(79)+acd104(80)
      acd104(79)=acd104(31)*acd104(79)
      acd104(80)=acd104(26)*acd104(5)
      acd104(81)=acd104(28)*acd104(1)
      acd104(80)=acd104(80)+acd104(81)
      acd104(80)=acd104(32)*acd104(80)
      acd104(81)=acd104(26)*acd104(7)
      acd104(82)=acd104(29)*acd104(1)
      acd104(81)=acd104(81)+acd104(82)
      acd104(81)=acd104(33)*acd104(81)
      acd104(71)=acd104(34)*acd104(71)
      acd104(82)=acd104(17)*acd104(26)
      acd104(83)=acd104(44)*acd104(1)
      acd104(82)=acd104(82)+acd104(83)
      acd104(82)=acd104(35)*acd104(82)
      acd104(83)=acd104(49)+acd104(48)+acd104(47)+acd104(41)
      acd104(83)=acd104(42)*acd104(83)
      acd104(70)=acd104(51)*acd104(70)
      acd104(84)=acd104(54)*acd104(1)
      acd104(85)=acd104(55)*acd104(2)
      acd104(86)=acd104(56)*acd104(5)
      acd104(87)=acd104(57)*acd104(7)
      acd104(88)=acd104(58)*acd104(9)
      acd104(60)=acd104(88)+acd104(87)+acd104(86)+acd104(85)+acd104(84)+acd104(&
      &70)+acd104(67)+acd104(82)+acd104(71)+acd104(81)+acd104(80)+acd104(79)+ac&
      &d104(63)+acd104(78)+acd104(77)+acd104(76)+acd104(75)+acd104(74)+acd104(7&
      &3)+acd104(72)+acd104(60)+acd104(66)+acd104(83)+acd104(65)+acd104(69)+acd&
      &104(64)+acd104(62)
      brack(ninjaidxt1mu0)=acd104(61)
      brack(ninjaidxt0mu0)=acd104(60)
      brack(ninjaidxt0mu2)=acd104(68)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d104h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd104h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d104h4l131
