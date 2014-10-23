module     p0_dbaru_epnebbbarg_d1h7l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d1h7l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd1h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd1
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd1h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(30) :: acd1
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd1(1)=dotproduct(k2,ninjaE3)
      acd1(2)=dotproduct(ninjaE3,spvak4k3)
      acd1(3)=abb1(16)
      acd1(4)=dotproduct(ninjaE3,spvak1k2)
      acd1(5)=abb1(7)
      acd1(6)=dotproduct(k2,ninjaA)
      acd1(7)=dotproduct(ninjaA,spvak4k3)
      acd1(8)=abb1(11)
      acd1(9)=dotproduct(k3,ninjaE3)
      acd1(10)=abb1(17)
      acd1(11)=dotproduct(k4,ninjaE3)
      acd1(12)=dotproduct(ninjaA,ninjaE3)
      acd1(13)=abb1(12)
      acd1(14)=dotproduct(ninjaA,spvak1k2)
      acd1(15)=abb1(9)
      acd1(16)=dotproduct(ninjaE3,spvak2l5)
      acd1(17)=abb1(8)
      acd1(18)=dotproduct(ninjaE3,spvak1k3)
      acd1(19)=abb1(10)
      acd1(20)=dotproduct(ninjaE3,spvak2l6)
      acd1(21)=abb1(14)
      acd1(22)=acd1(3)*acd1(1)
      acd1(23)=acd1(4)*acd1(5)
      acd1(22)=acd1(22)+acd1(23)
      acd1(23)=acd1(2)*acd1(22)
      acd1(24)=acd1(6)*acd1(3)
      acd1(25)=acd1(14)*acd1(5)
      acd1(24)=acd1(15)+acd1(25)+acd1(24)
      acd1(24)=acd1(2)*acd1(24)
      acd1(22)=acd1(7)*acd1(22)
      acd1(25)=acd1(11)+acd1(9)
      acd1(25)=acd1(10)*acd1(25)
      acd1(26)=acd1(8)*acd1(1)
      acd1(27)=acd1(13)*acd1(12)
      acd1(28)=acd1(17)*acd1(16)
      acd1(29)=acd1(19)*acd1(18)
      acd1(30)=acd1(21)*acd1(20)
      acd1(22)=acd1(30)+acd1(29)+acd1(28)+2.0_ki*acd1(27)+acd1(26)+acd1(22)+acd&
      &1(25)+acd1(24)
      brack(ninjaidxt1mu0)=acd1(23)
      brack(ninjaidxt0mu0)=acd1(22)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d1h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd1h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
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
end module     p0_dbaru_epnebbbarg_d1h7l131
