module     p0_dbaru_epnebbbarg_d313h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d313h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd313h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd313
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd313h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(76) :: acd313
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd313(1)=dotproduct(k2,ninjaE3)
      acd313(2)=dotproduct(ninjaE3,spvak7k2)
      acd313(3)=dotproduct(ninjaE3,spval6k2)
      acd313(4)=abb313(56)
      acd313(5)=dotproduct(k3,ninjaE3)
      acd313(6)=dotproduct(ninjaE3,spvak4k2)
      acd313(7)=abb313(46)
      acd313(8)=dotproduct(k4,ninjaE3)
      acd313(9)=abb313(10)
      acd313(10)=dotproduct(ninjaE3,spvak4k3)
      acd313(11)=abb313(11)
      acd313(12)=abb313(20)
      acd313(13)=abb313(39)
      acd313(14)=dotproduct(ninjaE3,spvak3k2)
      acd313(15)=abb313(38)
      acd313(16)=dotproduct(k2,ninjaA)
      acd313(17)=dotproduct(ninjaA,spvak7k2)
      acd313(18)=dotproduct(ninjaA,spval6k2)
      acd313(19)=abb313(18)
      acd313(20)=abb313(47)
      acd313(21)=dotproduct(k3,ninjaA)
      acd313(22)=dotproduct(ninjaA,spvak4k2)
      acd313(23)=abb313(34)
      acd313(24)=abb313(43)
      acd313(25)=dotproduct(k4,ninjaA)
      acd313(26)=dotproduct(k7,ninjaE3)
      acd313(27)=abb313(19)
      acd313(28)=abb313(12)
      acd313(29)=dotproduct(ninjaA,ninjaE3)
      acd313(30)=abb313(21)
      acd313(31)=abb313(35)
      acd313(32)=dotproduct(ninjaA,spvak4k3)
      acd313(33)=dotproduct(ninjaA,spvak3k2)
      acd313(34)=abb313(23)
      acd313(35)=abb313(13)
      acd313(36)=abb313(29)
      acd313(37)=abb313(16)
      acd313(38)=abb313(22)
      acd313(39)=abb313(15)
      acd313(40)=abb313(50)
      acd313(41)=dotproduct(ninjaE3,spvak1k3)
      acd313(42)=abb313(17)
      acd313(43)=dotproduct(ninjaE3,spvak1k2)
      acd313(44)=abb313(25)
      acd313(45)=dotproduct(ninjaE3,spval6k7)
      acd313(46)=dotproduct(ninjaE3,spval6k3)
      acd313(47)=abb313(40)
      acd313(48)=dotproduct(ninjaE3,spval5k2)
      acd313(49)=abb313(48)
      acd313(50)=dotproduct(ninjaE3,spval5k3)
      acd313(51)=abb313(59)
      acd313(52)=abb313(31)
      acd313(53)=abb313(37)
      acd313(54)=acd313(5)+acd313(8)
      acd313(55)=acd313(7)*acd313(54)
      acd313(56)=acd313(10)*acd313(11)
      acd313(57)=acd313(6)*acd313(9)
      acd313(56)=acd313(57)+acd313(56)-acd313(55)
      acd313(56)=acd313(6)*acd313(56)
      acd313(57)=acd313(54)-acd313(1)
      acd313(58)=acd313(57)*acd313(4)
      acd313(59)=acd313(10)*acd313(13)
      acd313(60)=acd313(6)*acd313(12)
      acd313(59)=acd313(60)+acd313(58)+acd313(59)
      acd313(59)=acd313(3)*acd313(59)
      acd313(60)=acd313(14)*acd313(15)
      acd313(61)=acd313(10)*acd313(60)
      acd313(56)=acd313(59)+acd313(61)+acd313(56)
      acd313(56)=acd313(2)*acd313(56)
      acd313(59)=acd313(11)*acd313(32)
      acd313(61)=acd313(22)*acd313(9)
      acd313(62)=acd313(18)*acd313(12)
      acd313(63)=acd313(21)+acd313(25)
      acd313(64)=-acd313(7)*acd313(63)
      acd313(59)=acd313(64)+acd313(62)+2.0_ki*acd313(61)+acd313(35)+acd313(59)
      acd313(59)=acd313(6)*acd313(59)
      acd313(61)=acd313(15)*acd313(33)
      acd313(62)=acd313(22)*acd313(11)
      acd313(64)=acd313(18)*acd313(13)
      acd313(61)=acd313(64)+acd313(62)+acd313(39)+acd313(61)
      acd313(61)=acd313(10)*acd313(61)
      acd313(62)=acd313(13)*acd313(32)
      acd313(64)=acd313(22)*acd313(12)
      acd313(63)=-acd313(16)+acd313(63)
      acd313(63)=acd313(4)*acd313(63)
      acd313(62)=acd313(63)+acd313(64)+acd313(40)+acd313(62)
      acd313(62)=acd313(3)*acd313(62)
      acd313(63)=acd313(7)*acd313(22)
      acd313(63)=acd313(63)-acd313(24)
      acd313(63)=-acd313(63)*acd313(54)
      acd313(64)=acd313(50)*acd313(51)
      acd313(65)=acd313(48)*acd313(49)
      acd313(66)=acd313(46)*acd313(47)
      acd313(67)=acd313(43)*acd313(44)
      acd313(68)=acd313(41)*acd313(42)
      acd313(69)=-acd313(31)*acd313(45)
      acd313(70)=2.0_ki*acd313(29)
      acd313(71)=acd313(30)*acd313(70)
      acd313(72)=acd313(26)*acd313(27)
      acd313(73)=acd313(32)*acd313(60)
      acd313(74)=acd313(1)*acd313(19)
      acd313(75)=acd313(18)*acd313(58)
      acd313(76)=acd313(2)*acd313(38)
      acd313(59)=acd313(76)+acd313(62)+acd313(59)+acd313(61)+acd313(75)+acd313(&
      &74)+acd313(73)+acd313(72)+acd313(71)+acd313(69)+acd313(68)+acd313(67)+ac&
      &d313(66)+acd313(64)+acd313(65)+acd313(63)
      acd313(59)=acd313(2)*acd313(59)
      acd313(57)=-acd313(20)*acd313(57)
      acd313(61)=-acd313(31)*acd313(70)
      acd313(62)=acd313(26)*acd313(28)
      acd313(58)=acd313(17)*acd313(58)
      acd313(63)=acd313(17)*acd313(13)
      acd313(63)=acd313(52)+acd313(63)
      acd313(63)=acd313(10)*acd313(63)
      acd313(64)=acd313(17)*acd313(12)
      acd313(64)=acd313(37)+acd313(64)
      acd313(64)=acd313(6)*acd313(64)
      acd313(57)=acd313(64)+acd313(63)+acd313(58)+acd313(61)+acd313(62)+acd313(&
      &57)
      acd313(57)=acd313(3)*acd313(57)
      acd313(54)=acd313(23)*acd313(54)
      acd313(55)=-acd313(17)*acd313(55)
      acd313(58)=acd313(17)*acd313(11)
      acd313(58)=acd313(36)+acd313(58)
      acd313(58)=acd313(10)*acd313(58)
      acd313(61)=acd313(17)*acd313(9)
      acd313(61)=acd313(34)+acd313(61)
      acd313(61)=acd313(6)*acd313(61)
      acd313(54)=acd313(61)+acd313(58)+acd313(55)+acd313(54)
      acd313(54)=acd313(6)*acd313(54)
      acd313(55)=-acd313(14)*acd313(53)
      acd313(58)=acd313(17)*acd313(60)
      acd313(55)=acd313(55)+acd313(58)
      acd313(55)=acd313(10)*acd313(55)
      acd313(54)=acd313(59)+acd313(57)+acd313(55)+acd313(54)
      brack(ninjaidxt1mu0)=acd313(56)
      brack(ninjaidxt0mu0)=acd313(54)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d313h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd313h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d313h4l131
