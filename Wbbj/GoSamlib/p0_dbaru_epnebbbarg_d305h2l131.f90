module     p0_dbaru_epnebbbarg_d305h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d305h2l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd305h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd305
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd305h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(41) :: acd305
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd305(1)=dotproduct(ninjaE3,spvak4k2)
      acd305(2)=dotproduct(ninjaE3,spvak2k7)
      acd305(3)=dotproduct(ninjaE3,spval5l6)
      acd305(4)=abb305(14)
      acd305(5)=dotproduct(ninjaE3,spvak1k2)
      acd305(6)=abb305(12)
      acd305(7)=dotproduct(k7,ninjaE3)
      acd305(8)=dotproduct(ninjaE3,spval5k7)
      acd305(9)=abb305(31)
      acd305(10)=dotproduct(ninjaE3,spval5k2)
      acd305(11)=abb305(29)
      acd305(12)=dotproduct(ninjaA,ninjaE3)
      acd305(13)=abb305(30)
      acd305(14)=abb305(33)
      acd305(15)=dotproduct(ninjaA,spvak4k2)
      acd305(16)=dotproduct(ninjaA,spvak1k2)
      acd305(17)=dotproduct(ninjaA,spvak2k7)
      acd305(18)=dotproduct(ninjaA,spval5l6)
      acd305(19)=abb305(9)
      acd305(20)=abb305(32)
      acd305(21)=dotproduct(ninjaE3,spvak1l6)
      acd305(22)=abb305(11)
      acd305(23)=abb305(13)
      acd305(24)=abb305(38)
      acd305(25)=dotproduct(ninjaE3,spvak4l6)
      acd305(26)=abb305(25)
      acd305(27)=dotproduct(ninjaE3,spvak4k7)
      acd305(28)=abb305(24)
      acd305(29)=dotproduct(ninjaE3,spvak1k7)
      acd305(30)=abb305(16)
      acd305(31)=acd305(4)*acd305(1)
      acd305(32)=acd305(6)*acd305(5)
      acd305(31)=acd305(31)+acd305(32)
      acd305(32)=acd305(3)*acd305(2)
      acd305(33)=acd305(32)*acd305(31)
      acd305(34)=-acd305(19)*acd305(1)
      acd305(35)=-acd305(23)*acd305(5)
      acd305(36)=acd305(9)*acd305(7)
      acd305(37)=2.0_ki*acd305(12)
      acd305(38)=acd305(13)*acd305(37)
      acd305(39)=acd305(22)*acd305(21)
      acd305(40)=acd305(24)*acd305(2)
      acd305(41)=acd305(26)*acd305(25)
      acd305(34)=acd305(41)+acd305(40)+acd305(39)+acd305(38)+acd305(36)+acd305(&
      &35)+acd305(34)
      acd305(34)=acd305(8)*acd305(34)
      acd305(35)=acd305(11)*acd305(7)
      acd305(36)=acd305(14)*acd305(37)
      acd305(37)=acd305(27)*acd305(19)
      acd305(38)=acd305(28)*acd305(2)
      acd305(39)=acd305(29)*acd305(23)
      acd305(35)=acd305(39)+acd305(38)+acd305(37)+acd305(36)+acd305(35)
      acd305(35)=acd305(10)*acd305(35)
      acd305(36)=acd305(18)*acd305(31)
      acd305(37)=acd305(20)*acd305(1)
      acd305(38)=acd305(30)*acd305(5)
      acd305(36)=acd305(38)+acd305(37)+acd305(36)
      acd305(36)=acd305(2)*acd305(36)
      acd305(37)=acd305(15)*acd305(4)
      acd305(38)=acd305(16)*acd305(6)
      acd305(37)=acd305(38)+acd305(37)
      acd305(32)=acd305(32)*acd305(37)
      acd305(31)=acd305(17)*acd305(3)*acd305(31)
      acd305(31)=acd305(31)+acd305(34)+acd305(35)+acd305(32)+acd305(36)
      brack(ninjaidxt1mu0)=acd305(33)
      brack(ninjaidxt0mu0)=acd305(31)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d305h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd305h2
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
end module     p0_dbaru_epnebbbarg_d305h2l131
