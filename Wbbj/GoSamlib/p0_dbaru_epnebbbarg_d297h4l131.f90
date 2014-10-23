module     p0_dbaru_epnebbbarg_d297h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d297h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd297h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd297
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd297h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(40) :: acd297
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd297(1)=dotproduct(ninjaE3,spval6k2)
      acd297(2)=dotproduct(ninjaE3,spvak7k2)
      acd297(3)=dotproduct(ninjaE3,spvak1k2)
      acd297(4)=dotproduct(ninjaE3,spvak4k3)
      acd297(5)=abb297(22)
      acd297(6)=dotproduct(k2,ninjaE3)
      acd297(7)=abb297(13)
      acd297(8)=dotproduct(ninjaE3,spvak4k2)
      acd297(9)=abb297(48)
      acd297(10)=abb297(41)
      acd297(11)=dotproduct(l6,ninjaE3)
      acd297(12)=abb297(11)
      acd297(13)=abb297(46)
      acd297(14)=abb297(52)
      acd297(15)=abb297(37)
      acd297(16)=dotproduct(k7,ninjaE3)
      acd297(17)=dotproduct(ninjaA,ninjaE3)
      acd297(18)=abb297(14)
      acd297(19)=abb297(38)
      acd297(20)=abb297(43)
      acd297(21)=dotproduct(ninjaA,spval6k2)
      acd297(22)=dotproduct(ninjaA,spvak7k2)
      acd297(23)=dotproduct(ninjaA,spvak1k2)
      acd297(24)=dotproduct(ninjaA,spvak4k3)
      acd297(25)=abb297(15)
      acd297(26)=abb297(32)
      acd297(27)=abb297(25)
      acd297(28)=dotproduct(ninjaE3,spval6k3)
      acd297(29)=abb297(12)
      acd297(30)=dotproduct(ninjaE3,spval6k7)
      acd297(31)=abb297(58)
      acd297(32)=acd297(3)*acd297(4)
      acd297(33)=acd297(2)*acd297(1)*acd297(5)*acd297(32)
      acd297(34)=acd297(11)+acd297(16)
      acd297(35)=acd297(12)*acd297(34)
      acd297(36)=2.0_ki*acd297(17)
      acd297(37)=acd297(18)*acd297(36)
      acd297(38)=acd297(6)*acd297(7)
      acd297(39)=acd297(5)*acd297(23)
      acd297(39)=acd297(26)+acd297(39)
      acd297(39)=acd297(4)*acd297(39)
      acd297(40)=acd297(5)*acd297(24)
      acd297(40)=acd297(25)+acd297(40)
      acd297(40)=acd297(3)*acd297(40)
      acd297(35)=acd297(40)+acd297(39)+acd297(38)+acd297(37)+acd297(35)
      acd297(35)=acd297(1)*acd297(35)
      acd297(37)=acd297(30)*acd297(31)
      acd297(38)=acd297(28)*acd297(29)
      acd297(39)=acd297(11)*acd297(14)
      acd297(40)=acd297(21)*acd297(4)*acd297(5)
      acd297(37)=acd297(40)+acd297(39)+acd297(37)+acd297(38)
      acd297(37)=acd297(3)*acd297(37)
      acd297(38)=acd297(15)*acd297(34)
      acd297(39)=acd297(20)*acd297(36)
      acd297(40)=acd297(6)*acd297(10)
      acd297(38)=acd297(40)+acd297(39)+acd297(38)
      acd297(38)=acd297(8)*acd297(38)
      acd297(35)=acd297(35)+acd297(38)+acd297(37)
      acd297(35)=acd297(2)*acd297(35)
      acd297(34)=-acd297(13)*acd297(34)
      acd297(36)=acd297(19)*acd297(36)
      acd297(37)=acd297(6)*acd297(9)
      acd297(34)=acd297(37)+acd297(36)+acd297(34)
      acd297(34)=acd297(8)*acd297(34)
      acd297(36)=acd297(5)*acd297(22)
      acd297(36)=acd297(27)+acd297(36)
      acd297(32)=acd297(36)*acd297(32)
      acd297(32)=acd297(34)+acd297(32)
      acd297(32)=acd297(1)*acd297(32)
      acd297(32)=acd297(32)+acd297(35)
      brack(ninjaidxt1mu0)=acd297(33)
      brack(ninjaidxt0mu0)=acd297(32)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d297h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd297h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6
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
end module     p0_dbaru_epnebbbarg_d297h4l131
