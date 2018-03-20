module     p0_gg_hhg_d4h0l131_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d4h0l131_qp.f90
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
      use p0_gg_hhg_abbrevd4h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(10) :: acd4
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd4(1)=dotproduct(k2,ninjaE3)
      acd4(2)=dotproduct(ninjaE3,spvak2k5)
      acd4(3)=abb4(14)
      acd4(4)=dotproduct(ninjaE3,spvak1k5)
      acd4(5)=dotproduct(ninjaE3,spvak2k1)
      acd4(6)=abb4(8)
      acd4(7)=dotproduct(ninjaE3,spvak1k2)
      acd4(8)=abb4(9)
      acd4(9)=acd4(3)*acd4(1)
      acd4(10)=acd4(8)*acd4(7)
      acd4(9)=acd4(10)+acd4(9)
      acd4(9)=acd4(2)*acd4(9)
      acd4(10)=acd4(6)*acd4(5)*acd4(4)
      acd4(9)=acd4(10)+acd4(9)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd4(9)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd4h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(32) :: acd4
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd4(1)=dotproduct(k2,ninjaE3)
      acd4(2)=dotproduct(ninjaE4,spvak2k5)
      acd4(3)=abb4(14)
      acd4(4)=dotproduct(k2,ninjaE4)
      acd4(5)=dotproduct(ninjaE3,spvak2k5)
      acd4(6)=dotproduct(ninjaE3,spvak1k5)
      acd4(7)=dotproduct(ninjaE4,spvak2k1)
      acd4(8)=abb4(8)
      acd4(9)=dotproduct(ninjaE3,spvak2k1)
      acd4(10)=dotproduct(ninjaE4,spvak1k5)
      acd4(11)=dotproduct(ninjaE3,spvak1k2)
      acd4(12)=abb4(9)
      acd4(13)=dotproduct(ninjaE4,spvak1k2)
      acd4(14)=abb4(11)
      acd4(15)=dotproduct(k2,ninjaA)
      acd4(16)=dotproduct(ninjaA,spvak2k5)
      acd4(17)=dotproduct(ninjaA,ninjaE3)
      acd4(18)=dotproduct(ninjaA,spvak1k5)
      acd4(19)=dotproduct(ninjaA,spvak2k1)
      acd4(20)=dotproduct(ninjaA,spvak1k2)
      acd4(21)=dotproduct(ninjaA,ninjaA)
      acd4(22)=abb4(10)
      acd4(23)=acd4(1)*acd4(3)
      acd4(24)=acd4(11)*acd4(12)
      acd4(23)=acd4(23)+acd4(24)
      acd4(24)=acd4(23)*acd4(2)
      acd4(25)=acd4(9)*acd4(8)
      acd4(26)=acd4(25)*acd4(10)
      acd4(27)=acd4(6)*acd4(8)
      acd4(28)=acd4(27)*acd4(7)
      acd4(29)=acd4(5)*acd4(12)
      acd4(30)=acd4(29)*acd4(13)
      acd4(31)=acd4(5)*acd4(3)
      acd4(32)=acd4(31)*acd4(4)
      acd4(24)=acd4(26)+acd4(28)+acd4(30)+acd4(32)+acd4(24)+acd4(14)
      acd4(23)=acd4(16)*acd4(23)
      acd4(26)=acd4(15)*acd4(31)
      acd4(25)=acd4(18)*acd4(25)
      acd4(27)=acd4(19)*acd4(27)
      acd4(28)=acd4(20)*acd4(29)
      acd4(29)=acd4(17)*acd4(14)
      acd4(23)=2.0_ki*acd4(29)+acd4(28)+acd4(27)+acd4(25)+acd4(26)+acd4(23)
      acd4(25)=ninjaP*acd4(24)
      acd4(26)=acd4(15)*acd4(3)
      acd4(27)=acd4(20)*acd4(12)
      acd4(26)=acd4(27)+acd4(26)
      acd4(26)=acd4(16)*acd4(26)
      acd4(27)=acd4(18)*acd4(19)*acd4(8)
      acd4(28)=acd4(21)*acd4(14)
      acd4(25)=acd4(22)+acd4(28)+acd4(27)+acd4(25)+acd4(26)
      brack(ninjaidxt1mu0)=acd4(23)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd4(25)
      brack(ninjaidxt0mu2)=acd4(24)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d4h0_qp_ninja_t3")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd4h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k3+k5+k4
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
end module     p0_gg_hhg_d4h0l131_qp
