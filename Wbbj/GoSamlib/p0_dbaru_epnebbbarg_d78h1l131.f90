module     p0_dbaru_epnebbbarg_d78h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d78h1l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd78h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd78
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd78h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(79) :: acd78
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd78(1)=dotproduct(k2,ninjaE3)
      acd78(2)=dotproduct(k7,ninjaE3)
      acd78(3)=dotproduct(ninjaE3,spvak4k3)
      acd78(4)=abb78(96)
      acd78(5)=dotproduct(ninjaE3,spval6l5)
      acd78(6)=abb78(17)
      acd78(7)=dotproduct(ninjaE3,spvak2l5)
      acd78(8)=abb78(48)
      acd78(9)=dotproduct(ninjaE3,spvak2k7)
      acd78(10)=abb78(32)
      acd78(11)=dotproduct(ninjaE3,spvak7k2)
      acd78(12)=abb78(42)
      acd78(13)=dotproduct(ninjaE3,spvak7l5)
      acd78(14)=abb78(39)
      acd78(15)=dotproduct(k2,ninjaA)
      acd78(16)=dotproduct(k7,ninjaA)
      acd78(17)=dotproduct(ninjaA,spvak4k3)
      acd78(18)=abb78(38)
      acd78(19)=abb78(25)
      acd78(20)=dotproduct(ninjaE3,spval6k7)
      acd78(21)=abb78(55)
      acd78(22)=dotproduct(ninjaE3,spvak4k2)
      acd78(23)=abb78(22)
      acd78(24)=dotproduct(ninjaE3,spvak4k7)
      acd78(25)=abb78(65)
      acd78(26)=dotproduct(l6,ninjaE3)
      acd78(27)=abb78(94)
      acd78(28)=abb78(16)
      acd78(29)=abb78(73)
      acd78(30)=abb78(21)
      acd78(31)=abb78(61)
      acd78(32)=dotproduct(ninjaA,spval6l5)
      acd78(33)=dotproduct(ninjaA,spvak2l5)
      acd78(34)=abb78(37)
      acd78(35)=abb78(49)
      acd78(36)=dotproduct(ninjaE3,spval6k2)
      acd78(37)=abb78(36)
      acd78(38)=dotproduct(ninjaE3,spvak2l6)
      acd78(39)=abb78(19)
      acd78(40)=dotproduct(ninjaE3,spvak2k3)
      acd78(41)=abb78(23)
      acd78(42)=dotproduct(ninjaE3,spval6k3)
      acd78(43)=abb78(84)
      acd78(44)=dotproduct(ninjaA,ninjaE3)
      acd78(45)=abb78(47)
      acd78(46)=abb78(41)
      acd78(47)=abb78(35)
      acd78(48)=abb78(70)
      acd78(49)=dotproduct(ninjaA,spvak2k7)
      acd78(50)=dotproduct(ninjaA,spvak7k2)
      acd78(51)=dotproduct(ninjaA,spvak7l5)
      acd78(52)=abb78(11)
      acd78(53)=abb78(33)
      acd78(54)=abb78(29)
      acd78(55)=dotproduct(ninjaE3,spvak7l6)
      acd78(56)=abb78(20)
      acd78(57)=dotproduct(ninjaE3,spvak7k3)
      acd78(58)=abb78(24)
      acd78(59)=abb78(26)
      acd78(60)=abb78(28)
      acd78(61)=abb78(12)
      acd78(62)=abb78(18)
      acd78(63)=dotproduct(ninjaE3,spvak1k2)
      acd78(64)=abb78(27)
      acd78(65)=acd78(12)*acd78(11)
      acd78(66)=acd78(13)*acd78(14)
      acd78(65)=acd78(65)+acd78(66)
      acd78(66)=acd78(10)*acd78(5)
      acd78(66)=acd78(65)+acd78(66)
      acd78(67)=acd78(9)*acd78(3)
      acd78(68)=acd78(67)*acd78(66)
      acd78(69)=acd78(4)*acd78(1)
      acd78(70)=acd78(7)*acd78(8)
      acd78(69)=acd78(69)+acd78(70)
      acd78(70)=acd78(6)*acd78(5)
      acd78(70)=acd78(69)+acd78(70)
      acd78(71)=acd78(2)*acd78(3)
      acd78(72)=acd78(71)*acd78(70)
      acd78(68)=acd78(72)+acd78(68)
      acd78(70)=acd78(17)*acd78(70)
      acd78(72)=acd78(18)*acd78(1)
      acd78(73)=acd78(27)*acd78(26)
      acd78(74)=acd78(35)*acd78(20)
      acd78(75)=acd78(37)*acd78(36)
      acd78(76)=acd78(39)*acd78(38)
      acd78(77)=acd78(41)*acd78(40)
      acd78(78)=acd78(43)*acd78(42)
      acd78(70)=acd78(78)+acd78(77)+acd78(76)+acd78(75)+acd78(74)+acd78(73)+acd&
      &78(72)+acd78(70)
      acd78(70)=acd78(2)*acd78(70)
      acd78(66)=acd78(17)*acd78(66)
      acd78(72)=acd78(28)*acd78(26)
      acd78(73)=acd78(53)*acd78(20)
      acd78(74)=acd78(54)*acd78(36)
      acd78(75)=acd78(56)*acd78(55)
      acd78(76)=acd78(58)*acd78(57)
      acd78(77)=acd78(59)*acd78(11)
      acd78(78)=acd78(60)*acd78(42)
      acd78(66)=acd78(78)+acd78(77)+acd78(76)+acd78(75)+acd78(74)+acd78(73)+acd&
      &78(72)+acd78(66)
      acd78(66)=acd78(9)*acd78(66)
      acd78(72)=acd78(19)*acd78(1)
      acd78(73)=2.0_ki*acd78(44)
      acd78(74)=acd78(45)*acd78(73)
      acd78(75)=acd78(61)*acd78(20)
      acd78(76)=acd78(62)*acd78(36)
      acd78(77)=acd78(64)*acd78(63)
      acd78(72)=acd78(77)+acd78(76)+acd78(75)+acd78(74)+acd78(72)
      acd78(72)=acd78(3)*acd78(72)
      acd78(74)=acd78(21)*acd78(20)
      acd78(75)=acd78(23)*acd78(22)
      acd78(76)=acd78(25)*acd78(24)
      acd78(74)=acd78(76)+acd78(75)+acd78(74)
      acd78(74)=acd78(1)*acd78(74)
      acd78(75)=acd78(46)*acd78(20)
      acd78(76)=acd78(47)*acd78(22)
      acd78(77)=acd78(48)*acd78(24)
      acd78(75)=acd78(77)+acd78(76)+acd78(75)
      acd78(73)=acd78(73)*acd78(75)
      acd78(75)=acd78(30)*acd78(22)
      acd78(76)=acd78(31)*acd78(24)
      acd78(75)=acd78(76)+acd78(75)
      acd78(76)=acd78(26)+acd78(2)
      acd78(75)=acd78(76)*acd78(75)
      acd78(76)=acd78(50)*acd78(12)
      acd78(77)=acd78(51)*acd78(14)
      acd78(76)=acd78(52)+acd78(77)+acd78(76)
      acd78(76)=acd78(67)*acd78(76)
      acd78(77)=acd78(15)*acd78(4)
      acd78(78)=acd78(33)*acd78(8)
      acd78(77)=acd78(34)+acd78(78)+acd78(77)
      acd78(77)=acd78(71)*acd78(77)
      acd78(69)=acd78(3)*acd78(69)
      acd78(78)=acd78(5)*acd78(3)
      acd78(79)=acd78(6)*acd78(78)
      acd78(69)=acd78(79)+acd78(69)
      acd78(69)=acd78(16)*acd78(69)
      acd78(65)=acd78(3)*acd78(65)
      acd78(78)=acd78(10)*acd78(78)
      acd78(65)=acd78(78)+acd78(65)
      acd78(65)=acd78(49)*acd78(65)
      acd78(71)=acd78(6)*acd78(71)
      acd78(67)=acd78(10)*acd78(67)
      acd78(67)=acd78(71)+acd78(67)
      acd78(67)=acd78(32)*acd78(67)
      acd78(71)=acd78(29)*acd78(26)*acd78(20)
      acd78(65)=acd78(71)+acd78(67)+acd78(65)+acd78(69)+acd78(66)+acd78(70)+acd&
      &78(72)+acd78(73)+acd78(77)+acd78(76)+acd78(74)+acd78(75)
      brack(ninjaidxt1mu0)=acd78(68)
      brack(ninjaidxt0mu0)=acd78(65)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d78h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd78h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6
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
end module     p0_dbaru_epnebbbarg_d78h1l131
