module     p0_dbaru_epnebbbarg_d82h5l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d82h5l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd82h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd82
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd82(1)=dotproduct(k2,ninjaE3)
      acd82(2)=dotproduct(ninjaE3,spvak1k2)
      acd82(3)=dotproduct(ninjaE3,spvak4k3)
      acd82(4)=dotproduct(ninjaE3,spvak7k2)
      acd82(5)=abb82(20)
      acd82(6)=dotproduct(ninjaE3,spval6l5)
      acd82(7)=abb82(62)
      acd82(8)=acd82(5)*acd82(1)
      acd82(9)=acd82(7)*acd82(6)
      acd82(8)=acd82(8)+acd82(9)
      acd82(8)=acd82(2)*acd82(8)*acd82(4)*acd82(3)
      brack(ninjaidxt1x0mu0)=acd82(8)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd82h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(68) :: acd82
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd82(1)=dotproduct(k2,ninjaA1)
      acd82(2)=dotproduct(ninjaE3,spvak1k2)
      acd82(3)=dotproduct(ninjaE3,spvak4k3)
      acd82(4)=dotproduct(ninjaE3,spvak7k2)
      acd82(5)=abb82(20)
      acd82(6)=dotproduct(k2,ninjaE3)
      acd82(7)=dotproduct(ninjaA1,spvak1k2)
      acd82(8)=dotproduct(ninjaA1,spvak4k3)
      acd82(9)=dotproduct(ninjaA1,spvak7k2)
      acd82(10)=dotproduct(ninjaE3,spval6l5)
      acd82(11)=abb82(62)
      acd82(12)=dotproduct(ninjaA1,spval6l5)
      acd82(13)=dotproduct(k1,ninjaE3)
      acd82(14)=abb82(33)
      acd82(15)=abb82(56)
      acd82(16)=abb82(37)
      acd82(17)=dotproduct(ninjaE3,spvak1k3)
      acd82(18)=abb82(11)
      acd82(19)=dotproduct(ninjaE3,spval6k2)
      acd82(20)=abb82(46)
      acd82(21)=dotproduct(ninjaE3,spvak4k2)
      acd82(22)=abb82(65)
      acd82(23)=dotproduct(k2,ninjaA0)
      acd82(24)=dotproduct(k3,ninjaE3)
      acd82(25)=abb82(47)
      acd82(26)=dotproduct(k4,ninjaE3)
      acd82(27)=dotproduct(ninjaA0,ninjaE3)
      acd82(28)=abb82(26)
      acd82(29)=dotproduct(ninjaA0,spvak1k2)
      acd82(30)=dotproduct(ninjaA0,spvak4k3)
      acd82(31)=dotproduct(ninjaA0,spvak7k2)
      acd82(32)=abb82(30)
      acd82(33)=abb82(57)
      acd82(34)=abb82(61)
      acd82(35)=abb82(15)
      acd82(36)=dotproduct(k7,ninjaE3)
      acd82(37)=abb82(58)
      acd82(38)=abb82(18)
      acd82(39)=abb82(66)
      acd82(40)=abb82(51)
      acd82(41)=abb82(50)
      acd82(42)=dotproduct(ninjaA0,spval6l5)
      acd82(43)=abb82(9)
      acd82(44)=abb82(10)
      acd82(45)=abb82(59)
      acd82(46)=abb82(21)
      acd82(47)=dotproduct(ninjaE3,spvak1l5)
      acd82(48)=abb82(12)
      acd82(49)=abb82(63)
      acd82(50)=abb82(55)
      acd82(51)=dotproduct(ninjaE3,spvak3k2)
      acd82(52)=dotproduct(ninjaE3,spvak1k4)
      acd82(53)=abb82(14)
      acd82(54)=acd82(6)*acd82(5)
      acd82(55)=acd82(10)*acd82(11)
      acd82(54)=acd82(54)+acd82(55)
      acd82(56)=acd82(7)*acd82(54)
      acd82(57)=acd82(11)*acd82(12)
      acd82(58)=acd82(5)*acd82(1)
      acd82(57)=acd82(57)+acd82(58)
      acd82(57)=acd82(2)*acd82(57)
      acd82(56)=acd82(57)+acd82(56)
      acd82(56)=acd82(3)*acd82(56)
      acd82(54)=acd82(54)*acd82(2)
      acd82(57)=acd82(8)*acd82(54)
      acd82(56)=acd82(57)+acd82(56)
      acd82(56)=acd82(4)*acd82(56)
      acd82(57)=acd82(3)*acd82(9)*acd82(54)
      acd82(56)=acd82(57)+acd82(56)
      acd82(57)=acd82(11)*acd82(42)
      acd82(58)=acd82(5)*acd82(23)
      acd82(57)=acd82(58)+acd82(43)+acd82(57)
      acd82(57)=acd82(2)*acd82(57)
      acd82(58)=-acd82(13)-acd82(36)
      acd82(58)=acd82(15)*acd82(58)
      acd82(59)=acd82(47)*acd82(48)
      acd82(60)=-acd82(41)*acd82(51)
      acd82(61)=acd82(39)*acd82(52)
      acd82(62)=acd82(21)*acd82(50)
      acd82(63)=2.0_ki*acd82(27)
      acd82(64)=acd82(37)*acd82(63)
      acd82(65)=acd82(17)*acd82(46)
      acd82(66)=acd82(19)*acd82(49)
      acd82(55)=acd82(29)*acd82(55)
      acd82(67)=acd82(5)*acd82(29)
      acd82(67)=acd82(33)+acd82(67)
      acd82(67)=acd82(6)*acd82(67)
      acd82(68)=acd82(4)*acd82(45)
      acd82(55)=acd82(68)+acd82(57)+acd82(67)+acd82(55)+acd82(66)+acd82(65)+acd&
      &82(64)+acd82(62)+acd82(61)+acd82(59)+acd82(60)+acd82(58)
      acd82(55)=acd82(3)*acd82(55)
      acd82(57)=acd82(24)+acd82(26)
      acd82(58)=acd82(25)*acd82(57)
      acd82(59)=acd82(28)*acd82(63)
      acd82(60)=acd82(13)*acd82(14)
      acd82(61)=acd82(17)*acd82(35)
      acd82(58)=acd82(61)+acd82(60)+acd82(59)+acd82(58)
      acd82(58)=acd82(6)*acd82(58)
      acd82(57)=acd82(57)-acd82(13)
      acd82(59)=acd82(22)*acd82(57)
      acd82(60)=-acd82(41)*acd82(63)
      acd82(59)=acd82(60)+acd82(59)
      acd82(59)=acd82(21)*acd82(59)
      acd82(60)=-acd82(18)*acd82(57)
      acd82(61)=acd82(39)*acd82(63)
      acd82(60)=acd82(61)+acd82(60)
      acd82(60)=acd82(17)*acd82(60)
      acd82(57)=-acd82(20)*acd82(57)
      acd82(61)=acd82(40)*acd82(63)
      acd82(57)=acd82(61)+acd82(57)
      acd82(57)=acd82(19)*acd82(57)
      acd82(61)=acd82(13)*acd82(16)
      acd82(62)=acd82(17)*acd82(53)
      acd82(61)=acd82(61)+acd82(62)
      acd82(61)=acd82(10)*acd82(61)
      acd82(62)=acd82(11)*acd82(30)
      acd82(62)=acd82(44)+acd82(62)
      acd82(62)=acd82(10)*acd82(62)
      acd82(64)=acd82(5)*acd82(30)
      acd82(64)=acd82(32)+acd82(64)
      acd82(64)=acd82(6)*acd82(64)
      acd82(62)=acd82(62)+acd82(64)
      acd82(62)=acd82(2)*acd82(62)
      acd82(55)=acd82(62)+acd82(58)+acd82(61)+acd82(57)+acd82(60)+acd82(59)+acd&
      &82(55)
      acd82(55)=acd82(4)*acd82(55)
      acd82(57)=-acd82(6)+acd82(36)
      acd82(57)=acd82(34)*acd82(57)
      acd82(58)=acd82(38)*acd82(63)
      acd82(57)=acd82(58)+acd82(57)
      acd82(57)=acd82(19)*acd82(57)
      acd82(54)=acd82(31)*acd82(54)
      acd82(54)=acd82(54)+acd82(57)
      acd82(54)=acd82(3)*acd82(54)
      acd82(54)=acd82(54)+acd82(55)
      brack(ninjaidxt0x0mu0)=acd82(54)
      brack(ninjaidxt0x1mu0)=acd82(56)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d82h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd82h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d82h5l132
