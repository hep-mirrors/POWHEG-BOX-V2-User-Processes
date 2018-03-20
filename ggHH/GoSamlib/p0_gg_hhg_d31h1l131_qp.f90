module     p0_gg_hhg_d31h1l131_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d31h1l131_qp.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_util_qp, only: cond_t, d => metric_tensor
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
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd31h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(4) :: acd31
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd31(1)=dotproduct(ninjaE3,spvak2k1)
      acd31(2)=dotproduct(ninjaE3,spvak2k5)
      acd31(3)=abb31(7)
      acd31(4)=acd31(3)*acd31(1)*acd31(2)**2
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd31(4)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd31h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(15) :: acd31
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd31(1)=dotproduct(ninjaE3,spvak2k1)
      acd31(2)=dotproduct(ninjaE3,spvak2k5)
      acd31(3)=dotproduct(ninjaE4,spvak2k5)
      acd31(4)=abb31(7)
      acd31(5)=dotproduct(ninjaE4,spvak2k1)
      acd31(6)=dotproduct(ninjaA,spvak2k1)
      acd31(7)=dotproduct(ninjaA,spvak2k5)
      acd31(8)=abb31(8)
      acd31(9)=abb31(9)
      acd31(10)=2.0_ki*acd31(2)
      acd31(11)=acd31(1)*acd31(4)
      acd31(10)=acd31(10)*acd31(11)
      acd31(12)=acd31(10)*acd31(3)
      acd31(13)=acd31(4)*acd31(2)**2
      acd31(14)=acd31(5)*acd31(13)
      acd31(12)=acd31(12)+acd31(14)
      acd31(10)=acd31(7)*acd31(10)
      acd31(13)=acd31(6)*acd31(13)
      acd31(14)=acd31(8)*acd31(1)*acd31(2)
      acd31(10)=acd31(14)+acd31(10)+acd31(13)
      acd31(13)=acd31(6)*acd31(2)
      acd31(14)=acd31(7)*acd31(1)
      acd31(13)=acd31(14)+acd31(13)
      acd31(13)=acd31(8)*acd31(13)
      acd31(14)=ninjaP*acd31(12)
      acd31(15)=acd31(7)*acd31(6)*acd31(4)
      acd31(15)=acd31(9)+2.0_ki*acd31(15)
      acd31(15)=acd31(2)*acd31(15)
      acd31(11)=acd31(7)**2*acd31(11)
      acd31(11)=acd31(14)+acd31(13)+acd31(11)+acd31(15)
      brack(ninjaidxt1mu0)=acd31(10)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd31(11)
      brack(ninjaidxt0mu2)=acd31(12)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d31h1_qp_ninja_t3")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd31h1_qp
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
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_gg_hhg_d31h1l131_qp
