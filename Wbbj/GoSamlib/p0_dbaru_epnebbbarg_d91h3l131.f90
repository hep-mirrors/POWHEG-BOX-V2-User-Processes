module     p0_dbaru_epnebbbarg_d91h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d91h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd91h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd91
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd91h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(32) :: acd91
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd91(1)=dotproduct(k2,ninjaE3)
      acd91(2)=dotproduct(ninjaE3,spvak2l5)
      acd91(3)=abb91(14)
      acd91(4)=dotproduct(ninjaE3,spval6k2)
      acd91(5)=abb91(17)
      acd91(6)=dotproduct(ninjaE3,spval5k2)
      acd91(7)=abb91(18)
      acd91(8)=dotproduct(k2,ninjaA)
      acd91(9)=dotproduct(ninjaA,spvak2l5)
      acd91(10)=abb91(15)
      acd91(11)=dotproduct(l6,ninjaE3)
      acd91(12)=abb91(43)
      acd91(13)=dotproduct(ninjaA,ninjaE3)
      acd91(14)=abb91(16)
      acd91(15)=dotproduct(ninjaA,spval6k2)
      acd91(16)=dotproduct(ninjaA,spval5k2)
      acd91(17)=dotproduct(ninjaE3,spvak2l6)
      acd91(18)=abb91(13)
      acd91(19)=abb91(21)
      acd91(20)=abb91(24)
      acd91(21)=dotproduct(ninjaE3,spval5l6)
      acd91(22)=abb91(25)
      acd91(23)=acd91(3)*acd91(1)
      acd91(24)=acd91(5)*acd91(4)
      acd91(25)=acd91(7)*acd91(6)
      acd91(23)=acd91(25)+acd91(23)+acd91(24)
      acd91(24)=acd91(2)*acd91(23)
      acd91(25)=acd91(8)*acd91(3)
      acd91(26)=acd91(15)*acd91(5)
      acd91(27)=acd91(16)*acd91(7)
      acd91(25)=acd91(27)+acd91(26)+acd91(25)
      acd91(25)=acd91(2)*acd91(25)
      acd91(23)=acd91(9)*acd91(23)
      acd91(26)=acd91(10)*acd91(1)
      acd91(27)=acd91(12)*acd91(11)
      acd91(28)=acd91(14)*acd91(13)
      acd91(29)=acd91(18)*acd91(17)
      acd91(30)=acd91(19)*acd91(4)
      acd91(31)=acd91(20)*acd91(6)
      acd91(32)=acd91(22)*acd91(21)
      acd91(23)=acd91(32)+acd91(31)+acd91(30)+acd91(29)+2.0_ki*acd91(28)+acd91(&
      &27)+acd91(26)+acd91(23)+acd91(25)
      brack(ninjaidxt1mu0)=acd91(24)
      brack(ninjaidxt0mu0)=acd91(23)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d91h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd91h3
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
end module     p0_dbaru_epnebbbarg_d91h3l131
