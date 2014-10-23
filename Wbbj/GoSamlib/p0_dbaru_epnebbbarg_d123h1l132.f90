module     p0_dbaru_epnebbbarg_d123h1l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d123h1l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd123h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(14) :: acd123
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd123(1)=dotproduct(k2,ninjaE3)
      acd123(2)=dotproduct(ninjaE3,spvak2k7)
      acd123(3)=dotproduct(ninjaE3,spvak4k3)
      acd123(4)=abb123(21)
      acd123(5)=dotproduct(ninjaE3,spvak1k2)
      acd123(6)=abb123(22)
      acd123(7)=dotproduct(ninjaE3,spval6k2)
      acd123(8)=abb123(39)
      acd123(9)=dotproduct(ninjaE3,spval5k2)
      acd123(10)=abb123(44)
      acd123(11)=acd123(4)*acd123(1)
      acd123(12)=-acd123(6)*acd123(5)
      acd123(13)=acd123(8)*acd123(7)
      acd123(14)=-acd123(10)*acd123(9)
      acd123(11)=acd123(14)+acd123(13)+acd123(11)+acd123(12)
      acd123(11)=acd123(11)*acd123(3)*acd123(2)
      brack(ninjaidxt1x0mu0)=acd123(11)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd123h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(67) :: acd123
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd123(1)=dotproduct(k2,ninjaA1)
      acd123(2)=dotproduct(ninjaE3,spvak2k7)
      acd123(3)=dotproduct(ninjaE3,spvak4k3)
      acd123(4)=abb123(21)
      acd123(5)=dotproduct(k2,ninjaE3)
      acd123(6)=dotproduct(ninjaA1,spvak2k7)
      acd123(7)=dotproduct(ninjaA1,spvak4k3)
      acd123(8)=dotproduct(ninjaE3,spvak1k2)
      acd123(9)=abb123(22)
      acd123(10)=dotproduct(ninjaE3,spval6k2)
      acd123(11)=abb123(39)
      acd123(12)=dotproduct(ninjaE3,spval5k2)
      acd123(13)=abb123(44)
      acd123(14)=dotproduct(ninjaA1,spvak1k2)
      acd123(15)=dotproduct(ninjaA1,spval6k2)
      acd123(16)=dotproduct(ninjaA1,spval5k2)
      acd123(17)=dotproduct(k2,ninjaA0)
      acd123(18)=abb123(27)
      acd123(19)=dotproduct(k3,ninjaE3)
      acd123(20)=dotproduct(k4,ninjaE3)
      acd123(21)=dotproduct(ninjaA0,ninjaE3)
      acd123(22)=abb123(17)
      acd123(23)=dotproduct(ninjaA0,spvak2k7)
      acd123(24)=dotproduct(ninjaA0,spvak4k3)
      acd123(25)=abb123(18)
      acd123(26)=dotproduct(ninjaE3,spvak4k2)
      acd123(27)=abb123(38)
      acd123(28)=abb123(23)
      acd123(29)=abb123(30)
      acd123(30)=dotproduct(k7,ninjaE3)
      acd123(31)=abb123(29)
      acd123(32)=abb123(19)
      acd123(33)=abb123(37)
      acd123(34)=abb123(24)
      acd123(35)=dotproduct(ninjaA0,spvak1k2)
      acd123(36)=dotproduct(ninjaA0,spval6k2)
      acd123(37)=dotproduct(ninjaA0,spval5k2)
      acd123(38)=abb123(9)
      acd123(39)=dotproduct(ninjaE3,spvak2k3)
      acd123(40)=abb123(11)
      acd123(41)=dotproduct(ninjaE3,spvak1k3)
      acd123(42)=abb123(12)
      acd123(43)=abb123(15)
      acd123(44)=abb123(20)
      acd123(45)=dotproduct(ninjaE3,spval6k3)
      acd123(46)=abb123(35)
      acd123(47)=abb123(42)
      acd123(48)=dotproduct(ninjaE3,spval5k3)
      acd123(49)=abb123(43)
      acd123(50)=abb123(45)
      acd123(51)=acd123(1)*acd123(4)
      acd123(52)=-acd123(14)*acd123(9)
      acd123(53)=acd123(15)*acd123(11)
      acd123(54)=-acd123(16)*acd123(13)
      acd123(51)=acd123(54)+acd123(53)+acd123(52)+acd123(51)
      acd123(52)=acd123(3)*acd123(2)
      acd123(51)=acd123(52)*acd123(51)
      acd123(53)=acd123(4)*acd123(5)
      acd123(54)=acd123(8)*acd123(9)
      acd123(55)=acd123(10)*acd123(11)
      acd123(56)=acd123(12)*acd123(13)
      acd123(53)=acd123(56)-acd123(53)+acd123(54)-acd123(55)
      acd123(54)=acd123(53)*acd123(3)
      acd123(55)=-acd123(6)*acd123(54)
      acd123(53)=acd123(53)*acd123(2)
      acd123(56)=-acd123(7)*acd123(53)
      acd123(51)=acd123(55)+acd123(56)+acd123(51)
      acd123(55)=acd123(20)+acd123(19)
      acd123(56)=acd123(29)*acd123(55)
      acd123(57)=acd123(25)*acd123(5)
      acd123(58)=2.0_ki*acd123(21)
      acd123(59)=acd123(32)*acd123(58)
      acd123(60)=acd123(38)*acd123(26)
      acd123(61)=acd123(40)*acd123(39)
      acd123(62)=acd123(42)*acd123(41)
      acd123(63)=acd123(43)*acd123(8)
      acd123(64)=acd123(46)*acd123(45)
      acd123(65)=acd123(47)*acd123(10)
      acd123(66)=acd123(49)*acd123(48)
      acd123(67)=acd123(50)*acd123(12)
      acd123(56)=acd123(56)+acd123(67)+acd123(66)+acd123(65)+acd123(64)+acd123(&
      &63)+acd123(62)+acd123(61)+acd123(60)+acd123(59)+acd123(57)
      acd123(56)=acd123(2)*acd123(56)
      acd123(55)=-acd123(18)*acd123(55)
      acd123(57)=acd123(22)*acd123(58)
      acd123(59)=acd123(27)*acd123(26)
      acd123(60)=acd123(28)*acd123(3)
      acd123(55)=acd123(60)+acd123(59)+acd123(57)+acd123(55)
      acd123(55)=acd123(5)*acd123(55)
      acd123(57)=acd123(17)*acd123(4)
      acd123(59)=-acd123(35)*acd123(9)
      acd123(60)=acd123(36)*acd123(11)
      acd123(61)=-acd123(37)*acd123(13)
      acd123(57)=acd123(44)+acd123(61)+acd123(60)+acd123(59)+acd123(57)
      acd123(52)=acd123(52)*acd123(57)
      acd123(54)=-acd123(23)*acd123(54)
      acd123(53)=-acd123(24)*acd123(53)
      acd123(57)=acd123(33)*acd123(26)
      acd123(59)=acd123(34)*acd123(3)
      acd123(57)=acd123(59)+acd123(57)
      acd123(57)=acd123(58)*acd123(57)
      acd123(58)=acd123(18)*acd123(5)**2
      acd123(59)=acd123(31)*acd123(30)*acd123(3)
      acd123(52)=acd123(59)+acd123(58)+acd123(54)+acd123(53)+acd123(52)+acd123(&
      &55)+acd123(57)+acd123(56)
      brack(ninjaidxt0x0mu0)=acd123(52)
      brack(ninjaidxt0x1mu0)=acd123(51)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d123h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd123h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = + a0(0:3)
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
end module     p0_dbaru_epnebbbarg_d123h1l132
