module     p0_dbaru_epnebbbarg_d122h5l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d122h5l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt0x0mu0 = 0
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd122h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd122
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd122h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(54) :: acd122
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd122(1)=dotproduct(k2,ninjaE3)
      acd122(2)=abb122(73)
      acd122(3)=dotproduct(k3,ninjaE3)
      acd122(4)=dotproduct(k4,ninjaE3)
      acd122(5)=dotproduct(l6,ninjaE3)
      acd122(6)=abb122(68)
      acd122(7)=dotproduct(k7,ninjaE3)
      acd122(8)=dotproduct(ninjaE3,spvak4k2)
      acd122(9)=abb122(42)
      acd122(10)=dotproduct(ninjaE3,spval6k2)
      acd122(11)=abb122(31)
      acd122(12)=dotproduct(ninjaE3,spvak4k3)
      acd122(13)=abb122(61)
      acd122(14)=dotproduct(ninjaE3,spvak1k2)
      acd122(15)=abb122(35)
      acd122(16)=dotproduct(ninjaE3,spvak7k2)
      acd122(17)=abb122(33)
      acd122(18)=dotproduct(ninjaE3,spvak4l5)
      acd122(19)=abb122(56)
      acd122(20)=abb122(36)
      acd122(21)=abb122(13)
      acd122(22)=abb122(28)
      acd122(23)=abb122(34)
      acd122(24)=abb122(16)
      acd122(25)=abb122(15)
      acd122(26)=abb122(17)
      acd122(27)=dotproduct(ninjaE3,spvak2l5)
      acd122(28)=abb122(22)
      acd122(29)=abb122(25)
      acd122(30)=abb122(26)
      acd122(31)=abb122(39)
      acd122(32)=abb122(24)
      acd122(33)=dotproduct(ninjaE3,spvak1l6)
      acd122(34)=abb122(27)
      acd122(35)=dotproduct(ninjaE3,spvak7k3)
      acd122(36)=abb122(53)
      acd122(37)=dotproduct(ninjaE3,spvak3l5)
      acd122(38)=abb122(57)
      acd122(39)=abb122(46)
      acd122(40)=dotproduct(ninjaE3,spvak3k2)
      acd122(41)=abb122(80)
      acd122(42)=abb122(37)
      acd122(43)=dotproduct(ninjaE3,spvak1k7)
      acd122(44)=dotproduct(ninjaE3,spval6k3)
      acd122(45)=acd122(7)+acd122(5)
      acd122(46)=-acd122(22)*acd122(45)
      acd122(47)=acd122(13)*acd122(1)
      acd122(48)=acd122(26)*acd122(8)
      acd122(49)=acd122(31)*acd122(10)
      acd122(50)=-acd122(37)*acd122(28)
      acd122(51)=acd122(38)*acd122(16)
      acd122(52)=acd122(39)*acd122(18)
      acd122(53)=-acd122(41)*acd122(40)
      acd122(46)=acd122(46)+acd122(53)+acd122(52)+acd122(51)+acd122(50)+acd122(&
      &49)+acd122(48)+acd122(47)
      acd122(46)=acd122(12)*acd122(46)
      acd122(47)=acd122(4)+acd122(3)
      acd122(48)=acd122(20)*acd122(47)
      acd122(49)=acd122(21)*acd122(45)
      acd122(50)=acd122(9)*acd122(1)
      acd122(51)=acd122(25)*acd122(10)
      acd122(52)=acd122(27)*acd122(28)
      acd122(53)=acd122(29)*acd122(16)
      acd122(54)=acd122(30)*acd122(18)
      acd122(48)=acd122(49)+acd122(48)+acd122(54)+acd122(53)+acd122(52)+acd122(&
      &51)+acd122(50)
      acd122(48)=acd122(8)*acd122(48)
      acd122(49)=-acd122(6)*acd122(45)
      acd122(50)=-acd122(11)*acd122(10)
      acd122(51)=-acd122(17)*acd122(16)
      acd122(52)=acd122(19)*acd122(18)
      acd122(49)=acd122(51)+acd122(50)+acd122(52)+acd122(49)
      acd122(50)=acd122(47)-acd122(1)
      acd122(49)=acd122(50)*acd122(49)
      acd122(45)=acd122(23)*acd122(45)
      acd122(50)=acd122(15)*acd122(1)
      acd122(51)=acd122(32)*acd122(10)
      acd122(52)=acd122(42)*acd122(16)
      acd122(45)=acd122(52)+acd122(51)+acd122(50)+acd122(45)
      acd122(45)=acd122(14)*acd122(45)
      acd122(50)=-acd122(33)*acd122(10)
      acd122(51)=-acd122(43)*acd122(16)
      acd122(50)=acd122(51)+acd122(50)
      acd122(50)=acd122(34)*acd122(50)
      acd122(51)=-acd122(35)*acd122(10)
      acd122(52)=acd122(44)*acd122(16)
      acd122(51)=acd122(52)+acd122(51)
      acd122(51)=acd122(36)*acd122(51)
      acd122(47)=acd122(1)*acd122(47)
      acd122(52)=acd122(1)**2
      acd122(47)=-acd122(52)+acd122(47)
      acd122(47)=acd122(2)*acd122(47)
      acd122(52)=acd122(24)*acd122(8)**2
      acd122(45)=acd122(52)+acd122(47)+acd122(45)+acd122(51)+acd122(50)+acd122(&
      &49)+acd122(48)+acd122(46)
      brack(ninjaidxt0x0mu0)=acd122(45)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d122h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd122h5
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
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d122h5l132
