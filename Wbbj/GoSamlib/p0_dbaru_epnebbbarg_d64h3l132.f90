module     p0_dbaru_epnebbbarg_d64h3l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d64h3l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd64h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd64
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd64(1)=dotproduct(k2,ninjaE3)
      acd64(2)=abb64(14)
      acd64(3)=dotproduct(l5,ninjaE3)
      acd64(4)=abb64(28)
      acd64(5)=dotproduct(l6,ninjaE3)
      acd64(6)=abb64(31)
      acd64(7)=dotproduct(ninjaE3,spvak2l5)
      acd64(8)=abb64(13)
      acd64(9)=dotproduct(ninjaE3,spval6l5)
      acd64(10)=abb64(16)
      acd64(11)=dotproduct(ninjaE3,spvak2l6)
      acd64(12)=abb64(20)
      acd64(13)=dotproduct(ninjaE3,spval5l6)
      acd64(14)=abb64(29)
      acd64(15)=acd64(2)*acd64(1)
      acd64(16)=acd64(4)*acd64(3)
      acd64(17)=acd64(6)*acd64(5)
      acd64(18)=acd64(8)*acd64(7)
      acd64(19)=acd64(10)*acd64(9)
      acd64(20)=acd64(12)*acd64(11)
      acd64(21)=acd64(14)*acd64(13)
      acd64(15)=acd64(21)+acd64(20)+acd64(19)+acd64(18)+acd64(17)+acd64(15)+acd&
      &64(16)
      brack(ninjaidxt1x0mu0)=acd64(15)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd64h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(30) :: acd64
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd64(1)=dotproduct(k2,ninjaA1)
      acd64(2)=abb64(14)
      acd64(3)=dotproduct(l5,ninjaA1)
      acd64(4)=abb64(28)
      acd64(5)=dotproduct(l6,ninjaA1)
      acd64(6)=abb64(31)
      acd64(7)=dotproduct(ninjaA1,spvak2l5)
      acd64(8)=abb64(13)
      acd64(9)=dotproduct(ninjaA1,spval6l5)
      acd64(10)=abb64(16)
      acd64(11)=dotproduct(ninjaA1,spvak2l6)
      acd64(12)=abb64(20)
      acd64(13)=dotproduct(ninjaA1,spval5l6)
      acd64(14)=abb64(29)
      acd64(15)=dotproduct(k2,ninjaA0)
      acd64(16)=dotproduct(l5,ninjaA0)
      acd64(17)=dotproduct(l6,ninjaA0)
      acd64(18)=dotproduct(ninjaA0,spvak2l5)
      acd64(19)=dotproduct(ninjaA0,spval6l5)
      acd64(20)=dotproduct(ninjaA0,spvak2l6)
      acd64(21)=dotproduct(ninjaA0,spval5l6)
      acd64(22)=abb64(23)
      acd64(23)=acd64(1)*acd64(2)
      acd64(24)=acd64(3)*acd64(4)
      acd64(25)=acd64(5)*acd64(6)
      acd64(26)=acd64(7)*acd64(8)
      acd64(27)=acd64(9)*acd64(10)
      acd64(28)=acd64(11)*acd64(12)
      acd64(29)=acd64(13)*acd64(14)
      acd64(23)=acd64(29)+acd64(28)+acd64(27)+acd64(26)+acd64(25)+acd64(23)+acd&
      &64(24)
      acd64(24)=acd64(15)*acd64(2)
      acd64(25)=acd64(16)*acd64(4)
      acd64(26)=acd64(17)*acd64(6)
      acd64(27)=acd64(18)*acd64(8)
      acd64(28)=acd64(19)*acd64(10)
      acd64(29)=acd64(20)*acd64(12)
      acd64(30)=acd64(21)*acd64(14)
      acd64(24)=acd64(22)+acd64(30)+acd64(29)+acd64(28)+acd64(27)+acd64(26)+acd&
      &64(24)+acd64(25)
      brack(ninjaidxt0x0mu0)=acd64(24)
      brack(ninjaidxt0x1mu0)=acd64(23)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d64h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd64h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6+k5
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d64h3l132
