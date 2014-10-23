module     p0_dbaru_epnebbbarg_d8h6l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d8h6l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd8h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd8
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd8h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(34) :: acd8
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd8(1)=dotproduct(k2,ninjaE3)
      acd8(2)=abb8(13)
      acd8(3)=dotproduct(ninjaE3,spval5l6)
      acd8(4)=abb8(10)
      acd8(5)=dotproduct(ninjaE3,spvak1k2)
      acd8(6)=abb8(12)
      acd8(7)=dotproduct(ninjaE3,spvak7k2)
      acd8(8)=abb8(14)
      acd8(9)=dotproduct(ninjaE3,spvak1k3)
      acd8(10)=abb8(15)
      acd8(11)=dotproduct(ninjaE3,spvak7l6)
      acd8(12)=abb8(22)
      acd8(13)=dotproduct(ninjaE3,spvak1l6)
      acd8(14)=abb8(23)
      acd8(15)=dotproduct(ninjaE3,spvak4k2)
      acd8(16)=abb8(25)
      acd8(17)=dotproduct(k2,ninjaA)
      acd8(18)=dotproduct(ninjaA,spval5l6)
      acd8(19)=dotproduct(ninjaA,spvak1k2)
      acd8(20)=dotproduct(ninjaA,spvak7k2)
      acd8(21)=dotproduct(ninjaA,spvak1k3)
      acd8(22)=dotproduct(ninjaA,spvak7l6)
      acd8(23)=dotproduct(ninjaA,spvak1l6)
      acd8(24)=dotproduct(ninjaA,spvak4k2)
      acd8(25)=abb8(11)
      acd8(26)=acd8(1)*acd8(2)
      acd8(27)=acd8(3)*acd8(4)
      acd8(28)=acd8(5)*acd8(6)
      acd8(29)=acd8(7)*acd8(8)
      acd8(30)=acd8(9)*acd8(10)
      acd8(31)=acd8(11)*acd8(12)
      acd8(32)=acd8(13)*acd8(14)
      acd8(33)=acd8(15)*acd8(16)
      acd8(26)=acd8(33)+acd8(32)+acd8(31)+acd8(30)+acd8(29)+acd8(28)+acd8(26)+a&
      &cd8(27)
      acd8(27)=acd8(17)*acd8(2)
      acd8(28)=acd8(18)*acd8(4)
      acd8(29)=acd8(19)*acd8(6)
      acd8(30)=acd8(20)*acd8(8)
      acd8(31)=acd8(21)*acd8(10)
      acd8(32)=acd8(22)*acd8(12)
      acd8(33)=acd8(23)*acd8(14)
      acd8(34)=acd8(24)*acd8(16)
      acd8(27)=acd8(25)+acd8(34)+acd8(33)+acd8(32)+acd8(31)+acd8(30)+acd8(29)+a&
      &cd8(27)+acd8(28)
      brack(ninjaidxt1mu0)=acd8(26)
      brack(ninjaidxt0mu0)=acd8(27)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d8h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd8h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d8h6l131
