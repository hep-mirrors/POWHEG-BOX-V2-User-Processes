module     p0_dbaru_epnebbbarg_d221h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d221h4l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd221h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(30) :: acd221
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd221(1)=dotproduct(k2,ninjaE3)
      acd221(2)=abb221(19)
      acd221(3)=dotproduct(l6,ninjaE3)
      acd221(4)=abb221(14)
      acd221(5)=dotproduct(k7,ninjaE3)
      acd221(6)=abb221(30)
      acd221(7)=dotproduct(ninjaE3,spval6k2)
      acd221(8)=abb221(17)
      acd221(9)=dotproduct(ninjaE3,spval6k3)
      acd221(10)=abb221(18)
      acd221(11)=dotproduct(ninjaE3,spvak7k2)
      acd221(12)=abb221(20)
      acd221(13)=dotproduct(ninjaE3,spvak1k2)
      acd221(14)=abb221(21)
      acd221(15)=dotproduct(ninjaE3,spvak7l6)
      acd221(16)=abb221(24)
      acd221(17)=dotproduct(ninjaE3,spvak7k3)
      acd221(18)=abb221(26)
      acd221(19)=dotproduct(ninjaE3,spval6k7)
      acd221(20)=abb221(31)
      acd221(21)=acd221(2)*acd221(1)
      acd221(22)=acd221(4)*acd221(3)
      acd221(23)=acd221(6)*acd221(5)
      acd221(24)=acd221(8)*acd221(7)
      acd221(25)=acd221(10)*acd221(9)
      acd221(26)=acd221(12)*acd221(11)
      acd221(27)=acd221(14)*acd221(13)
      acd221(28)=acd221(16)*acd221(15)
      acd221(29)=acd221(18)*acd221(17)
      acd221(30)=acd221(20)*acd221(19)
      acd221(21)=acd221(30)+acd221(29)+acd221(28)+acd221(27)+acd221(26)+acd221(&
      &25)+acd221(24)+acd221(23)+acd221(21)+acd221(22)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd221(21)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d221h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd221h4
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
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d221h4l131
