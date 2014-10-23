module     p0_dbaru_epnebbbarg_d13h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d13h0l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd13h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd13
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd13(1)=dotproduct(ninjaE3,spvak1k2)
      acd13(2)=dotproduct(ninjaE3,spvak4k3)
      acd13(3)=dotproduct(ninjaE3,spval6k2)
      acd13(4)=abb13(25)
      acd13(5)=dotproduct(ninjaE3,spval5k2)
      acd13(6)=abb13(26)
      acd13(7)=acd13(4)*acd13(3)
      acd13(8)=acd13(6)*acd13(5)
      acd13(7)=acd13(7)+acd13(8)
      acd13(7)=acd13(7)*acd13(2)*acd13(1)
      brack(ninjaidxt2mu0)=acd13(7)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd13h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(83) :: acd13
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd13(1)=dotproduct(ninjaE3,spval5k2)
      acd13(2)=dotproduct(ninjaE3,spvak1k2)
      acd13(3)=dotproduct(ninjaE4,spvak4k3)
      acd13(4)=abb13(26)
      acd13(5)=dotproduct(ninjaE3,spvak4k3)
      acd13(6)=dotproduct(ninjaE4,spvak1k2)
      acd13(7)=abb13(20)
      acd13(8)=dotproduct(ninjaE3,spvak4k2)
      acd13(9)=abb13(28)
      acd13(10)=dotproduct(ninjaE3,spval6k2)
      acd13(11)=abb13(25)
      acd13(12)=abb13(44)
      acd13(13)=dotproduct(ninjaE4,spval5k2)
      acd13(14)=dotproduct(ninjaE4,spval6k2)
      acd13(15)=dotproduct(k1,ninjaE3)
      acd13(16)=abb13(16)
      acd13(17)=abb13(36)
      acd13(18)=dotproduct(k2,ninjaE3)
      acd13(19)=abb13(33)
      acd13(20)=dotproduct(l5,ninjaE3)
      acd13(21)=abb13(37)
      acd13(22)=dotproduct(l6,ninjaE3)
      acd13(23)=dotproduct(ninjaA,ninjaE3)
      acd13(24)=dotproduct(ninjaA,spval5k2)
      acd13(25)=dotproduct(ninjaA,spval6k2)
      acd13(26)=dotproduct(ninjaA,spvak1k2)
      acd13(27)=dotproduct(ninjaA,spvak4k3)
      acd13(28)=dotproduct(ninjaE3,spvak1k3)
      acd13(29)=abb13(11)
      acd13(30)=abb13(13)
      acd13(31)=abb13(35)
      acd13(32)=abb13(12)
      acd13(33)=abb13(32)
      acd13(34)=dotproduct(ninjaE3,spvak1k7)
      acd13(35)=abb13(14)
      acd13(36)=abb13(24)
      acd13(37)=dotproduct(ninjaE3,spvak7k2)
      acd13(38)=abb13(30)
      acd13(39)=abb13(21)
      acd13(40)=abb13(47)
      acd13(41)=abb13(18)
      acd13(42)=abb13(23)
      acd13(43)=abb13(46)
      acd13(44)=dotproduct(k1,ninjaA)
      acd13(45)=dotproduct(k2,ninjaA)
      acd13(46)=dotproduct(ninjaA,spvak4k2)
      acd13(47)=abb13(19)
      acd13(48)=dotproduct(l5,ninjaA)
      acd13(49)=dotproduct(l6,ninjaA)
      acd13(50)=dotproduct(ninjaA,ninjaA)
      acd13(51)=abb13(17)
      acd13(52)=dotproduct(ninjaA,spvak1k3)
      acd13(53)=dotproduct(ninjaA,spvak1k7)
      acd13(54)=dotproduct(ninjaA,spvak7k2)
      acd13(55)=abb13(15)
      acd13(56)=abb13(22)
      acd13(57)=acd13(11)*acd13(14)
      acd13(58)=acd13(4)*acd13(13)
      acd13(58)=acd13(57)+acd13(58)
      acd13(59)=acd13(2)*acd13(5)
      acd13(58)=acd13(58)*acd13(59)
      acd13(60)=acd13(5)*acd13(6)
      acd13(61)=acd13(2)*acd13(3)
      acd13(60)=acd13(60)+acd13(61)
      acd13(61)=acd13(11)*acd13(60)
      acd13(61)=acd13(12)+acd13(61)
      acd13(61)=acd13(10)*acd13(61)
      acd13(62)=acd13(4)*acd13(60)
      acd13(62)=acd13(7)+acd13(62)
      acd13(62)=acd13(1)*acd13(62)
      acd13(63)=acd13(8)*acd13(9)
      acd13(58)=acd13(62)+acd13(61)+acd13(63)+acd13(58)
      acd13(61)=acd13(37)*acd13(38)
      acd13(62)=acd13(34)*acd13(35)
      acd13(63)=acd13(28)*acd13(29)
      acd13(64)=acd13(20)+acd13(22)
      acd13(65)=acd13(64)+acd13(15)
      acd13(66)=acd13(65)*acd13(16)
      acd13(67)=2.0_ki*acd13(23)
      acd13(68)=acd13(67)*acd13(7)
      acd13(61)=acd13(68)+acd13(61)+acd13(62)+acd13(63)+acd13(66)
      acd13(62)=acd13(8)*acd13(32)
      acd13(63)=acd13(5)*acd13(26)
      acd13(66)=acd13(4)*acd13(63)
      acd13(68)=acd13(4)*acd13(27)
      acd13(68)=acd13(68)+acd13(36)
      acd13(69)=acd13(2)*acd13(68)
      acd13(70)=acd13(10)*acd13(33)
      acd13(71)=acd13(1)*acd13(31)
      acd13(62)=acd13(71)+acd13(70)+acd13(69)+acd13(66)+acd13(62)+acd13(61)
      acd13(62)=acd13(1)*acd13(62)
      acd13(66)=acd13(37)*acd13(43)
      acd13(69)=acd13(34)*acd13(41)
      acd13(70)=acd13(28)*acd13(30)
      acd13(65)=acd13(65)*acd13(17)
      acd13(71)=acd13(67)*acd13(12)
      acd13(65)=acd13(66)+acd13(69)+acd13(70)+acd13(65)+acd13(71)
      acd13(66)=acd13(8)*acd13(39)
      acd13(63)=acd13(11)*acd13(63)
      acd13(69)=acd13(11)*acd13(27)
      acd13(69)=acd13(69)+acd13(42)
      acd13(70)=acd13(2)*acd13(69)
      acd13(71)=acd13(10)*acd13(40)
      acd13(63)=acd13(71)+acd13(70)+acd13(63)+acd13(66)+acd13(65)
      acd13(63)=acd13(10)*acd13(63)
      acd13(64)=acd13(21)*acd13(64)
      acd13(66)=acd13(18)*acd13(19)
      acd13(64)=acd13(64)-acd13(66)
      acd13(66)=acd13(9)*acd13(67)
      acd13(66)=acd13(66)-acd13(64)
      acd13(66)=acd13(8)*acd13(66)
      acd13(70)=acd13(25)*acd13(11)
      acd13(71)=acd13(24)*acd13(4)
      acd13(71)=acd13(70)+acd13(71)
      acd13(59)=acd13(71)*acd13(59)
      acd13(59)=acd13(62)+acd13(63)+acd13(66)+acd13(59)
      acd13(62)=acd13(4)*ninjaP
      acd13(63)=acd13(62)*acd13(60)
      acd13(66)=ninjaP+acd13(50)
      acd13(71)=acd13(7)*acd13(66)
      acd13(72)=acd13(38)*acd13(54)
      acd13(73)=acd13(35)*acd13(53)
      acd13(74)=acd13(29)*acd13(52)
      acd13(75)=acd13(46)*acd13(32)
      acd13(76)=acd13(26)*acd13(36)
      acd13(77)=acd13(48)+acd13(49)
      acd13(78)=acd13(77)+acd13(44)
      acd13(79)=acd13(16)*acd13(78)
      acd13(80)=acd13(4)*acd13(26)
      acd13(81)=acd13(27)*acd13(80)
      acd13(82)=acd13(25)*acd13(33)
      acd13(83)=acd13(24)*acd13(31)
      acd13(63)=2.0_ki*acd13(83)+acd13(82)+acd13(81)+acd13(79)+acd13(76)+acd13(&
      &75)+acd13(74)+acd13(73)+acd13(55)+acd13(72)+acd13(63)+acd13(71)
      acd13(63)=acd13(1)*acd13(63)
      acd13(60)=ninjaP*acd13(60)
      acd13(71)=acd13(26)*acd13(27)
      acd13(60)=acd13(71)+acd13(60)
      acd13(60)=acd13(11)*acd13(60)
      acd13(71)=acd13(12)*acd13(66)
      acd13(72)=acd13(43)*acd13(54)
      acd13(73)=acd13(41)*acd13(53)
      acd13(74)=acd13(30)*acd13(52)
      acd13(75)=acd13(46)*acd13(39)
      acd13(76)=acd13(26)*acd13(42)
      acd13(78)=acd13(17)*acd13(78)
      acd13(79)=acd13(25)*acd13(40)
      acd13(81)=acd13(24)*acd13(33)
      acd13(60)=acd13(81)+2.0_ki*acd13(79)+acd13(78)+acd13(76)+acd13(75)+acd13(&
      &74)+acd13(73)+acd13(56)+acd13(72)+acd13(60)+acd13(71)
      acd13(60)=acd13(10)*acd13(60)
      acd13(65)=acd13(25)*acd13(65)
      acd13(61)=acd13(24)*acd13(61)
      acd13(66)=acd13(9)*acd13(66)
      acd13(71)=acd13(19)*acd13(45)
      acd13(72)=-acd13(21)*acd13(77)
      acd13(73)=acd13(25)*acd13(39)
      acd13(74)=acd13(24)*acd13(32)
      acd13(66)=acd13(74)+acd13(73)+acd13(72)+acd13(71)+acd13(66)
      acd13(66)=acd13(8)*acd13(66)
      acd13(57)=ninjaP*acd13(57)
      acd13(62)=acd13(13)*acd13(62)
      acd13(57)=acd13(57)+acd13(62)
      acd13(57)=acd13(5)*acd13(57)
      acd13(62)=acd13(25)*acd13(69)
      acd13(68)=acd13(24)*acd13(68)
      acd13(57)=acd13(57)+acd13(62)+acd13(68)
      acd13(57)=acd13(2)*acd13(57)
      acd13(62)=-acd13(46)*acd13(64)
      acd13(64)=acd13(46)*acd13(9)
      acd13(64)=acd13(51)+acd13(64)
      acd13(64)=acd13(64)*acd13(67)
      acd13(67)=acd13(26)*acd13(70)
      acd13(68)=acd13(24)*acd13(80)
      acd13(67)=acd13(67)+acd13(68)
      acd13(67)=acd13(5)*acd13(67)
      acd13(68)=acd13(18)*acd13(47)
      acd13(57)=acd13(63)+acd13(60)+acd13(57)+acd13(67)+acd13(66)+acd13(61)+acd&
      &13(65)+acd13(64)+acd13(68)+acd13(62)
      brack(ninjaidxt1mu0)=acd13(59)
      brack(ninjaidxt0mu0)=acd13(57)
      brack(ninjaidxt0mu2)=acd13(58)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d13h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd13h0
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
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d13h0l131
