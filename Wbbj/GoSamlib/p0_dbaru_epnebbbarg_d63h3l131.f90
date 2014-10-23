module     p0_dbaru_epnebbbarg_d63h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d63h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd63h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(33) :: acd63
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd63(1)=dotproduct(k1,ninjaE3)
      acd63(2)=abb63(30)
      acd63(3)=dotproduct(k2,ninjaE3)
      acd63(4)=abb63(16)
      acd63(5)=dotproduct(k3,ninjaE3)
      acd63(6)=abb63(31)
      acd63(7)=dotproduct(k4,ninjaE3)
      acd63(8)=abb63(29)
      acd63(9)=dotproduct(ninjaE3,spvak2k7)
      acd63(10)=abb63(15)
      acd63(11)=dotproduct(ninjaE3,spvak2l5)
      acd63(12)=abb63(17)
      acd63(13)=dotproduct(ninjaE3,spvak1k3)
      acd63(14)=abb63(18)
      acd63(15)=dotproduct(ninjaE3,spvak1k4)
      acd63(16)=abb63(20)
      acd63(17)=dotproduct(ninjaE3,spvak4k1)
      acd63(18)=abb63(23)
      acd63(19)=dotproduct(ninjaE3,spvak2l6)
      acd63(20)=abb63(24)
      acd63(21)=dotproduct(ninjaE3,spvak4k3)
      acd63(22)=abb63(32)
      acd63(23)=acd63(2)*acd63(1)
      acd63(24)=acd63(4)*acd63(3)
      acd63(25)=acd63(6)*acd63(5)
      acd63(26)=acd63(8)*acd63(7)
      acd63(27)=acd63(10)*acd63(9)
      acd63(28)=acd63(12)*acd63(11)
      acd63(29)=acd63(14)*acd63(13)
      acd63(30)=acd63(16)*acd63(15)
      acd63(31)=acd63(18)*acd63(17)
      acd63(32)=acd63(20)*acd63(19)
      acd63(33)=acd63(22)*acd63(21)
      acd63(23)=acd63(33)+acd63(32)+acd63(31)+acd63(30)+acd63(29)+acd63(28)+acd&
      &63(27)+acd63(26)+acd63(25)+acd63(23)+acd63(24)
      brack(ninjaidxt2mu0)=acd63(23)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d63h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd63h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d63h3l131
