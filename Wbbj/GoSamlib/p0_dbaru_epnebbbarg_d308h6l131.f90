module     p0_dbaru_epnebbbarg_d308h6l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d308h6l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd308h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd308
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd308h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(28) :: acd308
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd308(1)=dotproduct(k2,ninjaE3)
      acd308(2)=dotproduct(ninjaE3,spvak7k2)
      acd308(3)=dotproduct(ninjaE3,spvak1k2)
      acd308(4)=abb308(11)
      acd308(5)=dotproduct(ninjaE3,spvak4k2)
      acd308(6)=abb308(15)
      acd308(7)=dotproduct(k2,ninjaA)
      acd308(8)=dotproduct(ninjaA,spvak7k2)
      acd308(9)=dotproduct(ninjaA,spvak1k2)
      acd308(10)=dotproduct(ninjaA,spvak4k2)
      acd308(11)=abb308(10)
      acd308(12)=dotproduct(l6,ninjaE3)
      acd308(13)=abb308(19)
      acd308(14)=dotproduct(k7,ninjaE3)
      acd308(15)=abb308(18)
      acd308(16)=dotproduct(ninjaA,ninjaE3)
      acd308(17)=abb308(13)
      acd308(18)=abb308(14)
      acd308(19)=abb308(16)
      acd308(20)=acd308(4)*acd308(3)
      acd308(21)=acd308(6)*acd308(5)
      acd308(20)=acd308(20)+acd308(21)
      acd308(21)=acd308(1)*acd308(2)
      acd308(22)=acd308(21)*acd308(20)
      acd308(23)=acd308(7)*acd308(20)
      acd308(24)=acd308(13)*acd308(12)
      acd308(25)=acd308(15)*acd308(14)
      acd308(26)=acd308(17)*acd308(16)
      acd308(27)=acd308(18)*acd308(3)
      acd308(28)=acd308(19)*acd308(5)
      acd308(23)=acd308(28)+acd308(27)+acd308(23)+2.0_ki*acd308(26)+acd308(25)+&
      &acd308(24)
      acd308(23)=acd308(2)*acd308(23)
      acd308(24)=acd308(9)*acd308(4)
      acd308(25)=acd308(10)*acd308(6)
      acd308(24)=acd308(11)+acd308(25)+acd308(24)
      acd308(21)=acd308(21)*acd308(24)
      acd308(20)=acd308(8)*acd308(1)*acd308(20)
      acd308(20)=acd308(20)+acd308(21)+acd308(23)
      brack(ninjaidxt1mu0)=acd308(22)
      brack(ninjaidxt0mu0)=acd308(20)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d308h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd308h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7
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
end module     p0_dbaru_epnebbbarg_d308h6l131