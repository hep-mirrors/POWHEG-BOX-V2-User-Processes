module     p0_dbaru_epnebbbarg_d15h1l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d15h1l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1x0mu0 = 0
   integer, parameter :: ninjaidxt0x0mu0 = 1
   integer, parameter :: ninjaidxt0x1mu0 = 2
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd15h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd15
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd15(1)=dotproduct(k2,ninjaE3)
      acd15(2)=dotproduct(k7,ninjaE3)
      acd15(3)=dotproduct(ninjaE3,spvak4k3)
      acd15(4)=abb15(34)
      acd15(5)=dotproduct(ninjaE3,spvak2k7)
      acd15(6)=abb15(23)
      acd15(7)=dotproduct(ninjaE3,spvak1k7)
      acd15(8)=abb15(39)
      acd15(9)=dotproduct(ninjaE3,spval6l5)
      acd15(10)=abb15(69)
      acd15(11)=abb15(27)
      acd15(12)=abb15(51)
      acd15(13)=acd15(10)*acd15(2)
      acd15(14)=acd15(11)*acd15(5)
      acd15(15)=acd15(12)*acd15(7)
      acd15(13)=acd15(15)+acd15(14)+acd15(13)
      acd15(13)=acd15(13)*acd15(9)
      acd15(14)=acd15(4)*acd15(2)
      acd15(15)=acd15(6)*acd15(5)
      acd15(16)=acd15(8)*acd15(7)
      acd15(14)=acd15(16)+acd15(14)+acd15(15)
      acd15(14)=acd15(14)*acd15(1)
      acd15(13)=acd15(14)+acd15(13)
      acd15(13)=acd15(3)*acd15(13)
      brack(ninjaidxt1x0mu0)=acd15(13)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd15h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(80) :: acd15
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd15(1)=dotproduct(k2,ninjaA1)
      acd15(2)=dotproduct(k7,ninjaE3)
      acd15(3)=dotproduct(ninjaE3,spvak4k3)
      acd15(4)=abb15(34)
      acd15(5)=dotproduct(ninjaE3,spvak2k7)
      acd15(6)=abb15(23)
      acd15(7)=dotproduct(ninjaE3,spvak1k7)
      acd15(8)=abb15(39)
      acd15(9)=dotproduct(k2,ninjaE3)
      acd15(10)=dotproduct(k7,ninjaA1)
      acd15(11)=dotproduct(ninjaA1,spvak4k3)
      acd15(12)=dotproduct(ninjaA1,spvak2k7)
      acd15(13)=dotproduct(ninjaA1,spvak1k7)
      acd15(14)=dotproduct(ninjaE3,spval6l5)
      acd15(15)=abb15(69)
      acd15(16)=dotproduct(ninjaA1,spval6l5)
      acd15(17)=abb15(27)
      acd15(18)=abb15(51)
      acd15(19)=dotproduct(k1,ninjaE3)
      acd15(20)=abb15(93)
      acd15(21)=abb15(77)
      acd15(22)=abb15(47)
      acd15(23)=abb15(45)
      acd15(24)=dotproduct(ninjaE3,spvak1k2)
      acd15(25)=abb15(30)
      acd15(26)=dotproduct(ninjaE3,spvak1l5)
      acd15(27)=abb15(19)
      acd15(28)=abb15(68)
      acd15(29)=dotproduct(k2,ninjaA0)
      acd15(30)=dotproduct(k7,ninjaA0)
      acd15(31)=dotproduct(ninjaA0,spvak4k3)
      acd15(32)=abb15(88)
      acd15(33)=dotproduct(ninjaA0,ninjaE3)
      acd15(34)=abb15(24)
      acd15(35)=dotproduct(ninjaA0,spvak2k7)
      acd15(36)=dotproduct(ninjaA0,spvak1k7)
      acd15(37)=abb15(48)
      acd15(38)=abb15(29)
      acd15(39)=abb15(74)
      acd15(40)=dotproduct(ninjaE3,spvak1k3)
      acd15(41)=abb15(28)
      acd15(42)=dotproduct(ninjaE3,spvak1l6)
      acd15(43)=abb15(35)
      acd15(44)=dotproduct(l5,ninjaE3)
      acd15(45)=dotproduct(l6,ninjaE3)
      acd15(46)=abb15(20)
      acd15(47)=dotproduct(ninjaA0,spval6l5)
      acd15(48)=abb15(16)
      acd15(49)=abb15(65)
      acd15(50)=abb15(38)
      acd15(51)=abb15(32)
      acd15(52)=abb15(41)
      acd15(53)=abb15(52)
      acd15(54)=abb15(13)
      acd15(55)=abb15(22)
      acd15(56)=abb15(15)
      acd15(57)=abb15(31)
      acd15(58)=abb15(70)
      acd15(59)=abb15(37)
      acd15(60)=abb15(36)
      acd15(61)=abb15(26)
      acd15(62)=acd15(4)*acd15(2)
      acd15(63)=acd15(6)*acd15(5)
      acd15(64)=acd15(8)*acd15(7)
      acd15(62)=acd15(64)+acd15(62)+acd15(63)
      acd15(62)=acd15(62)*acd15(9)
      acd15(63)=acd15(15)*acd15(2)
      acd15(65)=acd15(17)*acd15(5)
      acd15(66)=acd15(18)*acd15(7)
      acd15(63)=acd15(65)+acd15(63)+acd15(66)
      acd15(63)=acd15(14)*acd15(63)
      acd15(62)=acd15(62)+acd15(63)
      acd15(63)=acd15(11)*acd15(62)
      acd15(64)=acd15(64)*acd15(3)
      acd15(65)=acd15(5)*acd15(3)
      acd15(67)=acd15(65)*acd15(6)
      acd15(68)=acd15(2)*acd15(3)
      acd15(69)=acd15(68)*acd15(4)
      acd15(64)=acd15(69)+acd15(64)+acd15(67)
      acd15(67)=acd15(1)*acd15(64)
      acd15(69)=acd15(65)*acd15(17)
      acd15(70)=acd15(68)*acd15(15)
      acd15(66)=acd15(66)*acd15(3)
      acd15(66)=acd15(66)+acd15(69)+acd15(70)
      acd15(69)=acd15(16)*acd15(66)
      acd15(70)=acd15(14)*acd15(3)
      acd15(71)=acd15(70)*acd15(15)
      acd15(72)=acd15(9)*acd15(3)
      acd15(73)=acd15(72)*acd15(4)
      acd15(71)=acd15(71)+acd15(73)
      acd15(73)=acd15(10)*acd15(71)
      acd15(74)=acd15(70)*acd15(17)
      acd15(75)=acd15(72)*acd15(6)
      acd15(74)=acd15(74)+acd15(75)
      acd15(75)=acd15(12)*acd15(74)
      acd15(76)=acd15(70)*acd15(18)
      acd15(77)=acd15(72)*acd15(8)
      acd15(76)=acd15(76)+acd15(77)
      acd15(77)=acd15(13)*acd15(76)
      acd15(63)=acd15(77)+acd15(75)+acd15(73)+acd15(69)+acd15(67)+acd15(63)
      acd15(67)=acd15(9)-acd15(19)
      acd15(67)=acd15(23)*acd15(67)
      acd15(69)=acd15(48)*acd15(2)
      acd15(73)=2.0_ki*acd15(33)
      acd15(75)=acd15(51)*acd15(73)
      acd15(77)=acd15(54)*acd15(5)
      acd15(78)=acd15(56)*acd15(24)
      acd15(79)=acd15(57)*acd15(26)
      acd15(80)=acd15(59)*acd15(40)
      acd15(67)=acd15(67)+acd15(80)+acd15(79)+acd15(78)+acd15(77)+acd15(75)+acd&
      &15(69)
      acd15(67)=acd15(14)*acd15(67)
      acd15(69)=acd15(32)*acd15(2)
      acd15(75)=acd15(34)*acd15(73)
      acd15(77)=acd15(37)*acd15(5)
      acd15(78)=acd15(38)*acd15(26)
      acd15(79)=acd15(41)*acd15(40)
      acd15(80)=acd15(43)*acd15(42)
      acd15(69)=acd15(80)+acd15(79)+acd15(78)+acd15(77)+acd15(75)+acd15(69)
      acd15(69)=acd15(9)*acd15(69)
      acd15(75)=acd15(21)*acd15(2)
      acd15(77)=acd15(22)*acd15(5)
      acd15(78)=acd15(25)*acd15(24)
      acd15(79)=-acd15(27)*acd15(26)
      acd15(75)=acd15(79)+acd15(78)+acd15(77)+acd15(75)
      acd15(77)=-acd15(19)+acd15(45)+acd15(44)
      acd15(75)=acd15(77)*acd15(75)
      acd15(62)=acd15(31)*acd15(62)
      acd15(77)=acd15(28)*acd15(19)
      acd15(78)=acd15(60)*acd15(24)
      acd15(79)=acd15(61)*acd15(26)
      acd15(77)=acd15(79)+acd15(78)+acd15(77)
      acd15(77)=acd15(3)*acd15(77)
      acd15(78)=acd15(46)*acd15(2)
      acd15(79)=acd15(50)*acd15(5)
      acd15(80)=acd15(52)*acd15(24)
      acd15(78)=acd15(80)+acd15(79)+acd15(78)
      acd15(78)=acd15(73)*acd15(78)
      acd15(64)=acd15(29)*acd15(64)
      acd15(66)=acd15(47)*acd15(66)
      acd15(79)=acd15(9)**2
      acd15(80)=-acd15(19)*acd15(9)
      acd15(79)=acd15(79)+acd15(80)
      acd15(79)=acd15(20)*acd15(79)
      acd15(71)=acd15(30)*acd15(71)
      acd15(74)=acd15(35)*acd15(74)
      acd15(76)=acd15(36)*acd15(76)
      acd15(73)=-acd15(26)*acd15(73)
      acd15(80)=acd15(42)*acd15(14)
      acd15(73)=acd15(73)+acd15(80)
      acd15(73)=acd15(53)*acd15(73)
      acd15(72)=acd15(39)*acd15(72)
      acd15(68)=acd15(49)*acd15(68)
      acd15(65)=acd15(55)*acd15(65)
      acd15(70)=acd15(58)*acd15(70)
      acd15(62)=acd15(70)+acd15(65)+acd15(68)+acd15(72)+acd15(73)+acd15(76)+acd&
      &15(74)+acd15(71)+acd15(79)+acd15(66)+acd15(64)+acd15(62)+acd15(69)+acd15&
      &(78)+acd15(77)+acd15(75)+acd15(67)
      brack(ninjaidxt0x0mu0)=acd15(62)
      brack(ninjaidxt0x1mu0)=acd15(63)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d15h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd15h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d15h1l132
