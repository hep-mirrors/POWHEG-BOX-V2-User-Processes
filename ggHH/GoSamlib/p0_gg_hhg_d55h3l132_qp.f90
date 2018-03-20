module     p0_gg_hhg_d55h3l132_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d55h3l132_qp.f90
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
      use p0_gg_hhg_abbrevd55h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd55
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
      use p0_gg_hhg_abbrevd55h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(33) :: acd55
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd55(1)=dotproduct(k1,ninjaE3)
      acd55(2)=dotproduct(k2,ninjaE3)
      acd55(3)=abb55(47)
      acd55(4)=dotproduct(ninjaA0,ninjaE3)
      acd55(5)=abb55(45)
      acd55(6)=dotproduct(ninjaE3,spvak2l3)
      acd55(7)=abb55(61)
      acd55(8)=abb55(46)
      acd55(9)=dotproduct(ninjaE3,spvak2k1)
      acd55(10)=abb55(23)
      acd55(11)=dotproduct(ninjaE3,spval4k1)
      acd55(12)=abb55(55)
      acd55(13)=abb55(29)
      acd55(14)=abb55(62)
      acd55(15)=abb55(54)
      acd55(16)=abb55(28)
      acd55(17)=abb55(51)
      acd55(18)=dotproduct(k5,ninjaE3)
      acd55(19)=dotproduct(ninjaE3,spvak2l4)
      acd55(20)=abb55(60)
      acd55(21)=dotproduct(ninjaE3,spval3k1)
      acd55(22)=abb55(59)
      acd55(23)=abb55(13)
      acd55(24)=dotproduct(ninjaE3,spvak2k5)
      acd55(25)=abb55(30)
      acd55(26)=dotproduct(ninjaE3,spvak5k2)
      acd55(27)=abb55(15)
      acd55(28)=acd55(11)*acd55(15)
      acd55(29)=acd55(1)*acd55(5)
      acd55(30)=-acd55(6)*acd55(14)
      acd55(31)=acd55(9)*acd55(13)
      acd55(28)=acd55(31)+acd55(30)+acd55(28)+acd55(29)
      acd55(29)=2.0_ki*acd55(4)
      acd55(28)=acd55(28)*acd55(29)
      acd55(30)=acd55(11)*acd55(12)
      acd55(31)=acd55(1)*acd55(3)
      acd55(32)=acd55(9)*acd55(10)
      acd55(33)=acd55(8)*acd55(29)
      acd55(30)=acd55(33)+acd55(32)+acd55(30)+acd55(31)
      acd55(30)=acd55(2)*acd55(30)
      acd55(31)=acd55(11)*acd55(17)
      acd55(32)=acd55(1)*acd55(7)
      acd55(33)=acd55(9)*acd55(16)
      acd55(31)=acd55(33)+acd55(31)+acd55(32)
      acd55(31)=acd55(6)*acd55(31)
      acd55(28)=acd55(30)+acd55(28)+acd55(31)
      acd55(28)=acd55(2)*acd55(28)
      acd55(30)=acd55(24)*acd55(25)
      acd55(31)=acd55(9)*acd55(23)
      acd55(30)=acd55(30)+acd55(31)
      acd55(30)=acd55(30)*acd55(29)
      acd55(31)=acd55(18)*acd55(19)
      acd55(32)=acd55(20)*acd55(31)
      acd55(30)=acd55(32)+acd55(30)
      acd55(29)=acd55(30)*acd55(29)
      acd55(30)=acd55(21)*acd55(22)*acd55(31)
      acd55(31)=acd55(9)*acd55(24)*acd55(26)*acd55(27)
      acd55(28)=acd55(28)+acd55(29)+acd55(30)+acd55(31)
      brack(ninjaidxt0x0mu0)=acd55(28)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=0.0_ki
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d55h3_qp_ninja_t2")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd55h3_qp
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
end module     p0_gg_hhg_d55h3l132_qp
