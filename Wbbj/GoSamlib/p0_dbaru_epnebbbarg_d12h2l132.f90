module     p0_dbaru_epnebbbarg_d12h2l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d12h2l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd12h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd12
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd12(1)=dotproduct(k2,ninjaE3)
      acd12(2)=dotproduct(ninjaE3,spvak1k2)
      acd12(3)=dotproduct(ninjaE3,spvak4k3)
      acd12(4)=abb12(16)
      acd12(5)=dotproduct(ninjaE3,spval5l6)
      acd12(6)=abb12(15)
      acd12(7)=acd12(4)*acd12(1)
      acd12(8)=acd12(6)*acd12(5)
      acd12(7)=acd12(7)+acd12(8)
      acd12(7)=acd12(7)*acd12(3)*acd12(2)
      brack(ninjaidxt1x0mu0)=acd12(7)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd12h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(61) :: acd12
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd12(1)=dotproduct(k2,ninjaA1)
      acd12(2)=dotproduct(ninjaE3,spvak4k3)
      acd12(3)=dotproduct(ninjaE3,spvak1k2)
      acd12(4)=abb12(16)
      acd12(5)=dotproduct(k2,ninjaE3)
      acd12(6)=dotproduct(ninjaA1,spvak4k3)
      acd12(7)=dotproduct(ninjaA1,spvak1k2)
      acd12(8)=dotproduct(ninjaE3,spval5l6)
      acd12(9)=abb12(15)
      acd12(10)=dotproduct(ninjaA1,spval5l6)
      acd12(11)=dotproduct(k1,ninjaE3)
      acd12(12)=abb12(20)
      acd12(13)=dotproduct(k2,ninjaA0)
      acd12(14)=dotproduct(k3,ninjaE3)
      acd12(15)=abb12(47)
      acd12(16)=dotproduct(k4,ninjaE3)
      acd12(17)=dotproduct(ninjaA0,ninjaE3)
      acd12(18)=dotproduct(ninjaA0,spvak4k3)
      acd12(19)=dotproduct(ninjaA0,spvak1k2)
      acd12(20)=abb12(10)
      acd12(21)=dotproduct(ninjaE3,spval5k2)
      acd12(22)=abb12(49)
      acd12(23)=abb12(35)
      acd12(24)=dotproduct(ninjaE3,spvak1l6)
      acd12(25)=abb12(25)
      acd12(26)=dotproduct(ninjaE3,spvak4k2)
      acd12(27)=abb12(27)
      acd12(28)=dotproduct(ninjaE3,spvak1k3)
      acd12(29)=abb12(30)
      acd12(30)=abb12(37)
      acd12(31)=abb12(22)
      acd12(32)=abb12(24)
      acd12(33)=abb12(36)
      acd12(34)=abb12(46)
      acd12(35)=abb12(33)
      acd12(36)=abb12(28)
      acd12(37)=dotproduct(ninjaA0,spval5l6)
      acd12(38)=abb12(9)
      acd12(39)=abb12(31)
      acd12(40)=abb12(17)
      acd12(41)=dotproduct(ninjaE3,spvak1k7)
      acd12(42)=abb12(18)
      acd12(43)=abb12(41)
      acd12(44)=dotproduct(ninjaE3,spvak3k2)
      acd12(45)=dotproduct(ninjaE3,spvak7k2)
      acd12(46)=abb12(50)
      acd12(47)=abb12(21)
      acd12(48)=abb12(29)
      acd12(49)=abb12(32)
      acd12(50)=acd12(1)*acd12(4)
      acd12(51)=acd12(10)*acd12(9)
      acd12(50)=acd12(51)+acd12(50)
      acd12(51)=acd12(3)*acd12(2)
      acd12(50)=acd12(51)*acd12(50)
      acd12(52)=acd12(4)*acd12(5)
      acd12(53)=acd12(9)*acd12(8)
      acd12(52)=acd12(52)+acd12(53)
      acd12(53)=acd12(3)*acd12(52)
      acd12(54)=acd12(6)*acd12(53)
      acd12(52)=acd12(2)*acd12(52)
      acd12(55)=acd12(7)*acd12(52)
      acd12(50)=acd12(54)+acd12(55)+acd12(50)
      acd12(54)=acd12(12)*acd12(11)
      acd12(55)=acd12(38)*acd12(21)
      acd12(56)=acd12(40)*acd12(24)
      acd12(57)=acd12(42)*acd12(41)
      acd12(58)=acd12(43)*acd12(26)
      acd12(59)=-acd12(44)*acd12(36)
      acd12(60)=acd12(46)*acd12(45)
      acd12(54)=acd12(60)+acd12(59)+acd12(58)+acd12(57)+acd12(56)+acd12(55)+acd&
      &12(54)
      acd12(54)=acd12(2)*acd12(54)
      acd12(55)=acd12(36)*acd12(26)
      acd12(56)=acd12(32)*acd12(21)
      acd12(57)=acd12(33)*acd12(3)
      acd12(58)=acd12(34)*acd12(8)
      acd12(59)=acd12(35)*acd12(24)
      acd12(55)=acd12(59)+acd12(58)+acd12(57)+acd12(56)+acd12(55)
      acd12(56)=2.0_ki*acd12(17)
      acd12(55)=acd12(56)*acd12(55)
      acd12(57)=acd12(23)*acd12(5)
      acd12(58)=acd12(47)*acd12(3)
      acd12(59)=acd12(48)*acd12(26)
      acd12(60)=acd12(49)*acd12(28)
      acd12(57)=acd12(58)+acd12(60)+acd12(59)+acd12(57)
      acd12(57)=acd12(8)*acd12(57)
      acd12(58)=acd12(16)+acd12(14)
      acd12(56)=acd12(56)+acd12(58)
      acd12(56)=acd12(15)*acd12(56)
      acd12(59)=acd12(20)*acd12(2)
      acd12(60)=acd12(27)*acd12(26)
      acd12(61)=acd12(29)*acd12(28)
      acd12(56)=acd12(59)+acd12(56)+acd12(61)+acd12(60)
      acd12(56)=acd12(5)*acd12(56)
      acd12(59)=-acd12(30)*acd12(3)
      acd12(60)=acd12(31)*acd12(26)
      acd12(59)=acd12(60)+acd12(59)
      acd12(59)=acd12(58)*acd12(59)
      acd12(60)=acd12(22)*acd12(21)
      acd12(61)=-acd12(25)*acd12(24)
      acd12(60)=acd12(61)+acd12(60)
      acd12(58)=acd12(58)-acd12(5)
      acd12(58)=acd12(58)*acd12(60)
      acd12(60)=acd12(13)*acd12(4)
      acd12(61)=acd12(37)*acd12(9)
      acd12(60)=acd12(39)+acd12(61)+acd12(60)
      acd12(51)=acd12(51)*acd12(60)
      acd12(53)=acd12(18)*acd12(53)
      acd12(52)=acd12(19)*acd12(52)
      acd12(51)=acd12(52)+acd12(53)+acd12(54)+acd12(55)+acd12(51)+acd12(58)+acd&
      &12(56)+acd12(59)+acd12(57)
      brack(ninjaidxt0x0mu0)=acd12(51)
      brack(ninjaidxt0x1mu0)=acd12(50)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d12h2_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd12h2
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
end module     p0_dbaru_epnebbbarg_d12h2l132
