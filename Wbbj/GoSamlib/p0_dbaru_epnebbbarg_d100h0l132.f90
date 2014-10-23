module     p0_dbaru_epnebbbarg_d100h0l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d100h0l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt0x0mu0 = 0
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd100h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd100
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd100h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(27) :: acd100
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd100(1)=dotproduct(k2,ninjaE3)
      acd100(2)=dotproduct(l6,ninjaE3)
      acd100(3)=abb100(12)
      acd100(4)=dotproduct(k7,ninjaE3)
      acd100(5)=dotproduct(ninjaE3,spval6k2)
      acd100(6)=abb100(13)
      acd100(7)=dotproduct(ninjaE3,spvak4k2)
      acd100(8)=abb100(26)
      acd100(9)=dotproduct(ninjaE3,spval6k7)
      acd100(10)=abb100(21)
      acd100(11)=dotproduct(ninjaE3,spvak1k2)
      acd100(12)=abb100(30)
      acd100(13)=abb100(17)
      acd100(14)=abb100(28)
      acd100(15)=dotproduct(ninjaE3,spvak2k7)
      acd100(16)=abb100(18)
      acd100(17)=abb100(31)
      acd100(18)=abb100(43)
      acd100(19)=dotproduct(ninjaE3,spvak7k2)
      acd100(20)=abb100(20)
      acd100(21)=abb100(24)
      acd100(22)=abb100(29)
      acd100(23)=acd100(6)*acd100(5)
      acd100(24)=acd100(8)*acd100(7)
      acd100(25)=acd100(10)*acd100(9)
      acd100(26)=acd100(12)*acd100(11)
      acd100(23)=acd100(26)+acd100(25)+acd100(24)+acd100(23)
      acd100(23)=acd100(1)*acd100(23)
      acd100(24)=acd100(16)*acd100(5)
      acd100(25)=acd100(17)*acd100(7)
      acd100(26)=acd100(20)*acd100(19)
      acd100(27)=acd100(21)*acd100(11)
      acd100(24)=acd100(27)+acd100(26)+acd100(25)+acd100(24)
      acd100(24)=acd100(15)*acd100(24)
      acd100(25)=-acd100(3)*acd100(1)
      acd100(26)=-acd100(13)*acd100(7)
      acd100(27)=-acd100(14)*acd100(11)
      acd100(25)=acd100(27)+acd100(25)+acd100(26)
      acd100(26)=acd100(4)+acd100(2)
      acd100(25)=acd100(26)*acd100(25)
      acd100(26)=acd100(18)*acd100(7)
      acd100(27)=acd100(22)*acd100(11)
      acd100(26)=acd100(27)+acd100(26)
      acd100(26)=acd100(9)*acd100(26)
      acd100(23)=acd100(24)+acd100(23)+acd100(26)+acd100(25)
      brack(ninjaidxt0x0mu0)=acd100(23)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d100h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd100h0
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
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d100h0l132
