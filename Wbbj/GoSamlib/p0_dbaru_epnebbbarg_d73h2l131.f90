module     p0_dbaru_epnebbbarg_d73h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d73h2l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd73h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd73
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd73h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(40) :: acd73
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd73(1)=dotproduct(ninjaE3,spvak1k2)
      acd73(2)=dotproduct(ninjaE3,spvak4k3)
      acd73(3)=dotproduct(ninjaE3,spvak2k7)
      acd73(4)=abb73(24)
      acd73(5)=dotproduct(ninjaE3,spvak2l5)
      acd73(6)=abb73(25)
      acd73(7)=dotproduct(k2,ninjaE3)
      acd73(8)=abb73(88)
      acd73(9)=dotproduct(ninjaA,ninjaE3)
      acd73(10)=abb73(15)
      acd73(11)=abb73(22)
      acd73(12)=abb73(18)
      acd73(13)=dotproduct(ninjaE3,spvak4k2)
      acd73(14)=abb73(20)
      acd73(15)=dotproduct(ninjaE3,spvak4l6)
      acd73(16)=abb73(44)
      acd73(17)=dotproduct(l6,ninjaE3)
      acd73(18)=abb73(29)
      acd73(19)=abb73(19)
      acd73(20)=abb73(31)
      acd73(21)=dotproduct(ninjaA,spvak1k2)
      acd73(22)=dotproduct(ninjaA,spvak4k3)
      acd73(23)=dotproduct(ninjaA,spvak2k7)
      acd73(24)=dotproduct(ninjaA,spvak2l5)
      acd73(25)=dotproduct(ninjaE3,spvak2k3)
      acd73(26)=abb73(12)
      acd73(27)=abb73(23)
      acd73(28)=dotproduct(ninjaE3,spvak1l6)
      acd73(29)=abb73(17)
      acd73(30)=dotproduct(ninjaE3,spvak2l6)
      acd73(31)=abb73(21)
      acd73(32)=acd73(6)*acd73(5)
      acd73(33)=acd73(4)*acd73(3)
      acd73(32)=acd73(32)+acd73(33)
      acd73(33)=acd73(2)*acd73(1)*acd73(32)
      acd73(34)=acd73(21)*acd73(32)
      acd73(35)=acd73(6)*acd73(24)
      acd73(36)=acd73(4)*acd73(23)
      acd73(35)=acd73(36)+acd73(27)+acd73(35)
      acd73(35)=acd73(1)*acd73(35)
      acd73(36)=2.0_ki*acd73(9)
      acd73(37)=-acd73(36)+acd73(17)
      acd73(37)=acd73(18)*acd73(37)
      acd73(38)=acd73(30)*acd73(31)
      acd73(39)=acd73(28)*acd73(29)
      acd73(40)=acd73(7)*acd73(12)
      acd73(34)=acd73(35)+acd73(40)+acd73(38)+acd73(39)+acd73(37)+acd73(34)
      acd73(34)=acd73(2)*acd73(34)
      acd73(35)=acd73(15)*acd73(16)
      acd73(37)=acd73(13)*acd73(14)
      acd73(38)=acd73(10)*acd73(36)
      acd73(39)=acd73(7)*acd73(8)
      acd73(35)=acd73(39)+acd73(38)+acd73(35)+acd73(37)
      acd73(35)=acd73(7)*acd73(35)
      acd73(32)=acd73(22)*acd73(32)
      acd73(37)=acd73(25)*acd73(26)
      acd73(38)=acd73(7)*acd73(11)
      acd73(32)=acd73(38)+acd73(37)+acd73(32)
      acd73(32)=acd73(1)*acd73(32)
      acd73(37)=acd73(15)*acd73(20)
      acd73(38)=acd73(13)*acd73(19)
      acd73(37)=acd73(37)+acd73(38)
      acd73(36)=acd73(37)*acd73(36)
      acd73(32)=acd73(34)+acd73(32)+acd73(36)+acd73(35)
      brack(ninjaidxt1mu0)=acd73(33)
      brack(ninjaidxt0mu0)=acd73(32)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d73h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd73h2
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d73h2l131
