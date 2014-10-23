module     p0_dbaru_epnebbbarg_d100h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d100h4l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1mu0 = 0
   integer, parameter :: ninjaidxt0mu0 = 1
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd100h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd100
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd100h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd100
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd100(1)=dotproduct(ninjaE3,spval6k2)
      acd100(2)=dotproduct(ninjaE3,spvak4k2)
      acd100(3)=abb100(11)
      acd100(4)=dotproduct(ninjaE3,spvak1k2)
      acd100(5)=abb100(13)
      acd100(6)=dotproduct(ninjaE3,spvak7k2)
      acd100(7)=abb100(10)
      acd100(8)=abb100(12)
      acd100(9)=dotproduct(ninjaA,spval6k2)
      acd100(10)=dotproduct(ninjaA,spvak4k2)
      acd100(11)=dotproduct(ninjaA,spvak7k2)
      acd100(12)=dotproduct(ninjaA,spvak1k2)
      acd100(13)=abb100(9)
      acd100(14)=abb100(16)
      acd100(15)=acd100(3)*acd100(2)
      acd100(16)=acd100(5)*acd100(4)
      acd100(15)=acd100(15)+acd100(16)
      acd100(16)=acd100(1)*acd100(15)
      acd100(17)=acd100(7)*acd100(2)
      acd100(18)=acd100(8)*acd100(4)
      acd100(17)=acd100(17)-acd100(18)
      acd100(18)=acd100(6)*acd100(17)
      acd100(16)=acd100(18)+acd100(16)
      acd100(15)=acd100(9)*acd100(15)
      acd100(18)=acd100(3)*acd100(1)
      acd100(19)=acd100(7)*acd100(6)
      acd100(18)=acd100(18)+acd100(19)
      acd100(18)=acd100(10)*acd100(18)
      acd100(17)=acd100(11)*acd100(17)
      acd100(19)=acd100(5)*acd100(1)
      acd100(20)=acd100(8)*acd100(6)
      acd100(19)=acd100(19)-acd100(20)
      acd100(19)=acd100(12)*acd100(19)
      acd100(20)=acd100(13)*acd100(1)
      acd100(21)=acd100(14)*acd100(6)
      acd100(15)=acd100(21)+acd100(20)+acd100(19)+acd100(17)+acd100(15)+acd100(&
      &18)
      brack(ninjaidxt1mu0)=acd100(16)
      brack(ninjaidxt0mu0)=acd100(15)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d100h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd100h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d100h4l131
