module     p0_gg_hhg_d47h3l132_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d47h3l132_qp.f90
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
      use p0_gg_hhg_abbrevd47h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd47
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
      use p0_gg_hhg_abbrevd47h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(33) :: acd47
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd47(1)=dotproduct(k1,ninjaE3)
      acd47(2)=dotproduct(k2,ninjaE3)
      acd47(3)=abb47(45)
      acd47(4)=dotproduct(ninjaA0,ninjaE3)
      acd47(5)=abb47(31)
      acd47(6)=dotproduct(ninjaE3,spvak5l3)
      acd47(7)=abb47(49)
      acd47(8)=dotproduct(ninjaE3,spvak2k1)
      acd47(9)=abb47(37)
      acd47(10)=dotproduct(ninjaE3,spval4k1)
      acd47(11)=abb47(53)
      acd47(12)=abb47(22)
      acd47(13)=abb47(51)
      acd47(14)=abb47(52)
      acd47(15)=abb47(23)
      acd47(16)=abb47(50)
      acd47(17)=dotproduct(ninjaE3,spvak2l4)
      acd47(18)=dotproduct(ninjaE3,spvak5k1)
      acd47(19)=abb47(27)
      acd47(20)=abb47(13)
      acd47(21)=dotproduct(ninjaE3,spvak2k5)
      acd47(22)=abb47(21)
      acd47(23)=abb47(59)
      acd47(24)=dotproduct(ninjaE3,spvak5k2)
      acd47(25)=abb47(17)
      acd47(26)=dotproduct(ninjaE3,spval3k2)
      acd47(27)=abb47(54)
      acd47(28)=acd47(10)*acd47(14)
      acd47(29)=acd47(1)*acd47(5)
      acd47(30)=acd47(6)*acd47(13)
      acd47(31)=acd47(8)*acd47(12)
      acd47(28)=acd47(31)+acd47(30)+acd47(28)+acd47(29)
      acd47(29)=2.0_ki*acd47(4)
      acd47(28)=acd47(28)*acd47(29)
      acd47(30)=acd47(10)*acd47(11)
      acd47(31)=acd47(1)*acd47(3)
      acd47(32)=acd47(8)*acd47(9)
      acd47(33)=-acd47(5)*acd47(29)
      acd47(30)=acd47(33)+acd47(32)+acd47(30)+acd47(31)
      acd47(30)=acd47(2)*acd47(30)
      acd47(31)=acd47(10)*acd47(16)
      acd47(32)=acd47(1)*acd47(7)
      acd47(33)=acd47(8)*acd47(15)
      acd47(31)=acd47(33)+acd47(31)+acd47(32)
      acd47(31)=acd47(6)*acd47(31)
      acd47(32)=acd47(17)*acd47(18)
      acd47(33)=acd47(19)*acd47(32)
      acd47(28)=acd47(30)+acd47(28)+acd47(33)+acd47(31)
      acd47(28)=acd47(2)*acd47(28)
      acd47(30)=acd47(21)*acd47(22)
      acd47(31)=acd47(8)*acd47(20)
      acd47(30)=acd47(30)+acd47(31)
      acd47(30)=acd47(30)*acd47(29)
      acd47(31)=acd47(23)*acd47(32)
      acd47(30)=acd47(31)+acd47(30)
      acd47(29)=acd47(30)*acd47(29)
      acd47(30)=acd47(26)*acd47(27)*acd47(32)
      acd47(31)=acd47(8)*acd47(21)*acd47(24)*acd47(25)
      acd47(28)=acd47(28)+acd47(29)+acd47(30)+acd47(31)
      brack(ninjaidxt0x0mu0)=acd47(28)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=0.0_ki
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d47h3_qp_ninja_t2")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd47h3_qp
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
end module     p0_gg_hhg_d47h3l132_qp
