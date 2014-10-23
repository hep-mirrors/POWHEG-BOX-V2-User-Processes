module     p0_dbaru_epnebbbarg_d298h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d298h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd298h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd298
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd298h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(45) :: acd298
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd298(1)=dotproduct(ninjaE3,spvak4k3)
      acd298(2)=dotproduct(ninjaE3,spval5k2)
      acd298(3)=dotproduct(ninjaE3,spvak1k2)
      acd298(4)=dotproduct(ninjaE3,spvak7k2)
      acd298(5)=abb298(53)
      acd298(6)=dotproduct(k2,ninjaE3)
      acd298(7)=abb298(80)
      acd298(8)=abb298(27)
      acd298(9)=dotproduct(l5,ninjaE3)
      acd298(10)=abb298(17)
      acd298(11)=dotproduct(ninjaA,ninjaE3)
      acd298(12)=abb298(35)
      acd298(13)=dotproduct(ninjaA,spvak4k3)
      acd298(14)=dotproduct(ninjaA,spval5k2)
      acd298(15)=dotproduct(ninjaA,spvak1k2)
      acd298(16)=dotproduct(ninjaA,spvak7k2)
      acd298(17)=dotproduct(ninjaE3,spval6k2)
      acd298(18)=abb298(10)
      acd298(19)=abb298(50)
      acd298(20)=abb298(84)
      acd298(21)=abb298(66)
      acd298(22)=abb298(46)
      acd298(23)=abb298(49)
      acd298(24)=abb298(99)
      acd298(25)=dotproduct(ninjaE3,spvak4k2)
      acd298(26)=abb298(26)
      acd298(27)=dotproduct(ninjaE3,spval5k1)
      acd298(28)=abb298(34)
      acd298(29)=dotproduct(ninjaE3,spval5k7)
      acd298(30)=abb298(38)
      acd298(31)=dotproduct(ninjaE3,spval5l6)
      acd298(32)=abb298(39)
      acd298(33)=dotproduct(ninjaE3,spval5k3)
      acd298(34)=abb298(43)
      acd298(35)=acd298(3)*acd298(1)
      acd298(36)=acd298(4)*acd298(2)
      acd298(37)=acd298(5)*acd298(36)*acd298(35)
      acd298(38)=acd298(33)*acd298(34)
      acd298(39)=acd298(31)*acd298(32)
      acd298(40)=acd298(29)*acd298(30)
      acd298(41)=acd298(27)*acd298(28)
      acd298(42)=acd298(11)*acd298(12)
      acd298(43)=acd298(9)*acd298(10)
      acd298(44)=acd298(6)*acd298(8)
      acd298(45)=acd298(14)*acd298(1)*acd298(5)
      acd298(38)=acd298(45)+acd298(44)+acd298(43)+2.0_ki*acd298(42)+acd298(41)+&
      &acd298(40)+acd298(38)+acd298(39)
      acd298(38)=acd298(3)*acd298(38)
      acd298(39)=acd298(25)*acd298(26)
      acd298(40)=acd298(17)*acd298(22)
      acd298(41)=acd298(6)*acd298(7)
      acd298(42)=acd298(5)*acd298(15)
      acd298(42)=acd298(20)+acd298(42)
      acd298(42)=acd298(1)*acd298(42)
      acd298(43)=acd298(5)*acd298(13)
      acd298(43)=acd298(23)+acd298(43)
      acd298(43)=acd298(3)*acd298(43)
      acd298(44)=acd298(2)*acd298(21)
      acd298(39)=acd298(44)+acd298(43)+acd298(42)+acd298(41)+acd298(39)+acd298(&
      &40)
      acd298(39)=acd298(2)*acd298(39)
      acd298(36)=acd298(24)*acd298(36)
      acd298(36)=acd298(36)+acd298(38)+acd298(39)
      acd298(36)=acd298(4)*acd298(36)
      acd298(38)=acd298(5)*acd298(16)
      acd298(38)=acd298(19)+acd298(38)
      acd298(35)=acd298(38)*acd298(35)
      acd298(38)=acd298(1)*acd298(17)*acd298(18)
      acd298(35)=acd298(38)+acd298(35)
      acd298(35)=acd298(2)*acd298(35)
      acd298(35)=acd298(35)+acd298(36)
      brack(ninjaidxt1mu0)=acd298(37)
      brack(ninjaidxt0mu0)=acd298(35)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d298h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd298h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k5
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d298h4l131
