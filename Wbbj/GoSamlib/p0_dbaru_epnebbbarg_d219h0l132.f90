module     p0_dbaru_epnebbbarg_d219h0l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d219h0l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2x0mu0 = 0
   integer, parameter :: ninjaidxt1x0mu0 = 1
   integer, parameter :: ninjaidxt1x1mu0 = 2
   integer, parameter :: ninjaidxt0x0mu0 = 3
   integer, parameter :: ninjaidxt0x0mu2 = 4
   integer, parameter :: ninjaidxt0x1mu0 = 5
   integer, parameter :: ninjaidxt0x2mu0 = 6
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd219h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(51) :: acd219
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd219(1)=dotproduct(k2,ninjaE3)
      acd219(2)=abb219(17)
      acd219(3)=dotproduct(l5,ninjaE3)
      acd219(4)=abb219(16)
      acd219(5)=dotproduct(k7,ninjaE3)
      acd219(6)=abb219(32)
      acd219(7)=dotproduct(ninjaE3,spvak1k3)
      acd219(8)=abb219(18)
      acd219(9)=dotproduct(ninjaE3,spvak2l5)
      acd219(10)=abb219(19)
      acd219(11)=dotproduct(ninjaE3,spvak1k2)
      acd219(12)=abb219(20)
      acd219(13)=dotproduct(ninjaE3,spvak4k2)
      acd219(14)=abb219(21)
      acd219(15)=dotproduct(ninjaE3,spvak1k7)
      acd219(16)=abb219(25)
      acd219(17)=dotproduct(ninjaE3,spval6k2)
      acd219(18)=abb219(26)
      acd219(19)=dotproduct(ninjaE3,spvak7l5)
      acd219(20)=abb219(27)
      acd219(21)=dotproduct(ninjaE3,spval5k7)
      acd219(22)=abb219(33)
      acd219(23)=dotproduct(ninjaE3,spval6k3)
      acd219(24)=abb219(34)
      acd219(25)=dotproduct(ninjaE3,spval5k3)
      acd219(26)=abb219(37)
      acd219(27)=dotproduct(ninjaE3,spval5k2)
      acd219(28)=abb219(40)
      acd219(29)=dotproduct(ninjaE3,spvak1l5)
      acd219(30)=abb219(42)
      acd219(31)=dotproduct(ninjaE3,spvak2k3)
      acd219(32)=abb219(46)
      acd219(33)=dotproduct(ninjaE3,spvak2k7)
      acd219(34)=abb219(48)
      acd219(35)=acd219(2)*acd219(1)
      acd219(36)=acd219(4)*acd219(3)
      acd219(37)=acd219(6)*acd219(5)
      acd219(38)=acd219(8)*acd219(7)
      acd219(39)=acd219(10)*acd219(9)
      acd219(40)=acd219(12)*acd219(11)
      acd219(41)=acd219(14)*acd219(13)
      acd219(42)=acd219(16)*acd219(15)
      acd219(43)=acd219(18)*acd219(17)
      acd219(44)=acd219(20)*acd219(19)
      acd219(45)=acd219(22)*acd219(21)
      acd219(46)=acd219(24)*acd219(23)
      acd219(47)=acd219(26)*acd219(25)
      acd219(48)=acd219(28)*acd219(27)
      acd219(49)=acd219(30)*acd219(29)
      acd219(50)=acd219(32)*acd219(31)
      acd219(51)=acd219(34)*acd219(33)
      acd219(35)=acd219(51)+acd219(50)+acd219(49)+acd219(48)+acd219(47)+acd219(&
      &46)+acd219(45)+acd219(44)+acd219(43)+acd219(42)+acd219(41)+acd219(40)+ac&
      &d219(39)+acd219(38)+acd219(37)+acd219(35)+acd219(36)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd219(35)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd219h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(70) :: acd219
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd219(1)=dotproduct(k2,ninjaA1)
      acd219(2)=abb219(17)
      acd219(3)=dotproduct(l5,ninjaA1)
      acd219(4)=abb219(16)
      acd219(5)=dotproduct(k7,ninjaA1)
      acd219(6)=abb219(32)
      acd219(7)=dotproduct(ninjaA1,spvak1k3)
      acd219(8)=abb219(18)
      acd219(9)=dotproduct(ninjaA1,spvak2l5)
      acd219(10)=abb219(19)
      acd219(11)=dotproduct(ninjaA1,spvak1k2)
      acd219(12)=abb219(20)
      acd219(13)=dotproduct(ninjaA1,spvak4k2)
      acd219(14)=abb219(21)
      acd219(15)=dotproduct(ninjaA1,spvak1k7)
      acd219(16)=abb219(25)
      acd219(17)=dotproduct(ninjaA1,spval6k2)
      acd219(18)=abb219(26)
      acd219(19)=dotproduct(ninjaA1,spvak7l5)
      acd219(20)=abb219(27)
      acd219(21)=dotproduct(ninjaA1,spval5k7)
      acd219(22)=abb219(33)
      acd219(23)=dotproduct(ninjaA1,spval6k3)
      acd219(24)=abb219(34)
      acd219(25)=dotproduct(ninjaA1,spval5k3)
      acd219(26)=abb219(37)
      acd219(27)=dotproduct(ninjaA1,spval5k2)
      acd219(28)=abb219(40)
      acd219(29)=dotproduct(ninjaA1,spvak1l5)
      acd219(30)=abb219(42)
      acd219(31)=dotproduct(ninjaA1,spvak2k3)
      acd219(32)=abb219(46)
      acd219(33)=dotproduct(ninjaA1,spvak2k7)
      acd219(34)=abb219(48)
      acd219(35)=dotproduct(k2,ninjaA0)
      acd219(36)=dotproduct(l5,ninjaA0)
      acd219(37)=dotproduct(k7,ninjaA0)
      acd219(38)=dotproduct(ninjaA0,spvak1k3)
      acd219(39)=dotproduct(ninjaA0,spvak2l5)
      acd219(40)=dotproduct(ninjaA0,spvak1k2)
      acd219(41)=dotproduct(ninjaA0,spvak4k2)
      acd219(42)=dotproduct(ninjaA0,spvak1k7)
      acd219(43)=dotproduct(ninjaA0,spval6k2)
      acd219(44)=dotproduct(ninjaA0,spvak7l5)
      acd219(45)=dotproduct(ninjaA0,spval5k7)
      acd219(46)=dotproduct(ninjaA0,spval6k3)
      acd219(47)=dotproduct(ninjaA0,spval5k3)
      acd219(48)=dotproduct(ninjaA0,spval5k2)
      acd219(49)=dotproduct(ninjaA0,spvak1l5)
      acd219(50)=dotproduct(ninjaA0,spvak2k3)
      acd219(51)=dotproduct(ninjaA0,spvak2k7)
      acd219(52)=abb219(15)
      acd219(53)=acd219(1)*acd219(2)
      acd219(54)=acd219(3)*acd219(4)
      acd219(55)=acd219(5)*acd219(6)
      acd219(56)=acd219(7)*acd219(8)
      acd219(57)=acd219(9)*acd219(10)
      acd219(58)=acd219(11)*acd219(12)
      acd219(59)=acd219(13)*acd219(14)
      acd219(60)=acd219(15)*acd219(16)
      acd219(61)=acd219(17)*acd219(18)
      acd219(62)=acd219(19)*acd219(20)
      acd219(63)=acd219(21)*acd219(22)
      acd219(64)=acd219(23)*acd219(24)
      acd219(65)=acd219(25)*acd219(26)
      acd219(66)=acd219(27)*acd219(28)
      acd219(67)=acd219(29)*acd219(30)
      acd219(68)=acd219(31)*acd219(32)
      acd219(69)=acd219(33)*acd219(34)
      acd219(53)=acd219(69)+acd219(68)+acd219(67)+acd219(66)+acd219(65)+acd219(&
      &64)+acd219(63)+acd219(62)+acd219(61)+acd219(60)+acd219(59)+acd219(58)+ac&
      &d219(57)+acd219(56)+acd219(55)+acd219(53)+acd219(54)
      acd219(54)=acd219(35)*acd219(2)
      acd219(55)=acd219(36)*acd219(4)
      acd219(56)=acd219(37)*acd219(6)
      acd219(57)=acd219(38)*acd219(8)
      acd219(58)=acd219(39)*acd219(10)
      acd219(59)=acd219(40)*acd219(12)
      acd219(60)=acd219(41)*acd219(14)
      acd219(61)=acd219(42)*acd219(16)
      acd219(62)=acd219(43)*acd219(18)
      acd219(63)=acd219(44)*acd219(20)
      acd219(64)=acd219(45)*acd219(22)
      acd219(65)=acd219(46)*acd219(24)
      acd219(66)=acd219(47)*acd219(26)
      acd219(67)=acd219(48)*acd219(28)
      acd219(68)=acd219(49)*acd219(30)
      acd219(69)=acd219(50)*acd219(32)
      acd219(70)=acd219(51)*acd219(34)
      acd219(54)=acd219(52)+acd219(70)+acd219(69)+acd219(68)+acd219(67)+acd219(&
      &66)+acd219(65)+acd219(64)+acd219(63)+acd219(62)+acd219(61)+acd219(60)+ac&
      &d219(59)+acd219(58)+acd219(57)+acd219(56)+acd219(54)+acd219(55)
      brack(ninjaidxt0x0mu0)=acd219(54)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=acd219(53)
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d219h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd219h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6+k5
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d219h0l132
