module     p0_dbaru_epnebbbarg_d77h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d77h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd77h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd77
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd77h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(42) :: acd77
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd77(1)=dotproduct(ninjaE3,spvak4k3)
      acd77(2)=dotproduct(ninjaE3,spvak1k2)
      acd77(3)=dotproduct(ninjaE3,spvak2l5)
      acd77(4)=abb77(36)
      acd77(5)=dotproduct(k2,ninjaE3)
      acd77(6)=abb77(40)
      acd77(7)=dotproduct(l6,ninjaE3)
      acd77(8)=abb77(20)
      acd77(9)=dotproduct(ninjaA,ninjaE3)
      acd77(10)=abb77(15)
      acd77(11)=abb77(13)
      acd77(12)=dotproduct(ninjaE3,spvak4l6)
      acd77(13)=abb77(24)
      acd77(14)=dotproduct(ninjaE3,spvak4k2)
      acd77(15)=abb77(26)
      acd77(16)=abb77(22)
      acd77(17)=abb77(35)
      acd77(18)=abb77(19)
      acd77(19)=abb77(23)
      acd77(20)=abb77(28)
      acd77(21)=abb77(21)
      acd77(22)=dotproduct(ninjaA,spvak4k3)
      acd77(23)=dotproduct(ninjaA,spvak1k2)
      acd77(24)=dotproduct(ninjaA,spvak2l5)
      acd77(25)=dotproduct(ninjaE3,spval6k2)
      acd77(26)=abb77(18)
      acd77(27)=abb77(33)
      acd77(28)=dotproduct(ninjaE3,spvak1l6)
      acd77(29)=abb77(45)
      acd77(30)=dotproduct(ninjaE3,spvak2k3)
      acd77(31)=abb77(25)
      acd77(32)=dotproduct(ninjaE3,spvak2l6)
      acd77(33)=abb77(41)
      acd77(34)=acd77(4)*acd77(3)
      acd77(35)=acd77(1)*acd77(2)*acd77(34)
      acd77(36)=2.0_ki*acd77(9)
      acd77(37)=acd77(7)+acd77(36)
      acd77(37)=acd77(17)*acd77(37)
      acd77(38)=acd77(28)*acd77(29)
      acd77(39)=acd77(25)*acd77(26)
      acd77(40)=acd77(23)*acd77(34)
      acd77(41)=acd77(5)*acd77(11)
      acd77(42)=acd77(4)*acd77(24)
      acd77(42)=acd77(27)+acd77(42)
      acd77(42)=acd77(2)*acd77(42)
      acd77(37)=acd77(42)+acd77(41)+acd77(40)+acd77(38)+acd77(39)+acd77(37)
      acd77(37)=acd77(1)*acd77(37)
      acd77(38)=acd77(14)*acd77(15)
      acd77(39)=acd77(12)*acd77(13)
      acd77(40)=acd77(10)*acd77(36)
      acd77(41)=acd77(7)*acd77(8)
      acd77(42)=acd77(5)*acd77(6)
      acd77(38)=acd77(42)+acd77(41)+acd77(40)+acd77(38)+acd77(39)
      acd77(38)=acd77(5)*acd77(38)
      acd77(39)=acd77(32)*acd77(33)
      acd77(40)=acd77(30)*acd77(31)
      acd77(34)=acd77(22)*acd77(34)
      acd77(41)=acd77(5)*acd77(16)
      acd77(34)=acd77(41)+acd77(34)+acd77(39)+acd77(40)
      acd77(34)=acd77(2)*acd77(34)
      acd77(39)=acd77(14)*acd77(21)
      acd77(40)=acd77(12)*acd77(20)
      acd77(39)=acd77(39)+acd77(40)
      acd77(36)=acd77(39)*acd77(36)
      acd77(39)=acd77(14)*acd77(19)
      acd77(40)=acd77(12)*acd77(18)
      acd77(39)=acd77(39)+acd77(40)
      acd77(39)=acd77(7)*acd77(39)
      acd77(34)=acd77(37)+acd77(34)+acd77(38)+acd77(36)+acd77(39)
      brack(ninjaidxt1mu0)=acd77(35)
      brack(ninjaidxt0mu0)=acd77(34)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d77h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd77h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6
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
end module     p0_dbaru_epnebbbarg_d77h3l131
