module     p0_dbaru_epnebbbarg_d334h1l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d334h1l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd334h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(25) :: acd334
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd334(1)=dotproduct(k2,ninjaE3)
      acd334(2)=dotproduct(ninjaE3,spvak2k7)
      acd334(3)=abb334(18)
      acd334(4)=dotproduct(l6,ninjaE3)
      acd334(5)=abb334(14)
      acd334(6)=dotproduct(ninjaE3,spval6k2)
      acd334(7)=abb334(13)
      acd334(8)=dotproduct(ninjaE3,spval6k7)
      acd334(9)=abb334(17)
      acd334(10)=dotproduct(ninjaE3,spvak7k2)
      acd334(11)=abb334(20)
      acd334(12)=dotproduct(ninjaE3,spval6k3)
      acd334(13)=abb334(21)
      acd334(14)=dotproduct(ninjaE3,spvak1k2)
      acd334(15)=abb334(22)
      acd334(16)=dotproduct(ninjaE3,spvak4k2)
      acd334(17)=abb334(23)
      acd334(18)=acd334(3)*acd334(1)
      acd334(19)=acd334(5)*acd334(4)
      acd334(20)=acd334(7)*acd334(6)
      acd334(21)=acd334(9)*acd334(8)
      acd334(22)=acd334(11)*acd334(10)
      acd334(23)=acd334(13)*acd334(12)
      acd334(24)=acd334(15)*acd334(14)
      acd334(25)=acd334(17)*acd334(16)
      acd334(18)=acd334(25)+acd334(24)+acd334(23)+acd334(22)+acd334(21)+acd334(&
      &20)+acd334(18)+acd334(19)
      acd334(18)=acd334(2)*acd334(18)
      brack(ninjaidxt1x0mu0)=acd334(18)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd334h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(54) :: acd334
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd334(1)=dotproduct(k2,ninjaA1)
      acd334(2)=dotproduct(ninjaE3,spvak2k7)
      acd334(3)=abb334(18)
      acd334(4)=dotproduct(k2,ninjaE3)
      acd334(5)=dotproduct(ninjaA1,spvak2k7)
      acd334(6)=dotproduct(l6,ninjaA1)
      acd334(7)=abb334(14)
      acd334(8)=dotproduct(l6,ninjaE3)
      acd334(9)=dotproduct(ninjaE3,spval6k2)
      acd334(10)=abb334(13)
      acd334(11)=dotproduct(ninjaE3,spval6k7)
      acd334(12)=abb334(17)
      acd334(13)=dotproduct(ninjaE3,spvak7k2)
      acd334(14)=abb334(20)
      acd334(15)=dotproduct(ninjaE3,spval6k3)
      acd334(16)=abb334(21)
      acd334(17)=dotproduct(ninjaE3,spvak1k2)
      acd334(18)=abb334(22)
      acd334(19)=dotproduct(ninjaE3,spvak4k2)
      acd334(20)=abb334(23)
      acd334(21)=dotproduct(ninjaA1,spval6k2)
      acd334(22)=dotproduct(ninjaA1,spval6k7)
      acd334(23)=dotproduct(ninjaA1,spvak7k2)
      acd334(24)=dotproduct(ninjaA1,spval6k3)
      acd334(25)=dotproduct(ninjaA1,spvak1k2)
      acd334(26)=dotproduct(ninjaA1,spvak4k2)
      acd334(27)=dotproduct(k2,ninjaA0)
      acd334(28)=dotproduct(ninjaA0,spvak2k7)
      acd334(29)=abb334(19)
      acd334(30)=dotproduct(l6,ninjaA0)
      acd334(31)=abb334(27)
      acd334(32)=dotproduct(k7,ninjaE3)
      acd334(33)=abb334(73)
      acd334(34)=dotproduct(ninjaA0,ninjaE3)
      acd334(35)=abb334(29)
      acd334(36)=dotproduct(ninjaA0,spval6k2)
      acd334(37)=dotproduct(ninjaA0,spval6k7)
      acd334(38)=dotproduct(ninjaA0,spvak7k2)
      acd334(39)=dotproduct(ninjaA0,spval6k3)
      acd334(40)=dotproduct(ninjaA0,spvak1k2)
      acd334(41)=dotproduct(ninjaA0,spvak4k2)
      acd334(42)=abb334(12)
      acd334(43)=abb334(15)
      acd334(44)=abb334(16)
      acd334(45)=acd334(20)*acd334(19)
      acd334(46)=acd334(18)*acd334(17)
      acd334(47)=acd334(16)*acd334(15)
      acd334(48)=acd334(14)*acd334(13)
      acd334(49)=acd334(12)*acd334(11)
      acd334(50)=acd334(10)*acd334(9)
      acd334(51)=acd334(7)*acd334(8)
      acd334(52)=acd334(3)*acd334(4)
      acd334(45)=acd334(49)+acd334(50)+acd334(51)+acd334(52)+acd334(45)+acd334(&
      &46)+acd334(47)+acd334(48)
      acd334(46)=acd334(5)*acd334(45)
      acd334(47)=acd334(20)*acd334(26)
      acd334(48)=acd334(18)*acd334(25)
      acd334(49)=acd334(16)*acd334(24)
      acd334(50)=acd334(14)*acd334(23)
      acd334(51)=acd334(12)*acd334(22)
      acd334(52)=acd334(10)*acd334(21)
      acd334(53)=acd334(7)*acd334(6)
      acd334(54)=acd334(3)*acd334(1)
      acd334(47)=acd334(54)+acd334(53)+acd334(52)+acd334(51)+acd334(50)+acd334(&
      &49)+acd334(47)+acd334(48)
      acd334(47)=acd334(2)*acd334(47)
      acd334(46)=acd334(46)+acd334(47)
      acd334(45)=acd334(28)*acd334(45)
      acd334(47)=acd334(20)*acd334(41)
      acd334(48)=acd334(18)*acd334(40)
      acd334(49)=acd334(16)*acd334(39)
      acd334(50)=acd334(14)*acd334(38)
      acd334(51)=acd334(12)*acd334(37)
      acd334(52)=acd334(10)*acd334(36)
      acd334(53)=acd334(7)*acd334(30)
      acd334(54)=acd334(3)*acd334(27)
      acd334(47)=acd334(54)+acd334(53)+acd334(52)+acd334(51)+acd334(50)+acd334(&
      &49)+acd334(48)+acd334(42)+acd334(47)
      acd334(47)=acd334(2)*acd334(47)
      acd334(48)=acd334(34)*acd334(35)
      acd334(49)=acd334(32)*acd334(33)
      acd334(50)=acd334(11)*acd334(44)
      acd334(51)=acd334(9)*acd334(43)
      acd334(52)=acd334(8)*acd334(31)
      acd334(53)=acd334(4)*acd334(29)
      acd334(45)=acd334(47)+acd334(45)+acd334(53)+acd334(52)+acd334(51)+acd334(&
      &50)+2.0_ki*acd334(48)+acd334(49)
      brack(ninjaidxt0x0mu0)=acd334(45)
      brack(ninjaidxt0x1mu0)=acd334(46)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d334h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd334h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7
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
end module     p0_dbaru_epnebbbarg_d334h1l132
