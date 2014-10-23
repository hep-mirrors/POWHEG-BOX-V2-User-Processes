module     p0_dbaru_epnebbbarg_d16h3l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d16h3l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd16h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd16
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd16(1)=dotproduct(ninjaE3,spvak1k2)
      acd16(2)=dotproduct(ninjaE3,spvak2l5)
      acd16(3)=dotproduct(ninjaE3,spvak4k3)
      acd16(4)=abb16(13)
      acd16(5)=dotproduct(ninjaE3,spvak2l6)
      acd16(6)=abb16(14)
      acd16(7)=-acd16(4)*acd16(2)
      acd16(8)=-acd16(6)*acd16(5)
      acd16(7)=acd16(7)+acd16(8)
      acd16(7)=acd16(7)*acd16(3)*acd16(1)
      brack(ninjaidxt1x0mu0)=acd16(7)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd16h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(53) :: acd16
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd16(1)=dotproduct(ninjaA1,spvak2l5)
      acd16(2)=dotproduct(ninjaE3,spvak1k2)
      acd16(3)=dotproduct(ninjaE3,spvak4k3)
      acd16(4)=abb16(13)
      acd16(5)=dotproduct(ninjaA1,spvak1k2)
      acd16(6)=dotproduct(ninjaE3,spvak2l5)
      acd16(7)=dotproduct(ninjaE3,spvak2l6)
      acd16(8)=abb16(14)
      acd16(9)=dotproduct(ninjaA1,spvak4k3)
      acd16(10)=dotproduct(ninjaA1,spvak2l6)
      acd16(11)=dotproduct(k2,ninjaE3)
      acd16(12)=dotproduct(k3,ninjaE3)
      acd16(13)=abb16(28)
      acd16(14)=dotproduct(k4,ninjaE3)
      acd16(15)=dotproduct(ninjaA0,ninjaE3)
      acd16(16)=abb16(23)
      acd16(17)=abb16(27)
      acd16(18)=abb16(11)
      acd16(19)=abb16(38)
      acd16(20)=dotproduct(l5,ninjaE3)
      acd16(21)=abb16(26)
      acd16(22)=dotproduct(l6,ninjaE3)
      acd16(23)=abb16(16)
      acd16(24)=abb16(29)
      acd16(25)=abb16(40)
      acd16(26)=dotproduct(ninjaE3,spvak4k2)
      acd16(27)=abb16(33)
      acd16(28)=dotproduct(ninjaA0,spvak2l5)
      acd16(29)=dotproduct(ninjaA0,spvak1k2)
      acd16(30)=dotproduct(ninjaA0,spvak4k3)
      acd16(31)=dotproduct(ninjaA0,spvak2l6)
      acd16(32)=abb16(17)
      acd16(33)=dotproduct(ninjaE3,spvak1k3)
      acd16(34)=abb16(18)
      acd16(35)=abb16(31)
      acd16(36)=dotproduct(ninjaE3,spval5k2)
      acd16(37)=abb16(30)
      acd16(38)=dotproduct(ninjaE3,spval6k2)
      acd16(39)=abb16(36)
      acd16(40)=abb16(19)
      acd16(41)=acd16(4)*acd16(2)
      acd16(42)=-acd16(1)*acd16(41)
      acd16(43)=acd16(8)*acd16(2)
      acd16(44)=-acd16(10)*acd16(43)
      acd16(42)=acd16(44)+acd16(42)
      acd16(42)=acd16(3)*acd16(42)
      acd16(44)=acd16(4)*acd16(6)
      acd16(45)=acd16(8)*acd16(7)
      acd16(44)=acd16(45)+acd16(44)
      acd16(44)=acd16(3)*acd16(44)
      acd16(45)=-acd16(5)*acd16(44)
      acd16(46)=acd16(43)*acd16(7)
      acd16(47)=acd16(41)*acd16(6)
      acd16(46)=acd16(46)+acd16(47)
      acd16(47)=-acd16(9)*acd16(46)
      acd16(42)=acd16(45)+acd16(47)+acd16(42)
      acd16(45)=-acd16(22)-acd16(20)
      acd16(45)=acd16(21)*acd16(45)
      acd16(47)=acd16(17)*acd16(11)
      acd16(48)=2.0_ki*acd16(15)
      acd16(49)=acd16(24)*acd16(48)
      acd16(41)=-acd16(28)*acd16(41)
      acd16(43)=-acd16(31)*acd16(43)
      acd16(50)=acd16(32)*acd16(6)
      acd16(51)=acd16(35)*acd16(7)
      acd16(52)=acd16(37)*acd16(36)
      acd16(53)=acd16(39)*acd16(38)
      acd16(41)=acd16(51)+acd16(50)+acd16(53)+acd16(52)+acd16(43)+acd16(41)+acd&
      &16(49)+acd16(47)+acd16(45)
      acd16(41)=acd16(3)*acd16(41)
      acd16(43)=acd16(16)*acd16(11)
      acd16(45)=acd16(23)*acd16(6)
      acd16(47)=acd16(25)*acd16(7)
      acd16(49)=acd16(27)*acd16(26)
      acd16(43)=acd16(49)+acd16(47)+acd16(45)+acd16(43)
      acd16(43)=acd16(48)*acd16(43)
      acd16(45)=acd16(13)*acd16(11)
      acd16(47)=acd16(18)*acd16(6)
      acd16(48)=acd16(19)*acd16(7)
      acd16(45)=acd16(48)+acd16(45)+acd16(47)
      acd16(47)=acd16(14)+acd16(12)
      acd16(45)=acd16(47)*acd16(45)
      acd16(47)=acd16(34)*acd16(6)
      acd16(48)=acd16(40)*acd16(7)
      acd16(47)=acd16(48)+acd16(47)
      acd16(47)=acd16(33)*acd16(47)
      acd16(44)=-acd16(29)*acd16(44)
      acd16(46)=-acd16(30)*acd16(46)
      acd16(41)=acd16(46)+acd16(44)+acd16(43)+acd16(47)+acd16(45)+acd16(41)
      brack(ninjaidxt0x0mu0)=acd16(41)
      brack(ninjaidxt0x1mu0)=acd16(42)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d16h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd16h3
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
end module     p0_dbaru_epnebbbarg_d16h3l132
