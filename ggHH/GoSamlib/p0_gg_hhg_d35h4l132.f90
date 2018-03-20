module     p0_gg_hhg_d35h4l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d35h4l132.f90
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
      use p0_gg_hhg_abbrevd35h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(5) :: acd35
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd35(1)=dotproduct(ninjaE3,spvak1k2)
      acd35(2)=dotproduct(ninjaE3,spvak2k5)
      acd35(3)=dotproduct(ninjaE3,spvak5k2)
      acd35(4)=abb35(7)
      acd35(5)=acd35(4)*acd35(3)*acd35(2)*acd35(1)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd35(5)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd35h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(28) :: acd35
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd35(1)=dotproduct(ninjaA1,spvak1k2)
      acd35(2)=dotproduct(ninjaE3,spvak2k5)
      acd35(3)=dotproduct(ninjaE3,spvak5k2)
      acd35(4)=abb35(7)
      acd35(5)=dotproduct(ninjaA1,spvak2k5)
      acd35(6)=dotproduct(ninjaE3,spvak1k2)
      acd35(7)=dotproduct(ninjaA1,spvak5k2)
      acd35(8)=dotproduct(k2,ninjaE3)
      acd35(9)=abb35(16)
      acd35(10)=abb35(9)
      acd35(11)=dotproduct(ninjaE3,spvak1k5)
      acd35(12)=abb35(21)
      acd35(13)=abb35(10)
      acd35(14)=dotproduct(k5,ninjaE3)
      acd35(15)=abb35(11)
      acd35(16)=dotproduct(ninjaA0,ninjaE3)
      acd35(17)=dotproduct(ninjaA0,spvak1k2)
      acd35(18)=dotproduct(ninjaA0,spvak2k5)
      acd35(19)=dotproduct(ninjaA0,spvak5k2)
      acd35(20)=abb35(6)
      acd35(21)=abb35(12)
      acd35(22)=acd35(4)*acd35(2)
      acd35(23)=acd35(7)*acd35(22)
      acd35(24)=acd35(3)*acd35(4)
      acd35(25)=acd35(5)*acd35(24)
      acd35(23)=acd35(23)+acd35(25)
      acd35(23)=acd35(6)*acd35(23)
      acd35(25)=acd35(3)*acd35(1)*acd35(22)
      acd35(23)=acd35(25)+acd35(23)
      acd35(25)=-acd35(8)-2.0_ki*acd35(16)
      acd35(25)=acd35(10)*acd35(25)
      acd35(26)=acd35(14)*acd35(15)
      acd35(27)=acd35(11)*acd35(20)
      acd35(28)=acd35(19)*acd35(22)
      acd35(24)=acd35(18)*acd35(24)
      acd35(24)=acd35(24)+acd35(28)+acd35(27)+acd35(26)+acd35(25)
      acd35(24)=acd35(6)*acd35(24)
      acd35(25)=acd35(11)*acd35(21)
      acd35(26)=acd35(8)*acd35(13)
      acd35(22)=acd35(17)*acd35(22)
      acd35(22)=acd35(22)+acd35(25)+acd35(26)
      acd35(22)=acd35(3)*acd35(22)
      acd35(25)=acd35(11)*acd35(12)
      acd35(26)=acd35(8)*acd35(9)
      acd35(25)=acd35(25)+acd35(26)
      acd35(25)=acd35(8)*acd35(25)
      acd35(22)=acd35(24)+acd35(25)+acd35(22)
      brack(ninjaidxt0x0mu0)=acd35(22)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=acd35(23)
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d35h4_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd35h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2+k5
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
end module     p0_gg_hhg_d35h4l132
