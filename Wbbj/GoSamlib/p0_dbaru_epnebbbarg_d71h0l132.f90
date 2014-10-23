module     p0_dbaru_epnebbbarg_d71h0l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d71h0l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd71h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd71
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd71(1)=dotproduct(ninjaE3,spvak1k2)
      acd71(2)=dotproduct(ninjaE3,spvak2k7)
      acd71(3)=dotproduct(ninjaE3,spvak4k3)
      acd71(4)=dotproduct(ninjaE3,spval5k2)
      acd71(5)=abb71(43)
      acd71(6)=dotproduct(ninjaE3,spval6k2)
      acd71(7)=abb71(46)
      acd71(8)=-acd71(5)*acd71(4)
      acd71(9)=-acd71(7)*acd71(6)
      acd71(8)=acd71(8)+acd71(9)
      acd71(8)=acd71(1)*acd71(8)*acd71(3)*acd71(2)
      brack(ninjaidxt1x0mu0)=acd71(8)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd71h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(65) :: acd71
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd71(1)=dotproduct(ninjaA1,spvak2k7)
      acd71(2)=dotproduct(ninjaE3,spval5k2)
      acd71(3)=dotproduct(ninjaE3,spvak4k3)
      acd71(4)=dotproduct(ninjaE3,spvak1k2)
      acd71(5)=abb71(43)
      acd71(6)=dotproduct(ninjaE3,spval6k2)
      acd71(7)=abb71(46)
      acd71(8)=dotproduct(ninjaA1,spval5k2)
      acd71(9)=dotproduct(ninjaE3,spvak2k7)
      acd71(10)=dotproduct(ninjaA1,spval6k2)
      acd71(11)=dotproduct(ninjaA1,spvak4k3)
      acd71(12)=dotproduct(ninjaA1,spvak1k2)
      acd71(13)=dotproduct(k2,ninjaE3)
      acd71(14)=dotproduct(k7,ninjaE3)
      acd71(15)=abb71(11)
      acd71(16)=abb71(42)
      acd71(17)=dotproduct(ninjaA0,ninjaE3)
      acd71(18)=abb71(40)
      acd71(19)=abb71(45)
      acd71(20)=abb71(29)
      acd71(21)=dotproduct(ninjaE3,spvak1k3)
      acd71(22)=abb71(19)
      acd71(23)=abb71(61)
      acd71(24)=dotproduct(ninjaE3,spvak4k2)
      acd71(25)=abb71(52)
      acd71(26)=abb71(51)
      acd71(27)=abb71(60)
      acd71(28)=abb71(62)
      acd71(29)=abb71(50)
      acd71(30)=abb71(49)
      acd71(31)=abb71(35)
      acd71(32)=abb71(47)
      acd71(33)=dotproduct(ninjaA0,spvak2k7)
      acd71(34)=dotproduct(ninjaA0,spval5k2)
      acd71(35)=dotproduct(ninjaA0,spval6k2)
      acd71(36)=dotproduct(ninjaA0,spvak4k3)
      acd71(37)=dotproduct(ninjaA0,spvak1k2)
      acd71(38)=abb71(7)
      acd71(39)=abb71(9)
      acd71(40)=abb71(14)
      acd71(41)=dotproduct(ninjaE3,spvak1k7)
      acd71(42)=abb71(58)
      acd71(43)=abb71(20)
      acd71(44)=dotproduct(ninjaE3,spvak7k2)
      acd71(45)=abb71(13)
      acd71(46)=abb71(59)
      acd71(47)=abb71(22)
      acd71(48)=abb71(16)
      acd71(49)=abb71(57)
      acd71(50)=acd71(5)*acd71(2)
      acd71(51)=acd71(7)*acd71(6)
      acd71(50)=acd71(50)+acd71(51)
      acd71(50)=acd71(50)*acd71(4)*acd71(3)
      acd71(52)=-acd71(1)*acd71(50)
      acd71(53)=acd71(7)*acd71(4)
      acd71(54)=acd71(6)*acd71(9)
      acd71(55)=acd71(53)*acd71(54)
      acd71(56)=acd71(2)*acd71(9)
      acd71(57)=acd71(56)*acd71(5)*acd71(4)
      acd71(55)=acd71(57)+acd71(55)
      acd71(57)=-acd71(11)*acd71(55)
      acd71(58)=acd71(3)*acd71(9)
      acd71(51)=acd71(51)*acd71(58)
      acd71(59)=acd71(58)*acd71(5)
      acd71(60)=acd71(59)*acd71(2)
      acd71(51)=acd71(60)+acd71(51)
      acd71(60)=-acd71(12)*acd71(51)
      acd71(53)=acd71(53)*acd71(58)
      acd71(61)=-acd71(10)*acd71(53)
      acd71(59)=acd71(59)*acd71(4)
      acd71(62)=-acd71(8)*acd71(59)
      acd71(52)=acd71(61)+acd71(62)+acd71(60)+acd71(52)+acd71(57)
      acd71(57)=acd71(27)*acd71(2)
      acd71(60)=acd71(28)*acd71(6)
      acd71(57)=acd71(60)+acd71(57)
      acd71(57)=acd71(21)*acd71(57)
      acd71(60)=acd71(30)*acd71(2)
      acd71(61)=acd71(32)*acd71(6)
      acd71(60)=acd71(61)+acd71(60)
      acd71(60)=acd71(24)*acd71(60)
      acd71(61)=acd71(20)*acd71(13)*acd71(3)
      acd71(62)=acd71(3)*acd71(2)
      acd71(63)=acd71(29)*acd71(62)
      acd71(64)=acd71(6)*acd71(3)
      acd71(65)=acd71(31)*acd71(64)
      acd71(57)=acd71(65)+acd71(63)+acd71(61)+acd71(60)+acd71(57)
      acd71(60)=2.0_ki*acd71(17)
      acd71(57)=acd71(60)*acd71(57)
      acd71(60)=acd71(42)*acd71(56)
      acd71(61)=acd71(46)*acd71(54)
      acd71(62)=acd71(48)*acd71(62)
      acd71(63)=acd71(49)*acd71(64)
      acd71(60)=acd71(63)+acd71(62)+acd71(61)+acd71(60)
      acd71(60)=acd71(41)*acd71(60)
      acd71(61)=acd71(15)*acd71(13)
      acd71(62)=acd71(22)*acd71(21)
      acd71(63)=acd71(25)*acd71(24)
      acd71(61)=acd71(63)+acd71(62)+acd71(61)
      acd71(61)=acd71(2)*acd71(61)
      acd71(62)=acd71(16)*acd71(13)
      acd71(63)=acd71(23)*acd71(21)
      acd71(64)=acd71(26)*acd71(24)
      acd71(62)=acd71(64)+acd71(63)+acd71(62)
      acd71(62)=acd71(6)*acd71(62)
      acd71(61)=acd71(62)+acd71(61)
      acd71(61)=acd71(14)*acd71(61)
      acd71(62)=acd71(40)*acd71(2)
      acd71(63)=acd71(45)*acd71(6)
      acd71(62)=acd71(63)+acd71(62)
      acd71(58)=acd71(58)*acd71(62)
      acd71(62)=acd71(39)*acd71(21)
      acd71(63)=acd71(47)*acd71(24)
      acd71(62)=acd71(63)+acd71(62)
      acd71(62)=acd71(54)*acd71(62)
      acd71(63)=acd71(38)*acd71(21)
      acd71(64)=acd71(43)*acd71(24)
      acd71(63)=acd71(64)+acd71(63)
      acd71(63)=acd71(56)*acd71(63)
      acd71(64)=-acd71(18)*acd71(2)
      acd71(65)=-acd71(19)*acd71(6)
      acd71(64)=acd71(64)+acd71(65)
      acd71(64)=acd71(13)*acd71(17)*acd71(64)
      acd71(50)=-acd71(33)*acd71(50)
      acd71(55)=-acd71(36)*acd71(55)
      acd71(51)=-acd71(37)*acd71(51)
      acd71(56)=acd71(18)*acd71(56)
      acd71(54)=acd71(19)*acd71(54)
      acd71(54)=acd71(56)+acd71(54)
      acd71(54)=acd71(44)*acd71(54)
      acd71(53)=-acd71(35)*acd71(53)
      acd71(56)=-acd71(34)*acd71(59)
      acd71(50)=acd71(53)+acd71(56)+acd71(54)+acd71(51)+acd71(55)+2.0_ki*acd71(&
      &64)+acd71(50)+acd71(57)+acd71(61)+acd71(60)+acd71(63)+acd71(62)+acd71(58)
      brack(ninjaidxt0x0mu0)=acd71(50)
      brack(ninjaidxt0x1mu0)=acd71(52)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d71h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd71h0
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
end module     p0_dbaru_epnebbbarg_d71h0l132
