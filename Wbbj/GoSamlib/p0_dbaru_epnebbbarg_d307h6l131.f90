module     p0_dbaru_epnebbbarg_d307h6l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d307h6l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd307h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd307
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd307h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(28) :: acd307
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd307(1)=dotproduct(k2,ninjaE3)
      acd307(2)=dotproduct(ninjaE3,spvak1k2)
      acd307(3)=dotproduct(ninjaE3,spvak7k2)
      acd307(4)=abb307(20)
      acd307(5)=dotproduct(ninjaE3,spvak4k2)
      acd307(6)=abb307(12)
      acd307(7)=dotproduct(k2,ninjaA)
      acd307(8)=dotproduct(ninjaA,spvak1k2)
      acd307(9)=dotproduct(ninjaA,spvak7k2)
      acd307(10)=dotproduct(ninjaA,spvak4k2)
      acd307(11)=abb307(14)
      acd307(12)=dotproduct(l6,ninjaE3)
      acd307(13)=abb307(15)
      acd307(14)=dotproduct(ninjaA,ninjaE3)
      acd307(15)=abb307(13)
      acd307(16)=abb307(11)
      acd307(17)=abb307(17)
      acd307(18)=dotproduct(ninjaE3,spval6k2)
      acd307(19)=abb307(19)
      acd307(20)=acd307(4)*acd307(2)
      acd307(21)=acd307(6)*acd307(5)
      acd307(20)=acd307(20)+acd307(21)
      acd307(21)=acd307(1)*acd307(3)
      acd307(22)=acd307(21)*acd307(20)
      acd307(23)=acd307(7)*acd307(20)
      acd307(24)=acd307(13)*acd307(12)
      acd307(25)=acd307(15)*acd307(14)
      acd307(26)=acd307(16)*acd307(2)
      acd307(27)=acd307(17)*acd307(5)
      acd307(28)=acd307(19)*acd307(18)
      acd307(23)=acd307(27)+acd307(26)+acd307(23)+acd307(28)+2.0_ki*acd307(25)+&
      &acd307(24)
      acd307(23)=acd307(3)*acd307(23)
      acd307(24)=acd307(8)*acd307(4)
      acd307(25)=acd307(10)*acd307(6)
      acd307(24)=acd307(11)+acd307(25)+acd307(24)
      acd307(21)=acd307(21)*acd307(24)
      acd307(20)=acd307(9)*acd307(1)*acd307(20)
      acd307(20)=acd307(20)+acd307(21)+acd307(23)
      brack(ninjaidxt1mu0)=acd307(22)
      brack(ninjaidxt0mu0)=acd307(20)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d307h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd307h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d307h6l131
