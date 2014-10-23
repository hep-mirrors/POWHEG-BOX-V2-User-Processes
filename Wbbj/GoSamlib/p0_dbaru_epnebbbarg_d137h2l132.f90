module     p0_dbaru_epnebbbarg_d137h2l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d137h2l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd137h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(7) :: acd137
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd137(1)=dotproduct(k2,ninjaE3)
      acd137(2)=dotproduct(ninjaE3,spvak2k7)
      acd137(3)=abb137(12)
      acd137(4)=dotproduct(ninjaE3,spvak7k2)
      acd137(5)=abb137(13)
      acd137(6)=acd137(3)*acd137(1)
      acd137(7)=acd137(5)*acd137(4)
      acd137(6)=acd137(6)+acd137(7)
      acd137(6)=acd137(2)*acd137(6)
      brack(ninjaidxt1x0mu0)=acd137(6)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd137h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(23) :: acd137
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd137(1)=dotproduct(k2,ninjaA1)
      acd137(2)=dotproduct(ninjaE3,spvak2k7)
      acd137(3)=abb137(12)
      acd137(4)=dotproduct(k2,ninjaE3)
      acd137(5)=dotproduct(ninjaA1,spvak2k7)
      acd137(6)=dotproduct(ninjaE3,spvak7k2)
      acd137(7)=abb137(13)
      acd137(8)=dotproduct(ninjaA1,spvak7k2)
      acd137(9)=dotproduct(k2,ninjaA0)
      acd137(10)=dotproduct(ninjaA0,spvak2k7)
      acd137(11)=abb137(32)
      acd137(12)=dotproduct(k7,ninjaE3)
      acd137(13)=abb137(31)
      acd137(14)=dotproduct(ninjaA0,ninjaE3)
      acd137(15)=abb137(22)
      acd137(16)=dotproduct(ninjaA0,spvak7k2)
      acd137(17)=abb137(15)
      acd137(18)=acd137(7)*acd137(6)
      acd137(19)=acd137(3)*acd137(4)
      acd137(18)=acd137(18)+acd137(19)
      acd137(19)=acd137(5)*acd137(18)
      acd137(20)=acd137(7)*acd137(8)
      acd137(21)=acd137(3)*acd137(1)
      acd137(20)=acd137(20)+acd137(21)
      acd137(20)=acd137(2)*acd137(20)
      acd137(19)=acd137(20)+acd137(19)
      acd137(18)=acd137(10)*acd137(18)
      acd137(20)=acd137(7)*acd137(16)
      acd137(21)=acd137(3)*acd137(9)
      acd137(20)=acd137(21)+acd137(17)+acd137(20)
      acd137(20)=acd137(2)*acd137(20)
      acd137(21)=acd137(14)*acd137(15)
      acd137(22)=acd137(12)*acd137(13)
      acd137(23)=acd137(4)*acd137(11)
      acd137(18)=acd137(20)+acd137(23)+2.0_ki*acd137(21)+acd137(22)+acd137(18)
      brack(ninjaidxt0x0mu0)=acd137(18)
      brack(ninjaidxt0x1mu0)=acd137(19)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d137h2_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd137h2
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
end module     p0_dbaru_epnebbbarg_d137h2l132
