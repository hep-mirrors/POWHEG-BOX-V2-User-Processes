module     p0_dbaru_epnebbbarg_d314h5l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d314h5l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd314h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd314
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
      use p0_dbaru_epnebbbarg_abbrevd314h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(29) :: acd314
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd314(1)=dotproduct(k2,ninjaE3)
      acd314(2)=dotproduct(ninjaE3,spvak7k2)
      acd314(3)=dotproduct(ninjaE3,spvak4l5)
      acd314(4)=abb314(75)
      acd314(5)=dotproduct(ninjaE3,spval6l5)
      acd314(6)=abb314(137)
      acd314(7)=dotproduct(k3,ninjaE3)
      acd314(8)=dotproduct(ninjaE3,spvak4k2)
      acd314(9)=abb314(31)
      acd314(10)=dotproduct(k4,ninjaE3)
      acd314(11)=dotproduct(ninjaE3,spvak3k2)
      acd314(12)=dotproduct(ninjaE3,spvak4k3)
      acd314(13)=abb314(11)
      acd314(14)=abb314(46)
      acd314(15)=abb314(100)
      acd314(16)=abb314(103)
      acd314(17)=dotproduct(ninjaE3,spvak3l5)
      acd314(18)=abb314(62)
      acd314(19)=abb314(40)
      acd314(20)=abb314(12)
      acd314(21)=abb314(55)
      acd314(22)=dotproduct(ninjaE3,spvak2l5)
      acd314(23)=acd314(7)+acd314(10)
      acd314(24)=acd314(9)*acd314(23)
      acd314(25)=-acd314(18)*acd314(22)
      acd314(26)=acd314(12)*acd314(14)
      acd314(27)=acd314(5)*acd314(21)
      acd314(28)=acd314(3)*acd314(20)
      acd314(29)=acd314(8)*acd314(19)
      acd314(24)=acd314(29)+acd314(28)+acd314(27)+acd314(26)+acd314(25)+acd314(&
      &24)
      acd314(24)=acd314(8)*acd314(24)
      acd314(25)=acd314(11)*acd314(13)
      acd314(26)=acd314(18)*acd314(17)
      acd314(25)=acd314(25)+acd314(26)
      acd314(25)=acd314(12)*acd314(25)
      acd314(23)=acd314(23)-acd314(1)
      acd314(26)=acd314(6)*acd314(23)
      acd314(27)=acd314(12)*acd314(16)
      acd314(26)=acd314(26)+acd314(27)
      acd314(26)=acd314(5)*acd314(26)
      acd314(23)=-acd314(4)*acd314(23)
      acd314(27)=acd314(12)*acd314(15)
      acd314(23)=acd314(23)+acd314(27)
      acd314(23)=acd314(3)*acd314(23)
      acd314(23)=acd314(24)+acd314(23)+acd314(25)+acd314(26)
      acd314(23)=acd314(2)*acd314(23)
      brack(ninjaidxt0x0mu0)=acd314(23)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d314h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd314h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6+k5
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d314h5l132
