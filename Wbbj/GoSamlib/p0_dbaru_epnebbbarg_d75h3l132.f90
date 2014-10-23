module     p0_dbaru_epnebbbarg_d75h3l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d75h3l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt0x0mu0 = 0
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd75
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(29) :: acd75
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd75(1)=dotproduct(k2,ninjaE3)
      acd75(2)=dotproduct(ninjaE3,spvak4k3)
      acd75(3)=abb75(59)
      acd75(4)=dotproduct(l6,ninjaE3)
      acd75(5)=abb75(56)
      acd75(6)=dotproduct(k7,ninjaE3)
      acd75(7)=dotproduct(ninjaE3,spvak2k7)
      acd75(8)=abb75(70)
      acd75(9)=dotproduct(ninjaE3,spvak2l6)
      acd75(10)=abb75(49)
      acd75(11)=dotproduct(ninjaE3,spvak1k7)
      acd75(12)=abb75(40)
      acd75(13)=dotproduct(ninjaE3,spvak1l5)
      acd75(14)=abb75(54)
      acd75(15)=dotproduct(ninjaE3,spvak1l6)
      acd75(16)=abb75(69)
      acd75(17)=dotproduct(ninjaE3,spvak1k2)
      acd75(18)=abb75(11)
      acd75(19)=abb75(14)
      acd75(20)=dotproduct(ninjaE3,spvak2l5)
      acd75(21)=abb75(51)
      acd75(22)=abb75(74)
      acd75(23)=abb75(64)
      acd75(24)=-acd75(6)-acd75(4)
      acd75(24)=acd75(5)*acd75(24)
      acd75(25)=acd75(8)*acd75(7)
      acd75(26)=acd75(10)*acd75(9)
      acd75(27)=acd75(12)*acd75(11)
      acd75(28)=-acd75(14)*acd75(13)
      acd75(29)=acd75(16)*acd75(15)
      acd75(24)=acd75(29)+acd75(28)+acd75(27)+acd75(26)+acd75(25)+acd75(24)
      acd75(24)=acd75(24)*acd75(1)
      acd75(25)=acd75(18)*acd75(7)
      acd75(26)=acd75(19)*acd75(9)
      acd75(27)=acd75(21)*acd75(20)
      acd75(25)=acd75(27)+acd75(26)+acd75(25)
      acd75(25)=acd75(25)*acd75(17)
      acd75(26)=-acd75(22)*acd75(7)
      acd75(27)=acd75(23)*acd75(9)
      acd75(26)=acd75(27)+acd75(26)
      acd75(26)=acd75(26)*acd75(13)
      acd75(27)=acd75(3)*acd75(1)**2
      acd75(24)=acd75(27)+acd75(24)+acd75(25)+acd75(26)
      acd75(24)=acd75(2)*acd75(24)
      brack(ninjaidxt0x0mu0)=acd75(24)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d75h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd75h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = + a0(0:3)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d75h3l132
