module     p0_gg_hhg_d25h4l132_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d25h4l132_qp.f90
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
      use p0_gg_hhg_abbrevd25h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd25
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
      use p0_gg_hhg_abbrevd25h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(41) :: acd25
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd25(1)=dotproduct(k1,ninjaE3)
      acd25(2)=dotproduct(k2,ninjaE3)
      acd25(3)=abb25(19)
      acd25(4)=dotproduct(ninjaA0,ninjaE3)
      acd25(5)=abb25(47)
      acd25(6)=dotproduct(ninjaE3,spval3k2)
      acd25(7)=abb25(55)
      acd25(8)=abb25(43)
      acd25(9)=dotproduct(ninjaE3,spvak1k2)
      acd25(10)=abb25(33)
      acd25(11)=dotproduct(ninjaE3,spvak1l3)
      acd25(12)=abb25(22)
      acd25(13)=dotproduct(ninjaE3,spvak1l4)
      acd25(14)=abb25(26)
      acd25(15)=abb25(10)
      acd25(16)=dotproduct(ninjaE3,spvak1k5)
      acd25(17)=abb25(14)
      acd25(18)=abb25(18)
      acd25(19)=abb25(23)
      acd25(20)=abb25(37)
      acd25(21)=dotproduct(ninjaE3,spval4k2)
      acd25(22)=abb25(27)
      acd25(23)=abb25(25)
      acd25(24)=abb25(13)
      acd25(25)=abb25(15)
      acd25(26)=abb25(21)
      acd25(27)=abb25(31)
      acd25(28)=abb25(34)
      acd25(29)=dotproduct(ninjaE3,spvak5k2)
      acd25(30)=abb25(17)
      acd25(31)=abb25(35)
      acd25(32)=abb25(46)
      acd25(33)=2.0_ki*acd25(4)
      acd25(34)=acd25(33)-acd25(1)
      acd25(34)=acd25(5)*acd25(34)
      acd25(35)=acd25(21)*acd25(22)
      acd25(36)=acd25(13)*acd25(20)
      acd25(37)=acd25(16)*acd25(17)
      acd25(38)=acd25(6)*acd25(19)
      acd25(39)=acd25(11)*acd25(18)
      acd25(40)=acd25(2)*acd25(8)
      acd25(41)=acd25(9)*acd25(15)
      acd25(34)=acd25(41)+acd25(40)+acd25(39)+acd25(38)+acd25(37)+acd25(35)+acd&
      &25(36)+acd25(34)
      acd25(33)=acd25(34)*acd25(33)
      acd25(34)=acd25(21)*acd25(27)
      acd25(35)=acd25(16)*acd25(24)
      acd25(36)=acd25(6)*acd25(26)
      acd25(37)=acd25(11)*acd25(25)
      acd25(38)=acd25(2)*acd25(10)
      acd25(39)=acd25(9)*acd25(23)
      acd25(34)=acd25(39)+acd25(38)+acd25(37)+acd25(36)+acd25(34)+acd25(35)
      acd25(34)=acd25(9)*acd25(34)
      acd25(35)=acd25(13)*acd25(14)
      acd25(36)=acd25(1)*acd25(3)
      acd25(37)=acd25(11)*acd25(12)
      acd25(35)=acd25(37)+acd25(35)+acd25(36)
      acd25(35)=acd25(2)*acd25(35)
      acd25(36)=acd25(13)*acd25(32)
      acd25(37)=acd25(1)*acd25(7)
      acd25(36)=acd25(36)+acd25(37)
      acd25(36)=acd25(6)*acd25(36)
      acd25(37)=acd25(21)*acd25(31)
      acd25(38)=acd25(16)*acd25(28)
      acd25(37)=acd25(37)+acd25(38)
      acd25(37)=acd25(11)*acd25(37)
      acd25(38)=acd25(16)*acd25(29)*acd25(30)
      acd25(33)=acd25(33)+acd25(34)+acd25(35)+acd25(37)+acd25(38)+acd25(36)
      brack(ninjaidxt0x0mu0)=acd25(33)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=0.0_ki
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d25h4_qp_ninja_t2")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd25h4_qp
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
end module     p0_gg_hhg_d25h4l132_qp
