module     p0_dbaru_epnebbbarg_d92h6l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d92h6l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd92h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd92
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
      use p0_dbaru_epnebbbarg_abbrevd92h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(63) :: acd92
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd92(1)=dotproduct(k1,ninjaE3)
      acd92(2)=dotproduct(k2,ninjaE3)
      acd92(3)=abb92(53)
      acd92(4)=dotproduct(ninjaE3,spvak7l6)
      acd92(5)=abb92(13)
      acd92(6)=dotproduct(ninjaE3,spvak7k2)
      acd92(7)=abb92(35)
      acd92(8)=abb92(64)
      acd92(9)=dotproduct(k3,ninjaE3)
      acd92(10)=abb92(71)
      acd92(11)=dotproduct(k4,ninjaE3)
      acd92(12)=dotproduct(l5,ninjaE3)
      acd92(13)=dotproduct(l6,ninjaE3)
      acd92(14)=abb92(40)
      acd92(15)=dotproduct(ninjaE3,spval5k2)
      acd92(16)=abb92(12)
      acd92(17)=abb92(73)
      acd92(18)=dotproduct(ninjaE3,spvak1l6)
      acd92(19)=abb92(33)
      acd92(20)=dotproduct(ninjaE3,spvak4k2)
      acd92(21)=abb92(24)
      acd92(22)=abb92(20)
      acd92(23)=dotproduct(ninjaE3,spvak1k2)
      acd92(24)=abb92(22)
      acd92(25)=dotproduct(ninjaE3,spvak4k3)
      acd92(26)=abb92(77)
      acd92(27)=dotproduct(ninjaE3,spval6k2)
      acd92(28)=abb92(44)
      acd92(29)=dotproduct(ninjaE3,spval5l6)
      acd92(30)=abb92(81)
      acd92(31)=abb92(98)
      acd92(32)=abb92(18)
      acd92(33)=abb92(31)
      acd92(34)=abb92(54)
      acd92(35)=abb92(17)
      acd92(36)=abb92(43)
      acd92(37)=abb92(25)
      acd92(38)=abb92(16)
      acd92(39)=abb92(38)
      acd92(40)=abb92(42)
      acd92(41)=abb92(21)
      acd92(42)=abb92(26)
      acd92(43)=abb92(32)
      acd92(44)=abb92(41)
      acd92(45)=abb92(59)
      acd92(46)=abb92(83)
      acd92(47)=dotproduct(ninjaE3,spvak2l6)
      acd92(48)=abb92(36)
      acd92(49)=abb92(46)
      acd92(50)=abb92(76)
      acd92(51)=abb92(78)
      acd92(52)=acd92(29)*acd92(30)
      acd92(53)=acd92(27)*acd92(28)
      acd92(54)=acd92(23)*acd92(24)
      acd92(55)=acd92(18)*acd92(19)
      acd92(56)=acd92(15)*acd92(16)
      acd92(52)=acd92(56)+acd92(52)+acd92(53)+acd92(54)+acd92(55)
      acd92(53)=acd92(9)+acd92(11)
      acd92(54)=acd92(10)*acd92(53)
      acd92(55)=acd92(1)-acd92(12)
      acd92(56)=-acd92(3)*acd92(55)
      acd92(57)=acd92(4)*acd92(17)
      acd92(58)=acd92(25)*acd92(26)
      acd92(59)=acd92(20)*acd92(21)
      acd92(60)=acd92(13)*acd92(14)
      acd92(61)=acd92(6)*acd92(22)
      acd92(62)=acd92(2)*acd92(8)
      acd92(54)=acd92(62)+acd92(61)+acd92(60)+acd92(59)+acd92(58)+acd92(57)+acd&
      &92(56)+acd92(54)+acd92(52)
      acd92(54)=acd92(2)*acd92(54)
      acd92(56)=acd92(7)*acd92(55)
      acd92(57)=acd92(47)*acd92(48)
      acd92(58)=acd92(29)*acd92(46)
      acd92(59)=acd92(27)*acd92(45)
      acd92(60)=acd92(23)*acd92(44)
      acd92(61)=acd92(18)*acd92(39)
      acd92(62)=acd92(15)*acd92(36)
      acd92(63)=acd92(13)*acd92(33)
      acd92(56)=acd92(63)+acd92(62)+acd92(61)+acd92(60)+acd92(59)+acd92(58)+acd&
      &92(57)+acd92(56)
      acd92(56)=acd92(6)*acd92(56)
      acd92(57)=acd92(13)*acd92(31)
      acd92(52)=acd92(57)+acd92(52)
      acd92(52)=-acd92(52)*acd92(53)
      acd92(53)=acd92(29)*acd92(51)
      acd92(57)=acd92(27)*acd92(50)
      acd92(58)=acd92(23)*acd92(49)
      acd92(59)=acd92(18)*acd92(40)
      acd92(60)=acd92(15)*acd92(37)
      acd92(53)=acd92(60)+acd92(59)+acd92(58)+acd92(53)+acd92(57)
      acd92(53)=acd92(25)*acd92(53)
      acd92(57)=acd92(29)*acd92(43)
      acd92(58)=acd92(27)*acd92(42)
      acd92(59)=acd92(23)*acd92(41)
      acd92(60)=acd92(18)*acd92(38)
      acd92(61)=acd92(15)*acd92(35)
      acd92(57)=acd92(61)+acd92(60)+acd92(59)+acd92(57)+acd92(58)
      acd92(57)=acd92(20)*acd92(57)
      acd92(58)=acd92(4)*acd92(5)
      acd92(59)=acd92(25)*acd92(34)
      acd92(60)=acd92(20)*acd92(32)
      acd92(59)=acd92(60)+acd92(58)+acd92(59)
      acd92(59)=acd92(13)*acd92(59)
      acd92(55)=-acd92(55)*acd92(58)
      acd92(52)=acd92(54)+acd92(56)+acd92(59)+acd92(57)+acd92(55)+acd92(53)+acd&
      &92(52)
      brack(ninjaidxt0x0mu0)=acd92(52)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d92h6_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd92h6
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
end module     p0_dbaru_epnebbbarg_d92h6l132
