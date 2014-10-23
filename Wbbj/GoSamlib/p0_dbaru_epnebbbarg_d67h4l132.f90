module     p0_dbaru_epnebbbarg_d67h4l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d67h4l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd67h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd67
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd67(1)=dotproduct(ninjaE3,spvak1k2)
      acd67(2)=dotproduct(ninjaE3,spvak4k3)
      acd67(3)=dotproduct(ninjaE3,spval5k2)
      acd67(4)=dotproduct(ninjaE3,spvak7k2)
      acd67(5)=abb67(51)
      acd67(6)=dotproduct(ninjaE3,spval6k2)
      acd67(7)=abb67(52)
      acd67(8)=acd67(5)*acd67(3)
      acd67(9)=acd67(7)*acd67(6)
      acd67(8)=acd67(8)+acd67(9)
      acd67(8)=acd67(1)*acd67(8)*acd67(4)*acd67(2)
      brack(ninjaidxt1x0mu0)=acd67(8)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd67h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(62) :: acd67
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd67(1)=dotproduct(ninjaA1,spvak4k3)
      acd67(2)=dotproduct(ninjaE3,spval5k2)
      acd67(3)=dotproduct(ninjaE3,spvak1k2)
      acd67(4)=dotproduct(ninjaE3,spvak7k2)
      acd67(5)=abb67(51)
      acd67(6)=dotproduct(ninjaE3,spval6k2)
      acd67(7)=abb67(52)
      acd67(8)=dotproduct(ninjaA1,spval5k2)
      acd67(9)=dotproduct(ninjaE3,spvak4k3)
      acd67(10)=dotproduct(ninjaA1,spval6k2)
      acd67(11)=dotproduct(ninjaA1,spvak1k2)
      acd67(12)=dotproduct(ninjaA1,spvak7k2)
      acd67(13)=dotproduct(k1,ninjaE3)
      acd67(14)=dotproduct(ninjaE3,spvak4k2)
      acd67(15)=abb67(46)
      acd67(16)=abb67(61)
      acd67(17)=abb67(41)
      acd67(18)=abb67(98)
      acd67(19)=abb67(35)
      acd67(20)=dotproduct(k3,ninjaE3)
      acd67(21)=abb67(57)
      acd67(22)=abb67(95)
      acd67(23)=dotproduct(k4,ninjaE3)
      acd67(24)=dotproduct(ninjaA0,ninjaE3)
      acd67(25)=abb67(10)
      acd67(26)=abb67(80)
      acd67(27)=abb67(42)
      acd67(28)=abb67(99)
      acd67(29)=abb67(36)
      acd67(30)=dotproduct(ninjaA0,spvak4k3)
      acd67(31)=dotproduct(ninjaA0,spval5k2)
      acd67(32)=dotproduct(ninjaA0,spval6k2)
      acd67(33)=dotproduct(ninjaA0,spvak1k2)
      acd67(34)=dotproduct(ninjaA0,spvak7k2)
      acd67(35)=abb67(23)
      acd67(36)=abb67(9)
      acd67(37)=abb67(49)
      acd67(38)=dotproduct(ninjaE3,spvak3k2)
      acd67(39)=abb67(12)
      acd67(40)=abb67(22)
      acd67(41)=abb67(26)
      acd67(42)=abb67(48)
      acd67(43)=abb67(20)
      acd67(44)=abb67(17)
      acd67(45)=abb67(33)
      acd67(46)=abb67(56)
      acd67(47)=abb67(29)
      acd67(48)=abb67(53)
      acd67(49)=dotproduct(ninjaE3,spvak1k3)
      acd67(50)=abb67(15)
      acd67(51)=abb67(59)
      acd67(52)=abb67(58)
      acd67(53)=acd67(6)*acd67(7)
      acd67(54)=acd67(2)*acd67(5)
      acd67(53)=acd67(53)+acd67(54)
      acd67(54)=acd67(11)*acd67(53)
      acd67(55)=acd67(7)*acd67(10)
      acd67(56)=acd67(5)*acd67(8)
      acd67(55)=acd67(55)+acd67(56)
      acd67(55)=acd67(3)*acd67(55)
      acd67(54)=acd67(55)+acd67(54)
      acd67(54)=acd67(9)*acd67(54)
      acd67(53)=acd67(53)*acd67(3)
      acd67(55)=acd67(1)*acd67(53)
      acd67(54)=acd67(54)+acd67(55)
      acd67(54)=acd67(4)*acd67(54)
      acd67(53)=acd67(9)*acd67(12)*acd67(53)
      acd67(53)=acd67(53)+acd67(54)
      acd67(54)=acd67(7)*acd67(32)
      acd67(55)=acd67(5)*acd67(31)
      acd67(54)=acd67(55)+acd67(46)+acd67(54)
      acd67(54)=acd67(3)*acd67(54)
      acd67(55)=acd67(38)*acd67(29)
      acd67(56)=acd67(14)*acd67(45)
      acd67(57)=acd67(7)*acd67(33)
      acd67(57)=acd67(44)+acd67(57)
      acd67(57)=acd67(6)*acd67(57)
      acd67(58)=acd67(5)*acd67(33)
      acd67(58)=acd67(40)+acd67(58)
      acd67(58)=acd67(2)*acd67(58)
      acd67(59)=acd67(4)*acd67(47)
      acd67(54)=acd67(59)+acd67(58)+acd67(57)+acd67(54)+acd67(55)+acd67(56)
      acd67(54)=acd67(9)*acd67(54)
      acd67(55)=acd67(20)+acd67(23)
      acd67(56)=acd67(22)*acd67(55)
      acd67(57)=acd67(49)*acd67(52)
      acd67(58)=2.0_ki*acd67(24)
      acd67(59)=acd67(28)*acd67(58)
      acd67(60)=acd67(13)*acd67(18)
      acd67(61)=acd67(7)*acd67(30)
      acd67(61)=acd67(51)+acd67(61)
      acd67(61)=acd67(3)*acd67(61)
      acd67(56)=acd67(61)+acd67(60)+acd67(57)+acd67(59)+acd67(56)
      acd67(56)=acd67(6)*acd67(56)
      acd67(57)=acd67(21)*acd67(55)
      acd67(59)=acd67(49)*acd67(50)
      acd67(60)=acd67(26)*acd67(58)
      acd67(61)=acd67(13)*acd67(16)
      acd67(62)=acd67(5)*acd67(30)
      acd67(62)=acd67(48)+acd67(62)
      acd67(62)=acd67(3)*acd67(62)
      acd67(57)=acd67(62)+acd67(61)+acd67(59)+acd67(60)+acd67(57)
      acd67(57)=acd67(2)*acd67(57)
      acd67(55)=acd67(55)-acd67(13)
      acd67(59)=-acd67(19)*acd67(55)
      acd67(60)=-acd67(29)*acd67(58)
      acd67(59)=acd67(60)+acd67(59)
      acd67(59)=acd67(14)*acd67(59)
      acd67(54)=acd67(57)+acd67(59)+acd67(56)+acd67(54)
      acd67(54)=acd67(4)*acd67(54)
      acd67(56)=-acd67(38)*acd67(25)
      acd67(57)=acd67(14)*acd67(37)
      acd67(59)=acd67(5)*acd67(34)
      acd67(59)=acd67(39)+acd67(59)
      acd67(59)=acd67(3)*acd67(59)
      acd67(60)=acd67(6)*acd67(36)
      acd67(61)=acd67(2)*acd67(35)
      acd67(56)=acd67(61)+acd67(60)+acd67(59)+acd67(56)+acd67(57)
      acd67(56)=acd67(2)*acd67(56)
      acd67(57)=-acd67(38)*acd67(27)
      acd67(59)=acd67(14)*acd67(42)
      acd67(60)=acd67(7)*acd67(34)
      acd67(60)=acd67(43)+acd67(60)
      acd67(60)=acd67(3)*acd67(60)
      acd67(61)=acd67(6)*acd67(41)
      acd67(57)=acd67(61)+acd67(60)+acd67(57)+acd67(59)
      acd67(57)=acd67(6)*acd67(57)
      acd67(56)=acd67(57)+acd67(56)
      acd67(56)=acd67(9)*acd67(56)
      acd67(57)=acd67(17)*acd67(55)
      acd67(59)=acd67(27)*acd67(58)
      acd67(57)=acd67(59)+acd67(57)
      acd67(57)=acd67(6)*acd67(57)
      acd67(55)=acd67(15)*acd67(55)
      acd67(58)=acd67(25)*acd67(58)
      acd67(55)=acd67(58)+acd67(55)
      acd67(55)=acd67(2)*acd67(55)
      acd67(55)=acd67(57)+acd67(55)
      acd67(55)=acd67(14)*acd67(55)
      acd67(54)=acd67(54)+acd67(56)+acd67(55)
      brack(ninjaidxt0x0mu0)=acd67(54)
      brack(ninjaidxt0x1mu0)=acd67(53)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d67h4_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd67h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
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
end module     p0_dbaru_epnebbbarg_d67h4l132
