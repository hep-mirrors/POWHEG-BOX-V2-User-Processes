module     p0_dbaru_epnebbbarg_d313h1l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d313h1l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd313h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd313
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
      use p0_dbaru_epnebbbarg_abbrevd313h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(29) :: acd313
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd313(1)=dotproduct(k2,ninjaE3)
      acd313(2)=dotproduct(ninjaE3,spvak2k7)
      acd313(3)=dotproduct(ninjaE3,spvak4l5)
      acd313(4)=abb313(32)
      acd313(5)=dotproduct(ninjaE3,spval6l5)
      acd313(6)=abb313(50)
      acd313(7)=dotproduct(k3,ninjaE3)
      acd313(8)=dotproduct(ninjaE3,spvak4k2)
      acd313(9)=abb313(17)
      acd313(10)=dotproduct(k4,ninjaE3)
      acd313(11)=abb313(42)
      acd313(12)=abb313(13)
      acd313(13)=abb313(19)
      acd313(14)=dotproduct(ninjaE3,spvak4k3)
      acd313(15)=abb313(40)
      acd313(16)=dotproduct(ninjaE3,spvak2l5)
      acd313(17)=abb313(44)
      acd313(18)=abb313(38)
      acd313(19)=abb313(30)
      acd313(20)=dotproduct(ninjaE3,spvak3l5)
      acd313(21)=dotproduct(ninjaE3,spvak3k2)
      acd313(22)=abb313(45)
      acd313(23)=acd313(7)+acd313(10)
      acd313(24)=acd313(9)*acd313(23)
      acd313(25)=-acd313(17)*acd313(16)
      acd313(26)=acd313(14)*acd313(15)
      acd313(27)=acd313(5)*acd313(13)
      acd313(28)=acd313(3)*acd313(12)
      acd313(29)=acd313(8)*acd313(11)
      acd313(24)=acd313(29)+acd313(28)+acd313(27)+acd313(26)+acd313(25)+acd313(&
      &24)
      acd313(24)=acd313(8)*acd313(24)
      acd313(25)=acd313(21)*acd313(22)
      acd313(26)=acd313(17)*acd313(20)
      acd313(25)=acd313(25)+acd313(26)
      acd313(25)=acd313(14)*acd313(25)
      acd313(23)=acd313(23)-acd313(1)
      acd313(26)=acd313(6)*acd313(23)
      acd313(27)=acd313(14)*acd313(19)
      acd313(26)=acd313(26)+acd313(27)
      acd313(26)=acd313(5)*acd313(26)
      acd313(23)=-acd313(4)*acd313(23)
      acd313(27)=acd313(14)*acd313(18)
      acd313(23)=acd313(23)+acd313(27)
      acd313(23)=acd313(3)*acd313(23)
      acd313(23)=acd313(24)+acd313(23)+acd313(25)+acd313(26)
      acd313(23)=acd313(2)*acd313(23)
      brack(ninjaidxt0x0mu0)=acd313(23)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d313h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd313h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d313h1l132
