module     p0_dbaru_epnebbbarg_d90h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d90h1l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd90h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd90
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd90h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(32) :: acd90
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd90(1)=dotproduct(k2,ninjaE3)
      acd90(2)=abb90(16)
      acd90(3)=dotproduct(ninjaE3,spval5k2)
      acd90(4)=abb90(14)
      acd90(5)=dotproduct(ninjaE3,spval6k2)
      acd90(6)=abb90(17)
      acd90(7)=dotproduct(ninjaE3,spval6l5)
      acd90(8)=abb90(20)
      acd90(9)=dotproduct(l5,ninjaE3)
      acd90(10)=abb90(23)
      acd90(11)=abb90(22)
      acd90(12)=dotproduct(ninjaE3,spvak2l5)
      acd90(13)=abb90(19)
      acd90(14)=dotproduct(k2,ninjaA)
      acd90(15)=dotproduct(ninjaA,spval5k2)
      acd90(16)=dotproduct(ninjaA,spval6k2)
      acd90(17)=dotproduct(ninjaA,spval6l5)
      acd90(18)=abb90(15)
      acd90(19)=dotproduct(l5,ninjaA)
      acd90(20)=abb90(13)
      acd90(21)=dotproduct(ninjaA,spvak2l5)
      acd90(22)=abb90(18)
      acd90(23)=abb90(21)
      acd90(24)=acd90(4)*acd90(3)
      acd90(25)=acd90(6)*acd90(5)
      acd90(26)=acd90(8)*acd90(7)
      acd90(24)=acd90(26)+acd90(24)+acd90(25)
      acd90(25)=acd90(1)*acd90(24)
      acd90(26)=acd90(10)*acd90(9)
      acd90(27)=acd90(12)*acd90(13)
      acd90(26)=acd90(26)+acd90(27)
      acd90(27)=acd90(5)*acd90(26)
      acd90(28)=acd90(11)*acd90(7)
      acd90(29)=acd90(3)*acd90(28)
      acd90(30)=acd90(2)*acd90(1)**2
      acd90(25)=acd90(30)+acd90(29)+acd90(25)+acd90(27)
      acd90(27)=acd90(2)*acd90(1)
      acd90(24)=2.0_ki*acd90(27)+acd90(24)
      acd90(24)=acd90(14)*acd90(24)
      acd90(27)=acd90(19)*acd90(10)
      acd90(29)=acd90(21)*acd90(13)
      acd90(27)=acd90(23)+acd90(29)+acd90(27)
      acd90(27)=acd90(5)*acd90(27)
      acd90(29)=acd90(6)*acd90(1)
      acd90(26)=acd90(29)+acd90(26)
      acd90(26)=acd90(16)*acd90(26)
      acd90(29)=acd90(4)*acd90(1)
      acd90(28)=acd90(29)+acd90(28)
      acd90(28)=acd90(15)*acd90(28)
      acd90(29)=acd90(8)*acd90(1)
      acd90(30)=acd90(11)*acd90(3)
      acd90(29)=acd90(29)+acd90(30)
      acd90(29)=acd90(17)*acd90(29)
      acd90(30)=acd90(18)*acd90(1)
      acd90(31)=acd90(20)*acd90(9)
      acd90(32)=acd90(22)*acd90(3)
      acd90(24)=acd90(32)+acd90(31)+acd90(30)+acd90(29)+acd90(28)+acd90(24)+acd&
      &90(26)+acd90(27)
      brack(ninjaidxt1mu0)=acd90(25)
      brack(ninjaidxt0mu0)=acd90(24)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d90h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd90h1
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
end module     p0_dbaru_epnebbbarg_d90h1l131
