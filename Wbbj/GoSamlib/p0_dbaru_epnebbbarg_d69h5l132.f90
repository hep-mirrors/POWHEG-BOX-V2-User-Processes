module     p0_dbaru_epnebbbarg_d69h5l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d69h5l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd69h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd69
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd69(1)=dotproduct(k2,ninjaE3)
      acd69(2)=dotproduct(ninjaE3,spvak1k2)
      acd69(3)=dotproduct(ninjaE3,spvak4k3)
      acd69(4)=dotproduct(ninjaE3,spvak7k2)
      acd69(5)=abb69(30)
      acd69(6)=dotproduct(ninjaE3,spval6l5)
      acd69(7)=abb69(11)
      acd69(8)=acd69(5)*acd69(1)
      acd69(9)=acd69(7)*acd69(6)
      acd69(8)=acd69(8)+acd69(9)
      acd69(8)=acd69(2)*acd69(8)*acd69(4)*acd69(3)
      brack(ninjaidxt1x0mu0)=acd69(8)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd69h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(63) :: acd69
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd69(1)=dotproduct(k2,ninjaA1)
      acd69(2)=dotproduct(ninjaE3,spvak4k3)
      acd69(3)=dotproduct(ninjaE3,spvak7k2)
      acd69(4)=dotproduct(ninjaE3,spvak1k2)
      acd69(5)=abb69(30)
      acd69(6)=dotproduct(k2,ninjaE3)
      acd69(7)=dotproduct(ninjaA1,spvak4k3)
      acd69(8)=dotproduct(ninjaA1,spvak7k2)
      acd69(9)=dotproduct(ninjaA1,spvak1k2)
      acd69(10)=dotproduct(ninjaE3,spval6l5)
      acd69(11)=abb69(11)
      acd69(12)=dotproduct(ninjaA1,spval6l5)
      acd69(13)=dotproduct(k2,ninjaA0)
      acd69(14)=abb69(86)
      acd69(15)=dotproduct(ninjaE3,spvak4k2)
      acd69(16)=abb69(35)
      acd69(17)=dotproduct(ninjaA0,ninjaE3)
      acd69(18)=abb69(34)
      acd69(19)=abb69(41)
      acd69(20)=dotproduct(ninjaA0,spvak4k3)
      acd69(21)=dotproduct(ninjaA0,spvak7k2)
      acd69(22)=dotproduct(ninjaA0,spvak1k2)
      acd69(23)=abb69(42)
      acd69(24)=abb69(77)
      acd69(25)=abb69(50)
      acd69(26)=abb69(57)
      acd69(27)=dotproduct(ninjaE3,spvak1k3)
      acd69(28)=abb69(16)
      acd69(29)=dotproduct(ninjaE3,spval6k2)
      acd69(30)=abb69(17)
      acd69(31)=abb69(53)
      acd69(32)=dotproduct(k3,ninjaE3)
      acd69(33)=abb69(68)
      acd69(34)=dotproduct(k4,ninjaE3)
      acd69(35)=dotproduct(l5,ninjaE3)
      acd69(36)=abb69(32)
      acd69(37)=dotproduct(l6,ninjaE3)
      acd69(38)=abb69(45)
      acd69(39)=abb69(91)
      acd69(40)=abb69(54)
      acd69(41)=abb69(27)
      acd69(42)=abb69(44)
      acd69(43)=dotproduct(ninjaA0,spval6l5)
      acd69(44)=abb69(9)
      acd69(45)=abb69(22)
      acd69(46)=abb69(48)
      acd69(47)=dotproduct(ninjaE3,spval5k2)
      acd69(48)=abb69(23)
      acd69(49)=abb69(59)
      acd69(50)=abb69(55)
      acd69(51)=abb69(18)
      acd69(52)=acd69(10)*acd69(11)
      acd69(53)=acd69(6)*acd69(5)
      acd69(52)=acd69(52)+acd69(53)
      acd69(53)=acd69(9)*acd69(52)
      acd69(54)=acd69(11)*acd69(12)
      acd69(55)=acd69(5)*acd69(1)
      acd69(54)=acd69(54)+acd69(55)
      acd69(54)=acd69(4)*acd69(54)
      acd69(53)=acd69(54)+acd69(53)
      acd69(53)=acd69(2)*acd69(53)
      acd69(52)=acd69(52)*acd69(4)
      acd69(54)=acd69(7)*acd69(52)
      acd69(53)=acd69(53)+acd69(54)
      acd69(53)=acd69(3)*acd69(53)
      acd69(52)=acd69(52)*acd69(2)
      acd69(54)=acd69(8)*acd69(52)
      acd69(53)=acd69(54)+acd69(53)
      acd69(54)=acd69(29)*acd69(30)
      acd69(55)=acd69(27)*acd69(28)
      acd69(56)=2.0_ki*acd69(17)
      acd69(57)=acd69(18)*acd69(56)
      acd69(58)=acd69(15)*acd69(31)
      acd69(59)=acd69(5)*acd69(20)
      acd69(59)=acd69(26)+acd69(59)
      acd69(59)=acd69(4)*acd69(59)
      acd69(60)=acd69(10)*acd69(24)
      acd69(61)=acd69(6)*acd69(14)
      acd69(55)=acd69(61)+acd69(60)+acd69(59)+acd69(58)+acd69(57)+acd69(55)-acd&
      &69(54)
      acd69(55)=acd69(6)*acd69(55)
      acd69(57)=acd69(11)*acd69(43)
      acd69(58)=acd69(5)*acd69(13)
      acd69(57)=acd69(58)+acd69(45)+acd69(57)
      acd69(57)=acd69(4)*acd69(57)
      acd69(58)=acd69(47)*acd69(48)
      acd69(59)=acd69(37)+acd69(35)
      acd69(59)=acd69(36)*acd69(59)
      acd69(60)=acd69(29)*acd69(46)
      acd69(61)=acd69(38)*acd69(56)
      acd69(62)=acd69(11)*acd69(22)
      acd69(62)=acd69(44)+acd69(62)
      acd69(62)=acd69(10)*acd69(62)
      acd69(63)=acd69(5)*acd69(22)
      acd69(63)=acd69(23)+acd69(63)
      acd69(63)=acd69(6)*acd69(63)
      acd69(57)=acd69(63)+acd69(62)+acd69(57)+acd69(61)+acd69(60)+acd69(58)+acd&
      &69(59)
      acd69(57)=acd69(2)*acd69(57)
      acd69(58)=acd69(32)+acd69(34)
      acd69(59)=-acd69(33)*acd69(58)
      acd69(60)=acd69(27)*acd69(50)
      acd69(61)=acd69(39)*acd69(56)
      acd69(62)=acd69(15)*acd69(51)
      acd69(63)=acd69(11)*acd69(20)
      acd69(63)=acd69(49)+acd69(63)
      acd69(63)=acd69(4)*acd69(63)
      acd69(59)=acd69(63)+acd69(62)+acd69(61)+acd69(60)+acd69(59)
      acd69(59)=acd69(10)*acd69(59)
      acd69(60)=acd69(29)*acd69(41)
      acd69(61)=acd69(15)*acd69(42)
      acd69(60)=acd69(61)+acd69(60)
      acd69(60)=acd69(56)*acd69(60)
      acd69(54)=acd69(58)*acd69(54)
      acd69(54)=acd69(57)+acd69(55)+acd69(59)+acd69(54)+acd69(60)
      acd69(54)=acd69(3)*acd69(54)
      acd69(55)=acd69(10)*acd69(15)
      acd69(57)=acd69(40)*acd69(56)*acd69(55)
      acd69(56)=acd69(19)*acd69(56)
      acd69(58)=acd69(6)*acd69(16)
      acd69(56)=acd69(58)+acd69(56)
      acd69(56)=acd69(15)*acd69(56)
      acd69(55)=acd69(25)*acd69(55)
      acd69(55)=acd69(55)+acd69(56)
      acd69(55)=acd69(6)*acd69(55)
      acd69(52)=acd69(21)*acd69(52)
      acd69(52)=acd69(54)+acd69(52)+acd69(57)+acd69(55)
      brack(ninjaidxt0x0mu0)=acd69(52)
      brack(ninjaidxt0x1mu0)=acd69(53)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d69h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd69h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = + a0(0:3)
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
end module     p0_dbaru_epnebbbarg_d69h5l132
