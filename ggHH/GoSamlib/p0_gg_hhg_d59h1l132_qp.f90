module     p0_gg_hhg_d59h1l132_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d59h1l132_qp.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_util_qp, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2x0mu0 = 0
   integer, parameter :: ninjaidxt1x0mu0 = 1
   integer, parameter :: ninjaidxt1x1mu0 = 2
   integer, parameter :: ninjaidxt0x0mu0 = 3
   integer, parameter :: ninjaidxt0x0mu2 = 4
   integer, parameter :: ninjaidxt0x1mu0 = 5
   integer, parameter :: ninjaidxt0x2mu0 = 6
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd59h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd59
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=0.0_ki
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd59h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd59
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd59(1)=dotproduct(ninjaA0,ninjaE3)
      acd59(2)=dotproduct(ninjaE3,spvak2k1)
      acd59(3)=dotproduct(ninjaE3,spvak2k5)
      acd59(4)=abb59(25)
      acd59(5)=abb59(33)
      acd59(6)=dotproduct(ninjaE3,spvak2l3)
      acd59(7)=abb59(32)
      acd59(8)=abb59(9)
      acd59(9)=abb59(22)
      acd59(10)=dotproduct(ninjaE3,spval3k1)
      acd59(11)=abb59(8)
      acd59(12)=abb59(28)
      acd59(13)=dotproduct(ninjaE3,spval3k5)
      acd59(14)=abb59(15)
      acd59(15)=dotproduct(ninjaE3,spvak1k5)
      acd59(16)=abb59(10)
      acd59(17)=acd59(10)*acd59(11)
      acd59(18)=2.0_ki*acd59(1)
      acd59(19)=-acd59(4)*acd59(18)
      acd59(20)=acd59(6)*acd59(12)
      acd59(21)=acd59(2)*acd59(8)
      acd59(17)=acd59(21)+acd59(20)+acd59(17)+acd59(19)
      acd59(17)=acd59(2)*acd59(17)
      acd59(19)=acd59(10)*acd59(16)
      acd59(20)=acd59(5)*acd59(18)
      acd59(21)=acd59(2)*acd59(9)
      acd59(19)=acd59(21)+acd59(19)+acd59(20)
      acd59(19)=acd59(3)*acd59(19)
      acd59(20)=-acd59(10)*acd59(14)
      acd59(18)=-acd59(7)*acd59(18)
      acd59(18)=acd59(20)+acd59(18)
      acd59(18)=acd59(6)*acd59(18)
      acd59(17)=acd59(19)+acd59(18)+acd59(17)
      acd59(17)=acd59(3)*acd59(17)
      acd59(18)=-acd59(14)*acd59(13)
      acd59(19)=-acd59(7)*acd59(15)
      acd59(18)=acd59(18)+acd59(19)
      acd59(18)=acd59(2)*acd59(6)*acd59(18)
      acd59(17)=acd59(18)+acd59(17)
      brack(ninjaidxt0x0mu0)=acd59(17)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=0.0_ki
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d59h1_qp_ninja_t2")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd59h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_gg_hhg_d59h1l132_qp
