module     p0_dbaru_epnebbbarg_d137h7l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d137h7l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd137h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(6) :: acd137
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd137(1)=dotproduct(k2,ninjaE3)
      acd137(2)=dotproduct(ninjaE3,spvak7k2)
      acd137(3)=abb137(13)
      acd137(4)=abb137(15)
      acd137(5)=acd137(1)*acd137(3)
      acd137(6)=acd137(2)*acd137(4)
      acd137(5)=acd137(5)+acd137(6)
      acd137(5)=acd137(2)*acd137(5)
      brack(ninjaidxt2mu0)=acd137(5)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd137h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(14) :: acd137
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd137(1)=dotproduct(k2,ninjaE3)
      acd137(2)=dotproduct(ninjaE4,spvak7k2)
      acd137(3)=abb137(13)
      acd137(4)=dotproduct(k2,ninjaE4)
      acd137(5)=dotproduct(ninjaE3,spvak7k2)
      acd137(6)=abb137(15)
      acd137(7)=dotproduct(k2,ninjaA)
      acd137(8)=dotproduct(ninjaA,spvak7k2)
      acd137(9)=abb137(14)
      acd137(10)=acd137(6)*acd137(5)
      acd137(11)=acd137(1)*acd137(3)
      acd137(10)=acd137(11)+2.0_ki*acd137(10)
      acd137(11)=acd137(10)*acd137(2)
      acd137(12)=acd137(5)*acd137(3)
      acd137(13)=acd137(12)*acd137(4)
      acd137(11)=acd137(11)+acd137(13)
      acd137(10)=acd137(8)*acd137(10)
      acd137(12)=acd137(7)*acd137(12)
      acd137(13)=acd137(9)*acd137(5)
      acd137(10)=acd137(13)+acd137(12)+acd137(10)
      acd137(12)=ninjaP*acd137(11)
      acd137(13)=acd137(7)*acd137(3)
      acd137(13)=acd137(9)+acd137(13)
      acd137(13)=acd137(8)*acd137(13)
      acd137(14)=acd137(6)*acd137(8)**2
      acd137(12)=acd137(14)+acd137(12)+acd137(13)
      brack(ninjaidxt1mu0)=acd137(10)
      brack(ninjaidxt0mu0)=acd137(12)
      brack(ninjaidxt0mu2)=acd137(11)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d137h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd137h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d137h7l131
