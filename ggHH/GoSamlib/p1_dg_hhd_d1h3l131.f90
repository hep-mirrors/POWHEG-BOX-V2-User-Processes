module     p1_dg_hhd_d1h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p1_dg_hhd/helicity3d1h3l131.f90
   ! generator: buildfortran_tn3.py
   use p1_dg_hhd_config, only: ki
   use p1_dg_hhd_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd1h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(4) :: acd1
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd1(1)=dotproduct(ninjaE3,spvak1k2)
      acd1(2)=dotproduct(ninjaE3,spvak1k5)
      acd1(3)=abb1(6)
      acd1(4)=acd1(3)*acd1(2)*acd1(1)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd1(4)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd1h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(12) :: acd1
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd1(1)=dotproduct(ninjaE3,spvak1k2)
      acd1(2)=dotproduct(ninjaE4,spvak1k5)
      acd1(3)=abb1(6)
      acd1(4)=dotproduct(ninjaE3,spvak1k5)
      acd1(5)=dotproduct(ninjaE4,spvak1k2)
      acd1(6)=dotproduct(ninjaA,spvak1k2)
      acd1(7)=dotproduct(ninjaA,spvak1k5)
      acd1(8)=abb1(7)
      acd1(9)=acd1(4)*acd1(3)
      acd1(10)=acd1(9)*acd1(5)
      acd1(11)=acd1(1)*acd1(3)
      acd1(12)=acd1(11)*acd1(2)
      acd1(10)=acd1(10)+acd1(12)
      acd1(9)=acd1(6)*acd1(9)
      acd1(11)=acd1(7)*acd1(11)
      acd1(9)=acd1(9)+acd1(11)
      acd1(11)=ninjaP*acd1(10)
      acd1(12)=acd1(6)*acd1(7)*acd1(3)
      acd1(11)=acd1(8)+acd1(12)+acd1(11)
      brack(ninjaidxt1mu0)=acd1(9)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd1(11)
      brack(ninjaidxt0mu2)=acd1(10)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p1_dg_hhd_d1h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p1_dg_hhd_globalsl1, only: epspow
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_abbrevd1h3
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
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p1_dg_hhd_d1h3l131
