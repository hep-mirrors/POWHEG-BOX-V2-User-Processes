module     p1_dg_hhd_d6h2l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p1_dg_hhd/helicity2d6h2l132.f90
   ! generator: buildfortran_tn3.py
   use p1_dg_hhd_config, only: ki
   use p1_dg_hhd_util, only: cond_t, d => metric_tensor
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
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd6h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(18) :: acd6
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd6(1)=dotproduct(k1,ninjaE3)
      acd6(2)=dotproduct(k2,ninjaE3)
      acd6(3)=dotproduct(ninjaE3,spvak2k5)
      acd6(4)=abb6(10)
      acd6(5)=dotproduct(ninjaE3,spvak2l3)
      acd6(6)=dotproduct(ninjaE3,spval3k5)
      acd6(7)=abb6(32)
      acd6(8)=dotproduct(ninjaA0,ninjaE3)
      acd6(9)=dotproduct(ninjaE3,spvak2k1)
      acd6(10)=dotproduct(ninjaE3,spvak1k5)
      acd6(11)=dotproduct(ninjaE3,spvak1k2)
      acd6(12)=abb6(17)
      acd6(13)=dotproduct(ninjaE3,spvak1l3)
      acd6(14)=dotproduct(ninjaE3,spval3k1)
      acd6(15)=abb6(24)
      acd6(16)=acd6(4)*acd6(2)*acd6(1)
      acd6(17)=acd6(12)*acd6(11)*acd6(9)
      acd6(18)=acd6(15)*acd6(14)*acd6(13)
      acd6(16)=acd6(18)+acd6(17)+acd6(16)
      acd6(16)=acd6(3)*acd6(16)
      acd6(17)=acd6(6)*acd6(5)*acd6(1)
      acd6(18)=acd6(10)*acd6(8)*acd6(9)
      acd6(17)=2.0_ki*acd6(18)+acd6(17)
      acd6(17)=acd6(7)*acd6(17)
      acd6(16)=acd6(16)+acd6(17)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd6(16)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd6h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(67) :: acd6
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd6(1)=dotproduct(ninjaE3,spvak2k1)
      acd6(2)=dotproduct(ninjaE3,spvak1k5)
      acd6(3)=abb6(32)
      acd6(4)=dotproduct(k1,ninjaA1)
      acd6(5)=dotproduct(k2,ninjaE3)
      acd6(6)=dotproduct(ninjaE3,spvak2k5)
      acd6(7)=abb6(10)
      acd6(8)=dotproduct(ninjaE3,spvak2l3)
      acd6(9)=dotproduct(ninjaE3,spval3k5)
      acd6(10)=dotproduct(k1,ninjaE3)
      acd6(11)=dotproduct(k2,ninjaA1)
      acd6(12)=dotproduct(ninjaA1,spvak2k5)
      acd6(13)=dotproduct(ninjaA1,spvak2l3)
      acd6(14)=dotproduct(ninjaA1,spval3k5)
      acd6(15)=dotproduct(ninjaA0,ninjaA1)
      acd6(16)=dotproduct(ninjaA0,ninjaE3)
      acd6(17)=dotproduct(ninjaA1,spvak2k1)
      acd6(18)=dotproduct(ninjaA1,spvak1k5)
      acd6(19)=dotproduct(ninjaE3,spval3k1)
      acd6(20)=dotproduct(ninjaE3,spvak1l3)
      acd6(21)=abb6(24)
      acd6(22)=dotproduct(ninjaE3,spvak1k2)
      acd6(23)=abb6(17)
      acd6(24)=dotproduct(ninjaA1,spval3k1)
      acd6(25)=dotproduct(ninjaA1,spvak1k2)
      acd6(26)=dotproduct(ninjaA1,spvak1l3)
      acd6(27)=dotproduct(ninjaA1,ninjaA1)
      acd6(28)=dotproduct(k1,ninjaA0)
      acd6(29)=dotproduct(k2,ninjaA0)
      acd6(30)=dotproduct(ninjaA0,spvak2k5)
      acd6(31)=abb6(19)
      acd6(32)=abb6(18)
      acd6(33)=dotproduct(ninjaA0,spvak2l3)
      acd6(34)=dotproduct(ninjaA0,spval3k5)
      acd6(35)=abb6(14)
      acd6(36)=abb6(41)
      acd6(37)=dotproduct(ninjaA0,ninjaA0)
      acd6(38)=abb6(9)
      acd6(39)=dotproduct(ninjaA0,spvak2k1)
      acd6(40)=dotproduct(ninjaA0,spvak1k5)
      acd6(41)=abb6(38)
      acd6(42)=dotproduct(ninjaA0,spval3k1)
      acd6(43)=dotproduct(ninjaA0,spvak1k2)
      acd6(44)=dotproduct(ninjaA0,spvak1l3)
      acd6(45)=abb6(12)
      acd6(46)=abb6(25)
      acd6(47)=abb6(27)
      acd6(48)=abb6(30)
      acd6(49)=acd6(2)*acd6(3)
      acd6(50)=acd6(49)*acd6(1)
      acd6(51)=acd6(7)*acd6(10)
      acd6(52)=acd6(11)*acd6(51)
      acd6(53)=acd6(20)*acd6(21)
      acd6(54)=acd6(24)*acd6(53)
      acd6(55)=acd6(23)*acd6(1)
      acd6(56)=acd6(25)*acd6(55)
      acd6(57)=acd6(19)*acd6(21)
      acd6(58)=acd6(26)*acd6(57)
      acd6(52)=acd6(58)+acd6(56)+acd6(54)+acd6(52)
      acd6(52)=acd6(6)*acd6(52)
      acd6(54)=acd6(7)*acd6(5)
      acd6(56)=acd6(54)*acd6(10)
      acd6(58)=acd6(22)*acd6(23)
      acd6(59)=acd6(58)*acd6(1)
      acd6(60)=acd6(53)*acd6(19)
      acd6(56)=acd6(56)+acd6(59)+acd6(60)
      acd6(59)=acd6(12)*acd6(56)
      acd6(60)=acd6(9)*acd6(3)
      acd6(61)=acd6(13)*acd6(60)
      acd6(62)=acd6(8)*acd6(3)
      acd6(63)=acd6(14)*acd6(62)
      acd6(61)=acd6(63)+acd6(61)
      acd6(61)=acd6(10)*acd6(61)
      acd6(63)=ninjaP1+2.0_ki*acd6(15)
      acd6(63)=acd6(50)*acd6(63)
      acd6(54)=acd6(54)*acd6(6)
      acd6(64)=acd6(60)*acd6(8)
      acd6(54)=acd6(54)+acd6(64)
      acd6(64)=acd6(4)*acd6(54)
      acd6(65)=2.0_ki*acd6(16)
      acd6(49)=acd6(65)*acd6(49)
      acd6(58)=acd6(58)*acd6(6)
      acd6(49)=acd6(49)+acd6(58)
      acd6(58)=acd6(17)*acd6(49)
      acd6(66)=acd6(65)*acd6(1)*acd6(3)
      acd6(67)=acd6(18)*acd6(66)
      acd6(52)=acd6(67)+acd6(58)+acd6(59)+acd6(64)+acd6(52)+acd6(63)+acd6(61)
      acd6(58)=acd6(27)+ninjaP2
      acd6(58)=acd6(50)*acd6(58)
      acd6(51)=acd6(29)*acd6(51)
      acd6(59)=acd6(36)*acd6(5)
      acd6(61)=acd6(41)*acd6(65)
      acd6(53)=acd6(42)*acd6(53)
      acd6(55)=acd6(43)*acd6(55)
      acd6(57)=acd6(44)*acd6(57)
      acd6(63)=acd6(45)*acd6(19)
      acd6(64)=acd6(46)*acd6(1)
      acd6(51)=acd6(64)+acd6(63)+acd6(57)+acd6(55)+acd6(53)+acd6(61)+acd6(59)+a&
      &cd6(51)
      acd6(51)=acd6(6)*acd6(51)
      acd6(53)=acd6(31)*acd6(5)
      acd6(55)=acd6(32)*acd6(65)
      acd6(57)=acd6(33)*acd6(60)
      acd6(59)=acd6(34)*acd6(62)
      acd6(60)=acd6(35)*acd6(8)
      acd6(53)=acd6(60)+acd6(59)+acd6(57)+acd6(55)+acd6(53)
      acd6(53)=acd6(10)*acd6(53)
      acd6(55)=acd6(30)*acd6(56)
      acd6(56)=ninjaP0+acd6(37)
      acd6(56)=acd6(50)*acd6(56)
      acd6(54)=acd6(28)*acd6(54)
      acd6(49)=acd6(39)*acd6(49)
      acd6(57)=acd6(38)*acd6(16)**2
      acd6(59)=acd6(40)*acd6(66)
      acd6(60)=acd6(47)*acd6(9)*acd6(8)
      acd6(61)=acd6(48)*acd6(2)*acd6(1)
      acd6(49)=acd6(61)+acd6(60)+acd6(59)+4.0_ki*acd6(57)+acd6(49)+acd6(55)+acd&
      &6(54)+acd6(51)+acd6(53)+acd6(56)
      brack(ninjaidxt0x0mu0)=acd6(49)
      brack(ninjaidxt0x0mu2)=acd6(50)
      brack(ninjaidxt0x1mu0)=acd6(52)
      brack(ninjaidxt0x2mu0)=acd6(58)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p1_dg_hhd_d6h2_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p1_dg_hhd_globalsl1, only: epspow
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_abbrevd6h2
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
end module     p1_dg_hhd_d6h2l132
