module     p0_dbaru_epnebbbarg_d58h1l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d58h1l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd58h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(32) :: acd58
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd58(1)=dotproduct(k1,ninjaE3)
      acd58(2)=abb58(12)
      acd58(3)=dotproduct(k2,ninjaE3)
      acd58(4)=abb58(32)
      acd58(5)=dotproduct(k3,ninjaE3)
      acd58(6)=abb58(40)
      acd58(7)=dotproduct(k4,ninjaE3)
      acd58(8)=dotproduct(l5,ninjaE3)
      acd58(9)=abb58(33)
      acd58(10)=dotproduct(l6,ninjaE3)
      acd58(11)=dotproduct(k7,ninjaE3)
      acd58(12)=abb58(27)
      acd58(13)=dotproduct(ninjaE3,spvak1k7)
      acd58(14)=abb58(13)
      acd58(15)=dotproduct(ninjaE3,spvak4k2)
      acd58(16)=abb58(15)
      acd58(17)=dotproduct(ninjaE3,spvak4k3)
      acd58(18)=abb58(16)
      acd58(19)=dotproduct(ninjaE3,spval6k2)
      acd58(20)=abb58(31)
      acd58(21)=dotproduct(ninjaE3,spval6l5)
      acd58(22)=abb58(43)
      acd58(23)=acd58(7)+acd58(5)
      acd58(23)=acd58(6)*acd58(23)
      acd58(24)=-acd58(10)-acd58(8)
      acd58(24)=acd58(9)*acd58(24)
      acd58(25)=acd58(2)*acd58(1)
      acd58(26)=acd58(4)*acd58(3)
      acd58(27)=acd58(12)*acd58(11)
      acd58(28)=acd58(14)*acd58(13)
      acd58(29)=acd58(16)*acd58(15)
      acd58(30)=acd58(18)*acd58(17)
      acd58(31)=acd58(20)*acd58(19)
      acd58(32)=acd58(22)*acd58(21)
      acd58(23)=acd58(32)+acd58(31)+acd58(30)+acd58(29)+acd58(28)+acd58(27)+acd&
      &58(25)+acd58(26)+acd58(24)+acd58(23)
      brack(ninjaidxt1x0mu0)=acd58(23)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd58h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(46) :: acd58
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd58(1)=dotproduct(k1,ninjaA1)
      acd58(2)=abb58(12)
      acd58(3)=dotproduct(k2,ninjaA1)
      acd58(4)=abb58(32)
      acd58(5)=dotproduct(k3,ninjaA1)
      acd58(6)=abb58(40)
      acd58(7)=dotproduct(k4,ninjaA1)
      acd58(8)=dotproduct(l5,ninjaA1)
      acd58(9)=abb58(33)
      acd58(10)=dotproduct(l6,ninjaA1)
      acd58(11)=dotproduct(k7,ninjaA1)
      acd58(12)=abb58(27)
      acd58(13)=dotproduct(ninjaA1,spvak1k7)
      acd58(14)=abb58(13)
      acd58(15)=dotproduct(ninjaA1,spvak4k2)
      acd58(16)=abb58(15)
      acd58(17)=dotproduct(ninjaA1,spvak4k3)
      acd58(18)=abb58(16)
      acd58(19)=dotproduct(ninjaA1,spval6k2)
      acd58(20)=abb58(31)
      acd58(21)=dotproduct(ninjaA1,spval6l5)
      acd58(22)=abb58(43)
      acd58(23)=dotproduct(k1,ninjaA0)
      acd58(24)=dotproduct(k2,ninjaA0)
      acd58(25)=dotproduct(k3,ninjaA0)
      acd58(26)=dotproduct(k4,ninjaA0)
      acd58(27)=dotproduct(l5,ninjaA0)
      acd58(28)=dotproduct(l6,ninjaA0)
      acd58(29)=dotproduct(k7,ninjaA0)
      acd58(30)=dotproduct(ninjaA0,spvak1k7)
      acd58(31)=dotproduct(ninjaA0,spvak4k2)
      acd58(32)=dotproduct(ninjaA0,spvak4k3)
      acd58(33)=dotproduct(ninjaA0,spval6k2)
      acd58(34)=dotproduct(ninjaA0,spval6l5)
      acd58(35)=abb58(21)
      acd58(36)=acd58(7)+acd58(5)
      acd58(36)=acd58(6)*acd58(36)
      acd58(37)=-acd58(10)-acd58(8)
      acd58(37)=acd58(9)*acd58(37)
      acd58(38)=acd58(1)*acd58(2)
      acd58(39)=acd58(3)*acd58(4)
      acd58(40)=acd58(11)*acd58(12)
      acd58(41)=acd58(13)*acd58(14)
      acd58(42)=acd58(15)*acd58(16)
      acd58(43)=acd58(17)*acd58(18)
      acd58(44)=acd58(19)*acd58(20)
      acd58(45)=acd58(21)*acd58(22)
      acd58(36)=acd58(45)+acd58(44)+acd58(43)+acd58(42)+acd58(41)+acd58(40)+acd&
      &58(38)+acd58(39)+acd58(37)+acd58(36)
      acd58(37)=acd58(26)+acd58(25)
      acd58(37)=acd58(6)*acd58(37)
      acd58(38)=-acd58(28)-acd58(27)
      acd58(38)=acd58(9)*acd58(38)
      acd58(39)=acd58(23)*acd58(2)
      acd58(40)=acd58(24)*acd58(4)
      acd58(41)=acd58(29)*acd58(12)
      acd58(42)=acd58(30)*acd58(14)
      acd58(43)=acd58(31)*acd58(16)
      acd58(44)=acd58(32)*acd58(18)
      acd58(45)=acd58(33)*acd58(20)
      acd58(46)=acd58(34)*acd58(22)
      acd58(37)=acd58(35)+acd58(46)+acd58(45)+acd58(44)+acd58(43)+acd58(42)+acd&
      &58(41)+acd58(39)+acd58(40)+acd58(38)+acd58(37)
      brack(ninjaidxt0x0mu0)=acd58(37)
      brack(ninjaidxt0x1mu0)=acd58(36)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d58h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd58h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6-k5
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
end module     p0_dbaru_epnebbbarg_d58h1l132
