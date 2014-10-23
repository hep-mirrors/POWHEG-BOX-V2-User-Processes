module     p0_dbaru_epnebbbarg_d121h3l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d121h3l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd121h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd121
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
      use p0_dbaru_epnebbbarg_abbrevd121h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(44) :: acd121
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd121(1)=dotproduct(k2,ninjaE3)
      acd121(2)=abb121(16)
      acd121(3)=dotproduct(l6,ninjaE3)
      acd121(4)=abb121(30)
      acd121(5)=dotproduct(k7,ninjaE3)
      acd121(6)=dotproduct(ninjaE3,spvak2l6)
      acd121(7)=abb121(17)
      acd121(8)=dotproduct(ninjaE3,spvak2k7)
      acd121(9)=abb121(36)
      acd121(10)=dotproduct(ninjaE3,spvak1k7)
      acd121(11)=abb121(22)
      acd121(12)=dotproduct(ninjaE3,spvak1l5)
      acd121(13)=abb121(42)
      acd121(14)=dotproduct(ninjaE3,spvak4k7)
      acd121(15)=abb121(31)
      acd121(16)=dotproduct(ninjaE3,spvak1l6)
      acd121(17)=abb121(33)
      acd121(18)=dotproduct(ninjaE3,spvak4l6)
      acd121(19)=abb121(34)
      acd121(20)=dotproduct(ninjaE3,spvak4l5)
      acd121(21)=abb121(40)
      acd121(22)=dotproduct(ninjaE3,spvak1k2)
      acd121(23)=abb121(14)
      acd121(24)=abb121(15)
      acd121(25)=dotproduct(ninjaE3,spvak2l5)
      acd121(26)=abb121(19)
      acd121(27)=dotproduct(ninjaE3,spvak4k2)
      acd121(28)=abb121(25)
      acd121(29)=abb121(38)
      acd121(30)=abb121(35)
      acd121(31)=abb121(26)
      acd121(32)=abb121(27)
      acd121(33)=abb121(37)
      acd121(34)=abb121(21)
      acd121(35)=acd121(18)*acd121(19)
      acd121(36)=acd121(16)*acd121(17)
      acd121(37)=acd121(14)*acd121(15)
      acd121(38)=acd121(10)*acd121(11)
      acd121(39)=acd121(5)+acd121(3)
      acd121(39)=acd121(4)*acd121(39)
      acd121(40)=acd121(20)*acd121(21)
      acd121(41)=acd121(12)*acd121(13)
      acd121(42)=acd121(8)*acd121(9)
      acd121(43)=acd121(6)*acd121(7)
      acd121(44)=acd121(1)*acd121(2)
      acd121(35)=acd121(44)+acd121(43)+acd121(42)+acd121(41)+acd121(40)+acd121(&
      &39)+acd121(38)+acd121(37)+acd121(35)+acd121(36)
      acd121(35)=acd121(1)*acd121(35)
      acd121(36)=acd121(27)*acd121(31)
      acd121(37)=acd121(22)*acd121(24)
      acd121(38)=acd121(20)*acd121(33)
      acd121(39)=acd121(12)*acd121(32)
      acd121(36)=acd121(39)+acd121(38)+acd121(36)+acd121(37)
      acd121(36)=acd121(8)*acd121(36)
      acd121(37)=acd121(27)*acd121(28)
      acd121(38)=acd121(22)*acd121(23)
      acd121(39)=acd121(20)*acd121(30)
      acd121(40)=acd121(12)*acd121(29)
      acd121(37)=acd121(40)+acd121(39)+acd121(37)+acd121(38)
      acd121(37)=acd121(6)*acd121(37)
      acd121(38)=-acd121(27)*acd121(34)
      acd121(39)=-acd121(22)*acd121(26)
      acd121(38)=acd121(38)+acd121(39)
      acd121(38)=acd121(25)*acd121(38)
      acd121(35)=acd121(35)+acd121(37)+acd121(36)+acd121(38)
      brack(ninjaidxt0x0mu0)=acd121(35)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d121h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd121h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = - a0(0:3)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d121h3l132
