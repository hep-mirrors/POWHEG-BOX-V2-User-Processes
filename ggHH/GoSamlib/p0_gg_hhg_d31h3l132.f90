module     p0_gg_hhg_d31h3l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d31h3l132.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond_t, d => metric_tensor
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
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd31h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(5) :: acd31
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd31(1)=dotproduct(ninjaE3,spvak2k1)
      acd31(2)=dotproduct(ninjaE3,spvak2k5)
      acd31(3)=dotproduct(ninjaE3,spvak5k2)
      acd31(4)=abb31(9)
      acd31(5)=acd31(4)*acd31(3)*acd31(2)*acd31(1)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd31(5)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd31h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(28) :: acd31
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd31(1)=dotproduct(ninjaA1,spvak2k5)
      acd31(2)=dotproduct(ninjaE3,spvak2k1)
      acd31(3)=dotproduct(ninjaE3,spvak5k2)
      acd31(4)=abb31(9)
      acd31(5)=dotproduct(ninjaA1,spvak2k1)
      acd31(6)=dotproduct(ninjaE3,spvak2k5)
      acd31(7)=dotproduct(ninjaA1,spvak5k2)
      acd31(8)=dotproduct(k2,ninjaE3)
      acd31(9)=abb31(19)
      acd31(10)=dotproduct(k5,ninjaE3)
      acd31(11)=dotproduct(ninjaE3,spvak5k1)
      acd31(12)=abb31(6)
      acd31(13)=abb31(8)
      acd31(14)=abb31(16)
      acd31(15)=dotproduct(ninjaA0,ninjaE3)
      acd31(16)=dotproduct(ninjaA0,spvak2k5)
      acd31(17)=dotproduct(ninjaA0,spvak2k1)
      acd31(18)=dotproduct(ninjaA0,spvak5k2)
      acd31(19)=abb31(15)
      acd31(20)=dotproduct(ninjaE3,spvak1k2)
      acd31(21)=abb31(12)
      acd31(22)=acd31(4)*acd31(3)
      acd31(23)=acd31(5)*acd31(22)
      acd31(24)=acd31(2)*acd31(4)
      acd31(25)=acd31(7)*acd31(24)
      acd31(23)=acd31(23)+acd31(25)
      acd31(23)=acd31(6)*acd31(23)
      acd31(25)=acd31(2)*acd31(1)*acd31(22)
      acd31(23)=acd31(25)+acd31(23)
      acd31(25)=acd31(8)+acd31(10)
      acd31(26)=2.0_ki*acd31(15)-acd31(25)
      acd31(26)=acd31(13)*acd31(26)
      acd31(27)=acd31(11)*acd31(19)
      acd31(28)=acd31(17)*acd31(22)
      acd31(24)=acd31(18)*acd31(24)
      acd31(24)=acd31(24)+acd31(28)+acd31(27)+acd31(26)
      acd31(24)=acd31(6)*acd31(24)
      acd31(26)=acd31(20)*acd31(21)
      acd31(27)=acd31(8)*acd31(14)
      acd31(22)=acd31(16)*acd31(22)
      acd31(22)=acd31(22)+acd31(26)+acd31(27)
      acd31(22)=acd31(2)*acd31(22)
      acd31(25)=-acd31(9)*acd31(25)
      acd31(26)=acd31(11)*acd31(12)
      acd31(25)=acd31(26)+acd31(25)
      acd31(25)=acd31(8)*acd31(25)
      acd31(22)=acd31(24)+acd31(25)+acd31(22)
      brack(ninjaidxt0x0mu0)=acd31(22)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=acd31(23)
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d31h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd31h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_gg_hhg_d31h3l132
