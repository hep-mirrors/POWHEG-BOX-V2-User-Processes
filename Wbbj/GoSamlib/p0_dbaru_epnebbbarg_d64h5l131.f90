module     p0_dbaru_epnebbbarg_d64h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d64h5l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd64h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd64
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd64(1)=dotproduct(k2,ninjaE3)
      acd64(2)=abb64(19)
      acd64(3)=dotproduct(l5,ninjaE3)
      acd64(4)=abb64(28)
      acd64(5)=dotproduct(l6,ninjaE3)
      acd64(6)=abb64(82)
      acd64(7)=dotproduct(ninjaE3,spval5k2)
      acd64(8)=abb64(13)
      acd64(9)=dotproduct(ninjaE3,spval6k2)
      acd64(10)=abb64(14)
      acd64(11)=dotproduct(ninjaE3,spvak2l5)
      acd64(12)=abb64(15)
      acd64(13)=dotproduct(ninjaE3,spval6l5)
      acd64(14)=abb64(25)
      acd64(15)=acd64(2)*acd64(1)
      acd64(16)=acd64(4)*acd64(3)
      acd64(17)=acd64(6)*acd64(5)
      acd64(18)=acd64(8)*acd64(7)
      acd64(19)=acd64(10)*acd64(9)
      acd64(20)=acd64(12)*acd64(11)
      acd64(21)=acd64(14)*acd64(13)
      acd64(15)=acd64(21)+acd64(20)+acd64(19)+acd64(18)+acd64(17)+acd64(15)+acd&
      &64(16)
      brack(ninjaidxt2mu0)=acd64(15)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d64h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd64h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6+k5
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d64h5l131
