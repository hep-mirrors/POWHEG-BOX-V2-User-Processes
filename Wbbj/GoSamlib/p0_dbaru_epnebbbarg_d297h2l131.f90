module     p0_dbaru_epnebbbarg_d297h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d297h2l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd297h2
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
      use p0_dbaru_epnebbbarg_abbrevd297h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(63) :: acd297
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd297(1)=dotproduct(k2,ninjaE3)
      acd297(2)=dotproduct(ninjaE3,spvak1k2)
      acd297(3)=dotproduct(ninjaE3,spvak4k3)
      acd297(4)=dotproduct(ninjaE3,spvak2k7)
      acd297(5)=abb297(55)
      acd297(6)=dotproduct(k2,ninjaA)
      acd297(7)=abb297(208)
      acd297(8)=abb297(18)
      acd297(9)=dotproduct(l6,ninjaE3)
      acd297(10)=abb297(245)
      acd297(11)=abb297(26)
      acd297(12)=dotproduct(k7,ninjaE3)
      acd297(13)=abb297(243)
      acd297(14)=dotproduct(ninjaA,ninjaE3)
      acd297(15)=abb297(195)
      acd297(16)=abb297(24)
      acd297(17)=dotproduct(ninjaA,spvak1k2)
      acd297(18)=dotproduct(ninjaA,spvak4k3)
      acd297(19)=dotproduct(ninjaA,spvak2k7)
      acd297(20)=abb297(15)
      acd297(21)=abb297(19)
      acd297(22)=abb297(60)
      acd297(23)=dotproduct(ninjaE3,spvak1l6)
      acd297(24)=abb297(20)
      acd297(25)=dotproduct(ninjaE3,spvak2l6)
      acd297(26)=abb297(50)
      acd297(27)=dotproduct(ninjaE3,spvak4k2)
      acd297(28)=abb297(45)
      acd297(29)=dotproduct(ninjaE3,spvak4l6)
      acd297(30)=abb297(72)
      acd297(31)=abb297(76)
      acd297(32)=abb297(54)
      acd297(33)=abb297(52)
      acd297(34)=abb297(94)
      acd297(35)=abb297(69)
      acd297(36)=abb297(75)
      acd297(37)=abb297(73)
      acd297(38)=abb297(70)
      acd297(39)=abb297(80)
      acd297(40)=abb297(79)
      acd297(41)=abb297(46)
      acd297(42)=dotproduct(ninjaE3,spvak2k3)
      acd297(43)=abb297(16)
      acd297(44)=abb297(58)
      acd297(45)=abb297(67)
      acd297(46)=dotproduct(ninjaE3,spvak7l6)
      acd297(47)=abb297(88)
      acd297(48)=dotproduct(ninjaE3,spvak7k2)
      acd297(49)=abb297(90)
      acd297(50)=dotproduct(ninjaE3,spval6k2)
      acd297(51)=abb297(91)
      acd297(52)=acd297(4)*acd297(2)
      acd297(53)=acd297(3)*acd297(1)*acd297(5)*acd297(52)
      acd297(54)=acd297(23)*acd297(24)
      acd297(55)=2.0_ki*acd297(14)
      acd297(56)=acd297(15)*acd297(55)
      acd297(57)=acd297(12)*acd297(13)
      acd297(58)=acd297(9)*acd297(10)
      acd297(59)=acd297(25)*acd297(26)
      acd297(60)=acd297(5)*acd297(19)
      acd297(60)=acd297(20)+acd297(60)
      acd297(60)=acd297(2)*acd297(60)
      acd297(61)=acd297(1)*acd297(7)
      acd297(54)=acd297(61)+acd297(60)+acd297(59)+acd297(58)+acd297(57)+acd297(&
      &54)+acd297(56)
      acd297(54)=acd297(1)*acd297(54)
      acd297(56)=acd297(9)-acd297(12)
      acd297(57)=acd297(33)*acd297(56)
      acd297(58)=acd297(37)*acd297(55)
      acd297(57)=acd297(58)+acd297(57)
      acd297(57)=acd297(25)*acd297(57)
      acd297(54)=acd297(57)+acd297(54)
      acd297(54)=acd297(3)*acd297(54)
      acd297(57)=acd297(9)+acd297(12)
      acd297(58)=acd297(11)*acd297(57)
      acd297(59)=acd297(29)*acd297(30)
      acd297(60)=acd297(16)*acd297(55)
      acd297(61)=acd297(27)*acd297(28)
      acd297(62)=acd297(5)*acd297(18)
      acd297(62)=acd297(21)+acd297(62)
      acd297(62)=acd297(2)*acd297(62)
      acd297(63)=acd297(1)*acd297(8)
      acd297(58)=acd297(63)+acd297(62)+acd297(61)+acd297(59)+acd297(60)+acd297(&
      &58)
      acd297(58)=acd297(1)*acd297(58)
      acd297(56)=-acd297(55)-acd297(56)
      acd297(56)=acd297(32)*acd297(56)
      acd297(59)=acd297(50)*acd297(51)
      acd297(60)=acd297(48)*acd297(49)
      acd297(61)=acd297(46)*acd297(47)
      acd297(62)=acd297(5)*acd297(6)
      acd297(62)=acd297(41)+acd297(62)
      acd297(62)=acd297(2)*acd297(62)
      acd297(63)=acd297(5)*acd297(17)
      acd297(63)=acd297(22)+acd297(63)
      acd297(63)=acd297(1)*acd297(63)
      acd297(56)=acd297(63)+acd297(62)+acd297(61)+acd297(59)+acd297(60)+acd297(&
      &56)
      acd297(56)=acd297(3)*acd297(56)
      acd297(59)=acd297(57)*acd297(35)
      acd297(60)=acd297(39)*acd297(55)
      acd297(59)=acd297(60)+acd297(59)
      acd297(59)=acd297(29)*acd297(59)
      acd297(60)=acd297(34)*acd297(57)
      acd297(61)=acd297(38)*acd297(55)
      acd297(60)=acd297(61)+acd297(60)
      acd297(60)=acd297(27)*acd297(60)
      acd297(61)=acd297(42)*acd297(43)
      acd297(62)=acd297(25)*acd297(45)
      acd297(61)=acd297(61)+acd297(62)
      acd297(61)=acd297(2)*acd297(61)
      acd297(52)=acd297(44)*acd297(52)
      acd297(52)=acd297(52)+acd297(56)+acd297(58)+acd297(61)+acd297(60)+acd297(&
      &59)
      acd297(52)=acd297(4)*acd297(52)
      acd297(56)=acd297(36)*acd297(57)
      acd297(55)=acd297(40)*acd297(55)
      acd297(57)=acd297(1)*acd297(31)
      acd297(55)=acd297(57)+acd297(55)+acd297(56)
      acd297(55)=acd297(55)*acd297(25)*acd297(27)
      acd297(52)=acd297(52)+acd297(54)+acd297(55)
      brack(ninjaidxt1mu0)=acd297(53)
      brack(ninjaidxt0mu0)=acd297(52)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d297h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd297h2
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
end module     p0_dbaru_epnebbbarg_d297h2l131
