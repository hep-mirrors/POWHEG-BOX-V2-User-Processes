module     p0_dbaru_epnebbbarg_d93h1l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d93h1l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd93h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd93
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
      use p0_dbaru_epnebbbarg_abbrevd93h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(63) :: acd93
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd93(1)=dotproduct(k1,ninjaE3)
      acd93(2)=dotproduct(k2,ninjaE3)
      acd93(3)=abb93(92)
      acd93(4)=dotproduct(ninjaE3,spvak1k2)
      acd93(5)=abb93(34)
      acd93(6)=dotproduct(ninjaE3,spvak1l5)
      acd93(7)=abb93(55)
      acd93(8)=dotproduct(ninjaE3,spval6l5)
      acd93(9)=abb93(175)
      acd93(10)=abb93(19)
      acd93(11)=abb93(18)
      acd93(12)=abb93(166)
      acd93(13)=dotproduct(ninjaE3,spvak1l6)
      acd93(14)=abb93(49)
      acd93(15)=dotproduct(k3,ninjaE3)
      acd93(16)=abb93(51)
      acd93(17)=abb93(38)
      acd93(18)=abb93(169)
      acd93(19)=dotproduct(k4,ninjaE3)
      acd93(20)=dotproduct(l5,ninjaE3)
      acd93(21)=abb93(163)
      acd93(22)=dotproduct(l6,ninjaE3)
      acd93(23)=abb93(62)
      acd93(24)=dotproduct(k7,ninjaE3)
      acd93(25)=abb93(16)
      acd93(26)=abb93(48)
      acd93(27)=abb93(137)
      acd93(28)=dotproduct(ninjaE3,spvak4k3)
      acd93(29)=abb93(15)
      acd93(30)=dotproduct(ninjaE3,spvak2k7)
      acd93(31)=abb93(21)
      acd93(32)=abb93(22)
      acd93(33)=dotproduct(ninjaE3,spvak4k2)
      acd93(34)=abb93(25)
      acd93(35)=dotproduct(ninjaE3,spvak2l6)
      acd93(36)=abb93(30)
      acd93(37)=dotproduct(ninjaE3,spvak2l5)
      acd93(38)=abb93(31)
      acd93(39)=dotproduct(ninjaE3,spvak2k1)
      acd93(40)=abb93(32)
      acd93(41)=abb93(33)
      acd93(42)=abb93(47)
      acd93(43)=abb93(23)
      acd93(44)=dotproduct(ninjaE3,spval6k2)
      acd93(45)=abb93(35)
      acd93(46)=dotproduct(ninjaE3,spval6k1)
      acd93(47)=abb93(29)
      acd93(48)=abb93(26)
      acd93(49)=abb93(40)
      acd93(50)=abb93(59)
      acd93(51)=acd93(15)+acd93(19)
      acd93(52)=acd93(16)*acd93(51)
      acd93(53)=acd93(20)+acd93(22)
      acd93(54)=-acd93(1)+acd93(53)
      acd93(54)=acd93(5)*acd93(54)
      acd93(55)=acd93(39)*acd93(40)
      acd93(56)=acd93(37)*acd93(38)
      acd93(57)=acd93(35)*acd93(36)
      acd93(58)=acd93(33)*acd93(34)
      acd93(59)=acd93(30)*acd93(31)
      acd93(60)=acd93(28)*acd93(29)
      acd93(61)=acd93(24)*acd93(25)
      acd93(62)=acd93(2)*acd93(10)
      acd93(63)=-acd93(8)*acd93(32)
      acd93(52)=acd93(63)+acd93(62)+acd93(61)+acd93(60)+acd93(59)+acd93(58)+acd&
      &93(57)+acd93(55)+acd93(56)+acd93(54)+acd93(52)
      acd93(52)=acd93(4)*acd93(52)
      acd93(54)=acd93(17)*acd93(51)
      acd93(55)=acd93(1)-acd93(20)
      acd93(55)=acd93(7)*acd93(55)
      acd93(56)=acd93(46)*acd93(47)
      acd93(57)=acd93(32)*acd93(44)
      acd93(58)=acd93(33)*acd93(45)
      acd93(59)=acd93(30)*acd93(43)
      acd93(60)=acd93(28)*acd93(41)
      acd93(61)=acd93(24)*acd93(26)
      acd93(62)=acd93(22)*acd93(23)
      acd93(63)=acd93(2)*acd93(11)
      acd93(54)=acd93(63)+acd93(62)+acd93(61)+acd93(60)+acd93(59)+acd93(58)+acd&
      &93(56)+acd93(57)+acd93(55)+acd93(54)
      acd93(54)=acd93(6)*acd93(54)
      acd93(53)=-acd93(21)*acd93(53)
      acd93(51)=-acd93(18)*acd93(51)
      acd93(55)=acd93(13)*acd93(50)
      acd93(56)=acd93(33)*acd93(49)
      acd93(57)=acd93(30)*acd93(48)
      acd93(58)=acd93(28)*acd93(42)
      acd93(59)=acd93(24)*acd93(27)
      acd93(60)=acd93(1)*acd93(9)
      acd93(61)=acd93(2)*acd93(12)
      acd93(51)=acd93(61)+acd93(60)+acd93(59)+acd93(58)+acd93(57)+acd93(55)+acd&
      &93(56)+acd93(51)+acd93(53)
      acd93(51)=acd93(8)*acd93(51)
      acd93(53)=acd93(13)*acd93(14)
      acd93(55)=acd93(1)*acd93(3)
      acd93(53)=acd93(53)+acd93(55)
      acd93(53)=acd93(2)*acd93(53)
      acd93(51)=acd93(52)+acd93(54)+acd93(53)+acd93(51)
      brack(ninjaidxt0x0mu0)=acd93(51)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d93h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd93h1
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
end module     p0_dbaru_epnebbbarg_d93h1l132
