module     p0_dbaru_epnebbbarg_d306h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d306h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd306h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd306
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd306h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(72) :: acd306
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd306(1)=dotproduct(k2,ninjaE3)
      acd306(2)=dotproduct(ninjaE3,spvak2k7)
      acd306(3)=dotproduct(ninjaE3,spvak1l5)
      acd306(4)=abb306(22)
      acd306(5)=dotproduct(ninjaE3,spvak4l5)
      acd306(6)=abb306(43)
      acd306(7)=dotproduct(ninjaE3,spvak1k2)
      acd306(8)=dotproduct(ninjaE3,spvak2l5)
      acd306(9)=abb306(16)
      acd306(10)=dotproduct(ninjaE3,spvak2l6)
      acd306(11)=abb306(17)
      acd306(12)=dotproduct(ninjaE3,spvak4k2)
      acd306(13)=abb306(23)
      acd306(14)=abb306(46)
      acd306(15)=dotproduct(k2,ninjaA)
      acd306(16)=abb306(13)
      acd306(17)=dotproduct(l5,ninjaE3)
      acd306(18)=abb306(39)
      acd306(19)=dotproduct(k7,ninjaE3)
      acd306(20)=abb306(38)
      acd306(21)=dotproduct(ninjaA,ninjaE3)
      acd306(22)=abb306(55)
      acd306(23)=dotproduct(ninjaA,spvak2k7)
      acd306(24)=dotproduct(ninjaA,spvak1l5)
      acd306(25)=dotproduct(ninjaA,spvak4l5)
      acd306(26)=abb306(10)
      acd306(27)=dotproduct(ninjaE3,spvak1k7)
      acd306(28)=abb306(48)
      acd306(29)=dotproduct(ninjaE3,spvak1l6)
      acd306(30)=abb306(14)
      acd306(31)=dotproduct(ninjaE3,spvak4k7)
      acd306(32)=abb306(77)
      acd306(33)=dotproduct(ninjaE3,spvak4l6)
      acd306(34)=abb306(34)
      acd306(35)=abb306(42)
      acd306(36)=abb306(20)
      acd306(37)=dotproduct(ninjaA,spvak1k2)
      acd306(38)=dotproduct(ninjaA,spvak2l5)
      acd306(39)=dotproduct(ninjaA,spvak2l6)
      acd306(40)=dotproduct(ninjaA,spvak4k2)
      acd306(41)=abb306(45)
      acd306(42)=abb306(11)
      acd306(43)=abb306(12)
      acd306(44)=abb306(19)
      acd306(45)=abb306(47)
      acd306(46)=abb306(18)
      acd306(47)=abb306(21)
      acd306(48)=abb306(44)
      acd306(49)=abb306(24)
      acd306(50)=dotproduct(ninjaE3,spvak7k2)
      acd306(51)=abb306(32)
      acd306(52)=abb306(40)
      acd306(53)=acd306(13)*acd306(8)
      acd306(54)=acd306(14)*acd306(10)
      acd306(53)=acd306(53)+acd306(54)
      acd306(53)=acd306(12)*acd306(53)
      acd306(54)=acd306(10)*acd306(11)
      acd306(55)=acd306(8)*acd306(9)
      acd306(54)=acd306(54)+acd306(55)
      acd306(55)=acd306(7)*acd306(54)
      acd306(56)=acd306(5)*acd306(6)
      acd306(57)=acd306(3)*acd306(4)
      acd306(56)=acd306(56)+acd306(57)
      acd306(57)=acd306(1)*acd306(56)
      acd306(55)=acd306(57)+acd306(55)+acd306(53)
      acd306(55)=acd306(2)*acd306(55)
      acd306(57)=acd306(14)*acd306(40)
      acd306(58)=acd306(11)*acd306(37)
      acd306(57)=acd306(57)+acd306(58)
      acd306(57)=acd306(10)*acd306(57)
      acd306(58)=acd306(14)*acd306(39)
      acd306(59)=acd306(13)*acd306(38)
      acd306(58)=acd306(59)+acd306(48)+acd306(58)
      acd306(58)=acd306(12)*acd306(58)
      acd306(59)=acd306(13)*acd306(40)
      acd306(60)=acd306(9)*acd306(37)
      acd306(59)=acd306(60)+acd306(45)+acd306(59)
      acd306(59)=acd306(8)*acd306(59)
      acd306(60)=acd306(11)*acd306(39)
      acd306(61)=acd306(9)*acd306(38)
      acd306(60)=acd306(61)+acd306(43)+acd306(60)
      acd306(60)=acd306(7)*acd306(60)
      acd306(61)=acd306(6)*acd306(25)
      acd306(62)=acd306(4)*acd306(24)
      acd306(61)=acd306(62)+acd306(26)+acd306(61)
      acd306(61)=acd306(1)*acd306(61)
      acd306(62)=acd306(50)*acd306(51)
      acd306(63)=acd306(33)*acd306(49)
      acd306(64)=acd306(31)*acd306(46)
      acd306(65)=acd306(29)*acd306(44)
      acd306(66)=acd306(27)*acd306(42)
      acd306(67)=2.0_ki*acd306(21)
      acd306(68)=acd306(36)*acd306(67)
      acd306(69)=acd306(17)*acd306(35)
      acd306(70)=acd306(6)*acd306(15)
      acd306(70)=acd306(52)+acd306(70)
      acd306(70)=acd306(5)*acd306(70)
      acd306(71)=acd306(4)*acd306(15)
      acd306(71)=acd306(47)+acd306(71)
      acd306(71)=acd306(3)*acd306(71)
      acd306(72)=acd306(2)*acd306(41)
      acd306(57)=acd306(72)+acd306(61)+acd306(60)+acd306(59)+acd306(58)+acd306(&
      &57)+acd306(71)+acd306(70)+acd306(69)+acd306(68)+acd306(66)+acd306(65)+ac&
      &d306(64)+acd306(62)+acd306(63)
      acd306(57)=acd306(2)*acd306(57)
      acd306(56)=acd306(23)*acd306(56)
      acd306(58)=acd306(19)*acd306(20)
      acd306(59)=acd306(33)*acd306(34)
      acd306(60)=acd306(31)*acd306(32)
      acd306(61)=acd306(29)*acd306(30)
      acd306(62)=acd306(27)*acd306(28)
      acd306(63)=acd306(22)*acd306(67)
      acd306(64)=acd306(17)*acd306(18)
      acd306(65)=acd306(1)*acd306(16)
      acd306(56)=acd306(65)+acd306(56)+acd306(64)+acd306(63)+acd306(62)+acd306(&
      &61)+acd306(60)+acd306(58)+acd306(59)
      acd306(56)=acd306(1)*acd306(56)
      acd306(53)=acd306(23)*acd306(53)
      acd306(54)=acd306(7)*acd306(23)*acd306(54)
      acd306(53)=acd306(57)+acd306(56)+acd306(54)+acd306(53)
      brack(ninjaidxt1mu0)=acd306(55)
      brack(ninjaidxt0mu0)=acd306(53)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d306h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd306h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7
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
end module     p0_dbaru_epnebbbarg_d306h3l131
