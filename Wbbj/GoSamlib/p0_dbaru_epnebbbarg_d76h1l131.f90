module     p0_dbaru_epnebbbarg_d76h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d76h1l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd76h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd76
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd76h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(83) :: acd76
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd76(1)=dotproduct(k2,ninjaE3)
      acd76(2)=dotproduct(ninjaE3,spvak4k3)
      acd76(3)=dotproduct(ninjaE3,spvak1k2)
      acd76(4)=abb76(89)
      acd76(5)=dotproduct(ninjaE3,spvak1l5)
      acd76(6)=dotproduct(ninjaE3,spval6k2)
      acd76(7)=abb76(69)
      acd76(8)=dotproduct(ninjaE3,spval6l5)
      acd76(9)=dotproduct(k1,ninjaE3)
      acd76(10)=abb76(79)
      acd76(11)=abb76(93)
      acd76(12)=dotproduct(k2,ninjaA)
      acd76(13)=abb76(75)
      acd76(14)=dotproduct(ninjaA,spvak4k3)
      acd76(15)=dotproduct(ninjaA,spvak1k2)
      acd76(16)=dotproduct(ninjaE3,spvak4k2)
      acd76(17)=abb76(13)
      acd76(18)=abb76(97)
      acd76(19)=abb76(67)
      acd76(20)=abb76(25)
      acd76(21)=dotproduct(ninjaE3,spvak1k3)
      acd76(22)=abb76(60)
      acd76(23)=dotproduct(ninjaE3,spval6k3)
      acd76(24)=abb76(31)
      acd76(25)=dotproduct(ninjaE3,spvak7k2)
      acd76(26)=abb76(90)
      acd76(27)=dotproduct(ninjaE3,spval5k2)
      acd76(28)=abb76(95)
      acd76(29)=dotproduct(l5,ninjaE3)
      acd76(30)=abb76(24)
      acd76(31)=abb76(56)
      acd76(32)=abb76(94)
      acd76(33)=dotproduct(l6,ninjaE3)
      acd76(34)=abb76(16)
      acd76(35)=abb76(22)
      acd76(36)=dotproduct(ninjaA,ninjaE3)
      acd76(37)=abb76(28)
      acd76(38)=abb76(39)
      acd76(39)=abb76(46)
      acd76(40)=dotproduct(ninjaA,spvak1l5)
      acd76(41)=dotproduct(ninjaA,spval6k2)
      acd76(42)=dotproduct(ninjaA,spval6l5)
      acd76(43)=abb76(53)
      acd76(44)=abb76(50)
      acd76(45)=abb76(27)
      acd76(46)=dotproduct(ninjaE3,spval6k1)
      acd76(47)=abb76(48)
      acd76(48)=dotproduct(ninjaE3,spval6k7)
      acd76(49)=abb76(35)
      acd76(50)=abb76(17)
      acd76(51)=abb76(30)
      acd76(52)=abb76(98)
      acd76(53)=abb76(61)
      acd76(54)=dotproduct(ninjaE3,spvak1k7)
      acd76(55)=abb76(38)
      acd76(56)=dotproduct(ninjaE3,spvak1l6)
      acd76(57)=abb76(63)
      acd76(58)=dotproduct(ninjaE3,spvak2l6)
      acd76(59)=abb76(20)
      acd76(60)=dotproduct(ninjaE3,spvak2k3)
      acd76(61)=abb76(32)
      acd76(62)=dotproduct(ninjaE3,spvak2k7)
      acd76(63)=abb76(33)
      acd76(64)=abb76(34)
      acd76(65)=dotproduct(ninjaE3,spvak2k1)
      acd76(66)=abb76(36)
      acd76(67)=abb76(47)
      acd76(68)=-acd76(8)*acd76(7)
      acd76(69)=acd76(1)*acd76(4)
      acd76(68)=acd76(68)+acd76(69)
      acd76(68)=acd76(3)*acd76(68)
      acd76(69)=acd76(6)*acd76(5)*acd76(7)
      acd76(68)=acd76(69)+acd76(68)
      acd76(68)=acd76(2)*acd76(68)
      acd76(69)=acd76(4)*acd76(12)
      acd76(70)=-acd76(7)*acd76(42)
      acd76(69)=acd76(70)+acd76(51)+acd76(69)
      acd76(69)=acd76(2)*acd76(69)
      acd76(70)=acd76(65)*acd76(66)
      acd76(71)=acd76(62)*acd76(63)
      acd76(72)=acd76(60)*acd76(61)
      acd76(73)=acd76(58)*acd76(59)
      acd76(74)=acd76(48)*acd76(55)
      acd76(75)=acd76(46)*acd76(64)
      acd76(76)=acd76(33)*acd76(35)
      acd76(77)=2.0_ki*acd76(36)
      acd76(78)=acd76(37)*acd76(77)
      acd76(79)=acd76(29)*acd76(30)
      acd76(80)=acd76(23)*acd76(53)
      acd76(81)=acd76(7)*acd76(14)
      acd76(81)=acd76(81)-acd76(44)
      acd76(82)=-acd76(8)*acd76(81)
      acd76(83)=acd76(4)*acd76(14)
      acd76(83)=acd76(20)+acd76(83)
      acd76(83)=acd76(1)*acd76(83)
      acd76(69)=acd76(69)+acd76(83)+acd76(82)+acd76(80)+acd76(79)+acd76(78)+acd&
      &76(76)+acd76(75)+acd76(74)+acd76(73)+acd76(72)+acd76(70)+acd76(71)
      acd76(69)=acd76(3)*acd76(69)
      acd76(70)=acd76(27)*acd76(28)
      acd76(71)=acd76(25)*acd76(26)
      acd76(72)=acd76(16)*acd76(17)
      acd76(73)=acd76(23)*acd76(24)
      acd76(74)=acd76(21)*acd76(22)
      acd76(75)=acd76(6)*acd76(19)
      acd76(76)=acd76(1)*acd76(13)
      acd76(70)=acd76(76)+acd76(75)+acd76(74)+acd76(73)+acd76(72)+acd76(70)+acd&
      &76(71)
      acd76(70)=acd76(1)*acd76(70)
      acd76(71)=acd76(56)*acd76(57)
      acd76(72)=-acd76(54)*acd76(55)
      acd76(73)=acd76(9)*acd76(10)
      acd76(74)=-acd76(21)*acd76(53)
      acd76(75)=acd76(5)*acd76(81)
      acd76(71)=acd76(75)+acd76(74)+acd76(73)+acd76(71)+acd76(72)
      acd76(71)=acd76(6)*acd76(71)
      acd76(72)=acd76(56)*acd76(67)
      acd76(73)=-acd76(49)*acd76(54)
      acd76(74)=acd76(9)*acd76(11)
      acd76(75)=-acd76(21)*acd76(45)
      acd76(72)=acd76(75)+acd76(74)+acd76(72)+acd76(73)
      acd76(72)=acd76(8)*acd76(72)
      acd76(73)=acd76(48)*acd76(49)
      acd76(74)=acd76(46)*acd76(47)
      acd76(75)=acd76(33)*acd76(34)
      acd76(76)=acd76(23)*acd76(45)
      acd76(73)=acd76(76)+acd76(75)+acd76(73)+acd76(74)
      acd76(73)=acd76(5)*acd76(73)
      acd76(74)=-acd76(7)*acd76(15)
      acd76(74)=acd76(52)+acd76(74)
      acd76(74)=acd76(8)*acd76(74)
      acd76(75)=acd76(7)*acd76(41)
      acd76(75)=acd76(43)+acd76(75)
      acd76(75)=acd76(5)*acd76(75)
      acd76(76)=acd76(7)*acd76(40)
      acd76(76)=acd76(50)+acd76(76)
      acd76(76)=acd76(6)*acd76(76)
      acd76(78)=acd76(4)*acd76(15)
      acd76(78)=acd76(18)+acd76(78)
      acd76(78)=acd76(1)*acd76(78)
      acd76(74)=acd76(78)+acd76(76)+acd76(74)+acd76(75)
      acd76(74)=acd76(2)*acd76(74)
      acd76(75)=acd76(39)*acd76(77)
      acd76(76)=acd76(29)*acd76(32)
      acd76(75)=acd76(75)+acd76(76)
      acd76(75)=acd76(23)*acd76(75)
      acd76(76)=acd76(38)*acd76(77)
      acd76(77)=acd76(29)*acd76(31)
      acd76(76)=acd76(76)+acd76(77)
      acd76(76)=acd76(21)*acd76(76)
      acd76(69)=acd76(69)+acd76(74)+acd76(70)+acd76(71)+acd76(73)+acd76(72)+acd&
      &76(75)+acd76(76)
      brack(ninjaidxt1mu0)=acd76(68)
      brack(ninjaidxt0mu0)=acd76(69)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d76h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd76h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k5
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
end module     p0_dbaru_epnebbbarg_d76h1l131
