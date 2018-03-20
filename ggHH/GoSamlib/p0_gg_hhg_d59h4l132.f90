module     p0_gg_hhg_d59h4l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d59h4l132.f90
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
      use p0_gg_hhg_abbrevd59h4
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
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd59h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(34) :: acd59
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd59(1)=dotproduct(k2,ninjaE3)
      acd59(2)=dotproduct(ninjaA0,ninjaE3)
      acd59(3)=dotproduct(ninjaE3,spvak1k2)
      acd59(4)=abb59(21)
      acd59(5)=dotproduct(ninjaE3,spvak5k2)
      acd59(6)=abb59(59)
      acd59(7)=dotproduct(ninjaE3,spvak2k1)
      acd59(8)=abb59(22)
      acd59(9)=dotproduct(ninjaE3,spvak5l3)
      acd59(10)=abb59(34)
      acd59(11)=dotproduct(ninjaE3,spvak1l3)
      acd59(12)=abb59(68)
      acd59(13)=dotproduct(k5,ninjaE3)
      acd59(14)=abb59(56)
      acd59(15)=abb59(57)
      acd59(16)=abb59(26)
      acd59(17)=abb59(58)
      acd59(18)=abb59(10)
      acd59(19)=dotproduct(ninjaE3,spval3k2)
      acd59(20)=abb59(29)
      acd59(21)=abb59(44)
      acd59(22)=abb59(63)
      acd59(23)=dotproduct(ninjaE3,spvak1k5)
      acd59(24)=abb59(67)
      acd59(25)=abb59(9)
      acd59(26)=abb59(31)
      acd59(27)=dotproduct(ninjaE3,spvak2k5)
      acd59(28)=abb59(11)
      acd59(29)=abb59(66)
      acd59(30)=acd59(23)*acd59(24)
      acd59(31)=acd59(13)*acd59(14)
      acd59(32)=acd59(19)*acd59(22)
      acd59(33)=acd59(11)*acd59(21)
      acd59(34)=acd59(1)*acd59(6)
      acd59(30)=acd59(34)+acd59(33)+acd59(32)+acd59(30)+acd59(31)
      acd59(30)=acd59(5)*acd59(30)
      acd59(31)=acd59(9)*acd59(21)
      acd59(32)=acd59(7)*acd59(18)
      acd59(33)=acd59(19)*acd59(20)
      acd59(34)=acd59(1)*acd59(4)
      acd59(31)=acd59(34)+acd59(33)+acd59(31)+acd59(32)
      acd59(31)=acd59(3)*acd59(31)
      acd59(32)=acd59(3)*acd59(16)
      acd59(33)=acd59(5)*acd59(17)
      acd59(32)=acd59(32)+acd59(33)
      acd59(33)=2.0_ki*acd59(2)
      acd59(32)=acd59(32)*acd59(33)
      acd59(30)=acd59(32)+acd59(31)+acd59(30)
      acd59(30)=acd59(30)*acd59(33)
      acd59(31)=acd59(23)*acd59(29)
      acd59(32)=acd59(13)*acd59(15)
      acd59(33)=acd59(19)*acd59(26)
      acd59(34)=acd59(1)*acd59(12)
      acd59(31)=acd59(34)+acd59(33)+acd59(31)+acd59(32)
      acd59(31)=acd59(11)*acd59(31)
      acd59(32)=acd59(3)*acd59(27)*acd59(28)
      acd59(31)=acd59(32)+acd59(31)
      acd59(31)=acd59(5)*acd59(31)
      acd59(32)=acd59(9)*acd59(26)
      acd59(33)=acd59(7)*acd59(25)
      acd59(32)=acd59(32)+acd59(33)
      acd59(32)=acd59(19)*acd59(32)
      acd59(33)=acd59(9)*acd59(10)
      acd59(34)=acd59(7)*acd59(8)
      acd59(33)=acd59(33)+acd59(34)
      acd59(33)=acd59(1)*acd59(33)
      acd59(32)=acd59(32)+acd59(33)
      acd59(32)=acd59(3)*acd59(32)
      acd59(30)=acd59(30)+acd59(32)+acd59(31)
      brack(ninjaidxt0x0mu0)=acd59(30)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=0.0_ki
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d59h4_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd59h4
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
end module     p0_gg_hhg_d59h4l132
