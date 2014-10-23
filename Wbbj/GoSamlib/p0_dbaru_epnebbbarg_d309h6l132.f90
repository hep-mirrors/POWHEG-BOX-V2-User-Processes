module     p0_dbaru_epnebbbarg_d309h6l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d309h6l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt0x0mu0 = 0
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd309h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd309
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd309h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(28) :: acd309
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd309(1)=dotproduct(k2,ninjaE3)
      acd309(2)=dotproduct(ninjaE3,spvak7k2)
      acd309(3)=abb309(58)
      acd309(4)=dotproduct(k3,ninjaE3)
      acd309(5)=dotproduct(k4,ninjaE3)
      acd309(6)=dotproduct(ninjaE3,spvak4k2)
      acd309(7)=abb309(21)
      acd309(8)=dotproduct(ninjaE3,spvak4k3)
      acd309(9)=abb309(35)
      acd309(10)=dotproduct(ninjaE3,spvak4l6)
      acd309(11)=abb309(83)
      acd309(12)=abb309(50)
      acd309(13)=abb309(11)
      acd309(14)=abb309(81)
      acd309(15)=abb309(69)
      acd309(16)=dotproduct(ninjaE3,spvak2l6)
      acd309(17)=abb309(90)
      acd309(18)=dotproduct(ninjaE3,spvak3k2)
      acd309(19)=abb309(28)
      acd309(20)=abb309(72)
      acd309(21)=dotproduct(ninjaE3,spvak3l6)
      acd309(22)=acd309(4)+acd309(5)
      acd309(23)=acd309(12)*acd309(22)
      acd309(24)=-acd309(17)*acd309(16)
      acd309(25)=acd309(10)*acd309(15)
      acd309(26)=acd309(8)*acd309(14)
      acd309(27)=acd309(1)*acd309(7)
      acd309(28)=acd309(6)*acd309(13)
      acd309(23)=acd309(28)+acd309(27)+acd309(26)+acd309(25)+acd309(24)+acd309(&
      &23)
      acd309(23)=acd309(6)*acd309(23)
      acd309(24)=acd309(18)*acd309(19)
      acd309(25)=acd309(17)*acd309(21)
      acd309(26)=acd309(10)*acd309(20)
      acd309(24)=acd309(26)+acd309(24)+acd309(25)
      acd309(24)=acd309(8)*acd309(24)
      acd309(25)=acd309(10)*acd309(11)
      acd309(26)=acd309(1)-acd309(22)
      acd309(26)=acd309(3)*acd309(26)
      acd309(27)=acd309(8)*acd309(9)
      acd309(26)=acd309(27)+acd309(25)+acd309(26)
      acd309(26)=acd309(1)*acd309(26)
      acd309(22)=-acd309(22)*acd309(25)
      acd309(22)=acd309(23)+acd309(26)+acd309(22)+acd309(24)
      acd309(22)=acd309(2)*acd309(22)
      brack(ninjaidxt0x0mu0)=acd309(22)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d309h6_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd309h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6-k5
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d309h6l132
