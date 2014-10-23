module     p0_dbaru_epnebbbarg_d110h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d110h3l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1mu0 = 0
   integer, parameter :: ninjaidxt0mu0 = 1
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd110h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd110
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd110h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(40) :: acd110
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd110(1)=dotproduct(k7,ninjaE3)
      acd110(2)=dotproduct(ninjaE3,spvak2l6)
      acd110(3)=abb110(13)
      acd110(4)=dotproduct(ninjaE3,spvak2l5)
      acd110(5)=dotproduct(ninjaE3,spvak2k7)
      acd110(6)=abb110(14)
      acd110(7)=dotproduct(ninjaE3,spvak7l5)
      acd110(8)=abb110(25)
      acd110(9)=dotproduct(ninjaE3,spvak7l6)
      acd110(10)=abb110(30)
      acd110(11)=dotproduct(l6,ninjaE3)
      acd110(12)=abb110(18)
      acd110(13)=dotproduct(k7,ninjaA)
      acd110(14)=dotproduct(ninjaA,spvak2l6)
      acd110(15)=abb110(28)
      acd110(16)=dotproduct(ninjaA,ninjaE3)
      acd110(17)=abb110(20)
      acd110(18)=dotproduct(ninjaA,spvak2l5)
      acd110(19)=dotproduct(ninjaA,spvak2k7)
      acd110(20)=dotproduct(ninjaA,spvak7l5)
      acd110(21)=dotproduct(ninjaA,spvak7l6)
      acd110(22)=abb110(12)
      acd110(23)=abb110(16)
      acd110(24)=dotproduct(ninjaE3,spvak1l6)
      acd110(25)=abb110(15)
      acd110(26)=dotproduct(ninjaE3,spval6k7)
      acd110(27)=abb110(32)
      acd110(28)=dotproduct(ninjaE3,spvak4l6)
      acd110(29)=abb110(36)
      acd110(30)=acd110(4)*acd110(6)
      acd110(31)=acd110(7)*acd110(8)
      acd110(32)=acd110(9)*acd110(10)
      acd110(30)=acd110(32)+acd110(30)+acd110(31)
      acd110(31)=acd110(5)*acd110(30)
      acd110(32)=acd110(3)*acd110(2)
      acd110(33)=acd110(1)*acd110(32)
      acd110(31)=acd110(33)+acd110(31)
      acd110(33)=acd110(18)*acd110(6)
      acd110(34)=acd110(20)*acd110(8)
      acd110(35)=acd110(21)*acd110(10)
      acd110(33)=acd110(23)+acd110(35)+acd110(34)+acd110(33)
      acd110(33)=acd110(5)*acd110(33)
      acd110(30)=acd110(19)*acd110(30)
      acd110(34)=acd110(14)*acd110(3)
      acd110(34)=acd110(15)+acd110(34)
      acd110(34)=acd110(1)*acd110(34)
      acd110(35)=acd110(12)*acd110(11)
      acd110(32)=acd110(13)*acd110(32)
      acd110(36)=acd110(17)*acd110(16)
      acd110(37)=acd110(22)*acd110(2)
      acd110(38)=acd110(25)*acd110(24)
      acd110(39)=acd110(27)*acd110(26)
      acd110(40)=acd110(29)*acd110(28)
      acd110(30)=acd110(40)+acd110(39)+acd110(38)+acd110(37)+2.0_ki*acd110(36)+&
      &acd110(32)+acd110(35)+acd110(30)+acd110(33)+acd110(34)
      brack(ninjaidxt1mu0)=acd110(31)
      brack(ninjaidxt0mu0)=acd110(30)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d110h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd110h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d110h3l131
