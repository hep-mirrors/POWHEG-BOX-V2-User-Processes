module     p0_dbaru_epnebbbarg_d124h5l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d124h5l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1x0mu0 = 0
   integer, parameter :: ninjaidxt0x0mu0 = 1
   integer, parameter :: ninjaidxt0x1mu0 = 2
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd124h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(14) :: acd124
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd124(1)=dotproduct(k2,ninjaE3)
      acd124(2)=dotproduct(ninjaE3,spvak4k3)
      acd124(3)=dotproduct(ninjaE3,spvak7k2)
      acd124(4)=abb124(20)
      acd124(5)=dotproduct(ninjaE3,spvak1k2)
      acd124(6)=abb124(12)
      acd124(7)=dotproduct(ninjaE3,spval5k2)
      acd124(8)=abb124(13)
      acd124(9)=dotproduct(ninjaE3,spval6k2)
      acd124(10)=abb124(43)
      acd124(11)=acd124(4)*acd124(1)
      acd124(12)=acd124(6)*acd124(5)
      acd124(13)=acd124(8)*acd124(7)
      acd124(14)=acd124(10)*acd124(9)
      acd124(11)=acd124(14)+acd124(13)+acd124(11)+acd124(12)
      acd124(11)=acd124(11)*acd124(3)*acd124(2)
      brack(ninjaidxt1x0mu0)=acd124(11)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd124h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(64) :: acd124
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd124(1)=dotproduct(k2,ninjaA1)
      acd124(2)=dotproduct(ninjaE3,spvak7k2)
      acd124(3)=dotproduct(ninjaE3,spvak4k3)
      acd124(4)=abb124(20)
      acd124(5)=dotproduct(k2,ninjaE3)
      acd124(6)=dotproduct(ninjaA1,spvak7k2)
      acd124(7)=dotproduct(ninjaA1,spvak4k3)
      acd124(8)=dotproduct(ninjaE3,spvak1k2)
      acd124(9)=abb124(12)
      acd124(10)=dotproduct(ninjaE3,spval5k2)
      acd124(11)=abb124(13)
      acd124(12)=dotproduct(ninjaE3,spval6k2)
      acd124(13)=abb124(43)
      acd124(14)=dotproduct(ninjaA1,spvak1k2)
      acd124(15)=dotproduct(ninjaA1,spval5k2)
      acd124(16)=dotproduct(ninjaA1,spval6k2)
      acd124(17)=dotproduct(k2,ninjaA0)
      acd124(18)=dotproduct(ninjaA0,spvak7k2)
      acd124(19)=dotproduct(ninjaA0,spvak4k3)
      acd124(20)=dotproduct(k7,ninjaE3)
      acd124(21)=abb124(32)
      acd124(22)=dotproduct(ninjaE3,spvak4k2)
      acd124(23)=abb124(35)
      acd124(24)=dotproduct(ninjaA0,ninjaE3)
      acd124(25)=abb124(31)
      acd124(26)=abb124(28)
      acd124(27)=dotproduct(ninjaA0,spvak1k2)
      acd124(28)=dotproduct(ninjaA0,spval5k2)
      acd124(29)=dotproduct(ninjaA0,spval6k2)
      acd124(30)=dotproduct(ninjaE3,spvak2k3)
      acd124(31)=abb124(10)
      acd124(32)=abb124(36)
      acd124(33)=dotproduct(ninjaE3,spvak1k3)
      acd124(34)=abb124(11)
      acd124(35)=dotproduct(ninjaE3,spvak1k7)
      acd124(36)=abb124(14)
      acd124(37)=dotproduct(ninjaE3,spval6k3)
      acd124(38)=abb124(15)
      acd124(39)=abb124(26)
      acd124(40)=dotproduct(ninjaE3,spvak2k7)
      acd124(41)=abb124(27)
      acd124(42)=dotproduct(ninjaE3,spval5k7)
      acd124(43)=abb124(29)
      acd124(44)=dotproduct(ninjaE3,spval5k3)
      acd124(45)=abb124(34)
      acd124(46)=dotproduct(ninjaE3,spval6k7)
      acd124(47)=abb124(40)
      acd124(48)=acd124(13)*acd124(12)
      acd124(49)=acd124(11)*acd124(10)
      acd124(50)=acd124(9)*acd124(8)
      acd124(51)=acd124(4)*acd124(5)
      acd124(48)=acd124(48)+acd124(49)+acd124(50)+acd124(51)
      acd124(49)=acd124(7)*acd124(48)
      acd124(50)=acd124(13)*acd124(16)
      acd124(51)=acd124(11)*acd124(15)
      acd124(52)=acd124(9)*acd124(14)
      acd124(53)=acd124(4)*acd124(1)
      acd124(50)=acd124(53)+acd124(52)+acd124(50)+acd124(51)
      acd124(50)=acd124(3)*acd124(50)
      acd124(49)=acd124(50)+acd124(49)
      acd124(49)=acd124(2)*acd124(49)
      acd124(50)=acd124(48)*acd124(3)
      acd124(51)=acd124(6)*acd124(50)
      acd124(49)=acd124(51)+acd124(49)
      acd124(48)=acd124(19)*acd124(48)
      acd124(51)=acd124(13)*acd124(29)
      acd124(52)=acd124(11)*acd124(28)
      acd124(53)=acd124(9)*acd124(27)
      acd124(54)=acd124(4)*acd124(17)
      acd124(51)=acd124(54)+acd124(53)+acd124(51)+acd124(52)
      acd124(51)=acd124(3)*acd124(51)
      acd124(52)=acd124(46)*acd124(47)
      acd124(53)=acd124(44)*acd124(45)
      acd124(54)=acd124(42)*acd124(43)
      acd124(55)=acd124(40)*acd124(41)
      acd124(56)=acd124(37)*acd124(38)
      acd124(57)=acd124(35)*acd124(36)
      acd124(58)=acd124(33)*acd124(34)
      acd124(59)=acd124(30)*acd124(31)
      acd124(60)=2.0_ki*acd124(24)
      acd124(61)=acd124(25)*acd124(60)
      acd124(62)=acd124(20)*acd124(21)
      acd124(63)=acd124(22)*acd124(39)
      acd124(64)=acd124(2)*acd124(32)
      acd124(48)=acd124(64)+acd124(51)+acd124(63)+acd124(62)+acd124(61)+acd124(&
      &59)+acd124(58)+acd124(57)+acd124(56)+acd124(55)+acd124(54)+acd124(52)+ac&
      &d124(53)+acd124(48)
      acd124(48)=acd124(2)*acd124(48)
      acd124(50)=acd124(18)*acd124(50)
      acd124(51)=acd124(26)*acd124(60)
      acd124(52)=acd124(20)*acd124(23)
      acd124(51)=acd124(51)+acd124(52)
      acd124(51)=acd124(22)*acd124(51)
      acd124(48)=acd124(48)+acd124(51)+acd124(50)
      brack(ninjaidxt0x0mu0)=acd124(48)
      brack(ninjaidxt0x1mu0)=acd124(49)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d124h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd124h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d124h5l132
