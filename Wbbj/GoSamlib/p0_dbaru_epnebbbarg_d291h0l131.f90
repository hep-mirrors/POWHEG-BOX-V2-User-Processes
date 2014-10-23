module     p0_dbaru_epnebbbarg_d291h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d291h0l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1mu0 = 0
   integer, parameter :: ninjaidxt0mu0 = 1
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd291h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd291
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd291h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(46) :: acd291
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd291(1)=dotproduct(ninjaE3,spvak2k7)
      acd291(2)=dotproduct(ninjaE3,spvak4k3)
      acd291(3)=dotproduct(ninjaE3,spval6k2)
      acd291(4)=dotproduct(ninjaE3,spvak1k2)
      acd291(5)=abb291(42)
      acd291(6)=dotproduct(k1,ninjaE3)
      acd291(7)=dotproduct(ninjaE3,spval6k3)
      acd291(8)=abb291(37)
      acd291(9)=dotproduct(k2,ninjaE3)
      acd291(10)=abb291(20)
      acd291(11)=dotproduct(ninjaE3,spvak4k2)
      acd291(12)=abb291(29)
      acd291(13)=dotproduct(l5,ninjaE3)
      acd291(14)=abb291(14)
      acd291(15)=abb291(24)
      acd291(16)=dotproduct(l6,ninjaE3)
      acd291(17)=abb291(30)
      acd291(18)=dotproduct(k7,ninjaE3)
      acd291(19)=dotproduct(ninjaA,ninjaE3)
      acd291(20)=abb291(22)
      acd291(21)=abb291(21)
      acd291(22)=abb291(41)
      acd291(23)=dotproduct(ninjaA,spvak2k7)
      acd291(24)=dotproduct(ninjaA,spvak4k3)
      acd291(25)=dotproduct(ninjaA,spval6k2)
      acd291(26)=dotproduct(ninjaA,spvak1k2)
      acd291(27)=dotproduct(ninjaE3,spval5k2)
      acd291(28)=abb291(12)
      acd291(29)=abb291(15)
      acd291(30)=abb291(18)
      acd291(31)=dotproduct(ninjaE3,spval6l5)
      acd291(32)=abb291(33)
      acd291(33)=abb291(53)
      acd291(34)=dotproduct(ninjaE3,spval6k7)
      acd291(35)=abb291(48)
      acd291(36)=dotproduct(ninjaE3,spval6k1)
      acd291(37)=abb291(51)
      acd291(38)=acd291(2)*acd291(5)
      acd291(39)=acd291(38)*acd291(3)
      acd291(40)=acd291(1)*acd291(4)*acd291(39)
      acd291(41)=acd291(31)*acd291(32)
      acd291(42)=acd291(16)*acd291(17)
      acd291(43)=acd291(7)*acd291(33)
      acd291(38)=acd291(25)*acd291(38)
      acd291(44)=acd291(5)*acd291(24)
      acd291(44)=acd291(30)+acd291(44)
      acd291(44)=acd291(3)*acd291(44)
      acd291(38)=acd291(44)+acd291(38)+acd291(43)+acd291(41)+acd291(42)
      acd291(38)=acd291(4)*acd291(38)
      acd291(41)=acd291(16)+acd291(13)
      acd291(42)=-acd291(14)*acd291(41)
      acd291(43)=acd291(9)*acd291(10)
      acd291(44)=2.0_ki*acd291(19)
      acd291(45)=acd291(20)*acd291(44)
      acd291(46)=acd291(5)*acd291(26)
      acd291(46)=acd291(29)+acd291(46)
      acd291(46)=acd291(2)*acd291(46)
      acd291(42)=acd291(46)+acd291(45)+acd291(43)+acd291(42)
      acd291(42)=acd291(3)*acd291(42)
      acd291(41)=acd291(15)*acd291(41)
      acd291(43)=acd291(9)*acd291(12)
      acd291(45)=acd291(21)*acd291(44)
      acd291(41)=acd291(45)+acd291(43)+acd291(41)
      acd291(41)=acd291(11)*acd291(41)
      acd291(43)=acd291(2)*acd291(27)*acd291(28)
      acd291(38)=acd291(38)+acd291(42)+acd291(41)+acd291(43)
      acd291(38)=acd291(1)*acd291(38)
      acd291(41)=-acd291(18)+acd291(6)
      acd291(41)=acd291(8)*acd291(41)
      acd291(42)=acd291(22)*acd291(44)
      acd291(41)=acd291(41)+acd291(42)
      acd291(41)=acd291(7)*acd291(41)
      acd291(42)=acd291(36)*acd291(37)
      acd291(43)=acd291(34)*acd291(35)
      acd291(42)=acd291(42)+acd291(43)
      acd291(42)=acd291(2)*acd291(42)
      acd291(39)=acd291(23)*acd291(39)
      acd291(39)=acd291(39)+acd291(41)+acd291(42)
      acd291(39)=acd291(4)*acd291(39)
      acd291(38)=acd291(39)+acd291(38)
      brack(ninjaidxt1mu0)=acd291(40)
      brack(ninjaidxt0mu0)=acd291(38)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d291h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd291h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6+k5
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d291h0l131
