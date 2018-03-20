module     p0_gg_hhg_d17h4l132_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d17h4l132_qp.f90
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
      use p0_gg_hhg_abbrevd17h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd17
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
      use p0_gg_hhg_abbrevd17h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(42) :: acd17
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd17(1)=dotproduct(k2,ninjaE3)
      acd17(2)=dotproduct(k5,ninjaE3)
      acd17(3)=abb17(32)
      acd17(4)=dotproduct(ninjaA0,ninjaE3)
      acd17(5)=abb17(28)
      acd17(6)=dotproduct(ninjaE3,spvak5k2)
      acd17(7)=abb17(27)
      acd17(8)=dotproduct(ninjaE3,spvak5l3)
      acd17(9)=abb17(34)
      acd17(10)=dotproduct(ninjaE3,spvak5l4)
      acd17(11)=abb17(52)
      acd17(12)=abb17(15)
      acd17(13)=dotproduct(ninjaE3,spval3k2)
      acd17(14)=abb17(39)
      acd17(15)=abb17(11)
      acd17(16)=abb17(42)
      acd17(17)=dotproduct(ninjaE3,spvak5k1)
      acd17(18)=abb17(44)
      acd17(19)=abb17(57)
      acd17(20)=dotproduct(ninjaE3,spval4k2)
      acd17(21)=abb17(37)
      acd17(22)=abb17(43)
      acd17(23)=abb17(10)
      acd17(24)=abb17(22)
      acd17(25)=abb17(50)
      acd17(26)=abb17(38)
      acd17(27)=abb17(47)
      acd17(28)=abb17(19)
      acd17(29)=dotproduct(ninjaE3,spvak1k2)
      acd17(30)=abb17(20)
      acd17(31)=abb17(13)
      acd17(32)=abb17(23)
      acd17(33)=abb17(51)
      acd17(34)=2.0_ki*acd17(4)
      acd17(35)=-acd17(34)-acd17(2)
      acd17(35)=acd17(12)*acd17(35)
      acd17(36)=acd17(20)*acd17(21)
      acd17(37)=acd17(10)*acd17(22)
      acd17(38)=acd17(17)*acd17(18)
      acd17(39)=acd17(13)*acd17(15)
      acd17(40)=acd17(8)*acd17(19)
      acd17(41)=acd17(1)*acd17(5)
      acd17(42)=acd17(6)*acd17(16)
      acd17(35)=acd17(42)+acd17(41)+acd17(40)+acd17(39)+acd17(38)+acd17(36)+acd&
      &17(37)+acd17(35)
      acd17(34)=acd17(35)*acd17(34)
      acd17(35)=acd17(29)*acd17(30)
      acd17(36)=acd17(20)*acd17(28)
      acd17(37)=acd17(17)*acd17(26)
      acd17(38)=acd17(13)*acd17(23)
      acd17(39)=acd17(8)*acd17(27)
      acd17(40)=acd17(1)*acd17(7)
      acd17(41)=acd17(6)*acd17(25)
      acd17(35)=acd17(41)+acd17(40)+acd17(39)+acd17(38)+acd17(37)+acd17(35)+acd&
      &17(36)
      acd17(35)=acd17(6)*acd17(35)
      acd17(36)=acd17(10)*acd17(11)
      acd17(37)=acd17(2)*acd17(3)
      acd17(38)=acd17(8)*acd17(9)
      acd17(36)=acd17(38)+acd17(36)+acd17(37)
      acd17(36)=acd17(1)*acd17(36)
      acd17(37)=acd17(10)*acd17(24)
      acd17(38)=acd17(2)*acd17(14)
      acd17(37)=acd17(37)+acd17(38)
      acd17(37)=acd17(13)*acd17(37)
      acd17(38)=acd17(20)*acd17(33)
      acd17(39)=acd17(17)*acd17(31)
      acd17(38)=acd17(38)+acd17(39)
      acd17(38)=acd17(8)*acd17(38)
      acd17(39)=acd17(17)*acd17(29)*acd17(32)
      acd17(34)=acd17(34)+acd17(35)+acd17(36)+acd17(38)+acd17(39)+acd17(37)
      brack(ninjaidxt0x0mu0)=acd17(34)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=0.0_ki
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d17h4_qp_ninja_t2")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd17h4_qp
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
end module     p0_gg_hhg_d17h4l132_qp
