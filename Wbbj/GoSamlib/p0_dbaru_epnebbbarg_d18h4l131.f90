module     p0_dbaru_epnebbbarg_d18h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d18h4l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd18h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd18
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd18(1)=dotproduct(k2,ninjaE3)
      acd18(2)=dotproduct(ninjaE3,spval5k2)
      acd18(3)=abb18(14)
      acd18(4)=dotproduct(ninjaE3,spval6k2)
      acd18(5)=abb18(30)
      acd18(6)=abb18(13)
      acd18(7)=abb18(15)
      acd18(8)=abb18(20)
      acd18(9)=acd18(1)*acd18(3)
      acd18(10)=acd18(4)*acd18(7)
      acd18(11)=acd18(2)*acd18(6)
      acd18(9)=acd18(11)+acd18(9)+acd18(10)
      acd18(9)=acd18(2)*acd18(9)
      acd18(10)=acd18(1)*acd18(5)
      acd18(11)=acd18(4)*acd18(8)
      acd18(10)=acd18(10)+acd18(11)
      acd18(10)=acd18(4)*acd18(10)
      acd18(9)=acd18(10)+acd18(9)
      brack(ninjaidxt2mu0)=acd18(9)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd18h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(24) :: acd18
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd18(1)=dotproduct(k2,ninjaE3)
      acd18(2)=dotproduct(ninjaE4,spval5k2)
      acd18(3)=abb18(14)
      acd18(4)=dotproduct(ninjaE4,spval6k2)
      acd18(5)=abb18(30)
      acd18(6)=dotproduct(k2,ninjaE4)
      acd18(7)=dotproduct(ninjaE3,spval5k2)
      acd18(8)=dotproduct(ninjaE3,spval6k2)
      acd18(9)=abb18(13)
      acd18(10)=abb18(15)
      acd18(11)=abb18(20)
      acd18(12)=dotproduct(k2,ninjaA)
      acd18(13)=dotproduct(ninjaA,spval5k2)
      acd18(14)=dotproduct(ninjaA,spval6k2)
      acd18(15)=abb18(17)
      acd18(16)=abb18(24)
      acd18(17)=acd18(10)*acd18(2)
      acd18(18)=acd18(5)*acd18(6)
      acd18(19)=2.0_ki*acd18(11)
      acd18(20)=acd18(19)*acd18(4)
      acd18(17)=acd18(20)+acd18(17)+acd18(18)
      acd18(17)=acd18(17)*acd18(8)
      acd18(18)=acd18(10)*acd18(4)
      acd18(20)=2.0_ki*acd18(9)
      acd18(21)=acd18(20)*acd18(2)
      acd18(22)=acd18(3)*acd18(6)
      acd18(18)=acd18(22)+acd18(18)+acd18(21)
      acd18(18)=acd18(18)*acd18(7)
      acd18(21)=acd18(3)*acd18(1)
      acd18(22)=acd18(21)*acd18(2)
      acd18(23)=acd18(5)*acd18(1)
      acd18(24)=acd18(23)*acd18(4)
      acd18(17)=acd18(22)+acd18(24)+acd18(17)+acd18(18)
      acd18(18)=acd18(14)*acd18(19)
      acd18(19)=acd18(10)*acd18(13)
      acd18(22)=acd18(5)*acd18(12)
      acd18(18)=acd18(22)+acd18(19)+acd18(16)+acd18(18)
      acd18(18)=acd18(8)*acd18(18)
      acd18(19)=acd18(10)*acd18(14)
      acd18(19)=acd18(19)+acd18(15)
      acd18(22)=acd18(3)*acd18(12)
      acd18(20)=acd18(13)*acd18(20)
      acd18(20)=acd18(22)+acd18(20)+acd18(19)
      acd18(20)=acd18(7)*acd18(20)
      acd18(22)=acd18(14)*acd18(23)
      acd18(21)=acd18(13)*acd18(21)
      acd18(18)=acd18(20)+acd18(18)+acd18(22)+acd18(21)
      acd18(20)=ninjaP*acd18(17)
      acd18(21)=acd18(5)*acd18(14)
      acd18(22)=acd18(3)*acd18(13)
      acd18(21)=acd18(22)+acd18(21)
      acd18(21)=acd18(12)*acd18(21)
      acd18(22)=acd18(13)*acd18(9)
      acd18(19)=acd18(22)+acd18(19)
      acd18(19)=acd18(13)*acd18(19)
      acd18(22)=acd18(14)*acd18(11)
      acd18(22)=acd18(16)+acd18(22)
      acd18(22)=acd18(14)*acd18(22)
      acd18(19)=acd18(22)+acd18(20)+acd18(19)+acd18(21)
      brack(ninjaidxt1mu0)=acd18(18)
      brack(ninjaidxt0mu0)=acd18(19)
      brack(ninjaidxt0mu2)=acd18(17)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d18h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd18h4
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
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d18h4l131
