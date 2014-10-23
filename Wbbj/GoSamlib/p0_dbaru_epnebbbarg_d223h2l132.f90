module     p0_dbaru_epnebbbarg_d223h2l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d223h2l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd223h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(26) :: acd223
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd223(1)=dotproduct(k2,ninjaE3)
      acd223(2)=dotproduct(ninjaE3,spvak2k7)
      acd223(3)=abb223(30)
      acd223(4)=dotproduct(l5,ninjaE3)
      acd223(5)=abb223(15)
      acd223(6)=dotproduct(l6,ninjaE3)
      acd223(7)=dotproduct(ninjaE3,spval5k2)
      acd223(8)=abb223(12)
      acd223(9)=dotproduct(ninjaE3,spvak1l6)
      acd223(10)=abb223(14)
      acd223(11)=dotproduct(ninjaE3,spvak4l6)
      acd223(12)=abb223(17)
      acd223(13)=dotproduct(ninjaE3,spvak4k2)
      acd223(14)=abb223(20)
      acd223(15)=dotproduct(ninjaE3,spvak1k2)
      acd223(16)=abb223(23)
      acd223(17)=dotproduct(ninjaE3,spval5l6)
      acd223(18)=abb223(36)
      acd223(19)=acd223(6)+acd223(4)
      acd223(19)=acd223(19)*acd223(5)
      acd223(20)=acd223(3)*acd223(1)
      acd223(21)=acd223(8)*acd223(7)
      acd223(22)=acd223(10)*acd223(9)
      acd223(23)=acd223(12)*acd223(11)
      acd223(24)=acd223(14)*acd223(13)
      acd223(25)=acd223(16)*acd223(15)
      acd223(26)=acd223(18)*acd223(17)
      acd223(19)=acd223(19)+acd223(26)+acd223(25)+acd223(24)+acd223(23)+acd223(&
      &22)+acd223(21)+acd223(20)
      acd223(19)=acd223(2)*acd223(19)
      brack(ninjaidxt1x0mu0)=acd223(19)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd223h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(67) :: acd223
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd223(1)=dotproduct(k2,ninjaA1)
      acd223(2)=dotproduct(ninjaE3,spvak2k7)
      acd223(3)=abb223(30)
      acd223(4)=dotproduct(k2,ninjaE3)
      acd223(5)=dotproduct(ninjaA1,spvak2k7)
      acd223(6)=dotproduct(l5,ninjaA1)
      acd223(7)=abb223(15)
      acd223(8)=dotproduct(l5,ninjaE3)
      acd223(9)=dotproduct(l6,ninjaA1)
      acd223(10)=dotproduct(l6,ninjaE3)
      acd223(11)=dotproduct(ninjaE3,spval5k2)
      acd223(12)=abb223(12)
      acd223(13)=dotproduct(ninjaE3,spvak1l6)
      acd223(14)=abb223(14)
      acd223(15)=dotproduct(ninjaE3,spvak4l6)
      acd223(16)=abb223(17)
      acd223(17)=dotproduct(ninjaE3,spvak4k2)
      acd223(18)=abb223(20)
      acd223(19)=dotproduct(ninjaE3,spvak1k2)
      acd223(20)=abb223(23)
      acd223(21)=dotproduct(ninjaE3,spval5l6)
      acd223(22)=abb223(36)
      acd223(23)=dotproduct(ninjaA1,spval5k2)
      acd223(24)=dotproduct(ninjaA1,spvak1l6)
      acd223(25)=dotproduct(ninjaA1,spvak4l6)
      acd223(26)=dotproduct(ninjaA1,spvak4k2)
      acd223(27)=dotproduct(ninjaA1,spvak1k2)
      acd223(28)=dotproduct(ninjaA1,spval5l6)
      acd223(29)=dotproduct(k1,ninjaE3)
      acd223(30)=abb223(49)
      acd223(31)=dotproduct(k2,ninjaA0)
      acd223(32)=dotproduct(ninjaA0,spvak2k7)
      acd223(33)=abb223(16)
      acd223(34)=dotproduct(k3,ninjaE3)
      acd223(35)=dotproduct(k4,ninjaE3)
      acd223(36)=dotproduct(l5,ninjaA0)
      acd223(37)=abb223(32)
      acd223(38)=dotproduct(l6,ninjaA0)
      acd223(39)=dotproduct(k7,ninjaE3)
      acd223(40)=abb223(18)
      acd223(41)=dotproduct(ninjaA0,ninjaE3)
      acd223(42)=abb223(19)
      acd223(43)=dotproduct(ninjaA0,spval5k2)
      acd223(44)=dotproduct(ninjaA0,spvak1l6)
      acd223(45)=dotproduct(ninjaA0,spvak4l6)
      acd223(46)=dotproduct(ninjaA0,spvak4k2)
      acd223(47)=dotproduct(ninjaA0,spvak1k2)
      acd223(48)=dotproduct(ninjaA0,spval5l6)
      acd223(49)=abb223(11)
      acd223(50)=abb223(22)
      acd223(51)=dotproduct(ninjaE3,spvak1k7)
      acd223(52)=abb223(21)
      acd223(53)=abb223(26)
      acd223(54)=dotproduct(ninjaE3,spvak4k7)
      acd223(55)=abb223(40)
      acd223(56)=acd223(8)+acd223(10)
      acd223(57)=acd223(56)*acd223(7)
      acd223(58)=acd223(22)*acd223(21)
      acd223(59)=acd223(20)*acd223(19)
      acd223(60)=acd223(18)*acd223(17)
      acd223(61)=acd223(16)*acd223(15)
      acd223(62)=acd223(14)*acd223(13)
      acd223(63)=acd223(12)*acd223(11)
      acd223(64)=acd223(3)*acd223(4)
      acd223(57)=acd223(64)+acd223(60)+acd223(61)+acd223(62)+acd223(63)+acd223(&
      &57)+acd223(58)+acd223(59)
      acd223(58)=acd223(5)*acd223(57)
      acd223(59)=acd223(22)*acd223(28)
      acd223(60)=acd223(20)*acd223(27)
      acd223(61)=acd223(18)*acd223(26)
      acd223(62)=acd223(16)*acd223(25)
      acd223(63)=acd223(14)*acd223(24)
      acd223(64)=acd223(12)*acd223(23)
      acd223(65)=acd223(3)*acd223(1)
      acd223(66)=acd223(9)+acd223(6)
      acd223(66)=acd223(7)*acd223(66)
      acd223(59)=acd223(66)+acd223(65)+acd223(64)+acd223(63)+acd223(62)+acd223(&
      &61)+acd223(59)+acd223(60)
      acd223(59)=acd223(2)*acd223(59)
      acd223(58)=acd223(58)+acd223(59)
      acd223(57)=acd223(32)*acd223(57)
      acd223(59)=acd223(22)*acd223(48)
      acd223(60)=acd223(20)*acd223(47)
      acd223(61)=acd223(18)*acd223(46)
      acd223(62)=acd223(16)*acd223(45)
      acd223(63)=acd223(14)*acd223(44)
      acd223(64)=acd223(12)*acd223(43)
      acd223(65)=acd223(3)*acd223(31)
      acd223(66)=acd223(38)+acd223(36)
      acd223(66)=acd223(7)*acd223(66)
      acd223(59)=acd223(66)+acd223(65)+acd223(64)+acd223(63)+acd223(62)+acd223(&
      &61)+acd223(60)+acd223(49)+acd223(59)
      acd223(59)=acd223(2)*acd223(59)
      acd223(56)=acd223(37)*acd223(56)
      acd223(60)=acd223(54)*acd223(55)
      acd223(61)=acd223(51)*acd223(52)
      acd223(62)=acd223(41)*acd223(42)
      acd223(63)=acd223(39)*acd223(40)
      acd223(64)=-acd223(29)+acd223(35)+acd223(34)
      acd223(64)=acd223(30)*acd223(64)
      acd223(65)=acd223(21)*acd223(53)
      acd223(66)=acd223(11)*acd223(50)
      acd223(67)=acd223(4)*acd223(33)
      acd223(56)=acd223(59)+acd223(57)+acd223(67)+acd223(66)+acd223(65)+acd223(&
      &64)+acd223(63)+2.0_ki*acd223(62)+acd223(60)+acd223(61)+acd223(56)
      brack(ninjaidxt0x0mu0)=acd223(56)
      brack(ninjaidxt0x1mu0)=acd223(58)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d223h2_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd223h2
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2+k7
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
end module     p0_dbaru_epnebbbarg_d223h2l132
