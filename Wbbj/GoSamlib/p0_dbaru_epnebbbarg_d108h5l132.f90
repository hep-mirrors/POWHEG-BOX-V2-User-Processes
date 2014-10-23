module     p0_dbaru_epnebbbarg_d108h5l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d108h5l132.f90
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
      use p0_dbaru_epnebbbarg_abbrevd108h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd108
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
      use p0_dbaru_epnebbbarg_abbrevd108h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(47) :: acd108
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd108(1)=dotproduct(k2,ninjaE3)
      acd108(2)=dotproduct(ninjaE3,spvak7k2)
      acd108(3)=abb108(25)
      acd108(4)=dotproduct(ninjaE3,spval6l5)
      acd108(5)=abb108(59)
      acd108(6)=dotproduct(ninjaE3,spvak7l5)
      acd108(7)=abb108(84)
      acd108(8)=dotproduct(ninjaE3,spvak1k2)
      acd108(9)=abb108(22)
      acd108(10)=dotproduct(ninjaE3,spvak1l5)
      acd108(11)=abb108(23)
      acd108(12)=dotproduct(ninjaE3,spvak1k3)
      acd108(13)=abb108(50)
      acd108(14)=dotproduct(ninjaE3,spvak7k3)
      acd108(15)=abb108(87)
      acd108(16)=dotproduct(k3,ninjaE3)
      acd108(17)=dotproduct(k4,ninjaE3)
      acd108(18)=dotproduct(ninjaE3,spvak4k3)
      acd108(19)=abb108(11)
      acd108(20)=abb108(28)
      acd108(21)=abb108(37)
      acd108(22)=abb108(33)
      acd108(23)=abb108(43)
      acd108(24)=dotproduct(ninjaE3,spvak4k2)
      acd108(25)=abb108(26)
      acd108(26)=abb108(66)
      acd108(27)=dotproduct(ninjaE3,spvak2k3)
      acd108(28)=abb108(27)
      acd108(29)=abb108(14)
      acd108(30)=abb108(17)
      acd108(31)=abb108(19)
      acd108(32)=abb108(41)
      acd108(33)=abb108(39)
      acd108(34)=abb108(35)
      acd108(35)=abb108(48)
      acd108(36)=dotproduct(ninjaE3,spval6k3)
      acd108(37)=dotproduct(ninjaE3,spval6k2)
      acd108(38)=abb108(34)
      acd108(39)=acd108(26)*acd108(2)
      acd108(40)=acd108(33)*acd108(8)
      acd108(41)=-acd108(34)*acd108(12)
      acd108(42)=-acd108(35)*acd108(14)
      acd108(43)=acd108(20)*acd108(18)
      acd108(44)=acd108(29)*acd108(24)
      acd108(39)=acd108(44)+acd108(43)+acd108(42)+acd108(41)+acd108(40)+acd108(&
      &39)
      acd108(39)=acd108(4)*acd108(39)
      acd108(40)=-acd108(3)*acd108(2)
      acd108(41)=acd108(5)*acd108(4)
      acd108(42)=-acd108(7)*acd108(6)
      acd108(43)=-acd108(9)*acd108(8)
      acd108(44)=-acd108(11)*acd108(10)
      acd108(40)=acd108(44)+acd108(43)+acd108(42)+acd108(40)+acd108(41)
      acd108(41)=-acd108(1)+acd108(17)+acd108(16)
      acd108(40)=acd108(41)*acd108(40)
      acd108(41)=acd108(19)*acd108(2)
      acd108(42)=acd108(21)*acd108(6)
      acd108(43)=acd108(22)*acd108(8)
      acd108(44)=acd108(23)*acd108(10)
      acd108(41)=acd108(44)+acd108(43)+acd108(42)+acd108(41)
      acd108(41)=acd108(18)*acd108(41)
      acd108(42)=acd108(25)*acd108(2)
      acd108(43)=acd108(30)*acd108(6)
      acd108(44)=acd108(31)*acd108(8)
      acd108(45)=acd108(32)*acd108(10)
      acd108(42)=acd108(45)+acd108(44)+acd108(43)+acd108(42)
      acd108(42)=acd108(24)*acd108(42)
      acd108(43)=acd108(13)*acd108(12)
      acd108(44)=acd108(15)*acd108(14)
      acd108(43)=acd108(44)+acd108(43)
      acd108(43)=acd108(1)*acd108(43)
      acd108(44)=acd108(28)*acd108(2)
      acd108(45)=acd108(38)*acd108(8)
      acd108(44)=acd108(45)+acd108(44)
      acd108(44)=acd108(27)*acd108(44)
      acd108(45)=acd108(34)*acd108(10)
      acd108(46)=acd108(35)*acd108(6)
      acd108(45)=acd108(45)+acd108(46)
      acd108(45)=acd108(36)*acd108(45)
      acd108(46)=-acd108(26)*acd108(6)
      acd108(47)=-acd108(33)*acd108(10)
      acd108(46)=acd108(46)+acd108(47)
      acd108(46)=acd108(37)*acd108(46)
      acd108(39)=acd108(46)+acd108(45)+acd108(39)+acd108(42)+acd108(41)+acd108(&
      &44)+acd108(43)+acd108(40)
      brack(ninjaidxt0x0mu0)=acd108(39)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d108h5_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd108h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k5
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d108h5l132
