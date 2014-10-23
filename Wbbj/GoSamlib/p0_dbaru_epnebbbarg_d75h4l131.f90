module     p0_dbaru_epnebbbarg_d75h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d75h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd75h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd75
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(33) :: acd75
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd75(1)=dotproduct(ninjaE3,spval5k2)
      acd75(2)=dotproduct(ninjaE3,spval6k2)
      acd75(3)=dotproduct(ninjaE3,spvak4k3)
      acd75(4)=abb75(12)
      acd75(5)=dotproduct(ninjaE3,spvak7k2)
      acd75(6)=abb75(13)
      acd75(7)=dotproduct(k2,ninjaE3)
      acd75(8)=abb75(9)
      acd75(9)=abb75(30)
      acd75(10)=dotproduct(ninjaA,ninjaE3)
      acd75(11)=abb75(18)
      acd75(12)=abb75(31)
      acd75(13)=dotproduct(ninjaA,spval5k2)
      acd75(14)=dotproduct(ninjaA,spval6k2)
      acd75(15)=dotproduct(ninjaA,spvak4k3)
      acd75(16)=dotproduct(ninjaA,spvak7k2)
      acd75(17)=abb75(7)
      acd75(18)=abb75(10)
      acd75(19)=abb75(11)
      acd75(20)=dotproduct(ninjaE3,spvak4k2)
      acd75(21)=abb75(8)
      acd75(22)=dotproduct(ninjaE3,spval5k3)
      acd75(23)=abb75(34)
      acd75(24)=abb75(20)
      acd75(25)=abb75(33)
      acd75(26)=acd75(4)*acd75(2)
      acd75(27)=acd75(6)*acd75(5)
      acd75(26)=acd75(26)+acd75(27)
      acd75(27)=acd75(3)*acd75(1)
      acd75(28)=acd75(27)*acd75(26)
      acd75(29)=acd75(8)*acd75(7)
      acd75(30)=2.0_ki*acd75(10)
      acd75(31)=acd75(11)*acd75(30)
      acd75(32)=acd75(21)*acd75(20)
      acd75(33)=acd75(23)*acd75(22)
      acd75(29)=acd75(33)+acd75(32)+acd75(31)+acd75(29)
      acd75(29)=acd75(2)*acd75(29)
      acd75(31)=acd75(9)*acd75(7)
      acd75(30)=acd75(12)*acd75(30)
      acd75(32)=acd75(24)*acd75(20)
      acd75(33)=acd75(25)*acd75(22)
      acd75(30)=acd75(33)+acd75(32)+acd75(30)+acd75(31)
      acd75(30)=acd75(5)*acd75(30)
      acd75(31)=acd75(15)*acd75(26)
      acd75(32)=acd75(17)*acd75(2)
      acd75(33)=acd75(19)*acd75(5)
      acd75(31)=acd75(33)+acd75(32)+acd75(31)
      acd75(31)=acd75(1)*acd75(31)
      acd75(32)=acd75(14)*acd75(4)
      acd75(33)=acd75(16)*acd75(6)
      acd75(32)=acd75(18)+acd75(33)+acd75(32)
      acd75(27)=acd75(27)*acd75(32)
      acd75(26)=acd75(13)*acd75(3)*acd75(26)
      acd75(26)=acd75(26)+acd75(30)+acd75(29)+acd75(27)+acd75(31)
      brack(ninjaidxt1mu0)=acd75(28)
      brack(ninjaidxt0mu0)=acd75(26)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d75h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd75h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d75h4l131
