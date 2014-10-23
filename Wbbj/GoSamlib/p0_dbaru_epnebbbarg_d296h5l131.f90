module     p0_dbaru_epnebbbarg_d296h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d296h5l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd296h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd296
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd296h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(35) :: acd296
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd296(1)=dotproduct(ninjaE3,spvak1k2)
      acd296(2)=dotproduct(ninjaE3,spvak7k2)
      acd296(3)=dotproduct(ninjaE3,spvak4k3)
      acd296(4)=dotproduct(ninjaE3,spval6l5)
      acd296(5)=abb296(12)
      acd296(6)=dotproduct(k2,ninjaE3)
      acd296(7)=dotproduct(ninjaE3,spval6k2)
      acd296(8)=abb296(21)
      acd296(9)=abb296(13)
      acd296(10)=dotproduct(l6,ninjaE3)
      acd296(11)=abb296(32)
      acd296(12)=dotproduct(k7,ninjaE3)
      acd296(13)=dotproduct(ninjaA,ninjaE3)
      acd296(14)=abb296(23)
      acd296(15)=abb296(33)
      acd296(16)=abb296(25)
      acd296(17)=dotproduct(ninjaA,spvak1k2)
      acd296(18)=dotproduct(ninjaA,spvak7k2)
      acd296(19)=dotproduct(ninjaA,spvak4k3)
      acd296(20)=dotproduct(ninjaA,spval6l5)
      acd296(21)=dotproduct(ninjaE3,spval6k3)
      acd296(22)=abb296(11)
      acd296(23)=abb296(22)
      acd296(24)=dotproduct(ninjaE3,spval6k7)
      acd296(25)=abb296(17)
      acd296(26)=acd296(4)*acd296(5)
      acd296(27)=acd296(26)*acd296(1)
      acd296(28)=acd296(3)*acd296(2)
      acd296(29)=-acd296(28)*acd296(27)
      acd296(30)=acd296(11)*acd296(10)
      acd296(31)=2.0_ki*acd296(13)
      acd296(32)=acd296(15)*acd296(31)
      acd296(33)=-acd296(17)*acd296(26)
      acd296(34)=-acd296(20)*acd296(5)*acd296(1)
      acd296(35)=acd296(25)*acd296(7)
      acd296(30)=acd296(35)+acd296(34)+acd296(33)+acd296(32)+acd296(30)
      acd296(28)=acd296(28)*acd296(30)
      acd296(26)=-acd296(19)*acd296(26)
      acd296(30)=acd296(22)*acd296(21)
      acd296(32)=acd296(23)*acd296(7)
      acd296(33)=acd296(24)*acd296(14)
      acd296(26)=acd296(33)+acd296(32)+acd296(30)+acd296(26)
      acd296(26)=acd296(26)*acd296(2)
      acd296(30)=-acd296(12)+acd296(6)
      acd296(30)=acd296(8)*acd296(30)
      acd296(32)=acd296(14)*acd296(31)
      acd296(30)=acd296(32)+acd296(30)
      acd296(30)=acd296(30)*acd296(7)
      acd296(26)=acd296(26)+acd296(30)
      acd296(26)=acd296(1)*acd296(26)
      acd296(30)=acd296(9)*acd296(6)
      acd296(31)=acd296(16)*acd296(31)
      acd296(30)=acd296(31)+acd296(30)
      acd296(30)=acd296(7)*acd296(30)
      acd296(27)=-acd296(18)*acd296(27)
      acd296(27)=acd296(27)+acd296(30)
      acd296(27)=acd296(3)*acd296(27)
      acd296(26)=acd296(28)+acd296(27)+acd296(26)
      brack(ninjaidxt1mu0)=acd296(29)
      brack(ninjaidxt0mu0)=acd296(26)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d296h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd296h5
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
end module     p0_dbaru_epnebbbarg_d296h5l131
