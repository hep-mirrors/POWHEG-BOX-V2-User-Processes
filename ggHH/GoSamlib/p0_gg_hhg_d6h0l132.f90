module     p0_gg_hhg_d6h0l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d6h0l132.f90
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
      use p0_gg_hhg_abbrevd6h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(12) :: acd6
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd6(1)=dotproduct(k5,ninjaE3)
      acd6(2)=dotproduct(ninjaE3,spvak2k5)
      acd6(3)=abb6(19)
      acd6(4)=dotproduct(ninjaE3,spvak1k2)
      acd6(5)=abb6(8)
      acd6(6)=abb6(20)
      acd6(7)=dotproduct(ninjaE3,spvak1k5)
      acd6(8)=dotproduct(ninjaE3,spvak2k1)
      acd6(9)=abb6(10)
      acd6(10)=acd6(4)*acd6(5)
      acd6(11)=acd6(1)*acd6(3)
      acd6(12)=acd6(2)*acd6(6)
      acd6(10)=acd6(12)+acd6(10)+acd6(11)
      acd6(10)=acd6(2)*acd6(10)
      acd6(11)=acd6(7)*acd6(8)*acd6(9)
      acd6(10)=acd6(11)+acd6(10)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd6(10)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd6h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(34) :: acd6
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd6(1)=dotproduct(k5,ninjaA1)
      acd6(2)=dotproduct(ninjaE3,spvak2k5)
      acd6(3)=abb6(19)
      acd6(4)=dotproduct(k5,ninjaE3)
      acd6(5)=dotproduct(ninjaA1,spvak2k5)
      acd6(6)=dotproduct(ninjaA1,spvak1k2)
      acd6(7)=abb6(8)
      acd6(8)=dotproduct(ninjaE3,spvak1k2)
      acd6(9)=abb6(20)
      acd6(10)=dotproduct(ninjaA1,spvak1k5)
      acd6(11)=dotproduct(ninjaE3,spvak2k1)
      acd6(12)=abb6(10)
      acd6(13)=dotproduct(ninjaA1,spvak2k1)
      acd6(14)=dotproduct(ninjaE3,spvak1k5)
      acd6(15)=dotproduct(k5,ninjaA0)
      acd6(16)=dotproduct(ninjaA0,spvak2k5)
      acd6(17)=abb6(16)
      acd6(18)=dotproduct(ninjaA0,ninjaE3)
      acd6(19)=abb6(14)
      acd6(20)=dotproduct(ninjaA0,spvak1k2)
      acd6(21)=dotproduct(ninjaA0,spvak1k5)
      acd6(22)=dotproduct(ninjaA0,spvak2k1)
      acd6(23)=abb6(18)
      acd6(24)=abb6(9)
      acd6(25)=acd6(4)*acd6(3)
      acd6(26)=acd6(8)*acd6(7)
      acd6(27)=acd6(9)*acd6(2)
      acd6(25)=2.0_ki*acd6(27)+acd6(25)+acd6(26)
      acd6(26)=acd6(5)*acd6(25)
      acd6(27)=acd6(3)*acd6(2)
      acd6(28)=acd6(1)*acd6(27)
      acd6(29)=acd6(7)*acd6(2)
      acd6(30)=acd6(6)*acd6(29)
      acd6(31)=acd6(11)*acd6(12)
      acd6(32)=acd6(10)*acd6(31)
      acd6(33)=acd6(14)*acd6(12)
      acd6(34)=acd6(13)*acd6(33)
      acd6(26)=acd6(34)+acd6(32)+acd6(30)+acd6(28)+acd6(26)
      acd6(25)=acd6(16)*acd6(25)
      acd6(27)=acd6(15)*acd6(27)
      acd6(28)=acd6(17)*acd6(4)
      acd6(30)=acd6(19)*acd6(18)
      acd6(29)=acd6(20)*acd6(29)
      acd6(31)=acd6(21)*acd6(31)
      acd6(32)=acd6(22)*acd6(33)
      acd6(33)=acd6(23)*acd6(2)
      acd6(34)=acd6(24)*acd6(14)
      acd6(25)=acd6(34)+acd6(33)+acd6(32)+acd6(31)+acd6(29)+2.0_ki*acd6(30)+acd&
      &6(28)+acd6(27)+acd6(25)
      brack(ninjaidxt0x0mu0)=acd6(25)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=acd6(26)
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d6h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd6h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
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
end module     p0_gg_hhg_d6h0l132
