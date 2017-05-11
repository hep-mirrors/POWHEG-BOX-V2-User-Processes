module     pb_gg_hh_d4h3l131
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity3d4h3l131.f90
   ! generator: buildfortran_tn3.py
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_util, only: cond_t, d => metric_tensor
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
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd4h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(4) :: acd4
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd4(1)=dotproduct(ninjaE3,spvak1k2)
      acd4(2)=dotproduct(ninjaE3,spvak2k1)
      acd4(3)=abb4(6)
      acd4(4)=acd4(3)*acd4(2)*acd4(1)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd4(4)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd4h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd4
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd4(1)=dotproduct(ninjaE3,spvak1k2)
      acd4(2)=dotproduct(ninjaE4,spvak2k1)
      acd4(3)=abb4(6)
      acd4(4)=dotproduct(ninjaE3,spvak2k1)
      acd4(5)=dotproduct(ninjaE4,spvak1k2)
      acd4(6)=abb4(5)
      acd4(7)=dotproduct(ninjaA,ninjaE3)
      acd4(8)=dotproduct(ninjaA,spvak1k2)
      acd4(9)=dotproduct(ninjaA,spvak2k1)
      acd4(10)=dotproduct(ninjaA,ninjaA)
      acd4(11)=abb4(4)
      acd4(12)=acd4(4)*acd4(3)
      acd4(13)=acd4(12)*acd4(5)
      acd4(14)=acd4(1)*acd4(3)
      acd4(15)=acd4(14)*acd4(2)
      acd4(13)=acd4(6)+acd4(13)+acd4(15)
      acd4(12)=acd4(8)*acd4(12)
      acd4(14)=acd4(9)*acd4(14)
      acd4(15)=acd4(7)*acd4(6)
      acd4(12)=2.0_ki*acd4(15)+acd4(12)+acd4(14)
      acd4(14)=ninjaP*acd4(13)
      acd4(15)=acd4(8)*acd4(9)*acd4(3)
      acd4(16)=acd4(10)*acd4(6)
      acd4(14)=acd4(11)+acd4(16)+acd4(15)+acd4(14)
      brack(ninjaidxt1mu0)=acd4(12)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd4(14)
      brack(ninjaidxt0mu2)=acd4(13)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="pb_gg_hh_d4h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd4h3
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
end module     pb_gg_hh_d4h3l131
