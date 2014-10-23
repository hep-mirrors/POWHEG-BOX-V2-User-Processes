module     p0_dbaru_epnebbbarg_d65h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d65h1l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd65h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(64) :: acd65
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd65(1)=dotproduct(k1,ninjaE3)
      acd65(2)=abb65(24)
      acd65(3)=dotproduct(k2,ninjaE3)
      acd65(4)=abb65(35)
      acd65(5)=dotproduct(k3,ninjaE3)
      acd65(6)=abb65(101)
      acd65(7)=dotproduct(k4,ninjaE3)
      acd65(8)=dotproduct(l5,ninjaE3)
      acd65(9)=abb65(28)
      acd65(10)=dotproduct(l6,ninjaE3)
      acd65(11)=abb65(54)
      acd65(12)=dotproduct(k7,ninjaE3)
      acd65(13)=abb65(22)
      acd65(14)=dotproduct(ninjaE3,spvak2k7)
      acd65(15)=abb65(13)
      acd65(16)=dotproduct(ninjaE3,spvak2k1)
      acd65(17)=abb65(14)
      acd65(18)=dotproduct(ninjaE3,spvak2l6)
      acd65(19)=abb65(15)
      acd65(20)=dotproduct(ninjaE3,spvak2l5)
      acd65(21)=abb65(17)
      acd65(22)=dotproduct(ninjaE3,spvak4k3)
      acd65(23)=abb65(18)
      acd65(24)=dotproduct(ninjaE3,spvak4k2)
      acd65(25)=abb65(19)
      acd65(26)=dotproduct(ninjaE3,spvak1l6)
      acd65(27)=abb65(20)
      acd65(28)=dotproduct(ninjaE3,spvak1l5)
      acd65(29)=abb65(21)
      acd65(30)=dotproduct(ninjaE3,spvak1k2)
      acd65(31)=abb65(23)
      acd65(32)=dotproduct(ninjaE3,spval6l5)
      acd65(33)=abb65(27)
      acd65(34)=dotproduct(ninjaE3,spval5k2)
      acd65(35)=abb65(32)
      acd65(36)=dotproduct(ninjaE3,spval6k2)
      acd65(37)=abb65(33)
      acd65(38)=dotproduct(ninjaE3,spval5k1)
      acd65(39)=abb65(36)
      acd65(40)=dotproduct(ninjaE3,spval6k1)
      acd65(41)=abb65(46)
      acd65(42)=dotproduct(ninjaE3,spval5l6)
      acd65(43)=abb65(57)
      acd65(44)=acd65(7)+acd65(5)
      acd65(44)=acd65(6)*acd65(44)
      acd65(45)=acd65(2)*acd65(1)
      acd65(46)=acd65(4)*acd65(3)
      acd65(47)=acd65(9)*acd65(8)
      acd65(48)=acd65(11)*acd65(10)
      acd65(49)=acd65(13)*acd65(12)
      acd65(50)=acd65(15)*acd65(14)
      acd65(51)=acd65(17)*acd65(16)
      acd65(52)=acd65(19)*acd65(18)
      acd65(53)=acd65(21)*acd65(20)
      acd65(54)=acd65(23)*acd65(22)
      acd65(55)=acd65(25)*acd65(24)
      acd65(56)=acd65(27)*acd65(26)
      acd65(57)=acd65(29)*acd65(28)
      acd65(58)=acd65(31)*acd65(30)
      acd65(59)=acd65(33)*acd65(32)
      acd65(60)=acd65(35)*acd65(34)
      acd65(61)=acd65(37)*acd65(36)
      acd65(62)=acd65(39)*acd65(38)
      acd65(63)=acd65(41)*acd65(40)
      acd65(64)=acd65(43)*acd65(42)
      acd65(44)=acd65(64)+acd65(63)+acd65(62)+acd65(61)+acd65(60)+acd65(59)+acd&
      &65(58)+acd65(57)+acd65(56)+acd65(55)+acd65(54)+acd65(53)+acd65(52)+acd65&
      &(51)+acd65(50)+acd65(49)+acd65(48)+acd65(47)+acd65(45)+acd65(46)+acd65(4&
      &4)
      brack(ninjaidxt2mu0)=acd65(44)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d65h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd65h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k7-k4
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d65h1l131
