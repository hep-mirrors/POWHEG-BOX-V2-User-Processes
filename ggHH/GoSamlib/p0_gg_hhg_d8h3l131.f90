module     p0_gg_hhg_d8h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d8h3l131.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond_t, d => metric_tensor
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
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd8h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd8
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd8(1)=dotproduct(k2,ninjaE3)
      acd8(2)=dotproduct(ninjaE3,spvak2k1)
      acd8(3)=abb8(9)
      acd8(4)=dotproduct(ninjaE3,spvak2k5)
      acd8(5)=dotproduct(ninjaE3,spvak5k1)
      acd8(6)=abb8(10)
      acd8(7)=acd8(3)*acd8(2)*acd8(1)
      acd8(8)=acd8(6)*acd8(5)*acd8(4)
      acd8(7)=acd8(7)+acd8(8)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd8(7)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd8h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(26) :: acd8
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd8(1)=dotproduct(k2,ninjaE3)
      acd8(2)=dotproduct(ninjaE4,spvak2k1)
      acd8(3)=abb8(9)
      acd8(4)=dotproduct(k2,ninjaE4)
      acd8(5)=dotproduct(ninjaE3,spvak2k1)
      acd8(6)=dotproduct(ninjaE3,spvak2k5)
      acd8(7)=dotproduct(ninjaE4,spvak5k1)
      acd8(8)=abb8(10)
      acd8(9)=dotproduct(ninjaE3,spvak5k1)
      acd8(10)=dotproduct(ninjaE4,spvak2k5)
      acd8(11)=abb8(8)
      acd8(12)=dotproduct(k2,ninjaA)
      acd8(13)=dotproduct(ninjaA,spvak2k1)
      acd8(14)=dotproduct(ninjaA,ninjaE3)
      acd8(15)=dotproduct(ninjaA,spvak2k5)
      acd8(16)=dotproduct(ninjaA,spvak5k1)
      acd8(17)=dotproduct(ninjaA,ninjaA)
      acd8(18)=abb8(7)
      acd8(19)=acd8(9)*acd8(8)
      acd8(20)=acd8(19)*acd8(10)
      acd8(21)=acd8(6)*acd8(8)
      acd8(22)=acd8(21)*acd8(7)
      acd8(23)=acd8(5)*acd8(3)
      acd8(24)=acd8(23)*acd8(4)
      acd8(25)=acd8(1)*acd8(3)
      acd8(26)=acd8(25)*acd8(2)
      acd8(20)=acd8(11)+acd8(20)+acd8(22)+acd8(24)+acd8(26)
      acd8(22)=acd8(12)*acd8(23)
      acd8(23)=acd8(13)*acd8(25)
      acd8(19)=acd8(15)*acd8(19)
      acd8(21)=acd8(16)*acd8(21)
      acd8(24)=acd8(14)*acd8(11)
      acd8(19)=2.0_ki*acd8(24)+acd8(21)+acd8(19)+acd8(22)+acd8(23)
      acd8(21)=ninjaP*acd8(20)
      acd8(22)=acd8(12)*acd8(13)*acd8(3)
      acd8(23)=acd8(15)*acd8(16)*acd8(8)
      acd8(24)=acd8(17)*acd8(11)
      acd8(21)=acd8(18)+acd8(24)+acd8(23)+acd8(22)+acd8(21)
      brack(ninjaidxt1mu0)=acd8(19)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd8(21)
      brack(ninjaidxt0mu2)=acd8(20)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d8h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd8h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2-k5
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
end module     p0_gg_hhg_d8h3l131
