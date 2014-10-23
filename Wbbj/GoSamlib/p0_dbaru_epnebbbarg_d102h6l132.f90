module     p0_dbaru_epnebbbarg_d102h6l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d102h6l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd102h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(14) :: acd102
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd102(1)=dotproduct(k2,ninjaE3)
      acd102(2)=dotproduct(ninjaE3,spvak4k3)
      acd102(3)=dotproduct(ninjaE3,spvak7k2)
      acd102(4)=abb102(54)
      acd102(5)=dotproduct(ninjaE3,spvak1k2)
      acd102(6)=abb102(12)
      acd102(7)=dotproduct(ninjaE3,spval6k2)
      acd102(8)=abb102(21)
      acd102(9)=dotproduct(ninjaE3,spval5k2)
      acd102(10)=abb102(34)
      acd102(11)=acd102(4)*acd102(1)
      acd102(12)=acd102(6)*acd102(5)
      acd102(13)=acd102(8)*acd102(7)
      acd102(14)=acd102(10)*acd102(9)
      acd102(11)=acd102(14)+acd102(13)+acd102(11)+acd102(12)
      acd102(11)=acd102(11)*acd102(3)*acd102(2)
      brack(ninjaidxt1x0mu0)=acd102(11)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd102h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(65) :: acd102
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd102(1)=dotproduct(k2,ninjaA1)
      acd102(2)=dotproduct(ninjaE3,spvak4k3)
      acd102(3)=dotproduct(ninjaE3,spvak7k2)
      acd102(4)=abb102(54)
      acd102(5)=dotproduct(k2,ninjaE3)
      acd102(6)=dotproduct(ninjaA1,spvak4k3)
      acd102(7)=dotproduct(ninjaA1,spvak7k2)
      acd102(8)=dotproduct(ninjaE3,spvak1k2)
      acd102(9)=abb102(12)
      acd102(10)=dotproduct(ninjaE3,spval6k2)
      acd102(11)=abb102(21)
      acd102(12)=dotproduct(ninjaE3,spval5k2)
      acd102(13)=abb102(34)
      acd102(14)=dotproduct(ninjaA1,spvak1k2)
      acd102(15)=dotproduct(ninjaA1,spval6k2)
      acd102(16)=dotproduct(ninjaA1,spval5k2)
      acd102(17)=dotproduct(k2,ninjaA0)
      acd102(18)=dotproduct(k3,ninjaE3)
      acd102(19)=abb102(24)
      acd102(20)=dotproduct(k4,ninjaE3)
      acd102(21)=dotproduct(ninjaA0,ninjaE3)
      acd102(22)=abb102(33)
      acd102(23)=dotproduct(ninjaA0,spvak4k3)
      acd102(24)=dotproduct(ninjaA0,spvak7k2)
      acd102(25)=abb102(51)
      acd102(26)=dotproduct(ninjaE3,spvak4k2)
      acd102(27)=abb102(36)
      acd102(28)=abb102(29)
      acd102(29)=abb102(20)
      acd102(30)=abb102(44)
      acd102(31)=abb102(30)
      acd102(32)=abb102(17)
      acd102(33)=abb102(11)
      acd102(34)=abb102(45)
      acd102(35)=abb102(48)
      acd102(36)=dotproduct(ninjaA0,spvak1k2)
      acd102(37)=dotproduct(ninjaA0,spval6k2)
      acd102(38)=dotproduct(ninjaA0,spval5k2)
      acd102(39)=abb102(10)
      acd102(40)=abb102(32)
      acd102(41)=abb102(22)
      acd102(42)=abb102(57)
      acd102(43)=abb102(53)
      acd102(44)=dotproduct(ninjaE3,spvak3k2)
      acd102(45)=dotproduct(ninjaE3,spvak2k3)
      acd102(46)=abb102(18)
      acd102(47)=dotproduct(ninjaE3,spvak1k3)
      acd102(48)=abb102(25)
      acd102(49)=dotproduct(ninjaE3,spval6k3)
      acd102(50)=abb102(43)
      acd102(51)=dotproduct(ninjaE3,spval5k3)
      acd102(52)=abb102(47)
      acd102(53)=acd102(1)*acd102(4)
      acd102(54)=acd102(14)*acd102(9)
      acd102(55)=acd102(15)*acd102(11)
      acd102(56)=acd102(16)*acd102(13)
      acd102(53)=acd102(56)+acd102(55)+acd102(54)+acd102(53)
      acd102(54)=acd102(2)*acd102(3)
      acd102(53)=acd102(54)*acd102(53)
      acd102(55)=acd102(4)*acd102(5)
      acd102(56)=acd102(9)*acd102(8)
      acd102(57)=acd102(11)*acd102(10)
      acd102(58)=acd102(13)*acd102(12)
      acd102(55)=acd102(58)+acd102(55)+acd102(56)+acd102(57)
      acd102(56)=acd102(55)*acd102(3)
      acd102(57)=acd102(6)*acd102(56)
      acd102(55)=acd102(55)*acd102(2)
      acd102(58)=acd102(7)*acd102(55)
      acd102(53)=acd102(57)+acd102(58)+acd102(53)
      acd102(57)=acd102(25)*acd102(5)
      acd102(58)=acd102(39)*acd102(26)
      acd102(59)=acd102(40)*acd102(8)
      acd102(60)=acd102(42)*acd102(10)
      acd102(61)=acd102(43)*acd102(12)
      acd102(62)=-acd102(44)*acd102(27)
      acd102(57)=acd102(62)+acd102(61)+acd102(60)+acd102(59)+acd102(58)+acd102(&
      &57)
      acd102(57)=acd102(2)*acd102(57)
      acd102(58)=acd102(20)+acd102(18)
      acd102(59)=2.0_ki*acd102(21)
      acd102(60)=acd102(59)-acd102(58)
      acd102(60)=acd102(29)*acd102(60)
      acd102(61)=acd102(46)*acd102(45)
      acd102(62)=acd102(48)*acd102(47)
      acd102(63)=acd102(50)*acd102(49)
      acd102(64)=acd102(52)*acd102(51)
      acd102(60)=acd102(60)+acd102(64)+acd102(63)+acd102(62)+acd102(61)
      acd102(60)=acd102(3)*acd102(60)
      acd102(61)=acd102(27)*acd102(26)
      acd102(62)=acd102(19)*acd102(5)
      acd102(63)=-acd102(28)*acd102(8)
      acd102(64)=-acd102(30)*acd102(10)
      acd102(65)=acd102(31)*acd102(12)
      acd102(61)=acd102(65)+acd102(64)+acd102(63)+acd102(62)+acd102(61)
      acd102(58)=acd102(58)*acd102(61)
      acd102(61)=acd102(22)*acd102(5)
      acd102(62)=acd102(32)*acd102(26)
      acd102(63)=acd102(33)*acd102(8)
      acd102(64)=acd102(34)*acd102(10)
      acd102(65)=acd102(35)*acd102(12)
      acd102(61)=acd102(65)+acd102(64)+acd102(63)+acd102(62)+acd102(61)
      acd102(59)=acd102(59)*acd102(61)
      acd102(61)=acd102(17)*acd102(4)
      acd102(62)=acd102(36)*acd102(9)
      acd102(63)=acd102(37)*acd102(11)
      acd102(64)=acd102(38)*acd102(13)
      acd102(61)=acd102(41)+acd102(64)+acd102(63)+acd102(62)+acd102(61)
      acd102(54)=acd102(54)*acd102(61)
      acd102(56)=acd102(23)*acd102(56)
      acd102(55)=acd102(24)*acd102(55)
      acd102(54)=acd102(56)+acd102(55)+acd102(57)+acd102(59)+acd102(54)+acd102(&
      &58)+acd102(60)
      brack(ninjaidxt0x0mu0)=acd102(54)
      brack(ninjaidxt0x1mu0)=acd102(53)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d102h6_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd102h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d102h6l132
