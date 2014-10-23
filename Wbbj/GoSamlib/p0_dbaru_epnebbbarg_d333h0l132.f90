module     p0_dbaru_epnebbbarg_d333h0l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d333h0l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd333h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(22) :: acd333
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd333(1)=dotproduct(k2,ninjaE3)
      acd333(2)=dotproduct(ninjaE3,spvak2k7)
      acd333(3)=abb333(24)
      acd333(4)=dotproduct(l6,ninjaE3)
      acd333(5)=abb333(29)
      acd333(6)=dotproduct(ninjaE3,spvak1k2)
      acd333(7)=abb333(13)
      acd333(8)=dotproduct(ninjaE3,spval6k2)
      acd333(9)=abb333(14)
      acd333(10)=dotproduct(ninjaE3,spval6k7)
      acd333(11)=abb333(17)
      acd333(12)=dotproduct(ninjaE3,spvak7k2)
      acd333(13)=abb333(18)
      acd333(14)=dotproduct(ninjaE3,spval6k3)
      acd333(15)=abb333(34)
      acd333(16)=acd333(3)*acd333(1)
      acd333(17)=acd333(5)*acd333(4)
      acd333(18)=acd333(7)*acd333(6)
      acd333(19)=acd333(9)*acd333(8)
      acd333(20)=acd333(11)*acd333(10)
      acd333(21)=acd333(13)*acd333(12)
      acd333(22)=acd333(15)*acd333(14)
      acd333(16)=acd333(22)+acd333(21)+acd333(20)+acd333(19)+acd333(18)+acd333(&
      &16)+acd333(17)
      acd333(16)=acd333(2)*acd333(16)
      brack(ninjaidxt1x0mu0)=acd333(16)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd333h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(48) :: acd333
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd333(1)=dotproduct(k2,ninjaA1)
      acd333(2)=dotproduct(ninjaE3,spvak2k7)
      acd333(3)=abb333(24)
      acd333(4)=dotproduct(k2,ninjaE3)
      acd333(5)=dotproduct(ninjaA1,spvak2k7)
      acd333(6)=dotproduct(l6,ninjaA1)
      acd333(7)=abb333(29)
      acd333(8)=dotproduct(l6,ninjaE3)
      acd333(9)=dotproduct(ninjaA1,spvak1k2)
      acd333(10)=abb333(13)
      acd333(11)=dotproduct(ninjaE3,spvak1k2)
      acd333(12)=dotproduct(ninjaE3,spval6k2)
      acd333(13)=abb333(14)
      acd333(14)=dotproduct(ninjaE3,spval6k7)
      acd333(15)=abb333(17)
      acd333(16)=dotproduct(ninjaE3,spvak7k2)
      acd333(17)=abb333(18)
      acd333(18)=dotproduct(ninjaE3,spval6k3)
      acd333(19)=abb333(34)
      acd333(20)=dotproduct(ninjaA1,spval6k2)
      acd333(21)=dotproduct(ninjaA1,spval6k7)
      acd333(22)=dotproduct(ninjaA1,spvak7k2)
      acd333(23)=dotproduct(ninjaA1,spval6k3)
      acd333(24)=dotproduct(k2,ninjaA0)
      acd333(25)=dotproduct(ninjaA0,spvak2k7)
      acd333(26)=dotproduct(l6,ninjaA0)
      acd333(27)=dotproduct(k7,ninjaE3)
      acd333(28)=abb333(33)
      acd333(29)=dotproduct(ninjaA0,ninjaE3)
      acd333(30)=abb333(51)
      acd333(31)=dotproduct(ninjaA0,spvak1k2)
      acd333(32)=dotproduct(ninjaA0,spval6k2)
      acd333(33)=dotproduct(ninjaA0,spval6k7)
      acd333(34)=dotproduct(ninjaA0,spvak7k2)
      acd333(35)=dotproduct(ninjaA0,spval6k3)
      acd333(36)=abb333(23)
      acd333(37)=dotproduct(ninjaE3,spvak1k7)
      acd333(38)=abb333(15)
      acd333(39)=abb333(28)
      acd333(40)=acd333(19)*acd333(18)
      acd333(41)=acd333(17)*acd333(16)
      acd333(42)=acd333(15)*acd333(14)
      acd333(43)=acd333(13)*acd333(12)
      acd333(44)=acd333(10)*acd333(11)
      acd333(45)=acd333(7)*acd333(8)
      acd333(46)=acd333(3)*acd333(4)
      acd333(40)=acd333(42)+acd333(43)+acd333(44)+acd333(45)+acd333(46)+acd333(&
      &40)+acd333(41)
      acd333(41)=acd333(5)*acd333(40)
      acd333(42)=acd333(19)*acd333(23)
      acd333(43)=acd333(17)*acd333(22)
      acd333(44)=acd333(15)*acd333(21)
      acd333(45)=acd333(13)*acd333(20)
      acd333(46)=acd333(10)*acd333(9)
      acd333(47)=acd333(7)*acd333(6)
      acd333(48)=acd333(3)*acd333(1)
      acd333(42)=acd333(48)+acd333(47)+acd333(46)+acd333(45)+acd333(44)+acd333(&
      &42)+acd333(43)
      acd333(42)=acd333(2)*acd333(42)
      acd333(41)=acd333(41)+acd333(42)
      acd333(40)=acd333(25)*acd333(40)
      acd333(42)=acd333(19)*acd333(35)
      acd333(43)=acd333(17)*acd333(34)
      acd333(44)=acd333(15)*acd333(33)
      acd333(45)=acd333(13)*acd333(32)
      acd333(46)=acd333(10)*acd333(31)
      acd333(47)=acd333(7)*acd333(26)
      acd333(48)=acd333(3)*acd333(24)
      acd333(42)=acd333(48)+acd333(47)+acd333(46)+acd333(45)+acd333(44)+acd333(&
      &43)+acd333(36)+acd333(42)
      acd333(42)=acd333(2)*acd333(42)
      acd333(43)=acd333(37)*acd333(38)
      acd333(44)=acd333(29)*acd333(30)
      acd333(45)=acd333(27)*acd333(28)
      acd333(46)=acd333(14)*acd333(39)
      acd333(40)=acd333(42)+acd333(40)+acd333(46)+acd333(45)+acd333(43)+2.0_ki*&
      &acd333(44)
      brack(ninjaidxt0x0mu0)=acd333(40)
      brack(ninjaidxt0x1mu0)=acd333(41)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d333h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd333h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6
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
end module     p0_dbaru_epnebbbarg_d333h0l132
