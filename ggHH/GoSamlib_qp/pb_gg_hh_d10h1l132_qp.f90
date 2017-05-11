module pb_gg_hh_d10h1l132_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity1d10h1l132.f90
   ! generator: buildfortran_tn3.py
   use pb_gg_hh_config_qp, only: ki
   use pb_gg_hh_util_qp, only: cond_t, d => metric_tensor
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
      use pb_gg_hh_model_qp
      use pb_gg_hh_kinematics_qp
      use pb_gg_hh_color_qp
      use pb_gg_hh_abbrevd10h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd10
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
      use pb_gg_hh_model_qp
      use pb_gg_hh_kinematics_qp
      use pb_gg_hh_color_qp
      use pb_gg_hh_abbrevd10h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd10
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd10(1)=dotproduct(k1,ninjaE3)
      acd10(2)=dotproduct(ninjaE3,spvak2k1)
      acd10(3)=abb10(13)
      acd10(4)=abb10(10)
      acd10(5)=dotproduct(ninjaE3,spval3k1)
      acd10(6)=abb10(8)
      acd10(7)=dotproduct(ninjaE3,spval4l3)
      acd10(8)=abb10(9)
      acd10(9)=dotproduct(ninjaE3,spval3l4)
      acd10(10)=abb10(11)
      acd10(11)=dotproduct(ninjaE3,spvak2l3)
      acd10(12)=abb10(18)
      acd10(13)=dotproduct(ninjaE3,spvak2l4)
      acd10(14)=abb10(19)
      acd10(15)=acd10(13)*acd10(14)
      acd10(16)=acd10(11)*acd10(12)
      acd10(17)=acd10(9)*acd10(10)
      acd10(18)=acd10(7)*acd10(8)
      acd10(19)=acd10(5)*acd10(6)
      acd10(20)=acd10(1)*acd10(3)
      acd10(21)=acd10(2)*acd10(4)
      acd10(15)=acd10(21)+acd10(20)+acd10(19)+acd10(18)+acd10(17)+acd10(15)+acd&
      &10(16)
      acd10(15)=acd10(2)*acd10(15)
      brack(ninjaidxt0x0mu0)=acd10(15)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=0.0_ki
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="pb_gg_hh_d10h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use pb_gg_hh_globalsl1_qp, only: epspow
      use pb_gg_hh_kinematics_qp
      use pb_gg_hh_abbrevd10h1_qp
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
end module pb_gg_hh_d10h1l132_qp
