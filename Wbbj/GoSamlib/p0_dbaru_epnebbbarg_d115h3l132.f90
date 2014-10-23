module     p0_dbaru_epnebbbarg_d115h3l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d115h3l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd115h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd115
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      brack(ninjaidxt1x0mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd115h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(58) :: acd115
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd115(1)=dotproduct(k1,ninjaE3)
      acd115(2)=dotproduct(ninjaE3,spvak2k7)
      acd115(3)=abb115(41)
      acd115(4)=dotproduct(k2,ninjaE3)
      acd115(5)=abb115(90)
      acd115(6)=dotproduct(k3,ninjaE3)
      acd115(7)=dotproduct(k4,ninjaE3)
      acd115(8)=dotproduct(l5,ninjaE3)
      acd115(9)=abb115(55)
      acd115(10)=dotproduct(l6,ninjaE3)
      acd115(11)=dotproduct(k7,ninjaE3)
      acd115(12)=abb115(15)
      acd115(13)=dotproduct(ninjaE3,spvak4k3)
      acd115(14)=abb115(74)
      acd115(15)=dotproduct(ninjaE3,spvak2l5)
      acd115(16)=abb115(24)
      acd115(17)=dotproduct(ninjaE3,spvak4k2)
      acd115(18)=abb115(22)
      acd115(19)=dotproduct(ninjaE3,spvak2l6)
      acd115(20)=abb115(70)
      acd115(21)=abb115(25)
      acd115(22)=abb115(50)
      acd115(23)=abb115(53)
      acd115(24)=abb115(63)
      acd115(25)=abb115(14)
      acd115(26)=abb115(75)
      acd115(27)=dotproduct(ninjaA0,ninjaE3)
      acd115(28)=abb115(12)
      acd115(29)=dotproduct(ninjaE3,spvak1l5)
      acd115(30)=abb115(13)
      acd115(31)=abb115(20)
      acd115(32)=dotproduct(ninjaE3,spvak1l6)
      acd115(33)=abb115(19)
      acd115(34)=dotproduct(ninjaE3,spvak1k3)
      acd115(35)=abb115(28)
      acd115(36)=dotproduct(ninjaE3,spvak1k2)
      acd115(37)=abb115(30)
      acd115(38)=abb115(29)
      acd115(39)=abb115(54)
      acd115(40)=abb115(17)
      acd115(41)=dotproduct(ninjaE3,spvak1k7)
      acd115(42)=abb115(18)
      acd115(43)=abb115(33)
      acd115(44)=abb115(23)
      acd115(45)=acd115(10)+acd115(8)
      acd115(46)=-acd115(22)*acd115(45)
      acd115(47)=2.0_ki*acd115(27)
      acd115(48)=-acd115(22)*acd115(47)
      acd115(49)=acd115(7)+acd115(6)
      acd115(50)=acd115(21)*acd115(49)
      acd115(51)=acd115(3)*acd115(1)
      acd115(52)=acd115(12)*acd115(4)
      acd115(53)=acd115(28)*acd115(13)
      acd115(54)=acd115(30)*acd115(29)
      acd115(55)=acd115(31)*acd115(17)
      acd115(56)=acd115(33)*acd115(32)
      acd115(57)=acd115(35)*acd115(34)
      acd115(58)=acd115(37)*acd115(36)
      acd115(46)=acd115(50)+acd115(46)+acd115(58)+acd115(57)+acd115(56)+acd115(&
      &55)+acd115(54)+acd115(53)+acd115(52)+acd115(51)+acd115(48)
      acd115(46)=acd115(2)*acd115(46)
      acd115(48)=acd115(49)-acd115(4)
      acd115(50)=acd115(9)*acd115(48)
      acd115(51)=-acd115(23)*acd115(13)
      acd115(52)=acd115(24)*acd115(17)
      acd115(50)=acd115(52)+acd115(51)+acd115(50)
      acd115(45)=acd115(45)-acd115(11)
      acd115(45)=acd115(45)*acd115(50)
      acd115(50)=acd115(14)*acd115(4)
      acd115(51)=acd115(38)*acd115(15)
      acd115(52)=acd115(39)*acd115(19)
      acd115(50)=acd115(52)+acd115(51)+acd115(50)
      acd115(50)=acd115(13)*acd115(50)
      acd115(51)=acd115(18)*acd115(4)
      acd115(52)=acd115(40)*acd115(15)
      acd115(53)=acd115(43)*acd115(19)
      acd115(51)=acd115(53)+acd115(52)+acd115(51)
      acd115(51)=acd115(17)*acd115(51)
      acd115(52)=acd115(25)*acd115(15)
      acd115(53)=acd115(26)*acd115(19)
      acd115(52)=acd115(53)+acd115(52)
      acd115(47)=acd115(47)-acd115(11)
      acd115(47)=acd115(47)*acd115(52)
      acd115(52)=-acd115(16)*acd115(15)
      acd115(53)=-acd115(20)*acd115(19)
      acd115(52)=acd115(53)+acd115(52)
      acd115(48)=acd115(48)*acd115(52)
      acd115(52)=acd115(42)*acd115(15)
      acd115(53)=acd115(44)*acd115(19)
      acd115(52)=acd115(53)+acd115(52)
      acd115(52)=acd115(41)*acd115(52)
      acd115(49)=acd115(4)*acd115(49)
      acd115(53)=acd115(4)**2
      acd115(49)=-acd115(53)+acd115(49)
      acd115(49)=acd115(5)*acd115(49)
      acd115(45)=acd115(49)+acd115(51)+acd115(50)+acd115(52)+acd115(45)+acd115(&
      &46)+acd115(48)+acd115(47)
      brack(ninjaidxt0x0mu0)=acd115(45)
      brack(ninjaidxt0x1mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d115h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd115h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k7-k4
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
end module     p0_dbaru_epnebbbarg_d115h3l132
