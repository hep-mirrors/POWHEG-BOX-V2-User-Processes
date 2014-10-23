module     p0_dbaru_epnebbbarg_d20h5l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d20h5l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1x0mu0 = 0
   integer, parameter :: ninjaidxt0x0mu0 = 1
   integer, parameter :: ninjaidxt0x1mu0 = 2
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd20h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(10) :: acd20
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd20(1)=dotproduct(k2,ninjaE3)
      acd20(2)=dotproduct(ninjaE3,spvak4k3)
      acd20(3)=abb20(26)
      acd20(4)=dotproduct(ninjaE3,spvak4k2)
      acd20(5)=abb20(18)
      acd20(6)=dotproduct(ninjaE3,spvak3k2)
      acd20(7)=abb20(19)
      acd20(8)=acd20(3)*acd20(1)
      acd20(9)=acd20(5)*acd20(4)
      acd20(10)=acd20(7)*acd20(6)
      acd20(8)=acd20(10)+acd20(8)+acd20(9)
      acd20(8)=acd20(2)*acd20(8)
      brack(ninjaidxt1x0mu0)=acd20(8)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd20h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(28) :: acd20
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd20(1)=dotproduct(k2,ninjaA1)
      acd20(2)=dotproduct(ninjaE3,spvak4k3)
      acd20(3)=abb20(26)
      acd20(4)=dotproduct(k2,ninjaE3)
      acd20(5)=dotproduct(ninjaA1,spvak4k3)
      acd20(6)=dotproduct(ninjaA1,spvak4k2)
      acd20(7)=abb20(18)
      acd20(8)=dotproduct(ninjaE3,spvak4k2)
      acd20(9)=dotproduct(ninjaE3,spvak3k2)
      acd20(10)=abb20(19)
      acd20(11)=dotproduct(ninjaA1,spvak3k2)
      acd20(12)=dotproduct(k2,ninjaA0)
      acd20(13)=dotproduct(ninjaA0,spvak4k3)
      acd20(14)=dotproduct(k3,ninjaE3)
      acd20(15)=abb20(41)
      acd20(16)=dotproduct(ninjaA0,ninjaE3)
      acd20(17)=abb20(20)
      acd20(18)=dotproduct(ninjaA0,spvak4k2)
      acd20(19)=dotproduct(ninjaA0,spvak3k2)
      acd20(20)=dotproduct(ninjaE3,spvak2k3)
      acd20(21)=abb20(16)
      acd20(22)=abb20(21)
      acd20(23)=acd20(10)*acd20(9)
      acd20(24)=acd20(7)*acd20(8)
      acd20(25)=acd20(3)*acd20(4)
      acd20(23)=acd20(25)+acd20(23)+acd20(24)
      acd20(24)=acd20(5)*acd20(23)
      acd20(25)=acd20(10)*acd20(11)
      acd20(26)=acd20(7)*acd20(6)
      acd20(27)=acd20(3)*acd20(1)
      acd20(25)=acd20(27)+acd20(25)+acd20(26)
      acd20(25)=acd20(2)*acd20(25)
      acd20(24)=acd20(25)+acd20(24)
      acd20(23)=acd20(13)*acd20(23)
      acd20(25)=acd20(10)*acd20(19)
      acd20(26)=acd20(7)*acd20(18)
      acd20(27)=acd20(3)*acd20(12)
      acd20(25)=acd20(27)+acd20(26)+acd20(22)+acd20(25)
      acd20(25)=acd20(2)*acd20(25)
      acd20(26)=acd20(20)*acd20(21)
      acd20(27)=acd20(16)*acd20(17)
      acd20(28)=acd20(14)*acd20(15)
      acd20(23)=acd20(25)+acd20(28)+acd20(26)+2.0_ki*acd20(27)+acd20(23)
      brack(ninjaidxt0x0mu0)=acd20(23)
      brack(ninjaidxt0x1mu0)=acd20(24)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d20h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd20h5
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
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d20h5l132
