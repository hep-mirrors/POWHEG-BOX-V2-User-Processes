module     p0_dbaru_epnebbbarg_d120h0l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d120h0l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd120h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd120
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
      use p0_dbaru_epnebbbarg_abbrevd120h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(46) :: acd120
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd120(1)=dotproduct(k2,ninjaE3)
      acd120(2)=dotproduct(ninjaE3,spvak1k2)
      acd120(3)=abb120(19)
      acd120(4)=dotproduct(ninjaE3,spvak1k7)
      acd120(5)=abb120(53)
      acd120(6)=dotproduct(ninjaE3,spvak1k3)
      acd120(7)=abb120(17)
      acd120(8)=dotproduct(ninjaE3,spval6k7)
      acd120(9)=abb120(48)
      acd120(10)=dotproduct(ninjaE3,spvak1l5)
      acd120(11)=abb120(36)
      acd120(12)=dotproduct(ninjaE3,spval6l5)
      acd120(13)=abb120(68)
      acd120(14)=dotproduct(k3,ninjaE3)
      acd120(15)=dotproduct(k4,ninjaE3)
      acd120(16)=dotproduct(ninjaE3,spvak2k3)
      acd120(17)=abb120(11)
      acd120(18)=dotproduct(ninjaE3,spvak4k2)
      acd120(19)=abb120(21)
      acd120(20)=dotproduct(ninjaE3,spvak4k3)
      acd120(21)=abb120(20)
      acd120(22)=abb120(55)
      acd120(23)=dotproduct(ninjaE3,spval5k3)
      acd120(24)=abb120(25)
      acd120(25)=abb120(47)
      acd120(26)=abb120(14)
      acd120(27)=abb120(56)
      acd120(28)=dotproduct(ninjaE3,spval6k3)
      acd120(29)=abb120(54)
      acd120(30)=dotproduct(ninjaE3,spval6k2)
      acd120(31)=abb120(24)
      acd120(32)=abb120(39)
      acd120(33)=abb120(42)
      acd120(34)=dotproduct(ninjaE3,spval5k2)
      acd120(35)=abb120(38)
      acd120(36)=abb120(49)
      acd120(37)=abb120(57)
      acd120(38)=abb120(63)
      acd120(39)=-acd120(15)+acd120(1)-acd120(14)
      acd120(40)=acd120(3)*acd120(39)
      acd120(41)=acd120(16)*acd120(17)
      acd120(42)=-acd120(24)*acd120(23)
      acd120(43)=acd120(20)*acd120(21)
      acd120(44)=acd120(18)*acd120(19)
      acd120(45)=acd120(12)*acd120(25)
      acd120(46)=-acd120(8)*acd120(22)
      acd120(40)=acd120(46)+acd120(45)+acd120(44)+acd120(43)+acd120(41)+acd120(&
      &42)+acd120(40)
      acd120(40)=acd120(2)*acd120(40)
      acd120(41)=acd120(11)*acd120(39)
      acd120(42)=acd120(28)*acd120(35)
      acd120(43)=-acd120(25)*acd120(30)
      acd120(44)=acd120(20)*acd120(37)
      acd120(45)=acd120(18)*acd120(32)
      acd120(41)=acd120(45)+acd120(44)+acd120(42)+acd120(43)+acd120(41)
      acd120(41)=acd120(10)*acd120(41)
      acd120(42)=-acd120(5)*acd120(39)
      acd120(43)=-acd120(28)*acd120(29)
      acd120(44)=acd120(22)*acd120(30)
      acd120(45)=acd120(20)*acd120(27)
      acd120(46)=acd120(18)*acd120(26)
      acd120(42)=acd120(46)+acd120(45)+acd120(43)+acd120(44)+acd120(42)
      acd120(42)=acd120(4)*acd120(42)
      acd120(43)=acd120(13)*acd120(39)
      acd120(44)=-acd120(6)*acd120(35)
      acd120(45)=acd120(20)*acd120(38)
      acd120(46)=acd120(18)*acd120(33)
      acd120(43)=acd120(46)+acd120(44)+acd120(45)+acd120(43)
      acd120(43)=acd120(12)*acd120(43)
      acd120(39)=-acd120(9)*acd120(39)
      acd120(44)=acd120(6)*acd120(29)
      acd120(45)=acd120(20)*acd120(36)
      acd120(46)=acd120(18)*acd120(31)
      acd120(39)=acd120(46)+acd120(44)+acd120(45)+acd120(39)
      acd120(39)=acd120(8)*acd120(39)
      acd120(44)=acd120(24)*acd120(34)
      acd120(45)=acd120(1)*acd120(7)
      acd120(44)=acd120(44)+acd120(45)
      acd120(44)=acd120(6)*acd120(44)
      acd120(39)=acd120(40)+acd120(42)+acd120(39)+acd120(41)+acd120(43)+acd120(&
      &44)
      brack(ninjaidxt0x0mu0)=acd120(39)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d120h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd120h0
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
end module     p0_dbaru_epnebbbarg_d120h0l132
