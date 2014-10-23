module     p0_dbaru_epnebbbarg_d107h6l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d107h6l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd107h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd107
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
      use p0_dbaru_epnebbbarg_abbrevd107h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(27) :: acd107
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd107(1)=dotproduct(k2,ninjaE3)
      acd107(2)=abb107(52)
      acd107(3)=dotproduct(k3,ninjaE3)
      acd107(4)=dotproduct(k4,ninjaE3)
      acd107(5)=dotproduct(ninjaE3,spvak4k2)
      acd107(6)=abb107(19)
      acd107(7)=dotproduct(ninjaE3,spvak4l6)
      acd107(8)=abb107(54)
      acd107(9)=dotproduct(ninjaE3,spvak4k3)
      acd107(10)=abb107(30)
      acd107(11)=abb107(18)
      acd107(12)=abb107(20)
      acd107(13)=abb107(13)
      acd107(14)=abb107(28)
      acd107(15)=dotproduct(ninjaE3,spvak2l6)
      acd107(16)=abb107(24)
      acd107(17)=abb107(32)
      acd107(18)=dotproduct(ninjaE3,spvak3k2)
      acd107(19)=abb107(17)
      acd107(20)=dotproduct(ninjaE3,spvak3l6)
      acd107(21)=acd107(3)+acd107(4)
      acd107(22)=-acd107(11)*acd107(21)
      acd107(23)=acd107(16)*acd107(15)
      acd107(24)=acd107(9)*acd107(14)
      acd107(25)=acd107(7)*acd107(13)
      acd107(26)=acd107(1)*acd107(6)
      acd107(27)=acd107(5)*acd107(12)
      acd107(22)=acd107(27)+acd107(26)+acd107(25)+acd107(24)+acd107(23)+acd107(&
      &22)
      acd107(22)=acd107(5)*acd107(22)
      acd107(23)=acd107(1)-acd107(21)
      acd107(23)=acd107(2)*acd107(23)
      acd107(24)=acd107(9)*acd107(10)
      acd107(25)=-acd107(7)*acd107(8)
      acd107(23)=acd107(25)+acd107(24)+acd107(23)
      acd107(23)=acd107(1)*acd107(23)
      acd107(24)=acd107(18)*acd107(19)
      acd107(25)=-acd107(16)*acd107(20)
      acd107(24)=acd107(24)+acd107(25)
      acd107(24)=acd107(9)*acd107(24)
      acd107(21)=acd107(8)*acd107(21)
      acd107(25)=acd107(9)*acd107(17)
      acd107(21)=acd107(25)+acd107(21)
      acd107(21)=acd107(7)*acd107(21)
      acd107(21)=acd107(22)+acd107(23)+acd107(24)+acd107(21)
      brack(ninjaidxt0x0mu0)=acd107(21)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d107h6_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd107h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6
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
end module     p0_dbaru_epnebbbarg_d107h6l132
