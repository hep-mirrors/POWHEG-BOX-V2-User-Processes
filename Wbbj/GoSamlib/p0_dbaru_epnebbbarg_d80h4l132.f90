module     p0_dbaru_epnebbbarg_d80h4l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d80h4l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd80h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd80
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd80(1)=dotproduct(ninjaE3,spvak1k2)
      acd80(2)=dotproduct(ninjaE3,spvak4k3)
      acd80(3)=dotproduct(ninjaE3,spval5k2)
      acd80(4)=dotproduct(ninjaE3,spvak7k2)
      acd80(5)=abb80(14)
      acd80(6)=dotproduct(ninjaE3,spval6k2)
      acd80(7)=abb80(21)
      acd80(8)=acd80(5)*acd80(3)
      acd80(9)=acd80(7)*acd80(6)
      acd80(8)=acd80(8)+acd80(9)
      acd80(8)=acd80(1)*acd80(8)*acd80(4)*acd80(2)
      brack(ninjaidxt1x0mu0)=acd80(8)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd80h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(54) :: acd80
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd80(1)=dotproduct(ninjaA1,spvak1k2)
      acd80(2)=dotproduct(ninjaE3,spvak4k3)
      acd80(3)=dotproduct(ninjaE3,spvak7k2)
      acd80(4)=dotproduct(ninjaE3,spval5k2)
      acd80(5)=abb80(14)
      acd80(6)=dotproduct(ninjaE3,spval6k2)
      acd80(7)=abb80(21)
      acd80(8)=dotproduct(ninjaA1,spvak4k3)
      acd80(9)=dotproduct(ninjaE3,spvak1k2)
      acd80(10)=dotproduct(ninjaA1,spvak7k2)
      acd80(11)=dotproduct(ninjaA1,spval5k2)
      acd80(12)=dotproduct(ninjaA1,spval6k2)
      acd80(13)=dotproduct(k2,ninjaE3)
      acd80(14)=abb80(73)
      acd80(15)=dotproduct(ninjaE3,spvak4k2)
      acd80(16)=abb80(26)
      acd80(17)=dotproduct(k3,ninjaE3)
      acd80(18)=abb80(43)
      acd80(19)=abb80(47)
      acd80(20)=dotproduct(k4,ninjaE3)
      acd80(21)=dotproduct(ninjaA0,ninjaE3)
      acd80(22)=abb80(71)
      acd80(23)=abb80(57)
      acd80(24)=dotproduct(ninjaA0,spvak1k2)
      acd80(25)=dotproduct(ninjaA0,spvak4k3)
      acd80(26)=dotproduct(ninjaA0,spvak7k2)
      acd80(27)=dotproduct(ninjaA0,spval5k2)
      acd80(28)=dotproduct(ninjaA0,spval6k2)
      acd80(29)=abb80(9)
      acd80(30)=abb80(13)
      acd80(31)=abb80(16)
      acd80(32)=abb80(74)
      acd80(33)=abb80(76)
      acd80(34)=abb80(46)
      acd80(35)=abb80(17)
      acd80(36)=abb80(55)
      acd80(37)=abb80(67)
      acd80(38)=dotproduct(ninjaE3,spvak3k2)
      acd80(39)=abb80(63)
      acd80(40)=dotproduct(ninjaE3,spvak1k3)
      acd80(41)=abb80(33)
      acd80(42)=abb80(64)
      acd80(43)=abb80(52)
      acd80(44)=acd80(6)*acd80(7)
      acd80(45)=acd80(4)*acd80(5)
      acd80(44)=acd80(44)+acd80(45)
      acd80(45)=acd80(8)*acd80(44)
      acd80(46)=acd80(7)*acd80(12)
      acd80(47)=acd80(5)*acd80(11)
      acd80(46)=acd80(46)+acd80(47)
      acd80(46)=acd80(2)*acd80(46)
      acd80(45)=acd80(46)+acd80(45)
      acd80(45)=acd80(9)*acd80(45)
      acd80(46)=acd80(2)*acd80(1)*acd80(44)
      acd80(45)=acd80(46)+acd80(45)
      acd80(45)=acd80(3)*acd80(45)
      acd80(46)=acd80(9)*acd80(2)
      acd80(44)=acd80(46)*acd80(10)*acd80(44)
      acd80(44)=acd80(44)+acd80(45)
      acd80(45)=-acd80(23)*acd80(38)
      acd80(47)=acd80(15)*acd80(37)
      acd80(48)=acd80(7)*acd80(24)
      acd80(48)=acd80(36)+acd80(48)
      acd80(48)=acd80(6)*acd80(48)
      acd80(49)=acd80(5)*acd80(24)
      acd80(49)=acd80(35)+acd80(49)
      acd80(49)=acd80(4)*acd80(49)
      acd80(50)=acd80(3)*acd80(34)
      acd80(45)=acd80(50)+acd80(49)+acd80(48)+acd80(45)+acd80(47)
      acd80(45)=acd80(2)*acd80(45)
      acd80(47)=acd80(7)*acd80(28)
      acd80(48)=acd80(5)*acd80(27)
      acd80(47)=acd80(48)+acd80(29)+acd80(47)
      acd80(47)=acd80(2)*acd80(47)
      acd80(48)=acd80(17)+acd80(20)
      acd80(49)=acd80(48)-acd80(13)
      acd80(50)=-acd80(14)*acd80(49)
      acd80(51)=2.0_ki*acd80(21)
      acd80(52)=acd80(22)*acd80(51)
      acd80(53)=acd80(7)*acd80(25)
      acd80(53)=acd80(33)+acd80(53)
      acd80(53)=acd80(6)*acd80(53)
      acd80(54)=acd80(5)*acd80(25)
      acd80(54)=acd80(32)+acd80(54)
      acd80(54)=acd80(4)*acd80(54)
      acd80(47)=acd80(47)+acd80(54)+acd80(53)+acd80(52)+acd80(50)
      acd80(47)=acd80(9)*acd80(47)
      acd80(48)=acd80(48)-acd80(51)
      acd80(50)=-acd80(19)*acd80(48)
      acd80(52)=acd80(40)*acd80(43)
      acd80(53)=acd80(15)*acd80(42)
      acd80(50)=acd80(53)+acd80(52)+acd80(50)
      acd80(50)=acd80(6)*acd80(50)
      acd80(48)=-acd80(18)*acd80(48)
      acd80(52)=acd80(40)*acd80(41)
      acd80(53)=acd80(15)*acd80(39)
      acd80(48)=acd80(53)+acd80(52)+acd80(48)
      acd80(48)=acd80(4)*acd80(48)
      acd80(49)=acd80(16)*acd80(49)
      acd80(51)=-acd80(23)*acd80(51)
      acd80(49)=acd80(51)+acd80(49)
      acd80(49)=acd80(15)*acd80(49)
      acd80(45)=acd80(47)+acd80(48)+acd80(49)+acd80(50)+acd80(45)
      acd80(45)=acd80(3)*acd80(45)
      acd80(47)=acd80(7)*acd80(26)
      acd80(47)=acd80(31)+acd80(47)
      acd80(47)=acd80(6)*acd80(47)
      acd80(48)=acd80(5)*acd80(26)
      acd80(48)=acd80(30)+acd80(48)
      acd80(48)=acd80(4)*acd80(48)
      acd80(47)=acd80(47)+acd80(48)
      acd80(46)=acd80(47)*acd80(46)
      acd80(45)=acd80(46)+acd80(45)
      brack(ninjaidxt0x0mu0)=acd80(45)
      brack(ninjaidxt0x1mu0)=acd80(44)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d80h4_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd80h4
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
end module     p0_dbaru_epnebbbarg_d80h4l132
