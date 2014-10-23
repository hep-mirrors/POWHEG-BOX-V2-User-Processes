module     p0_dbaru_epnebbbarg_d119h7l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d119h7l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd119h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd119
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd119h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(36) :: acd119
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd119(1)=dotproduct(k2,ninjaE3)
      acd119(2)=dotproduct(ninjaE3,spvak1k2)
      acd119(3)=abb119(12)
      acd119(4)=dotproduct(ninjaE3,spvak4k2)
      acd119(5)=abb119(15)
      acd119(6)=dotproduct(ninjaE3,spvak2l5)
      acd119(7)=abb119(16)
      acd119(8)=abb119(27)
      acd119(9)=dotproduct(k2,ninjaA)
      acd119(10)=dotproduct(ninjaA,spvak1k2)
      acd119(11)=dotproduct(ninjaA,spvak4k2)
      acd119(12)=abb119(20)
      acd119(13)=dotproduct(l6,ninjaE3)
      acd119(14)=abb119(33)
      acd119(15)=dotproduct(ninjaA,ninjaE3)
      acd119(16)=dotproduct(ninjaA,spvak2l5)
      acd119(17)=dotproduct(ninjaE3,spvak2l6)
      acd119(18)=abb119(10)
      acd119(19)=dotproduct(ninjaE3,spvak4l6)
      acd119(20)=abb119(11)
      acd119(21)=abb119(17)
      acd119(22)=dotproduct(ninjaE3,spvak1l6)
      acd119(23)=abb119(13)
      acd119(24)=abb119(19)
      acd119(25)=acd119(3)*acd119(2)
      acd119(26)=acd119(5)*acd119(4)
      acd119(25)=acd119(25)+acd119(26)
      acd119(26)=acd119(1)*acd119(25)
      acd119(27)=acd119(7)*acd119(6)
      acd119(28)=acd119(2)*acd119(27)
      acd119(29)=acd119(8)*acd119(6)
      acd119(30)=acd119(4)*acd119(29)
      acd119(26)=acd119(30)+acd119(28)+acd119(26)
      acd119(25)=acd119(9)*acd119(25)
      acd119(28)=acd119(3)*acd119(1)
      acd119(27)=acd119(28)+acd119(27)
      acd119(27)=acd119(10)*acd119(27)
      acd119(28)=acd119(5)*acd119(1)
      acd119(28)=acd119(28)+acd119(29)
      acd119(28)=acd119(11)*acd119(28)
      acd119(29)=acd119(7)*acd119(2)
      acd119(30)=acd119(8)*acd119(4)
      acd119(29)=acd119(29)+acd119(30)
      acd119(29)=acd119(16)*acd119(29)
      acd119(30)=-2.0_ki*acd119(15)-acd119(13)
      acd119(30)=acd119(14)*acd119(30)
      acd119(31)=acd119(12)*acd119(1)
      acd119(32)=acd119(18)*acd119(17)
      acd119(33)=acd119(20)*acd119(19)
      acd119(34)=acd119(21)*acd119(2)
      acd119(35)=acd119(23)*acd119(22)
      acd119(36)=acd119(24)*acd119(4)
      acd119(25)=acd119(36)+acd119(35)+acd119(34)+acd119(33)+acd119(32)+acd119(&
      &31)+acd119(29)+acd119(28)+acd119(25)+acd119(27)+acd119(30)
      brack(ninjaidxt1mu0)=acd119(26)
      brack(ninjaidxt0mu0)=acd119(25)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d119h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd119h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = - a(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d119h7l131
