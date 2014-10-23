module     p0_dbaru_epnebbbarg_d303h6l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d303h6l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd303h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd303
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd303h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(39) :: acd303
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd303(1)=dotproduct(ninjaE3,spvak1k2)
      acd303(2)=dotproduct(ninjaE3,spval5l6)
      acd303(3)=dotproduct(ninjaE3,spvak7k2)
      acd303(4)=abb303(20)
      acd303(5)=dotproduct(ninjaE3,spvak4k2)
      acd303(6)=abb303(23)
      acd303(7)=dotproduct(k2,ninjaE3)
      acd303(8)=dotproduct(ninjaE3,spval5k2)
      acd303(9)=abb303(22)
      acd303(10)=abb303(19)
      acd303(11)=dotproduct(l5,ninjaE3)
      acd303(12)=abb303(17)
      acd303(13)=dotproduct(k7,ninjaE3)
      acd303(14)=abb303(34)
      acd303(15)=dotproduct(ninjaA,ninjaE3)
      acd303(16)=abb303(31)
      acd303(17)=abb303(15)
      acd303(18)=dotproduct(ninjaA,spvak1k2)
      acd303(19)=dotproduct(ninjaA,spval5l6)
      acd303(20)=dotproduct(ninjaA,spvak4k2)
      acd303(21)=dotproduct(ninjaA,spvak7k2)
      acd303(22)=abb303(10)
      acd303(23)=abb303(24)
      acd303(24)=abb303(11)
      acd303(25)=abb303(13)
      acd303(26)=abb303(18)
      acd303(27)=dotproduct(ninjaE3,spvak7l6)
      acd303(28)=abb303(12)
      acd303(29)=abb303(16)
      acd303(30)=acd303(4)*acd303(1)
      acd303(31)=acd303(6)*acd303(5)
      acd303(30)=acd303(30)+acd303(31)
      acd303(31)=acd303(2)*acd303(3)
      acd303(32)=acd303(31)*acd303(30)
      acd303(33)=acd303(19)*acd303(30)
      acd303(34)=acd303(10)*acd303(7)
      acd303(35)=acd303(12)*acd303(11)
      acd303(36)=2.0_ki*acd303(15)
      acd303(37)=acd303(17)*acd303(36)
      acd303(38)=acd303(23)*acd303(1)
      acd303(39)=acd303(26)*acd303(5)
      acd303(33)=acd303(39)+acd303(33)+acd303(38)+acd303(37)+acd303(35)+acd303(&
      &34)
      acd303(33)=acd303(3)*acd303(33)
      acd303(34)=acd303(9)*acd303(7)
      acd303(35)=acd303(14)*acd303(13)
      acd303(36)=acd303(16)*acd303(36)
      acd303(37)=acd303(28)*acd303(27)
      acd303(38)=acd303(29)*acd303(3)
      acd303(34)=acd303(38)+acd303(37)+acd303(36)+acd303(35)+acd303(34)
      acd303(34)=acd303(8)*acd303(34)
      acd303(30)=acd303(21)*acd303(30)
      acd303(35)=acd303(22)*acd303(1)
      acd303(36)=acd303(24)*acd303(5)
      acd303(30)=acd303(36)+acd303(35)+acd303(30)
      acd303(30)=acd303(2)*acd303(30)
      acd303(35)=acd303(18)*acd303(4)
      acd303(36)=acd303(20)*acd303(6)
      acd303(35)=acd303(25)+acd303(36)+acd303(35)
      acd303(31)=acd303(31)*acd303(35)
      acd303(30)=acd303(34)+acd303(31)+acd303(30)+acd303(33)
      brack(ninjaidxt1mu0)=acd303(32)
      brack(ninjaidxt0mu0)=acd303(30)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d303h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd303h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k5
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
end module     p0_dbaru_epnebbbarg_d303h6l131
