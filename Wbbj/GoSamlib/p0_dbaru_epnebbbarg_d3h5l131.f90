module     p0_dbaru_epnebbbarg_d3h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d3h5l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd3h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd3
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd3h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(35) :: acd3
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd3(1)=dotproduct(k2,ninjaE3)
      acd3(2)=abb3(12)
      acd3(3)=dotproduct(k3,ninjaE3)
      acd3(4)=abb3(13)
      acd3(5)=dotproduct(k4,ninjaE3)
      acd3(6)=dotproduct(ninjaE3,spvak4k2)
      acd3(7)=abb3(8)
      acd3(8)=dotproduct(ninjaE3,spvak4k3)
      acd3(9)=abb3(9)
      acd3(10)=dotproduct(ninjaE3,spvak1k2)
      acd3(11)=abb3(10)
      acd3(12)=dotproduct(ninjaE3,spvak1k3)
      acd3(13)=abb3(11)
      acd3(14)=dotproduct(ninjaE3,spvak7k2)
      acd3(15)=abb3(15)
      acd3(16)=dotproduct(ninjaE3,spval6l5)
      acd3(17)=abb3(19)
      acd3(18)=dotproduct(k2,ninjaA)
      acd3(19)=dotproduct(k3,ninjaA)
      acd3(20)=dotproduct(k4,ninjaA)
      acd3(21)=dotproduct(ninjaA,spvak4k2)
      acd3(22)=dotproduct(ninjaA,spvak4k3)
      acd3(23)=dotproduct(ninjaA,spvak1k2)
      acd3(24)=dotproduct(ninjaA,spvak1k3)
      acd3(25)=dotproduct(ninjaA,spvak7k2)
      acd3(26)=dotproduct(ninjaA,spval6l5)
      acd3(27)=-acd3(5)-acd3(3)
      acd3(27)=acd3(4)*acd3(27)
      acd3(28)=acd3(1)*acd3(2)
      acd3(29)=acd3(6)*acd3(7)
      acd3(30)=acd3(8)*acd3(9)
      acd3(31)=acd3(10)*acd3(11)
      acd3(32)=acd3(12)*acd3(13)
      acd3(33)=acd3(14)*acd3(15)
      acd3(34)=acd3(16)*acd3(17)
      acd3(27)=acd3(34)+acd3(33)+acd3(32)+acd3(31)+acd3(30)+acd3(29)+acd3(28)+a&
      &cd3(27)
      acd3(28)=-acd3(20)-acd3(19)
      acd3(28)=acd3(4)*acd3(28)
      acd3(29)=acd3(18)*acd3(2)
      acd3(30)=acd3(21)*acd3(7)
      acd3(31)=acd3(22)*acd3(9)
      acd3(32)=acd3(23)*acd3(11)
      acd3(33)=acd3(24)*acd3(13)
      acd3(34)=acd3(25)*acd3(15)
      acd3(35)=acd3(26)*acd3(17)
      acd3(28)=acd3(35)+acd3(34)+acd3(33)+acd3(32)+acd3(31)+acd3(30)+acd3(29)+a&
      &cd3(28)
      brack(ninjaidxt1mu0)=acd3(27)
      brack(ninjaidxt0mu0)=acd3(28)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d3h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd3h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
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
end module     p0_dbaru_epnebbbarg_d3h5l131
