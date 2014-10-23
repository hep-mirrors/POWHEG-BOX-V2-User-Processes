module     p0_dbaru_epnebbbarg_d221h7l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d221h7l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd221h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(42) :: acd221
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd221(1)=dotproduct(k2,ninjaE3)
      acd221(2)=abb221(15)
      acd221(3)=dotproduct(l6,ninjaE3)
      acd221(4)=abb221(24)
      acd221(5)=dotproduct(k7,ninjaE3)
      acd221(6)=abb221(28)
      acd221(7)=dotproduct(ninjaE3,spvak1k2)
      acd221(8)=abb221(16)
      acd221(9)=dotproduct(ninjaE3,spvak1l6)
      acd221(10)=abb221(17)
      acd221(11)=dotproduct(ninjaE3,spvak7l6)
      acd221(12)=abb221(19)
      acd221(13)=dotproduct(ninjaE3,spvak7k3)
      acd221(14)=abb221(20)
      acd221(15)=dotproduct(ninjaE3,spval6k2)
      acd221(16)=abb221(21)
      acd221(17)=dotproduct(ninjaE3,spvak2l6)
      acd221(18)=abb221(22)
      acd221(19)=dotproduct(ninjaE3,spvak7k2)
      acd221(20)=abb221(25)
      acd221(21)=dotproduct(ninjaE3,spval6k7)
      acd221(22)=abb221(26)
      acd221(23)=dotproduct(ninjaE3,spval6k3)
      acd221(24)=abb221(29)
      acd221(25)=dotproduct(ninjaE3,spvak4l6)
      acd221(26)=abb221(33)
      acd221(27)=dotproduct(ninjaE3,spvak4k2)
      acd221(28)=abb221(38)
      acd221(29)=acd221(2)*acd221(1)
      acd221(30)=acd221(4)*acd221(3)
      acd221(31)=acd221(6)*acd221(5)
      acd221(32)=acd221(8)*acd221(7)
      acd221(33)=acd221(10)*acd221(9)
      acd221(34)=acd221(12)*acd221(11)
      acd221(35)=acd221(14)*acd221(13)
      acd221(36)=acd221(16)*acd221(15)
      acd221(37)=acd221(18)*acd221(17)
      acd221(38)=acd221(20)*acd221(19)
      acd221(39)=acd221(22)*acd221(21)
      acd221(40)=acd221(24)*acd221(23)
      acd221(41)=acd221(26)*acd221(25)
      acd221(42)=acd221(28)*acd221(27)
      acd221(29)=acd221(42)+acd221(41)+acd221(40)+acd221(39)+acd221(38)+acd221(&
      &37)+acd221(36)+acd221(35)+acd221(34)+acd221(33)+acd221(32)+acd221(31)+ac&
      &d221(29)+acd221(30)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd221(29)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd221h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(58) :: acd221
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd221(1)=dotproduct(k2,ninjaA1)
      acd221(2)=abb221(15)
      acd221(3)=dotproduct(l6,ninjaA1)
      acd221(4)=abb221(24)
      acd221(5)=dotproduct(k7,ninjaA1)
      acd221(6)=abb221(28)
      acd221(7)=dotproduct(ninjaA1,spvak1k2)
      acd221(8)=abb221(16)
      acd221(9)=dotproduct(ninjaA1,spvak1l6)
      acd221(10)=abb221(17)
      acd221(11)=dotproduct(ninjaA1,spvak7l6)
      acd221(12)=abb221(19)
      acd221(13)=dotproduct(ninjaA1,spvak7k3)
      acd221(14)=abb221(20)
      acd221(15)=dotproduct(ninjaA1,spval6k2)
      acd221(16)=abb221(21)
      acd221(17)=dotproduct(ninjaA1,spvak2l6)
      acd221(18)=abb221(22)
      acd221(19)=dotproduct(ninjaA1,spvak7k2)
      acd221(20)=abb221(25)
      acd221(21)=dotproduct(ninjaA1,spval6k7)
      acd221(22)=abb221(26)
      acd221(23)=dotproduct(ninjaA1,spval6k3)
      acd221(24)=abb221(29)
      acd221(25)=dotproduct(ninjaA1,spvak4l6)
      acd221(26)=abb221(33)
      acd221(27)=dotproduct(ninjaA1,spvak4k2)
      acd221(28)=abb221(38)
      acd221(29)=dotproduct(k2,ninjaA0)
      acd221(30)=dotproduct(l6,ninjaA0)
      acd221(31)=dotproduct(k7,ninjaA0)
      acd221(32)=dotproduct(ninjaA0,spvak1k2)
      acd221(33)=dotproduct(ninjaA0,spvak1l6)
      acd221(34)=dotproduct(ninjaA0,spvak7l6)
      acd221(35)=dotproduct(ninjaA0,spvak7k3)
      acd221(36)=dotproduct(ninjaA0,spval6k2)
      acd221(37)=dotproduct(ninjaA0,spvak2l6)
      acd221(38)=dotproduct(ninjaA0,spvak7k2)
      acd221(39)=dotproduct(ninjaA0,spval6k7)
      acd221(40)=dotproduct(ninjaA0,spval6k3)
      acd221(41)=dotproduct(ninjaA0,spvak4l6)
      acd221(42)=dotproduct(ninjaA0,spvak4k2)
      acd221(43)=abb221(23)
      acd221(44)=acd221(1)*acd221(2)
      acd221(45)=acd221(3)*acd221(4)
      acd221(46)=acd221(5)*acd221(6)
      acd221(47)=acd221(7)*acd221(8)
      acd221(48)=acd221(9)*acd221(10)
      acd221(49)=acd221(11)*acd221(12)
      acd221(50)=acd221(13)*acd221(14)
      acd221(51)=acd221(15)*acd221(16)
      acd221(52)=acd221(17)*acd221(18)
      acd221(53)=acd221(19)*acd221(20)
      acd221(54)=acd221(21)*acd221(22)
      acd221(55)=acd221(23)*acd221(24)
      acd221(56)=acd221(25)*acd221(26)
      acd221(57)=acd221(27)*acd221(28)
      acd221(44)=acd221(57)+acd221(56)+acd221(55)+acd221(54)+acd221(53)+acd221(&
      &52)+acd221(51)+acd221(50)+acd221(49)+acd221(48)+acd221(47)+acd221(46)+ac&
      &d221(44)+acd221(45)
      acd221(45)=acd221(29)*acd221(2)
      acd221(46)=acd221(30)*acd221(4)
      acd221(47)=acd221(31)*acd221(6)
      acd221(48)=acd221(32)*acd221(8)
      acd221(49)=acd221(33)*acd221(10)
      acd221(50)=acd221(34)*acd221(12)
      acd221(51)=acd221(35)*acd221(14)
      acd221(52)=acd221(36)*acd221(16)
      acd221(53)=acd221(37)*acd221(18)
      acd221(54)=acd221(38)*acd221(20)
      acd221(55)=acd221(39)*acd221(22)
      acd221(56)=acd221(40)*acd221(24)
      acd221(57)=acd221(41)*acd221(26)
      acd221(58)=acd221(42)*acd221(28)
      acd221(45)=acd221(43)+acd221(58)+acd221(57)+acd221(56)+acd221(55)+acd221(&
      &54)+acd221(53)+acd221(52)+acd221(51)+acd221(50)+acd221(49)+acd221(48)+ac&
      &d221(47)+acd221(45)+acd221(46)
      brack(ninjaidxt0x0mu0)=acd221(45)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=acd221(44)
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d221h7_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd221h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = - a0(0:3)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d221h7l132
