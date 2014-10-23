module     p0_dbaru_epnebbbarg_d304h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d304h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd304h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd304
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd304h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(48) :: acd304
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd304(1)=dotproduct(ninjaE3,spvak1k2)
      acd304(2)=dotproduct(ninjaE3,spvak2l5)
      acd304(3)=dotproduct(ninjaE3,spvak2k7)
      acd304(4)=abb304(13)
      acd304(5)=dotproduct(ninjaE3,spvak4k2)
      acd304(6)=abb304(14)
      acd304(7)=dotproduct(k2,ninjaE3)
      acd304(8)=abb304(33)
      acd304(9)=dotproduct(l6,ninjaE3)
      acd304(10)=abb304(51)
      acd304(11)=dotproduct(ninjaA,ninjaE3)
      acd304(12)=abb304(43)
      acd304(13)=abb304(39)
      acd304(14)=abb304(20)
      acd304(15)=dotproduct(ninjaE3,spvak2l6)
      acd304(16)=abb304(19)
      acd304(17)=abb304(18)
      acd304(18)=abb304(29)
      acd304(19)=abb304(30)
      acd304(20)=dotproduct(ninjaA,spvak1k2)
      acd304(21)=dotproduct(ninjaA,spvak2l5)
      acd304(22)=dotproduct(ninjaA,spvak2k7)
      acd304(23)=dotproduct(ninjaA,spvak4k2)
      acd304(24)=abb304(16)
      acd304(25)=abb304(17)
      acd304(26)=abb304(36)
      acd304(27)=abb304(15)
      acd304(28)=dotproduct(ninjaE3,spvak1l6)
      acd304(29)=abb304(23)
      acd304(30)=dotproduct(ninjaE3,spvak7k2)
      acd304(31)=abb304(24)
      acd304(32)=dotproduct(ninjaE3,spval6k2)
      acd304(33)=abb304(45)
      acd304(34)=dotproduct(ninjaE3,spvak4l6)
      acd304(35)=abb304(47)
      acd304(36)=acd304(4)*acd304(1)
      acd304(37)=acd304(6)*acd304(5)
      acd304(36)=acd304(36)+acd304(37)
      acd304(37)=acd304(2)*acd304(3)
      acd304(38)=acd304(37)*acd304(36)
      acd304(39)=acd304(21)*acd304(36)
      acd304(40)=2.0_ki*acd304(11)
      acd304(41)=acd304(40)-acd304(9)
      acd304(41)=acd304(17)*acd304(41)
      acd304(42)=acd304(14)*acd304(7)
      acd304(43)=acd304(25)*acd304(1)
      acd304(44)=acd304(27)*acd304(5)
      acd304(45)=acd304(29)*acd304(28)
      acd304(46)=acd304(31)*acd304(30)
      acd304(47)=acd304(33)*acd304(32)
      acd304(48)=acd304(35)*acd304(34)
      acd304(39)=acd304(44)+acd304(41)+acd304(39)+acd304(48)+acd304(47)+acd304(&
      &46)+acd304(45)+acd304(43)+acd304(42)
      acd304(39)=acd304(3)*acd304(39)
      acd304(41)=acd304(10)*acd304(9)
      acd304(42)=acd304(12)*acd304(40)
      acd304(43)=acd304(13)*acd304(2)
      acd304(44)=acd304(16)*acd304(15)
      acd304(41)=acd304(44)+acd304(43)+acd304(42)+acd304(41)
      acd304(41)=acd304(7)*acd304(41)
      acd304(36)=acd304(22)*acd304(36)
      acd304(42)=acd304(24)*acd304(1)
      acd304(43)=acd304(26)*acd304(5)
      acd304(36)=acd304(43)+acd304(42)+acd304(36)
      acd304(36)=acd304(2)*acd304(36)
      acd304(42)=acd304(20)*acd304(4)
      acd304(43)=acd304(23)*acd304(6)
      acd304(42)=acd304(43)+acd304(42)
      acd304(37)=acd304(37)*acd304(42)
      acd304(42)=acd304(18)*acd304(2)
      acd304(43)=acd304(19)*acd304(15)
      acd304(42)=acd304(43)+acd304(42)
      acd304(40)=acd304(40)*acd304(42)
      acd304(42)=acd304(8)*acd304(7)**2
      acd304(36)=acd304(42)+acd304(41)+acd304(40)+acd304(37)+acd304(39)+acd304(&
      &36)
      brack(ninjaidxt1mu0)=acd304(38)
      brack(ninjaidxt0mu0)=acd304(36)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d304h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd304h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k6
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
end module     p0_dbaru_epnebbbarg_d304h3l131
