module     p0_dbaru_epnebbbarg_d42h1l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d42h1l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd42h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(20) :: acd42
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd42(1)=dotproduct(k2,ninjaE3)
      acd42(2)=dotproduct(ninjaE3,spvak4k3)
      acd42(3)=abb42(27)
      acd42(4)=dotproduct(l5,ninjaE3)
      acd42(5)=abb42(21)
      acd42(6)=dotproduct(l6,ninjaE3)
      acd42(7)=dotproduct(ninjaE3,spval6k2)
      acd42(8)=abb42(11)
      acd42(9)=dotproduct(ninjaE3,spvak1l5)
      acd42(10)=abb42(12)
      acd42(11)=dotproduct(ninjaE3,spvak1k2)
      acd42(12)=abb42(14)
      acd42(13)=dotproduct(ninjaE3,spval6l5)
      acd42(14)=abb42(28)
      acd42(15)=acd42(6)+acd42(4)
      acd42(15)=acd42(15)*acd42(5)
      acd42(16)=acd42(3)*acd42(1)
      acd42(17)=acd42(8)*acd42(7)
      acd42(18)=acd42(10)*acd42(9)
      acd42(19)=acd42(12)*acd42(11)
      acd42(20)=acd42(14)*acd42(13)
      acd42(15)=acd42(15)+acd42(20)+acd42(19)+acd42(18)+acd42(17)+acd42(16)
      acd42(15)=acd42(2)*acd42(15)
      brack(ninjaidxt1x0mu0)=acd42(15)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd42h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(46) :: acd42
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd42(1)=dotproduct(k2,ninjaA1)
      acd42(2)=dotproduct(ninjaE3,spvak4k3)
      acd42(3)=abb42(27)
      acd42(4)=dotproduct(k2,ninjaE3)
      acd42(5)=dotproduct(ninjaA1,spvak4k3)
      acd42(6)=dotproduct(l5,ninjaA1)
      acd42(7)=abb42(21)
      acd42(8)=dotproduct(l5,ninjaE3)
      acd42(9)=dotproduct(l6,ninjaA1)
      acd42(10)=dotproduct(l6,ninjaE3)
      acd42(11)=dotproduct(ninjaE3,spval6k2)
      acd42(12)=abb42(11)
      acd42(13)=dotproduct(ninjaE3,spvak1l5)
      acd42(14)=abb42(12)
      acd42(15)=dotproduct(ninjaE3,spvak1k2)
      acd42(16)=abb42(14)
      acd42(17)=dotproduct(ninjaE3,spval6l5)
      acd42(18)=abb42(28)
      acd42(19)=dotproduct(ninjaA1,spval6k2)
      acd42(20)=dotproduct(ninjaA1,spvak1l5)
      acd42(21)=dotproduct(ninjaA1,spvak1k2)
      acd42(22)=dotproduct(ninjaA1,spval6l5)
      acd42(23)=dotproduct(k2,ninjaA0)
      acd42(24)=dotproduct(ninjaA0,spvak4k3)
      acd42(25)=dotproduct(k3,ninjaE3)
      acd42(26)=abb42(25)
      acd42(27)=dotproduct(k4,ninjaE3)
      acd42(28)=dotproduct(l5,ninjaA0)
      acd42(29)=dotproduct(l6,ninjaA0)
      acd42(30)=dotproduct(ninjaA0,ninjaE3)
      acd42(31)=abb42(17)
      acd42(32)=dotproduct(ninjaA0,spval6k2)
      acd42(33)=dotproduct(ninjaA0,spvak1l5)
      acd42(34)=dotproduct(ninjaA0,spvak1k2)
      acd42(35)=dotproduct(ninjaA0,spval6l5)
      acd42(36)=abb42(15)
      acd42(37)=dotproduct(ninjaE3,spvak1k3)
      acd42(38)=abb42(13)
      acd42(39)=acd42(8)+acd42(10)
      acd42(39)=acd42(39)*acd42(7)
      acd42(40)=acd42(18)*acd42(17)
      acd42(41)=acd42(16)*acd42(15)
      acd42(42)=acd42(14)*acd42(13)
      acd42(43)=acd42(12)*acd42(11)
      acd42(44)=acd42(3)*acd42(4)
      acd42(39)=acd42(39)+acd42(44)+acd42(40)+acd42(41)+acd42(42)+acd42(43)
      acd42(40)=acd42(5)*acd42(39)
      acd42(41)=acd42(18)*acd42(22)
      acd42(42)=acd42(16)*acd42(21)
      acd42(43)=acd42(14)*acd42(20)
      acd42(44)=acd42(12)*acd42(19)
      acd42(45)=acd42(3)*acd42(1)
      acd42(46)=acd42(9)+acd42(6)
      acd42(46)=acd42(7)*acd42(46)
      acd42(41)=acd42(46)+acd42(45)+acd42(44)+acd42(43)+acd42(41)+acd42(42)
      acd42(41)=acd42(2)*acd42(41)
      acd42(40)=acd42(41)+acd42(40)
      acd42(39)=acd42(24)*acd42(39)
      acd42(41)=acd42(18)*acd42(35)
      acd42(42)=acd42(16)*acd42(34)
      acd42(43)=acd42(14)*acd42(33)
      acd42(44)=acd42(12)*acd42(32)
      acd42(45)=acd42(3)*acd42(23)
      acd42(46)=acd42(29)+acd42(28)
      acd42(46)=acd42(7)*acd42(46)
      acd42(41)=acd42(46)+acd42(45)+acd42(44)+acd42(43)+acd42(42)+acd42(36)+acd&
      &42(41)
      acd42(41)=acd42(2)*acd42(41)
      acd42(42)=acd42(37)*acd42(38)
      acd42(43)=acd42(30)*acd42(31)
      acd42(44)=-acd42(27)-acd42(25)
      acd42(44)=acd42(26)*acd42(44)
      acd42(39)=acd42(41)+acd42(44)+acd42(42)+2.0_ki*acd42(43)+acd42(39)
      brack(ninjaidxt0x0mu0)=acd42(39)
      brack(ninjaidxt0x1mu0)=acd42(40)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d42h1_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd42h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
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
end module     p0_dbaru_epnebbbarg_d42h1l132
