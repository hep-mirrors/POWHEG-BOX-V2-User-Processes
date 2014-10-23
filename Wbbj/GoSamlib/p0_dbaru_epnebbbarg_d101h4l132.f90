module     p0_dbaru_epnebbbarg_d101h4l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d101h4l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd101h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd101
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
      use p0_dbaru_epnebbbarg_abbrevd101h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(43) :: acd101
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd101(1)=dotproduct(k2,ninjaE3)
      acd101(2)=dotproduct(ninjaE3,spvak1k2)
      acd101(3)=abb101(30)
      acd101(4)=dotproduct(ninjaE3,spval6k2)
      acd101(5)=abb101(44)
      acd101(6)=dotproduct(ninjaE3,spvak7k2)
      acd101(7)=abb101(55)
      acd101(8)=dotproduct(k3,ninjaE3)
      acd101(9)=abb101(41)
      acd101(10)=dotproduct(k4,ninjaE3)
      acd101(11)=dotproduct(l6,ninjaE3)
      acd101(12)=abb101(12)
      acd101(13)=dotproduct(k7,ninjaE3)
      acd101(14)=abb101(11)
      acd101(15)=dotproduct(ninjaE3,spvak4k2)
      acd101(16)=abb101(13)
      acd101(17)=abb101(14)
      acd101(18)=dotproduct(ninjaE3,spval5k2)
      acd101(19)=abb101(17)
      acd101(20)=dotproduct(ninjaE3,spvak4k3)
      acd101(21)=abb101(20)
      acd101(22)=abb101(19)
      acd101(23)=abb101(63)
      acd101(24)=abb101(32)
      acd101(25)=dotproduct(ninjaE3,spvak1k3)
      acd101(26)=abb101(31)
      acd101(27)=dotproduct(ninjaE3,spval5k3)
      acd101(28)=abb101(60)
      acd101(29)=abb101(24)
      acd101(30)=abb101(62)
      acd101(31)=abb101(25)
      acd101(32)=abb101(29)
      acd101(33)=abb101(59)
      acd101(34)=abb101(34)
      acd101(35)=acd101(8)+acd101(10)
      acd101(36)=-acd101(9)*acd101(35)
      acd101(37)=-acd101(13)-acd101(11)
      acd101(37)=acd101(12)*acd101(37)
      acd101(38)=acd101(20)*acd101(21)
      acd101(39)=acd101(15)*acd101(16)
      acd101(40)=acd101(1)*acd101(3)
      acd101(41)=acd101(18)*acd101(19)
      acd101(42)=acd101(6)*acd101(17)
      acd101(43)=acd101(4)*acd101(14)
      acd101(36)=acd101(43)+acd101(42)+acd101(41)+acd101(40)+acd101(39)+acd101(&
      &37)+acd101(38)+acd101(36)
      acd101(36)=acd101(2)*acd101(36)
      acd101(35)=acd101(35)-acd101(1)
      acd101(37)=-acd101(7)*acd101(35)
      acd101(38)=acd101(27)*acd101(33)
      acd101(39)=acd101(25)*acd101(32)
      acd101(40)=acd101(20)*acd101(31)
      acd101(41)=acd101(15)*acd101(29)
      acd101(42)=acd101(18)*acd101(30)
      acd101(37)=acd101(42)+acd101(41)+acd101(40)+acd101(38)+acd101(39)+acd101(&
      &37)
      acd101(37)=acd101(6)*acd101(37)
      acd101(35)=acd101(5)*acd101(35)
      acd101(38)=acd101(27)*acd101(28)
      acd101(39)=acd101(25)*acd101(26)
      acd101(40)=acd101(20)*acd101(24)
      acd101(41)=acd101(15)*acd101(22)
      acd101(42)=acd101(18)*acd101(23)
      acd101(35)=acd101(42)+acd101(41)+acd101(40)+acd101(38)+acd101(39)+acd101(&
      &35)
      acd101(35)=acd101(4)*acd101(35)
      acd101(38)=acd101(18)*acd101(25)*acd101(34)
      acd101(35)=acd101(36)+acd101(35)+acd101(38)+acd101(37)
      brack(ninjaidxt0x0mu0)=acd101(35)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d101h4_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd101h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
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
end module     p0_dbaru_epnebbbarg_d101h4l132
