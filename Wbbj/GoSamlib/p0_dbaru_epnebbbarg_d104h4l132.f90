module     p0_dbaru_epnebbbarg_d104h4l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d104h4l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd104h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd104
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd104(1)=dotproduct(ninjaE3,spvak1k2)
      acd104(2)=dotproduct(ninjaE3,spvak4k3)
      acd104(3)=dotproduct(ninjaE3,spvak7k2)
      acd104(4)=abb104(21)
      acd104(5)=dotproduct(ninjaE3,spval6k2)
      acd104(6)=abb104(22)
      acd104(7)=dotproduct(ninjaE3,spval5k2)
      acd104(8)=abb104(23)
      acd104(9)=acd104(4)*acd104(3)
      acd104(10)=acd104(6)*acd104(5)
      acd104(11)=acd104(8)*acd104(7)
      acd104(9)=acd104(11)+acd104(9)+acd104(10)
      acd104(9)=acd104(9)*acd104(2)*acd104(1)
      brack(ninjaidxt1x0mu0)=acd104(9)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd104h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(51) :: acd104
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd104(1)=dotproduct(ninjaA1,spvak4k3)
      acd104(2)=dotproduct(ninjaE3,spvak7k2)
      acd104(3)=dotproduct(ninjaE3,spvak1k2)
      acd104(4)=abb104(21)
      acd104(5)=dotproduct(ninjaE3,spval5k2)
      acd104(6)=abb104(23)
      acd104(7)=dotproduct(ninjaE3,spval6k2)
      acd104(8)=abb104(22)
      acd104(9)=dotproduct(ninjaA1,spvak7k2)
      acd104(10)=dotproduct(ninjaE3,spvak4k3)
      acd104(11)=dotproduct(ninjaA1,spval5k2)
      acd104(12)=dotproduct(ninjaA1,spval6k2)
      acd104(13)=dotproduct(ninjaA1,spvak1k2)
      acd104(14)=dotproduct(k3,ninjaE3)
      acd104(15)=abb104(74)
      acd104(16)=abb104(82)
      acd104(17)=abb104(75)
      acd104(18)=dotproduct(ninjaE3,spvak4k2)
      acd104(19)=abb104(17)
      acd104(20)=dotproduct(k4,ninjaE3)
      acd104(21)=dotproduct(ninjaA0,ninjaE3)
      acd104(22)=abb104(69)
      acd104(23)=abb104(80)
      acd104(24)=abb104(66)
      acd104(25)=abb104(16)
      acd104(26)=dotproduct(ninjaA0,spvak4k3)
      acd104(27)=dotproduct(ninjaA0,spvak7k2)
      acd104(28)=dotproduct(ninjaA0,spval5k2)
      acd104(29)=dotproduct(ninjaA0,spval6k2)
      acd104(30)=dotproduct(ninjaA0,spvak1k2)
      acd104(31)=abb104(11)
      acd104(32)=abb104(13)
      acd104(33)=abb104(14)
      acd104(34)=abb104(15)
      acd104(35)=abb104(18)
      acd104(36)=dotproduct(ninjaE3,spvak3k2)
      acd104(37)=dotproduct(ninjaE3,spvak1k3)
      acd104(38)=abb104(20)
      acd104(39)=abb104(25)
      acd104(40)=abb104(24)
      acd104(41)=acd104(9)*acd104(4)
      acd104(42)=acd104(11)*acd104(6)
      acd104(43)=acd104(12)*acd104(8)
      acd104(41)=acd104(43)+acd104(42)+acd104(41)
      acd104(42)=acd104(3)*acd104(10)
      acd104(41)=acd104(42)*acd104(41)
      acd104(43)=acd104(4)*acd104(2)
      acd104(44)=acd104(6)*acd104(5)
      acd104(45)=acd104(8)*acd104(7)
      acd104(43)=acd104(43)+acd104(44)+acd104(45)
      acd104(44)=acd104(3)*acd104(43)
      acd104(45)=acd104(1)*acd104(44)
      acd104(43)=acd104(10)*acd104(43)
      acd104(46)=acd104(13)*acd104(43)
      acd104(41)=acd104(45)+acd104(46)+acd104(41)
      acd104(45)=acd104(31)*acd104(2)
      acd104(46)=acd104(32)*acd104(5)
      acd104(47)=acd104(33)*acd104(7)
      acd104(48)=acd104(35)*acd104(18)
      acd104(49)=acd104(36)*acd104(25)
      acd104(45)=acd104(49)+acd104(48)+acd104(47)+acd104(46)+acd104(45)
      acd104(45)=acd104(10)*acd104(45)
      acd104(46)=acd104(15)*acd104(2)
      acd104(47)=-acd104(16)*acd104(5)
      acd104(48)=-acd104(17)*acd104(7)
      acd104(49)=-acd104(19)*acd104(18)
      acd104(46)=acd104(49)+acd104(48)+acd104(47)+acd104(46)
      acd104(47)=acd104(20)+acd104(14)
      acd104(46)=acd104(47)*acd104(46)
      acd104(47)=acd104(25)*acd104(18)
      acd104(48)=acd104(22)*acd104(2)
      acd104(49)=acd104(23)*acd104(5)
      acd104(50)=acd104(24)*acd104(7)
      acd104(47)=acd104(47)+acd104(48)+acd104(49)+acd104(50)
      acd104(47)=2.0_ki*acd104(47)
      acd104(47)=acd104(21)*acd104(47)
      acd104(48)=acd104(38)*acd104(2)
      acd104(49)=acd104(39)*acd104(5)
      acd104(50)=acd104(40)*acd104(7)
      acd104(48)=acd104(50)+acd104(49)+acd104(48)
      acd104(48)=acd104(37)*acd104(48)
      acd104(49)=acd104(27)*acd104(4)
      acd104(50)=acd104(28)*acd104(6)
      acd104(51)=acd104(29)*acd104(8)
      acd104(49)=acd104(34)+acd104(51)+acd104(50)+acd104(49)
      acd104(42)=acd104(42)*acd104(49)
      acd104(44)=acd104(26)*acd104(44)
      acd104(43)=acd104(30)*acd104(43)
      acd104(42)=acd104(44)+acd104(43)+acd104(45)+acd104(42)+acd104(47)+acd104(&
      &48)+acd104(46)
      brack(ninjaidxt0x0mu0)=acd104(42)
      brack(ninjaidxt0x1mu0)=acd104(41)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d104h4_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd104h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
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
end module     p0_dbaru_epnebbbarg_d104h4l132
